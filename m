Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 50395169862
	for <lists+intel-gfx@lfdr.de>; Sun, 23 Feb 2020 16:23:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 39F0289487;
	Sun, 23 Feb 2020 15:23:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4161389487
 for <intel-gfx@lists.freedesktop.org>; Sun, 23 Feb 2020 15:23:52 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Feb 2020 07:23:51 -0800
X-IronPort-AV: E=Sophos;i="5.70,476,1574150400"; d="scan'208";a="230386651"
Received: from rcoelln-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.40.180])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Feb 2020 07:23:49 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
In-Reply-To: <20200219133756.13224-1-jani.nikula@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200219133756.13224-1-jani.nikula@intel.com>
Date: Sun, 23 Feb 2020 17:24:01 +0200
Message-ID: <87mu99tjhq.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [CI] drm/i915: split i915_driver_modeset_probe() to
 pre/post irq install
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCAxOSBGZWIgMjAyMCwgSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4g
d3JvdGU6Cj4gUGFpciB0aGUgaXJxIGluc3RhbGwgYW5kIHVuaW5zdGFsbCBpbiB0aGUgc2FtZSBs
YXllci4gVGhlcmUgYXJlIG5vCj4gZnVuY3Rpb25hbCBjaGFuZ2VzIGluIHRoZSBoYXBweSBkYXkg
c2NlbmFyaW8uIFRoZSBjbGVhbnVwIHBhdGhzIGFyZQo+IGN1cnJlbnRseSBhIG1lc3MgdGhvdWdo
Lgo+Cj4gTm90ZSB0aGF0IG1vZGVzZXQgcHJvYmUgcHJlLWlycSArIHBvc3QtaXJxIGluc3RhbGwg
YXJlIG1hdGNoZWQgYnkKPiBtb2Rlc2V0IGRyaXZlciByZW1vdmUgcHJlLWlycSArIHBvc3QtaXJx
IHVuaW5zdGFsbCwgdG9nZXRoZXIsIGJ1dCBub3QKPiBpbmRlcGVuZGVudGx5LiBUaGV5IGFyZSBu
b3Qgc3ltbWV0cmljIHBhaXJzLgo+Cj4gdjI6IGRvbid0IGFkZCBhIG5ldyBwcm9iZSBmYWlsdXJl
IHBvaW50IGhlcmUKPgo+IENjOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXgu
aW50ZWwuY29tPgo+IFJldmlld2VkLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFA
bGludXguaW50ZWwuY29tPgo+IFNpZ25lZC1vZmYtYnk6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3Vs
YUBpbnRlbC5jb20+CgpQdXNoZWQsIHRoYW5rcyBmb3IgdGhlIHJldmlldy4KCkJSLApKYW5pLgoK
PiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYyB8IDQwICsrKysrKysrKysr
KysrKysrKysrKystLS0tLS0tLS0tLQo+ICAxIGZpbGUgY2hhbmdlZCwgMjcgaW5zZXJ0aW9ucygr
KSwgMTMgZGVsZXRpb25zKC0pCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9kcnYuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMKPiBpbmRleCA3NTlk
MzMzNDQ4ZTEuLjdhYWQ2NTY0NDM1MSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X2Rydi5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYwo+IEBA
IC0yMTIsNyArMjEyLDggQEAgaW50ZWxfdGVhcmRvd25fbWNoYmFyKHN0cnVjdCBkcm1faTkxNV9w
cml2YXRlICpkZXZfcHJpdikKPiAgCQlyZWxlYXNlX3Jlc291cmNlKCZkZXZfcHJpdi0+bWNoX3Jl
cyk7Cj4gIH0KPiAgCj4gLXN0YXRpYyBpbnQgaTkxNV9kcml2ZXJfbW9kZXNldF9wcm9iZShzdHJ1
Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkKPiArLyogcGFydCAjMTogY2FsbCBiZWZvcmUgaXJx
IGluc3RhbGwgKi8KPiArc3RhdGljIGludCBpOTE1X2RyaXZlcl9tb2Rlc2V0X3Byb2JlX25vaXJx
KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQo+ICB7Cj4gIAlpbnQgcmV0Owo+ICAKPiBA
QCAtMjM2LDE1ICsyMzcsMjIgQEAgc3RhdGljIGludCBpOTE1X2RyaXZlcl9tb2Rlc2V0X3Byb2Jl
KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQo+ICAKPiAgCWludGVsX2Nzcl91Y29kZV9p
bml0KGk5MTUpOwo+ICAKPiAtCXJldCA9IGludGVsX2lycV9pbnN0YWxsKGk5MTUpOwo+IC0JaWYg
KHJldCkKPiAtCQlnb3RvIGNsZWFudXBfY3NyOwo+ICsJcmV0dXJuIDA7Cj4gKwo+ICtvdXQ6Cj4g
KwlyZXR1cm4gcmV0Owo+ICt9Cj4gKwo+ICsvKiBwYXJ0ICMyOiBjYWxsIGFmdGVyIGlycSBpbnN0
YWxsICovCj4gK3N0YXRpYyBpbnQgaTkxNV9kcml2ZXJfbW9kZXNldF9wcm9iZShzdHJ1Y3QgZHJt
X2k5MTVfcHJpdmF0ZSAqaTkxNSkKPiArewo+ICsJaW50IHJldDsKPiAgCj4gIAkvKiBJbXBvcnRh
bnQ6IFRoZSBvdXRwdXQgc2V0dXAgZnVuY3Rpb25zIGNhbGxlZCBieSBtb2Rlc2V0X2luaXQgbmVl
ZAo+ICAJICogd29ya2luZyBpcnFzIGZvciBlLmcuIGdtYnVzIGFuZCBkcCBhdXggdHJhbnNmZXJz
LiAqLwo+ICAJcmV0ID0gaW50ZWxfbW9kZXNldF9pbml0KGk5MTUpOwo+ICAJaWYgKHJldCkKPiAt
CQlnb3RvIGNsZWFudXBfaXJxOwo+ICsJCWdvdG8gb3V0Owo+ICAKPiAgCXJldCA9IGk5MTVfZ2Vt
X2luaXQoaTkxNSk7Cj4gIAlpZiAocmV0KQo+IEBAIC0yNzEsMTYgKzI3OSwxMCBAQCBzdGF0aWMg
aW50IGk5MTVfZHJpdmVyX21vZGVzZXRfcHJvYmUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5
MTUpCj4gIAlpOTE1X2dlbV9kcml2ZXJfcmVtb3ZlKGk5MTUpOwo+ICAJaTkxNV9nZW1fZHJpdmVy
X3JlbGVhc2UoaTkxNSk7Cj4gIGNsZWFudXBfbW9kZXNldDoKPiArCS8qIEZJWE1FICovCj4gIAlp
bnRlbF9tb2Rlc2V0X2RyaXZlcl9yZW1vdmUoaTkxNSk7Cj4gIAlpbnRlbF9pcnFfdW5pbnN0YWxs
KGk5MTUpOwo+ICAJaW50ZWxfbW9kZXNldF9kcml2ZXJfcmVtb3ZlX25vaXJxKGk5MTUpOwo+IC0J
Z290byBjbGVhbnVwX2NzcjsKPiAtY2xlYW51cF9pcnE6Cj4gLQlpbnRlbF9pcnFfdW5pbnN0YWxs
KGk5MTUpOwo+IC1jbGVhbnVwX2NzcjoKPiAtCWludGVsX2Nzcl91Y29kZV9maW5pKGk5MTUpOwo+
IC0JaW50ZWxfcG93ZXJfZG9tYWluc19kcml2ZXJfcmVtb3ZlKGk5MTUpOwo+IC0JaW50ZWxfdmdh
X3VucmVnaXN0ZXIoaTkxNSk7Cj4gIG91dDoKPiAgCXJldHVybiByZXQ7Cj4gIH0KPiBAQCAtMTQ1
OSwxMCArMTQ2MSwxOCBAQCBpbnQgaTkxNV9kcml2ZXJfcHJvYmUoc3RydWN0IHBjaV9kZXYgKnBk
ZXYsIGNvbnN0IHN0cnVjdCBwY2lfZGV2aWNlX2lkICplbnQpCj4gIAlpZiAocmV0IDwgMCkKPiAg
CQlnb3RvIG91dF9jbGVhbnVwX21taW87Cj4gIAo+IC0JcmV0ID0gaTkxNV9kcml2ZXJfbW9kZXNl
dF9wcm9iZShpOTE1KTsKPiArCXJldCA9IGk5MTVfZHJpdmVyX21vZGVzZXRfcHJvYmVfbm9pcnEo
aTkxNSk7Cj4gIAlpZiAocmV0IDwgMCkKPiAgCQlnb3RvIG91dF9jbGVhbnVwX2h3Owo+ICAKPiAr
CXJldCA9IGludGVsX2lycV9pbnN0YWxsKGk5MTUpOwo+ICsJaWYgKHJldCkKPiArCQlnb3RvIG91
dF9jbGVhbnVwX21vZGVzZXQ7Cj4gKwo+ICsJcmV0ID0gaTkxNV9kcml2ZXJfbW9kZXNldF9wcm9i
ZShpOTE1KTsKPiArCWlmIChyZXQgPCAwKQo+ICsJCWdvdG8gb3V0X2NsZWFudXBfaXJxOwo+ICsK
PiAgCWk5MTVfZHJpdmVyX3JlZ2lzdGVyKGk5MTUpOwo+ICAKPiAgCWVuYWJsZV9ycG1fd2FrZXJl
Zl9hc3NlcnRzKCZpOTE1LT5ydW50aW1lX3BtKTsKPiBAQCAtMTQ3MSw2ICsxNDgxLDEwIEBAIGlu
dCBpOTE1X2RyaXZlcl9wcm9iZShzdHJ1Y3QgcGNpX2RldiAqcGRldiwgY29uc3Qgc3RydWN0IHBj
aV9kZXZpY2VfaWQgKmVudCkKPiAgCj4gIAlyZXR1cm4gMDsKPiAgCj4gK291dF9jbGVhbnVwX2ly
cToKPiArCWludGVsX2lycV91bmluc3RhbGwoaTkxNSk7Cj4gK291dF9jbGVhbnVwX21vZGVzZXQ6
Cj4gKwkvKiBGSVhNRSAqLwo+ICBvdXRfY2xlYW51cF9odzoKPiAgCWk5MTVfZHJpdmVyX2h3X3Jl
bW92ZShpOTE1KTsKPiAgCWludGVsX21lbW9yeV9yZWdpb25zX2RyaXZlcl9yZWxlYXNlKGk5MTUp
OwoKLS0gCkphbmkgTmlrdWxhLCBJbnRlbCBPcGVuIFNvdXJjZSBHcmFwaGljcyBDZW50ZXIKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
