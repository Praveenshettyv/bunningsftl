<#assign userD = rest("2.0", "/search?q=" + "SELECT *  FROM users WHERE id='${user.id}'"?url) />
<#assign aDateTime = .now>
<#list userD.data.items as user_items>
<div class="lia-quilt lia-quilt-forum-message lia-quilt-layout-one-column-message">
   <div class="lia-quilt-row lia-quilt-row-header">
      <div class="lia-quilt-column lia-quilt-column-16 lia-quilt-column-left lia-quilt-column-header-left">
         <div class="lia-quilt-column-alley lia-quilt-column-alley-left">
            <div class="lia-message-author-avatar lia-component-author-avatar lia-component-message-view-widget-author-avatar">
               <div class="UserAvatar lia-user-avatar lia-component-common-widget-user-avatar">
                  <img class="lia-user-avatar-message" title="${user.login}" alt="${user.login}" id="imagedisplay_983c1c939fb7aa_2aed8" src="/t5/image/serverpage/avatar-name/sports/avatar-theme/candy/avatar-collection/hobbies/avatar-display-size/message/version/2?xdesc=1.0">
               </div>
            </div>
            <div class="lia-message-author-with-avatar">
               <span class="UserName lia-user-name lia-user-rank-Community-Manager lia-component-message-view-widget-author-username">
               <img class="lia-user-rank-icon lia-user-rank-icon-left" title="${user_items.rank.name}" alt="${user_items.rank.name}" id="display_983c1c939fb7aa_2aed8" src="/i/rank_icons/admin.gif">
               <a class="lia-link-navigation lia-page-link lia-user-name-link" style="color:#FF3366" target="_self" aria-label="View Profile of${user.login}" itemprop="url" id="link_983c1c939fb7aa_2aed8" href="https://italent2.demo.lithium.com/t5/user/viewprofilepage/user-id/${user.id}"><span class="login-bold">${user.login}</span></a>
               </span>
            </div>
            <div class="lia-message-author-rank lia-component-author-rank lia-component-message-view-widget-author-rank">
               ${user_items.rank.name}
            </div>
            <div class="MessageInResponseTo lia-component-message-view-widget-in-response-to lia-component-in-response-to">
            </div>
         </div>
      </div>
        <div class="lia-quilt-column lia-quilt-column-08 lia-quilt-column-right lia-quilt-column-header-right">
            <div class="lia-quilt-column-alley lia-quilt-column-alley-right">
              <div title="Posted on" class="lia-message-post-date lia-component-post-date lia-component-message-view-widget-post-date">
                  <span class="DateTime">
                  <span title="${aDateTime?datetime}" class="local-friendly-date">
                  a moment ago
                  </span>
                  </span>
              </div>
            </div>
        </div>
   </div>
   <div class="lia-quilt-row lia-quilt-row-main">
      <div class="lia-quilt-column lia-quilt-column-24 lia-quilt-column-single lia-quilt-column-main">
         <div class="lia-quilt-column-alley lia-quilt-column-alley-single">
            <#--  <div title="Posted on" class="lia-message-post-date lia-component-post-date lia-component-message-view-widget-post-date">
               <span class="DateTime">
               <span title="${aDateTime?datetime}" class="local-friendly-date">
               a moment ago
               </span>
               </span>
            </div>  -->
            <div class="lia-message-subject lia-component-message-view-widget-subject">
               <div class="MessageSubject">
                  <h2 itemprop="name" class="message-subject">
                     <span class="lia-message-read">
                        <div class="lia-message-subject">
                           <#--  here title  -->
                        </div>
                     </span>
                  </h2>
               </div>
            </div>
            <div itemprop="text" id="bodyDisplay_983c1c939fb7aa_2aed8" class="lia-message-body lia-component-message-view-widget-body lia-component-body-signature-highlight-escalation lia-component-message-view-widget-body-signature-highlight-escalation">
               <div class="lia-message-body-content">
                  <#--  here body   -->
               </div>
            </div>
            <div class="lia-rating-metoo lia-component-me-too lia-component-message-view-widget-me-too">
            </div>
            <div class="lia-product-tag-list lia-component-product-snippet lia-component-message-view-widget-product-snippet" id="producttaglist_983c1c939fb7aa_2aed8">
               <a class="lia-link-navigation lia-products-add-product-tag lia-panel-dialog-trigger lia-panel-dialog-trigger-event-click lia-js-data-dialogKey-935374681" role="button" id="link_983c1c939fb7aa_0_2aed8" href="#">Add Products</a>
            </div>
         </div>
      </div>
   </div>
   <div class="lia-quilt-row lia-quilt-row-footer">
      <div class="lia-quilt-column lia-quilt-column-12 lia-quilt-column-left lia-quilt-column-footer-left">
         <div class="lia-quilt-column-alley lia-quilt-column-alley-left lia-mark-empty">
         </div>
      </div>
      <div class="lia-quilt-column lia-quilt-column-12 lia-quilt-column-right lia-quilt-column-footer-right">
         <div class="lia-quilt-column-alley lia-quilt-column-alley-right">
            <div class="lia-inline-message-reply-container lia-js-hidden lia-component-messages-widget-reply-inline-button" id="inlineMessageReplyContainer_983c1c939fb7aa_2aed8">
               <div class="lia-inline-message-reply-wrapper">
                  <div class="lia-message-actions">
                     <div class="lia-button-group">
                        <span class="lia-button-wrapper lia-button-wrapper-secondary"><a class="lia-button lia-button-secondary reply-action-link lia-action-reply iconClass lia-button-slim" id="link_983c1c939fb7aa_1_2aed8" href="">Reply</a></span>
                     </div>
                  </div>
                  <div class="lia-inline-message-reply-placeholder"></div>
               </div>
            </div>
         </div>
      </div>
   </div>
   <div class="lia-quilt-row lia-quilt-row-mod-controls">
      <div class="lia-quilt-column lia-quilt-column-24 lia-quilt-column-single lia-quilt-column-mod-controls-main lia-mark-empty">
      </div>
   </div>
   <div class="lia-quilt-row lia-quilt-row-sub-footer">
      <div class="lia-quilt-column lia-quilt-column-24 lia-quilt-column-single lia-quilt-column-sub-footer lia-mark-empty">
      </div>
   </div>
</div>
</#list >