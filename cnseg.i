%module cnseg

%include "cstring.i"

%{

enum eCodeType {
	CODE_TYPE_UNKNOWN,//type unknown
	CODE_TYPE_ASCII,//ASCII
	CODE_TYPE_GB,//GB2312,GBK,GB10380
	CODE_TYPE_UTF8,//UTF-8
	CODE_TYPE_BIG5//BIG5
};

bool ICTCLAS_Init(const char* pszInitDir=NULL);

bool ICTCLAS_Exit();

bool ICTCLAS_SetPOSmap(int nPOSmap);

unsigned int ICTCLAS_ImportUserDictFile(
    const char* pszFileName,
    eCodeType codeType=CODE_TYPE_UNKNOWN
    );

unsigned int ICTCLAS_ImportUserDict(
    const char* pszDictBuffer,
    const int nLength,
    eCodeType codeType
    );

int ICTCLAS_SaveTheUsrDic();

int ICTCLAS_ParagraphProcess(
    const char*  pszText,
    int	iLength,
    char* pszResult, //[out]
    eCodeType codeType=CODE_TYPE_UNKNOWN,
    bool bEnablePOS=false
    );

bool ICTCLAS_FileProcess(
    const char* pszSrcFileName,
    const char* pszDstFileName, 
    eCodeType srcCodeType=CODE_TYPE_UNKNOWN,
    bool bEnablePOS=false
    );

    %}

enum eCodeType {
	CODE_TYPE_UNKNOWN,//type unknown
	CODE_TYPE_ASCII,//ASCII
	CODE_TYPE_GB,//GB2312,GBK,GB10380
	CODE_TYPE_UTF8,//UTF-8
	CODE_TYPE_BIG5//BIG5
};

bool ICTCLAS_Init(const char* pszInitDir=NULL);

bool ICTCLAS_Exit();

bool ICTCLAS_SetPOSmap(int nPOSmap);

unsigned int ICTCLAS_ImportUserDictFile(
    const char* pszFileName,
    eCodeType codeType=CODE_TYPE_UNKNOWN
    );

unsigned int ICTCLAS_ImportUserDict(
    const char* pszDictBuffer,
    const int nLength,
    eCodeType codeType
    );

int ICTCLAS_SaveTheUsrDic();

%cstring_bounded_output(char *pszResult, 65536);
int ICTCLAS_ParagraphProcess(
    const char*  pszText,
    int	iLength,
    char* pszResult, //[out]
    eCodeType codeType=CODE_TYPE_UNKNOWN,
    bool bEnablePOS=false
    );

bool ICTCLAS_FileProcess(
    const char* pszSrcFileName,
    const char* pszDstFileName, 
    eCodeType srcCodeType=CODE_TYPE_UNKNOWN,
    bool bEnablePOS=false
    );
