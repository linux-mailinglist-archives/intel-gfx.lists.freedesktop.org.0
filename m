Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 31FC4D3EB7
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Oct 2019 13:48:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 207226EC22;
	Fri, 11 Oct 2019 11:48:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D93A86EC22
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Oct 2019 11:48:15 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Oct 2019 04:48:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,284,1566889200"; d="scan'208";a="200767130"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by FMSMGA003.fm.intel.com with SMTP; 11 Oct 2019 04:48:13 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 11 Oct 2019 14:48:12 +0300
Date: Fri, 11 Oct 2019 14:48:12 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20191011114812.GJ1208@intel.com>
References: <20191011010907.103309-1-lucas.demarchi@intel.com>
 <20191011010907.103309-3-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191011010907.103309-3-lucas.demarchi@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 2/7] drm/i915: cleanup unused returns on
 DP-MST
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

T24gVGh1LCBPY3QgMTAsIDIwMTkgYXQgMDY6MDk6MDJQTSAtMDcwMCwgTHVjYXMgRGUgTWFyY2hp
IHdyb3RlOgo+IFRob3NlIGluaXQgZnVuY3Rpb25zIG1hcmsgdGhlaXIgc3VjY2VzcyBpbiB0aGUg
aW50ZWxfZGlnX3BvcnQKPiBzdHJ1Y3QsIHRoZSByZXR1cm4gdmFsdWVzIGFyZSBub3QgcmVhbGx5
IHVzZWQuCj4gCj4gU2lnbmVkLW9mZi1ieTogTHVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNo
aUBpbnRlbC5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZHBfbXN0LmMgfCAxMSArKysrKy0tLS0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2RwX21zdC5oIHwgIDIgKy0KPiAgMiBmaWxlcyBjaGFuZ2VkLCA2IGluc2VydGlvbnMo
KyksIDcgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZHBfbXN0LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2RwX21zdC5jCj4gaW5kZXggMjIwM2JlMjhlYTAxLi5jMmJiYmExZWZmYzEgMTAwNjQ0Cj4g
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9tc3QuYwo+ICsrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbXN0LmMKPiBAQCAtNjM0LDcg
KzYzNCw3IEBAIGludGVsX2RwX2NyZWF0ZV9mYWtlX21zdF9lbmNvZGVyKHN0cnVjdCBpbnRlbF9k
aWdpdGFsX3BvcnQgKmludGVsX2RpZ19wb3J0LCBlbnVtCj4gIAo+ICB9Cj4gIAo+IC1zdGF0aWMg
Ym9vbAo+ICtzdGF0aWMgdm9pZAo+ICBpbnRlbF9kcF9jcmVhdGVfZmFrZV9tc3RfZW5jb2RlcnMo
c3RydWN0IGludGVsX2RpZ2l0YWxfcG9ydCAqaW50ZWxfZGlnX3BvcnQpCj4gIHsKPiAgCXN0cnVj
dCBpbnRlbF9kcCAqaW50ZWxfZHAgPSAmaW50ZWxfZGlnX3BvcnQtPmRwOwo+IEBAIC02NDMsNyAr
NjQzLDYgQEAgaW50ZWxfZHBfY3JlYXRlX2Zha2VfbXN0X2VuY29kZXJzKHN0cnVjdCBpbnRlbF9k
aWdpdGFsX3BvcnQgKmludGVsX2RpZ19wb3J0KQo+ICAKPiAgCWZvcl9lYWNoX3BpcGUoZGV2X3By
aXYsIHBpcGUpCj4gIAkJaW50ZWxfZHAtPm1zdF9lbmNvZGVyc1twaXBlXSA9IGludGVsX2RwX2Ny
ZWF0ZV9mYWtlX21zdF9lbmNvZGVyKGludGVsX2RpZ19wb3J0LCBwaXBlKTsKPiAtCXJldHVybiB0
cnVlOwo+ICB9Cj4gIAo+ICBpbnQKPiBAQCAtNjUyLDE0ICs2NTEsMTMgQEAgaW50ZWxfZHBfbXN0
X2VuY29kZXJfYWN0aXZlX2xpbmtzKHN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgKmludGVsX2Rp
Z19wb3J0KQo+ICAJcmV0dXJuIGludGVsX2RpZ19wb3J0LT5kcC5hY3RpdmVfbXN0X2xpbmtzOwo+
ICB9Cj4gIAo+IC1pbnQKPiArdm9pZAo+ICBpbnRlbF9kcF9tc3RfZW5jb2Rlcl9pbml0KHN0cnVj
dCBpbnRlbF9kaWdpdGFsX3BvcnQgKmludGVsX2RpZ19wb3J0LCBpbnQgY29ubl9iYXNlX2lkKQo+
ICB7Cj4gIAlzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwID0gJmludGVsX2RpZ19wb3J0LT5kcDsK
PiAgCXN0cnVjdCBkcm1fZGV2aWNlICpkZXYgPSBpbnRlbF9kaWdfcG9ydC0+YmFzZS5iYXNlLmRl
djsKPiAgCWludCByZXQ7Cj4gIAo+IC0JaW50ZWxfZHAtPmNhbl9tc3QgPSB0cnVlOwo+ICAJaW50
ZWxfZHAtPm1zdF9tZ3IuY2JzID0gJm1zdF9jYnM7Cj4gIAo+ICAJLyogY3JlYXRlIGVuY29kZXJz
ICovCj4gQEAgLTY2OCw5ICs2NjYsMTAgQEAgaW50ZWxfZHBfbXN0X2VuY29kZXJfaW5pdChzdHJ1
Y3QgaW50ZWxfZGlnaXRhbF9wb3J0ICppbnRlbF9kaWdfcG9ydCwgaW50IGNvbm5fYmEKPiAgCQkJ
CQkgICAmaW50ZWxfZHAtPmF1eCwgMTYsIDMsIGNvbm5fYmFzZV9pZCk7Cj4gIAlpZiAocmV0KSB7
Cj4gIAkJaW50ZWxfZHAtPmNhbl9tc3QgPSBmYWxzZTsKPiAtCQlyZXR1cm4gcmV0Owo+ICsJCXJl
dHVybjsKPiAgCX0KPiAtCXJldHVybiAwOwoKSSBkb24ndCByZWFsbHkgbGlrZSB0aGUgc2lsZW50
IGZhaWx1cmUgbW9kZS4gTWF5YmUgd2Ugc2hvdWxkIGp1c3QgZmFpbAp0aGUgZW50aXJlIGNvbm5l
Y3RvciBpbml0IHdoZW4gdGhpcyBoYXBwZW5zPwoKPiArCj4gKwlpbnRlbF9kcC0+Y2FuX21zdCA9
IHRydWU7Cj4gIH0KPiAgCj4gIHZvaWQKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kcF9tc3QuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZHBfbXN0LmgKPiBpbmRleCBmNjYwYWQ4MGRiMDQuLmYyNDc4YzE3YThmZCAxMDA2NDQK
PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX21zdC5oCj4gKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9tc3QuaAo+IEBAIC04LDcg
KzgsNyBAQAo+ICAKPiAgc3RydWN0IGludGVsX2RpZ2l0YWxfcG9ydDsKPiAgCj4gLWludCBpbnRl
bF9kcF9tc3RfZW5jb2Rlcl9pbml0KHN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgKmludGVsX2Rp
Z19wb3J0LCBpbnQgY29ubl9pZCk7Cj4gK3ZvaWQgaW50ZWxfZHBfbXN0X2VuY29kZXJfaW5pdChz
dHJ1Y3QgaW50ZWxfZGlnaXRhbF9wb3J0ICppbnRlbF9kaWdfcG9ydCwgaW50IGNvbm5faWQpOwo+
ICB2b2lkIGludGVsX2RwX21zdF9lbmNvZGVyX2NsZWFudXAoc3RydWN0IGludGVsX2RpZ2l0YWxf
cG9ydCAqaW50ZWxfZGlnX3BvcnQpOwo+ICBpbnQgaW50ZWxfZHBfbXN0X2VuY29kZXJfYWN0aXZl
X2xpbmtzKHN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgKmludGVsX2RpZ19wb3J0KTsKPiAgCj4g
LS0gCj4gMi4yMy4wCj4gCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KPiBJbnRlbC1nZnggbWFpbGluZyBsaXN0Cj4gSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwo+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4CgotLSAKVmlsbGUgU3lyasOkbMOkCkludGVsCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
