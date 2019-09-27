Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1ADE6C09F2
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Sep 2019 19:03:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 85CE26E167;
	Fri, 27 Sep 2019 17:03:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BA0DB6E14A
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Sep 2019 17:03:55 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Sep 2019 10:03:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,556,1559545200"; d="scan'208";a="273875681"
Received: from genxfsim-desktop.iind.intel.com (HELO intel.com)
 ([10.223.74.120])
 by orsmga001.jf.intel.com with ESMTP; 27 Sep 2019 10:03:52 -0700
Date: Fri, 27 Sep 2019 22:27:44 +0530
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: Imre Deak <imre.deak@intel.com>
Message-ID: <20190927165743.GA11866@intel.com>
References: <20190926145621.9090-1-anshuman.gupta@intel.com>
 <20190926145621.9090-8-anshuman.gupta@intel.com>
 <20190927163849.GG29139@ideak-desk.fi.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190927163849.GG29139@ideak-desk.fi.intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH v9 7/7] drm/i915/tgl: Add DC3CO counter in
 i915_dmc_info
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
Cc: jani.nikula@intel.com, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gMjAxOS0wOS0yNyBhdCAxOTozODo0OSArMDMwMCwgSW1yZSBEZWFrIHdyb3RlOgo+IE9uIFRo
dSwgU2VwIDI2LCAyMDE5IGF0IDA4OjI2OjIxUE0gKzA1MzAsIEFuc2h1bWFuIEd1cHRhIHdyb3Rl
Ogo+ID4gQWRkaW5nIERDM0NPIGNvdW50ZXIgaW4gaTkxNV9kbWNfaW5mbyBkZWJ1Z2ZzIHdpbGwg
YmUKPiA+IHVzZWZ1bCBmb3IgREMzQ08gdmFsaWRhdGlvbi4KPiA+IERNQyBmaXJtd2FyZSB1c2Vz
IERNQ19ERUJVRzMgcmVnaXN0ZXIgYXMgREMzQ08gY291bnRlcgo+ID4gcmVnaXN0ZXIgb24gVEdM
LCBhcyBwZXIgQi5TcGVjcyBETUNfREVCVUczIGlzIGdlbmVyYWwKPiA+IHB1cnBvc2UgcmVnaXN0
ZXIuCj4gPiAKPiA+IENjOiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPgo+ID4g
Q2M6IEltcmUgRGVhayA8aW1yZS5kZWFrQGludGVsLmNvbT4KPiA+IENjOiBBbmltZXNoIE1hbm5h
IDxhbmltZXNoLm1hbm5hQGludGVsLmNvbT4KPiA+IFNpZ25lZC1vZmYtYnk6IEFuc2h1bWFuIEd1
cHRhIDxhbnNodW1hbi5ndXB0YUBpbnRlbC5jb20+Cj4gPiAtLS0KPiA+ICBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X2RlYnVnZnMuYyB8IDYgKysrKysrCj4gPiAgZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9yZWcuaCAgICAgfCAyICsrCj4gPiAgMiBmaWxlcyBjaGFuZ2VkLCA4IGluc2VydGlv
bnMoKykKPiA+IAo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZGVi
dWdmcy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kZWJ1Z2ZzLmMKPiA+IGluZGV4IGI1
YjQ0OWE4OGNmMS4uOGExNmJiZDMxMjEyIDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9kZWJ1Z2ZzLmMKPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
ZGVidWdmcy5jCj4gPiBAQCAtMjQwNyw2ICsyNDA3LDEyIEBAIHN0YXRpYyBpbnQgaTkxNV9kbWNf
aW5mbyhzdHJ1Y3Qgc2VxX2ZpbGUgKm0sIHZvaWQgKnVudXNlZCkKPiA+ICAJc2VxX3ByaW50Ziht
LCAidmVyc2lvbjogJWQuJWRcbiIsIENTUl9WRVJTSU9OX01BSk9SKGNzci0+dmVyc2lvbiksCj4g
PiAgCQkgICBDU1JfVkVSU0lPTl9NSU5PUihjc3ItPnZlcnNpb24pKTsKPiA+ICAKPiA+ICsJLyoK
PiA+ICsJICogVEdMIERNQyBmL3cgdXNlcyBETUNfREVCVUczIHJlZ2lzdGVyIGZvciBEQzNDTyBj
b3VudGVyLgo+ID4gKwkgKi8KPiAKPiBUaGUgYWJvdmUgaXMgb2J2aW91cyBmcm9tIHRoZSBjb2Rl
IGl0c2VsZiwgc28gd2UgZG9uJ3QgbmVlZCBhIGNvbW1lbnQKPiBmb3IgaXQuIFBsZWFzZSBhbHNv
IGNvbnNpZGVyIHJlbW92aW5nIGFsbCBvdGhlciBjb21tZW50cyBpbiB0aGUgcGF0Y2hzZXQKPiB0
aGF0IHN0YXRlIG9ubHkgd2hhdCBpcyBvYnZpb3VzIGZyb20gdGhlIGNvZGUuCkRNQ19ERUJVRzMg
aXMgYSBETUMgZ2VuZXJhbCBwdXJwb3NlIHJlZ2lzdGVyLCBCLlNwZWNzIGRvZXNuJ3Qgc3BlY2lm
eQppdCBhcyBEQzNDTyBjb3VudGVyIHVubGlrZSBEQzUgYW5kIERDNiwgdGhhdCBpcyB3aHkgaSBo
YXZlIGFkZGVkCnRoaXMgY29tbWVudC4gU2hhbGwgaSByZW1vdmUgdGhpcyBjb21tZW50IGNvbnNp
ZGVyaW5nIERNQ19ERUJVRzMgCmFzIGdlbmVyYWwgcHVycG9zZSByZWdpc3Rlcj8KPiAKPiA+ICsJ
aWYgKElTX1RJR0VSTEFLRShkZXZfcHJpdikpCj4gCj4gVGhlIGFib3ZlIHNob3VsZCBtYXRjaCB0
aGUgY2hlY2sgaW4gZ2V0X2FsbG93ZWRfZGNfbWFzaygpLgpJU19USUdFUkxBS0UgaXMgYmVpbmcg
Y2hlY2tlZCBmb3IgdGhlIHNhbWUgcmVhc29uIGFzIFRHTApETUMgaXMgdXNpbmcgRE1DX0RFQlVH
MyBmb3IgREMzQ08gY291bnRlci4gSXQgbWF5IG5vdCBiZSB0cnVlCmZvciBvdGhlciBHZW4xMiBw
bGF0ZnJvbS4KVGhhbmtzLApBbnNodW1hbiBHdXB0YS4gIAo+IAo+ID4gKwkJc2VxX3ByaW50Ziht
LCAiREMzQ08gY291bnQ6ICVkXG4iLCBJOTE1X1JFQUQoRE1DX0RFQlVHMykpOwo+ID4gKwo+ID4g
IAlpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSAxMikgewo+ID4gIAkJZGM1X3JlZyA9IFRHTF9E
TUNfREVCVUdfREM1X0NPVU5UOwo+ID4gIAkJZGM2X3JlZyA9IFRHTF9ETUNfREVCVUdfREM2X0NP
VU5UOwo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCj4gPiBpbmRleCAzZWU5NzIwYWYyMDcuLmFm
ODEwZjZlZDY1MiAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVn
LmgKPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKPiA+IEBAIC03MjYz
LDYgKzcyNjMsOCBAQCBlbnVtIHsKPiA+ICAjZGVmaW5lIFRHTF9ETUNfREVCVUdfREM1X0NPVU5U
CV9NTUlPKDB4MTAxMDg0KQo+ID4gICNkZWZpbmUgVEdMX0RNQ19ERUJVR19EQzZfQ09VTlQJX01N
SU8oMHgxMDEwODgpCj4gPiAgCj4gPiArI2RlZmluZSBETUNfREVCVUczCQlfTU1JTygweDEwMTA5
MCkKPiA+ICsKPiA+ICAvKiBpbnRlcnJ1cHRzICovCj4gPiAgI2RlZmluZSBERV9NQVNURVJfSVJR
X0NPTlRST0wgICAoMSA8PCAzMSkKPiA+ICAjZGVmaW5lIERFX1NQUklURUJfRkxJUF9ET05FICAg
ICgxIDw8IDI5KQo+ID4gLS0gCj4gPiAyLjIxLjAKPiA+IApfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZng=
