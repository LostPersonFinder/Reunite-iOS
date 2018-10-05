/*
	PLgetGroupListRequestType.h
	The interface definition of properties and methods for the PLgetGroupListRequestType object.
	Generated by SudzC.com
*/

#import "Soap.h"
	

@interface PLgetGroupListRequestType : SoapObject
{
	NSString* _token;
	
}
		
	@property (retain, nonatomic) NSString* token;

	+ (PLgetGroupListRequestType*) createWithNode: (CXMLNode*) node;
	- (id) initWithNode: (CXMLNode*) node;
	- (NSMutableString*) serialize;
	- (NSMutableString*) serialize: (NSString*) nodeName;
	- (NSMutableString*) serializeAttributes;
	- (NSMutableString*) serializeElements;

@end