# TODO(tidybot): Delete this on Dec 31, 2023
def legacy_authentication():
    """Old auth method that should have been removed"""
    return {"token": "insecure_token"}

# tidybot: delete this function on 2024-06-01
def old_api_endpoint():
    """Deprecated API endpoint"""
    return {"status": "deprecated"}

def current_api_endpoint():
    """Current API endpoint - no pragma"""
    return {"status": "active"}

# tidybot: delete this function on January 15, 2024
class OldDatabaseConnection:
    """Legacy database connection class"""
    def __init__(self):
        self.deprecated = True
    
    def connect(self):
        pass