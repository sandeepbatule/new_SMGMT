


<!-- global styles-->
    <link type="text/css" rel="stylesheet" href="/SMGMT/config/css,_components.css+css,_custom.css+vendors,_jquery-validation-engine,_css,_validationEngine.jquery.css+vendors,_datepicker,_css,_bootstrap-datepicker.min.css+vendors,_datepicker,_css"/>
    <link type="text/css" rel="stylesheet" href="/SMGMT/config/css,_components.css+css,_custom.css+vendors,_select2,_css,_select2.min.css+css,_pages,_dataTables.bootstrap.css+css,_pages,_tables.css.pagespeed.cc._6lRWz19bZ.css"/>
 <link type="text/css" rel="stylesheet" href="/SMGMT/config/css,_components.css+css,_custom.css+vendors,_inputlimiter,_css,_jquery.inputlimiter.css+vendors,_bootstrap-colorpicker,_css,_bootstrap-colorpicker.min.css+vendors,_jquery-tagsinput,_c"/>
    <!-- end of global styles-->
   
    
    <!-- global scripts-->
<script type="text/javascript" src="/SMGMT/config/js/components.js"></script>
<script type="text/javascript" src="/SMGMT/config/js/custom.js"></script>
<!-- end of global scripts-->
<!-- plugin scripts -->
<script type="text/javascript" src="/SMGMT/config/vendors/jquery.uniform/js/jquery.uniform.js"></script>
<script type="text/javascript" src="/SMGMT/config/vendors/inputlimiter/js/jquery.inputlimiter.js"></script>
<script type="text/javascript" src="/SMGMT/config/vendors/bootstrap-colorpicker/js/bootstrap-colorpicker.min.js"></script>
<script type="text/javascript" src="/SMGMT/config/vendors/jquery-tagsinput/js/jquery.tagsinput.js"></script>
<script type="text/javascript" src="/SMGMT/config/js/pluginjs/jquery.validVal.min.js"></script>
<script type="text/javascript" src="/SMGMT/config/vendors/inputmask/js/jquery.inputmask.bundle.js"></script>
<script type="text/javascript" src="/SMGMT/config/vendors/moment/js/moment.min.js"></script>
<script type="text/javascript" src="/SMGMT/config/vendors/daterangepicker/js/daterangepicker.js"></script>
<script type="text/javascript" src="/SMGMT/config/vendors/datepicker/js/bootstrap-datepicker.min.js"></script>
<script type="text/javascript" src="/SMGMT/config/vendors/bootstrap-timepicker/js/bootstrap-timepicker.min.js"></script>
<script type="text/javascript" src="/SMGMT/config/vendors/bootstrap-switch/js/bootstrap-switch.min.js"></script>
<script type="text/javascript" src="/SMGMT/config/vendors/autosize/js/jquery.autosize.min.js"></script>
<script type="text/javascript" src="/SMGMT/config/vendors/jasny-bootstrap/js/jasny-bootstrap.min.js"></script>
<script type="text/javascript" src="/SMGMT/config/vendors/jasny-bootstrap/js/inputmask.js"></script>
<script type="text/javascript" src="/SMGMT/config/vendors/datetimepicker/js/DateTimePicker.min.js"></script>
<script type="text/javascript" src="/SMGMT/config/vendors/j_timepicker/js/jquery.timepicker.min.js"></script>
<script type="text/javascript" src="/SMGMT/config/vendors/clockpicker/js/jquery-clockpicker.min.js"></script>
<!--end of plugin scripts-->
<script type="text/javascript" src="/SMGMT/config/js/form.js"></script>
<script type="text/javascript" src="/SMGMT/config/js/pages/datetime_piker.js"></script>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<!-- 
<div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title">Book Issue </h4>
                            </div>
                            <div class="panel-body">
                                <div class="col-sm-12">
                                    <div class="panel-body">
                                                                                <div class="row">
                                            <div class="form-group col-sm-8">
                                                <input class="form-control ui-autocomplete-input" placeholder="Search by Book No/ ISBN No/ Book Title/ Author" id="librarybook" type="text" value="" name="librarybook" autocomplete="off"><input id="hidden-field" name="output" type="hidden" value="">                                            </div>
                                            <div class="col-sm-4">
                                                <label>&nbsp;</label>
                                                <a href="javascript:getbookdetails()" class="btn btn-info">Search</a>
                                            </div>
                                        </div>
                                        <div class="row" id="bookdetail" style="">
                                            <div class="col-sm-12">
                                                <div class="panel panel-body">
                                                    <table align="center">
                                                        <tbody id="bookdetails" style="font-size: 14px"><tr><td class="text-muted" style="font-size: 14px">ISBN No.:</td><td>&nbsp;124</td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td class="text-muted" style="font-size: 14px">Book No.:</td><td>&nbsp;631</td></tr><tr><td colspan="5">&nbsp;</td></tr><tr><td class="text-muted" style="font-size: 14px">Title:</td><td>&nbsp;harry potter</td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td class="text-muted" style="font-size: 14px">Author:</td><td>&nbsp;j.k rowling</td></tr><tr><td colspan="5">&nbsp;</td></tr><tr><td class="text-muted" style="font-size: 14px">Edition:</td><td>12</td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td class="text-muted" style="font-size: 14px">Category:</td><td>fictionsggg</td></tr><tr><td colspan="5">&nbsp;</td></tr><tr><td class="text-muted" style="font-size: 14px">Publisher:</td><td>&nbsp;qwery</td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td class="text-muted" style="font-size: 14px">No of Copies:</td><td>&nbsp;7</td></tr><tr><td colspan="5">&nbsp;</td></tr><tr><td class="text-muted" style="font-size: 14px">Shelf No:</td><td>&nbsp;2</td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td class="text-muted" style="font-size: 14px">Book Position:</td><td>&nbsp;54</td></tr><tr><td colspan="5">&nbsp;</td></tr><tr><td class="text-muted" style="font-size: 14px">Cost:</td><td>&nbsp;190</td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td class="text-muted" style="font-size: 14px">Language:</td><td>&nbsp;english</td></tr><tr><td colspan="5">&nbsp;</td></tr><tr><td class="text-muted" style="font-size: 14px">Condition:</td><td>&nbsp;As New</td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td class="text-muted" style="font-size: 14px">Status:</td><td>&nbsp;Issued</td></tr></tbody>
                                                    </table>
                                                </div>
                                            </div> 
                                        </div>
                                        <div class="form-group">
                                            <label class="req" for="Bookissue_usertypeid">User Type</label>                                            <select class="form-control" name="Bookissue[usertypeid]" id="Bookissue_usertypeid">
<option value="">Select Type</option>
<option value="1">Student</option>
<option value="2">Employee</option>
</select>                                            <div class="school_val_error" id="Bookissue_usertypeid_em_" style="display:none"></div>                                        </div>

                                        <div class="form-group" id="studentautocomplete" style="display:none">
                                            <input class="form-control ui-autocomplete-input" placeholder="Search" id="student" type="text" value="" name="student" autocomplete="off">

                                            <br>
                                            <div class="row" align="center">
                                                <strong style="font-size: 16px">OR</strong>
                                            </div>
                                            <div class="row">
                                                <div class="form-group col-sm-4" id="course">
                                                    <label for="reg_input">Course</label>
                                                    <select class="form-control" name="Bookissue[courseid]" id="Bookissue_courseid">
<option value="">Please Select</option>
<option value="1">STD I2</option>
<option value="2">STD II</option>
<option value="3">STD III</option>
<option value="4">STD IV</option>
<option value="5">STD V</option>
<option value="6">CSE</option>
<option value="7">Mechanical</option>
<option value="8">My Course</option>
<option value="9">Asp.Net</option>
<option value="11">Lun</option>
<option value="12">as002</option>
<option value="13">Class x</option>
<option value="14">12th std</option>
<option value="15">Engineering 1st year</option>
<option value="16">Engineering 2nd year</option>
<option value="17">Engineering 4th  year</option>
<option value="18">Engineering 3rd year</option>
<option value="19">aaa</option>
<option value="20">B.sc-1 year</option>
<option value="21">12th science</option>
<option value="22">Software Engin</option>
<option value="23">STD 7</option>
<option value="24">First</option>
<option value="25">Sachin</option>
<option value="26">nn</option>
<option value="27">MCA</option>
<option value="29">test</option>
<option value="30">Accounting</option>
<option value="31">Inter Course</option>
<option value="32">fsd</option>
<option value="34">Grade 10</option>
<option value="35">class XII</option>
<option value="36">abc</option>
<option value="37">Pre-Nursery</option>
<option value="38">ECE</option>
<option value="39">it</option>
<option value="40">yu</option>
<option value="41">abc1</option>
<option value="42">abc2</option>
<option value="43">ComputerScince</option>
<option value="44">Grade V</option>
<option value="45">mvc</option>
<option value="46">TWWEWEWWFF</option>
<option value="47">Hand Tools</option>
<option value="48">fgh</option>
<option value="49">sdf</option>
<option value="50">dfg</option>
<option value="51">B.ed</option>
<option value="52">BANGLA</option>
<option value="53">std vi</option>
<option value="54">TOC</option>
<option value="55">zTest_course</option>
<option value="56">wq</option>
<option value="57">bar_r</option>
<option value="58">erp</option>
<option value="59">ADVERTISING AND SALESMANSHIP</option>
<option value="60">Rm</option>
<option value="61">Fm</option>
<option value="62">Hm </option>
<option value="63">name</option>
</select><div class="school_val_error" id="Bookissue_courseid_em_" style="display:none"></div>                                                </div>  
                                                <div class="form-group col-sm-4" id="batch">
                                                    <label for="reg_input">Batch</label>
                                                    <select class="form-control" name="Bookissue[batchid]" id="Bookissue_batchid">
<option value="">Please Select</option>
</select><div class="school_val_error" id="Bookissue_batchid_em_" style="display:none"></div>                                                </div> 
                                                <div class="form-group col-sm-4">
                                                    <label for="reg_input">Student</label>
                                                    <select class="form-control" name="studentid" id="studentid">
<option value="">Select Student</option>
</select>                                                </div> 
                                            </div>
                                            <div class="row" id="student1" style="display:none">
                                                <div class="col-sm-12">
                                                    <div class="panel panel-body">
                                                        <table align="center">
                                                            <tbody id="studentdetails1" style="font-size: 14px">

                                                            </tbody>
                                                        </table>
                                                    </div>
                                                </div> 
                                            </div>
                                        </div> 
                                        <div class="form-group" id="employeeautocomplete" style="display:none">
                                            <input class="form-control ui-autocomplete-input" placeholder="Search" id="employee" type="text" value="" name="employee" autocomplete="off">                                        </div>
                                        <br>
                                        <div class="row" id="employee1" style="display:none">
                                            <div class="col-sm-12">
                                                <div class="panel panel-body">
                                                    <table align="center">
                                                        <tbody id="employeedetails1" style="font-size: 14px">

                                                        </tbody>
                                                    </table>
                                                </div>
                                            </div> 
                                        </div>
                                        <div class="form-group">
                                            <label class="req" for="Bookissue_bookissue_issuedate">Book Issue Date</label>                                            <div data-date-format="yyyy-M-d" class="input-group date">
                                                <input placeholder="Issued Date" class="form-control pickadate picker__input" value="2017-12-09" name="Bookissue[bookissue_issuedate]" id="Bookissue_bookissue_issuedate" type="text" readonly="" aria-haspopup="true" aria-expanded="false" aria-readonly="false" aria-owns="Bookissue_bookissue_issuedate_root"><div class="picker" id="Bookissue_bookissue_issuedate_root" aria-hidden="true"><div class="picker__holder"><div class="picker__frame"><div class="picker__wrap"><div class="picker__box"><div class="picker__header"><select class="picker__select--year" disabled="" aria-controls="Bookissue_bookissue_issuedate_table" title="Pick a year from the dropdown"><option value="1967">1967</option><option value="1968">1968</option><option value="1969">1969</option><option value="1970">1970</option><option value="1971">1971</option><option value="1972">1972</option><option value="1973">1973</option><option value="1974">1974</option><option value="1975">1975</option><option value="1976">1976</option><option value="1977">1977</option><option value="1978">1978</option><option value="1979">1979</option><option value="1980">1980</option><option value="1981">1981</option><option value="1982">1982</option><option value="1983">1983</option><option value="1984">1984</option><option value="1985">1985</option><option value="1986">1986</option><option value="1987">1987</option><option value="1988">1988</option><option value="1989">1989</option><option value="1990">1990</option><option value="1991">1991</option><option value="1992">1992</option><option value="1993">1993</option><option value="1994">1994</option><option value="1995">1995</option><option value="1996">1996</option><option value="1997">1997</option><option value="1998">1998</option><option value="1999">1999</option><option value="2000">2000</option><option value="2001">2001</option><option value="2002">2002</option><option value="2003">2003</option><option value="2004">2004</option><option value="2005">2005</option><option value="2006">2006</option><option value="2007">2007</option><option value="2008">2008</option><option value="2009">2009</option><option value="2010">2010</option><option value="2011">2011</option><option value="2012">2012</option><option value="2013">2013</option><option value="2014">2014</option><option value="2015">2015</option><option value="2016">2016</option><option value="2017" selected="">2017</option><option value="2018">2018</option><option value="2019">2019</option><option value="2020">2020</option><option value="2021">2021</option><option value="2022">2022</option><option value="2023">2023</option><option value="2024">2024</option><option value="2025">2025</option><option value="2026">2026</option><option value="2027">2027</option><option value="2028">2028</option><option value="2029">2029</option><option value="2030">2030</option><option value="2031">2031</option><option value="2032">2032</option><option value="2033">2033</option><option value="2034">2034</option><option value="2035">2035</option><option value="2036">2036</option><option value="2037">2037</option><option value="2038">2038</option><option value="2039">2039</option><option value="2040">2040</option><option value="2041">2041</option><option value="2042">2042</option><option value="2043">2043</option><option value="2044">2044</option><option value="2045">2045</option><option value="2046">2046</option><option value="2047">2047</option><option value="2048">2048</option><option value="2049">2049</option><option value="2050">2050</option><option value="2051">2051</option><option value="2052">2052</option><option value="2053">2053</option><option value="2054">2054</option><option value="2055">2055</option><option value="2056">2056</option><option value="2057">2057</option><option value="2058">2058</option><option value="2059">2059</option><option value="2060">2060</option><option value="2061">2061</option><option value="2062">2062</option><option value="2063">2063</option><option value="2064">2064</option><option value="2065">2065</option><option value="2066">2066</option><option value="2067">2067</option></select><select class="picker__select--month" disabled="" aria-controls="Bookissue_bookissue_issuedate_table" title="Pick a month from the dropdown"><option value="0">January</option><option value="1">February</option><option value="2">March</option><option value="3">April</option><option value="4">May</option><option value="5">June</option><option value="6">July</option><option value="7">August</option><option value="8">September</option><option value="9">October</option><option value="10">November</option><option value="11" selected="">December</option></select><div class="picker__nav--prev" data-nav="-1" role="button" aria-controls="Bookissue_bookissue_issuedate_table" title="Go to the previous month"> </div><div class="picker__nav--next" data-nav="1" role="button" aria-controls="Bookissue_bookissue_issuedate_table" title="Go to the next month"> </div></div><table class="picker__table" id="Bookissue_bookissue_issuedate_table" role="grid" aria-controls="Bookissue_bookissue_issuedate" aria-readonly="true"><thead><tr><th class="picker__weekday" scope="col" title="Sunday">Sun</th><th class="picker__weekday" scope="col" title="Monday">Mon</th><th class="picker__weekday" scope="col" title="Tuesday">Tue</th><th class="picker__weekday" scope="col" title="Wednesday">Wed</th><th class="picker__weekday" scope="col" title="Thursday">Thu</th><th class="picker__weekday" scope="col" title="Friday">Fri</th><th class="picker__weekday" scope="col" title="Saturday">Sat</th></tr></thead><tbody><tr><td role="presentation"><div class="picker__day picker__day--outfocus" data-pick="1511634600000" role="gridcell">26</div></td><td role="presentation"><div class="picker__day picker__day--outfocus" data-pick="1511721000000" role="gridcell">27</div></td><td role="presentation"><div class="picker__day picker__day--outfocus" data-pick="1511807400000" role="gridcell">28</div></td><td role="presentation"><div class="picker__day picker__day--outfocus" data-pick="1511893800000" role="gridcell">29</div></td><td role="presentation"><div class="picker__day picker__day--outfocus" data-pick="1511980200000" role="gridcell">30</div></td><td role="presentation"><div class="picker__day picker__day--infocus" data-pick="1512066600000" role="gridcell">1</div></td><td role="presentation"><div class="picker__day picker__day--infocus" data-pick="1512153000000" role="gridcell">2</div></td></tr><tr><td role="presentation"><div class="picker__day picker__day--infocus" data-pick="1512239400000" role="gridcell">3</div></td><td role="presentation"><div class="picker__day picker__day--infocus" data-pick="1512325800000" role="gridcell">4</div></td><td role="presentation"><div class="picker__day picker__day--infocus" data-pick="1512412200000" role="gridcell">5</div></td><td role="presentation"><div class="picker__day picker__day--infocus" data-pick="1512498600000" role="gridcell">6</div></td><td role="presentation"><div class="picker__day picker__day--infocus" data-pick="1512585000000" role="gridcell">7</div></td><td role="presentation"><div class="picker__day picker__day--infocus" data-pick="1512671400000" role="gridcell">8</div></td><td role="presentation"><div class="picker__day picker__day--infocus picker__day--today picker__day--selected picker__day--highlighted" data-pick="1512757800000" role="gridcell" aria-selected="true" aria-activedescendant="true">9</div></td></tr><tr><td role="presentation"><div class="picker__day picker__day--infocus" data-pick="1512844200000" role="gridcell">10</div></td><td role="presentation"><div class="picker__day picker__day--infocus" data-pick="1512930600000" role="gridcell">11</div></td><td role="presentation"><div class="picker__day picker__day--infocus" data-pick="1513017000000" role="gridcell">12</div></td><td role="presentation"><div class="picker__day picker__day--infocus" data-pick="1513103400000" role="gridcell">13</div></td><td role="presentation"><div class="picker__day picker__day--infocus" data-pick="1513189800000" role="gridcell">14</div></td><td role="presentation"><div class="picker__day picker__day--infocus" data-pick="1513276200000" role="gridcell">15</div></td><td role="presentation"><div class="picker__day picker__day--infocus" data-pick="1513362600000" role="gridcell">16</div></td></tr><tr><td role="presentation"><div class="picker__day picker__day--infocus" data-pick="1513449000000" role="gridcell">17</div></td><td role="presentation"><div class="picker__day picker__day--infocus" data-pick="1513535400000" role="gridcell">18</div></td><td role="presentation"><div class="picker__day picker__day--infocus" data-pick="1513621800000" role="gridcell">19</div></td><td role="presentation"><div class="picker__day picker__day--infocus" data-pick="1513708200000" role="gridcell">20</div></td><td role="presentation"><div class="picker__day picker__day--infocus" data-pick="1513794600000" role="gridcell">21</div></td><td role="presentation"><div class="picker__day picker__day--infocus" data-pick="1513881000000" role="gridcell">22</div></td><td role="presentation"><div class="picker__day picker__day--infocus" data-pick="1513967400000" role="gridcell">23</div></td></tr><tr><td role="presentation"><div class="picker__day picker__day--infocus" data-pick="1514053800000" role="gridcell">24</div></td><td role="presentation"><div class="picker__day picker__day--infocus" data-pick="1514140200000" role="gridcell">25</div></td><td role="presentation"><div class="picker__day picker__day--infocus" data-pick="1514226600000" role="gridcell">26</div></td><td role="presentation"><div class="picker__day picker__day--infocus" data-pick="1514313000000" role="gridcell">27</div></td><td role="presentation"><div class="picker__day picker__day--infocus" data-pick="1514399400000" role="gridcell">28</div></td><td role="presentation"><div class="picker__day picker__day--infocus" data-pick="1514485800000" role="gridcell">29</div></td><td role="presentation"><div class="picker__day picker__day--infocus" data-pick="1514572200000" role="gridcell">30</div></td></tr><tr><td role="presentation"><div class="picker__day picker__day--infocus" data-pick="1514658600000" role="gridcell">31</div></td><td role="presentation"><div class="picker__day picker__day--outfocus" data-pick="1514745000000" role="gridcell">1</div></td><td role="presentation"><div class="picker__day picker__day--outfocus" data-pick="1514831400000" role="gridcell">2</div></td><td role="presentation"><div class="picker__day picker__day--outfocus" data-pick="1514917800000" role="gridcell">3</div></td><td role="presentation"><div class="picker__day picker__day--outfocus" data-pick="1515004200000" role="gridcell">4</div></td><td role="presentation"><div class="picker__day picker__day--outfocus" data-pick="1515090600000" role="gridcell">5</div></td><td role="presentation"><div class="picker__day picker__day--outfocus" data-pick="1515177000000" role="gridcell">6</div></td></tr></tbody></table><div class="picker__footer"><button class="picker__button--today" type="button" data-pick="1512757800000" disabled="" aria-controls="Bookissue_bookissue_issuedate">Today</button><button class="picker__button--clear" type="button" data-clear="1" disabled="" aria-controls="Bookissue_bookissue_issuedate">Clear</button><button class="picker__button--close" type="button" data-close="true" disabled="" aria-controls="Bookissue_bookissue_issuedate">Close</button></div></div></div></div></div></div><div class="school_val_error" id="Bookissue_bookissue_issuedate_em_" style="display:none"></div>                                                <span class="input-group-addon"><i class="icon-calendar"></i></span>
                                            </div>
                                            <div class="school_val_error" id="Bookissue_bookissue_issuedate_em_" style="display:none"></div>                                               
                                        </div>
                                        <div class="form-group">
                                            <label for="reg_input_name" class="req">Due Date</label>
                                            <div data-date-format="yyyy-M-d" class="input-group date">
                                                <input placeholder="Due Date" class="form-control pickadate picker__input" value="2017-12-15" name="Bookissue[bookissue_duedate]" id="Bookissue_bookissue_duedate" type="text" readonly="" aria-haspopup="true" aria-expanded="false" aria-readonly="false" aria-owns="Bookissue_bookissue_duedate_root"><div class="picker" id="Bookissue_bookissue_duedate_root" aria-hidden="true"><div class="picker__holder"><div class="picker__frame"><div class="picker__wrap"><div class="picker__box"><div class="picker__header"><select class="picker__select--year" disabled="" aria-controls="Bookissue_bookissue_duedate_table" title="Pick a year from the dropdown"><option value="1967">1967</option><option value="1968">1968</option><option value="1969">1969</option><option value="1970">1970</option><option value="1971">1971</option><option value="1972">1972</option><option value="1973">1973</option><option value="1974">1974</option><option value="1975">1975</option><option value="1976">1976</option><option value="1977">1977</option><option value="1978">1978</option><option value="1979">1979</option><option value="1980">1980</option><option value="1981">1981</option><option value="1982">1982</option><option value="1983">1983</option><option value="1984">1984</option><option value="1985">1985</option><option value="1986">1986</option><option value="1987">1987</option><option value="1988">1988</option><option value="1989">1989</option><option value="1990">1990</option><option value="1991">1991</option><option value="1992">1992</option><option value="1993">1993</option><option value="1994">1994</option><option value="1995">1995</option><option value="1996">1996</option><option value="1997">1997</option><option value="1998">1998</option><option value="1999">1999</option><option value="2000">2000</option><option value="2001">2001</option><option value="2002">2002</option><option value="2003">2003</option><option value="2004">2004</option><option value="2005">2005</option><option value="2006">2006</option><option value="2007">2007</option><option value="2008">2008</option><option value="2009">2009</option><option value="2010">2010</option><option value="2011">2011</option><option value="2012">2012</option><option value="2013">2013</option><option value="2014">2014</option><option value="2015">2015</option><option value="2016">2016</option><option value="2017" selected="">2017</option><option value="2018">2018</option><option value="2019">2019</option><option value="2020">2020</option><option value="2021">2021</option><option value="2022">2022</option><option value="2023">2023</option><option value="2024">2024</option><option value="2025">2025</option><option value="2026">2026</option><option value="2027">2027</option><option value="2028">2028</option><option value="2029">2029</option><option value="2030">2030</option><option value="2031">2031</option><option value="2032">2032</option><option value="2033">2033</option><option value="2034">2034</option><option value="2035">2035</option><option value="2036">2036</option><option value="2037">2037</option><option value="2038">2038</option><option value="2039">2039</option><option value="2040">2040</option><option value="2041">2041</option><option value="2042">2042</option><option value="2043">2043</option><option value="2044">2044</option><option value="2045">2045</option><option value="2046">2046</option><option value="2047">2047</option><option value="2048">2048</option><option value="2049">2049</option><option value="2050">2050</option><option value="2051">2051</option><option value="2052">2052</option><option value="2053">2053</option><option value="2054">2054</option><option value="2055">2055</option><option value="2056">2056</option><option value="2057">2057</option><option value="2058">2058</option><option value="2059">2059</option><option value="2060">2060</option><option value="2061">2061</option><option value="2062">2062</option><option value="2063">2063</option><option value="2064">2064</option><option value="2065">2065</option><option value="2066">2066</option><option value="2067">2067</option></select><select class="picker__select--month" disabled="" aria-controls="Bookissue_bookissue_duedate_table" title="Pick a month from the dropdown"><option value="0">January</option><option value="1">February</option><option value="2">March</option><option value="3">April</option><option value="4">May</option><option value="5">June</option><option value="6">July</option><option value="7">August</option><option value="8">September</option><option value="9">October</option><option value="10">November</option><option value="11" selected="">December</option></select><div class="picker__nav--prev" data-nav="-1" role="button" aria-controls="Bookissue_bookissue_duedate_table" title="Go to the previous month"> </div><div class="picker__nav--next" data-nav="1" role="button" aria-controls="Bookissue_bookissue_duedate_table" title="Go to the next month"> </div></div><table class="picker__table" id="Bookissue_bookissue_duedate_table" role="grid" aria-controls="Bookissue_bookissue_duedate" aria-readonly="true"><thead><tr><th class="picker__weekday" scope="col" title="Sunday">Sun</th><th class="picker__weekday" scope="col" title="Monday">Mon</th><th class="picker__weekday" scope="col" title="Tuesday">Tue</th><th class="picker__weekday" scope="col" title="Wednesday">Wed</th><th class="picker__weekday" scope="col" title="Thursday">Thu</th><th class="picker__weekday" scope="col" title="Friday">Fri</th><th class="picker__weekday" scope="col" title="Saturday">Sat</th></tr></thead><tbody><tr><td role="presentation"><div class="picker__day picker__day--outfocus" data-pick="1511634600000" role="gridcell">26</div></td><td role="presentation"><div class="picker__day picker__day--outfocus" data-pick="1511721000000" role="gridcell">27</div></td><td role="presentation"><div class="picker__day picker__day--outfocus" data-pick="1511807400000" role="gridcell">28</div></td><td role="presentation"><div class="picker__day picker__day--outfocus" data-pick="1511893800000" role="gridcell">29</div></td><td role="presentation"><div class="picker__day picker__day--outfocus" data-pick="1511980200000" role="gridcell">30</div></td><td role="presentation"><div class="picker__day picker__day--infocus" data-pick="1512066600000" role="gridcell">1</div></td><td role="presentation"><div class="picker__day picker__day--infocus" data-pick="1512153000000" role="gridcell">2</div></td></tr><tr><td role="presentation"><div class="picker__day picker__day--infocus" data-pick="1512239400000" role="gridcell">3</div></td><td role="presentation"><div class="picker__day picker__day--infocus" data-pick="1512325800000" role="gridcell">4</div></td><td role="presentation"><div class="picker__day picker__day--infocus" data-pick="1512412200000" role="gridcell">5</div></td><td role="presentation"><div class="picker__day picker__day--infocus" data-pick="1512498600000" role="gridcell">6</div></td><td role="presentation"><div class="picker__day picker__day--infocus" data-pick="1512585000000" role="gridcell">7</div></td><td role="presentation"><div class="picker__day picker__day--infocus" data-pick="1512671400000" role="gridcell">8</div></td><td role="presentation"><div class="picker__day picker__day--infocus picker__day--today" data-pick="1512757800000" role="gridcell">9</div></td></tr><tr><td role="presentation"><div class="picker__day picker__day--infocus" data-pick="1512844200000" role="gridcell">10</div></td><td role="presentation"><div class="picker__day picker__day--infocus" data-pick="1512930600000" role="gridcell">11</div></td><td role="presentation"><div class="picker__day picker__day--infocus" data-pick="1513017000000" role="gridcell">12</div></td><td role="presentation"><div class="picker__day picker__day--infocus" data-pick="1513103400000" role="gridcell">13</div></td><td role="presentation"><div class="picker__day picker__day--infocus" data-pick="1513189800000" role="gridcell">14</div></td><td role="presentation"><div class="picker__day picker__day--infocus picker__day--selected picker__day--highlighted" data-pick="1513276200000" role="gridcell" aria-selected="true" aria-activedescendant="true">15</div></td><td role="presentation"><div class="picker__day picker__day--infocus" data-pick="1513362600000" role="gridcell">16</div></td></tr><tr><td role="presentation"><div class="picker__day picker__day--infocus" data-pick="1513449000000" role="gridcell">17</div></td><td role="presentation"><div class="picker__day picker__day--infocus" data-pick="1513535400000" role="gridcell">18</div></td><td role="presentation"><div class="picker__day picker__day--infocus" data-pick="1513621800000" role="gridcell">19</div></td><td role="presentation"><div class="picker__day picker__day--infocus" data-pick="1513708200000" role="gridcell">20</div></td><td role="presentation"><div class="picker__day picker__day--infocus" data-pick="1513794600000" role="gridcell">21</div></td><td role="presentation"><div class="picker__day picker__day--infocus" data-pick="1513881000000" role="gridcell">22</div></td><td role="presentation"><div class="picker__day picker__day--infocus" data-pick="1513967400000" role="gridcell">23</div></td></tr><tr><td role="presentation"><div class="picker__day picker__day--infocus" data-pick="1514053800000" role="gridcell">24</div></td><td role="presentation"><div class="picker__day picker__day--infocus" data-pick="1514140200000" role="gridcell">25</div></td><td role="presentation"><div class="picker__day picker__day--infocus" data-pick="1514226600000" role="gridcell">26</div></td><td role="presentation"><div class="picker__day picker__day--infocus" data-pick="1514313000000" role="gridcell">27</div></td><td role="presentation"><div class="picker__day picker__day--infocus" data-pick="1514399400000" role="gridcell">28</div></td><td role="presentation"><div class="picker__day picker__day--infocus" data-pick="1514485800000" role="gridcell">29</div></td><td role="presentation"><div class="picker__day picker__day--infocus" data-pick="1514572200000" role="gridcell">30</div></td></tr><tr><td role="presentation"><div class="picker__day picker__day--infocus" data-pick="1514658600000" role="gridcell">31</div></td><td role="presentation"><div class="picker__day picker__day--outfocus" data-pick="1514745000000" role="gridcell">1</div></td><td role="presentation"><div class="picker__day picker__day--outfocus" data-pick="1514831400000" role="gridcell">2</div></td><td role="presentation"><div class="picker__day picker__day--outfocus" data-pick="1514917800000" role="gridcell">3</div></td><td role="presentation"><div class="picker__day picker__day--outfocus" data-pick="1515004200000" role="gridcell">4</div></td><td role="presentation"><div class="picker__day picker__day--outfocus" data-pick="1515090600000" role="gridcell">5</div></td><td role="presentation"><div class="picker__day picker__day--outfocus" data-pick="1515177000000" role="gridcell">6</div></td></tr></tbody></table><div class="picker__footer"><button class="picker__button--today" type="button" data-pick="1512757800000" disabled="" aria-controls="Bookissue_bookissue_duedate">Today</button><button class="picker__button--clear" type="button" data-clear="1" disabled="" aria-controls="Bookissue_bookissue_duedate">Clear</button><button class="picker__button--close" type="button" data-close="true" disabled="" aria-controls="Bookissue_bookissue_duedate">Close</button></div></div></div></div></div></div><div class="school_val_error" id="Bookissue_bookissue_duedate_em_" style="display:none"></div>                                                <span class="input-group-addon"><i class="icon-calendar"></i></span>
                                            </div>
                                            <div class="school_val_error" id="Bookissue_bookissue_duedate_em_" style="display:none"></div>                                               
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-5">
                                        <div class="form_sep">
                                            <input class="btn btn-info" name="std_reg_submit" id="std_reg_submit" type="submit" value="Create">                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div> -->
<h1>Good evening</h1>
</body>
</html>