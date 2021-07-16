Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 05E483CBCFA
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Jul 2021 21:52:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C2FC6E9D2;
	Fri, 16 Jul 2021 19:52:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 976DD6E9D2
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Jul 2021 19:52:50 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10047"; a="210773627"
X-IronPort-AV: E=Sophos;i="5.84,245,1620716400"; d="scan'208";a="210773627"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jul 2021 12:52:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,245,1620716400"; d="scan'208";a="656514161"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by fmsmga005.fm.intel.com with ESMTP; 16 Jul 2021 12:52:49 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Fri, 16 Jul 2021 12:52:49 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Fri, 16 Jul 2021 12:52:49 -0700
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2242.010;
 Fri, 16 Jul 2021 12:52:49 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v2 32/50] drm/i915/dg2: Add fake PCH
Thread-Index: AQHXeF6RJFWn5+4CHUaM0w5qILr0SqtGfh0A
Date: Fri, 16 Jul 2021 19:52:48 +0000
Message-ID: <8587eb22d972dcd21f7ecca61d4316bc99162177.camel@intel.com>
References: <20210714031540.3539704-1-matthew.d.roper@intel.com>
 <20210714031540.3539704-33-matthew.d.roper@intel.com>
In-Reply-To: <20210714031540.3539704-33-matthew.d.roper@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.132]
Content-ID: <D55B8F70B6C8A14280F93A3C2C38575A@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2 32/50] drm/i915/dg2: Add fake PCH
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
Cc: "De Marchi, Lucas" <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCAyMDIxLTA3LTEzIGF0IDIwOjE1IC0wNzAwLCBNYXR0IFJvcGVyIHdyb3RlOg0KPiBB
cyB3aXRoIERHMSwgREcyIGhhcyBhbiBJQ0wtc3R5bGUgc291dGggZGlzcGxheSBpbnRlcmZhY2Ug
cHJvdmlkZWQgb24NCj4gdGhlIHNhbWUgUENJIGRldmljZS4gIEFkZCBhIGZha2UgUENIIHRvIGVu
c3VyZSBERzIgdGFrZXMgdGhlIGFwcHJvcHJpYXRlDQo+IGNvZGVwYXRocyBmb3Igc291dGggZGlz
cGxheSBoYW5kbGluZy4NCj4gDQoNClJldmlld2VkLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXph
IDxqb3NlLnNvdXphQGludGVsLmNvbT4NCg0KPiBCc3BlYzogNTQ4NzEsIDUwMDYyLCA0OTk2MSwg
NTM2NzMNCj4gQ2M6IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPg0K
PiBTaWduZWQtb2ZmLWJ5OiBNYXR0IFJvcGVyIDxtYXR0aGV3LmQucm9wZXJAaW50ZWwuY29tPg0K
PiBTaWduZWQtb2ZmLWJ5OiBBZGl0eWEgU3dhcnVwIDxhZGl0eWEuc3dhcnVwQGludGVsLmNvbT4N
Cj4gU2lnbmVkLW9mZi1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRl
bC5jb20+DQo+IFJldmlld2VkLWJ5OiBMdWNhcyBEZSBNYXJjaGkgPGx1Y2FzLmRlbWFyY2hpQGlu
dGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2lycS5jICB8IDIg
Ky0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BjaC5jIHwgMyArKysNCj4gIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2ludGVsX3BjaC5oIHwgMiArKw0KPiAgMyBmaWxlcyBjaGFuZ2VkLCA2
IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X2lycS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9pcnEu
Yw0KPiBpbmRleCA2MWRjZWIyYTE3YzEuLmUyMTcxYmQyODIwZSAxMDA2NDQNCj4gLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9pcnEuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X2lycS5jDQo+IEBAIC0yMDcsNyArMjA3LDcgQEAgc3RhdGljIHZvaWQgaW50ZWxfaHBk
X2luaXRfcGlucyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpDQo+ICAJICAgICgh
SEFTX1BDSF9TUExJVChkZXZfcHJpdikgfHwgSEFTX1BDSF9OT1AoZGV2X3ByaXYpKSkNCj4gIAkJ
cmV0dXJuOw0KPiAgDQo+IC0JaWYgKEhBU19QQ0hfREcxKGRldl9wcml2KSkNCj4gKwlpZiAoSU5U
RUxfUENIX1RZUEUoZGV2X3ByaXYpID49IFBDSF9ERzEpDQo+ICAJCWhwZC0+cGNoX2hwZCA9IGhw
ZF9zZGVfZGcxOw0KPiAgCWVsc2UgaWYgKElOVEVMX1BDSF9UWVBFKGRldl9wcml2KSA+PSBQQ0hf
SUNQKQ0KPiAgCQlocGQtPnBjaF9ocGQgPSBocGRfaWNwOw0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaW50ZWxfcGNoLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9w
Y2guYw0KPiBpbmRleCA0ZTkyYWUxOTE4OWUuLmNjNDQxNjRlMjQyYiAxMDA2NDQNCj4gLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcGNoLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaW50ZWxfcGNoLmMNCj4gQEAgLTIxMSw2ICsyMTEsOSBAQCB2b2lkIGludGVsX2RldGVj
dF9wY2goc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQ0KPiAgCWlmIChJU19ERzEo
ZGV2X3ByaXYpKSB7DQo+ICAJCWRldl9wcml2LT5wY2hfdHlwZSA9IFBDSF9ERzE7DQo+ICAJCXJl
dHVybjsNCj4gKwl9IGVsc2UgaWYgKElTX0RHMihkZXZfcHJpdikpIHsNCj4gKwkJZGV2X3ByaXYt
PnBjaF90eXBlID0gUENIX0RHMjsNCj4gKwkJcmV0dXJuOw0KPiAgCX0NCj4gIA0KPiAgCS8qDQo+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wY2guaCBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2ludGVsX3BjaC5oDQo+IGluZGV4IGUyZjNmMzBjNjQ0NS4uN2MwZDgzZDI5
MmRjIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wY2guaA0KPiAr
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wY2guaA0KPiBAQCAtMzAsNiArMzAsNyBA
QCBlbnVtIGludGVsX3BjaCB7DQo+ICANCj4gIAkvKiBGYWtlIFBDSHMsIGZ1bmN0aW9uYWxpdHkg
aGFuZGxlZCBvbiB0aGUgc2FtZSBQQ0kgZGV2ICovDQo+ICAJUENIX0RHMSA9IDEwMjQsDQo+ICsJ
UENIX0RHMiwNCj4gIH07DQo+ICANCj4gICNkZWZpbmUgSU5URUxfUENIX0RFVklDRV9JRF9NQVNL
CQkweGZmODANCj4gQEAgLTYyLDYgKzYzLDcgQEAgZW51bSBpbnRlbF9wY2ggew0KPiAgDQo+ICAj
ZGVmaW5lIElOVEVMX1BDSF9UWVBFKGRldl9wcml2KQkJKChkZXZfcHJpdiktPnBjaF90eXBlKQ0K
PiAgI2RlZmluZSBJTlRFTF9QQ0hfSUQoZGV2X3ByaXYpCQkJKChkZXZfcHJpdiktPnBjaF9pZCkN
Cj4gKyNkZWZpbmUgSEFTX1BDSF9ERzIoZGV2X3ByaXYpCQkJKElOVEVMX1BDSF9UWVBFKGRldl9w
cml2KSA9PSBQQ0hfREcyKQ0KPiAgI2RlZmluZSBIQVNfUENIX0FEUChkZXZfcHJpdikJCQkoSU5U
RUxfUENIX1RZUEUoZGV2X3ByaXYpID09IFBDSF9BRFApDQo+ICAjZGVmaW5lIEhBU19QQ0hfREcx
KGRldl9wcml2KQkJCShJTlRFTF9QQ0hfVFlQRShkZXZfcHJpdikgPT0gUENIX0RHMSkNCj4gICNk
ZWZpbmUgSEFTX1BDSF9KU1AoZGV2X3ByaXYpCQkJKElOVEVMX1BDSF9UWVBFKGRldl9wcml2KSA9
PSBQQ0hfSlNQKQ0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
ZngK
