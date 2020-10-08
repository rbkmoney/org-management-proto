namespace java com.rbkmoney.orgmanagement
namespace erlang orgmgmt

include "domain.thrift"
include "proto/context.thrift"

exception UserNotFound {}

service AuthContextProvider {

    context.ContextFragment GetUserContext (1: domain.UserID id) throws (
        1: UserNotFound ex1
    )

}
