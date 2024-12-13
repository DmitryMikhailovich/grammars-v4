CREATE FOREIGN SERVER Presto_1
USING
LINK('td1_presto1')
DO IMPORT WITH TD_SYSFNLIB.QGInitiatorImport,
DO EXPORT WITH TD_SYSFNLIB.QGInitiatorExport;

CREATE FOREIGN SERVER Presto_1
EXTERNAL SECURITY DEFINER TRUSTED Auth_1
USING
LINK('td1_presto1')
VERSION('active')
DO IMPORT WITH TD_SYSFNLIB.QGInitiatorImport,
DO EXPORT WITH TD_SYSFNLIB.QGInitiatorExport;