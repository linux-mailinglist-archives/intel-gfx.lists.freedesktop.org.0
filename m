Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FD10BDE38
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Sep 2019 14:43:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EEE746EBA5;
	Wed, 25 Sep 2019 12:43:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 98A226EBA5
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Sep 2019 12:43:49 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Sep 2019 05:43:49 -0700
X-IronPort-AV: E=Sophos;i="5.64,548,1559545200"; d="scan'208";a="179803691"
Received: from kgalazka-mobl.ger.corp.intel.com (HELO [10.252.3.235])
 ([10.252.3.235])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 25 Sep 2019 05:43:48 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190925100137.17956-1-chris@chris-wilson.co.uk>
 <20190925100137.17956-23-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <72f190c5-182f-9f35-c00b-f5b28b743015@linux.intel.com>
Date: Wed, 25 Sep 2019 13:43:46 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190925100137.17956-23-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 22/27] drm/i915/overlay: Drop struct_mutex
 guard
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.23
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDI1LzA5LzIwMTkgMTE6MDEsIENocmlzIFdpbHNvbiB3cm90ZToKPiBUaGUgb3ZlcmxheSB1
c2VzIHRoZSBtb2Rlc2V0IG11dGV4IHRvIGNvbnRyb2wgaXRzZWxmIGFuZCBvbmx5IHJlcXVpcmVk
Cj4gdGhlIHN0cnVjdF9tdXRleCBmb3IgcmVxdWVzdHMsIHdoaWNoIGlzIG5vdyBvYnNvbGV0ZS4K
PiAKPiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51
az4KPiAtLS0KPiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5j
IHwgIDcgKy0tLS0tLQo+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9vdmVy
bGF5LmMgfCAxMyAtLS0tLS0tLS0tLS0tCj4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRl
bF9yZXNldC5jICAgICAgICB8ICA0IC0tLS0KPiAgIDMgZmlsZXMgY2hhbmdlZCwgMSBpbnNlcnRp
b24oKyksIDIzIGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZGlzcGxheS5jCj4gaW5kZXggOTlkZGJiN2JlZGJjLi4wMzhmMTRkOWI1YzkgMTAw
NjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMK
PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwo+IEBA
IC01NzM4LDEzICs1NzM4LDggQEAgdm9pZCBoc3dfZGlzYWJsZV9pcHMoY29uc3Qgc3RydWN0IGlu
dGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpCj4gICAKPiAgIHN0YXRpYyB2b2lkIGludGVsX2Ny
dGNfZHBtc19vdmVybGF5X2Rpc2FibGUoc3RydWN0IGludGVsX2NydGMgKmludGVsX2NydGMpCj4g
ICB7Cj4gLQlpZiAoaW50ZWxfY3J0Yy0+b3ZlcmxheSkgewo+IC0JCXN0cnVjdCBkcm1fZGV2aWNl
ICpkZXYgPSBpbnRlbF9jcnRjLT5iYXNlLmRldjsKPiAtCj4gLQkJbXV0ZXhfbG9jaygmZGV2LT5z
dHJ1Y3RfbXV0ZXgpOwo+ICsJaWYgKGludGVsX2NydGMtPm92ZXJsYXkpCj4gICAJCSh2b2lkKSBp
bnRlbF9vdmVybGF5X3N3aXRjaF9vZmYoaW50ZWxfY3J0Yy0+b3ZlcmxheSk7Cj4gLQkJbXV0ZXhf
dW5sb2NrKCZkZXYtPnN0cnVjdF9tdXRleCk7Cj4gLQl9Cj4gICAKPiAgIAkvKiBMZXQgdXNlcnNw
YWNlIHN3aXRjaCB0aGUgb3ZlcmxheSBvbiBhZ2Fpbi4gSW4gbW9zdCBjYXNlcyB1c2Vyc3BhY2UK
PiAgIAkgKiBoYXMgdG8gcmVjb21wdXRlIHdoZXJlIHRvIHB1dCBpdCBhbnl3YXkuCj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfb3ZlcmxheS5jIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9vdmVybGF5LmMKPiBpbmRleCBlMTJlMWE3
NTNhZjAuLmRhZWExMTJjYmI4NyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX292ZXJsYXkuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfb3ZlcmxheS5jCj4gQEAgLTQzOSw4ICs0MzksNiBAQCBzdGF0aWMgaW50IGludGVs
X292ZXJsYXlfcmVsZWFzZV9vbGRfdmlkKHN0cnVjdCBpbnRlbF9vdmVybGF5ICpvdmVybGF5KQo+
ICAgCXN0cnVjdCBpOTE1X3JlcXVlc3QgKnJxOwo+ICAgCXUzMiAqY3M7Cj4gICAKPiAtCWxvY2tk
ZXBfYXNzZXJ0X2hlbGQoJmRldl9wcml2LT5kcm0uc3RydWN0X211dGV4KTsKPiAtCj4gICAJLyoK
PiAgIAkgKiBPbmx5IHdhaXQgaWYgdGhlcmUgaXMgYWN0dWFsbHkgYW4gb2xkIGZyYW1lIHRvIHJl
bGVhc2UgdG8KPiAgIAkgKiBndWFyYW50ZWUgZm9yd2FyZCBwcm9ncmVzcy4KPiBAQCAtNzUxLDcg
Kzc0OSw2IEBAIHN0YXRpYyBpbnQgaW50ZWxfb3ZlcmxheV9kb19wdXRfaW1hZ2Uoc3RydWN0IGlu
dGVsX292ZXJsYXkgKm92ZXJsYXksCj4gICAJc3RydWN0IGk5MTVfdm1hICp2bWE7Cj4gICAJaW50
IHJldCwgdG1wX3dpZHRoOwo+ICAgCj4gLQlsb2NrZGVwX2Fzc2VydF9oZWxkKCZkZXZfcHJpdi0+
ZHJtLnN0cnVjdF9tdXRleCk7Cj4gICAJV0FSTl9PTighZHJtX21vZGVzZXRfaXNfbG9ja2VkKCZk
ZXZfcHJpdi0+ZHJtLm1vZGVfY29uZmlnLmNvbm5lY3Rpb25fbXV0ZXgpKTsKPiAgIAo+ICAgCXJl
dCA9IGludGVsX292ZXJsYXlfcmVsZWFzZV9vbGRfdmlkKG92ZXJsYXkpOwo+IEBAIC04NTIsNyAr
ODQ5LDYgQEAgaW50IGludGVsX292ZXJsYXlfc3dpdGNoX29mZihzdHJ1Y3QgaW50ZWxfb3Zlcmxh
eSAqb3ZlcmxheSkKPiAgIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSBvdmVy
bGF5LT5pOTE1Owo+ICAgCWludCByZXQ7Cj4gICAKPiAtCWxvY2tkZXBfYXNzZXJ0X2hlbGQoJmRl
dl9wcml2LT5kcm0uc3RydWN0X211dGV4KTsKPiAgIAlXQVJOX09OKCFkcm1fbW9kZXNldF9pc19s
b2NrZWQoJmRldl9wcml2LT5kcm0ubW9kZV9jb25maWcuY29ubmVjdGlvbl9tdXRleCkpOwo+ICAg
Cj4gICAJcmV0ID0gaW50ZWxfb3ZlcmxheV9yZWNvdmVyX2Zyb21faW50ZXJydXB0KG92ZXJsYXkp
Owo+IEBAIC0xMDY4LDExICsxMDY0LDcgQEAgaW50IGludGVsX292ZXJsYXlfcHV0X2ltYWdlX2lv
Y3RsKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsIHZvaWQgKmRhdGEsCj4gICAKPiAgIAlpZiAoIShw
YXJhbXMtPmZsYWdzICYgSTkxNV9PVkVSTEFZX0VOQUJMRSkpIHsKPiAgIAkJZHJtX21vZGVzZXRf
bG9ja19hbGwoZGV2KTsKPiAtCQltdXRleF9sb2NrKCZkZXYtPnN0cnVjdF9tdXRleCk7Cj4gLQo+
ICAgCQlyZXQgPSBpbnRlbF9vdmVybGF5X3N3aXRjaF9vZmYob3ZlcmxheSk7Cj4gLQo+IC0JCW11
dGV4X3VubG9jaygmZGV2LT5zdHJ1Y3RfbXV0ZXgpOwo+ICAgCQlkcm1fbW9kZXNldF91bmxvY2tf
YWxsKGRldik7Cj4gICAKPiAgIAkJcmV0dXJuIHJldDsKPiBAQCAtMTA4OCw3ICsxMDgwLDYgQEAg
aW50IGludGVsX292ZXJsYXlfcHV0X2ltYWdlX2lvY3RsKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYs
IHZvaWQgKmRhdGEsCj4gICAJCXJldHVybiAtRU5PRU5UOwo+ICAgCj4gICAJZHJtX21vZGVzZXRf
bG9ja19hbGwoZGV2KTsKPiAtCW11dGV4X2xvY2soJmRldi0+c3RydWN0X211dGV4KTsKPiAgIAo+
ICAgCWlmIChpOTE1X2dlbV9vYmplY3RfaXNfdGlsZWQobmV3X2JvKSkgewo+ICAgCQlEUk1fREVC
VUdfS01TKCJidWZmZXIgdXNlZCBmb3Igb3ZlcmxheSBpbWFnZSBjYW4gbm90IGJlIHRpbGVkXG4i
KTsKPiBAQCAtMTE1MiwxNCArMTE0MywxMiBAQCBpbnQgaW50ZWxfb3ZlcmxheV9wdXRfaW1hZ2Vf
aW9jdGwoc3RydWN0IGRybV9kZXZpY2UgKmRldiwgdm9pZCAqZGF0YSwKPiAgIAlpZiAocmV0ICE9
IDApCj4gICAJCWdvdG8gb3V0X3VubG9jazsKPiAgIAo+IC0JbXV0ZXhfdW5sb2NrKCZkZXYtPnN0
cnVjdF9tdXRleCk7Cj4gICAJZHJtX21vZGVzZXRfdW5sb2NrX2FsbChkZXYpOwo+ICAgCWk5MTVf
Z2VtX29iamVjdF9wdXQobmV3X2JvKTsKPiAgIAo+ICAgCXJldHVybiAwOwo+ICAgCj4gICBvdXRf
dW5sb2NrOgo+IC0JbXV0ZXhfdW5sb2NrKCZkZXYtPnN0cnVjdF9tdXRleCk7Cj4gICAJZHJtX21v
ZGVzZXRfdW5sb2NrX2FsbChkZXYpOwo+ICAgCWk5MTVfZ2VtX29iamVjdF9wdXQobmV3X2JvKTsK
PiAgIAo+IEBAIC0xMjMzLDcgKzEyMjIsNiBAQCBpbnQgaW50ZWxfb3ZlcmxheV9hdHRyc19pb2N0
bChzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LCB2b2lkICpkYXRhLAo+ICAgCX0KPiAgIAo+ICAgCWRy
bV9tb2Rlc2V0X2xvY2tfYWxsKGRldik7Cj4gLQltdXRleF9sb2NrKCZkZXYtPnN0cnVjdF9tdXRl
eCk7Cj4gICAKPiAgIAlyZXQgPSAtRUlOVkFMOwo+ICAgCWlmICghKGF0dHJzLT5mbGFncyAmIEk5
MTVfT1ZFUkxBWV9VUERBVEVfQVRUUlMpKSB7Cj4gQEAgLTEyOTAsNyArMTI3OCw2IEBAIGludCBp
bnRlbF9vdmVybGF5X2F0dHJzX2lvY3RsKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsIHZvaWQgKmRh
dGEsCj4gICAKPiAgIAlyZXQgPSAwOwo+ICAgb3V0X3VubG9jazoKPiAtCW11dGV4X3VubG9jaygm
ZGV2LT5zdHJ1Y3RfbXV0ZXgpOwo+ICAgCWRybV9tb2Rlc2V0X3VubG9ja19hbGwoZGV2KTsKPiAg
IAo+ICAgCXJldHVybiByZXQ7Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L2ludGVsX3Jlc2V0LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9yZXNldC5jCj4g
aW5kZXggMjY4NWMwMTAzZTkwLi5lZTBjNWMyNDI4MmMgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmVzZXQuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L2ludGVsX3Jlc2V0LmMKPiBAQCAtMTI2NSwxMCArMTI2NSw2IEBAIGludCBpbnRlbF9ndF90
ZXJtaW5hbGx5X3dlZGdlZChzdHJ1Y3QgaW50ZWxfZ3QgKmd0KQo+ICAgCWlmICghdGVzdF9iaXQo
STkxNV9SRVNFVF9CQUNLT0ZGLCAmZ3QtPnJlc2V0LmZsYWdzKSkKPiAgIAkJcmV0dXJuIC1FSU87
Cj4gICAKPiAtCS8qIFhYWCBpbnRlbF9yZXNldF9maW5pc2goKSBzdGlsbCB0YWtlcyBzdHJ1Y3Rf
bXV0ZXghISEgKi8KPiAtCWlmIChtdXRleF9pc19sb2NrZWQoJmd0LT5pOTE1LT5kcm0uc3RydWN0
X211dGV4KSkKPiAtCQlyZXR1cm4gLUVBR0FJTjsKPiAtCgpXaGF0IGlzIHRoaXMgaHVuayBkb2lu
ZyBoZXJlPwoKUmVnYXJkcywKClR2cnRrbwoKPiAgIAlpZiAod2FpdF9ldmVudF9pbnRlcnJ1cHRp
YmxlKGd0LT5yZXNldC5xdWV1ZSwKPiAgIAkJCQkgICAgICF0ZXN0X2JpdChJOTE1X1JFU0VUX0JB
Q0tPRkYsCj4gICAJCQkJCSAgICAgICAmZ3QtPnJlc2V0LmZsYWdzKSkpCj4gCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
