"use strict";
/**
 * @license Copyright (c) 2003-2016, CKSource - Frederico Knabben. All rights reserved.
 * For licensing, see LICENSE.md or http://ckeditor.com/license
 */
(function(){function s(n){function e(){this.deflated||(n.widgets.focused==this.widget&&(this.focused=!0),n.widgets.destroy(this.widget),this.deflated=!0)}function o(){var r=n.editable(),u=n.document,i;this.deflated?(this.widget=n.widgets.initOn(this.element,"image",this.widget.data),this.widget.inline&&!new CKEDITOR.dom.elementPath(this.widget.wrapper,r).block&&(i=u.createElement(n.activeEnterMode==CKEDITOR.ENTER_P?"p":"div"),i.replace(this.widget.wrapper),this.widget.wrapper.move(i)),this.focused&&(this.widget.focus(),delete this.focused),delete this.deflated):h(this.widget,t)}var t=n.config.image2_alignClasses,i=n.config.image2_captionedClass;return{allowedContent:w(n),requiredContent:"img[src,alt]",features:b(n),styleableElements:"img figure",contentTransformations:[["img[width]: sizeToAttribute"]],editables:{caption:{selector:"figcaption",allowedContent:"br em strong sub sup u s; a[!href,target]"}},parts:{image:"img",caption:"figcaption"},dialog:"image2",template:f,data:function(){var t=this.features,i;if(this.data.hasCaption&&!n.filter.checkFeature(t.caption)&&(this.data.hasCaption=!1),this.data.align=="none"||n.filter.checkFeature(t.align)||(this.data.align="none"),this.shiftState({widget:this,element:this.element,oldData:this.oldData,newData:this.data,deflate:e,inflate:o}),this.data.link?this.parts.link||(this.parts.link=this.parts.image.getParent()):this.parts.link&&delete this.parts.link,this.parts.image.setAttributes({src:this.data.src,"data-cke-saved-src":this.data.src,alt:this.data.alt}),this.oldData&&!this.oldData.hasCaption&&this.data.hasCaption)for(i in this.data.classes)this.parts.image.removeClass(i);n.filter.checkFeature(t.dimension)&&a(this);this.oldData=CKEDITOR.tools.extend({},this.data)},init:function(){var o=CKEDITOR.plugins.image2,r=this.parts.image,i={hasCaption:!!this.parts.caption,src:r.getAttribute("src"),alt:r.getAttribute("alt")||"",width:r.getAttribute("width")||"",height:r.getAttribute("height")||"",lock:this.ready?o.checkHasNaturalRatio(r):!0},s=r.getAscendant("a"),f,e;s&&this.wrapper.contains(s)&&(this.parts.link=s);i.align||(f=i.hasCaption?this.element:r,t?(f.hasClass(t[0])?i.align="left":f.hasClass(t[2])&&(i.align="right"),i.align?f.removeClass(t[u[i.align]]):i.align="none"):(i.align=f.getStyle("float")||"none",f.removeStyle("float")));n.plugins.link&&this.parts.link&&(i.link=o.getLinkAttributesParser()(n,this.parts.link),e=i.link.advanced,e&&e.advCSSClasses&&(e.advCSSClasses=CKEDITOR.tools.trim(e.advCSSClasses.replace(/cke_\S+/,""))));this.wrapper[(i.hasCaption?"remove":"add")+"Class"]("cke_image_nocaption");this.setData(i);n.filter.checkFeature(this.features.dimension)&&n.config.image2_disableResizer!==!0&&v(this);this.shiftState=o.stateShifter(this.editor);this.on("contextMenu",function(n){n.data.image=CKEDITOR.TRISTATE_OFF;(this.parts.link||this.wrapper.getAscendant("a"))&&(n.data.link=n.data.unlink=CKEDITOR.TRISTATE_OFF)});this.on("dialog",function(n){n.data.widget=this},this);n.on("blur",function(){},null,null,8);n.on("saveContent",function(){},null,null,9)},addClass:function(n){r(this).addClass(n)},hasClass:function(n){return r(this).hasClass(n)},removeClass:function(n){r(this).removeClass(n)},getClasses:function(){var n=new RegExp("^("+[].concat(i,t).join("|")+")$");return function(){var t=this.repository.parseElementClasses(r(this).getAttribute("class"));for(var i in t)n.test(i)&&delete t[i];return t}}(),upcast:c(n),downcast:l(n),getLabel:function(){var n=(this.data.alt||"")+" "+this.pathName;return this.editor.lang.widget.label.replace(/%1/,n)}}}function h(n,t){var i=n.wrapper,r=n.data.align,e=n.data.hasCaption,f;if(t){for(f=3;f--;)i.removeClass(t[f]);r=="center"?e&&i.addClass(t[1]):r!="none"&&i.addClass(t[u[r]])}else r=="center"?(e?i.setStyle("text-align","center"):i.removeStyle("text-align"),i.removeStyle("float")):(r=="none"?i.removeStyle("float"):i.setStyle("float",r),i.removeStyle("text-align"))}function c(n){var r=i(n),u=n.config.image2_captionedClass;return function(i,f){var a=i.name,e,s,c,l,h;if(!i.attributes["data-cke-realelement"]&&(r(i)?(a=="div"&&(s=i.getFirst("figure"),s&&(i.replaceWith(s),i=s)),f.align="center",e=i.getFirst("img")||i.getFirst("a").getFirst("img")):a=="figure"&&i.hasClass(u)?e=i.getFirst("img")||i.getFirst("a").getFirst("img"):t(i)&&(e=i.name=="a"?i.children[0]:i),e)){for(c in{width:1,height:1})l=e.attributes[c],l&&l.match(o)&&delete e.attributes[c];return n.elementMode==CKEDITOR.ELEMENT_MODE_INLINE&&n.config.sefEnabled&&(h=e.attributes.src,h=h.replace(/^(?!\/|[a-zA-Z0-9\-]+:|#|')(.*)$/i,n.config.base+"$1"),e.attributes.src=h),i}}}function l(n){var r=n.config.image2_alignClasses,f=i(n),e=n.config.image2_captionedClass;return function(i){var y=i.name=="a"?i.getFirst():i,p=y.attributes,h=this.data.align,l,o,s,a,v;if(this.inline||(l=i.getFirst("span"),l&&l.replaceWith(l.getFirst({img:1,a:1}))),h&&h!="none"&&(s=CKEDITOR.tools.parseCssText(p.style||""),h=="center"&&i.name=="figure"?i=i.wrapWith(new CKEDITOR.htmlParser.element("div",r?{"class":r[1]}:{style:"text-align:center"})):h in{left:1,right:1}&&(r?y.addClass(r[u[h]]):s.float=h),r||CKEDITOR.tools.isEmpty(s)||(p.style=CKEDITOR.tools.writeCssText(s))),this.inline){if(f(i)?o=i.getFirst("img")||i.getFirst("a").getFirst("img"):t(i)&&(o=i.name=="a"?i.children[0]:i),s=o.attributes.style,a=this.wrapper,s){function c(n){return n.replace(/(?:^[ ;]+)|(?:[ ;]+$)/g,"")}a.getStyle("float")&&(s=c(s.replace(new RegExp("(?:;+|^)\\s*float\\s*:\\s*(?:\\w+)(?:;+|$)"),";")));a.getStyle("width")&&(s=c(s.replace(new RegExp("(?:;+|^)\\s*width\\s*:\\s*(?:[a-z0-9_\\-\\(\\)% ]+)(?:;+|$)"),";")));a.getStyle("max-width")&&(s=c(s.replace(new RegExp("(?:;+|^)\\s*max-width\\s*:\\s*(?:\\w+%?)(?:;+|$)"),";")));o.attributes["data-image-float"]&&(s=c(s+";float: "+o.attributes["data-image-float"]),delete o.attributes["data-image-float"]);o.attributes["data-image-width"]&&(s=c(s+";width: "+o.attributes["data-image-width"]),delete o.attributes["data-image-width"]);o.attributes["data-image-maxwidth"]&&(s=c(s+";max-width: "+o.attributes["data-image-maxwidth"]),delete o.attributes["data-image-maxwidth"]);s?o.attributes.style=s:delete o.attributes.style}delete o.attributes["data-image-widget-flowlayout"]}return n.elementMode==CKEDITOR.ELEMENT_MODE_INLINE&&n.config.sefEnabled&&(o||(f(i)?o=i.getFirst("img")||i.getFirst("a").getFirst("img"):i.name=="figure"&&i.hasClass(e)?o=i.getFirst("img")||i.getFirst("a").getFirst("img"):t(i)&&(o=i.name=="a"?i.children[0]:i)),o&&(v=o.attributes.src,v=v.replace(n.config.base,""),o.attributes.src=v)),i}}function i(n){var r=n.config.image2_captionedClass,i=n.config.image2_alignClasses,u={figure:1,a:1,img:1};return function(f){var o,e;if(!(f.name in{div:1,p:1})||(o=f.children,o.length!==1)||(e=o[0],!(e.name in u)))return!1;if(f.name=="p"){if(!t(e))return!1}else if(e.name=="figure"){if(!e.hasClass(r))return!1}else if(n.enterMode==CKEDITOR.ENTER_P||!t(e))return!1;return(i?f.hasClass(i[1]):CKEDITOR.tools.parseCssText(f.attributes.style||"",!0)["text-align"]=="center")?!0:!1}}function t(n){return n.name=="img"?!0:n.name=="a"?n.children.length==1&&n.getFirst("img"):!1}function a(n){var r=n.data,i={width:r.width,height:r.height},u=n.parts.image;for(var t in i)i[t]?u.setAttribute(t,i[t]):u.removeAttribute(t)}function v(n){var i=n.editor,f=i.editable(),r=i.document,t=n.resizer=r.createElement("span");if(t.addClass("cke_image_resizer"),t.setAttribute("title",i.lang.image2.resizer),t.append(new CKEDITOR.dom.text("​",r)),n.inline)n.wrapper.append(t);else{var e=n.parts.link||n.parts.image,o=e.getParent(),u=r.createElement("span");u.addClass("cke_image_resizer_wrapper");u.append(e);u.append(t);n.element.append(u,!0);o.is("span")&&o.remove()}t.on("mousedown",function(u){function tt(n,t,i){var f=CKEDITOR.document,u=[],e;if(r.equals(f)||u.push(f.on(n,t)),u.push(r.on(n,t)),i)for(e=u.length;e--;)i.push(u.pop())}function c(){s=d+w*a;h=Math.round(s/o)}function l(){h=g-e;s=Math.round(h*o)}function ut(n){k=n.data.$;a=k.screenX-it;e=rt-k.screenY;v=Math.abs(a/e);w==1?a<=0?e<=0?c():v>=o?c():l():e<=0?v>=o?l():c():l():a<=0?e<=0?v>=o?l():c():l():e<=0?c():v>=o?c():l();s>=15&&h>=15?(p.setAttributes({width:s,height:h}),y=!0):y=!1}function ft(){for(var r;r=b.pop();)r.removeListener();f.removeClass(nt);t.removeClass("cke_image_resizing");y&&(n.setData({width:s,height:h}),i.fire("saveSnapshot"));y=!1}var p=n.parts.image,w=n.data.align=="right"?-1:1,it=u.data.$.screenX,rt=u.data.$.screenY,d=p.$.clientWidth,g=p.$.clientHeight,o=d/g,b=[],nt="cke_image_s"+(~w?"e":"w"),k,s,h,y,a,e,v;i.fire("saveSnapshot");tt("mousemove",ut,b);tt("mouseup",ft,b);f.addClass(nt);t.addClass("cke_image_resizing")});n.on("data",function(){t[n.data.align=="right"?"addClass":"removeClass"]("cke_image_resizer_left")})}function y(t){var i=[],r;return function(u){var f=t.getCommand("justify"+u);if(f){if(i.push(function(){f.refresh(t,t.elementPath())}),u in{right:1,left:1,center:1})f.on("exec",function(r){var e=n(t),f;if(e){for(e.setData("align",u),f=i.length;f--;)i[f]();r.cancel()}});f.on("refresh",function(i){var f=n(t);f&&(r===undefined&&(r=t.filter.checkFeature(t.widgets.registered.image.features.align)),r?this.setState(f.data.align==u?CKEDITOR.TRISTATE_ON:u in{right:1,left:1,center:1}?CKEDITOR.TRISTATE_OFF:CKEDITOR.TRISTATE_DISABLED):this.setState(CKEDITOR.TRISTATE_DISABLED),i.cancel())})}}}function p(t){if(t.plugins.link){CKEDITOR.on("dialogDefinition",function(i){var u=i.data;if(u.name=="link"){var r=u.definition,f=r.onShow,e=r.onOk;r.onShow=function(){var i=n(t),r=this.getContentElement("info","linkDisplayText").getElement().getParent().getParent();i&&(i.inline?!i.wrapper.getAscendant("a"):1)?(this.setupContent(i.data.link||{}),r.hide()):(r.show(),f.apply(this,arguments))};r.onOk=function(){var i=n(t),r;i&&(i.inline?!i.wrapper.getAscendant("a"):1)?(r={},this.commitContent(r),i.setData("link",r)):e.apply(this,arguments)}}});t.getCommand("unlink").on("exec",function(i){var r=n(t);r&&r.parts.link&&(r.setData("link",null),this.refresh(t,t.elementPath()),i.cancel())});t.getCommand("unlink").on("refresh",function(i){var r=n(t);r&&(this.setState(r.data.link||r.wrapper.getAscendant("a")?CKEDITOR.TRISTATE_OFF:CKEDITOR.TRISTATE_DISABLED),i.cancel())})}}function n(n){var t=n.widgets.focused;return t&&t.name=="image"?t:null}function w(n){var r=n.config.image2_alignClasses,t={div:{match:i(n)},p:{match:i(n)},img:{attributes:"!src,alt,width,height"},figure:{classes:"!"+n.config.image2_captionedClass},figcaption:!0};return r?(t.div.classes=r[1],t.p.classes=t.div.classes,t.img.classes=r[0]+","+r[2],t.figure.classes+=","+t.img.classes):(t.div.styles="text-align",t.p.styles="text-align",t.img.styles="float",t.figure.styles="float,display"),t}function b(n){var t=n.config.image2_alignClasses;return{dimension:{requiredContent:"img[width,height]"},align:{requiredContent:"img"+(t?"("+t[0]+")":"{float}")},caption:{requiredContent:"figcaption"}}}function r(n){return n.data.hasCaption?n.element:n.parts.image}var f='<img alt="" src="" />',e=new CKEDITOR.template('<figure class="{captionedClass}">'+f+"<figcaption>{captionPlaceholder}<\/figcaption><\/figure>"),u={left:0,center:1,right:2},o=/^\s*(\d+\%)\s*$/i;CKEDITOR.plugins.add("image2",{lang:"en,de,es,fi,fr,he,hu,it,pt,nl,ru,zh-cn",requires:"widget,dialog",icons:"image",hidpi:!0,onLoad:function(){CKEDITOR.addCss(".cke_image_nocaption{line-height:0}.cke_editable.cke_image_sw, .cke_editable.cke_image_sw *{cursor:sw-resize !important}.cke_editable.cke_image_se, .cke_editable.cke_image_se *{cursor:se-resize !important}.cke_image_resizer{display:none;position:absolute;width:10px;height:10px;bottom:-5px;right:-5px;background:#000;outline:1px solid #fff;line-height:0;cursor:se-resize;}.cke_image_resizer_wrapper{position:relative;display:inline-block;line-height:0;}.cke_image_resizer.cke_image_resizer_left{right:auto;left:-5px;cursor:sw-resize;}.cke_widget_wrapper:hover .cke_image_resizer,.cke_image_resizer.cke_image_resizing{display:block}.cke_widget_wrapper>a{display:inline-block}")},init:function(n){var t=n.config,i=n.lang.image2,r=s(n);t.filebrowserImage2BrowseUrl=t.filebrowserImageBrowseUrl;t.filebrowserImage2UploadUrl=t.filebrowserImageUploadUrl;r.pathName=i.pathName;r.editables.caption.pathName=i.pathNameCaption;n.widgets.add("image",r);n.ui.addButton&&n.ui.addButton("Image",{label:n.lang.common.image,command:"image",toolbar:"insert,10"});n.contextMenu&&(n.addMenuGroup("image",10),n.addMenuItem("image",{label:i.menu,command:"image",group:"image"}));CKEDITOR.dialog.add("image2",this.path+"dialogs/image2.js")},afterInit:function(n){var t=y(n);for(var i in{left:1,right:1,center:1,block:1})t(i);p(n);n.widgets.on("instanceCreated",function(n){var t=n.data;if(t.name=="image"&&t.inline)t.once("ready",function(){var t=this.wrapper,n=this.parts.image;n.data("image-widget-flowlayout")&&(n.data("image-float")?(n.setStyle("float",n.data("image-float")),n.data("image-float",!1)):n.removeStyle("float"),n.data("image-width")?(n.setStyle("width",n.data("image-width")),n.data("image-width",!1)):n.removeStyle("width"),n.data("image-maxwidth")?(n.setStyle("max-width",n.data("image-maxwidth")),n.data("image-maxwidth",!1)):n.removeStyle("max-width"));var r=n.getStyle("display"),u=n.getStyle("width"),f=n.getStyle("float"),e=n.getStyle("max-width");n.setStyle("display","none");var o=n.getComputedStyle("float"),s=n.getComputedStyle("width"),i=n.getComputedStyle("max-width");if(n.removeStyle("display"),r&&n.setStyle("display",r),n.data("image-widget-flowlayout","1"),o!="none"&&(n.setStyle("float","none"),f&&n.data("image-float",f),t.setStyle("float",o)),s.match(/%$/)){var c=n.getComputedStyle("margin-left")||0,l=n.getComputedStyle("margin-right")||0,h=parseInt(l,10)+parseInt(c,10);h?n.setStyle("width","calc(100% - "+h+"px)"):n.setStyle("width","100%");u&&n.data("image-width",u);e&&n.data("image-maxwidth",e);i&&i!="none"&&(n.setStyle("max-width","100%"),t.setStyle("max-width",i));t.setStyle("width",s)}})})}});CKEDITOR.plugins.image2={stateShifter:function(n){function u(n,t){var e={},u;return r?e.attributes={"class":r[1]}:e.styles={"text-align":"center"},u=i.createElement(n.activeEnterMode==CKEDITOR.ENTER_P?"p":"div",e),f(u,t),t.move(u),u}function c(n){var t=n.findOne("a,img");return t.replace(n),t}function l(n,t){var r=i.createElement("a",{attributes:{href:t.url}});return r.replace(n),n.move(r),r}function a(n){var t=n.findOne("img");return t.replace(n),t}function f(t,i){if(i.getParent()){var r=n.createRange();r.moveToPosition(i,CKEDITOR.POSITION_BEFORE_START);i.remove();s.insertElementIntoRange(t,r)}else t.replace(i)}var i=n.document,r=n.config.image2_alignClasses,o=n.config.image2_captionedClass,s=n.editable(),t=["hasCaption","align","link"],h={align:function(t,i,f){var e=t.element;t.changed.align?t.newData.hasCaption||(f=="center"&&(t.deflate(),t.element=u(n,e)),t.changed.hasCaption||i!="center"||f=="center"||(t.deflate(),t.element=c(e))):f=="center"&&t.changed.hasCaption&&!t.newData.hasCaption&&(t.deflate(),t.element=u(n,e));!r&&e.is("figure")&&(f=="center"?e.setStyle("display","inline-block"):e.removeStyle("display"))},hasCaption:function(t,r,u){var s,h;t.changed.hasCaption&&(s=t.element.is({img:1,a:1})?t.element:t.element.findOne("a,img"),t.deflate(),u?(h=CKEDITOR.dom.element.createFromHtml(e.output({captionedClass:o,captionPlaceholder:n.lang.image2.captionPlaceholder}),i),f(h,t.element),s.replace(h.findOne("img")),t.element=h):(s.replace(t.element),t.element=s))},link:function(t,i,r){var f;if(t.changed.link){var s=t.element.is("img")?t.element:t.element.findOne("img"),e=t.element.is("a")?t.element:t.element.findOne("a"),o=t.element.is("a")&&!r||t.element.is("img")&&r,u;o&&t.deflate();r?(i||(u=l(s,t.newData.link)),f=CKEDITOR.plugins.image2.getLinkAttributesGetter()(n,r),CKEDITOR.tools.isEmpty(f.set)||(u||e).setAttributes(f.set),f.removed.length&&(u||e).removeAttributes(f.removed)):u=a(e);o&&(t.element=u)}}};return function(n){var i,r;for(n.changed={},r=0;r<t.length;r++)i=t[r],n.changed[i]=n.oldData?n.oldData[i]!==n.newData[i]:!1;for(r=0;r<t.length;r++)i=t[r],h[i](n,n.oldData?n.oldData[i]:null,n.newData[i]);n.inflate()}},checkHasNaturalRatio:function(n){var t=n.$,i=this.getNatural(n);return Math.round(t.clientWidth/i.width*i.height)==t.clientHeight||Math.round(t.clientHeight/i.height*i.width)==t.clientWidth},getNatural:function(n){var i,t;return n.$.naturalWidth?i={width:n.$.naturalWidth,height:n.$.naturalHeight}:(t=new Image,t.src=n.getAttribute("src"),i={width:t.width,height:t.height}),i},getLinkAttributesGetter:function(){return CKEDITOR.plugins.link.getLinkAttributes},getLinkAttributesParser:function(){return CKEDITOR.plugins.link.parseLinkAttributes}}})();CKEDITOR.config.image2_captionedClass="image"