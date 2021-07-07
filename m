Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A8D1B3BE019
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Jul 2021 02:11:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 86A1C6E5D1;
	Wed,  7 Jul 2021 00:11:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2F2366E5D1;
 Wed,  7 Jul 2021 00:11:32 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10037"; a="273061075"
X-IronPort-AV: E=Sophos;i="5.83,330,1616482800"; d="scan'208";a="273061075"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2021 17:11:06 -0700
X-IronPort-AV: E=Sophos;i="5.83,330,1616482800"; d="scan'208";a="491506831"
Received: from ramaling-i9x.iind.intel.com (HELO intel.com) ([10.99.66.205])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2021 17:11:04 -0700
Date: Wed, 7 Jul 2021 05:42:43 +0530
From: Ramalingam C <ramalingam.c@intel.com>
To: Matthew Auld <matthew.auld@intel.com>
Message-ID: <20210707001229.GA26185@intel.com>
References: <20210705135310.1502437-1-matthew.auld@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210705135310.1502437-1-matthew.auld@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v3 1/5] drm/i915: use consistent CPU
 mappings for pin_map users
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
Cc: Thomas =?utf-8?Q?Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 Daniel Vetter <daniel.vetter@ffwll.ch>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gMjAyMS0wNy0wNSBhdCAxNDo1MzowNiArMDEwMCwgTWF0dGhldyBBdWxkIHdyb3RlOgo+IEZv
ciBkaXNjcmV0ZSwgdXNlcnMgb2YgcGluX21hcCgpIG5lZWRzIHRvIG9iZXkgdGhlIHNhbWUgcnVs
ZXMgYXQgdGhlIFRUTQo+IGJhY2tlbmQsIHdoZXJlIHdlIG1hcCBzeXN0ZW0gb25seSBvYmplY3Rz
IGFzIFdCLCBhbmQgZXZlcnl0aGluZyBlbHNlIGFzCj4gV0MuIFRoZSBzaW1wbGVzdCBmb3Igbm93
IGlzIHRvIGp1c3QgZm9yY2UgdGhlIGNvcnJlY3QgbWFwcGluZyB0eXBlIGFzCj4gcGVyIHRoZSBu
ZXcgcnVsZXMgZm9yIGRpc2NyZXRlLgo+IAo+IFN1Z2dlc3RlZC1ieTogVGhvbWFzIEhlbGxzdHLD
tm0gPHRob21hcy5oZWxsc3Ryb21AbGludXguaW50ZWwuY29tPgo+IFNpZ25lZC1vZmYtYnk6IE1h
dHRoZXcgQXVsZCA8bWF0dGhldy5hdWxkQGludGVsLmNvbT4KPiBDYzogVGhvbWFzIEhlbGxzdHLD
tm0gPHRob21hcy5oZWxsc3Ryb21AbGludXguaW50ZWwuY29tPgo+IENjOiBNYWFydGVuIExhbmto
b3JzdCA8bWFhcnRlbi5sYW5raG9yc3RAbGludXguaW50ZWwuY29tPgo+IENjOiBEYW5pZWwgVmV0
dGVyIDxkYW5pZWwudmV0dGVyQGZmd2xsLmNoPgo+IENjOiBSYW1hbGluZ2FtIEMgPHJhbWFsaW5n
YW0uY0BpbnRlbC5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dl
bV9vYmplY3QuYyB8IDM0ICsrKysrKysrKysrKysrKysrKysrKysKPiAgZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdC5oIHwgIDQgKysrCj4gIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2dlbS9pOTE1X2dlbV9wYWdlcy5jICB8IDIyICsrKysrKysrKysrKy0tCj4gIDMgZmlsZXMg
Y2hhbmdlZCwgNTggaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdC5jIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdC5jCj4gaW5kZXggNTQ3Y2M5ZGFkOTBkLi45
ZGE3YjI4OGI3ZWQgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVf
Z2VtX29iamVjdC5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29i
amVjdC5jCj4gQEAgLTYyNSw2ICs2MjUsNDAgQEAgaW50IGk5MTVfZ2VtX29iamVjdF9taWdyYXRl
KHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmosCj4gIAlyZXR1cm4gb2JqLT5vcHMtPm1p
Z3JhdGUob2JqLCBtcik7Cj4gIH0KPiAgCj4gKy8qKgo+ICsgKiBpOTE1X2dlbV9vYmplY3RfcGxh
Y2VtZW50X3Bvc3NpYmxlIC0gQ2hlY2sgd2hldGhlciB0aGUgb2JqZWN0IGNhbiBiZQo+ICsgKiBw
bGFjZWQgYXQgY2VydGFpbiBtZW1vcnkgdHlwZQo+ICsgKiBAb2JqOiBQb2ludGVyIHRvIHRoZSBv
YmplY3QKPiArICogQHR5cGU6IFRoZSBtZW1vcnkgdHlwZSB0byBjaGVjawo+ICsgKgo+ICsgKiBS
ZXR1cm46IFRydWUgaWYgdGhlIG9iamVjdCBjYW4gYmUgcGxhY2VkIGluIEB0eXBlLiBGYWxzZSBv
dGhlcndpc2UuCj4gKyAqLwo+ICtib29sIGk5MTVfZ2VtX29iamVjdF9wbGFjZW1lbnRfcG9zc2li
bGUoc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaiwKPiArCQkJCQllbnVtIGludGVsX21l
bW9yeV90eXBlIHR5cGUpCj4gK3sKPiArCXVuc2lnbmVkIGludCBpOwo+ICsKPiArCWlmICghb2Jq
LT5tbS5uX3BsYWNlbWVudHMpIHsKPiArCQlzd2l0Y2ggKHR5cGUpIHsKPiArCQljYXNlIElOVEVM
X01FTU9SWV9MT0NBTDoKPiArCQkJcmV0dXJuIGk5MTVfZ2VtX29iamVjdF9oYXNfaW9tZW0ob2Jq
KTsKPiArCQljYXNlIElOVEVMX01FTU9SWV9TWVNURU06Cj4gKwkJCXJldHVybiBpOTE1X2dlbV9v
YmplY3RfaGFzX3BhZ2VzKG9iaik7Cj4gKwkJZGVmYXVsdDoKPiArCQkJLyogSWdub3JlIHN0b2xl
biBmb3Igbm93ICovCj4gKwkJCUdFTV9CVUdfT04oMSk7Cj4gKwkJCXJldHVybiBmYWxzZTsKPiAr
CQl9Cj4gKwl9Cj4gKwo+ICsJZm9yIChpID0gMDsgaSA8IG9iai0+bW0ubl9wbGFjZW1lbnRzOyBp
KyspIHsKPiArCQlpZiAob2JqLT5tbS5wbGFjZW1lbnRzW2ldLT50eXBlID09IHR5cGUpCj4gKwkJ
CXJldHVybiB0cnVlOwo+ICsJfQo+ICsKPiArCXJldHVybiBmYWxzZTsKPiArfQo+ICsKPiAgdm9p
ZCBpOTE1X2dlbV9pbml0X19vYmplY3RzKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQo+
ICB7Cj4gIAlJTklUX1dPUksoJmk5MTUtPm1tLmZyZWVfd29yaywgX19pOTE1X2dlbV9mcmVlX3dv
cmspOwo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2Jq
ZWN0LmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0LmgKPiBpbmRl
eCBkNDIzZDhjYWM0ZjIuLjhiZTRmYWRlZWU0OCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0LmgKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9nZW0vaTkxNV9nZW1fb2JqZWN0LmgKPiBAQCAtMTIsNiArMTIsNyBAQAo+ICAjaW5jbHVkZSA8
ZHJtL2RybV9kZXZpY2UuaD4KPiAgCj4gICNpbmNsdWRlICJkaXNwbGF5L2ludGVsX2Zyb250YnVm
ZmVyLmgiCj4gKyNpbmNsdWRlICJpbnRlbF9tZW1vcnlfcmVnaW9uLmgiCj4gICNpbmNsdWRlICJp
OTE1X2dlbV9vYmplY3RfdHlwZXMuaCIKPiAgI2luY2x1ZGUgImk5MTVfZ2VtX2d0dC5oIgo+ICAj
aW5jbHVkZSAiaTkxNV9nZW1fd3cuaCIKPiBAQCAtNjA3LDYgKzYwOCw5IEBAIGJvb2wgaTkxNV9n
ZW1fb2JqZWN0X2Nhbl9taWdyYXRlKHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmosCj4g
IGludCBpOTE1X2dlbV9vYmplY3Rfd2FpdF9taWdyYXRpb24oc3RydWN0IGRybV9pOTE1X2dlbV9v
YmplY3QgKm9iaiwKPiAgCQkJCSAgIHVuc2lnbmVkIGludCBmbGFncyk7Cj4gIAo+ICtib29sIGk5
MTVfZ2VtX29iamVjdF9wbGFjZW1lbnRfcG9zc2libGUoc3RydWN0IGRybV9pOTE1X2dlbV9vYmpl
Y3QgKm9iaiwKPiArCQkJCQllbnVtIGludGVsX21lbW9yeV90eXBlIHR5cGUpOwo+ICsKPiAgI2lm
ZGVmIENPTkZJR19NTVVfTk9USUZJRVIKPiAgc3RhdGljIGlubGluZSBib29sCj4gIGk5MTVfZ2Vt
X29iamVjdF9pc191c2VycHRyKHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmopCj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9wYWdlcy5jIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3BhZ2VzLmMKPiBpbmRleCBmMmY4NTBlMzFi
OGUuLjgxMGExNTdhMThmOCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0v
aTkxNV9nZW1fcGFnZXMuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dl
bV9wYWdlcy5jCj4gQEAgLTMyMSw4ICszMjEsNyBAQCBzdGF0aWMgdm9pZCAqaTkxNV9nZW1fb2Jq
ZWN0X21hcF9wZm4oc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaiwKPiAgCWRtYV9hZGRy
X3QgYWRkcjsKPiAgCXZvaWQgKnZhZGRyOwo+ICAKPiAtCWlmICh0eXBlICE9IEk5MTVfTUFQX1dD
KQo+IC0JCXJldHVybiBFUlJfUFRSKC1FTk9ERVYpOwo+ICsJR0VNX0JVR19PTih0eXBlICE9IEk5
MTVfTUFQX1dDKTsKPiAgCj4gIAlpZiAobl9wZm4gPiBBUlJBWV9TSVpFKHN0YWNrKSkgewo+ICAJ
CS8qIFRvbyBiaWcgZm9yIHN0YWNrIC0tIGFsbG9jYXRlIHRlbXBvcmFyeSBhcnJheSBpbnN0ZWFk
ICovCj4gQEAgLTM3NCw2ICszNzMsMjUgQEAgdm9pZCAqaTkxNV9nZW1fb2JqZWN0X3Bpbl9tYXAo
c3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaiwKPiAgCX0KPiAgCUdFTV9CVUdfT04oIWk5
MTVfZ2VtX29iamVjdF9oYXNfcGFnZXMob2JqKSk7Cj4gIAo+ICsJLyoKPiArCSAqIEZvciBkaXNj
cmV0ZSBvdXIgQ1BVIG1hcHBpbmdzIG5lZWRzIHRvIGJlIGNvbnNpc3RlbnQgaW4gb3JkZXIgdG8K
PiArCSAqIGZ1bmN0aW9uIGNvcnJlY3RseSBvbiAheDg2LiBXaGVuIG1hcHBpbmcgdGhpbmdzIHRo
cm91Z2ggVFRNLCB3ZSB1c2UKPiArCSAqIHRoZSBzYW1lIHJ1bGVzIHRvIGRldGVybWluZSB0aGUg
Y2FjaGluZyB0eXBlLgo+ICsJICoKPiArCSAqIEludGVybmFsIHVzZXJzIG9mIGxtZW0gYXJlIGFs
cmVhZHkgZXhwZWN0ZWQgdG8gZ2V0IHRoaXMgcmlnaHQsIHNvIG5vCj4gKwkgKiBmdWRnaW5nIG5l
ZWRlZCB0aGVyZS4KPiArCSAqLwo+ICsJaWYgKGk5MTVfZ2VtX29iamVjdF9wbGFjZW1lbnRfcG9z
c2libGUob2JqLCBJTlRFTF9NRU1PUllfTE9DQUwpKSB7Cj4gKwkJaWYgKHR5cGUgIT0gSTkxNV9N
QVBfV0MgJiYgIW9iai0+bW0ubl9wbGFjZW1lbnRzKSB7Cj4gKwkJCXB0ciA9IEVSUl9QVFIoLUVO
T0RFVik7Cj4gKwkJCWdvdG8gZXJyX3VucGluOwo+ICsJCX0KPiArCj4gKwkJdHlwZSA9IEk5MTVf
TUFQX1dDOwo+ICsJfSBlbHNlIGlmIChJU19ER0ZYKHRvX2k5MTUob2JqLT5iYXNlLmRldikpKSB7
Cj4gKwkJdHlwZSA9IEk5MTVfTUFQX1dCOwo+ICsJfQpMb29rcyBnb29kIHRvIG1lLgoKUmV2aWV3
ZWQtYnk6IFJhbWFsaW5nYW0gQyA8cmFtYWxpbmdhbS5jQGludGVsLmNvbT4KPiArCj4gIAlwdHIg
PSBwYWdlX3VucGFja19iaXRzKG9iai0+bW0ubWFwcGluZywgJmhhc190eXBlKTsKPiAgCWlmIChw
dHIgJiYgaGFzX3R5cGUgIT0gdHlwZSkgewo+ICAJCWlmIChwaW5uZWQpIHsKPiAtLSAKPiAyLjI2
LjMKPiAKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
