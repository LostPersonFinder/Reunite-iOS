/*
	PLgetEventListRequestType.h
	The implementation of properties and methods for the PLgetEventListRequestType object.
	Generated by SudzC.com
 */
#import "PLgetEventDataRequestType.h"

@implementation PLgetEventDataRequestType
@synthesize token = _token;
@synthesize locale = _locale;

- (id) init
{
    if(self = [super init])
    {
        self.token = nil;
        self.locale = nil;
        
    }
    return self;
}

+ (PLgetEventDataRequestType*) createWithNode: (CXMLNode*) node
{
    if(node == nil) { return nil; }
    return [[self alloc] initWithNode: node];
}

- (id) initWithNode: (CXMLNode*) node {
    if(self = [super initWithNode: node])
    {
        self.token = [Soap getNodeValue: node withName: @"token"];
        self.locale = [Soap getNodeValue: node withName: @"locale"];
    }
    return self;
}

- (NSMutableString*) serialize
{
    return [self serialize: @"getEventDataRequestType"];
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
    if (self.locale != nil) [s appendFormat: @"<locale>%@</locale>", [CommonFunctions escapeForXML:self.locale]];
    
    
    return s;
}

- (NSMutableString*) serializeAttributes
{
    NSMutableString* s = [super serializeAttributes];
    
    return s;
}

- (BOOL)isEqual:(id)object{
    if(object != nil && [object isKindOfClass:[PLgetEventDataRequestType class]]) {
        return [[self serialize] isEqualToString:[object serialize]];
    }
    return NO;
}

- (NSUInteger)hash{
    return [Soap generateHash:self];
    
}

@end
