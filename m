Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C418FE005
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Nov 2019 15:26:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F3ADD6E604;
	Fri, 15 Nov 2019 14:26:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 86E826E604
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Nov 2019 14:26:28 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19213938-1500050 for multiple; Fri, 15 Nov 2019 14:26:20 +0000
MIME-Version: 1.0
To: Abdiel Janulgue <abdiel.janulgue@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <157382605675.11997.15122826569608431814@skylake-alporthouse-com>
References: <20191115114549.23716-1-abdiel.janulgue@linux.intel.com>
 <20191115114549.23716-3-abdiel.janulgue@linux.intel.com>
 <157382605675.11997.15122826569608431814@skylake-alporthouse-com>
Message-ID: <157382797763.11997.9993566909517942835@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 15 Nov 2019 14:26:17 +0000
Subject: Re: [Intel-gfx] [PATCH 3/4] drm/i915: cpu-map based dumb buffers
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
Cc: Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMTEtMTUgMTM6NTQ6MTYpCj4gUXVvdGluZyBBYmRp
ZWwgSmFudWxndWUgKDIwMTktMTEtMTUgMTE6NDU6NDgpCj4gPiBQcmVmZXIgQ1BVIFdDIG1tYXBz
IHZpYSBvdXIgbmV3IG1tYXAgb2Zmc2V0IHBsdW1iaW5nIG90aGVyd2lzZSBmYWxsLQo+ID4gYmFj
ayB0byBHVFQgbW1hcHMgd2hlbiBodyBkb2Vzbid0IHN1cHBvcnQgUEFUCj4gPiAKPiA+IFNpZ25l
ZC1vZmYtYnk6IEFiZGllbCBKYW51bGd1ZSA8YWJkaWVsLmphbnVsZ3VlQGxpbnV4LmludGVsLmNv
bT4KPiA+IENjOiBNYXR0aGV3IEF1bGQgPG1hdHRoZXcuYXVsZEBpbnRlbC5jb20+Cj4gPiAtLS0K
PiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fbW1hbi5jIHwgMTggKysrKysr
KysrKysrKysrKysrCj4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX21tYW4u
aCB8ICAyICsrCj4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYyAgICAgICAgICB8
ICAxICsKPiA+ICAzIGZpbGVzIGNoYW5nZWQsIDIxIGluc2VydGlvbnMoKykKPiA+IAo+ID4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9tbWFuLmMgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fbW1hbi5jCj4gPiBpbmRleCBkMmVkOGE0NjM2
NzIuLmMxNzU2ZTRmNDZiOSAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dl
bS9pOTE1X2dlbV9tbWFuLmMKPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1
X2dlbV9tbWFuLmMKPiA+IEBAIC01NDAsNiArNTQwLDI0IEBAIF9fYXNzaWduX2dlbV9vYmplY3Rf
bW1hcF9kYXRhKHN0cnVjdCBkcm1fZmlsZSAqZmlsZSwKPiA+ICAgICAgICAgcmV0dXJuIHJldDsK
PiA+ICB9Cj4gPiAgCj4gPiAraW50Cj4gPiAraTkxNV9nZW1fbW1hcF9kdW1iKHN0cnVjdCBkcm1f
ZmlsZSAqZmlsZSwKPiA+ICsgICAgICAgICAgICAgICAgIHN0cnVjdCBkcm1fZGV2aWNlICpkZXYs
Cj4gPiArICAgICAgICAgICAgICAgICB1MzIgaGFuZGxlLAo+ID4gKyAgICAgICAgICAgICAgICAg
dTY0ICpvZmZzZXQpCj4gPiArewo+ID4gKyAgICAgICBlbnVtIGk5MTVfbW1hcF90eXBlIG1tYXBf
dHlwZTsKPiA+ICsKPiA+ICsgICAgICAgaWYgKGJvb3RfY3B1X2hhcyhYODZfRkVBVFVSRV9QQVQp
KQo+ID4gKyAgICAgICAgICAgICAgIG1tYXBfdHlwZSA9IEk5MTVfTU1BUF9UWVBFX1dDOwo+ID4g
KyAgICAgICBlbHNlIGlmICghaTkxNV9nZ3R0X2hhc19hcGVydHVyZSgmdG9faTkxNShkZXYpLT5n
Z3R0KSkKPiA+ICsgICAgICAgICAgICAgICByZXR1cm4gLUVOT0RFVjsKPiA+ICsgICAgICAgZWxz
ZQo+ID4gKyAgICAgICAgICAgICAgIG1tYXBfdHlwZSA9IEk5MTVfTU1BUF9UWVBFX0dUVDsKPiA+
ICsKPiA+ICsgICAgICAgcmV0dXJuIF9fYXNzaWduX2dlbV9vYmplY3RfbW1hcF9kYXRhKGZpbGUs
IGhhbmRsZSwgbW1hcF90eXBlLCBvZmZzZXQpOwo+IAo+IExvb2tzIG9rLiBKdXN0IGEgZmV3IG5h
Z2dpbmcgZG91YnRzIGFib3V0IHBvdGVudGlhbCBleGlzdGluZyBtaXN1c2UgYnkKPiB1c2Vyc3Bh
Y2UsIHN1Y2ggYXMgYXJlIHZlcnkgdXNpbmcgdGlsaW5nIG9uIHRoZWlyIGR1bWIgYnVmZmVyLCBh
cmUgdGhleQo+IHBhc3NpbmcgaW4gYSBub24tZHVtYiBoYW5kbGU/CgpBY2tlZC1ieTogQ2hyaXMg
V2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+CgpVc2Vyc3BhY2UgcmV2aWV3IHBlbmRp
bmcuCi1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
