Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E6F198F5EF
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Aug 2019 22:47:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B2466EA72;
	Thu, 15 Aug 2019 20:47:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 05E496EA77
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Aug 2019 20:47:42 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18155879-1500050 for multiple; Thu, 15 Aug 2019 21:47:39 +0100
MIME-Version: 1.0
To: Matthew Auld <matthew.william.auld@gmail.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <CAM0jSHM_Gcj8EayaDFf3Gte1HHKZ-ecbTiPTFTP5vtdX02gjXA@mail.gmail.com>
References: <20190814092643.1908-1-chris@chris-wilson.co.uk>
 <20190814092643.1908-5-chris@chris-wilson.co.uk>
 <CAM0jSHM_Gcj8EayaDFf3Gte1HHKZ-ecbTiPTFTP5vtdX02gjXA@mail.gmail.com>
Message-ID: <156590205728.11610.7063363775741553184@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 15 Aug 2019 21:47:37 +0100
Subject: Re: [Intel-gfx] [PATCH 5/8] drm/i915: Protect request retirement
 with timeline->mutex
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBNYXR0aGV3IEF1bGQgKDIwMTktMDgtMTUgMjE6MzM6MDcpCj4gT24gV2VkLCAxNCBB
dWcgMjAxOSBhdCAxMDoyOCwgQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+
IHdyb3RlOgo+ID4KPiA+IEZvcmdvIHRoZSBzdHJ1Y3RfbXV0ZXggcmVxdWlyZW1lbnQgZm9yIHJl
cXVlc3QgcmV0aXJlbWVudCBhcyB3ZSBoYXZlCj4gPiBiZWVuIHRyYW5zaXRpb25pbmcgb3ZlciB0
byBvbmx5IHVzaW5nIHRoZSB0aW1lbGluZS0+bXV0ZXggZm9yCj4gPiBjb250cm9sbGluZyB0aGUg
bGlmZXRpbWUgb2YgYSByZXF1ZXN0IG9uIHRoYXQgdGltZWxpbmUuCj4gPgo+ID4gU2lnbmVkLW9m
Zi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gPiAtLS0KPiA+
ICAuLi4vZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9leGVjYnVmZmVyLmMgICAgfCAxODMgKysr
KysrKysrKy0tLS0tLS0tCj4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfY29udGV4
dC5oICAgICAgIHwgIDE4ICstCj4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5n
aW5lX2NzLmMgICAgIHwgICAxIC0KPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9l
bmdpbmVfdHlwZXMuaCAgfCAgIDMgLQo+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVs
X2d0LmMgICAgICAgICAgICB8ICAgMiAtCj4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50
ZWxfZ3RfdHlwZXMuaCAgICAgIHwgICAyIC0KPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9p
bnRlbF9scmMuYyAgICAgICAgICAgfCAgIDEgKwo+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L2ludGVsX3JpbmdidWZmZXIuYyAgICB8ICAxOSArLQo+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L21vY2tfZW5naW5lLmMgICAgICAgICB8ICAgMSAtCj4gPiAgZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3Qvc2VsZnRlc3RfY29udGV4dC5jICAgIHwgICA5ICstCj4gPiAgZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9yZXF1ZXN0LmMgICAgICAgICAgIHwgMTU2ICsrKysrKystLS0tLS0tLQo+ID4g
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVxdWVzdC5oICAgICAgICAgICB8ICAgMyAtCj4g
PiAgMTIgZmlsZXMgY2hhbmdlZCwgMjA5IGluc2VydGlvbnMoKyksIDE4OSBkZWxldGlvbnMoLSkK
PiA+Cj4gCj4gPiAgYm9vbCBpOTE1X3JldGlyZV9yZXF1ZXN0cyhzdHJ1Y3QgZHJtX2k5MTVfcHJp
dmF0ZSAqaTkxNSkKPiA+ICB7Cj4gPiAtICAgICAgIHN0cnVjdCBpbnRlbF9yaW5nICpyaW5nLCAq
dG1wOwo+ID4gKyAgICAgICBzdHJ1Y3QgaW50ZWxfZ3RfdGltZWxpbmVzICp0aW1lbGluZXMgPSAm
aTkxNS0+Z3QudGltZWxpbmVzOwo+ID4gKyAgICAgICBzdHJ1Y3QgaW50ZWxfdGltZWxpbmUgKnRs
LCAqdG47Cj4gPiArICAgICAgIExJU1RfSEVBRChmcmVlKTsKPiA+ICsKPiA+ICsgICAgICAgc3Bp
bl9sb2NrKCZ0aW1lbGluZXMtPmxvY2spOwo+ID4gKyAgICAgICBsaXN0X2Zvcl9lYWNoX2VudHJ5
X3NhZmUodGwsIHRuLCAmdGltZWxpbmVzLT5hY3RpdmVfbGlzdCwgbGluaykgewo+ID4gKyAgICAg
ICAgICAgICAgIGlmICghbXV0ZXhfdHJ5bG9jaygmdGwtPm11dGV4KSkKPiA+ICsgICAgICAgICAg
ICAgICAgICAgICAgIGNvbnRpbnVlOwo+ID4KPiA+IC0gICAgICAgbG9ja2RlcF9hc3NlcnRfaGVs
ZCgmaTkxNS0+ZHJtLnN0cnVjdF9tdXRleCk7Cj4gPiArICAgICAgICAgICAgICAgaW50ZWxfdGlt
ZWxpbmVfZ2V0KHRsKTsKPiA+ICsgICAgICAgICAgICAgICBHRU1fQlVHX09OKCF0bC0+YWN0aXZl
X2NvdW50KTsKPiA+ICsgICAgICAgICAgICAgICB0bC0+YWN0aXZlX2NvdW50Kys7IC8qIHBpbiB0
aGUgbGlzdCBlbGVtZW50ICovCj4gPiArICAgICAgICAgICAgICAgc3Bpbl91bmxvY2soJnRpbWVs
aW5lcy0+bG9jayk7Cj4gPgo+ID4gLSAgICAgICBsaXN0X2Zvcl9lYWNoX2VudHJ5X3NhZmUocmlu
ZywgdG1wLAo+ID4gLSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgJmk5MTUtPmd0LmFj
dGl2ZV9yaW5ncywgYWN0aXZlX2xpbmspIHsKPiA+IC0gICAgICAgICAgICAgICBpbnRlbF9yaW5n
X2dldChyaW5nKTsgLyogbGFzdCBycSBob2xkcyByZWZlcmVuY2UhICovCj4gPiAtICAgICAgICAg
ICAgICAgcmluZ19yZXRpcmVfcmVxdWVzdHMocmluZyk7Cj4gPiAtICAgICAgICAgICAgICAgaW50
ZWxfcmluZ19wdXQocmluZyk7Cj4gPiArICAgICAgICAgICAgICAgcmV0aXJlX3JlcXVlc3RzKHRs
KTsKPiA+ICsKPiA+ICsgICAgICAgICAgICAgICBzcGluX2xvY2soJnRpbWVsaW5lcy0+bG9jayk7
Cj4gPiArCj4gPiArICAgICAgICAgICAgICAgLyogUmVzdGFydCBpdGVyYXRpb24gYWZ0ZXIgZHJv
cHBpbmcgbG9jayAqLwo+ID4gKyAgICAgICAgICAgICAgIGxpc3Rfc2FmZV9yZXNldF9uZXh0KHRs
LCB0biwgbGluayk7Cj4gCj4gVGhhdCdzIGEgbmV3IG9uZS4KCkkgd2FzIHF1aXRlIGNodWZmZWQg
d2l0aCB0aGF0IGxvb3AsIGFsbCB0aGUgcGlubmluZyBhY3Jvc3MgdGhlIGxvY2sKZHJvcHBpbmcg
dG8gZW5zdXJlIHRoZSBsaXN0IHN0YXllZCBpbnRhY3QgYW5kIHdlIGNvdWxkIHJlc3VtZSBmcm9t
IHdoZXJlCndlIGxlZnQgb2ZmLgoKQW5kIGlmIGFsbCBnb2VzIHRvIHBsYW4sIHdlIHNob3VsZCBi
ZSByYXJlbHkgdXNpbmcgdGhpcyBsb29wIQotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4
