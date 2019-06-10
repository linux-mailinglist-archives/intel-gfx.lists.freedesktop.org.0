Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 00C683B93E
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Jun 2019 18:19:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E1049890BF;
	Mon, 10 Jun 2019 16:19:55 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D216E890BF
 for <Intel-gfx@lists.freedesktop.org>; Mon, 10 Jun 2019 16:19:53 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16854719-1500050 for multiple; Mon, 10 Jun 2019 17:19:48 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
References: <20190610155419.23723-1-tvrtko.ursulin@linux.intel.com>
 <20190610155419.23723-5-tvrtko.ursulin@linux.intel.com>
In-Reply-To: <20190610155419.23723-5-tvrtko.ursulin@linux.intel.com>
Message-ID: <156018358725.383.10044337444560873798@skylake-alporthouse-com>
Date: Mon, 10 Jun 2019 17:19:47 +0100
Subject: Re: [Intel-gfx] [RFC 04/14] drm/i915: Add a couple intel_gt helpers
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wNi0xMCAxNjo1NDowOSkKPiBGcm9tOiBUdnJ0
a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+IAo+IFR3byB0cml2aWFsIGhl
bHBlcnMgdG8gY29udmVydCBmcm9tIGludGVsX2d0IHRvIGk5MTUgYW5kIHVuY29yZSB3aGljaCB3
aWxsCj4gYmUgbmVlZGVkIGJ5IHRoZSBmb2xsb3dpbmcgcGF0Y2hlcy4KPiAKPiBTaWduZWQtb2Zm
LWJ5OiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+IC0tLQo+ICBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndC5oIHwgMjYgKysrKysrKysrKysrKysrKysr
KysrKysrKysKPiAgMSBmaWxlIGNoYW5nZWQsIDI2IGluc2VydGlvbnMoKykKPiAgY3JlYXRlIG1v
ZGUgMTAwNjQ0IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0LmgKPiAKPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3QuaCBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L2ludGVsX2d0LmgKPiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+IGluZGV4IDAwMDAw
MDAwMDAwMC4uYjY3MmY4YjAzYmZkCj4gLS0tIC9kZXYvbnVsbAo+ICsrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L2ludGVsX2d0LmgKPiBAQCAtMCwwICsxLDI2IEBACj4gKy8qCj4gKyAqIFNQ
RFgtTGljZW5zZS1JZGVudGlmaWVyOiBNSVQKPiArICoKPiArICogQ29weXJpZ2h0IMKpIDIwMTkg
SW50ZWwgQ29ycG9yYXRpb24KPiArICovCj4gKwo+ICsjaWZuZGVmIF9fSU5URUxfR1RfXwo+ICsj
ZGVmaW5lIF9fSU5URUxfR1RfXwo+ICsKPiArI2luY2x1ZGUgImd0L2ludGVsX2d0X3R5cGVzLmgi
Cj4gKwo+ICsjaW5jbHVkZSAiaW50ZWxfdW5jb3JlLmgiCj4gKwo+ICsjaW5jbHVkZSAiaTkxNV9k
cnYuaCIKPiArCj4gK3N0YXRpYyBpbmxpbmUgc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmd0X3Rv
X2k5MTUoc3RydWN0IGludGVsX2d0ICpndCkKPiArewo+ICsgICAgICAgcmV0dXJuIGNvbnRhaW5l
cl9vZihndCwgc3RydWN0IGRybV9pOTE1X3ByaXZhdGUsIGd0KTsKCk9rLCBJIGNhbiBidXkgdGhh
dCBhIHNpbmdsZSBpOTE1IGRldmljZSB3aWxsIG9ubHkgaGF2ZSBhIHNpbmdsZSBHVCBzbG90LgoK
PiArfQo+ICsKPiArc3RhdGljIGlubGluZSBzdHJ1Y3QgaW50ZWxfdW5jb3JlICpndF90b191bmNv
cmUoc3RydWN0IGludGVsX2d0ICpndCkKPiArewo+ICsgICAgICAgcmV0dXJuICZndF90b19pOTE1
KGd0KS0+dW5jb3JlOwoKQnV0IEkgc3VzcGVjdCBpdCB3aWxsIGJlIGNsZWFuZXIganVzdCB0byBo
YXZlIGEgZ3QtPnVuY29yZSBwb2ludGVyLiBXaXRoCmFueSBsdWNrLCBEYW5pZWxlJ3Mgc3BsaXR0
aW5nIG9mIGRpc3BsYXkgYW5kIEdUIHVuY29yZSBiZWFycyBmcnVpdCBhbmQKaXQgd2lsbCBiZSBk
aXN0aW5jdCB3aXRob3V0IGl0cyBvd24gc2V0IG9mIGxvY2tzLCBwb3dlcndlbGxzIGFuZApjYWNo
ZWxpbmUgcnVsZXMuCi1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZng=
