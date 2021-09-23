<#import "parts/common.ftl" as c>
<#import "parts/login.ftl" as l>
<@c.page>
<div>
    <@l.logout/>
</div>
<div>
    <form method="post">
        <input type="text" name="text" placeholder="Enter your message"/>
        <input type="text" name="tag" placeholder="Tag">
        <input type="hidden" name="_csrf" value="${_csrf.token}"/>
        <button type="submit">Add</button>
    </form>
</div>
<div>List of messages</div>
<form method="get" action="/main">
    <input type="text" name="filter" value="${filter!""}">
    <button type="submit">Find</button>
</form>
<#list messages as messages>
    <div>
        <b>${messages.id}</b>
        <span>${messages.text}</span>
        <i>${messages.tag}</i>
        <strong>${messages.authorName}</strong>
    </div>
<#else>
No message
</#list>
</@c.page>