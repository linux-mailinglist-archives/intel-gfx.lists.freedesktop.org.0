Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 90012F17CA
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Nov 2019 14:58:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C7B8C6ED6F;
	Wed,  6 Nov 2019 13:58:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A7B9C6ED71
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Nov 2019 13:58:52 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Nov 2019 05:58:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,274,1569308400"; d="scan'208";a="196214930"
Received: from irsmsx101.ger.corp.intel.com ([163.33.3.153])
 by orsmga008.jf.intel.com with ESMTP; 06 Nov 2019 05:58:50 -0800
Received: from ahiler-desk1.fi.intel.com (10.237.68.143) by
 IRSMSX101.ger.corp.intel.com (163.33.3.153) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 6 Nov 2019 13:58:50 +0000
Date: Wed, 6 Nov 2019 15:58:48 +0200
From: Arkadiusz Hiler <arkadiusz.hiler@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20191106135848.ny7kz2df5tp7aj2f@ahiler-desk1.fi.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-Patchwork-Hint: comment
References: <20191029165134.28567-1-matthew.auld@intel.com>
 <CAM0jSHO3McVPWCLszV30bp2wydF0TDB4pGriW05ZVBPBg0Tuuw@mail.gmail.com>
 <20191031124035.g2grwflwdu5wfobe@ahiler-desk1.fi.intel.com>
 <157255440040.14271.9619311111483787344@skylake-alporthouse-com>
 <CAM0jSHMq0jhS+CMJbgEo=4BJRUCqMTa-Qu4B_jTSTCE5V_8WWA@mail.gmail.com>
 <20191106083037.7bylgel7e3q37kht@ahiler-desk1.fi.intel.com>
 <157303904973.24928.5397179241917221252@skylake-alporthouse-com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <157303904973.24928.5397179241917221252@skylake-alporthouse-com>
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

T24gV2VkLCBOb3YgMDYsIDIwMTkgYXQgMTE6MTc6MjlBTSArMDAwMCwgQ2hyaXMgV2lsc29uIHdy
b3RlOgo+IFF1b3RpbmcgQXJrYWRpdXN6IEhpbGVyICgyMDE5LTExLTA2IDA4OjMwOjM3KQo+ID4g
T24gVHVlLCBOb3YgMDUsIDIwMTkgYXQgMDE6MDU6MjBQTSArMDAwMCwgTWF0dGhldyBBdWxkIHdy
b3RlOgo+ID4gPiBPbiBUaHUsIDMxIE9jdCAyMDE5IGF0IDIwOjQwLCBDaHJpcyBXaWxzb24gPGNo
cmlzQGNocmlzLXdpbHNvbi5jby51az4gd3JvdGU6Cj4gPiA+ID4KPiA+ID4gPiBRdW90aW5nIEFy
a2FkaXVzeiBIaWxlciAoMjAxOS0xMC0zMSAxMjo0MDozNSkKPiA+ID4gPiA+IE9uIFdlZCwgT2N0
IDMwLCAyMDE5IGF0IDEwOjIyOjM3UE0gKzAwMDAsIE1hdHRoZXcgQXVsZCB3cm90ZToKPiA+ID4g
PiA+ID4gT24gVHVlLCAyOSBPY3QgMjAxOSBhdCAxNjo1MSwgTWF0dGhldyBBdWxkIDxtYXR0aGV3
LmF1bGRAaW50ZWwuY29tPiB3cm90ZToKPiA+ID4gPiA+ID4gPgo+ID4gPiA+ID4gPiA+IEludGVu
ZGVkIGZvciB1cHN0cmVhbSB0ZXN0aW5nIHNvIHRoYXQgd2UgY2FuIHN0aWxsIGV4ZXJjaXNlIHRo
ZSBMTUVNCj4gPiA+ID4gPiA+ID4gcGx1bWJpbmcgYW5kICFpOTE1X2dndHRfaGFzX2FwZXJ0dXJl
IHBhdGhzLiBTbW9rZSB0ZXN0ZWQgb24gU2t1bGwgQ2FueW9uCj4gPiA+ID4gPiA+ID4gZGV2aWNl
LiBUaGlzIHdvcmtzIGJ5IGFsbG9jYXRpbmcgYW4gaW50ZWxfbWVtb3J5X3JlZ2lvbiBmb3IgYSBy
ZXNlcnZlZAo+ID4gPiA+ID4gPiA+IHBvcnRpb24gb2Ygc3lzdGVtIG1lbW9yeSwgd2hpY2ggd2Ug
dHJlYXQgbGlrZSBMTUVNLiBGb3IgdGhlIExNRU1CQVIgd2UKPiA+ID4gPiA+ID4gPiBzdGVhbCB0
aGUgYXBlcnR1cmUgYW5kIDE6MSBpdCBtYXAgdG8gdGhlIHN0b2xlbiByZWdpb24uCj4gPiA+ID4g
PiA+ID4KPiA+ID4gPiA+ID4gPiBUbyBlbmFibGUgc2ltcGx5IHNldCB0aGUgaTkxNSBtb2RwYXJh
bSBmYWtlX2xtZW1fc3RhcnQ9IG9uIHRoZSBrZXJuZWwKPiA+ID4gPiA+ID4gPiBjbWRsaW5lIHdp
dGggdGhlIHN0YXJ0IG9mIHJlc2VydmVkIHJlZ2lvbihzZWUgbWVtbWFwPSkuIFRoZSBzaXplIG9m
IHRoZQo+ID4gPiA+ID4gPiA+IHJlZ2lvbiB3ZSBjYW4gdXNlIGlzIGRldGVybWluZWQgYnkgdGhl
IHNpemUgb2YgdGhlIG1hcHBhYmxlIGFwZXJ0dXJlLCBzbwo+ID4gPiA+ID4gPiA+IHRoZSBzaXpl
IG9mIHJlc2VydmVkIHJlZ2lvbiBzaG91bGQgYmUgPj0gbWFwcGFibGVfZW5kLiBGb3Igbm93IHdl
IG9ubHkKPiA+ID4gPiA+ID4gPiBlbmFibGUgZm9yIHRoZSBzZWxmdGVzdHMuIERlcGVuZHMgb24g
Q09ORklHX0RSTV9JOTE1X1VOU1RBQkxFIGJlaW5nCj4gPiA+ID4gPiA+ID4gZW5hYmxlZC4KPiA+
ID4gPiA+ID4gPgo+ID4gPiA+ID4gPiA+IGVnLiBtZW1tYXA9MkckMTZHIGk5MTUuZmFrZV9sbWVt
X3N0YXJ0PTB4NDAwMDAwMDAwCj4gPiA+ID4gPiA+Cj4gPiA+ID4gPiA+IEhpIEFyZWssCj4gPiA+
ID4gPiA+Cj4gPiA+ID4gPiA+IFdvdWxkIHlvdSBiZSBhYmxlIHRvIHVwZGF0ZSB0aGUgZmktc2ts
LWxtZW0ga2VybmVsIGNtZCBsaW5lIHdpdGgKPiA+ID4gPiA+ID4gcy9pOTE1X2Zha2VfbG1lbV9z
dGFydC9pOTE1LmZha2VfbG1lbV9zdGFydD8KPiA+ID4gPiA+Cj4gPiA+ID4gPiBkb25lCj4gPiA+
ID4KPiA+ID4gPiA8Nj5bICA0OTcuODk3NDU2XSBbZHJtXSBJbnRlbCBncmFwaGljcyBmYWtlIExN
RU06IFttZW0gMHgxMDAwMDAwMDAtMHgxM2ZmZmZmZmZdCj4gPiA+ID4gPDY+WyAgNDk3Ljg5NzQ1
OV0gW2RybV0gSW50ZWwgZ3JhcGhpY3MgZmFrZSBMTUVNIElPIHN0YXJ0OiA0MDAwMDAwMAo+ID4g
PiA+IDw2PlsgIDQ5Ny44OTc0NjFdIFtkcm1dIEludGVsIGdyYXBoaWNzIGZha2UgTE1FTSBzaXpl
OiA0MDAwMDAwMAo+ID4gPiA+Cj4gPiA+ID4gQWxsIHByZXNlbnQuCj4gPiA+IAo+ID4gPiBBcmVr
LAo+ID4gPiAKPiA+ID4gQ291bGQgd2UgZW5hYmxlIERSTV9JOTE1X1VOU1RBQkxFX0ZBS0VfTE1F
TSBpbiBDST8gVGhhdCBzaG91bGQgZ2l2ZSB1cwo+ID4gPiBzb21lIGNvdmVyYWdlIG9mIHRoZSBm
YWtlIGxvY2FsLW1lbW9yeSBzZXR1cCBvbiBmaS1za2wtbG1lbS4KPiA+IAo+ID4gSGV5LAo+ID4g
Cj4gPiAgIGNvbmZpZyBEUk1fSTkxNV9VTlNUQUJMRQo+ID4gICAgICAgICAgIGJvb2wgIkVuYWJs
ZSB1bnN0YWJsZSBBUEkgZm9yIGVhcmx5IHByb3RvdHlwZSBkZXZlbG9wbWVudCIKPiA+ICAgICAg
ICAgICBkZXBlbmRzIG9uIEVYUEVSVAo+ID4gICAgICAgICAgIGRlcGVuZHMgb24gU1RBR0lORwo+
ID4gICAgICAgICAgIGRlcGVuZHMgb24gQlJPS0VOICMgc2hvdWxkIG5ldmVyIGJlIGVuYWJsZWQg
YnkgZGlzdHJvcyEKPiA+IAo+ID4gICBjb25maWcgRFJNX0k5MTVfVU5TVEFCTEVfRkFLRV9MTUVN
Cj4gPiAgICAgICAgICAgYm9vbCAiRW5hYmxlIHRoZSBleHBlcmltZW50YWwgZmFrZSBsbWVtIgo+
ID4gICAgICAgICAgIGRlcGVuZHMgb24gRFJNX0k5MTVfVU5TVEFCTEUKPiA+IAo+ID4gQUZBSVUg
YmVjYXVzZSBvZiB0aGF0IGRlcGVuZGVuY3kgb24gQ09ORklHX0JST0tFTiB3ZSBjYW5ub3QganVz
dCBlbmFibGUKPiA+IGl0IHRocm91Z2ggLmNvbmZpZyAtIHdlIGhhdmUgdG8gZWRpdCB0aGUgdmFs
dWUgaW4gaW5pdC9LY29uZmlnWzBdLgo+IAo+IEJlZm9yZSB0aGUgcmV2ZXJ0IGxhc3QgbmlnaHQs
IENPTkZJR19CUk9LRU4gd2FzIGFscmVhZHkgZW5hYmxlZCBpbgo+IENJLiBJdCdzIG5vdyBlbmFi
bGVkIGFnYWluLiBUaGUgYWJvdmUgb3V0cHV0IHdhcyBmcm9tIENJIHNldHRpbmcgdXAgbG1lbQo+
IHdpdGhvdXQgZXh0cmEgaGFja2VyeS4KPiAtQ2hyaXMKCkNJX0RSTV83MjY5IHNob3VsZCBoYXZl
IHRoZSBEUk1fSTkxNV9VTlNUQUJMRV9GQUtFX0xNRU0gZW5hYmxlZC4KCi0tIApDaGVlcnMsCkFy
ZWsKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
