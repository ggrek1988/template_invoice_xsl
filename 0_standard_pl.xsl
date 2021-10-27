<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output encoding="UTF-8" method="html" doctype-public="-//W3C//DTD HTML 4.0 Transitional" doctype-system="http://www.w3.org/TR/REC-html40" indent="yes"/>

<xsl:template match="/">

<meta http-equiv="Content-Type" content="text/html;  charset=UTF-8"  encoding="UTF-8"> </meta>

  <html>
  <head>
	<title>Wydruk faktury numer <xsl:value-of select="invoice/number"/></title>
  </head>
  <body bgcolor="white" style = "font-family: Arial" marginwidth="1" marginheight="1" >


<table width="100%" height="100%"  style="border-width:0px; border-style:solid;border-color:white;font-size:12px;" cellspacing="0" cellpadding="1" bgcolor="white">
<colgroup span="1" align="center" valign="bottom"></colgroup>

<tr style="border-width:0px;  border-style:solid;border-color:white;font-size:12px;" font-family= "Courier New'" bgcolor="white" >

	<td  rowspan="3" style="border-width:1px 1px 1px 1px;  border-style:solid;font-size:12px; "  width="40%">
	      <xsl:variable name="company_logo" select="invoice/company/logo" /> 
			<xsl:if test="$company_logo != ''">
				<div align="center"><img width="300" height="80" src="{$company_logo}" /></div>
			</xsl:if> </td>
	<td  rowspan = "3" style="border-width:0px 0px 0px 0px; border-style:solid;font-size:0px;" width="0%">komórka2</td>  
	<td   rowspan = "2" style="border-width:1px 1px 1px 1px; border-style:solid;font-size:12px; " bgcolor="#cccccc" width="32%" ><center><font size = "4px"><b><xsl:value-of select="invoice/document_kind"/></b></font><br/>
<b><xsl:value-of select="invoice/document_kind_description"/>&#160; <xsl:if test="invoice/np_string != 0">odwrotne obciążenie</xsl:if></b>
<xsl:if test="invoice/is_split_pay = 1"><br/>Mechanizm podzielonej płatności (MPP)</xsl:if>
<br/><b><xsl:value-of select="invoice/document_type"/><xsl:if test="invoice/proform_to_invoice != ''"><br/>Do proformy nr&#160;<xsl:value-of select="invoice/proform_to_invoice"/></xsl:if></b></center></td>
	<td  rowspan = "3" style="border-width:0px 0px 0px 0px; border-style:solid;font-size:0px;" width="0%">komórka4</td>
	<td  style="border-width:1px 1px 1px 1px; border-style:solid;font-size:12px;" width="28%"><center><b><font size = "2px">Nr <xsl:value-of select="invoice/number"/></font></b></center></td>
</tr>


<tr style="border-width:0px;  border-style:solid;border-color:white;font-size:12px;" bgcolor="white" >


	<td  style="border-width:0px 0px 1px 0px; border-style:solid;font-size:12px;" width="30%"><center><font size="4"><xsl:value-of select="invoice/sub_mode"/></font></center></td> 

</tr>

<tr style="border-width:0px;  border-style:solid;border-color:white;font-size:12px;" bgcolor="white" >
	
	<td  style="border-width:0px 1px 1px 1px; border-style:solid;font-size:12px;" width="30%"><center><font size = "2px"><b><xsl:value-of select="invoice/docdate"/></b></font><br/>Data wystawienia</center></td> 
	<td  style="border-width:0px 1px 1px 1px; border-style:solid;font-size:12px;" width="26%"> 

<xsl:if test="invoice/sale_date_label != ''">
<center><font size = "2px"><b><xsl:value-of select="invoice/saledate"/></b></font><br/><xsl:value-of select="invoice/sale_date_label"/> &#160; &#160;<br/></center> 
</xsl:if>

</td>
</tr>
</table>

<table width="100%" height="100%" style="border-width:0px ; border-style:solid;border-color:white;font-size:12px;" cellspacing="0" cellpadding="1" bgcolor="white">
<colgroup span="1" align="center" valign="bottom"></colgroup>

<tr style="border-width:0px;  border-style:solid;border-color:white;font-size:12px;" bgcolor="white" >

	<td   style="border-width:0px 0px 0px 0px; border-style:solid;font-size:12px;" width="40%"></td> 
	<td   style="border-width:0px 0px 0px 0px; border-style:solid;font-size:0px;" width="0%">komórka2</td>  
	<td    style="border-width:0px 0px 0px 0px; border-style:solid;font-size:12px;"  width="32%" ></td>
	
</tr>


<tr style="border-width:0px;  border-style:solid;border-color:white;font-size:12px;" bgcolor="white" >


    <td   style="border-width:1px 1px 0px 1px; padding-left: 0.3cm; border-style:solid;font-size:13px;" width="50%"  >
<u>Sprzedawca</u>: <b><xsl:value-of select="invoice/company/name"/></b><br/>
Adres:  <b><xsl:value-of select="invoice/company/address"/></b><br/>
NIP: <b><xsl:value-of select="invoice/company/tax_id"/></b><br/>
<xsl:if test="invoice/company/bdo != ''">BDO: <b><xsl:value-of select="invoice/company/bdo"/></b><br/></xsl:if>
<xsl:if test="invoice/company/eu_tax_id != ''">NIP UE: <b><xsl:value-of select="invoice/company/eu_tax_id"/></b><br/></xsl:if>
<xsl:if test="invoice/company/phone_1 != ''">Telefon: <b><xsl:value-of select="invoice/company/phone_1"/></b><br/></xsl:if>
<xsl:if test="invoice/company/fax_1 != ''">Fax: <b><xsl:value-of select="invoice/company/fax_1"/></b><br/></xsl:if>
<xsl:if test="invoice/company/email != ''">Email: <b><xsl:value-of select="invoice/company/email"/></b><br/></xsl:if>
<xsl:if test="invoice/company/www != ''"><b><xsl:value-of select="invoice/company/www"/></b><br/></xsl:if>
<xsl:if test="invoice/contractor/address2_shipping != ''">&#160;<br/></xsl:if>
<xsl:if test="invoice/contractor/representative_shipping != ''">&#160;</xsl:if>
</td> 
    <td   style="border-width:0px 0px 0px 0px; border-style:solid;font-size:px; " width="0%"></td>  
    <td    style="border-width:1px 1px 0px 1px; padding-left: 0.3cm; border-style:solid;font-size:13px;"  width="50%" >

<u>Nabywca</u>: <b><xsl:value-of select="invoice/contractor/name"/></b><br/>
Adres: <b><xsl:value-of select="invoice/contractor/address"/>&#160;<xsl:value-of select="invoice/contractor/country"/></b><br/>
NIP: <b><xsl:value-of select="invoice/contractor/tax_id"/></b><br/>
<xsl:if test="invoice/contractor/eu_tax_id != ''">NIP UE: <b><xsl:value-of select="invoice/contractor/eu_tax_id"/><br/></b></xsl:if>
<br/>
<xsl:if test="invoice/contractor/representative_shipping != ''">Odbiorca faktury: <b><xsl:value-of select="invoice/contractor/representative_shipping"/><br/></b></xsl:if>
<xsl:if test="invoice/contractor/address2_shipping != ''">Adres wysyłki: <b><xsl:value-of select="invoice/contractor/address2_shipping"/></b></xsl:if>
</td>
</tr>

<xsl:if test="invoice/contractor/pay_contractor_name != ''">
<tr style="border-width:0px;  border-style:solid;border-color:white;font-size:12px;" bgcolor="white" >
    <td   style="border-width:0px 1px 0px 1px; padding-left: 0.3cm; border-style:solid;font-size:13px;" width="50%"  >
&#160;<br/>&#160;<br/>&#160;<br/>
<xsl:if test="invoice/company/eu_tax_id != ''">,&#160;<br/></xsl:if>
</td>
    <td   style="border-width:0px 0px 0px 0px; border-style:solid;font-size:px; " width="0%"></td>  
    <td    style="border-width:1px 1px 0px 1px; padding-left: 0.3cm; border-style:solid;font-size:13px;"  width="50%" >

<u>Płatnik</u>: <b><xsl:value-of select="invoice/contractor/pay_contractor_name"/></b><br/>
Adres: <b><xsl:value-of select="invoice/contractor/pay_contractor_address"/></b><br/>
NIP: <b><xsl:value-of select="invoice/contractor/pay_contractor_nip"/></b><xsl:if test="invoice/contractor/pay_contractor_nipeu != ''">,&#160;NIP UE: <xsl:value-of select="invoice/contractor/pay_contractor_nipeu"/></xsl:if>
</td>
</tr>
</xsl:if>

<tr style="border-width:0px;  border-style:solid;border-color:white;font-size:12px;" bgcolor="white" >
	
	<td  style="border-width:1px 0px 0px 0px; border-style:solid;font-size:12px;" width="40%"  ></td> 
	<td  style="border-width:0px 0px 0px 0px; border-style:solid;font-size:0px;" width="0%">komórka2</td>  
	<td    style="border-width:1px 0px 0px 0px; border-style:solid;font-size:12px;"  width="32%" ></td>

</tr>

<tr style="border-width:0px;  border-style:solid;border-color:white;font-size:12px;" bgcolor="white" >
	
	<td  colspan="3" style="border-width:1px 1px 1px 1px; border-style:solid;font-size:13px;" width="40%"  >

	Forma płatności: <b>	<xsl:value-of select="invoice/payment_type"/></b>&#160;
	Termin płatności: <b>	<xsl:value-of select="invoice/payment_date"/></b><br/>
	Bank: <b><xsl:if test="invoice/company/bank_account_desc != ''"><xsl:value-of select="invoice/company/bank_account_desc"/>
	</xsl:if> </b>&#160;
	Numer rachunku bankowego sprzedawcy:<b> <xsl:value-of select="invoice/company/bank_account"/>
	<xsl:if test="invoice/company/bank_account_swift != ''">,&#160;SWIFT:  <xsl:value-of select="invoice/company/bank_account_swift"/>
	</xsl:if> </b>

	
</td> 
	
	

</tr>
</table>

<!--TABELA GŁÓWNA
<table width="100%" height="100%" style="border-width:0px ; border-style:solid;border-color:white;font-size:12px;" cellspacing="0" cellpadding="1" bgcolor="white">




	<tr><td>	<b><xsl:value-of select="invoice/company/name"/></b><br/>
			<xsl:value-of select="invoice/company/address"/><br/>
			NIP: <xsl:value-of select="invoice/company/tax_id"/><xsl:if test="invoice/company/eu_tax_id != ''">,&#160;NIP UE: <xsl:value-of select="invoice/company/eu_tax_id"/><br/>
			</xsl:if>
Konto bankowe: <br/> <xsl:value-of select="invoice/company/bank_account"/>
	<xsl:if test="invoice/company/bank_account_swift != ''">,&#160;SWIFT:  <xsl:value-of select="invoice/company/bank_account_swift"/>
	</xsl:if>
	<xsl:if test="invoice/company/bank_account_desc != ''"><br/><xsl:value-of select="invoice/company/bank_account_desc"/>
	</xsl:if></td>
		<td>
			<xsl:variable name="company_logo" select="invoice/company/logo" />
			<xsl:if test="$company_logo != ''">
				<div align="right"><img src="{$company_logo}" /></div>
			</xsl:if>
		</td>
	</tr>
-->

	<br/>
<table width="100%" height="100%" style="border-width:0px ; border-style:solid;border-color:white;font-size:10px; " cellspacing="0" cellpadding="1" bgcolor="white">
    <colgroup span="1" align="center" valign="bottom"></colgroup>
      <tr style="border-width:0px;  border-style:solid;border-color:white;font-size:10px;" bgcolor="white">
        <th style="border-width:1px 0px 1px 1px; border-style:solid;font-size:10px;" bgcolor="#cccccc" align="center" width="5%">Lp.</th>
        <th style="border-width:1px 1px 1px 1px; border-style:solid;font-size:10px;" bgcolor="#cccccc" align="center" width="30%">Nazwa</th>        
        <th style="border-width:1px 0px 1px 0px; border-style:solid;font-size:10px;" bgcolor="#cccccc" align="center" width="9%">PKWiU</th>	
        <th style="border-width:1px 1px 1px 1px; border-style:solid;font-size:10px;" bgcolor="#cccccc" align="center" width="5%">Ilość</th>
        <th style="border-width:1px 0px 1px 0px; border-style:solid;font-size:10px;" bgcolor="#cccccc" align="center" width="5%">J.m.</th>	
        <th style="border-width:1px 0px 1px 1px; border-style:solid;font-size:10px;" bgcolor="#cccccc" align="center" width="10%">Cena NETTO</th>
        <th style="border-width:1px 0px 1px 1px; border-style:solid;font-size:10px;" bgcolor="#cccccc" align="center" width="10%">Wartość NETTO</th>
        <th style="border-width:1px 1px 1px 1px; border-style:solid;font-size:10px;" bgcolor="#cccccc" align="center" width="5%">Stawka VAT</th>			
		<th style="border-width:1px 0px 1px 0px; border-style:solid;font-size:10px;" bgcolor="#cccccc" align="center" width="10%">Kwota VAT</th>			
        <th style="border-width:1px 1px 1px 1px ; border-style:solid;font-size:10px;" bgcolor="#cccccc" align="center" width="10%">Wartość BRUTTO</th>
      </tr>

      <xsl:for-each select="invoice/positions/position">
      <tr style="border-width:1px; border-style:solid;border-color:white;font-size:10px;" valign="top" bgcolor="white">
        <td style="border-width:0px 0px 1px 1px; border-style:solid;font-size:10px;" align="center"><xsl:value-of select="id"/></td>
        <td style="border-width:0px 1px 1px 1px; border-style:solid;font-size:10px; list-style-position: inside"  align="left"><xsl:value-of select="name"/> <xsl:value-of select="notes"/></td>        
        <td style="border-width:0px 0px 1px 0px; border-style:solid;font-size:10px;" align="center"><xsl:value-of select="pkwiu"/>&#160;</td>
        <td style="border-width:0px 1px 1px 1px; border-style:solid;font-size:10px;" align="center" ><xsl:value-of select="quantity"/></td>
        <td style="border-width:0px 0px 1px 0px; border-style:solid;font-size:10px;" align="center"><xsl:value-of select="unit"/></td>			
        <td style="border-width:0px 0px 1px 1px; border-style:solid;font-size:10px;" align="right" ><nobr><xsl:value-of select="netto_after_bonus"/>&#160;<xsl:value-of select="pos_currency"/>&#160;</nobr><br/><nobr><xsl:value-of select="netto_after_bonus_pln"/>&#160;</nobr></td>
        <td style="border-width:0px 0px 1px 1px; border-style:solid;font-size:10px;" align="right" ><nobr><xsl:value-of select="netto_sum"/>&#160;<xsl:value-of select="pos_currency"/>&#160;</nobr><br/><nobr><xsl:value-of select="netto_sum_pln"/>&#160;</nobr></td>		
        <td style="border-width:0px 1px 1px 1px; border-style:solid;font-size:10px;" align="center"><nobr><xsl:value-of select="vatrate"/></nobr></td>		
        <td style="border-width:0px 0px 1px 0px; border-style:solid;font-size:10px;" align="right" ><nobr><xsl:value-of select="vat"/>&#160;<xsl:value-of select="pos_currency"/>&#160;</nobr><br/><nobr><xsl:value-of select="vat_pln"/>&#160;</nobr></td>
        <td style="border-width:0px 1px 1px 1px; border-style:solid;font-size:10px;" align="right" ><nobr><xsl:value-of select="gross_sum"/>&#160;<xsl:value-of select="pos_currency"/>&#160;</nobr><br/><nobr><xsl:value-of select="gross_sum_pln"/>&#160;</nobr></td>
      </tr>
      </xsl:for-each>


<tr style="border-width:0px 0px 0px 0px; border-style:solid;border-color:white;font-size:5px;" bgcolor="white">

		
	 	<td style="border-width:0px 0px 0px 0px; border-style:solid;font-size:5px;" align="right" colspan="6"> </td>
		
		<td style="border-width:0px 0px 1px 0px; border-style:solid;font-size:5px;" align="right"><br/></td>
		<td style="border-width:0px 0px 1px 0px; border-style:solid;font-size:5px;" align="center"></td>
		<td style="border-width:0px 0px 1px 0px; border-style:solid;font-size:5px;" align="right"></td>
		<td style="border-width:0px 0px 1px 0px; border-style:solid;font-size:5px;" align="right"></td>		

	 </tr>

     
<tr style="border-width:0px 0px 0px 0px; border-style:solid;border-color:white;font-size:12px;" bgcolor="white">

		
	 	<td style="border-width:0px 0px 0px 0px; border-style:solid;font-size:12px;" align="right" colspan="6"><b>RAZEM:</b> </td>
		
		<td style="border-width:0px 0px 1px 1px; border-style:solid;font-size:12px;" align="right"><b><nobr><xsl:value-of select="invoice/netto_sum"/>&#160;<xsl:value-of select="invoice/currency"/>&#160;</nobr><br/><nobr><xsl:value-of select="invoice/netto_pln"/>&#160;</nobr></b></td>
		<td style="border-width:0px 1px 1px 1px; border-style:solid;font-size:12px;" align="center">---</td>
		<td style="border-width:0px 0px 1px 0px; border-style:solid;font-size:12px;" align="right"><b><nobr><xsl:value-of select="invoice/vat_sum"/>&#160;<xsl:value-of select="invoice/currency"/>&#160;</nobr><br/><nobr><xsl:value-of select="invoice/vat_pln"/>&#160;</nobr></b></td>
		<td style="border-width:0px 1px 1px 1px; border-style:solid;font-size:12px;" align="right"><b><nobr><xsl:value-of select="invoice/gross_sum"/>&#160;<xsl:value-of select="invoice/currency"/>&#160;</nobr><br/><nobr><xsl:value-of select="invoice/gross_pln"/>&#160;</nobr></b></td>		

	 </tr>



<tr style="border-width:1px; border-style:solid;border-color:white;font-size:12px;" bgcolor="white">
     <xsl:variable name="rowspan" select="invoice/vat_rates/rates_count" />
     <td style="border-width:0px 0px 0px 0px; border-style:solid;font-size:12px;" rowspan="{$rowspan+1}" align="right" colspan="6"><b> W tym:</b>
	 		
		</td>


	 </tr>

			<xsl:for-each select="invoice/vat_rates/rate">
				<tr style="border-width:1px; border-style:solid;border-color:white;font-size:12px;" bgcolor="white">	  
					<td style="border-width:0px 0px 1px 1px; border-style:solid;font-size:12px;" align="right"><nobr><xsl:value-of select="netto"/>&#160;<xsl:value-of select="vat_currency"/>&#160;</nobr><br/><nobr><xsl:value-of select="netto_pln"/>&#160;</nobr></td>
					<td style="border-width:0px 1px 1px 1px; border-style:solid;font-size:12px;" align="center"><xsl:value-of select="name"/></td>
					<td style="border-width:0px 0px 1px 0px; border-style:solid;font-size:12px;" align="right"><nobr><xsl:value-of select="vat"/>&#160;<xsl:value-of select="vat_currency"/>&#160;</nobr><br/><nobr><xsl:value-of select="vat_pln"/>&#160;</nobr></td>   
					<td style="border-width:0px 1px 1px 1px; border-style:solid;font-size:12px;" align="right"><nobr><xsl:value-of select="gross"/>&#160;<xsl:value-of select="vat_currency"/>&#160;</nobr><br/><nobr><xsl:value-of select="gross_pln"/>&#160;</nobr></td>	
				</tr>
      </xsl:for-each>

      
</table>

<br/>

<table style="border-width: 0px ;  border-style:solid;border-color:white;font-size:12px; " width="100%" hight = "100%" cellspacing="0" cellpadding="0" bgcolor="white">

<tr style="border-width:0px 0px 0px 0px; border-style:solid;border-color:white;font-size:12px;" bgcolor="white">


	<td style="border-width:1px 1px 1px 1px; border-style:solid;font-size:12px;" align="left" colspan="6"><b>Do zapłaty RAZEM:&#160;</b><xsl:value-of select="invoice/gross_sum"/>&#160; <xsl:value-of select="//pos_currency"/>
	<br/><b>Słownie do zapłaty:&#160;</b><xsl:value-of select="invoice/gross_as_words"/>&#160;<xsl:value-of select="invoice/currency"/>&#160;
	<br/><xsl:value-of select="invoice/local_gross_and_exch_rate"/> </td>	

	 </tr>

	

</table><br/>
	

<table style="border-width: 0px ;  border-style:solid;border-color:white;font-size:12px;" width="100%" hight = "100%" cellspacing="0" cellpadding="0" bgcolor="white">

<tr style="border-width:0px 0px 0px 0px; border-style:solid;border-color:white;font-size:12px;" bgcolor="white">

		
	 	<td style="border-width:1px 1px 1px 1px; border-style:solid;font-size:12px;" align="left" colspan="6"><b>Uwagi:</b><PRE style="font-family:Arial; font-size:12px;margin-top:1px;"><xsl:value-of select="invoice/add_info"/></PRE></td>	

	 </tr>
</table>
	
	
	<xsl:if test="count(invoice/outdated_positions/outdate)>0 ">
	<table style="border-width:1px; border-style:solid;font-size:12px;" width="100%" cellspacing="0" cellpadding="1" bgcolor="black">
		<CAPTION align="top" style="font-size:8px;">Przypominamy o konieczności rozliczenia przeterminowanych faktur podanych poniżej na podstawie art. 15 &#167; 1 ustawy z dnia 17 czerwca 1966 r. o postępowaniu egzekucyjnym w administracji (Dz. U. z 2002 r. Nr 110, poz 968, z późn. zm.). Jeżeli płatność została już uregulowana, to prosimy o kontakt z działem księgowym naszej firmy.</CAPTION> 
      <tr style="border-width:1px;  border-style:solid;font-size:12px;" bgcolor="white">
        <th style="border-width:0px; border-style:solid;font-size:12px;" align="center" width="5%">Typ</th>
        <th style="border-width:0px 1px; border-style:solid;font-size:12px;" align="center" width="20%">Numer</th>
        <th style="border-width:0px; border-style:solid;font-size:12px;" align="center" width="14%">Data wystawienia</th>	
        <th style="border-width:0px 1px; border-style:solid;font-size:12px;" align="center" width="11%">Data płatności</th>
        <th style="border-width:0px; border-style:solid;font-size:12px;" align="center" width="16%">Przeterminowanie (dni)</th>	
        <th style="border-width:0px 1px; border-style:solid;font-size:12px;" align="center" width="6%">Waluta</th>
        <th style="border-width:0px; border-style:solid;font-size:12px;" align="center" width="15%">Łączna kwota brutto</th>
        <th style="border-width:0px 0px 0px 1px ; border-style:solid;font-size:12px;" align="center" width="11%">Niezapłacono</th>			
      </tr>
      <xsl:for-each select="invoice/outdated_positions/outdate">
      <tr style="border-width:1px; border-style:solid;font-size:8px;" bgcolor="white">
        <td style="border-width:1px 0px 0px 0px; border-style:solid;font-size:8px;" align="center"><xsl:value-of select="dockind_symbol"/></td>
        <td style="border-width:1px 1px 0px 1px; border-style:solid;font-size:8px;" align="left">&#160;<xsl:value-of select="doc_number"/></td>
        <td style="border-width:1px 0px 0px 0px; border-style:solid;font-size:8px;" align="center"><xsl:value-of select="doc_date"/></td>		
        <td style="border-width:1px 1px 0px 1px; border-style:solid;font-size:8px;" align="center" ><xsl:value-of select="pay_date"/></td>
        <td style="border-width:1px 0px 0px 0px; border-style:solid;font-size:8px;" align="center"><xsl:value-of select="overdate_days"/></td>			
        <td style="border-width:1px 1px 0px 1px; border-style:solid;font-size:8px;" align="center" ><xsl:value-of select="currency_symbol"/></td>
        <td style="border-width:1px 0px 0px 0px; border-style:solid;font-size:8px;" align="right" ><nobr><xsl:value-of select="total_gross"/></nobr>&#160;</td>		
        <td style="border-width:1px 0px 0px 1px; border-style:solid;font-size:8px;" align="right"><nobr><xsl:value-of select="left_to_pay"/></nobr>&#160;</td>		
      </tr>
      </xsl:for-each>
  </table>
  <br/><br/>
  </xsl:if>

	<xsl:if test="invoice/np_string != 0">
		<xsl:choose>
			<xsl:when test="invoice/add_par_string != '' ">
				<br/><xsl:value-of select="invoice/add_par_string"/><br/><br/><br/>
			</xsl:when>
			<xsl:otherwise>
				<br/>Zgodnie z art. 28b ustawy o Podatku od Towarów i usług obowiązek podatkowy spoczywa na odbiorcy towaru/usługi.<br/><br/><br/>
			</xsl:otherwise>
	  </xsl:choose>
	</xsl:if>
	
<p style="border-width:1px 1px 1px 1px; border-style:solid;font-size:10px;" align="justify">Faktura wyliczona od&#160;<b><xsl:value-of select="invoice/pricelist_kind"/></b></p>

    <!--   <br/> -->
   
<xsl:if test="invoice/jpk_v7x_gtu != ''">
<p style="border-width:1px 1px 1px 1px; border-style:solid;font-size:12px;" align="justify">Parametry do JPK:&#160;&#160;<b><xsl:value-of select="invoice/jpk_v7x_gtu"/></b></p>		
	</xsl:if>   

<br/><br/>
<table style="border-width: 0px ; border-style:solid;border-color:white;font-size:8px; position:inherit" width="100%" hight = "100%" cellspacing="0" cellpadding="0" bgcolor="white">

<tr style="border-width:0px 0px 0px 0px; border-style:solid;border-color:white;font-size:8px;" bgcolor="white">


	 	<td style="border-width:0px 0px 0px 0px; border-style:solid;font-size:8px;" align="left" colspan="6"  width="8%"></td>	
		<td style="border-width:1px 1px 0px 1px; border-style:solid;font-size:8px;" align="left" colspan="6"  width="38%"></td>	
		<td style="border-width:0px 0px 0px 0px; border-style:solid;font-size:8px;" align="left" colspan="6"  width="8%"></td>	

		<td style="border-width:1px 1px 0px 1px; border-style:solid;font-size:8px;" align="left" colspan="6"  width="38%">
		

		<td style="border-width:0px 0px 0px 0px; border-style:solid;font-size:8px;" align="left" colspan="6"  width="8%"></td>
	
</td>
	 </tr>

<tr style="border-width:0px 0px 0px 0px; border-style:solid;border-color:white;font-size:8px;" bgcolor="white">


	 	<td style="border-width:0px 0px 0px 0px; border-style:solid;font-size:8px;" align="left" colspan="6"  width="8%"></td>	
		<td style="border-width:0px 1px 1px 1px; border-style:solid;font-size:8px;" align="left" colspan="6"  width="38%" ><center><font size = "1px" ><b><xsl:value-of select="invoice/representative_name"/></b></font><br/><br/><br/><br/><br/><br/><br/>Podpis osoby upoważnionej do odbioru faktury<br/></center></td>	
		<td style="border-width:0px 0px 0px 0px; border-style:solid;font-size:8px;" align="left" colspan="6"  width="8%"></td>	

		<td style="border-width:0px 1px 1px 1px; border-style:solid;font-size:8px;" align="left" colspan="6"  width="38%"><center><font size = "2px" ><b><xsl:value-of select="invoice/user_name"/></b></font><br/><br/><br/><br/><br/><br/><br/>Podpis osoby upoważnionej do wystawienia faktury</center></td>

		<td style="border-width:0px 0px 0px 0px; border-style:solid;font-size:8px;" align="left" colspan="6"  width="8%"></td>
	

	 </tr>
</table>






	
	
	<br/><br/><br/><div style="bottom: 1px;   font-size:10px;">LeftHand-System (http://www.lefthand.com.pl)
	
	<xsl:if test="invoice/company/regon != '' and invoice/company/krs != '' and invoice/company/sadrejestr != '' and invoice/company/kapital != 0.00">
	<b>,&#160;<xsl:value-of select="invoice/company/name"/></b>
	<xsl:if test="invoice/company/regon != ''">, Regon:&#160;<b><xsl:value-of select="invoice/company/regon"/></b></xsl:if>
	<xsl:if test="invoice/company/krs != ''">, KRS:&#160;<b><xsl:value-of select="invoice/company/krs"/></b></xsl:if>
	<xsl:if test="invoice/company/sadrejestr != ''">, Sąd rejestrowy:&#160;<b><xsl:value-of select="invoice/company/sadrejestr"/></b></xsl:if><br/>
	<xsl:if test="invoice/company/kapital != 0.00">, Kapitał zakładowy:&#160;<b><xsl:value-of select="format-number(number(invoice/company/kapital),'##,###.##')"/>&#160;<xsl:value-of select="invoice/company/currencykapital"/></b></xsl:if>
	</xsl:if>
	
	</div>
	
	
  </body>
  </html>
</xsl:template>
</xsl:stylesheet>
