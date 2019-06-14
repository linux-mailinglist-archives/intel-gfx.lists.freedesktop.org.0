Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C16246480
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2019 18:41:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9A71389AA7;
	Fri, 14 Jun 2019 16:41:04 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D3A4089A4E
 for <Intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2019 16:41:02 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16905311-1500050 for multiple; Fri, 14 Jun 2019 17:40:58 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
References: <20190614151731.17608-1-tvrtko.ursulin@linux.intel.com>
 <20190614151731.17608-32-tvrtko.ursulin@linux.intel.com>
In-Reply-To: <20190614151731.17608-32-tvrtko.ursulin@linux.intel.com>
Message-ID: <156053045575.7796.1803902285892333529@skylake-alporthouse-com>
Date: Fri, 14 Jun 2019 17:40:55 +0100
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wNi0xNCAxNjoxNzozMSkKPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW0uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfZ2VtLmMKPiBpbmRleCBhZDFkYzU4YTIzNzQuLmM4MGUyNmMxNDM3ZCAxMDA2NDQKPiAt
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbS5jCj4gKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9nZW0uYwo+IEBAIC0xNDIzLDkgKzE0MjMsOSBAQCBzdGF0aWMgaW50IF9f
aW50ZWxfZW5naW5lc19yZWNvcmRfZGVmYXVsdHMoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5
MTUpCj4gICAgICAgICBnb3RvIG91dF9jdHg7Cj4gIH0KPiAgCj4gLXN0YXRpYyBpbnQKPiAtaTkx
NV9nZW1faW5pdF9zY3JhdGNoKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LCB1bnNpZ25l
ZCBpbnQgc2l6ZSkKPiArc3RhdGljIGludCBndF9pbml0X3NjcmF0Y2goc3RydWN0IGludGVsX2d0
ICpndCwgdW5zaWduZWQgaW50IHNpemUpCj4gIHsKPiArICAgICAgIHN0cnVjdCBkcm1faTkxNV9w
cml2YXRlICppOTE1ID0gZ3QtPmk5MTU7Cj4gICAgICAgICBzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29i
amVjdCAqb2JqOwo+ICAgICAgICAgc3RydWN0IGk5MTVfdm1hICp2bWE7Cj4gICAgICAgICBpbnQg
cmV0Owo+IEBAIC0xNDM4LDcgKzE0MzgsNyBAQCBpOTE1X2dlbV9pbml0X3NjcmF0Y2goc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsIHVuc2lnbmVkIGludCBzaXplKQo+ICAgICAgICAgICAg
ICAgICByZXR1cm4gUFRSX0VSUihvYmopOwo+ICAgICAgICAgfQo+ICAKPiAtICAgICAgIHZtYSA9
IGk5MTVfdm1hX2luc3RhbmNlKG9iaiwgJmk5MTUtPmdndHQudm0sIE5VTEwpOwo+ICsgICAgICAg
dm1hID0gaTkxNV92bWFfaW5zdGFuY2Uob2JqLCAmZ3QtPmdndHQtPnZtLCBOVUxMKTsKPiAgICAg
ICAgIGlmIChJU19FUlIodm1hKSkgewo+ICAgICAgICAgICAgICAgICByZXQgPSBQVFJfRVJSKHZt
YSk7Cj4gICAgICAgICAgICAgICAgIGdvdG8gZXJyX3VucmVmOwo+IEBAIC0xNDQ4LDcgKzE0NDgs
NyBAQCBpOTE1X2dlbV9pbml0X3NjcmF0Y2goc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUs
IHVuc2lnbmVkIGludCBzaXplKQo+ICAgICAgICAgaWYgKHJldCkKPiAgICAgICAgICAgICAgICAg
Z290byBlcnJfdW5yZWY7Cj4gIAo+IC0gICAgICAgaTkxNS0+Z3Quc2NyYXRjaCA9IHZtYTsKPiAr
ICAgICAgIGd0LT5zY3JhdGNoID0gdm1hOwo+ICAgICAgICAgcmV0dXJuIDA7Cj4gIAo+ICBlcnJf
dW5yZWY6Cj4gQEAgLTE0NTYsOSArMTQ1NiwyMCBAQCBpOTE1X2dlbV9pbml0X3NjcmF0Y2goc3Ry
dWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsIHVuc2lnbmVkIGludCBzaXplKQo+ICAgICAgICAg
cmV0dXJuIHJldDsKPiAgfQo+ICAKPiArc3RhdGljIGludAo+ICtpOTE1X2dlbV9pbml0X3NjcmF0
Y2goc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsIHVuc2lnbmVkIGludCBzaXplKQo+ICt7
Cj4gKyAgICAgICByZXR1cm4gZ3RfaW5pdF9zY3JhdGNoKCZpOTE1LT5ndCwgc2l6ZSk7Cj4gK30K
PiArCj4gK3N0YXRpYyB2b2lkIGd0X2Zpbmlfc2NyYXRjaChzdHJ1Y3QgaW50ZWxfZ3QgKmd0KQo+
ICt7Cj4gKyAgICAgICBpOTE1X3ZtYV91bnBpbl9hbmRfcmVsZWFzZSgmZ3QtPnNjcmF0Y2gsIDAp
Owo+ICt9Cj4gKwo+ICBzdGF0aWMgdm9pZCBpOTE1X2dlbV9maW5pX3NjcmF0Y2goc3RydWN0IGRy
bV9pOTE1X3ByaXZhdGUgKmk5MTUpCj4gIHsKPiAtICAgICAgIGk5MTVfdm1hX3VucGluX2FuZF9y
ZWxlYXNlKCZpOTE1LT5ndC5zY3JhdGNoLCAwKTsKPiArICAgICAgIGd0X2Zpbmlfc2NyYXRjaCgm
aTkxNS0+Z3QpOwo+ICB9CgpBcGFydCBmcm9tIHRoaXMgaXMgbm93IGRlY2lkZWRseSBwYXJ0IG9m
IGludGVsX2d0LgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4
