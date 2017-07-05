public class MyFirstClass
{
	String xyz;
	Integer i;
	Decimal k;
	Date d;
	DateTime t;
	Sobject obj;
	Account acc;
	Position__c pss;
	
	List<Position__c> plist = new List<Position__c>();	
	set<Position__c> pSet = new set<Position__c>();
	map<Id,Position__c> pMap = new map<Id,Position__c>();
	
	list<String> s1 = new list<String>();	
	String[] s2 = new String[1];	
	
	List<Integer> a1 = new List<Integer>();
	String S2 ;
	
	public list<Position__c> getAllPositions()
		{			
			list<Position__c> allPositions = [Select id,name,Type__c from Position__c] ;
			
			for(Position__c pos : allPositions){
				system.debug('---->'+pos);
			}
			
			//Position__c positions = [Select id,name,Type__c from Position__c];
			//set<Position__c> allPositionsSet = [Select id,name,Type__c from Position__c] ;
			
			/*	
			}for(Position__c pos : allPositionsSet){
				system.debug('---->'+pos);
			} 
			*/
			
			return allPositions;		
		}	
	public void getMyPicklistValues()
		{
			list<String> objectName = new list<String>();
			//objectName = ['Position__c',''];
			//objectName[1] = 'Account';
			
			list<String> objectName2 = new list<String>{'Account', 'Contact'};			
			//DesecibeObject objDetails = Schema.describeSObject()
			
			map<String,Schema.SObjectType> type_Data = new map<String,Schema.SObjectType>();
			
			type_Data = Schema.getGlobalDescribe();
			
			//get('Position__c').getDescribe().fields().getMap().get(Type__c'').getDescribe().getPickListValues()
			
		}
		
		
		
}

/****


===posi==>
Schema.DescribeFieldResult[
getByteLength=765;
getCalculatedFormula=null;
getCompoundFieldName=null;getController=null;
getDefaultValue=Full Time;getDefaultValueFormula=null;getDigits=0;getFilteredLookupInfo=null;
getInlineHelpText=null;getLabel=Type;getLength=255;getLocalName=Type__c;getMask=null;getMaskType=null;
getName=Type__c;getPrecision=0;getReferenceTargetField=null;getRelationshipName=null;
getRelationshipOrder=null;getScale=0;
getSoapType=STRING;getSobjectField=Type__c;
getType=PICKLIST;
isAccessible=true;isAggregatable=true;isAutoNumber=false;isCalculated=false;
isCascadeDelete=false;isCaseSensitive=false;isCreateable=true;isCustom=true;isDefaultedOnCreate=true;
isDependentPicklist=false;isDeprecatedAndHidden=false;isDisplayLocationInDecimal=false;isEncrypted=false;isExternalId=false;
isFilterable=true;isGroupable=true;isHighScaleNumber=false;isHtmlFormatted=false;isIdLookup=false;isNameField=false;
isNamePointing=false;isNillable=true;isPermissionable=true;isQueryByDistance=false;isRestrictedDelete=false;isSearchPrefilterable=false;
isSortable=true;isUnique=false;isUpdateable=true;isWriteRequiresMasterRead=false;]




16:30:29:055 USER_DEBUG [1]|DEBUG|===posi==>(
Schema.PicklistEntry[getLabel=Full Time;getValue=Full Time;isActive=true;isDefaultValue=true;], 
Schema.PicklistEntry[getLabel=Part Time;getValue=Part Time;isActive=true;isDefaultValue=false;], 
Schema.PicklistEntry[getLabel=Internship;getValue=Internship;isActive=true;isDefaultValue=false;], 
Schema.PicklistEntry[getLabel=Contractor;getValue=Contractor;isActive=true;isDefaultValue=false;])


*/