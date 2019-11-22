Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A875D107671
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Nov 2019 18:30:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 53F996E438;
	Fri, 22 Nov 2019 17:30:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1F9826E438
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 Nov 2019 17:30:08 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Nov 2019 09:30:07 -0800
X-IronPort-AV: E=Sophos;i="5.69,230,1571727600"; d="scan'208";a="201595947"
Received: from aburk3x-mobl1.ger.corp.intel.com (HELO [10.252.19.231])
 ([10.252.19.231])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 22 Nov 2019 09:30:06 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20191122112152.660743-2-chris@chris-wilson.co.uk>
 <20191122132404.690440-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <a0beae96-ffb6-2919-b0f8-fe301d2ac5f0@linux.intel.com>
Date: Fri, 22 Nov 2019 17:30:04 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191122132404.690440-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/selftests: Flush the active
 callbacks
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

Ck9uIDIyLzExLzIwMTkgMTM6MjQsIENocmlzIFdpbHNvbiB3cm90ZToKPiBCZWZvcmUgY2hlY2tp
bmcgdGhlIGN1cnJlbnQgaTkxNV9hY3RpdmUgc3RhdGUgZm9yIHRoZSBhc3luY2hyb25vdXMgd29y
awo+IHdlIHN1Ym1pdHRlZCwgZmx1c2ggYW55IG9uZ29pbmcgY2FsbGJhY2suIFRoaXMgZW5zdXJl
cyB0aGF0IG91ciBzYW1wbGluZwo+IGlzIHJvYnVzdCBhbmQgZG9lcyBub3Qgc3BvcmFkaWNhbGx5
IGZhaWwgZHVlIHRvIGJhZCB0aW1pbmcgYXMgdGhlIHdvcmsKPiBpcyBydW5uaW5nIG9uIGFub3Ro
ZXIgY3B1Lgo+IAo+IHYyOiBEcm9wIHRoZSBmZW5jZSBjYWxsYmFjayBzeW5jLCByZXRpcmluZyB1
bmRlciB0aGUgbG9jayBzaG91bGQgYmUgZ29vZAo+IGVub3VnaCB0byBzeW5jaHJvbml6ZSB3aXRo
IGVuZ2luZV9yZXRpcmUoKSBhbmQgdGhlCj4gaW50ZWxfZ3RfcmV0aXJlX3JlcXVlc3RzKCkgYmFj
a2dyb3VuZCB3b3JrZXIuCj4gCj4gU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0Bj
aHJpcy13aWxzb24uY28udWs+Cj4gLS0tCj4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxm
dGVzdF9jb250ZXh0LmMgfCAxNiArKysrKysrKysrLS0tLS0tCj4gICAxIGZpbGUgY2hhbmdlZCwg
MTAgaW5zZXJ0aW9ucygrKSwgNiBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRlc3RfY29udGV4dC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3Qvc2VsZnRlc3RfY29udGV4dC5jCj4gaW5kZXggMzU4NmFmNjM2MzA0Li5hMGViZDAwYjZh
ZDQgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRlc3RfY29udGV4
dC5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRlc3RfY29udGV4dC5jCj4g
QEAgLTQ4LDIwICs0OCwyMiBAQCBzdGF0aWMgaW50IGNvbnRleHRfc3luYyhzdHJ1Y3QgaW50ZWxf
Y29udGV4dCAqY2UpCj4gICAKPiAgIAltdXRleF9sb2NrKCZ0bC0+bXV0ZXgpOwo+ICAgCWRvIHsK
PiAtCQlzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZTsKPiArCQlzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpy
cTsKPiAgIAkJbG9uZyB0aW1lb3V0Owo+ICAgCj4gLQkJZmVuY2UgPSBpOTE1X2FjdGl2ZV9mZW5j
ZV9nZXQoJnRsLT5sYXN0X3JlcXVlc3QpOwo+IC0JCWlmICghZmVuY2UpCj4gKwkJaWYgKGxpc3Rf
ZW1wdHkoJnRsLT5yZXF1ZXN0cykpCj4gICAJCQlicmVhazsKPiAgIAo+IC0JCXRpbWVvdXQgPSBk
bWFfZmVuY2Vfd2FpdF90aW1lb3V0KGZlbmNlLCBmYWxzZSwgSFogLyAxMCk7Cj4gKwkJcnEgPSBs
aXN0X2xhc3RfZW50cnkoJnRsLT5yZXF1ZXN0cywgdHlwZW9mKCpycSksIGxpbmspOwo+ICsJCWk5
MTVfcmVxdWVzdF9nZXQocnEpOwo+ICsKPiArCQl0aW1lb3V0ID0gaTkxNV9yZXF1ZXN0X3dhaXQo
cnEsIDAsIEhaIC8gMTApOwo+ICAgCQlpZiAodGltZW91dCA8IDApCj4gICAJCQllcnIgPSB0aW1l
b3V0Owo+ICAgCQllbHNlCj4gLQkJCWk5MTVfcmVxdWVzdF9yZXRpcmVfdXB0byh0b19yZXF1ZXN0
KGZlbmNlKSk7Cj4gKwkJCWk5MTVfcmVxdWVzdF9yZXRpcmVfdXB0byhycSk7Cj4gICAKPiAtCQlk
bWFfZmVuY2VfcHV0KGZlbmNlKTsKPiArCQlpOTE1X3JlcXVlc3RfcHV0KHJxKTsKPiAgIAl9IHdo
aWxlICghZXJyKTsKPiAgIAltdXRleF91bmxvY2soJnRsLT5tdXRleCk7Cj4gICAKPiBAQCAtMjgy
LDYgKzI4NCw4IEBAIHN0YXRpYyBpbnQgX19saXZlX2FjdGl2ZV9jb250ZXh0KHN0cnVjdCBpbnRl
bF9lbmdpbmVfY3MgKmVuZ2luZSwKPiAgIAkJZXJyID0gLUVJTlZBTDsKPiAgIAl9Cj4gICAKPiAr
CWludGVsX2VuZ2luZV9wbV9mbHVzaChlbmdpbmUpOwo+ICsKPiAgIAlpZiAoaW50ZWxfZW5naW5l
X3BtX2lzX2F3YWtlKGVuZ2luZSkpIHsKPiAgIAkJc3RydWN0IGRybV9wcmludGVyIHAgPSBkcm1f
ZGVidWdfcHJpbnRlcihfX2Z1bmNfXyk7Cj4gICAKPiAKClJldmlld2VkLWJ5OiBUdnJ0a28gVXJz
dWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgoKUmVnYXJkcywKClR2cnRrbwpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
