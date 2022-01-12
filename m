Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DE4A748C447
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Jan 2022 13:58:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4AFD210F95E;
	Wed, 12 Jan 2022 12:58:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 650CA10F8D3
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Jan 2022 12:58:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641992303; x=1673528303;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=19rSS8ZqdNhWsMRiUzYQTZA1RP3OOZnsahA+VDC8kXE=;
 b=YCvMr3SbCbbe4GS4Hc5C2GBKsRV3+QmHi7V4JewjqfX2eLliDAn8Qt6t
 6X40eU4eLOfHlDycFt/ItbI5GEebZI44kFQp4EFXdDTPR8w6oRQVaWfcs
 9Woy2GbSQtzIupmaGwMm2gw6q8kMt9QuQiIxhJ6DUYhcn6hqei1Nji8Ds
 HdKlevZXEmQEez2KiTIBC94YoYs89i4tXwAeoqCRXgDtLLbBDcLigi/Da
 2OjKBdaT5qaQI7q6SdhhJ7Ajd6FEFVJ00x2/hGgSWLKswlmzV3BM5c+xu
 uvHs26Kl+bO45iteOiTk8gssHyeIYUwpNrJyaGo/o7xQdoXvDtFR8JoAv w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10224"; a="243522940"
X-IronPort-AV: E=Sophos;i="5.88,282,1635231600"; d="scan'208";a="243522940"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2022 04:58:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,282,1635231600"; d="scan'208";a="762869688"
Received: from irsmsx601.ger.corp.intel.com ([163.33.146.7])
 by fmsmga006.fm.intel.com with ESMTP; 12 Jan 2022 04:58:22 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 irsmsx601.ger.corp.intel.com (163.33.146.7) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Wed, 12 Jan 2022 12:58:20 +0000
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2308.020;
 Wed, 12 Jan 2022 04:58:19 -0800
From: "Souza, Jose" <jose.souza@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915/psr: remove unused lines_to_wait vbt info
Thread-Index: AQHYB6dd7VC0CU6wBECkcXiyCAADB6xf32SA
Date: Wed, 12 Jan 2022 12:58:19 +0000
Message-ID: <fe05d609b9425e997a4145fe5a7761419b2e27c3.camel@intel.com>
References: <20220112112715.1234366-1-jani.nikula@intel.com>
In-Reply-To: <20220112112715.1234366-1-jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-Type: text/plain; charset="utf-8"
Content-ID: <AF0AB836CBCB0D4CBF711135F6B9942A@intel.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/psr: remove unused lines_to_wait
 vbt info
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCAyMDIyLTAxLTEyIGF0IDEzOjI3ICswMjAwLCBKYW5pIE5pa3VsYSB3cm90ZToNCj4g
VGhlIGxpbmVzX3RvX3dhaXQgaW5mbyBmcm9tIFZCVCBpcyBuZXZlciB1c2VkLiBSZW1vdmUuDQo+
IA0KDQpSZXZpZXdlZC1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRl
bC5jb20+DQoNCj4gQ2M6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwu
Y29tPg0KPiBDYzogSm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+
IENjOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiBT
aWduZWQtb2ZmLWJ5OiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPg0KPiANCj4g
LS0tDQo+IA0KPiBOb3QgZXhhY3RseSBhIHYyLCBidXQgcmF0aGVyIGEgcmVwbGFjZW1lbnQgZm9y
IFsxXS4NCj4gDQo+IFsxXSBodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvcGF0Y2gv
bXNnaWQvMjAyMjAxMDQwODU0MjEuMjEzNzkzLTEtamFuaS5uaWt1bGFAaW50ZWwuY29tDQo+IC0t
LQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9zLmMgfCAyMCAtLS0t
LS0tLS0tLS0tLS0tLS0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaCAgICAg
ICAgICAgfCAgOCAtLS0tLS0tLQ0KPiAgMiBmaWxlcyBjaGFuZ2VkLCAyOCBkZWxldGlvbnMoLSkN
Cj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jp
b3MuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5jDQo+IGluZGV4
IGM3YThkNTE3Y2U4MS4uMjYyNDA2YzAwZTUzIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Jpb3MuYw0KPiBAQCAtOTA1LDI2ICs5MDUsNiBAQCBwYXJzZV9wc3Io
c3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsIGNvbnN0IHN0cnVjdCBiZGJfaGVhZGVyICpi
ZGIpDQo+ICAJaTkxNS0+dmJ0LnBzci5pZGxlX2ZyYW1lcyA9IHBzcl90YWJsZS0+aWRsZV9mcmFt
ZXMgPCAwID8gMCA6DQo+ICAJCXBzcl90YWJsZS0+aWRsZV9mcmFtZXMgPiAxNSA/IDE1IDogcHNy
X3RhYmxlLT5pZGxlX2ZyYW1lczsNCj4gIA0KPiAtCXN3aXRjaCAocHNyX3RhYmxlLT5saW5lc190
b193YWl0KSB7DQo+IC0JY2FzZSAwOg0KPiAtCQlpOTE1LT52YnQucHNyLmxpbmVzX3RvX3dhaXQg
PSBQU1JfMF9MSU5FU19UT19XQUlUOw0KPiAtCQlicmVhazsNCj4gLQljYXNlIDE6DQo+IC0JCWk5
MTUtPnZidC5wc3IubGluZXNfdG9fd2FpdCA9IFBTUl8xX0xJTkVfVE9fV0FJVDsNCj4gLQkJYnJl
YWs7DQo+IC0JY2FzZSAyOg0KPiAtCQlpOTE1LT52YnQucHNyLmxpbmVzX3RvX3dhaXQgPSBQU1Jf
NF9MSU5FU19UT19XQUlUOw0KPiAtCQlicmVhazsNCj4gLQljYXNlIDM6DQo+IC0JCWk5MTUtPnZi
dC5wc3IubGluZXNfdG9fd2FpdCA9IFBTUl84X0xJTkVTX1RPX1dBSVQ7DQo+IC0JCWJyZWFrOw0K
PiAtCWRlZmF1bHQ6DQo+IC0JCWRybV9kYmdfa21zKCZpOTE1LT5kcm0sDQo+IC0JCQkgICAgIlZC
VCBoYXMgdW5rbm93biBQU1IgbGluZXMgdG8gd2FpdCAldVxuIiwNCj4gLQkJCSAgICBwc3JfdGFi
bGUtPmxpbmVzX3RvX3dhaXQpOw0KPiAtCQlicmVhazsNCj4gLQl9DQo+IC0NCj4gIAkvKg0KPiAg
CSAqIE5ldyBwc3Igb3B0aW9ucyAwPTUwMHVzLCAxPTEwMHVzLCAyPTI1MDB1cywgMz0wdXMNCj4g
IAkgKiBPbGQgZGVjaW1hbCB2YWx1ZSBpcyB3YWtlIHVwIHRpbWUgaW4gbXVsdGlwbGVzIG9mIDEw
MCB1cy4NCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmggYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oDQo+IGluZGV4IDZjYWVjMmVjYThjZC4uODkw
ZjFmNmZiYzQ5IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5o
DQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgNCj4gQEAgLTUxNCwxMyAr
NTE0LDYgQEAgaTkxNV9mZW5jZV90aW1lb3V0KGNvbnN0IHN0cnVjdCBkcm1faTkxNV9wcml2YXRl
ICppOTE1KQ0KPiAgLyogQW1vdW50IG9mIFBTRiBHViBwb2ludHMsIEJTcGVjIHByZWNpc2VseSBk
ZWZpbmVzIHRoaXMgKi8NCj4gICNkZWZpbmUgSTkxNV9OVU1fUFNGX0dWX1BPSU5UUyAzDQo+ICAN
Cj4gLWVudW0gcHNyX2xpbmVzX3RvX3dhaXQgew0KPiAtCVBTUl8wX0xJTkVTX1RPX1dBSVQgPSAw
LA0KPiAtCVBTUl8xX0xJTkVfVE9fV0FJVCwNCj4gLQlQU1JfNF9MSU5FU19UT19XQUlULA0KPiAt
CVBTUl84X0xJTkVTX1RPX1dBSVQNCj4gLX07DQo+IC0NCj4gIHN0cnVjdCBpbnRlbF92YnRfZGF0
YSB7DQo+ICAJLyogYmRiIHZlcnNpb24gKi8NCj4gIAl1MTYgdmVyc2lvbjsNCj4gQEAgLTU2MCw3
ICs1NTMsNiBAQCBzdHJ1Y3QgaW50ZWxfdmJ0X2RhdGEgew0KPiAgCQlib29sIGZ1bGxfbGluazsN
Cj4gIAkJYm9vbCByZXF1aXJlX2F1eF93YWtldXA7DQo+ICAJCWludCBpZGxlX2ZyYW1lczsNCj4g
LQkJZW51bSBwc3JfbGluZXNfdG9fd2FpdCBsaW5lc190b193YWl0Ow0KPiAgCQlpbnQgdHAxX3dh
a2V1cF90aW1lX3VzOw0KPiAgCQlpbnQgdHAyX3RwM193YWtldXBfdGltZV91czsNCj4gIAkJaW50
IHBzcjJfdHAyX3RwM193YWtldXBfdGltZV91czsNCg0K
