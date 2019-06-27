Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B89FC57E36
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Jun 2019 10:28:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1CA3A6E836;
	Thu, 27 Jun 2019 08:28:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A76406E836
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Jun 2019 08:28:02 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17040033-1500050 for multiple; Thu, 27 Jun 2019 09:28:01 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190627080045.8814-1-lionel.g.landwerlin@intel.com>
 <20190627080045.8814-5-lionel.g.landwerlin@intel.com>
In-Reply-To: <20190627080045.8814-5-lionel.g.landwerlin@intel.com>
Message-ID: <156162407789.20851.7175557604200284018@skylake-alporthouse-com>
Date: Thu, 27 Jun 2019 09:27:57 +0100
Subject: Re: [Intel-gfx] [PATCH v5 04/10] drm/i915/perf: implement active
 wait for noa configurations
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

UXVvdGluZyBMaW9uZWwgTGFuZHdlcmxpbiAoMjAxOS0wNi0yNyAwOTowMDozOSkKPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wZXJmLmMgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X3BlcmYuYwo+IGluZGV4IDJmMWRjOWJlM2JmYi4uYjJmNWJhODc5MjFjIDEwMDY0
NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGVyZi5jCj4gKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9wZXJmLmMKPiBAQCAtNDEwLDYgKzQxMCw4IEBAIHN0YXRpYyBp
bnQgYWxsb2Nfb2FfY29uZmlnX2J1ZmZlcihzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwK
PiAgICAgICAgIHNpemVfdCBjb25maWdfbGVuZ3RoID0gMDsKPiAgICAgICAgIHUzMiAqY3M7Cj4g
IAo+ICsgICAgICAgbG9ja2RlcF9hc3NlcnRfaGVsZCgmaTkxNS0+ZHJtLnN0cnVjdF9tdXRleCk7
CgpXaGF0IGluc2lkZSAqdGhpcyogZnVuY3Rpb24gZGVwZW5kcyBvbiB0aGUgc3RydWN0X211dGV4
PyBUaGUgbm9hX3dhaXQKdm1hIGlzIGFscmVhZHkgcGlubmVkIGFuZCBJIGRpZG4ndCBzcG90IGFu
eXRoaW5nIGVsc2UgYWRkZWQgdGhhdCBtaWdodApiZSBjb250ZW50aW91cy4KCj4gICAgICAgICBp
ZiAob2FfY29uZmlnLT5tdXhfcmVnc19sZW4gPiAwKSB7Cj4gICAgICAgICAgICAgICAgIGNvbmZp
Z19sZW5ndGggKz0gRElWX1JPVU5EX1VQKG9hX2NvbmZpZy0+bXV4X3JlZ3NfbGVuLAo+ICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBNSV9MT0FEX1JFR0lTVEVS
X0lNTV9NQVhfUkVHUykgKiA0Owo+IEBAIC00MjUsNyArNDI3LDcgQEAgc3RhdGljIGludCBhbGxv
Y19vYV9jb25maWdfYnVmZmVyKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LAo+ICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBNSV9MT0FEX1JFR0lTVEVS
X0lNTV9NQVhfUkVHUykgKiA0Owo+ICAgICAgICAgICAgICAgICBjb25maWdfbGVuZ3RoICs9IG9h
X2NvbmZpZy0+ZmxleF9yZWdzX2xlbiAqIDg7Cj4gICAgICAgICB9Cj4gLSAgICAgICBjb25maWdf
bGVuZ3RoICs9IDQ7IC8qIE1JX0JBVENIX0JVRkZFUl9FTkQgKi8KPiArICAgICAgIGNvbmZpZ19s
ZW5ndGggKz0gMTI7IC8qIE1JX0JBVENIX0JVRkZFUl9TVEFSVCBpbnRvIG5vYV93YWl0IGxvb3Ag
Ki8KPiAgICAgICAgIGNvbmZpZ19sZW5ndGggPSBBTElHTihjb25maWdfbGVuZ3RoLCBJOTE1X0dU
VF9QQUdFX1NJWkUpOwo+ICAKPiAgICAgICAgIGJvID0gaTkxNV9nZW1fb2JqZWN0X2NyZWF0ZV9z
aG1lbShpOTE1LCBjb25maWdfbGVuZ3RoKTsKPiBAQCAtNDQyLDcgKzQ0NCwxMiBAQCBzdGF0aWMg
aW50IGFsbG9jX29hX2NvbmZpZ19idWZmZXIoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUs
Cj4gICAgICAgICBjcyA9IHdyaXRlX2NzX21pX2xyaShjcywgb2FfY29uZmlnLT5iX2NvdW50ZXJf
cmVncywgb2FfY29uZmlnLT5iX2NvdW50ZXJfcmVnc19sZW4pOwo+ICAgICAgICAgY3MgPSB3cml0
ZV9jc19taV9scmkoY3MsIG9hX2NvbmZpZy0+ZmxleF9yZWdzLCBvYV9jb25maWctPmZsZXhfcmVn
c19sZW4pOwo+ICAKPiAtICAgICAgICpjcysrID0gTUlfQkFUQ0hfQlVGRkVSX0VORDsKPiArCj4g
KyAgICAgICAvKiBKdW1wIGludG8gdGhlIE5PQSB3YWl0IGJ1c3kgbG9vcC4gKi8KPiArICAgICAg
ICpjcysrID0gKElOVEVMX0dFTihpOTE1KSA8IDggPwo+ICsgICAgICAgICAgICAgICAgTUlfQkFU
Q0hfQlVGRkVSX1NUQVJUIDogTUlfQkFUQ0hfQlVGRkVSX1NUQVJUX0dFTjgpOwo+ICsgICAgICAg
KmNzKysgPSBpOTE1LT5wZXJmLm9hLm5vYV93YWl0LT5ub2RlLnN0YXJ0OwoKaTkxNV9nZ3R0X29m
ZnNldChpOTE1LT5wZXJmLm9hLm5vYV93YWl0KTsKZG91YmxlIGNoZWNrcyB0aGF0IHlvdSBhcmUg
aW4gdGhlIGdndHQgYW5kIHNvIGFzc3VtaW5nIHUzMiBpcyB2YWxpZC4KClRoaXMgaXMgb3BlcmF0
aW5nIGluc2lkZSB0aGUgdXNlciBjb250ZXh0IHJpZ2h0PyAoSWYgSSByZW1lbWJlcgpjb3JyZWN0
bHksIHlvdSBwbHVnIGludG8gdGhlIHVzZXIgZGlzcGF0Y2gpIElmIHNvLCB3aGVyZSBkbyB5b3Ug
c2F2ZSBhbmQKcmVzdG9yZSB0aGUgQ1NfR1BSIG92ZXJ3cml0dGVuPwotQ2hyaXMKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcg
bGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
