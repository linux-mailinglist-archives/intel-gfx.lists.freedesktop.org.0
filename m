Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7295DEB87D
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Oct 2019 21:40:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC3336E125;
	Thu, 31 Oct 2019 20:40:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 515006E125
 for <intel-gfx@lists.freedesktop.org>; Thu, 31 Oct 2019 20:40:15 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19039003-1500050 for multiple; Thu, 31 Oct 2019 20:40:02 +0000
MIME-Version: 1.0
To: Arkadiusz Hiler <arkadiusz.hiler@intel.com>,
 Matthew Auld <matthew.william.auld@gmail.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20191031124035.g2grwflwdu5wfobe@ahiler-desk1.fi.intel.com>
References: <20191029165134.28567-1-matthew.auld@intel.com>
 <CAM0jSHO3McVPWCLszV30bp2wydF0TDB4pGriW05ZVBPBg0Tuuw@mail.gmail.com>
 <20191031124035.g2grwflwdu5wfobe@ahiler-desk1.fi.intel.com>
Message-ID: <157255440040.14271.9619311111483787344@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 31 Oct 2019 20:40:00 +0000
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

UXVvdGluZyBBcmthZGl1c3ogSGlsZXIgKDIwMTktMTAtMzEgMTI6NDA6MzUpCj4gT24gV2VkLCBP
Y3QgMzAsIDIwMTkgYXQgMTA6MjI6MzdQTSArMDAwMCwgTWF0dGhldyBBdWxkIHdyb3RlOgo+ID4g
T24gVHVlLCAyOSBPY3QgMjAxOSBhdCAxNjo1MSwgTWF0dGhldyBBdWxkIDxtYXR0aGV3LmF1bGRA
aW50ZWwuY29tPiB3cm90ZToKPiA+ID4KPiA+ID4gSW50ZW5kZWQgZm9yIHVwc3RyZWFtIHRlc3Rp
bmcgc28gdGhhdCB3ZSBjYW4gc3RpbGwgZXhlcmNpc2UgdGhlIExNRU0KPiA+ID4gcGx1bWJpbmcg
YW5kICFpOTE1X2dndHRfaGFzX2FwZXJ0dXJlIHBhdGhzLiBTbW9rZSB0ZXN0ZWQgb24gU2t1bGwg
Q2FueW9uCj4gPiA+IGRldmljZS4gVGhpcyB3b3JrcyBieSBhbGxvY2F0aW5nIGFuIGludGVsX21l
bW9yeV9yZWdpb24gZm9yIGEgcmVzZXJ2ZWQKPiA+ID4gcG9ydGlvbiBvZiBzeXN0ZW0gbWVtb3J5
LCB3aGljaCB3ZSB0cmVhdCBsaWtlIExNRU0uIEZvciB0aGUgTE1FTUJBUiB3ZQo+ID4gPiBzdGVh
bCB0aGUgYXBlcnR1cmUgYW5kIDE6MSBpdCBtYXAgdG8gdGhlIHN0b2xlbiByZWdpb24uCj4gPiA+
Cj4gPiA+IFRvIGVuYWJsZSBzaW1wbHkgc2V0IHRoZSBpOTE1IG1vZHBhcmFtIGZha2VfbG1lbV9z
dGFydD0gb24gdGhlIGtlcm5lbAo+ID4gPiBjbWRsaW5lIHdpdGggdGhlIHN0YXJ0IG9mIHJlc2Vy
dmVkIHJlZ2lvbihzZWUgbWVtbWFwPSkuIFRoZSBzaXplIG9mIHRoZQo+ID4gPiByZWdpb24gd2Ug
Y2FuIHVzZSBpcyBkZXRlcm1pbmVkIGJ5IHRoZSBzaXplIG9mIHRoZSBtYXBwYWJsZSBhcGVydHVy
ZSwgc28KPiA+ID4gdGhlIHNpemUgb2YgcmVzZXJ2ZWQgcmVnaW9uIHNob3VsZCBiZSA+PSBtYXBw
YWJsZV9lbmQuIEZvciBub3cgd2Ugb25seQo+ID4gPiBlbmFibGUgZm9yIHRoZSBzZWxmdGVzdHMu
IERlcGVuZHMgb24gQ09ORklHX0RSTV9JOTE1X1VOU1RBQkxFIGJlaW5nCj4gPiA+IGVuYWJsZWQu
Cj4gPiA+Cj4gPiA+IGVnLiBtZW1tYXA9MkckMTZHIGk5MTUuZmFrZV9sbWVtX3N0YXJ0PTB4NDAw
MDAwMDAwCj4gPiAKPiA+IEhpIEFyZWssCj4gPiAKPiA+IFdvdWxkIHlvdSBiZSBhYmxlIHRvIHVw
ZGF0ZSB0aGUgZmktc2tsLWxtZW0ga2VybmVsIGNtZCBsaW5lIHdpdGgKPiA+IHMvaTkxNV9mYWtl
X2xtZW1fc3RhcnQvaTkxNS5mYWtlX2xtZW1fc3RhcnQ/Cj4gCj4gZG9uZQoKPDY+WyAgNDk3Ljg5
NzQ1Nl0gW2RybV0gSW50ZWwgZ3JhcGhpY3MgZmFrZSBMTUVNOiBbbWVtIDB4MTAwMDAwMDAwLTB4
MTNmZmZmZmZmXQo8Nj5bICA0OTcuODk3NDU5XSBbZHJtXSBJbnRlbCBncmFwaGljcyBmYWtlIExN
RU0gSU8gc3RhcnQ6IDQwMDAwMDAwCjw2PlsgIDQ5Ny44OTc0NjFdIFtkcm1dIEludGVsIGdyYXBo
aWNzIGZha2UgTE1FTSBzaXplOiA0MDAwMDAwMAoKQWxsIHByZXNlbnQuCi1DaHJpcwpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
