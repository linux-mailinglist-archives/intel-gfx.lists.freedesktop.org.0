Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2559981662
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Aug 2019 12:06:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 889EE6E3D6;
	Mon,  5 Aug 2019 10:06:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DB9C86E3D6
 for <intel-gfx@lists.freedesktop.org>; Mon,  5 Aug 2019 10:06:40 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Aug 2019 03:06:40 -0700
X-IronPort-AV: E=Sophos;i="5.64,349,1559545200"; d="scan'208";a="325272437"
Received: from ideak-desk.fi.intel.com ([10.237.68.142])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Aug 2019 03:06:38 -0700
Date: Mon, 5 Aug 2019 13:05:56 +0300
From: Imre Deak <imre.deak@intel.com>
To: Anshuman Gupta <anshuman.gupta@intel.com>
Message-ID: <20190805100556.GA18784@ideak-desk.fi.intel.com>
References: <20190731033324.6031-1-anshuman.gupta@intel.com>
 <20190805094519.GA5361@ideak-desk.fi.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190805094519.GA5361@ideak-desk.fi.intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/icl: Remove DDI IO power domain
 from PG3 power domains
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
Reply-To: imre.deak@intel.com
Cc: intel-gfx@lists.freedesktop.org, Syrjala Ville <ville.syrjala@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCBBdWcgMDUsIDIwMTkgYXQgMTI6NDk6MTNQTSArMDMwMCwgSW1yZSBEZWFrIHdyb3Rl
Ogo+IE9uIFdlZCwgSnVsIDMxLCAyMDE5IGF0IDA5OjAzOjI0QU0gKzA1MzAsIEFuc2h1bWFuIEd1
cHRhIHdyb3RlOgo+IAo+ID4gRERJIElPIHBvd2VyIGRvbWFpbiBhcmUgaW4gSU8vUEhZL0FGRSBw
b3dlciBkb21haW5zLiAgV2hpY2ggZG9lcyBub3QKPiA+IHJlcXVpcmUgUEczIHBvd2VyIHdlbGwg
dG8gYmUgZW5hYmxlLgo+IAo+IFRoYW5rcyBmb3IgdHJhY2tpbmcgdGhpcyBkb3duLgo+IAo+IElt
byB0aGUgY29tbWl0IG1lc3NhZ2Ugd291bGQgYmUgY2xlYXJlciBieSBzYXlpbmc6Cj4gCj4gVGhl
IERESS1JTyBwb3dlciB3ZWxscyBhcmUgYmFja2luZyB0aGUgSU8vUEhZIGZ1bmN0aW9uYWxpdHkg
d2hpY2gKPiBkb2Vzbid0IG5lZWQgdGhlIFBHMyBwb3dlciBwb3dlciB3ZWxsLiBBY2NvcmRpbmds
eSBmaXggdXAgdGhlIGxpc3Qgb2YKPiBQRzMgcG93ZXIgZG9tYWlucy4KPiAKPiA+IE1JUEkgRFNJ
IGR1YWwgbGluayBnZXRzICJEREkgQiIgSU8gcG93ZXIgZG9tYWluIHJlZmVyZW5jZSBjb3VudCB3
aGljaAo+ID4gZW5hYmxlcyBQRzMgc2luY2UgIkRESSBCIiBJTyBwb3dlciBkb21haW4gaXMgcGFy
dCBvZiBQRzMgcG93ZXIgZG9tYWluLAo+ID4gdGhhdCBtYWtlcyBwb3dlciBsZWFrYWdlIGluIE1J
UEkgRFNJIGR1YWwgbGluayB1c2UgY2FzZS4KPiAKPiA+IAo+ID4gQ2M6IERlYWsgSW1yZSA8aW1y
ZS5kZWFrQGludGVsLmNvbT4KPiA+IENjOiBTeXJqYWxhIFZpbGxlIDx2aWxsZS5zeXJqYWxhQGlu
dGVsLmNvbT4KPiA+IFNpZ25lZC1vZmYtYnk6IEFuc2h1bWFuIEd1cHRhIDxhbnNodW1hbi5ndXB0
YUBpbnRlbC5jb20+Cj4gPiAtLS0KPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2Rpc3BsYXlfcG93ZXIuYyB8IDMgLS0tCj4gPiAgMSBmaWxlIGNoYW5nZWQsIDMgZGVsZXRp
b25zKC0pCj4gPiAKPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2Rpc3BsYXlfcG93ZXIuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGlzcGxheV9wb3dlci5jCj4gPiBpbmRleCBkZDJhNTBiOGJhMGEuLmNhMzNlOGQ0MTIxOCAx
MDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxh
eV9wb3dlci5jCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rp
c3BsYXlfcG93ZXIuYwo+ID4gQEAgLTI0ODIsMTEgKzI0ODIsOCBAQCB2b2lkIGludGVsX2Rpc3Bs
YXlfcG93ZXJfcHV0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKPiA+ICAJQklU
X1VMTChQT1dFUl9ET01BSU5fVFJBTlNDT0RFUl9DKSB8CQlcCj4gPiAgCUJJVF9VTEwoUE9XRVJf
RE9NQUlOX1BJUEVfQl9QQU5FTF9GSVRURVIpIHwJXAo+ID4gIAlCSVRfVUxMKFBPV0VSX0RPTUFJ
Tl9QT1JUX0RESV9CX0xBTkVTKSB8CVwKPiA+IC0JQklUX1VMTChQT1dFUl9ET01BSU5fUE9SVF9E
RElfQl9JTykgfAkJXAo+ID4gIAlCSVRfVUxMKFBPV0VSX0RPTUFJTl9QT1JUX0RESV9DX0xBTkVT
KSB8CVwKPiA+IC0JQklUX1VMTChQT1dFUl9ET01BSU5fUE9SVF9ERElfQ19JTykgfAkJXAo+ID4g
IAlCSVRfVUxMKFBPV0VSX0RPTUFJTl9QT1JUX0RESV9EX0xBTkVTKSB8CVwKPiA+IC0JQklUX1VM
TChQT1dFUl9ET01BSU5fUE9SVF9ERElfRF9JTykgfAkJXAo+ID4gIAlCSVRfVUxMKFBPV0VSX0RP
TUFJTl9QT1JUX0RESV9FX0xBTkVTKSB8CVwKPiA+ICAJQklUX1VMTChQT1dFUl9ET01BSU5fUE9S
VF9ERElfRV9JTykgfAkJXAo+IAo+IFdoYXQgYWJvdXQgdGhlIEUvRiBwb3J0cycgSU8gcG93ZXIg
d2VsbHM/CgpBbHNvIFRHTF9QV18zX1BPV0VSX0RPTUFJTlMgbmVlZHMgdG8gYmUgZml4ZWQgdGhl
IHNhbWUgd2F5LgoKPiAKPiA+ICAJQklUX1VMTChQT1dFUl9ET01BSU5fUE9SVF9ERElfRl9MQU5F
UykgfAlcCj4gPiAtLSAKPiA+IDIuMjEuMAo+ID4gCj4gX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KPiBJbnRlbC1nZnggbWFpbGluZyBsaXN0Cj4gSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLWdmeA==
