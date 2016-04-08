###########################################################################
# Stock by Attributes 1.7 - UNINSTALL - 2014-08-05 - webchills
# NUR AUSFÜHREN WENN SIE DAS MODUL AUS DER DATENBANK ENTFERNEN WOLLEN!!!!!
###########################################################################


##############################
# delete config settings
##############################

DELETE FROM configuration WHERE configuration_key IN ('STOCK_SHOW_LOW_IN_CART','STOCK_SHOW_IMAGE');
DELETE FROM configuration_language WHERE configuration_key IN ('STOCK_SHOW_LOW_IN_CART','STOCK_SHOW_IMAGE');


##############################
# delete pwa table
##############################

DROP TABLE IF EXISTS products_with_attributes_stock;      

##############################
# delete from admin access
##############################

DELETE FROM admin_pages WHERE page_key='stock_by_attributes';    