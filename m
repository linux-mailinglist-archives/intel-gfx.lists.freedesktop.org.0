Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A689440533
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Oct 2021 23:59:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1BCBE6EA85;
	Fri, 29 Oct 2021 21:59:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2B5316EA85
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Oct 2021 21:59:13 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10152"; a="210811758"
X-IronPort-AV: E=Sophos;i="5.87,193,1631602800"; d="scan'208";a="210811758"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2021 14:59:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,193,1631602800"; d="scan'208";a="448263344"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga006.jf.intel.com with ESMTP; 29 Oct 2021 14:59:12 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Fri, 29 Oct 2021 14:59:12 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Fri, 29 Oct 2021 14:59:11 -0700
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2242.012;
 Fri, 29 Oct 2021 14:59:11 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 09/16] drm/i915: Query the vswing levels
 per-lane for icl mg phy
Thread-Index: AQHXuvPaae+/qLh+R0++j2Xl2bHdiKvrIaQA
Date: Fri, 29 Oct 2021 21:59:11 +0000
Message-ID: <d1b010a61022dd0e80ec7f075fee40473b8b7bc1.camel@intel.com>
References: <20211006204937.30774-1-ville.syrjala@linux.intel.com>
 <20211006204937.30774-10-ville.syrjala@linux.intel.com>
In-Reply-To: <20211006204937.30774-10-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.132]
Content-Type: text/plain; charset="utf-8"
Content-ID: <C8AB49F6866AC9488C63CE2A7725576C@intel.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 09/16] drm/i915: Query the vswing levels
 per-lane for icl mg phy
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

T24gV2VkLCAyMDIxLTEwLTA2IGF0IDIzOjQ5ICswMzAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOg0K
PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiANCj4gUHJlcGFyZSBmb3IgcGVyLWxhbmUgZHJpdmUgc2V0dGluZ3MgYnkgcXVlcnlpbmcgdGhl
IGRlc2lyZWQgdnN3aW5nDQo+IGxldmVsIHBlci1sYW5lLg0KPiANCj4gTm90ZSB0aGF0IHRoZSBj
b2RlIG9ubHkgZG9lcyB0d28gbG9vcHMsIHdpdGggZWFjaCBvbmUgd3JpdGluZyB0aGUNCj4gbGV2
ZWxzIGZvciB0d28gVFggbGFuZXMuDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rs
w6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMgfCAxMyArKysrKysrKysrKystDQo+ICAxIGZp
bGUgY2hhbmdlZCwgMTIgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQ0KPiANCj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jDQo+IGluZGV4IDRjNDAwZjBlNzM0Ny4u
MTg3NGEyY2E4ZjNiIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2RkaS5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGRpLmMNCj4gQEAgLTExNjMsNyArMTE2Myw2IEBAIHN0YXRpYyB2b2lkIGljbF9tZ19waHlfc2V0
X3NpZ25hbF9sZXZlbHMoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsDQo+ICB7DQo+ICAJ
c3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShlbmNvZGVyLT5iYXNl
LmRldik7DQo+ICAJZW51bSB0Y19wb3J0IHRjX3BvcnQgPSBpbnRlbF9wb3J0X3RvX3RjKGRldl9w
cml2LCBlbmNvZGVyLT5wb3J0KTsNCj4gLQlpbnQgbGV2ZWwgPSBpbnRlbF9kZGlfbGV2ZWwoZW5j
b2RlciwgY3J0Y19zdGF0ZSwgMCk7DQo+ICAJY29uc3Qgc3RydWN0IGludGVsX2RkaV9idWZfdHJh
bnMgKnRyYW5zOw0KPiAgCWludCBuX2VudHJpZXMsIGxuOw0KPiAgCXUzMiB2YWw7DQo+IEBAIC0x
MTg4LDEyICsxMTg3LDE4IEBAIHN0YXRpYyB2b2lkIGljbF9tZ19waHlfc2V0X3NpZ25hbF9sZXZl
bHMoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsDQo+ICANCj4gIAkvKiBQcm9ncmFtIE1H
X1RYX1NXSU5HQ1RSTCB3aXRoIHZhbHVlcyBmcm9tIHZzd2luZyB0YWJsZSAqLw0KPiAgCWZvciAo
bG4gPSAwOyBsbiA8IDI7IGxuKyspIHsNCj4gKwkJaW50IGxldmVsOw0KPiArDQo+ICsJCWxldmVs
ID0gaW50ZWxfZGRpX2xldmVsKGVuY29kZXIsIGNydGNfc3RhdGUsIDIqbG4rMCk7DQo+ICsNCj4g
IAkJdmFsID0gaW50ZWxfZGVfcmVhZChkZXZfcHJpdiwgTUdfVFgxX1NXSU5HQ1RSTChsbiwgdGNf
cG9ydCkpOw0KPiAgCQl2YWwgJj0gfkNSSV9UWERFRU1QSF9PVkVSUklERV8xN18xMl9NQVNLOw0K
PiAgCQl2YWwgfD0gQ1JJX1RYREVFTVBIX09WRVJSSURFXzE3XzEyKA0KPiAgCQkJdHJhbnMtPmVu
dHJpZXNbbGV2ZWxdLm1nLmNyaV90eGRlZW1waF9vdmVycmlkZV8xN18xMik7DQo+ICAJCWludGVs
X2RlX3dyaXRlKGRldl9wcml2LCBNR19UWDFfU1dJTkdDVFJMKGxuLCB0Y19wb3J0KSwgdmFsKTsN
Cj4gIA0KPiArCQlsZXZlbCA9IGludGVsX2RkaV9sZXZlbChlbmNvZGVyLCBjcnRjX3N0YXRlLCAy
KmxuKzEpOw0KPiArDQo+ICAJCXZhbCA9IGludGVsX2RlX3JlYWQoZGV2X3ByaXYsIE1HX1RYMl9T
V0lOR0NUUkwobG4sIHRjX3BvcnQpKTsNCj4gIAkJdmFsICY9IH5DUklfVFhERUVNUEhfT1ZFUlJJ
REVfMTdfMTJfTUFTSzsNCj4gIAkJdmFsIHw9IENSSV9UWERFRU1QSF9PVkVSUklERV8xN18xMigN
Cj4gQEAgLTEyMDMsNiArMTIwOCwxMCBAQCBzdGF0aWMgdm9pZCBpY2xfbWdfcGh5X3NldF9zaWdu
YWxfbGV2ZWxzKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyLA0KPiAgDQo+ICAJLyogUHJv
Z3JhbSBNR19UWF9EUlZDVFJMIHdpdGggdmFsdWVzIGZyb20gdnN3aW5nIHRhYmxlICovDQo+ICAJ
Zm9yIChsbiA9IDA7IGxuIDwgMjsgbG4rKykgew0KPiArCQlpbnQgbGV2ZWw7DQo+ICsNCj4gKwkJ
bGV2ZWwgPSBpbnRlbF9kZGlfbGV2ZWwoZW5jb2RlciwgY3J0Y19zdGF0ZSwgMipsbiswKTsNCj4g
Kw0KPiAgCQl2YWwgPSBpbnRlbF9kZV9yZWFkKGRldl9wcml2LCBNR19UWDFfRFJWQ1RSTChsbiwg
dGNfcG9ydCkpOw0KPiAgCQl2YWwgJj0gfihDUklfVFhERUVNUEhfT1ZFUlJJREVfMTFfNl9NQVNL
IHwNCj4gIAkJCSBDUklfVFhERUVNUEhfT1ZFUlJJREVfNV8wX01BU0spOw0KPiBAQCAtMTIxMyw2
ICsxMjIyLDggQEAgc3RhdGljIHZvaWQgaWNsX21nX3BoeV9zZXRfc2lnbmFsX2xldmVscyhzdHJ1
Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwNCj4gIAkJCUNSSV9UWERFRU1QSF9PVkVSUklERV9F
TjsNCj4gIAkJaW50ZWxfZGVfd3JpdGUoZGV2X3ByaXYsIE1HX1RYMV9EUlZDVFJMKGxuLCB0Y19w
b3J0KSwgdmFsKTsNCj4gIA0KPiArCQlsZXZlbCA9IGludGVsX2RkaV9sZXZlbChlbmNvZGVyLCBj
cnRjX3N0YXRlLCAyKmxuKzEpOw0KDQpJIGJlbGlldmUgb3VyIGNvZGUgc3R5bGUgcmVxdWlyZXMg
dGhhdCB3ZSBoYXZlIHNwYWNlcywgc28gaXQgc2hvdWxkIGJlICgyICogbG4gKyAxKS4NCg0KV2l0
aCB0aGUgYW5zd2VycyByZXF1ZXN0ZWQgaW4gdGhlIHByZXZpb3VzIHBhdGNoOg0KDQpSZXZpZXdl
ZC1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+DQoNCg0K
PiArDQo+ICAJCXZhbCA9IGludGVsX2RlX3JlYWQoZGV2X3ByaXYsIE1HX1RYMl9EUlZDVFJMKGxu
LCB0Y19wb3J0KSk7DQo+ICAJCXZhbCAmPSB+KENSSV9UWERFRU1QSF9PVkVSUklERV8xMV82X01B
U0sgfA0KPiAgCQkJIENSSV9UWERFRU1QSF9PVkVSUklERV81XzBfTUFTSyk7DQoNCg==
