Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A8ECD464DD
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2019 18:46:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE16889B70;
	Fri, 14 Jun 2019 16:46:48 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8241D89B70
 for <Intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2019 16:46:47 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Jun 2019 09:46:47 -0700
X-ExtLoop1: 1
Received: from yyosef-mobl.ger.corp.intel.com (HELO [10.252.23.42])
 ([10.252.23.42])
 by orsmga003.jf.intel.com with ESMTP; 14 Jun 2019 09:46:46 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, Intel-gfx@lists.freedesktop.org
References: <20190614151731.17608-1-tvrtko.ursulin@linux.intel.com>
 <20190614151731.17608-32-tvrtko.ursulin@linux.intel.com>
 <156053045575.7796.1803902285892333529@skylake-alporthouse-com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <f36f5303-5059-f680-dcf8-7c36fc53ee98@linux.intel.com>
Date: Fri, 14 Jun 2019 17:46:45 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <156053045575.7796.1803902285892333529@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [RFC 31/31] drm/i915: Eliminate dual personality of
 i915_scratch_offset
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

Ck9uIDE0LzA2LzIwMTkgMTc6NDAsIENocmlzIFdpbHNvbiB3cm90ZToKPiBRdW90aW5nIFR2cnRr
byBVcnN1bGluICgyMDE5LTA2LTE0IDE2OjE3OjMxKQo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9nZW0uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtLmMK
Pj4gaW5kZXggYWQxZGM1OGEyMzc0Li5jODBlMjZjMTQzN2QgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtLmMKPj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9nZW0uYwo+PiBAQCAtMTQyMyw5ICsxNDIzLDkgQEAgc3RhdGljIGludCBfX2ludGVsX2Vu
Z2luZXNfcmVjb3JkX2RlZmF1bHRzKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQo+PiAg
ICAgICAgICBnb3RvIG91dF9jdHg7Cj4+ICAgfQo+PiAgIAo+PiAtc3RhdGljIGludAo+PiAtaTkx
NV9nZW1faW5pdF9zY3JhdGNoKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LCB1bnNpZ25l
ZCBpbnQgc2l6ZSkKPj4gK3N0YXRpYyBpbnQgZ3RfaW5pdF9zY3JhdGNoKHN0cnVjdCBpbnRlbF9n
dCAqZ3QsIHVuc2lnbmVkIGludCBzaXplKQo+PiAgIHsKPj4gKyAgICAgICBzdHJ1Y3QgZHJtX2k5
MTVfcHJpdmF0ZSAqaTkxNSA9IGd0LT5pOTE1Owo+PiAgICAgICAgICBzdHJ1Y3QgZHJtX2k5MTVf
Z2VtX29iamVjdCAqb2JqOwo+PiAgICAgICAgICBzdHJ1Y3QgaTkxNV92bWEgKnZtYTsKPj4gICAg
ICAgICAgaW50IHJldDsKPj4gQEAgLTE0MzgsNyArMTQzOCw3IEBAIGk5MTVfZ2VtX2luaXRfc2Ny
YXRjaChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwgdW5zaWduZWQgaW50IHNpemUpCj4+
ICAgICAgICAgICAgICAgICAgcmV0dXJuIFBUUl9FUlIob2JqKTsKPj4gICAgICAgICAgfQo+PiAg
IAo+PiAtICAgICAgIHZtYSA9IGk5MTVfdm1hX2luc3RhbmNlKG9iaiwgJmk5MTUtPmdndHQudm0s
IE5VTEwpOwo+PiArICAgICAgIHZtYSA9IGk5MTVfdm1hX2luc3RhbmNlKG9iaiwgJmd0LT5nZ3R0
LT52bSwgTlVMTCk7Cj4+ICAgICAgICAgIGlmIChJU19FUlIodm1hKSkgewo+PiAgICAgICAgICAg
ICAgICAgIHJldCA9IFBUUl9FUlIodm1hKTsKPj4gICAgICAgICAgICAgICAgICBnb3RvIGVycl91
bnJlZjsKPj4gQEAgLTE0NDgsNyArMTQ0OCw3IEBAIGk5MTVfZ2VtX2luaXRfc2NyYXRjaChzdHJ1
Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwgdW5zaWduZWQgaW50IHNpemUpCj4+ICAgICAgICAg
IGlmIChyZXQpCj4+ICAgICAgICAgICAgICAgICAgZ290byBlcnJfdW5yZWY7Cj4+ICAgCj4+IC0g
ICAgICAgaTkxNS0+Z3Quc2NyYXRjaCA9IHZtYTsKPj4gKyAgICAgICBndC0+c2NyYXRjaCA9IHZt
YTsKPj4gICAgICAgICAgcmV0dXJuIDA7Cj4+ICAgCj4+ICAgZXJyX3VucmVmOgo+PiBAQCAtMTQ1
Niw5ICsxNDU2LDIwIEBAIGk5MTVfZ2VtX2luaXRfc2NyYXRjaChzdHJ1Y3QgZHJtX2k5MTVfcHJp
dmF0ZSAqaTkxNSwgdW5zaWduZWQgaW50IHNpemUpCj4+ICAgICAgICAgIHJldHVybiByZXQ7Cj4+
ICAgfQo+PiAgIAo+PiArc3RhdGljIGludAo+PiAraTkxNV9nZW1faW5pdF9zY3JhdGNoKHN0cnVj
dCBkcm1faTkxNV9wcml2YXRlICppOTE1LCB1bnNpZ25lZCBpbnQgc2l6ZSkKPj4gK3sKPj4gKyAg
ICAgICByZXR1cm4gZ3RfaW5pdF9zY3JhdGNoKCZpOTE1LT5ndCwgc2l6ZSk7Cj4+ICt9Cj4+ICsK
Pj4gK3N0YXRpYyB2b2lkIGd0X2Zpbmlfc2NyYXRjaChzdHJ1Y3QgaW50ZWxfZ3QgKmd0KQo+PiAr
ewo+PiArICAgICAgIGk5MTVfdm1hX3VucGluX2FuZF9yZWxlYXNlKCZndC0+c2NyYXRjaCwgMCk7
Cj4+ICt9Cj4+ICsKPj4gICBzdGF0aWMgdm9pZCBpOTE1X2dlbV9maW5pX3NjcmF0Y2goc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCj4+ICAgewo+PiAtICAgICAgIGk5MTVfdm1hX3VucGlu
X2FuZF9yZWxlYXNlKCZpOTE1LT5ndC5zY3JhdGNoLCAwKTsKPj4gKyAgICAgICBndF9maW5pX3Nj
cmF0Y2goJmk5MTUtPmd0KTsKPj4gICB9Cj4gCj4gQXBhcnQgZnJvbSB0aGlzIGlzIG5vdyBkZWNp
ZGVkbHkgcGFydCBvZiBpbnRlbF9ndC4KCldhcyBjb25zaWRlcmluZyB0byBtb3ZlIGl0LCBub3Qg
c3VyZSB3aGF0IHRpcHBlZCB0aGUgc2NhbGVzIGF0IHRoZSBlbmQsIApidXQgeWVzLCBjYW4gZG8u
CgpSZWdhcmRzLAoKVHZydGtvCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeA==
