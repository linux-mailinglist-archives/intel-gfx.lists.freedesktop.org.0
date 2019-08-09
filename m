Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B529988362
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Aug 2019 21:40:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 382C36EE6C;
	Fri,  9 Aug 2019 19:40:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E9596EE6C
 for <intel-gfx@lists.freedesktop.org>; Fri,  9 Aug 2019 19:40:49 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17947600-1500050 for multiple; Fri, 09 Aug 2019 20:40:39 +0100
MIME-Version: 1.0
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190809193456.3836-1-matthew.auld@intel.com>
References: <20190809193456.3836-1-matthew.auld@intel.com>
Message-ID: <156537963702.32306.15895646281026338405@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 09 Aug 2019 20:40:37 +0100
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/gtt: enable GTT cache by
 default
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

UXVvdGluZyBNYXR0aGV3IEF1bGQgKDIwMTktMDgtMDkgMjA6MzQ6NTUpCj4gRm9yIHNvbWUgcGxh
dGZvcm1zIHRoZSBHVFQgY2FjaGUgaXMgYnkgZGVmYXVsdCBub3QgZW5hYmxlZCwgYW5kCj4gY3Vy
cmVudGx5IHdoZXJlIHdlIGV4cGxpY2l0bHkgZW5hYmxlIGl0LCB3ZSBtYWtlIGl0IGNvbmRpdGlv
bmFsIG9uIDJNIEdUVAo+IHBhZ2Ugc3VwcG9ydCwgc2luY2UgdGhlIEJTcGVjIHN0YXRlcyB0aGF0
IHdlIG11c3QgZGlzYWJsZSBpdCBpZiB3ZQo+IGVuYWJsZSAyTS8xRyBwYWdlcy4gVG8gbWFrZSB0
aGlzIG1vcmUgY29uc2lzdGVudCBvcHQgZm9yIGJsYW5rZXQKPiBlbmFibGluZyB0aGUgR1RUIGNh
Y2hlIGZvciBhbGwgcmVsZXZhbnQgZ2VucyBpbiBhIHNpbmdsZSBwbGFjZSwgd2hpbGUKPiBzdGls
bCBrZWVwaW5nIHRoZSBzYW1lIGJlaGF2aW91ciBvZiBjaGVja2luZyBmb3IgMk0gc3VwcG9ydC4K
PiAKPiBCU3BlYzogOTMxNAo+IEJTcGVjOiA0MjMKPiBTaWduZWQtb2ZmLWJ5OiBNYXR0aGV3IEF1
bGQgPG1hdHRoZXcuYXVsZEBpbnRlbC5jb20+Cj4gQ2M6IEpvb25hcyBMYWh0aW5lbiA8am9vbmFz
LmxhaHRpbmVuQGxpbnV4LmludGVsLmNvbT4KPiBDYzogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJp
cy13aWxzb24uY28udWs+Cj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0
dC5jIHwgMjEgKysrKysrKysrKysrKysrKysrKysrCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2lu
dGVsX3BtLmMgICAgIHwgMTIgLS0tLS0tLS0tLS0tCj4gIDIgZmlsZXMgY2hhbmdlZCwgMjEgaW5z
ZXJ0aW9ucygrKSwgMTIgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1f
Z3R0LmMKPiBpbmRleCA4M2EwMmU3NzNjNTguLjcyYTIyN2M0M2UzNSAxMDA2NDQKPiAtLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfZ2VtX2d0dC5jCj4gQEAgLTIwMzUsNiArMjAzNSwyNyBAQCBzdGF0aWMgdm9p
ZCBndHRfd3JpdGVfd29ya2Fyb3VuZHMoc3RydWN0IGludGVsX2d0ICpndCkKPiAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICBHRU44X0dBTVdfRUNPX0RFVl9SV19JQSwKPiAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAwLAo+ICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgIEdBTVdfRUNPX0VOQUJMRV82NEtfSVBTX0ZJRUxEKTsKPiArCj4gKyAgICAgICBpZiAo
SVNfR0VOX1JBTkdFKGk5MTUsIDgsIDExKSkgewo+ICsgICAgICAgICAgICAgICBib29sIGNhbl91
c2VfZ3R0X2NhY2hlID0gdHJ1ZTsKPiArCj4gKyAgICAgICAgICAgICAgIC8qCj4gKyAgICAgICAg
ICAgICAgICAqIEFjY29yZGluZyB0byB0aGUgQlNwZWMgaWYgd2UgdXNlIDJNLzFHIHBhZ2VzIHRo
ZW4gd2UgYWxzbwo+ICsgICAgICAgICAgICAgICAgKiBuZWVkIHRvIGRpc2FibGUgdGhlIEdUVCBj
YWNoZS4gQXQgbGVhc3Qgb24gQkRXIHdlIGNhbiBzZWUKPiArICAgICAgICAgICAgICAgICogdmlz
dWFsIGNvcnJ1cHRpb24gd2hlbiB1c2luZyAyTSBwYWdlcywgYW5kIG5vdCBkaXNhYmxpbmcgdGhl
Cj4gKyAgICAgICAgICAgICAgICAqIEdUVCBjYWNoZS4KPiArICAgICAgICAgICAgICAgICovCj4g
KyAgICAgICAgICAgICAgIGlmIChIQVNfUEFHRV9TSVpFUyhpOTE1LCBJOTE1X0dUVF9QQUdFX1NJ
WkVfMk0pKQo+ICsgICAgICAgICAgICAgICAgICAgICAgIGNhbl91c2VfZ3R0X2NhY2hlID0gZmFs
c2U7Cj4gKwo+ICsgICAgICAgICAgICAgICAvKiBXYUd0dENhY2hpbmdPZmZCeURlZmF1bHQgKi8K
PiArICAgICAgICAgICAgICAgaW50ZWxfdW5jb3JlX3dyaXRlKHVuY29yZSwKPiArICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIEhTV19HVFRfQ0FDSEVfRU4sCj4gKyAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICBjYW5fdXNlX2d0dF9jYWNoZSA/IEdUVF9DQUNIRV9FTl9B
TEwgOiAwKTsKPiArICAgICAgICAgICAgICAgV0FSTl9PTl9PTkNFKGNhbl91c2VfZ3R0X2NhY2hl
ICYmCj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICBpbnRlbF91bmNvcmVfcmVhZCh1bmNv
cmUsCj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBIU1df
R1RUX0NBQ0hFX0VOKSA9PSAwKTsKCkkgd291bGQgb3B0IGZvciBHRU1fREVCVUdfV0FSTl9PTigp
IGFuZCBhZGRpbmcgaXQgdG8gdGhlIGVycm9yIHN0YXRlLgoKVGhpcyBpcyBhIG11Y2ggbW9yZSBz
ZW5zaWJsZSBwbGFjZS4KUmV2aWV3ZWQtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2ls
c29uLmNvLnVrPgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4
