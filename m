Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 797F96353B
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Jul 2019 13:57:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 31DF36E05A;
	Tue,  9 Jul 2019 11:56:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8219E89AB2
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Jul 2019 11:56:57 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Jul 2019 04:56:56 -0700
X-IronPort-AV: E=Sophos;i="5.63,470,1557212400"; d="scan'208";a="159430153"
Received: from rdvivi-losangeles.jf.intel.com (HELO intel.com) ([10.7.196.65])
 by orsmga008-auth.jf.intel.com with
 ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 09 Jul 2019 04:56:56 -0700
Date: Tue, 9 Jul 2019 04:57:32 -0700
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20190709115732.GC16315@intel.com>
References: <20190708231629.9296-1-lucas.demarchi@intel.com>
 <20190708231629.9296-11-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190708231629.9296-11-lucas.demarchi@intel.com>
User-Agent: Mutt/1.11.3 (2019-02-01)
Subject: Re: [Intel-gfx] [PATCH v2 10/25] drm/i915/tgl: Add power well to
 support 4th pipe
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCBKdWwgMDgsIDIwMTkgYXQgMDQ6MTY6MTRQTSAtMDcwMCwgTHVjYXMgRGUgTWFyY2hp
IHdyb3RlOgo+IEZyb206IE1pa2EgS2Fob2xhIDxtaWthLmthaG9sYUBpbnRlbC5jb20+Cj4gCj4g
QWRkIHBvd2VyIHdlbGwgNSB0byBzdXBwb3J0IDR0aCBwaXBlIGFuZCB0cmFuc2NvZGVyIG9uIFRH
TC4KPiAKPiBDYzogSmFtZXMgQXVzbXVzIDxqYW1lcy5hdXNtdXNAaW50ZWwuY29tPgo+IENjOiBJ
bXJlIERlYWsgPGltcmUuZGVha0BpbnRlbC5jb20+Cj4gU2lnbmVkLW9mZi1ieTogTWlrYSBLYWhv
bGEgPG1pa2Eua2Fob2xhQGludGVsLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBMdWNhcyBEZSBNYXJj
aGkgPGx1Y2FzLmRlbWFyY2hpQGludGVsLmNvbT4KPiAtLS0KPiAgLi4uL2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZGlzcGxheV9wb3dlci5jICAgIHwgMzAgKysrKysrKysrKysrKysrKy0tLQo+ICAu
Li4vZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmggICAgfCAgMyArKwo+ICBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oICAgICAgICAgICAgICAgfCAgMyArLQo+ICAz
IGZpbGVzIGNoYW5nZWQsIDMxIGluc2VydGlvbnMoKyksIDUgZGVsZXRpb25zKC0pCj4gCj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dl
ci5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmMK
PiBpbmRleCBjM2Y0MjE2OTgzMWYuLjQ1NWY5YWFiMTg4ZCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93ZXIuYwo+ICsrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5jCj4gQEAgLTM3LDE4
ICszNywyNCBAQCBpbnRlbF9kaXNwbGF5X3Bvd2VyX2RvbWFpbl9zdHIoc3RydWN0IGRybV9pOTE1
X3ByaXZhdGUgKmk5MTUsCj4gIAkJcmV0dXJuICJQSVBFX0IiOwo+ICAJY2FzZSBQT1dFUl9ET01B
SU5fUElQRV9DOgo+ICAJCXJldHVybiAiUElQRV9DIjsKPiArCWNhc2UgUE9XRVJfRE9NQUlOX1BJ
UEVfRDoKPiArCQlyZXR1cm4gIlBJUEVfRCI7Cj4gIAljYXNlIFBPV0VSX0RPTUFJTl9QSVBFX0Ff
UEFORUxfRklUVEVSOgo+ICAJCXJldHVybiAiUElQRV9BX1BBTkVMX0ZJVFRFUiI7Cj4gIAljYXNl
IFBPV0VSX0RPTUFJTl9QSVBFX0JfUEFORUxfRklUVEVSOgo+ICAJCXJldHVybiAiUElQRV9CX1BB
TkVMX0ZJVFRFUiI7Cj4gIAljYXNlIFBPV0VSX0RPTUFJTl9QSVBFX0NfUEFORUxfRklUVEVSOgo+
ICAJCXJldHVybiAiUElQRV9DX1BBTkVMX0ZJVFRFUiI7Cj4gKwljYXNlIFBPV0VSX0RPTUFJTl9Q
SVBFX0RfUEFORUxfRklUVEVSOgo+ICsJCXJldHVybiAiUElQRV9EX1BBTkVMX0ZJVFRFUiI7Cj4g
IAljYXNlIFBPV0VSX0RPTUFJTl9UUkFOU0NPREVSX0E6Cj4gIAkJcmV0dXJuICJUUkFOU0NPREVS
X0EiOwo+ICAJY2FzZSBQT1dFUl9ET01BSU5fVFJBTlNDT0RFUl9COgo+ICAJCXJldHVybiAiVFJB
TlNDT0RFUl9CIjsKPiAgCWNhc2UgUE9XRVJfRE9NQUlOX1RSQU5TQ09ERVJfQzoKPiAgCQlyZXR1
cm4gIlRSQU5TQ09ERVJfQyI7Cj4gKwljYXNlIFBPV0VSX0RPTUFJTl9UUkFOU0NPREVSX0Q6Cj4g
KwkJcmV0dXJuICJUUkFOU0NPREVSX0QiOwo+ICAJY2FzZSBQT1dFUl9ET01BSU5fVFJBTlNDT0RF
Ul9FRFA6Cj4gIAkJcmV0dXJuICJUUkFOU0NPREVSX0VEUCI7Cj4gIAljYXNlIFBPV0VSX0RPTUFJ
Tl9UUkFOU0NPREVSX0VEUF9WRFNDOgo+IEBAIC0yNDUxLDcgKzI0NTcsNiBAQCB2b2lkIGludGVs
X2Rpc3BsYXlfcG93ZXJfcHV0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKPiAg
ICogLSBERElfQQo+ICAgKiAtIEZCQwo+ICAgKi8KPiAtLyogVE9ETzogVEdMX1BXXzVfUE9XRVJf
RE9NQUlOUzogUElQRV9EICovCj4gICNkZWZpbmUgSUNMX1BXXzRfUE9XRVJfRE9NQUlOUyAoCQkJ
XAo+ICAJQklUX1VMTChQT1dFUl9ET01BSU5fUElQRV9DKSB8CQkJXAo+ICAJQklUX1VMTChQT1dF
Ul9ET01BSU5fUElQRV9DX1BBTkVMX0ZJVFRFUikgfAlcCj4gQEAgLTI1MzksNyArMjU0NCwxMyBA
QCB2b2lkIGludGVsX2Rpc3BsYXlfcG93ZXJfcHV0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpk
ZXZfcHJpdiwKPiAgI2RlZmluZSBJQ0xfQVVYX1RCVDRfSU9fUE9XRVJfRE9NQUlOUyAoCQkJXAo+
ICAJQklUX1VMTChQT1dFUl9ET01BSU5fQVVYX1RCVDQpKQo+ICAKPiArI2RlZmluZSBUR0xfUFdf
NV9QT1dFUl9ET01BSU5TICgJCQlcCj4gKwlCSVRfVUxMKFBPV0VSX0RPTUFJTl9QSVBFX0QpIHwJ
CQlcCj4gKwlCSVRfVUxMKFBPV0VSX0RPTUFJTl9QSVBFX0RfUEFORUxfRklUVEVSKSB8ICAgICBc
Cj4gKwlCSVRfVUxMKFBPV0VSX0RPTUFJTl9JTklUKSkKPiArCj4gICNkZWZpbmUgVEdMX1BXXzRf
UE9XRVJfRE9NQUlOUyAoCQkJXAo+ICsJVEdMX1BXXzVfUE9XRVJfRE9NQUlOUyB8CQkJXAoKd2h5
PwoKPiAgCUJJVF9VTEwoUE9XRVJfRE9NQUlOX1BJUEVfQykgfAkJCVwKPiAgCUJJVF9VTEwoUE9X
RVJfRE9NQUlOX1BJUEVfQ19QQU5FTF9GSVRURVIpIHwJXAo+ICAJQklUX1VMTChQT1dFUl9ET01B
SU5fSU5JVCkpCj4gQEAgLTI1NDksNyArMjU2MCw3IEBAIHZvaWQgaW50ZWxfZGlzcGxheV9wb3dl
cl9wdXQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAo+ICAJQklUX1VMTChQT1dF
Ul9ET01BSU5fUElQRV9CKSB8CQkJXAo+ICAJQklUX1VMTChQT1dFUl9ET01BSU5fVFJBTlNDT0RF
Ul9CKSB8CQlcCj4gIAlCSVRfVUxMKFBPV0VSX0RPTUFJTl9UUkFOU0NPREVSX0MpIHwJCVwKPiAt
CS8qIFRPRE86IFRSQU5TQ09ERVJfRCAqLwkJCVwKPiArCUJJVF9VTEwoUE9XRVJfRE9NQUlOX1RS
QU5TQ09ERVJfRCkgfAkJXAo+ICAJQklUX1VMTChQT1dFUl9ET01BSU5fUElQRV9CX1BBTkVMX0ZJ
VFRFUikgfAlcCj4gIAlCSVRfVUxMKFBPV0VSX0RPTUFJTl9QT1JUX0RESV9UQzFfTEFORVMpIHwJ
XAo+ICAJQklUX1VMTChQT1dFUl9ET01BSU5fUE9SVF9ERElfVEMxX0lPKSB8CQlcCj4gQEAgLTM4
ODIsNyArMzg5Myw3IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgaTkxNV9wb3dlcl93ZWxsX2Rlc2Mg
dGdsX3Bvd2VyX3dlbGxzW10gPSB7Cj4gIAl9LAo+ICAJewo+ICAJCS5uYW1lID0gInBvd2VyIHdl
bGwgNCIsCj4gLQkJLmRvbWFpbnMgPSBJQ0xfUFdfNF9QT1dFUl9ET01BSU5TLAo+ICsJCS5kb21h
aW5zID0gVEdMX1BXXzRfUE9XRVJfRE9NQUlOUywKCndoeT8KCj4gIAkJLm9wcyA9ICZoc3dfcG93
ZXJfd2VsbF9vcHMsCj4gIAkJLmlkID0gRElTUF9QV19JRF9OT05FLAo+ICAJCXsKPiBAQCAtMzg5
Miw3ICszOTAzLDE4IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgaTkxNV9wb3dlcl93ZWxsX2Rlc2Mg
dGdsX3Bvd2VyX3dlbGxzW10gPSB7Cj4gIAkJCS5oc3cuaXJxX3BpcGVfbWFzayA9IEJJVChQSVBF
X0MpLAo+ICAJCX0KPiAgCX0sCj4gLQkvKiBUT0RPOiBwb3dlciB3ZWxsIDUgZm9yIHBpcGUgRCAq
Lwo+ICsJewo+ICsJCS5uYW1lID0gInBvd2VyIHdlbGwgNSIsCj4gKwkJLmRvbWFpbnMgPSBUR0xf
UFdfNV9QT1dFUl9ET01BSU5TLAo+ICsJCS5vcHMgPSAmaHN3X3Bvd2VyX3dlbGxfb3BzLAo+ICsJ
CS5pZCA9IERJU1BfUFdfSURfTk9ORSwKPiArCQl7Cj4gKwkJCS5oc3cucmVncyA9ICZoc3dfcG93
ZXJfd2VsbF9yZWdzLAo+ICsJCQkuaHN3LmlkeCA9IFRHTF9QV19DVExfSURYX1BXXzUsCj4gKwkJ
CS5oc3cuaGFzX2Z1c2VzID0gdHJ1ZSwKPiArCQkJLmhzdy5pcnFfcGlwZV9tYXNrID0gQklUKFBJ
UEVfRCksCj4gKwkJfSwKPiArCX0sCj4gIH07Cj4gIAo+ICBzdGF0aWMgaW50Cj4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5oIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmgKPiBpbmRl
eCA4NmFmZDcwYzFmYjIuLmViYjM5N2UzMzBlYSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93ZXIuaAo+ICsrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5oCj4gQEAgLTE4LDEyICsxOCwx
NSBAQCBlbnVtIGludGVsX2Rpc3BsYXlfcG93ZXJfZG9tYWluIHsKPiAgCVBPV0VSX0RPTUFJTl9Q
SVBFX0EsCj4gIAlQT1dFUl9ET01BSU5fUElQRV9CLAo+ICAJUE9XRVJfRE9NQUlOX1BJUEVfQywK
PiArCVBPV0VSX0RPTUFJTl9QSVBFX0QsCj4gIAlQT1dFUl9ET01BSU5fUElQRV9BX1BBTkVMX0ZJ
VFRFUiwKPiAgCVBPV0VSX0RPTUFJTl9QSVBFX0JfUEFORUxfRklUVEVSLAo+ICAJUE9XRVJfRE9N
QUlOX1BJUEVfQ19QQU5FTF9GSVRURVIsCj4gKwlQT1dFUl9ET01BSU5fUElQRV9EX1BBTkVMX0ZJ
VFRFUiwKPiAgCVBPV0VSX0RPTUFJTl9UUkFOU0NPREVSX0EsCj4gIAlQT1dFUl9ET01BSU5fVFJB
TlNDT0RFUl9CLAo+ICAJUE9XRVJfRE9NQUlOX1RSQU5TQ09ERVJfQywKPiArCVBPV0VSX0RPTUFJ
Tl9UUkFOU0NPREVSX0QsCj4gIAlQT1dFUl9ET01BSU5fVFJBTlNDT0RFUl9FRFAsCj4gIAlQT1dF
Ul9ET01BSU5fVFJBTlNDT0RFUl9FRFBfVkRTQywKPiAgCVBPV0VSX0RPTUFJTl9UUkFOU0NPREVS
X0RTSV9BLAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAo+IGluZGV4IGY1OWNiNWM0NWMzNC4uNWNh
NzRlY2EwNWE0IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgK
PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCj4gQEAgLTkxNDcsNyArOTE0
Nyw4IEBAIGVudW0gewo+ICAjZGVmaW5lICAgR0xLX1BXX0NUTF9JRFhfRERJX0EJCQkxCj4gICNk
ZWZpbmUgICBTS0xfUFdfQ1RMX0lEWF9NSVNDX0lPCQkwCj4gIAo+IC0vKiBJQ0wgLSBwb3dlciB3
ZWxscyAqLwo+ICsvKiBJQ0wvVEdMIC0gcG93ZXIgd2VsbHMgKi8KPiArI2RlZmluZSAgIFRHTF9Q
V19DVExfSURYX1BXXzUJCQk0Cj4gICNkZWZpbmUgICBJQ0xfUFdfQ1RMX0lEWF9QV180CQkJMwo+
ICAjZGVmaW5lICAgSUNMX1BXX0NUTF9JRFhfUFdfMwkJCTIKPiAgI2RlZmluZSAgIElDTF9QV19D
VExfSURYX1BXXzIJCQkxCj4gLS0gCj4gMi4yMS4wCj4gCj4gX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KPiBJbnRlbC1nZnggbWFpbGluZyBsaXN0Cj4gSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeA==
