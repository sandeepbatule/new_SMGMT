package com.servletStore.settings.classRoom.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.dbconnect.DBConnection;

public class AddClassRoomImpl implements AddClassRoomDAO
{
	DBConnection dbconnect=new DBConnection();
	Connection connection;
	PreparedStatement ps;
	
	public AddClassRoomImpl() 
	{
		connection=dbconnect.getConnection();
	}

	
	@Override
	public List<Object> getStandards(String schoolId, String setionId) {
		
		List<Object> list = new ArrayList<>();
		
		String query = "SELECT std_master.id, std_master.name FROM std_master WHERE std_master.id IN (SELECT fk_class_master.std_id FROM fk_class_master WHERE fk_class_master.fk_school_sec_id=( SELECT fk_school_section_details.id FROM fk_school_section_details WHERE fk_school_section_details.school_id="+schoolId+" AND fk_school_section_details.section_id="+setionId+"))";
		try {
			ps = connection.prepareStatement(query);
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()){
				int id = rs.getInt(1);
				String std = rs.getString(2);
				list.add(id);
				list.add(std);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}


	@Override
	public int addClassRoom(AddClassRoomPOJO classPojo, String stdName) {
		int status=0;
		PreparedStatement ps1;
		
		String checkQuery = "SELECT * FROM classroom_master WHERE  classroom_master.division='"+classPojo.getDivision().trim()+"' AND classroom_master.shift='"+classPojo.getShift().trim()+"' AND classroom_master.fk_class_master_id=((SELECT fk_class_master.id FROM fk_class_master WHERE fk_class_master.fk_school_sec_id=(SELECT fk_school_section_details.id FROM fk_school_section_details WHERE fk_school_section_details.school_id="+classPojo.getSchoolId()+" AND fk_school_section_details.section_id="+classPojo.getSectionId()+") AND fk_class_master.std_id=(SELECT std_master.id FROM std_master WHERE std_master.name=(SELECT std_master.name FROM std_master WHERE std_master.id='"+stdName+"'))))";
		try {
			ps1= connection.prepareStatement(checkQuery);
			ResultSet rs = ps1.executeQuery();
		
			if(!rs.isBeforeFirst()){
				System.out.println("empty");
				String insertQuery = "INSERT INTO `classroom_master`(`fk_class_master_id`, `division`, `shift`) VALUES ( (SELECT fk_class_master.id FROM fk_class_master WHERE fk_class_master.fk_school_sec_id=(SELECT fk_school_section_details.id FROM fk_school_section_details WHERE fk_school_section_details.school_id="+classPojo.getSchoolId()+" AND fk_school_section_details.section_id="+classPojo.getSectionId()+") AND fk_class_master.std_id=(SELECT std_master.id FROM std_master WHERE std_master.name=(SELECT std_master.name FROM std_master WHERE std_master.id='"+stdName.trim()+"'))), '"+classPojo.getDivision().trim()+"', '"+classPojo.getShift().trim()+"')";		
				ps = connection.prepareStatement(insertQuery);
				status = ps.executeUpdate();
			}
		} 
		catch (SQLException e) 
		{
			e.printStackTrace();
		}
		return status;
	}


	@Override
	public List<AddClassRoomPOJO> getClassRoomDetails(String schoolId) {
		
		List<AddClassRoomPOJO> list = new ArrayList<>();
		
		String getClassIdQuery = "SELECT classroom_master.id, sections_master.name as section_name,std_master.name as std_name,classroom_master.division,classroom_master.shift FROM sections_master,std_master,classroom_master,fk_school_section_details,fk_class_master WHERE fk_school_section_details.school_id=? AND sections_master.id=fk_school_section_details.section_id AND fk_class_master.fk_school_sec_id=fk_school_section_details.id AND std_master.id=fk_class_master.std_id AND classroom_master.fk_class_master_id=fk_class_master.id";
		try {
			ps = connection.prepareStatement(getClassIdQuery);
			ps.setInt(1, Integer.parseInt(schoolId));
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()){
				
				AddClassRoomPOJO classPojo = new AddClassRoomPOJO();
				classPojo.setClassRoomId(rs.getInt("id"));
				classPojo.setSectionName(rs.getString("section_name"));
				classPojo.setStdName(rs.getString("std_name"));
				classPojo.setDivision(rs.getString("division"));
				classPojo.setShift(rs.getString("shift"));
				list.add(classPojo);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return list;
	}
	
}
