Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E65EC37905
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jun 2019 18:00:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D610E89807;
	Thu,  6 Jun 2019 16:00:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8DF8589807
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Jun 2019 16:00:25 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Jun 2019 09:00:24 -0700
X-ExtLoop1: 1
Received: from rdvivi-losangeles.jf.intel.com (HELO intel.com) ([10.7.196.65])
 by orsmga002.jf.intel.com with ESMTP; 06 Jun 2019 09:00:24 -0700
Date: Thu, 6 Jun 2019 09:00:56 -0700
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <20190606160056.GF3452@intel.com>
References: <20190605211832.23945-1-matthew.d.roper@intel.com>
 <20190605215107.GA14368@intel.com>
 <20190605221522.GW13184@mdroper-desk.amr.corp.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190605221522.GW13184@mdroper-desk.amr.corp.intel.com>
User-Agent: Mutt/1.11.3 (2019-02-01)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/ehl: Support HBR3 on EHL combo PHY
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
Cc: intel-gfx@lists.freedesktop.org, Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCBKdW4gMDUsIDIwMTkgYXQgMDM6MTU6MjJQTSAtMDcwMCwgTWF0dCBSb3BlciB3cm90
ZToKPiBPbiBXZWQsIEp1biAwNSwgMjAxOSBhdCAwMjo1MTowOFBNIC0wNzAwLCBNYW5hc2kgTmF2
YXJlIHdyb3RlOgo+ID4gT24gV2VkLCBKdW4gMDUsIDIwMTkgYXQgMDI6MTg6MzJQTSAtMDcwMCwg
TWF0dCBSb3BlciB3cm90ZToKPiA+ID4gVW5saWtlIElDTCwgRUhMJ3MgY29tYm8gUEhZcyBjYW4g
c3VwcG9ydCBIQlIzIGRhdGEgcmF0ZXMuICBOb3RlIHRoYXQKPiA+ID4gdGhpcyBqdXN0IGV4dGVu
ZHMgdGhlIHVwcGVyIGxpbWl0OyB3ZSB3aWxsIGNvbnRpbnVlIHRvIGhvbm9yIHRoZSBtYXgKPiA+
ID4gZGF0YSByYXRlIHNwZWNpZmllZCBpbiB0aGUgVkJUIGluIGNhc2VzIHdoZXJlIGl0IGlzIGxv
d2VyIHRoYW4gSEJSMy4KPiA+ID4gCj4gPiA+IFNpZ25lZC1vZmYtYnk6IE1hdHQgUm9wZXIgPG1h
dHRoZXcuZC5yb3BlckBpbnRlbC5jb20+Cj4gPiAKPiA+IFllcyBsb29rcyBnb29kIHRvIG1lLgo+
ID4gCj4gPiBSZXZpZXdlZC1ieTogTWFuYXNpIE5hdmFyZSA8bWFuYXNpLmQubmF2YXJlQGludGVs
LmNvbT4KPiA+IAo+ID4gTWFuYXNpCj4gCj4gVGhhbmtzIGZvciB0aGUgcXVpY2sgcmV2aWV3LiAg
Q0kgbG9va3MgaGFwcHkgdG9vLCBzbyBwdXNoZWQgdG8gZGlucS4KPiAKPiAKPiBNYXR0Cj4gCj4g
PiAKPiA+ID4gLS0tCj4gPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kcC5jIHwgMSAr
Cj4gPiA+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKykKPiA+ID4gCj4gPiA+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kcC5jIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaW50ZWxfZHAuYwo+ID4gPiBpbmRleCAyNGI1NmIyYTc2YzguLmIwOTlhOWRjMjhmZCAx
MDA2NDQKPiA+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZHAuYwo+ID4gPiAr
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kcC5jCj4gPiA+IEBAIC0zMzIsNiArMzMy
LDcgQEAgc3RhdGljIGludCBpY2xfbWF4X3NvdXJjZV9yYXRlKHN0cnVjdCBpbnRlbF9kcCAqaW50
ZWxfZHApCj4gPiA+ICAJZW51bSBwb3J0IHBvcnQgPSBkaWdfcG9ydC0+YmFzZS5wb3J0Owo+ID4g
PiAgCj4gPiA+ICAJaWYgKGludGVsX3BvcnRfaXNfY29tYm9waHkoZGV2X3ByaXYsIHBvcnQpICYm
Cj4gPiA+ICsJICAgICFJU19FTEtIQVJUTEFLRShkZXZfcHJpdikgJiYKCkkgd29uZGVyIGlmIHdl
IHNob3VsZG4ndCB1c2UgSVNfSUNFTEFLRSBpbnN0ZWFkIG9mICFJU19FTEtIQVJUTEFLRSBoZXJl
Li4uCmJ1dCBpdCBzZWVtcyB0byBsYXRlLi4uCgpCdXQgc29tZXRoaW5nIHRvIHJlbWVtYmVyIHRv
IHBheSBhdHRlbnRpb24gb24gYW55IHVwY29taW5nIHBsYXRmb3JtLi4uCgo+ID4gPiAgCSAgICAh
aW50ZWxfZHBfaXNfZWRwKGludGVsX2RwKSkKPiA+ID4gIAkJcmV0dXJuIDU0MDAwMDsKPiA+ID4g
IAo+ID4gPiAtLSAKPiA+ID4gMi4xNC41Cj4gPiA+IAo+ID4gPiBfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+ID4gPiBJbnRlbC1nZnggbWFpbGluZyBsaXN0
Cj4gPiA+IEludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiA+ID4gaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngKPiAKPiAtLSAKPiBN
YXR0IFJvcGVyCj4gR3JhcGhpY3MgU29mdHdhcmUgRW5naW5lZXIKPiBJb1RHIFBsYXRmb3JtIEVu
YWJsaW5nICYgRGV2ZWxvcG1lbnQKPiBJbnRlbCBDb3Jwb3JhdGlvbgo+ICg5MTYpIDM1Ni0yNzk1
Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBJbnRl
bC1nZnggbWFpbGluZyBsaXN0Cj4gSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+IGh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
