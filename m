Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C92E443DD8
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jun 2019 17:46:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 22AEA892B8;
	Thu, 13 Jun 2019 15:46:11 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5223D892B8
 for <Intel-gfx@lists.freedesktop.org>; Thu, 13 Jun 2019 15:46:10 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16891269-1500050 for multiple; Thu, 13 Jun 2019 16:46:05 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
References: <20190613133539.12620-1-tvrtko.ursulin@linux.intel.com>
 <20190613151904.16256-1-tvrtko.ursulin@linux.intel.com>
 <20190613151904.16256-4-tvrtko.ursulin@linux.intel.com>
In-Reply-To: <20190613151904.16256-4-tvrtko.ursulin@linux.intel.com>
Message-ID: <156044076342.17012.8061368513293260014@skylake-alporthouse-com>
Date: Thu, 13 Jun 2019 16:46:03 +0100
Subject: Re: [Intel-gfx] [RFC 27/28] drm/i915: Compartmentalize ring buffer
 creation
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wNi0xMyAxNjoxOTowMykKPiBGcm9tOiBUdnJ0
a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+IAo+IENvbnRpbnVpbmcgb24g
dGhlIHRoZW1lIG9mIGNvbXBhcnRtZW50YWxpemluZyB0aGUgY29kZSBiZXR0ZXIgdG8gbWFrZQo+
IGZ1dHVyZSBzcGxpdCBiZXR3ZWVuIGd0IGFuZCBkaXNwbGF5IGluIGdsb2JhbCBpOTE1IGNsZWFy
ZXIuCj4gCj4gU2lnbmVkLW9mZi1ieTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGlu
dGVsLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmluZ2J1ZmZl
ci5jIHwgMTcgKysrKysrKysrLS0tLS0tLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDkgaW5zZXJ0aW9u
cygrKSwgOCBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvaW50ZWxfcmluZ2J1ZmZlci5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxf
cmluZ2J1ZmZlci5jCj4gaW5kZXggYjNiZjQ3ZTgxNjJmLi4wYTFkOTUyYWQxNjAgMTAwNjQ0Cj4g
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmluZ2J1ZmZlci5jCj4gKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmluZ2J1ZmZlci5jCj4gQEAgLTEyMjYsMTYg
KzEyMjYsMTYgQEAgdm9pZCBpbnRlbF9yaW5nX3VucGluKHN0cnVjdCBpbnRlbF9yaW5nICpyaW5n
KQo+ICAgICAgICAgaTkxNV90aW1lbGluZV91bnBpbihyaW5nLT50aW1lbGluZSk7Cj4gIH0KPiAg
Cj4gLXN0YXRpYyBzdHJ1Y3QgaTkxNV92bWEgKgo+IC1pbnRlbF9yaW5nX2NyZWF0ZV92bWEoc3Ry
dWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LCBpbnQgc2l6ZSkKPiArc3RhdGljIHN0cnVj
dCBpOTE1X3ZtYSAqY3JlYXRlX3Jpbmdfdm1hKHN0cnVjdCBpbnRlbF9ndCAqZ3QsIGludCBzaXpl
KQoKSGVyZSwgaXQgcHJvYmFibHkgbWFrZXMgbW9yZSBzZW5zZSB0byBiZSBwYXNzaW5nIGk5MTVf
Z2d0dCAoc2luY2UgdGhpcwppcyBhYm91dCB0aGUgaTkxNV92bWEgaXRzZWxmKS4KCj4gIHsKPiAt
ICAgICAgIHN0cnVjdCBpOTE1X2FkZHJlc3Nfc3BhY2UgKnZtID0gJmRldl9wcml2LT5nZ3R0LnZt
Owo+ICsgICAgICAgc3RydWN0IGk5MTVfYWRkcmVzc19zcGFjZSAqdm0gPSAmZ3QtPmdndHQtPnZt
Owo+ICsgICAgICAgc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSBndC0+aTkxNTsKPiAg
ICAgICAgIHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmo7Cj4gICAgICAgICBzdHJ1Y3Qg
aTkxNV92bWEgKnZtYTsKPiAgCj4gLSAgICAgICBvYmogPSBpOTE1X2dlbV9vYmplY3RfY3JlYXRl
X3N0b2xlbihkZXZfcHJpdiwgc2l6ZSk7Cj4gKyAgICAgICBvYmogPSBpOTE1X2dlbV9vYmplY3Rf
Y3JlYXRlX3N0b2xlbihpOTE1LCBzaXplKTsKPiAgICAgICAgIGlmICghb2JqKQo+IC0gICAgICAg
ICAgICAgICBvYmogPSBpOTE1X2dlbV9vYmplY3RfY3JlYXRlX2ludGVybmFsKGRldl9wcml2LCBz
aXplKTsKPiArICAgICAgICAgICAgICAgb2JqID0gaTkxNV9nZW1fb2JqZWN0X2NyZWF0ZV9pbnRl
cm5hbChpOTE1LCBzaXplKTsKPiAgICAgICAgIGlmIChJU19FUlIob2JqKSkKPiAgICAgICAgICAg
ICAgICAgcmV0dXJuIEVSUl9DQVNUKG9iaik7Cj4gIAo+IEBAIC0xMjYyLDEzICsxMjYyLDE0IEBA
IGludGVsX2VuZ2luZV9jcmVhdGVfcmluZyhzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUs
Cj4gICAgICAgICAgICAgICAgICAgICAgICAgIHN0cnVjdCBpOTE1X3RpbWVsaW5lICp0aW1lbGlu
ZSwKPiAgICAgICAgICAgICAgICAgICAgICAgICAgaW50IHNpemUpCj4gIHsKPiArICAgICAgIHN0
cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0gZW5naW5lLT5pOTE1Owo+ICAgICAgICAgc3Ry
dWN0IGludGVsX3JpbmcgKnJpbmc7Cj4gICAgICAgICBzdHJ1Y3QgaTkxNV92bWEgKnZtYTsKPiAg
Cj4gICAgICAgICBHRU1fQlVHX09OKCFpc19wb3dlcl9vZl8yKHNpemUpKTsKPiAgICAgICAgIEdF
TV9CVUdfT04oUklOR19DVExfU0laRShzaXplKSAmIH5SSU5HX05SX1BBR0VTKTsKPiAgICAgICAg
IEdFTV9CVUdfT04odGltZWxpbmUgPT0gJmVuZ2luZS0+dGltZWxpbmUpOwo+IC0gICAgICAgbG9j
a2RlcF9hc3NlcnRfaGVsZCgmZW5naW5lLT5pOTE1LT5kcm0uc3RydWN0X211dGV4KTsKPiArICAg
ICAgIGxvY2tkZXBfYXNzZXJ0X2hlbGQoJmk5MTUtPmRybS5zdHJ1Y3RfbXV0ZXgpOwoKSGVyZXN5
LgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
