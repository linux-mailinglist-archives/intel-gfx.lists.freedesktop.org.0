Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 824FC88AEB
	for <lists+intel-gfx@lfdr.de>; Sat, 10 Aug 2019 13:02:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E0286E2E4;
	Sat, 10 Aug 2019 11:02:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AD0476E2DF;
 Sat, 10 Aug 2019 11:02:46 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17952411-1500050 for multiple; Sat, 10 Aug 2019 12:02:44 +0100
MIME-Version: 1.0
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190809222643.23142-24-matthew.auld@intel.com>
References: <20190809222643.23142-1-matthew.auld@intel.com>
 <20190809222643.23142-24-matthew.auld@intel.com>
Message-ID: <156543496188.2301.14700944982067187591@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Sat, 10 Aug 2019 12:02:41 +0100
Subject: Re: [Intel-gfx] [PATCH v3 23/37] drm/i915: do not map aperture if
 it is not available.
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
Cc: dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBNYXR0aGV3IEF1bGQgKDIwMTktMDgtMDkgMjM6MjY6MjkpCj4gRnJvbTogRGFuaWVs
ZSBDZXJhb2xvIFNwdXJpbyA8ZGFuaWVsZS5jZXJhb2xvc3B1cmlvQGludGVsLmNvbT4KPiAKPiBT
a2lwIGJvdGggc2V0dXAgYW5kIGNsZWFudXAgb2YgdGhlIGFwZXJ0dXJlIG1hcHBpbmcgaWYgdGhl
IEhXIGRvZXNuJ3QKPiBoYXZlIGFuIGFwZXJ0dXJlIGJhci4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBE
YW5pZWxlIENlcmFvbG8gU3B1cmlvIDxkYW5pZWxlLmNlcmFvbG9zcHVyaW9AaW50ZWwuY29tPgo+
IENjOiBNYXR0aGV3IEF1bGQgPG1hdHRoZXcuYXVsZEBpbnRlbC5jb20+Cj4gLS0tCj4gIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5jIHwgMzYgKysrKysrKysrKysrKysrKysrLS0t
LS0tLS0tLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDIyIGluc2VydGlvbnMoKyksIDE0IGRlbGV0aW9u
cygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQu
YyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5jCj4gaW5kZXggNWJjZjcxYjE4
ZTVmLi5kZDI4YzU0NTI3ZTMgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9nZW1fZ3R0LmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuYwo+
IEBAIC0yNzk1LDggKzI3OTUsMTAgQEAgc3RhdGljIHZvaWQgZ2d0dF9jbGVhbnVwX2h3KHN0cnVj
dCBpOTE1X2dndHQgKmdndHQpCj4gIAo+ICAgICAgICAgbXV0ZXhfdW5sb2NrKCZpOTE1LT5kcm0u
c3RydWN0X211dGV4KTsKPiAgCj4gLSAgICAgICBhcmNoX3BoeXNfd2NfZGVsKGdndHQtPm10cnIp
Owo+IC0gICAgICAgaW9fbWFwcGluZ19maW5pKCZnZ3R0LT5pb21hcCk7Cj4gKyAgICAgICBpZiAo
SEFTX01BUFBBQkxFX0FQRVJUVVJFKGk5MTUpKSB7CgpJIGZlZWwgaGVyZSBpdCBzaG91bGQgYmUg
bGVzcyBzaG91dGluZy4KCj4gKyAgICAgICAgICAgICAgIGFyY2hfcGh5c193Y19kZWwoZ2d0dC0+
bXRycik7Cgp3Y19kZWwoKSBkb2Vzbid0IGNhcmUgaWYgd2UgY2FsbCBpdCB3aXRob3V0IGEgbXRy
ciAobm90aGluZyBoYXMgYmVlbgp1c2luZyBhbiBtdHJyIHNpbmNlIFBBVCkuCgppZiAoZ2d0dC0+
aW9tYXAuc2l6ZSkKPiArICAgICAgICAgICAgICAgaW9fbWFwcGluZ19maW5pKCZnZ3R0LT5pb21h
cCk7Cgo+ICsgICAgICAgfQo+ICB9Cj4gIAo+ICAvKioKPiBAQCAtMjk5MiwxMCArMjk5NCwxMyBA
QCBzdGF0aWMgaW50IGdlbjhfZ21jaF9wcm9iZShzdHJ1Y3QgaTkxNV9nZ3R0ICpnZ3R0KQo+ICAg
ICAgICAgaW50IGVycjsKPiAgCj4gICAgICAgICAvKiBUT0RPOiBXZSdyZSBub3QgYXdhcmUgb2Yg
bWFwcGFibGUgY29uc3RyYWludHMgb24gZ2VuOCB5ZXQgKi8KPiAtICAgICAgIGdndHQtPmdtYWRy
ID0KPiAtICAgICAgICAgICAgICAgKHN0cnVjdCByZXNvdXJjZSkgREVGSU5FX1JFU19NRU0ocGNp
X3Jlc291cmNlX3N0YXJ0KHBkZXYsIDIpLAo+IC0gICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICBwY2lfcmVzb3VyY2VfbGVuKHBkZXYsIDIpKTsKPiAtICAgICAg
IGdndHQtPm1hcHBhYmxlX2VuZCA9IHJlc291cmNlX3NpemUoJmdndHQtPmdtYWRyKTsKPiArICAg
ICAgIC8qIEZJWE1FOiBXZSBwcm9iYWJseSBuZWVkIHRvIGFkZCBkbyBkZXZpY2VfaW5mbyBvciBy
dW50aW1lX2luZm8gKi8KPiArICAgICAgIGlmICghSEFTX0xNRU0oZGV2X3ByaXYpKSB7Cj4gKyAg
ICAgICAgICAgICAgIGdndHQtPmdtYWRyID0KPiArICAgICAgICAgICAgICAgICAgICAgICAoc3Ry
dWN0IHJlc291cmNlKSBERUZJTkVfUkVTX01FTShwY2lfcmVzb3VyY2Vfc3RhcnQocGRldiwgMiks
Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgcGNpX3Jlc291cmNlX2xlbihwZGV2LCAyKSk7Cj4gKyAgICAgICAgICAgICAgIGdndHQtPm1h
cHBhYmxlX2VuZCA9IHJlc291cmNlX3NpemUoJmdndHQtPmdtYWRyKTsKPiArICAgICAgIH0KPiAg
Cj4gICAgICAgICBlcnIgPSBwY2lfc2V0X2RtYV9tYXNrKHBkZXYsIERNQV9CSVRfTUFTSygzOSkp
Owo+ICAgICAgICAgaWYgKCFlcnIpCj4gQEAgLTMyMjAsMTUgKzMyMjUsMTggQEAgc3RhdGljIGlu
dCBnZ3R0X2luaXRfaHcoc3RydWN0IGk5MTVfZ2d0dCAqZ2d0dCkKPiAgICAgICAgIGlmICghSEFT
X0xMQyhpOTE1KSAmJiAhSEFTX1BQR1RUKGk5MTUpKQo+ICAgICAgICAgICAgICAgICBnZ3R0LT52
bS5tbS5jb2xvcl9hZGp1c3QgPSBpOTE1X2d0dF9jb2xvcl9hZGp1c3Q7Cj4gIAo+IC0gICAgICAg
aWYgKCFpb19tYXBwaW5nX2luaXRfd2MoJmdndHQtPmlvbWFwLAo+IC0gICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgZ2d0dC0+Z21hZHIuc3RhcnQsCj4gLSAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICBnZ3R0LT5tYXBwYWJsZV9lbmQpKSB7Cj4gLSAgICAgICAgICAgICAgIGdndHQt
PnZtLmNsZWFudXAoJmdndHQtPnZtKTsKPiAtICAgICAgICAgICAgICAgcmV0ID0gLUVJTzsKPiAt
ICAgICAgICAgICAgICAgZ290byBvdXQ7Cj4gLSAgICAgICB9Cj4gKyAgICAgICBpZiAoSEFTX01B
UFBBQkxFX0FQRVJUVVJFKGk5MTUpKSB7Cj4gKyAgICAgICAgICAgICAgIGlmICghaW9fbWFwcGlu
Z19pbml0X3djKCZnZ3R0LT5pb21hcCwKCmlmIChnZ3R0LT5tYXBwYWJsZV9lbmQpIHsKCkluIHRo
aXMgZmlsZSwgd2UgYXJlIGRlYWxpbmcgd2l0aCB0aGUgbG93IGxldmVsIGRldGFpbHMgc28gSSB3
b3VsZCAKcHJlZmVyIGxlc3Mgb2JmdXNjYXRpb24uCgo+ICsgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICBnZ3R0LT5nbWFkci5zdGFydCwKPiArICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgZ2d0dC0+bWFwcGFibGVfZW5kKSkgewo+ICsgICAgICAgICAg
ICAgICAgICAgICAgIGdndHQtPnZtLmNsZWFudXAoJmdndHQtPnZtKTsKPiArICAgICAgICAgICAg
ICAgICAgICAgICByZXQgPSAtRUlPOwo+ICsgICAgICAgICAgICAgICAgICAgICAgIGdvdG8gb3V0
Owo+ICsgICAgICAgICAgICAgICB9Cj4gIAo+IC0gICAgICAgZ2d0dC0+bXRyciA9IGFyY2hfcGh5
c193Y19hZGQoZ2d0dC0+Z21hZHIuc3RhcnQsIGdndHQtPm1hcHBhYmxlX2VuZCk7Cj4gKyAgICAg
ICAgICAgICAgIGdndHQtPm10cnIgPSBhcmNoX3BoeXNfd2NfYWRkKGdndHQtPmdtYWRyLnN0YXJ0
LAo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBnZ3R0LT5t
YXBwYWJsZV9lbmQpOwo+ICsgICAgICAgfQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZng=
