class Planet # < ActiveRecord::Base
  # attr_accessible :ra, :st_raerr, :st_rah, :st_raherr, :dec, :st_decerr, :st_glon, :st_glonerr, :st_glat,
  # :st_glaterr, :st_elon, :st_elonerr, :st_elat, :st_elaterr, :st_posn, :st_plx, :st_plxerr,
  # :mas, :st_plxlim, :st_plxblend, :st_plxn, :st_dist, :st_disterr1, :st_disterr2, :st_distlim
  #,:int, :st_distn, :st_pmra, :st_pmraerr, :st_pmralim, :st_pmdec, :st_pmdecerr, :st_pmdeclim,
  #:st_pm, :st_pmerr, :st_pmlim, :st_pmblend, :st_pmn, :st_radv, :st_radverr, :st_radvlim, 
  #:st_radvblend, :st_radvn, :st_uj, :st_ujerr, :st_ujlim, :st_ujblend, :st_bj, :st_bjerr,
  #:st_bjlim, :st_bjblend, :st_vj, :st_vjerr, :st_vjlim, :st_vjblend, :st_rc, :st_rcerr,
  #:st_rclim, :st_rcblend, :st_ic, :st_icerr, :st_iclim, :st_icblend, :st_j,
  #:st_jerr, :st_jlim, :st_jblend, :st_h, :st_herr, :st_hlim, :st_hblend, :st_k, :st_kerr,
  #:st_klim, :st_kblend, :st_irac1, :st_irac1err, :st_irac1lim, :st_irac1blend, :st_irac2, :st_irac2err,
  #:st_irac2lim, :st_irac2blend, :st_irac3, :st_irac3err, :st_irac3lim, :st_irac3blend, :st_irac4,
  #:st_irac4err, :st_irac4lim, :st_irac4blend, :st_mips1, :st_mips1err, :st_mips1lim, :st_mips1blend
  #:st_mips2, :st_mips2err, :st_mips2lim, :st_mips2blend, :st_mips3, :st_mips3err, :st_mips3lim,
  # :st_mips3blend, :st_iras1, :st_iras1err, :st_iras1lim, :st_iras1blend, :st_iras2,
  #:st_iras2err, :st_iras2lim
  #, st_iras2blend" datatype="int"/><FIELD name="st_iras3" datatype="double" unit="Jy"/><FIELD name="st_iras3err" datatype="double" unit="Jy"/><FIELD name="st_iras3lim" datatype="int"/><FIELD name="st_iras3blend" datatype="int"/>
  #<FIELD name="st_iras4" datatype="double" unit="Jy"/><FIELD name="st_iras4err" datatype="double" unit="Jy"/><FIELD name="st_iras4lim" datatype="int"/>
  #<FIELD name="st_iras4blend" datatype="int"/><FIELD name="st_photn" datatype="int"/><FIELD name="st_umbj" datatype="double" unit="mags"/><FIELD name="st_umbjerr" datatype="double" unit="mags"/><FIELD name="st_umbjlim" datatype="int"/><FIELD name="st_umbjblend" datatype="int"/>
  #<FIELD name="st_bmvj" datatype="double" unit="mags"/><FIELD name="st_bmvjerr" datatype="double" unit="mags"/><FIELD name="st_bmvjlim" datatype="int"/><FIELD name="st_bmvjblend" datatype="int"/>
  #<FIELD name="st_vjmic" datatype="double" unit="mags"/><FIELD name="st_vjmicerr" datatype="double" unit="mags"/><FIELD name="st_vjmiclim" datatype="int"/><FIELD name="st_vjmicblend" datatype="int"/><FIELD name="st_vjmrc" datatype="double" unit="mags"/><FIELD name="st_vjmrcerr" datatype="double" unit="mags"/><FIELD name="st_vjmrclim" datatype="int"/><FIELD name="st_vjmrcblend" datatype="int"/><FIELD name="st_jmh2" datatype="double" unit="mags"/><FIELD name="st_jmh2err" datatype="double" unit="mags"/><FIELD name="st_jmh2lim" datatype="int"/><FIELD name="st_jmh2blend" datatype="int"/><FIELD name="st_hmk2" datatype="double" unit="mags"/><FIELD name="st_hmk2err" datatype="double" unit="mags"/><FIELD name="st_hmk2lim" datatype="int"/><FIELD name="st_hmk2blend" datatype="int"/><FIELD name="st_jmk2" datatype="double" unit="mags"/><FIELD name="st_jmk2err" datatype="double" unit="mags"/><FIELD name="st_jmk2lim" datatype="int"/><FIELD name="st_jmk2blend" datatype="int"/><FIELD name="st_bmy" datatype="double" unit="mags"/><FIELD name="st_bmyerr" datatype="double" unit="mags"/><FIELD name="st_bmylim" datatype="int"/><FIELD name="st_bmyblend" datatype="int"/><FIELD name="st_m1" datatype="double" unit="mags"/><FIELD name="st_m1err" datatype="double" unit="mags"/><FIELD name="st_m1lim" datatype="int"/><FIELD name="st_m1blend" datatype="int"/><FIELD name="st_c1" datatype="double" unit="mags"/><FIELD name="st_c1err" datatype="double" unit="mags"/><FIELD name="st_c1lim" datatype="int"/><FIELD name="st_c1blend" datatype="int"/><FIELD name="st_colorn" datatype="int"/><FIELD name="st_spstr" datatype="char" arraysize="*"/><FIELD name="st_ssperr" datatype="char" arraysize="*"/><FIELD name="st_splim" datatype="int"/><FIELD name="st_spblend" datatype="int"/><FIELD name="st_spn" datatype="int"/><FIELD name="st_teff" datatype="double" unit="K"/><FIELD name="st_tefferr" datatype="double" unit="K"/><FIELD name="st_tefflim" datatype="int"/><FIELD name="st_teffblend" datatype="int"/><FIELD name="st_teffn" datatype="int"/><FIELD name="st_logg" datatype="double" unit="cm/s**2"/><FIELD name="st_loggerr" datatype="double" unit="cm/s**2"/><FIELD name="st_logglim" datatype="int"/><FIELD name="st_loggblend" datatype="int"/><FIELD name="st_loggn" datatype="int"/><FIELD name="st_metfe" datatype="double" unit="dex"/><FIELD name="st_metfeerr" datatype="double" unit="dex"/><FIELD name="st_metfelim" datatype="int"/><FIELD name="st_metfeblend" datatype="int"/><FIELD name="st_metfen" datatype="int"/><FIELD name="st_lum" datatype="double" unit="Lsun"/><FIELD name="st_lumerr" datatype="double" unit="Lsun"/><FIELD name="st_lumlim" datatype="int"/><FIELD name="st_lumblend" datatype="int"/><FIELD name="st_lumn" datatype="int"/><FIELD name="st_rad" datatype="double" unit="Rsun"/><FIELD name="st_raderr" datatype="double" unit="Rsun"/><FIELD name="st_radlim" datatype="int"/><FIELD name="st_radblend" datatype="int"/><FIELD name="st_radn" datatype="int"/><FIELD name="st_mass" datatype="double" unit="Msun"/><FIELD name="st_masserr" datatype="double" unit="Msun"/><FIELD name="st_masslim" datatype="int"/><FIELD name="st_massblend" datatype="int"/><FIELD name="st_massn" datatype="int"/><FIELD name="st_dens" datatype="double" unit="g/cm**3"/><FIELD name="st_denserr" datatype="double" unit="g/cm**3"/><FIELD name="st_denslim" datatype="int"/><FIELD name="st_densn" datatype="int"/><FIELD name="st_vsini" datatype="double" unit="km/s"/><FIELD name="st_vsinierr" datatype="double" unit="km/s"/><FIELD name="st_vsinilim" datatype="int"/><FIELD name="st_vsiniblend" datatype="int"/><FIELD name="st_vsinin" datatype="int"/><FIELD name="st_acts" datatype="double"/><FIELD name="st_actserr" datatype="double"/><FIELD name="st_actslim" datatype="int"/><FIELD name="st_actsblend" datatype="int"/><FIELD name="st_actsn" datatype="int"/><FIELD name="st_actr" datatype="double"/><FIELD name="st_actrerr" datatype="double"/><FIELD name="st_actrlim" datatype="int"/><FIELD name="st_actrblend" datatype="int"/><FIELD name="st_actrn" datatype="int"/><FIELD name="st_actlx" datatype="double"/><FIELD name="st_actlxerr" datatype="double"/><FIELD name="st_actlxlim" datatype="int"/><FIELD name="st_actlxblend" datatype="int"/><FIELD name="st_actlxn" datatype="int"/><FIELD name="st_nts" datatype="int"/><FIELD name="st_nplc" datatype="int"/><FIELD name="st_nglc" datatype="int"/><FIELD name="st_nrvc" datatype="int"/><FIELD name="st_naxa" datatype="int"/><FIELD name="st_nimg" datatype="int"/><FIELD name="st_nspec" datatype="int"/><FIELD name="hd_name" datatype="char" arraysize="*"/><FIELD name="hip_name" datatype="char" arraysize="*"/><FIELD name="pl_name" datatype="char" arraysize="*"/><FIELD name="pl_hostname" datatype="char" arraysize="*"/><FIELD name="pl_letter" datatype="char" arraysize="*"/><FIELD name="pl_status" datatype="int"/><FIELD name="pl_discmethod" datatype="char" arraysize="*"/><FIELD name="pl_disc" datatype="int"/><FIELD name="pl_publ_date" datatype="char" arraysize="*"/><FIELD name="pl_rvflag" datatype="int"/><FIELD name="pl_imgflag" datatype="int"/><FIELD name="pl_astflag" datatype="int"/><FIELD name="pl_tranflag" datatype="int"/><FIELD name="pl_ttvflag" datatype="int"/><FIELD name="pl_kepflag" datatype="int"/><FIELD name="pl_pelink" datatype="char" arraysize="*"/><FIELD name="pl_edelink" datatype="char" arraysize="*"/><FIELD name="pl_orbper" datatype="double" unit="days"/><FIELD name="pl_orbpererr1" datatype="double" unit="days"/><FIELD name="pl_orbpererr2" datatype="double" unit="days"/><FIELD name="pl_orbperlim" datatype="int"/><FIELD name="pl_orbpern" datatype="int"/><FIELD name="pl_orbsmax" datatype="double" unit="AU"/><FIELD name="pl_orbsmaxerr1" datatype="double" unit="AU"/><FIELD name="pl_orbsmaxerr2" datatype="double" unit="AU"/><FIELD name="pl_orbsmaxlim" datatype="int"/><FIELD name="pl_orbsmaxn" datatype="int"/><FIELD name="pl_orbincl" datatype="double" unit="degrees"/><FIELD name="pl_orbinclerr1" datatype="double" unit="degrees"/><FIELD name="pl_orbinclerr2" datatype="double" unit="degrees"/><FIELD name="pl_orbincllim" datatype="int"/><FIELD name="pl_orbincln" datatype="int"/><FIELD name="pl_orbtper" datatype="double" unit="days"/><FIELD name="pl_orbtpererr1" datatype="double" unit="days"/><FIELD name="pl_orbtpererr2" datatype="double" unit="days"/><FIELD name="pl_orbtperlim" datatype="int"/><FIELD name="pl_orbtpern" datatype="int"/><FIELD name="pl_orbeccen" datatype="double"/><FIELD name="pl_orbeccenerr1" datatype="double"/><FIELD name="pl_orbeccenerr2" datatype="double"/><FIELD name="pl_orbeccenlim" datatype="int"/><FIELD name="pl_orbeccenn" datatype="int"/><FIELD name="pl_orblper" datatype="double" unit="degrees"/><FIELD name="pl_orblpererr1" datatype="double" unit="degrees"/><FIELD name="pl_orblpererr2" datatype="double" unit="degrees"/><FIELD name="pl_orblperlim" datatype="int"/><FIELD name="pl_orblpern" datatype="int"/><FIELD name="pl_orbmethod" datatype="char" arraysize="*"/><FIELD name="pl_msinij" datatype="double" unit="Mjup"/><FIELD name="pl_msinijerr1" datatype="double" unit="Mjup"/><FIELD name="pl_msinijerr2" datatype="double" unit="Mjup"/><FIELD name="pl_msinie" datatype="double" unit="Mearth"/><FIELD name="pl_msinieerr1" datatype="double" unit="Mearth"/><FIELD name="pl_msinieerr2" datatype="double" unit="Mearth"/><FIELD name="pl_msinilim" datatype="int"/><FIELD name="pl_msinin" datatype="int"/><FIELD name="pl_massj" datatype="double" unit="Mjup"/><FIELD name="pl_massjerr1" datatype="double" unit="Mjup"/><FIELD name="pl_massjerr2" datatype="double" unit="Mjup"/><FIELD name="pl_masse" datatype="double" unit="Mearth"/><FIELD name="pl_masseerr1" datatype="double" unit="Mearth"/><FIELD name="pl_masseerr2" datatype="double" unit="Mearth"/><FIELD name="pl_masslim" datatype="int"/><FIELD name="pl_massn" datatype="int"/><FIELD name="pl_radj" datatype="double" unit="Rjup"/><FIELD name="pl_radjerr1" datatype="double" unit="Rjup"/><FIELD name="pl_radjerr2" datatype="double" unit="Rjup"/><FIELD name="pl_rade" datatype="double" unit="Rearth"/><FIELD name="pl_radeerr1" datatype="double" unit="Rearth"/><FIELD name="pl_radeerr2" datatype="double" unit="Rearth"/><FIELD name="pl_rads" datatype="double" unit="Rsun"/><FIELD name="pl_radserr1" datatype="double" unit="Rsun"/><FIELD name="pl_radserr2" datatype="double" unit="Rsun"/><FIELD name="pl_radlim" datatype="int"/><FIELD name="pl_radn" datatype="int"/><FIELD name="pl_dens" datatype="double" unit="g/cm**3"/><FIELD name="pl_denserr1" datatype="double" unit="g/cm**3"/><FIELD name="pl_denserr2" datatype="double" unit="g/cm**3"/><FIELD name="pl_denslim" datatype="int"/><FIELD name="pl_densn" datatype="int"/><FIELD name="pl_trandep" datatype="double" unit="perc"/><FIELD name="pl_trandeperr1" datatype="double" unit="perc"/><FIELD name="pl_trandeperr2" datatype="double" unit="perc"/><FIELD name="pl_trandeplim" datatype="int"/><FIELD name="pl_trandepn" datatype="int"/><FIELD name="pl_trandur" datatype="double" unit="days"/><FIELD name="pl_trandurerr1" datatype="double" unit="days"/><FIELD name="pl_trandurerr2" datatype="double" unit="days"/><FIELD name="pl_trandurlim" datatype="int"/><FIELD name="pl_trandurn" datatype="int"/><FIELD name="pl_tranmid" datatype="double" unit="days"/><FIELD name="pl_tranmiderr1" datatype="double" unit="days"/><FIELD name="pl_tranmiderr2" datatype="double" unit="days"/><FIELD name="pl_tranmidlim" datatype="int"/>
  #<FIELD name="pl_tranmidn" datatype="int"/>
  #<FIELD name="id" ucd="ID_MAIN" datatype="char" arraysize="*"/>
  
  def self.all()
  require 'net/http'
  require 'rexml/document'

	    url = 'http://exoplanetarchive.ipac.caltech.edu/cgi-bin/nstedAPI/nph-nstedAPI?table=exoplanets&order=dec&format=xml&select=pl_hostname,ra,dec '
	    xml_data = Net::HTTP.get_response(URI.parse(url)).body
	    doc = REXML::Document.new(xml_data)
	    @planets = []
	    doc.elements.each('VOTABLE/RESOURCE/TABLE/DATA/TABLEDATA') do |fld|
	      params = []
	      fld.elements.each('TR') do |tr|
		      tds = tr.get_elements('TD')
    		  record = {
		    	:pl_hostname => tds[0].text,
				  :ra => tds[1].text,
			    :dec => tds[2].text,
				  :id => tds[3].text
				  }
		      @planets << record
          puts record.inspect
        end
      end
    return @planets
  end

  def self.find(pl_name)
    require 'net/http'
    require 'rexml/document'
    url = "http://exoplanetarchive.ipac.caltech.edu/cgi-bin/nstedAPI/nph-nstedAPI?table=exoplanets&order=dec&format=xml&select=pl_hostname,ra,dec,pl_name&where=pl_name="+ pl_name
	  xml_data = Net::HTTP.get_response(URI.parse(url)).body
	  doc = REXML::Document.new(xml_data)
	  doc.elements.each('VOTABLE/RESOURCE/TABLE/DATA/TABLEDATA/') do |fld|
	    params = []
	    fld.elements.each('TR') do |tr|
	      tds = tr.get_elements('TD')
	      record = {
	      :pl_hostname => tds[0].text,
	      :ra => tds[1].text,
	      :dec => tds[2].text,
	      :id => tds[3].text,
        :pl_name => tds[4].text
	      }
	      @planets << record
      end
    end
  
  return @planets
  end
end