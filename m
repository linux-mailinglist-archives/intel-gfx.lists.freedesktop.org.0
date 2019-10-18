Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 00E18DD50A
	for <lists+intel-gfx@lfdr.de>; Sat, 19 Oct 2019 00:43:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C546E89E3F;
	Fri, 18 Oct 2019 22:43:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E38AC89E3F
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Oct 2019 22:43:23 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18888008-1500050 for multiple; Fri, 18 Oct 2019 23:43:20 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
References: <20191018165558.18518-1-matthew.auld@intel.com>
 <20191018165558.18518-6-matthew.auld@intel.com>
In-Reply-To: <20191018165558.18518-6-matthew.auld@intel.com>
Message-ID: <157143859860.10963.17626144036273616673@skylake-alporthouse-com>
Date: Fri, 18 Oct 2019 23:43:18 +0100
Subject: Re: [Intel-gfx] [PATCH 6/6] drm/i915/selftests: prefer random sizes
 for the huge-GTT-page smoke tests
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

UXVvdGluZyBNYXR0aGV3IEF1bGQgKDIwMTktMTAtMTggMTc6NTU6NTgpCj4gRGl0Y2ggdGhlIGR1
YmlvdXMgc3RhdGljIGxpc3Qgb2Ygc2l6ZXMgdG8gZW51bWVyYXRlLCBpbiBmYXZvdXIgb2YKPiBj
aG9vc2luZyBhIHJhbmRvbSBzaXplIHdpdGhpbiB0aGUgbGltaXRzIG9mIGVhY2ggYmFja2luZyBz
dG9yZS4gV2l0aAo+IHJlcGVhdGVkIENJIHJ1bnMgdGhpcyBzaG91bGQgZ2l2ZSB1cyBhIHdpZGVy
IHJhbmdlIG9mIG9iamVjdCBzaXplcywgYW5kCj4gaW4gdHVybiBtb3JlIHBhZ2Utc2l6ZSBjb21i
aW5hdGlvbnMsIHdoaWxlIHVzaW5nIGxlc3MgbWFjaGluZSB0aW1lLgo+IAo+IFNpZ25lZC1vZmYt
Ynk6IE1hdHRoZXcgQXVsZCA8bWF0dGhldy5hdWxkQGludGVsLmNvbT4KPiAtLS0KPiAgLi4uL2dw
dS9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL2h1Z2VfcGFnZXMuYyAgIHwgMTk4ICsrKysrKysrKy0t
LS0tLS0tLQo+ICAxIGZpbGUgY2hhbmdlZCwgOTQgaW5zZXJ0aW9ucygrKSwgMTA0IGRlbGV0aW9u
cygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vc2VsZnRlc3Rz
L2h1Z2VfcGFnZXMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9zZWxmdGVzdHMvaHVnZV9w
YWdlcy5jCj4gaW5kZXggZDQ4OTI3NjliNzM5Li4zZjdhYzQ0NzNmMzMgMTAwNjQ0Cj4gLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9odWdlX3BhZ2VzLmMKPiArKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL2h1Z2VfcGFnZXMuYwo+IEBAIC0xMzE0
LDIwICsxMzE0LDMzIEBAIHN0YXRpYyBpbnQgaWd0X3BwZ3R0X2V4aGF1c3RfaHVnZSh2b2lkICph
cmcpCj4gICAgICAgICByZXR1cm4gZXJyOwo+ICB9Cj4gIAo+ICtzdGF0aWMgdTMyIGlndF9yYW5k
b21fc2l6ZShzdHJ1Y3Qgcm5kX3N0YXRlICpwcm5nLAo+ICsgICAgICAgICAgICAgICAgICAgICAg
ICAgIHUzMiBtaW5fcGFnZV9zaXplLAo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgIHUzMiBt
YXhfcGFnZV9zaXplKQo+ICt7Cj4gKyAgICAgICB1MzIgc2l6ZTsKPiArICAgICAgIHUzMiBtYXNr
Owo+ICsKPiArICAgICAgIEdFTV9CVUdfT04oIWlzX3Bvd2VyX29mXzIobWluX3BhZ2Vfc2l6ZSkp
Owo+ICsgICAgICAgR0VNX0JVR19PTighaXNfcG93ZXJfb2ZfMihtYXhfcGFnZV9zaXplKSk7Cj4g
KyAgICAgICBHRU1fQlVHX09OKG1pbl9wYWdlX3NpemUgPCBQQUdFX1NJWkUpOwo+ICsgICAgICAg
R0VNX0JVR19PTihtaW5fcGFnZV9zaXplID4gbWF4X3BhZ2Vfc2l6ZSk7Cj4gKwo+ICsgICAgICAg
bWFzayA9IEdFTk1BU0tfVUxMKGlsb2cyKG1heF9wYWdlX3NpemUpLCBQQUdFX1NISUZUKTsKCm1h
c2sgPSAobWF4X3BhZ2Vfc2l6ZSAtIDEpICYgUEFHRV9NQVNLOwoKRWFzaWVyIHRvIHVuZGVyc3Rh
bmQ/Cgo+ICsgICAgICAgc2l6ZSA9IHByYW5kb21fdTMyX3N0YXRlKHBybmcpICYgbWFzazsKPiAr
ICAgICAgIGlmIChzaXplIDwgbWluX3BhZ2Vfc2l6ZSkKPiArICAgICAgICAgICAgICAgc2l6ZSB8
PSBtaW5fcGFnZV9zaXplOwo+ICsKPiArICAgICAgIHJldHVybiBzaXplOwo+ICt9Cj4gKwo+ICBz
dGF0aWMgaW50IGlndF9wcGd0dF9pbnRlcm5hbF9odWdlKHZvaWQgKmFyZykKPiAgewo+ICAgICAg
ICAgc3RydWN0IGk5MTVfZ2VtX2NvbnRleHQgKmN0eCA9IGFyZzsKPiAgICAgICAgIHN0cnVjdCBk
cm1faTkxNV9wcml2YXRlICppOTE1ID0gY3R4LT5pOTE1Owo+ICAgICAgICAgc3RydWN0IGRybV9p
OTE1X2dlbV9vYmplY3QgKm9iajsKPiAtICAgICAgIHN0YXRpYyBjb25zdCB1bnNpZ25lZCBpbnQg
c2l6ZXNbXSA9IHsKPiAtICAgICAgICAgICAgICAgU1pfNjRLLAo+IC0gICAgICAgICAgICAgICBT
Wl8xMjhLLAo+IC0gICAgICAgICAgICAgICBTWl8yNTZLLAo+IC0gICAgICAgICAgICAgICBTWl81
MTJLLAo+IC0gICAgICAgICAgICAgICBTWl8xTSwKPiAtICAgICAgICAgICAgICAgU1pfMk0sCj4g
LSAgICAgICB9Owo+IC0gICAgICAgaW50IGk7Cj4gKyAgICAgICBJOTE1X1JORF9TVEFURShwcm5n
KTsKPiArICAgICAgIHUzMiBzaXplOwo+ICAgICAgICAgaW50IGVycjsKCkkgc2tpcHBlZCB0byB0
aGUgZmluYWwgcGF0Y2guIERpZCB5b3UgYWxzbyBsZWF2ZSBpbiBjaGVja2luZyBvZiB0aGUgdXN1
YWwKc3VzcGVjdHM/CgpUaGUgcmFuZG9taXNlZCBzbW9rZXRlc3RpbmcgbG9va3MgZ29vZCwKUmV2
aWV3ZWQtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgoKVGhlIG9u
bHkgcXVlc3Rpb24gYmVpbmcgd2hldGhlciB3ZSBjYW4gZG8gc29tZSBsaW1pdGVkIHNtYXJ0IHRl
c3RpbmcgdG8KY2F0Y2ggdGhlIG1vc3QgbGlrZWx5IGJ1Z3MuCi1DaHJpcwpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
