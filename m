Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 225BE1E294C
	for <lists+intel-gfx@lfdr.de>; Tue, 26 May 2020 19:44:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7DC7B6E04A;
	Tue, 26 May 2020 17:44:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6C3656E04A
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 May 2020 17:44:52 +0000 (UTC)
IronPort-SDR: /LDu4jMhYFXvFBoq1W8DBByVG5xfWDRsPLXdcOPpjAxLhdwASZzbb5MB6VfoFCi4QDM6UOWd7I
 E3v3NdY883vg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2020 10:44:51 -0700
IronPort-SDR: qIZoZJR8WK1KqSE8hBlZFCrOCXpxKhbGSPToI/1F4EnhapCHXnEjRHyvnZl+BHpy9N8BHdwSZh
 Wr+UoYJFurgg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,437,1583222400"; d="scan'208";a="291281338"
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
 by fmsmga004.fm.intel.com with ESMTP; 26 May 2020 10:44:50 -0700
Received: from fmsmsx161.amr.corp.intel.com (10.18.125.9) by
 FMSMSX103.amr.corp.intel.com (10.18.124.201) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 26 May 2020 10:44:50 -0700
Received: from fmsmsx116.amr.corp.intel.com ([169.254.2.9]) by
 FMSMSX161.amr.corp.intel.com ([10.18.125.9]) with mapi id 14.03.0439.000;
 Tue, 26 May 2020 10:44:50 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "De
 Marchi, Lucas" <lucas.demarchi@intel.com>
Thread-Topic: [Intel-gfx] [PATCH 37/37] drm/i915/dg1: Remove SHPD_FILTER_CNT
 register programming
Thread-Index: AQHWLwgxgZGLtWRv3kSfol3M76rNlai7IqWA
Date: Tue, 26 May 2020 17:44:49 +0000
Message-ID: <605af489ad1288d71a1a442ef1de4ed0482505d2.camel@intel.com>
References: <20200521003803.18936-1-lucas.demarchi@intel.com>
 <20200521003803.18936-38-lucas.demarchi@intel.com>
In-Reply-To: <20200521003803.18936-38-lucas.demarchi@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.255.73.147]
Content-ID: <38665E8D475EA043BCA1ACF704876BF9@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 37/37] drm/i915/dg1: Remove SHPD_FILTER_CNT
 register programming
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
Cc: "Auld, Matthew" <matthew.auld@intel.com>,
 "fernando.pacheco@intel.com" <fernando.pacheco@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCAyMDIwLTA1LTIwIGF0IDE3OjM4IC0wNzAwLCBMdWNhcyBEZSBNYXJjaGkgd3JvdGU6
DQo+IEZyb206IEFudXNoYSBTcml2YXRzYSA8YW51c2hhLnNyaXZhdHNhQGludGVsLmNvbT4NCj4g
DQo+IEJzcGVjIGFza3MgdXMgdG8gcmVtb3ZlIHRoZSBzcGVjaWFsIHByb2dyYW1taW5nIG9mIHRo
ZQ0KPiBTSFBEX0ZJTFRFUl9DTlQgcmVnaXN0ZXIgd2hpY2ggd2UgaGF2ZSBiZWVuIGRvaW5nIHNp
bmNlIENOUCsuDQo+IA0KPiBCc3BlYzogNDkzMDUNCj4gDQoNClJldmlld2VkLWJ5OiBKb3PDqSBS
b2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4NCg0KPiBDYzogTWF0dCBSb3Bl
ciA8bWF0dGhldy5kLnJvcGVyQGludGVsLmNvbT4NCj4gU2lnbmVkLW9mZi1ieTogQW51c2hhIFNy
aXZhdHNhIDxhbnVzaGEuc3JpdmF0c2FAaW50ZWwuY29tPg0KPiBTaWduZWQtb2ZmLWJ5OiBMdWNh
cyBEZSBNYXJjaGkgPGx1Y2FzLmRlbWFyY2hpQGludGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X2lycS5jIHwgMyArKy0NCj4gIDEgZmlsZSBjaGFuZ2VkLCAyIGlu
c2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X2lycS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9pcnEuYw0K
PiBpbmRleCBjYTM1ZWRlZjQ5MmQuLmQ0MDYxZDViNGQ2NyAxMDA2NDQNCj4gLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9pcnEuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X2lycS5jDQo+IEBAIC0zMjc0LDcgKzMyNzQsOCBAQCBzdGF0aWMgdm9pZCBpY3BfaHBkX2ly
cV9zZXR1cChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsDQo+ICAJaG90cGx1Z19p
cnFzID0gc2RlX2RkaV9tYXNrIHwgc2RlX3RjX21hc2s7DQo+ICAJZW5hYmxlZF9pcnFzID0gaW50
ZWxfaHBkX2VuYWJsZWRfaXJxcyhkZXZfcHJpdiwgZGV2X3ByaXYtPmhvdHBsdWcucGNoX2hwZCk7
DQo+ICANCj4gLQlJOTE1X1dSSVRFKFNIUERfRklMVEVSX0NOVCwgU0hQRF9GSUxURVJfQ05UXzUw
MF9BREopOw0KPiArCWlmIChJTlRFTF9QQ0hfVFlQRShkZXZfcHJpdikgPD0gUENIX1RHUCkNCj4g
KwkJSTkxNV9XUklURShTSFBEX0ZJTFRFUl9DTlQsIFNIUERfRklMVEVSX0NOVF81MDBfQURKKTsN
Cj4gIA0KPiAgCWlieF9kaXNwbGF5X2ludGVycnVwdF91cGRhdGUoZGV2X3ByaXYsIGhvdHBsdWdf
aXJxcywgZW5hYmxlZF9pcnFzKTsNCj4gIA0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4Cg==
