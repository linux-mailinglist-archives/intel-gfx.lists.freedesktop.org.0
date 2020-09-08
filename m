Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9561226156E
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Sep 2020 18:49:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 367DF6E1F3;
	Tue,  8 Sep 2020 16:49:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0277A6E1F3
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Sep 2020 16:49:31 +0000 (UTC)
IronPort-SDR: a7RgisJEVU6V0G+tCezGqVMgrbuChwt2/KbnAAsRB2wuK2BDnqEIT0h6Un1ATLn0+4UShl35Bt
 sK8aU68IfGMQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9738"; a="155663003"
X-IronPort-AV: E=Sophos;i="5.76,406,1592895600"; d="scan'208";a="155663003"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2020 09:49:31 -0700
IronPort-SDR: sqnNfEeBe4Bei2BwU3F8viLpVvnG93uA5Tdl+VCZvtcRlzYanSk0T1eHC3V2XBhXsPjQgzVDJg
 GlUb9DCkHLig==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,406,1592895600"; d="scan'208";a="407183453"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by fmsmga001.fm.intel.com with ESMTP; 08 Sep 2020 09:49:31 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 8 Sep 2020 09:49:31 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 8 Sep 2020 09:49:30 -0700
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.1713.004;
 Tue, 8 Sep 2020 09:49:30 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [08/12] drm/i915: Split icp_hpd_detection_setup() into ddi vs.
 tc parts
Thread-Index: AQHWhfmeIOTh++Qc3EWpEZSgT7B406lfajeA
Date: Tue, 8 Sep 2020 16:49:30 +0000
Message-ID: <ed844dff55179a8da68e89ad2df9198a95e14e9f.camel@intel.com>
References: <20200630215601.28557-9-ville.syrjala@linux.intel.com>
In-Reply-To: <20200630215601.28557-9-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-ID: <AB9D151BD69BA44C92FD3827C2D325B3@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [08/12] drm/i915: Split icp_hpd_detection_setup()
 into ddi vs. tc parts
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCAyMDIwLTA3LTAxIGF0IDAwOjU1ICswMzAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOg0K
PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPA0KPiB2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNv
bQ0KPiA+DQo+IA0KPiBObyByZWFzb24gdG8gc3R1ZmYgYm90aCBEREkgYW5kIFRDIHBvcnQgaGFu
ZGxpbmcgaW50byB0aGUgc2FtZQ0KPiBmdW5jdGlvbi4gU3BsaXQgaXQgaW50byB0d28uDQoNClJl
dmlld2VkLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4N
Cg0KPiANCj4gU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDwNCj4gdmlsbGUuc3lyamFs
YUBsaW51eC5pbnRlbC5jb20NCj4gPg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfaXJxLmMgfCA0OCArKysrKysrKysrKysrKysrKystLS0tLS0tLS0tLS0tLS0NCj4gIDEgZmls
ZSBjaGFuZ2VkLCAyNyBpbnNlcnRpb25zKCspLCAyMSBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2lycS5jIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9pcnEuYw0KPiBpbmRleCA4MzlhZTY3NGJjNDQuLjkyZDc0NDQ4ZWUwMyAxMDA2
NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9pcnEuYw0KPiArKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2lycS5jDQo+IEBAIC0zMDQ1LDIxICszMDQ1LDI0IEBAIHN0
YXRpYyB2b2lkIGlieF9ocGRfaXJxX3NldHVwKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZf
cHJpdikNCj4gIAlpYnhfaHBkX2RldGVjdGlvbl9zZXR1cChkZXZfcHJpdik7DQo+ICB9DQo+ICAN
Cj4gLXN0YXRpYyB2b2lkIGljcF9ocGRfZGV0ZWN0aW9uX3NldHVwKHN0cnVjdCBkcm1faTkxNV9w
cml2YXRlICpkZXZfcHJpdiwNCj4gLQkJCQkgICAgdTMyIGRkaV9ob3RwbHVnX2VuYWJsZV9tYXNr
LA0KPiAtCQkJCSAgICB1MzIgdGNfaG90cGx1Z19lbmFibGVfbWFzaykNCj4gK3N0YXRpYyB2b2lk
IGljcF9kZGlfaHBkX2RldGVjdGlvbl9zZXR1cChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2
X3ByaXYsDQo+ICsJCQkJCXUzMiBlbmFibGVfbWFzaykNCj4gIHsNCj4gIAl1MzIgaG90cGx1ZzsN
Cj4gIA0KPiAgCWhvdHBsdWcgPSBJOTE1X1JFQUQoU0hPVFBMVUdfQ1RMX0RESSk7DQo+IC0JaG90
cGx1ZyB8PSBkZGlfaG90cGx1Z19lbmFibGVfbWFzazsNCj4gKwlob3RwbHVnIHw9IGVuYWJsZV9t
YXNrOw0KPiAgCUk5MTVfV1JJVEUoU0hPVFBMVUdfQ1RMX0RESSwgaG90cGx1Zyk7DQo+ICt9DQo+
ICANCj4gLQlpZiAodGNfaG90cGx1Z19lbmFibGVfbWFzaykgew0KPiAtCQlob3RwbHVnID0gSTkx
NV9SRUFEKFNIT1RQTFVHX0NUTF9UQyk7DQo+IC0JCWhvdHBsdWcgfD0gdGNfaG90cGx1Z19lbmFi
bGVfbWFzazsNCj4gLQkJSTkxNV9XUklURShTSE9UUExVR19DVExfVEMsIGhvdHBsdWcpOw0KPiAt
CX0NCj4gK3N0YXRpYyB2b2lkIGljcF90Y19ocGRfZGV0ZWN0aW9uX3NldHVwKHN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlICpkZXZfcHJpdiwNCj4gKwkJCQkgICAgICAgdTMyIGVuYWJsZV9tYXNrKQ0K
PiArew0KPiArCXUzMiBob3RwbHVnOw0KPiArDQo+ICsJaG90cGx1ZyA9IEk5MTVfUkVBRChTSE9U
UExVR19DVExfVEMpOw0KPiArCWhvdHBsdWcgfD0gZW5hYmxlX21hc2s7DQo+ICsJSTkxNV9XUklU
RShTSE9UUExVR19DVExfVEMsIGhvdHBsdWcpOw0KPiAgfQ0KPiAgDQo+ICBzdGF0aWMgdm9pZCBp
Y3BfaHBkX2lycV9zZXR1cChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsDQo+IEBA
IC0zMDc1LDcgKzMwNzgsOSBAQCBzdGF0aWMgdm9pZCBpY3BfaHBkX2lycV9zZXR1cChzdHJ1Y3Qg
ZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsDQo+ICANCj4gIAlpYnhfZGlzcGxheV9pbnRlcnJ1
cHRfdXBkYXRlKGRldl9wcml2LCBob3RwbHVnX2lycXMsIGVuYWJsZWRfaXJxcyk7DQo+ICANCj4g
LQlpY3BfaHBkX2RldGVjdGlvbl9zZXR1cChkZXZfcHJpdiwgZGRpX2VuYWJsZV9tYXNrLCB0Y19l
bmFibGVfbWFzayk7DQo+ICsJaWNwX2RkaV9ocGRfZGV0ZWN0aW9uX3NldHVwKGRldl9wcml2LCBk
ZGlfZW5hYmxlX21hc2spOw0KPiArCWlmICh0Y19lbmFibGVfbWFzaykNCj4gKwkJaWNwX3RjX2hw
ZF9kZXRlY3Rpb25fc2V0dXAoZGV2X3ByaXYsIHRjX2VuYWJsZV9tYXNrKTsNCj4gIH0NCj4gIA0K
PiAgLyoNCj4gQEAgLTM0OTMsMTcgKzM0OTgsMTggQEAgc3RhdGljIHZvaWQgaWNwX2lycV9wb3N0
aW5zdGFsbChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpDQo+ICAJZ2VuM19hc3Nl
cnRfaWlyX2lzX3plcm8oJmRldl9wcml2LT51bmNvcmUsIFNERUlJUik7DQo+ICAJSTkxNV9XUklU
RShTREVJTVIsIH5tYXNrKTsNCj4gIA0KPiAtCWlmIChIQVNfUENIX1RHUChkZXZfcHJpdikpDQo+
IC0JCWljcF9ocGRfZGV0ZWN0aW9uX3NldHVwKGRldl9wcml2LCBUR1BfRERJX0hQRF9FTkFCTEVf
TUFTSywNCj4gLQkJCQkJVEdQX1RDX0hQRF9FTkFCTEVfTUFTSyk7DQo+IC0JZWxzZSBpZiAoSEFT
X1BDSF9KU1AoZGV2X3ByaXYpKQ0KPiAtCQlpY3BfaHBkX2RldGVjdGlvbl9zZXR1cChkZXZfcHJp
diwgVEdQX0RESV9IUERfRU5BQkxFX01BU0ssIDApOw0KPiAtCWVsc2UgaWYgKEhBU19QQ0hfTUND
KGRldl9wcml2KSkNCj4gLQkJaWNwX2hwZF9kZXRlY3Rpb25fc2V0dXAoZGV2X3ByaXYsIElDUF9E
RElfSFBEX0VOQUJMRV9NQVNLLA0KPiAtCQkJCQlJQ1BfVENfSFBEX0VOQUJMRShQT1JUX1RDMSkp
Ow0KPiAtCWVsc2UNCj4gLQkJaWNwX2hwZF9kZXRlY3Rpb25fc2V0dXAoZGV2X3ByaXYsIElDUF9E
RElfSFBEX0VOQUJMRV9NQVNLLA0KPiAtCQkJCQlJQ1BfVENfSFBEX0VOQUJMRV9NQVNLKTsNCj4g
KwlpZiAoSEFTX1BDSF9UR1AoZGV2X3ByaXYpKSB7DQo+ICsJCWljcF9kZGlfaHBkX2RldGVjdGlv
bl9zZXR1cChkZXZfcHJpdiwgVEdQX0RESV9IUERfRU5BQkxFX01BU0spOw0KPiArCQlpY3BfdGNf
aHBkX2RldGVjdGlvbl9zZXR1cChkZXZfcHJpdiwgVEdQX1RDX0hQRF9FTkFCTEVfTUFTSyk7DQo+
ICsJfSBlbHNlIGlmIChIQVNfUENIX0pTUChkZXZfcHJpdikpIHsNCj4gKwkJaWNwX2RkaV9ocGRf
ZGV0ZWN0aW9uX3NldHVwKGRldl9wcml2LCBUR1BfRERJX0hQRF9FTkFCTEVfTUFTSyk7DQo+ICsJ
fSBlbHNlIGlmIChIQVNfUENIX01DQyhkZXZfcHJpdikpIHsNCj4gKwkJaWNwX2RkaV9ocGRfZGV0
ZWN0aW9uX3NldHVwKGRldl9wcml2LCBJQ1BfRERJX0hQRF9FTkFCTEVfTUFTSyk7DQo+ICsJCWlj
cF90Y19ocGRfZGV0ZWN0aW9uX3NldHVwKGRldl9wcml2LCBJQ1BfVENfSFBEX0VOQUJMRShQT1JU
X1RDMSkpOw0KPiArCX0gZWxzZSB7DQo+ICsJCWljcF9kZGlfaHBkX2RldGVjdGlvbl9zZXR1cChk
ZXZfcHJpdiwgSUNQX0RESV9IUERfRU5BQkxFX01BU0spOw0KPiArCQlpY3BfdGNfaHBkX2RldGVj
dGlvbl9zZXR1cChkZXZfcHJpdiwgSUNQX1RDX0hQRF9FTkFCTEVfTUFTSyk7DQo+ICsJfQ0KPiAg
fQ0KPiAgDQo+ICBzdGF0aWMgdm9pZCBnZW4xMV9pcnFfcG9zdGluc3RhbGwoc3RydWN0IGRybV9p
OTE1X3ByaXZhdGUgKmRldl9wcml2KQ0KPiANCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLWdmeAo=
