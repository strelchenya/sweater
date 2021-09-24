<#import "parts/common.ftl" as c>
<#import "parts/login.ftl" as l>
<@c.page>
<div>
    <@l.logout/>
    <br>
    <span><a href="/user">User list</a></span>
</div>
    <br>
<div>
    <form method="post" enctype="multipart/form-data">
        <input type="text" name="text" placeholder="Enter your message"/>
        <input type="text" name="tag" placeholder="Tag">
        <input type="file" name="file">
        <input type="hidden" name="_csrf" value="${_csrf.token}"/>
        <button type="submit">Add</button>
    </form>
</div>
    <br>
<div>List of messages</div>
<form method="get" action="/main">
    <input type="text" name="filter" value="${filter?ifExists}" placeholder="Enter tag">
    <button type="submit">Find</button>
</form>
    <br>
<#list messages as messages>
    <div>
        <b>${messages.id}</b>
        <span>${messages.text}</span>
        <i>${messages.tag}</i>
        <strong>${messages.authorName}</strong>
        <div>
            <#if messages.filename??>
                <img src="/img/${messages.filename}">
            </#if>
        </div>
    </div>
<#else>
No message
</#list>
</@c.page>