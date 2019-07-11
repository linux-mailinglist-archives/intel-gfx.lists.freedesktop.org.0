Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1461A66171
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jul 2019 00:02:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DBFAC6E299;
	Thu, 11 Jul 2019 22:01:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA4736E299
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Jul 2019 22:01:56 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Jul 2019 15:01:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,480,1557212400"; d="scan'208";a="174275888"
Received: from mdroper-desk.fm.intel.com (HELO
 mdroper-desk.amr.corp.intel.com) ([10.105.128.126])
 by FMSMGA003.fm.intel.com with ESMTP; 11 Jul 2019 15:01:55 -0700
Date: Thu, 11 Jul 2019 15:01:55 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20190711220155.GN9024@mdroper-desk.amr.corp.intel.com>
References: <20190711205213.GK9024@mdroper-desk.amr.corp.intel.com>
 <20190711213517.13674-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190711213517.13674-1-lucas.demarchi@intel.com>
User-Agent: Mutt/1.11.3 (2019-02-01)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/tgl: apply Display WA #1178 to fix
 type C dongles
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

T24gVGh1LCBKdWwgMTEsIDIwMTkgYXQgMDI6MzU6MTdQTSAtMDcwMCwgTHVjYXMgRGUgTWFyY2hp
IHdyb3RlOgo+IEFkZCBwb3J0IEMgdG8gd29ya2Fyb3VuZCB0byBjb3ZlciBUaWdlciBMYWtlLgo+
IAo+IENjOiBSb2RyaWdvIFZpdmkgPHJvZHJpZ28udml2aUBpbnRlbC5jb20+Cj4gU2lnbmVkLW9m
Zi1ieTogTHVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+Cj4gUmV2aWV3
ZWQtYnk6IFJvZHJpZ28gVml2aSA8cm9kcmlnby52aXZpQGludGVsLmNvbT4KPiBMaW5rOiBodHRw
czovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvcGF0Y2gvbXNnaWQvMjAxOTA3MDgyMzE2Mjku
OTI5Ni0yMi1sdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20KClJldmlld2VkLWJ5OiBNYXR0IFJvcGVy
IDxtYXR0aGV3LmQucm9wZXJAaW50ZWwuY29tPgoKPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmMgfCAxMiArKysrKysrKystLS0KPiAgZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCAgICAgICAgICAgICAgICAgICAgfCAgNCArKyst
Cj4gIDIgZmlsZXMgY2hhbmdlZCwgMTIgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKPiAK
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5
X3Bvd2VyLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93
ZXIuYwo+IGluZGV4IDEyYWE5Y2UwOGQ5NS4uZDI1ZmQ1YTI1MTk5IDEwMDY0NAo+IC0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5jCj4gKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmMKPiBAQCAt
NDUzLDYgKzQ1Myw3IEBAIGljbF9jb21ib19waHlfYXV4X3Bvd2VyX3dlbGxfZW5hYmxlKHN0cnVj
dCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKPiAgCWludCBwd19pZHggPSBwb3dlcl93ZWxs
LT5kZXNjLT5oc3cuaWR4Owo+ICAJZW51bSBwaHkgcGh5ID0gSUNMX0FVWF9QV19UT19QSFkocHdf
aWR4KTsKPiAgCXUzMiB2YWw7Cj4gKwlpbnQgd2FfaWR4X21heDsKPiAgCj4gIAl2YWwgPSBJOTE1
X1JFQUQocmVncy0+ZHJpdmVyKTsKPiAgCUk5MTVfV1JJVEUocmVncy0+ZHJpdmVyLCB2YWwgfCBI
U1dfUFdSX1dFTExfQ1RMX1JFUShwd19pZHgpKTsKPiBAQCAtNDYyLDkgKzQ2MywxNCBAQCBpY2xf
Y29tYm9fcGh5X2F1eF9wb3dlcl93ZWxsX2VuYWJsZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAq
ZGV2X3ByaXYsCj4gIAo+ICAJaHN3X3dhaXRfZm9yX3Bvd2VyX3dlbGxfZW5hYmxlKGRldl9wcml2
LCBwb3dlcl93ZWxsKTsKPiAgCj4gLQkvKiBEaXNwbGF5IFdBICMxMTc4OiBpY2wgKi8KPiAtCWlm
IChJU19JQ0VMQUtFKGRldl9wcml2KSAmJgo+IC0JICAgIHB3X2lkeCA+PSBJQ0xfUFdfQ1RMX0lE
WF9BVVhfQSAmJiBwd19pZHggPD0gSUNMX1BXX0NUTF9JRFhfQVVYX0IgJiYKPiArCS8qIERpc3Bs
YXkgV0EgIzExNzg6IGljbCwgdGdsICovCj4gKwlpZiAoSVNfVElHRVJMQUtFKGRldl9wcml2KSkK
PiArCQl3YV9pZHhfbWF4ID0gSUNMX1BXX0NUTF9JRFhfQVVYX0M7Cj4gKwllbHNlCj4gKwkJd2Ff
aWR4X21heCA9IElDTF9QV19DVExfSURYX0FVWF9COwo+ICsKPiArCWlmICghSVNfRUxLSEFSVExB
S0UoZGV2X3ByaXYpICYmCj4gKwkgICAgcHdfaWR4ID49IElDTF9QV19DVExfSURYX0FVWF9BICYm
IHB3X2lkeCA8PSB3YV9pZHhfbWF4ICYmCj4gIAkgICAgIWludGVsX2Jpb3NfaXNfcG9ydF9lZHAo
ZGV2X3ByaXYsIChlbnVtIHBvcnQpcGh5KSkgewo+ICAJCXZhbCA9IEk5MTVfUkVBRChJQ0xfQVVY
X0FOQU9WUkQxKHB3X2lkeCkpOwo+ICAJCXZhbCB8PSBJQ0xfQVVYX0FOQU9WUkQxX0VOQUJMRSB8
IElDTF9BVVhfQU5BT1ZSRDFfTERPX0JZUEFTUzsKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9yZWcuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKPiBp
bmRleCBiMWE2NjI4MTk5ZTQuLmE4ZTJlMDVlN2Q3ZSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X3JlZy5oCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9y
ZWcuaAo+IEBAIC05Mjc0LDkgKzkyNzQsMTEgQEAgZW51bSBza2xfcG93ZXJfZ2F0ZSB7Cj4gICNk
ZWZpbmUgX0lDTF9BVVhfUkVHX0lEWChwd19pZHgpCSgocHdfaWR4KSAtIElDTF9QV19DVExfSURY
X0FVWF9BKQo+ICAjZGVmaW5lIF9JQ0xfQVVYX0FOQU9WUkQxX0EJCTB4MTYyMzk4Cj4gICNkZWZp
bmUgX0lDTF9BVVhfQU5BT1ZSRDFfQgkJMHg2QzM5OAo+ICsjZGVmaW5lIF9UR0xfQVVYX0FOQU9W
UkQxX0MJCTB4MTYwMzk4Cj4gICNkZWZpbmUgSUNMX0FVWF9BTkFPVlJEMShwd19pZHgpCV9NTUlP
KF9QSUNLKF9JQ0xfQVVYX1JFR19JRFgocHdfaWR4KSwgXAo+ICAJCQkJCQkgICAgX0lDTF9BVVhf
QU5BT1ZSRDFfQSwgXAo+IC0JCQkJCQkgICAgX0lDTF9BVVhfQU5BT1ZSRDFfQikpCj4gKwkJCQkJ
CSAgICBfSUNMX0FVWF9BTkFPVlJEMV9CLCBcCj4gKwkJCQkJCSAgICBfVEdMX0FVWF9BTkFPVlJE
MV9DKSkKPiAgI2RlZmluZSAgIElDTF9BVVhfQU5BT1ZSRDFfTERPX0JZUEFTUwkoMSA8PCA3KQo+
ICAjZGVmaW5lICAgSUNMX0FVWF9BTkFPVlJEMV9FTkFCTEUJKDEgPDwgMCkKPiAgCj4gLS0gCj4g
Mi4yMS4wCj4gCgotLSAKTWF0dCBSb3BlcgpHcmFwaGljcyBTb2Z0d2FyZSBFbmdpbmVlcgpJb1RH
IFBsYXRmb3JtIEVuYWJsaW5nICYgRGV2ZWxvcG1lbnQKSW50ZWwgQ29ycG9yYXRpb24KKDkxNikg
MzU2LTI3OTUKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
