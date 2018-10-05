/*
	PLchangeUserPasswordRequestType.h
	The implementation of properties and methods for the PLchangeUserPasswordRequestType object.
	Generated by SudzC.com
*/
#import "PLchangeUserPasswordRequestType.h"

@implementation PLchangeUserPasswordRequestType
	@synthesize token = _token;
	@synthesize username = _username;
	@synthesize oldPassword = _oldPassword;
	@synthesize freshPassword = _freshPassword;

	- (id) init
	{
		if(self = [super init])
		{
			self.token = nil;
			self.username = nil;
			self.oldPassword = nil;
			self.freshPassword = nil;

		}
		return self;
	}

	+ (PLchangeUserPasswordRequestType*) createWithNode: (CXMLNode*) node
	{
		if(node == nil) { return nil; }
		return [[self alloc] initWithNode: node];
	}

	- (id) initWithNode: (CXMLNode*) node {
		if(self = [super initWithNode: node])
		{
			self.token = [Soap getNodeValue: node withName: @"token"];
			self.username = [Soap getNodeValue: node withName: @"username"];
			self.oldPassword = [Soap getNodeValue: node withName: @"oldPassword"];
			self.freshPassword = [Soap getNodeValue: node withName: @"newPassword"];
		}
		return self;
	}

	- (NSMutableString*) serialize
	{
		return [self serialize: @"changeUserPasswordRequestType"];
	}
  
	- (NSMutableString*) serialize: (NSString*) nodeName
	{
		NSMutableString* s = [NSMutableString string];
		[s appendFormat: @"<%@", nodeName];
		[s appendString: [self serializeAttributes]];
		[s appendString: @">"];
		[s appendString: [self serializeElements]];
		[s appendFormat: @"</%@>", nodeName];
		return s;
	}
	
	- (NSMutableString*) serializeElements
	{
		NSMutableString* s = [super serializeElements];
		if (self.token != nil) [s appendFormat: @"<token>%@</token>", [CommonFunctions escapeForXML:self.token]];
		if (self.username != nil) [s appendFormat: @"<username>%@</username>", [CommonFunctions escapeForXML:self.username]];
		if (self.oldPassword != nil) [s appendFormat: @"<oldPassword>%@</oldPassword>", [CommonFunctions escapeForXML:self.oldPassword]];
		if (self.freshPassword != nil) [s appendFormat: @"<newPassword>%@</newPassword>", [CommonFunctions escapeForXML:self.freshPassword]];

		return s;
	}
	
	- (NSMutableString*) serializeAttributes
	{
		NSMutableString* s = [super serializeAttributes];

		return s;
	}
	
	- (BOOL)isEqual:(id)object{
		if(object != nil && [object isKindOfClass:[PLchangeUserPasswordRequestType class]]) {
			return [[self serialize] isEqualToString:[object serialize]];
		}
		return NO;
	}
	
	- (NSUInteger)hash{
		return [Soap generateHash:self];

	}

@end