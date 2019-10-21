Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AF6BDF6BB
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Oct 2019 22:28:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A0576E255;
	Mon, 21 Oct 2019 20:28:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B7B16E255
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Oct 2019 20:28:12 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18917560-1500050 for multiple; Mon, 21 Oct 2019 21:28:09 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
References: <20191021192747.24804-1-matthew.auld@intel.com>
 <20191021192747.24804-7-matthew.auld@intel.com>
In-Reply-To: <20191021192747.24804-7-matthew.auld@intel.com>
Message-ID: <157168968754.2684.14199860288376398651@skylake-alporthouse-com>
Date: Mon, 21 Oct 2019 21:28:07 +0100
Subject: Re: [Intel-gfx] [PATCH v2 7/7] drm/i915/selftests: add sanity
 selftest for huge-GTT-pages
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

UXVvdGluZyBNYXR0aGV3IEF1bGQgKDIwMTktMTAtMjEgMjA6Mjc6NDcpCj4gTm93IHRoYXQgZm9y
IGFsbCB0aGUgcmVsZXZhbnQgYmFja2VuZHMgd2UgZG8gcmFuZG9taXNlZCB0ZXN0aW5nLCB3ZSBu
ZWVkCj4gdG8gbWFrZSBzdXJlIHdlIHN0aWxsIHNhbml0eSBjaGVjayB0aGUgb2J2aW91cyBjYXNl
cyB0aGF0IG1pZ2h0IGJsb3cgdXAsCj4gc3VjaCB0aGF0IGludHJvZHVjaW5nIGEgdGVtcG9yYXJ5
IHJlZ3Jlc3Npb24gaXMgbGVzcyBsaWtlbHkuICBBbHNvCj4gcmF0aGVyIHRoYW4gZG8gdGhpcyBm
b3IgZXZlcnkgYmFja2VuZCwganVzdCBsaW1pdCB0byBvdXIgdHdvIG1lbW9yeQo+IHR5cGVzOiBz
eXN0ZW0gYW5kIGxvY2FsLgo+IAo+IFN1Z2dlc3RlZC1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0Bj
aHJpcy13aWxzb24uY28udWs+Cj4gU2lnbmVkLW9mZi1ieTogTWF0dGhldyBBdWxkIDxtYXR0aGV3
LmF1bGRAaW50ZWwuY29tPgo+IENjOiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5j
by51az4KPiAtLS0KPiAgLi4uL2dwdS9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL2h1Z2VfcGFnZXMu
YyAgIHwgMTAzICsrKysrKysrKysrKysrKysrKwo+ICAxIGZpbGUgY2hhbmdlZCwgMTAzIGluc2Vy
dGlvbnMoKykKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL3NlbGZ0
ZXN0cy9odWdlX3BhZ2VzLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL2h1
Z2VfcGFnZXMuYwo+IGluZGV4IDFkN2MyYTUwZDYzNi4uZmVlOGE2YzMzOGI4IDEwMDY0NAo+IC0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9zZWxmdGVzdHMvaHVnZV9wYWdlcy5jCj4gKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9odWdlX3BhZ2VzLmMKPiBAQCAt
MTUwNSw2ICsxNTA1LDEwOCBAQCBzdGF0aWMgaW50IGlndF9wcGd0dF9sbWVtX2h1Z2Uodm9pZCAq
YXJnKQo+ICAgICAgICAgcmV0dXJuIGVycjsKPiAgfQo+ICAKPiArc3RhdGljIHN0cnVjdCBkcm1f
aTkxNV9nZW1fb2JqZWN0ICoKPiAraWd0X2NyZWF0ZV9sb2NhbChzdHJ1Y3QgZHJtX2k5MTVfcHJp
dmF0ZSAqaTkxNSwgdTMyIHNpemUpCj4gK3sKPiArICAgICAgIHJldHVybiBpOTE1X2dlbV9vYmpl
Y3RfY3JlYXRlX2xtZW0oaTkxNSwgc2l6ZSwgSTkxNV9BTExPQ19DT05USUdVT1VTKTsKPiArfQo+
ICsKPiArc3RhdGljIHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICoKPiAraWd0X2NyZWF0ZV9z
eXN0ZW0oc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsIHUzMiBzaXplKQo+ICt7Cj4gKyAg
ICAgICByZXR1cm4gaHVnZV9wYWdlc19vYmplY3QoaTkxNSwgc2l6ZSwgc2l6ZSk7CgpTb21lIG1p
Z2h0IHNheSB0aGF0IHRoZXNlIFtpbnRlcm5hbCwgbW9ja3NdIHNob3VsZCBhbHNvIGJlIHBhcnQg
b2YgdGhlCmZhY3Rvcnkgc2VydmljZSA7KQoKPiArdHlwZWRlZiBzdHJ1Y3QgZHJtX2k5MTVfZ2Vt
X29iamVjdCAqCj4gKygqaWd0X2NyZWF0ZV9mbikoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5
MTUsIHUzMiBzaXplKTsKPiArCj4gK3N0YXRpYyBpbnQgaWd0X3BwZ3R0X3Nhbml0eV9jaGVjayh2
b2lkICphcmcpCj4gK3sKPiArICAgICAgIHN0cnVjdCBpOTE1X2dlbV9jb250ZXh0ICpjdHggPSBh
cmc7Cj4gKyAgICAgICBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IGN0eC0+aTkxNTsK
PiArICAgICAgIHVuc2lnbmVkIGludCBzdXBwb3J0ZWQgPSBJTlRFTF9JTkZPKGk5MTUpLT5wYWdl
X3NpemVzOwo+ICsgICAgICAgc3RydWN0IHsKPiArICAgICAgICAgICAgICAgdTMyIHNpemU7Cj4g
KyAgICAgICAgICAgICAgIHUzMiBwYWdlczsKPiArICAgICAgIH0gY29tYm9zW10gPSB7Cj4gKyAg
ICAgICAgICAgICAgIHsgU1pfNjRLLCAgICAgICAgIFNaXzY0SywgICAgICAgICAgfSwKPiArICAg
ICAgICAgICAgICAgeyBTWl8yTSwgICAgICAgICAgU1pfMk0sICAgICAgICAgICB9LAo+ICsgICAg
ICAgICAgICAgICB7IFNaXzJNLCAgICAgICAgICBTWl82NEssICAgICAgICAgIH0sCj4gKyAgICAg
ICAgICAgICAgIHsgU1pfMk0gKyBTWl80SywgIFNaXzY0SyB8IFNaXzRLLCAgfSwKPiArICAgICAg
ICAgICAgICAgeyBTWl8yTSArIFNaXzRLLCAgU1pfMk0gIHwgU1pfNEssICB9LAo+ICsgICAgICAg
ICAgICAgICB7IFNaXzJNICsgU1pfNjRLLCBTWl8yTSAgfCBTWl82NEssIH0sCgpXb24ndCBTWl8y
TSAtIFBBR0VfU0laRSBhbHNvIGJlIGFzIGludGVyZXN0aW5nPwoKSWYgSSBhbSBub3QgYmFya2lu
ZyB1cCB0aGUgd3JvbmcgdHJlZSB3aXRoIG15IHVuZGVyc3RhbmRpbmcgaGVyZSwKUmV2aWV3ZWQt
Ynk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgotQ2hyaXMKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
