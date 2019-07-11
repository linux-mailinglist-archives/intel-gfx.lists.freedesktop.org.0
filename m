Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F133765812
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jul 2019 15:47:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 644DA6E243;
	Thu, 11 Jul 2019 13:47:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BF0D06E243
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Jul 2019 13:47:20 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Jul 2019 06:47:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,478,1557212400"; d="scan'208";a="177165299"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga002.jf.intel.com with SMTP; 11 Jul 2019 06:47:17 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 11 Jul 2019 16:47:17 +0300
Date: Thu, 11 Jul 2019 16:47:17 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Anusha Srivatsa <anusha.srivatsa@intel.com>
Message-ID: <20190711134717.GV5942@intel.com>
References: <20190710230921.21015-1-anusha.srivatsa@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190710230921.21015-1-anusha.srivatsa@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH] drm/dp/dsc: Add Support for all BPCs
 supported by TGL
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

T24gV2VkLCBKdWwgMTAsIDIwMTkgYXQgMDQ6MDk6MjFQTSAtMDcwMCwgQW51c2hhIFNyaXZhdHNh
IHdyb3RlOgo+IERTQyBlbmdpbmUgb24gSUNMIHN1cHBvcnRzIG9ubHkgOCBhbmQgMTAgQlBDIGFz
IHRoZSBpbnB1dAo+IEJQQy4gQnV0IERTQyBlbmdpbmUgaW4gVEdMIHN1cHBvcnRzIDgsIDEwIGFu
ZCAxMiBCUEMuCj4gQWRkIDEyIEJQQyBzdXBwb3J0IGZvciBEU0Mgd2hpbGUgY2FsY3VsYXRpbmcg
Y29tcHJlc3Npb24KPiBjb25maWd1cmF0aW9uLgo+IAo+IENjOiBNYW5hc2kgTmF2YXJlIDxtYW5h
c2kuZC5uYXZhcmVAaW50ZWwuY29tPgo+IFNpZ25lZC1vZmYtYnk6IEFudXNoYSBTcml2YXRzYSA8
YW51c2hhLnNyaXZhdHNhQGludGVsLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kcC5jIHwgOSArKysrKysrLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDcgaW5z
ZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kcC5jCj4gaW5kZXggMGJkYjdlY2M1YTgxLi5jZDA4OTY0M2M4MGQgMTAwNjQ0Cj4g
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jCj4gKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jCj4gQEAgLTcxLDYgKzcxLDcgQEAK
PiAgI2RlZmluZSBEUF9EU0NfTUFYX1NNQUxMX0pPSU5FUl9SQU1fQlVGRkVSCTYxNDQwCj4gICNk
ZWZpbmUgRFBfRFNDX01JTl9TVVBQT1JURURfQlBDCQk4Cj4gICNkZWZpbmUgRFBfRFNDX01BWF9T
VVBQT1JURURfQlBDCQkxMAo+ICsjZGVmaW5lIFRHTF9EUF9EU0NfTUFYX1NVUFBPUlRFRF9CUEMJ
CTEyCgpUaGVzZSBkZWZpbmVzIGFyZW4ndCBkb2luZyBhbnkgZ29vZCBJTU8uIEknZCBqdXN0IG51
a2UgdGhlbS4KCj4gIAo+ICAvKiBEUCBEU0MgdGhyb3VnaHB1dCB2YWx1ZXMgdXNlZCBmb3Igc2xp
Y2UgY291bnQgY2FsY3VsYXRpb25zIEtQaXhlbHMvcyAqLwo+ICAjZGVmaW5lIERQX0RTQ19QRUFL
X1BJWEVMX1JBVEUJCQkyNzIwMDAwCj4gQEAgLTE5MTEsOCArMTkxMiwxMiBAQCBzdGF0aWMgaW50
IGludGVsX2RwX2RzY19jb21wdXRlX2NvbmZpZyhzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLAo+
ICAJaWYgKCFpbnRlbF9kcF9zdXBwb3J0c19kc2MoaW50ZWxfZHAsIHBpcGVfY29uZmlnKSkKPiAg
CQlyZXR1cm4gLUVJTlZBTDsKPiAgCj4gLQlkc2NfbWF4X2JwYyA9IG1pbl90KHU4LCBEUF9EU0Nf
TUFYX1NVUFBPUlRFRF9CUEMsCj4gLQkJCSAgICBjb25uX3N0YXRlLT5tYXhfcmVxdWVzdGVkX2Jw
Yyk7Cj4gKwlpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+IDExKQoKTW9yZSBjdXN0b21hcmlseSA+
PSAxMgoKPiArCQlkc2NfbWF4X2JwYyA9IG1pbl90KHU4LCBUR0xfRFBfRFNDX01BWF9TVVBQT1JU
RURfQlBDLAo+ICsJCQkJICAgIGNvbm5fc3RhdGUtPm1heF9yZXF1ZXN0ZWRfYnBjKTsKPiArCWVs
c2UKPiArCQlkc2NfbWF4X2JwYyA9IG1pbl90KHU4LCBEUF9EU0NfTUFYX1NVUFBPUlRFRF9CUEMs
Cj4gKwkJCQkgICAgY29ubl9zdGF0ZS0+bWF4X3JlcXVlc3RlZF9icGMpOwo+ICAKPiAgCXBpcGVf
YnBwID0gaW50ZWxfZHBfZHNjX2NvbXB1dGVfYnBwKGludGVsX2RwLCBkc2NfbWF4X2JwYyk7Cj4g
IAlpZiAocGlwZV9icHAgPCBEUF9EU0NfTUlOX1NVUFBPUlRFRF9CUEMgKiAzKSB7Cj4gLS0gCj4g
Mi4yMS4wCj4gCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KPiBJbnRlbC1nZnggbWFpbGluZyBsaXN0Cj4gSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwo+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4CgotLSAKVmlsbGUgU3lyasOkbMOkCkludGVsCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
