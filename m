Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 56BD5F14CD
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Nov 2019 12:17:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ADB846E1E0;
	Wed,  6 Nov 2019 11:17:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 269476E1E0
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Nov 2019 11:17:37 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19100453-1500050 for multiple; Wed, 06 Nov 2019 11:17:32 +0000
MIME-Version: 1.0
To: Arkadiusz Hiler <arkadiusz.hiler@intel.com>,
 Matthew Auld <matthew.william.auld@gmail.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20191106083037.7bylgel7e3q37kht@ahiler-desk1.fi.intel.com>
References: <20191029165134.28567-1-matthew.auld@intel.com>
 <CAM0jSHO3McVPWCLszV30bp2wydF0TDB4pGriW05ZVBPBg0Tuuw@mail.gmail.com>
 <20191031124035.g2grwflwdu5wfobe@ahiler-desk1.fi.intel.com>
 <157255440040.14271.9619311111483787344@skylake-alporthouse-com>
 <CAM0jSHMq0jhS+CMJbgEo=4BJRUCqMTa-Qu4B_jTSTCE5V_8WWA@mail.gmail.com>
 <20191106083037.7bylgel7e3q37kht@ahiler-desk1.fi.intel.com>
Message-ID: <157303904973.24928.5397179241917221252@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Wed, 06 Nov 2019 11:17:29 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915/lmem: add the fake lmem region
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBBcmthZGl1c3ogSGlsZXIgKDIwMTktMTEtMDYgMDg6MzA6MzcpCj4gT24gVHVlLCBO
b3YgMDUsIDIwMTkgYXQgMDE6MDU6MjBQTSArMDAwMCwgTWF0dGhldyBBdWxkIHdyb3RlOgo+ID4g
T24gVGh1LCAzMSBPY3QgMjAxOSBhdCAyMDo0MCwgQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13
aWxzb24uY28udWs+IHdyb3RlOgo+ID4gPgo+ID4gPiBRdW90aW5nIEFya2FkaXVzeiBIaWxlciAo
MjAxOS0xMC0zMSAxMjo0MDozNSkKPiA+ID4gPiBPbiBXZWQsIE9jdCAzMCwgMjAxOSBhdCAxMDoy
MjozN1BNICswMDAwLCBNYXR0aGV3IEF1bGQgd3JvdGU6Cj4gPiA+ID4gPiBPbiBUdWUsIDI5IE9j
dCAyMDE5IGF0IDE2OjUxLCBNYXR0aGV3IEF1bGQgPG1hdHRoZXcuYXVsZEBpbnRlbC5jb20+IHdy
b3RlOgo+ID4gPiA+ID4gPgo+ID4gPiA+ID4gPiBJbnRlbmRlZCBmb3IgdXBzdHJlYW0gdGVzdGlu
ZyBzbyB0aGF0IHdlIGNhbiBzdGlsbCBleGVyY2lzZSB0aGUgTE1FTQo+ID4gPiA+ID4gPiBwbHVt
YmluZyBhbmQgIWk5MTVfZ2d0dF9oYXNfYXBlcnR1cmUgcGF0aHMuIFNtb2tlIHRlc3RlZCBvbiBT
a3VsbCBDYW55b24KPiA+ID4gPiA+ID4gZGV2aWNlLiBUaGlzIHdvcmtzIGJ5IGFsbG9jYXRpbmcg
YW4gaW50ZWxfbWVtb3J5X3JlZ2lvbiBmb3IgYSByZXNlcnZlZAo+ID4gPiA+ID4gPiBwb3J0aW9u
IG9mIHN5c3RlbSBtZW1vcnksIHdoaWNoIHdlIHRyZWF0IGxpa2UgTE1FTS4gRm9yIHRoZSBMTUVN
QkFSIHdlCj4gPiA+ID4gPiA+IHN0ZWFsIHRoZSBhcGVydHVyZSBhbmQgMToxIGl0IG1hcCB0byB0
aGUgc3RvbGVuIHJlZ2lvbi4KPiA+ID4gPiA+ID4KPiA+ID4gPiA+ID4gVG8gZW5hYmxlIHNpbXBs
eSBzZXQgdGhlIGk5MTUgbW9kcGFyYW0gZmFrZV9sbWVtX3N0YXJ0PSBvbiB0aGUga2VybmVsCj4g
PiA+ID4gPiA+IGNtZGxpbmUgd2l0aCB0aGUgc3RhcnQgb2YgcmVzZXJ2ZWQgcmVnaW9uKHNlZSBt
ZW1tYXA9KS4gVGhlIHNpemUgb2YgdGhlCj4gPiA+ID4gPiA+IHJlZ2lvbiB3ZSBjYW4gdXNlIGlz
IGRldGVybWluZWQgYnkgdGhlIHNpemUgb2YgdGhlIG1hcHBhYmxlIGFwZXJ0dXJlLCBzbwo+ID4g
PiA+ID4gPiB0aGUgc2l6ZSBvZiByZXNlcnZlZCByZWdpb24gc2hvdWxkIGJlID49IG1hcHBhYmxl
X2VuZC4gRm9yIG5vdyB3ZSBvbmx5Cj4gPiA+ID4gPiA+IGVuYWJsZSBmb3IgdGhlIHNlbGZ0ZXN0
cy4gRGVwZW5kcyBvbiBDT05GSUdfRFJNX0k5MTVfVU5TVEFCTEUgYmVpbmcKPiA+ID4gPiA+ID4g
ZW5hYmxlZC4KPiA+ID4gPiA+ID4KPiA+ID4gPiA+ID4gZWcuIG1lbW1hcD0yRyQxNkcgaTkxNS5m
YWtlX2xtZW1fc3RhcnQ9MHg0MDAwMDAwMDAKPiA+ID4gPiA+Cj4gPiA+ID4gPiBIaSBBcmVrLAo+
ID4gPiA+ID4KPiA+ID4gPiA+IFdvdWxkIHlvdSBiZSBhYmxlIHRvIHVwZGF0ZSB0aGUgZmktc2ts
LWxtZW0ga2VybmVsIGNtZCBsaW5lIHdpdGgKPiA+ID4gPiA+IHMvaTkxNV9mYWtlX2xtZW1fc3Rh
cnQvaTkxNS5mYWtlX2xtZW1fc3RhcnQ/Cj4gPiA+ID4KPiA+ID4gPiBkb25lCj4gPiA+Cj4gPiA+
IDw2PlsgIDQ5Ny44OTc0NTZdIFtkcm1dIEludGVsIGdyYXBoaWNzIGZha2UgTE1FTTogW21lbSAw
eDEwMDAwMDAwMC0weDEzZmZmZmZmZl0KPiA+ID4gPDY+WyAgNDk3Ljg5NzQ1OV0gW2RybV0gSW50
ZWwgZ3JhcGhpY3MgZmFrZSBMTUVNIElPIHN0YXJ0OiA0MDAwMDAwMAo+ID4gPiA8Nj5bICA0OTcu
ODk3NDYxXSBbZHJtXSBJbnRlbCBncmFwaGljcyBmYWtlIExNRU0gc2l6ZTogNDAwMDAwMDAKPiA+
ID4KPiA+ID4gQWxsIHByZXNlbnQuCj4gPiAKPiA+IEFyZWssCj4gPiAKPiA+IENvdWxkIHdlIGVu
YWJsZSBEUk1fSTkxNV9VTlNUQUJMRV9GQUtFX0xNRU0gaW4gQ0k/IFRoYXQgc2hvdWxkIGdpdmUg
dXMKPiA+IHNvbWUgY292ZXJhZ2Ugb2YgdGhlIGZha2UgbG9jYWwtbWVtb3J5IHNldHVwIG9uIGZp
LXNrbC1sbWVtLgo+IAo+IEhleSwKPiAKPiAgIGNvbmZpZyBEUk1fSTkxNV9VTlNUQUJMRQo+ICAg
ICAgICAgICBib29sICJFbmFibGUgdW5zdGFibGUgQVBJIGZvciBlYXJseSBwcm90b3R5cGUgZGV2
ZWxvcG1lbnQiCj4gICAgICAgICAgIGRlcGVuZHMgb24gRVhQRVJUCj4gICAgICAgICAgIGRlcGVu
ZHMgb24gU1RBR0lORwo+ICAgICAgICAgICBkZXBlbmRzIG9uIEJST0tFTiAjIHNob3VsZCBuZXZl
ciBiZSBlbmFibGVkIGJ5IGRpc3Ryb3MhCj4gCj4gICBjb25maWcgRFJNX0k5MTVfVU5TVEFCTEVf
RkFLRV9MTUVNCj4gICAgICAgICAgIGJvb2wgIkVuYWJsZSB0aGUgZXhwZXJpbWVudGFsIGZha2Ug
bG1lbSIKPiAgICAgICAgICAgZGVwZW5kcyBvbiBEUk1fSTkxNV9VTlNUQUJMRQo+IAo+IEFGQUlV
IGJlY2F1c2Ugb2YgdGhhdCBkZXBlbmRlbmN5IG9uIENPTkZJR19CUk9LRU4gd2UgY2Fubm90IGp1
c3QgZW5hYmxlCj4gaXQgdGhyb3VnaCAuY29uZmlnIC0gd2UgaGF2ZSB0byBlZGl0IHRoZSB2YWx1
ZSBpbiBpbml0L0tjb25maWdbMF0uCgpCZWZvcmUgdGhlIHJldmVydCBsYXN0IG5pZ2h0LCBDT05G
SUdfQlJPS0VOIHdhcyBhbHJlYWR5IGVuYWJsZWQgaW4KQ0kuIEl0J3Mgbm93IGVuYWJsZWQgYWdh
aW4uIFRoZSBhYm92ZSBvdXRwdXQgd2FzIGZyb20gQ0kgc2V0dGluZyB1cCBsbWVtCndpdGhvdXQg
ZXh0cmEgaGFja2VyeS4KLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeA==
