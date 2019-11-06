Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AE475F1112
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Nov 2019 09:30:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 946CF6EC49;
	Wed,  6 Nov 2019 08:30:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 760406EC49
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Nov 2019 08:30:42 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Nov 2019 00:30:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,274,1569308400"; d="scan'208";a="205256087"
Received: from irsmsx101.ger.corp.intel.com ([163.33.3.153])
 by orsmga003.jf.intel.com with ESMTP; 06 Nov 2019 00:30:40 -0800
Received: from ahiler-desk1.fi.intel.com (10.237.68.143) by
 IRSMSX101.ger.corp.intel.com (163.33.3.153) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 6 Nov 2019 08:30:39 +0000
Date: Wed, 6 Nov 2019 10:30:37 +0200
From: Arkadiusz Hiler <arkadiusz.hiler@intel.com>
To: Matthew Auld <matthew.william.auld@gmail.com>
Message-ID: <20191106083037.7bylgel7e3q37kht@ahiler-desk1.fi.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-Patchwork-Hint: comment
References: <20191029165134.28567-1-matthew.auld@intel.com>
 <CAM0jSHO3McVPWCLszV30bp2wydF0TDB4pGriW05ZVBPBg0Tuuw@mail.gmail.com>
 <20191031124035.g2grwflwdu5wfobe@ahiler-desk1.fi.intel.com>
 <157255440040.14271.9619311111483787344@skylake-alporthouse-com>
 <CAM0jSHMq0jhS+CMJbgEo=4BJRUCqMTa-Qu4B_jTSTCE5V_8WWA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAM0jSHMq0jhS+CMJbgEo=4BJRUCqMTa-Qu4B_jTSTCE5V_8WWA@mail.gmail.com>
X-Originating-IP: [10.237.68.143]
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

T24gVHVlLCBOb3YgMDUsIDIwMTkgYXQgMDE6MDU6MjBQTSArMDAwMCwgTWF0dGhldyBBdWxkIHdy
b3RlOgo+IE9uIFRodSwgMzEgT2N0IDIwMTkgYXQgMjA6NDAsIENocmlzIFdpbHNvbiA8Y2hyaXNA
Y2hyaXMtd2lsc29uLmNvLnVrPiB3cm90ZToKPiA+Cj4gPiBRdW90aW5nIEFya2FkaXVzeiBIaWxl
ciAoMjAxOS0xMC0zMSAxMjo0MDozNSkKPiA+ID4gT24gV2VkLCBPY3QgMzAsIDIwMTkgYXQgMTA6
MjI6MzdQTSArMDAwMCwgTWF0dGhldyBBdWxkIHdyb3RlOgo+ID4gPiA+IE9uIFR1ZSwgMjkgT2N0
IDIwMTkgYXQgMTY6NTEsIE1hdHRoZXcgQXVsZCA8bWF0dGhldy5hdWxkQGludGVsLmNvbT4gd3Jv
dGU6Cj4gPiA+ID4gPgo+ID4gPiA+ID4gSW50ZW5kZWQgZm9yIHVwc3RyZWFtIHRlc3Rpbmcgc28g
dGhhdCB3ZSBjYW4gc3RpbGwgZXhlcmNpc2UgdGhlIExNRU0KPiA+ID4gPiA+IHBsdW1iaW5nIGFu
ZCAhaTkxNV9nZ3R0X2hhc19hcGVydHVyZSBwYXRocy4gU21va2UgdGVzdGVkIG9uIFNrdWxsIENh
bnlvbgo+ID4gPiA+ID4gZGV2aWNlLiBUaGlzIHdvcmtzIGJ5IGFsbG9jYXRpbmcgYW4gaW50ZWxf
bWVtb3J5X3JlZ2lvbiBmb3IgYSByZXNlcnZlZAo+ID4gPiA+ID4gcG9ydGlvbiBvZiBzeXN0ZW0g
bWVtb3J5LCB3aGljaCB3ZSB0cmVhdCBsaWtlIExNRU0uIEZvciB0aGUgTE1FTUJBUiB3ZQo+ID4g
PiA+ID4gc3RlYWwgdGhlIGFwZXJ0dXJlIGFuZCAxOjEgaXQgbWFwIHRvIHRoZSBzdG9sZW4gcmVn
aW9uLgo+ID4gPiA+ID4KPiA+ID4gPiA+IFRvIGVuYWJsZSBzaW1wbHkgc2V0IHRoZSBpOTE1IG1v
ZHBhcmFtIGZha2VfbG1lbV9zdGFydD0gb24gdGhlIGtlcm5lbAo+ID4gPiA+ID4gY21kbGluZSB3
aXRoIHRoZSBzdGFydCBvZiByZXNlcnZlZCByZWdpb24oc2VlIG1lbW1hcD0pLiBUaGUgc2l6ZSBv
ZiB0aGUKPiA+ID4gPiA+IHJlZ2lvbiB3ZSBjYW4gdXNlIGlzIGRldGVybWluZWQgYnkgdGhlIHNp
emUgb2YgdGhlIG1hcHBhYmxlIGFwZXJ0dXJlLCBzbwo+ID4gPiA+ID4gdGhlIHNpemUgb2YgcmVz
ZXJ2ZWQgcmVnaW9uIHNob3VsZCBiZSA+PSBtYXBwYWJsZV9lbmQuIEZvciBub3cgd2Ugb25seQo+
ID4gPiA+ID4gZW5hYmxlIGZvciB0aGUgc2VsZnRlc3RzLiBEZXBlbmRzIG9uIENPTkZJR19EUk1f
STkxNV9VTlNUQUJMRSBiZWluZwo+ID4gPiA+ID4gZW5hYmxlZC4KPiA+ID4gPiA+Cj4gPiA+ID4g
PiBlZy4gbWVtbWFwPTJHJDE2RyBpOTE1LmZha2VfbG1lbV9zdGFydD0weDQwMDAwMDAwMAo+ID4g
PiA+Cj4gPiA+ID4gSGkgQXJlaywKPiA+ID4gPgo+ID4gPiA+IFdvdWxkIHlvdSBiZSBhYmxlIHRv
IHVwZGF0ZSB0aGUgZmktc2tsLWxtZW0ga2VybmVsIGNtZCBsaW5lIHdpdGgKPiA+ID4gPiBzL2k5
MTVfZmFrZV9sbWVtX3N0YXJ0L2k5MTUuZmFrZV9sbWVtX3N0YXJ0Pwo+ID4gPgo+ID4gPiBkb25l
Cj4gPgo+ID4gPDY+WyAgNDk3Ljg5NzQ1Nl0gW2RybV0gSW50ZWwgZ3JhcGhpY3MgZmFrZSBMTUVN
OiBbbWVtIDB4MTAwMDAwMDAwLTB4MTNmZmZmZmZmXQo+ID4gPDY+WyAgNDk3Ljg5NzQ1OV0gW2Ry
bV0gSW50ZWwgZ3JhcGhpY3MgZmFrZSBMTUVNIElPIHN0YXJ0OiA0MDAwMDAwMAo+ID4gPDY+WyAg
NDk3Ljg5NzQ2MV0gW2RybV0gSW50ZWwgZ3JhcGhpY3MgZmFrZSBMTUVNIHNpemU6IDQwMDAwMDAw
Cj4gPgo+ID4gQWxsIHByZXNlbnQuCj4gCj4gQXJlaywKPiAKPiBDb3VsZCB3ZSBlbmFibGUgRFJN
X0k5MTVfVU5TVEFCTEVfRkFLRV9MTUVNIGluIENJPyBUaGF0IHNob3VsZCBnaXZlIHVzCj4gc29t
ZSBjb3ZlcmFnZSBvZiB0aGUgZmFrZSBsb2NhbC1tZW1vcnkgc2V0dXAgb24gZmktc2tsLWxtZW0u
CgpIZXksCgogIGNvbmZpZyBEUk1fSTkxNV9VTlNUQUJMRQoJICBib29sICJFbmFibGUgdW5zdGFi
bGUgQVBJIGZvciBlYXJseSBwcm90b3R5cGUgZGV2ZWxvcG1lbnQiCgkgIGRlcGVuZHMgb24gRVhQ
RVJUCgkgIGRlcGVuZHMgb24gU1RBR0lORwoJICBkZXBlbmRzIG9uIEJST0tFTiAjIHNob3VsZCBu
ZXZlciBiZSBlbmFibGVkIGJ5IGRpc3Ryb3MhCgogIGNvbmZpZyBEUk1fSTkxNV9VTlNUQUJMRV9G
QUtFX0xNRU0KCSAgYm9vbCAiRW5hYmxlIHRoZSBleHBlcmltZW50YWwgZmFrZSBsbWVtIgoJICBk
ZXBlbmRzIG9uIERSTV9JOTE1X1VOU1RBQkxFCgpBRkFJVSBiZWNhdXNlIG9mIHRoYXQgZGVwZW5k
ZW5jeSBvbiBDT05GSUdfQlJPS0VOIHdlIGNhbm5vdCBqdXN0IGVuYWJsZQppdCB0aHJvdWdoIC5j
b25maWcgLSB3ZSBoYXZlIHRvIGVkaXQgdGhlIHZhbHVlIGluIGluaXQvS2NvbmZpZ1swXS4KClBs
ZWFzZSBwdXNoIHRoYXQgY2hhbmdlIHRvIGNvcmUtZm9yLUNJIChvciBvdGhlciBicmFuY2ggdGhh
dCBnZXRzCmludGVncmF0ZWQgaW50byBkcm0tdGlwKSBhbmQgdGhlbiBqdXN0IHNlbmQgYSBtZXJn
ZSByZXF1ZXN0IHRvIHRoZQprZXJuZWwgY29uZmlncyB0aGUgQ0kgaXMgdXNpbmdbMV0uCgpbMF06
IGh0dHBzOi8vbGttbC5vcmcvbGttbC8yMDA2LzEvNi8yNDgKWzFdOiBodHRwczovL2dpdGxhYi5m
cmVlZGVza3RvcC5vcmcvZ2Z4LWNpL2k5MTUtaW5mcmEvdHJlZS9tYXN0ZXIva2NvbmZpZwoKLS0g
CkNoZWVycywKQXJlawpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
Zng=
