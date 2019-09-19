Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 48820B702A
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Sep 2019 02:45:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A2C486F7D4;
	Thu, 19 Sep 2019 00:45:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5F2426F7D4
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Sep 2019 00:45:30 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Sep 2019 17:45:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,522,1559545200"; d="scan'208";a="199227602"
Received: from fmsmsx106.amr.corp.intel.com ([10.18.124.204])
 by orsmga002.jf.intel.com with ESMTP; 18 Sep 2019 17:45:29 -0700
Received: from fmsmsx122.amr.corp.intel.com (10.18.125.37) by
 FMSMSX106.amr.corp.intel.com (10.18.124.204) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 18 Sep 2019 17:45:28 -0700
Received: from fmsmsx116.amr.corp.intel.com ([169.254.2.40]) by
 fmsmsx122.amr.corp.intel.com ([169.254.5.106]) with mapi id 14.03.0439.000;
 Wed, 18 Sep 2019 17:45:28 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 2/2] drm/i915: Unify ICP and MCC hotplug pin tables
Thread-Index: AQHVbny1gRjSKwFYpUe3CPePi3ga8acyn26A
Date: Thu, 19 Sep 2019 00:45:27 +0000
Message-ID: <f71be50e7331032b0fd9cafd60b5d6e3bb543649.camel@intel.com>
References: <20190918235626.3750-1-matthew.d.roper@intel.com>
 <20190918235626.3750-2-matthew.d.roper@intel.com>
In-Reply-To: <20190918235626.3750-2-matthew.d.roper@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.9.135]
Content-ID: <F4F2DDBB4C8EC94F86B3E3A98140361A@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915: Unify ICP and MCC hotplug pin
 tables
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCAyMDE5LTA5LTE4IGF0IDE2OjU2IC0wNzAwLCBNYXR0IFJvcGVyIHdyb3RlOg0KPiBU
aGUgTUNDIGhwZCB0YWJsZSBpcyBqdXN0IGEgc3Vic2V0IG9mIHRoZSBJQ1AgdGFibGU7IHdlIGNh
biBlbGltaW5hdGUNCj4gaXQNCj4gYW5kIHVzZSB0aGUgSUNQIHRhYmxlIGV2ZXJ5d2hlcmUuICBU
aGUgZXh0cmEgcGlucyBpbiB0aGUgdGFibGUgd29uJ3QNCj4gYmUNCj4gYSBwcm9ibGVtIGZvciBN
Q0Mgc2luY2Ugd2Ugc3RpbGwgc3VwcGx5IGFuIGFwcHJvcHJpYXRlIGhvdHBsdWcNCj4gdHJpZ2dl
cg0KPiBtYXNrIGFueXdoZXJlIHRoZSBwaW4gdGFibGUgaXMgdXNlZC4NCj4gDQoNClJldmlld2Vk
LWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4NCg0KPiBD
YzogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+DQo+IFNpZ25l
ZC1vZmYtYnk6IE1hdHQgUm9wZXIgPG1hdHRoZXcuZC5yb3BlckBpbnRlbC5jb20+DQo+IC0tLQ0K
PiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9pcnEuYyB8IDEwICsrLS0tLS0tLS0NCj4gIDEg
ZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDggZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9pcnEuYw0KPiBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfaXJxLmMNCj4gaW5kZXggYWU3MjI4MDMyZDJjLi5iYzgzZjA5NDA2NWEg
MTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfaXJxLmMNCj4gKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9pcnEuYw0KPiBAQCAtMTU3LDEyICsxNTcsNiBAQCBz
dGF0aWMgY29uc3QgdTMyIGhwZF9pY3BbSFBEX05VTV9QSU5TXSA9IHsNCj4gIAlbSFBEX1BPUlRf
Rl0gPSBTREVfVENfSE9UUExVR19JQ1AoUE9SVF9UQzQpLA0KPiAgfTsNCj4gIA0KPiAtc3RhdGlj
IGNvbnN0IHUzMiBocGRfbWNjW0hQRF9OVU1fUElOU10gPSB7DQo+IC0JW0hQRF9QT1JUX0FdID0g
U0RFX0RESV9IT1RQTFVHX0lDUChQT1JUX0EpLA0KPiAtCVtIUERfUE9SVF9CXSA9IFNERV9ERElf
SE9UUExVR19JQ1AoUE9SVF9CKSwNCj4gLQlbSFBEX1BPUlRfQ10gPSBTREVfVENfSE9UUExVR19J
Q1AoUE9SVF9UQzEpLA0KPiAtfTsNCj4gLQ0KPiAgc3RhdGljIGNvbnN0IHUzMiBocGRfdGdwW0hQ
RF9OVU1fUElOU10gPSB7DQo+ICAJW0hQRF9QT1JUX0FdID0gU0RFX0RESV9IT1RQTFVHX0lDUChQ
T1JUX0EpLA0KPiAgCVtIUERfUE9SVF9CXSA9IFNERV9ERElfSE9UUExVR19JQ1AoUE9SVF9CKSwN
Cj4gQEAgLTIyNTgsNyArMjI1Miw3IEBAIHN0YXRpYyB2b2lkIGljcF9pcnFfaGFuZGxlcihzdHJ1
Y3QNCj4gZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsIHUzMiBwY2hfaWlyKQ0KPiAgCX0gZWxz
ZSBpZiAoSEFTX1BDSF9NQ0MoZGV2X3ByaXYpKSB7DQo+ICAJCWRkaV9ob3RwbHVnX3RyaWdnZXIg
PSBwY2hfaWlyICYgU0RFX0RESV9NQVNLX1RHUDsNCj4gIAkJdGNfaG90cGx1Z190cmlnZ2VyID0g
MDsNCj4gLQkJcGlucyA9IGhwZF9tY2M7DQo+ICsJCXBpbnMgPSBocGRfaWNwOw0KPiAgCX0gZWxz
ZSB7DQo+ICAJCWRkaV9ob3RwbHVnX3RyaWdnZXIgPSBwY2hfaWlyICYgU0RFX0RESV9NQVNLX0lD
UDsNCj4gIAkJdGNfaG90cGx1Z190cmlnZ2VyID0gcGNoX2lpciAmIFNERV9UQ19NQVNLX0lDUDsN
Cj4gQEAgLTM0MzQsNyArMzQyOCw3IEBAIHN0YXRpYyB2b2lkIG1jY19ocGRfaXJxX3NldHVwKHN0
cnVjdA0KPiBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikNCj4gIAlpY3BfaHBkX2lycV9zZXR1
cChkZXZfcHJpdiwNCj4gIAkJCSAgU0RFX0RESV9NQVNLX1RHUCwgMCwNCj4gIAkJCSAgVEdQX0RE
SV9IUERfRU5BQkxFX01BU0ssIDAsDQo+IC0JCQkgIGhwZF9tY2MpOw0KPiArCQkJICBocGRfaWNw
KTsNCj4gIH0NCj4gIA0KPiAgc3RhdGljIHZvaWQgZ2VuMTFfaHBkX2RldGVjdGlvbl9zZXR1cChz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZQ0KPiAqZGV2X3ByaXYpDQpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
