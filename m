Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B856380F09
	for <lists+intel-gfx@lfdr.de>; Fri, 14 May 2021 19:33:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 690A66F3C6;
	Fri, 14 May 2021 17:33:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E71646F3C6
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 May 2021 17:33:37 +0000 (UTC)
IronPort-SDR: 3N5FIV4E/5olGT0KprlMdul5vyKTVQ7+fzRpW6htY/UmMqNChAUaFs+UhG0oJ9VA5Hza3Y5nUd
 +9RppG14OIig==
X-IronPort-AV: E=McAfee;i="6200,9189,9984"; a="264135028"
X-IronPort-AV: E=Sophos;i="5.82,300,1613462400"; d="scan'208";a="264135028"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2021 10:33:31 -0700
IronPort-SDR: 8mn47eWR+v8h9FknyeRrV8AMwYktqBgEPfg4jk9fZs02Rn6q+3q6FpOzWpRuNLosH14FNfWjBM
 o4StWgu3Rbdw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,300,1613462400"; d="scan'208";a="393696900"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by orsmga006.jf.intel.com with ESMTP; 14 May 2021 10:33:31 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Fri, 14 May 2021 10:33:31 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Fri, 14 May 2021 10:33:31 -0700
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2106.013;
 Fri, 14 May 2021 10:33:31 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 2/6] drm/i915: Move has_hdmi_sink check into
 intel_hdmi_bpc_possible()
Thread-Index: AQHXRn/DRE1gD1mjNEiek6O9PF8Ybarjt74A
Date: Fri, 14 May 2021 17:33:30 +0000
Message-ID: <5a49970716678f0ed046b85f7c6fa6766088893a.camel@intel.com>
References: <20210511160532.21446-1-ville.syrjala@linux.intel.com>
 <20210511160532.21446-3-ville.syrjala@linux.intel.com>
In-Reply-To: <20210511160532.21446-3-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-ID: <7EAD9C331BBD7142BE031FA06B19F2B1@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 2/6] drm/i915: Move has_hdmi_sink check into
 intel_hdmi_bpc_possible()
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

T24gVHVlLCAyMDIxLTA1LTExIGF0IDE5OjA1ICswMzAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOg0K
PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiANCj4gV2Ugd2lzaCBpbnRlbF9oZG1pX2JwY19wb3NzaWJsZSgpIHRvIGNvbnNpZGVyIHdoZXRo
ZXIgdGhlIHNpbmsNCj4gc3VwcG9ydHMgSERNSSBvciBqdXN0IERWSSB3aGVuIGNoZWNraW5nIHdo
ZXRoZXIgaXQnbGwgc3VwcG9ydA0KPiBIRE1JIGRlZXAgY29sb3Igb3Igbm90LiBUaGlzIGFsc28g
dGFrZXMgY2FyZSBvZiB0aGUgImZvcmNlIERWSSINCj4gcHJvcGVydHkuDQoNClJldmlld2VkLWJ5
OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4NCg0KPiANCj4g
Q2M6IFdlcm5lciBTZW1iYWNoIDx3c2VAdHV4ZWRvY29tcHV0ZXJzLmNvbT4NCj4gU2lnbmVkLW9m
Zi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4g
LS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hkbWkuYyB8IDkgKysr
KysrLS0tDQo+ICAxIGZpbGUgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygt
KQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
aGRtaS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9oZG1pLmMNCj4gaW5k
ZXggM2RlYzMzMDdjMmI1Li5lNjk2NzY2ZjJiNGIgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaGRtaS5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfaGRtaS5jDQo+IEBAIC0xODcwLDExICsxODcwLDE3IEBAIHN0YXRp
YyBib29sIGludGVsX2hkbWlfYnBjX3Bvc3NpYmxlKHN0cnVjdCBkcm1fY29ubmVjdG9yICpjb25u
ZWN0b3IsDQo+ICANCj4gIAlzd2l0Y2ggKGJwYykgew0KPiAgCWNhc2UgMTI6DQo+ICsJCWlmICgh
aGFzX2hkbWlfc2luaykNCj4gKwkJCXJldHVybiBmYWxzZTsNCj4gKw0KPiAgCQlpZiAoeWNiY3I0
MjBfb3V0cHV0KQ0KPiAgCQkJcmV0dXJuIGhkbWktPnk0MjBfZGNfbW9kZXMgJiBEUk1fRURJRF9Z
Q0JDUjQyMF9EQ18zNjsNCj4gIAkJZWxzZQ0KPiAgCQkJcmV0dXJuIGluZm8tPmVkaWRfaGRtaV9k
Y19tb2RlcyAmIERSTV9FRElEX0hETUlfRENfMzY7DQo+ICAJY2FzZSAxMDoNCj4gKwkJaWYgKCFo
YXNfaGRtaV9zaW5rKQ0KPiArCQkJcmV0dXJuIGZhbHNlOw0KPiArDQo+ICAJCWlmICh5Y2JjcjQy
MF9vdXRwdXQpDQo+ICAJCQlyZXR1cm4gaGRtaS0+eTQyMF9kY19tb2RlcyAmIERSTV9FRElEX1lD
QkNSNDIwX0RDXzMwOw0KPiAgCQllbHNlDQo+IEBAIC0xOTcyLDkgKzE5NzgsNiBAQCBib29sIGlu
dGVsX2hkbWlfZGVlcF9jb2xvcl9wb3NzaWJsZShjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0
ZSAqY3J0Y19zdGF0ZSwNCj4gIAlpZiAoY3J0Y19zdGF0ZS0+cGlwZV9icHAgPCBicGMgKiAzKQ0K
PiAgCQlyZXR1cm4gZmFsc2U7DQo+ICANCj4gLQlpZiAoIWhhc19oZG1pX3NpbmspDQo+IC0JCXJl
dHVybiBmYWxzZTsNCj4gLQ0KPiAgCWZvcl9lYWNoX25ld19jb25uZWN0b3JfaW5fc3RhdGUoc3Rh
dGUsIGNvbm5lY3RvciwgY29ubmVjdG9yX3N0YXRlLCBpKSB7DQo+ICAJCWlmIChjb25uZWN0b3Jf
c3RhdGUtPmNydGMgIT0gY3J0Y19zdGF0ZS0+dWFwaS5jcnRjKQ0KPiAgCQkJY29udGludWU7DQoN
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
