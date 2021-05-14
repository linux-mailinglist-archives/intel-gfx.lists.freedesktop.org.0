Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C10C380F10
	for <lists+intel-gfx@lfdr.de>; Fri, 14 May 2021 19:34:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7C4266F3CF;
	Fri, 14 May 2021 17:34:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D0C286F3CF
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 May 2021 17:34:39 +0000 (UTC)
IronPort-SDR: U9RAJ12yxcrkasQDP/OVsK9bSzahkBRLOSioKGbGV5Uc+ArQGYh2I8KE9ENUboXPrIuSPLjlQn
 mexJfA+FPerQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9984"; a="199901485"
X-IronPort-AV: E=Sophos;i="5.82,300,1613462400"; d="scan'208";a="199901485"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2021 10:34:36 -0700
IronPort-SDR: 0yynE/W2f9AOH90zfq89jJIOsxMrNH3j02WAppMhlqXmcDrmGMQazZBePJKJSGTQJWXAXRIGDX
 IDbn0UJZK/5g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,300,1613462400"; d="scan'208";a="393697183"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by orsmga006.jf.intel.com with ESMTP; 14 May 2021 10:34:36 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Fri, 14 May 2021 10:34:36 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Fri, 14 May 2021 10:34:35 -0700
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2106.013;
 Fri, 14 May 2021 10:34:35 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 6/6] drm/i915: Drop redundant has_hdmi_sink
 check
Thread-Index: AQHXRn/H2i+zbFpOoEqNOlv9J3qygqrjuAuA
Date: Fri, 14 May 2021 17:34:35 +0000
Message-ID: <e482732f981c754e986404540d592bb89bef5091.camel@intel.com>
References: <20210511160532.21446-1-ville.syrjala@linux.intel.com>
 <20210511160532.21446-7-ville.syrjala@linux.intel.com>
In-Reply-To: <20210511160532.21446-7-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-ID: <6A25A930E2608748A7C80E63D94CC145@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 6/6] drm/i915: Drop redundant has_hdmi_sink
 check
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
PiANCj4gaW50ZWxfaGRtaV9icGNfcG9zc2libGUoKSB3aWxsIGNoZWNrIGhhc19oZG1pX3Npbmsg
Zm9yIHVzLCBzbyBubw0KPiBuZWVkIHRvIGNoZWNrIGl0IGluIGludGVsX2hkbWlfbW9kZV9jbG9j
a192YWxpZCgpIGFueW1vcmUuDQoNClJldmlld2VkLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXph
IDxqb3NlLnNvdXphQGludGVsLmNvbT4NCg0KPiANCj4gQ2M6IFdlcm5lciBTZW1iYWNoIDx3c2VA
dHV4ZWRvY29tcHV0ZXJzLmNvbT4NCj4gU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2
aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2hkbWkuYyB8IDIyICsrKysrKysrKystLS0tLS0tLS0tLS0NCj4g
IDEgZmlsZSBjaGFuZ2VkLCAxMCBpbnNlcnRpb25zKCspLCAxMiBkZWxldGlvbnMoLSkNCj4gDQo+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hkbWkuYyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaGRtaS5jDQo+IGluZGV4IDgwZTJh
ZTY1MmY2ZS4uN2U0ODg5N2JiYWMwIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2hkbWkuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2hkbWkuYw0KPiBAQCAtMTkxNCwxOSArMTkxNCwxNyBAQCBpbnRlbF9oZG1pX21v
ZGVfY2xvY2tfdmFsaWQoc3RydWN0IGRybV9jb25uZWN0b3IgKmNvbm5lY3RvciwgaW50IGNsb2Nr
LA0KPiAgCXN0YXR1cyA9IGhkbWlfcG9ydF9jbG9ja192YWxpZChoZG1pLCBpbnRlbF9oZG1pX3Bv
cnRfY2xvY2soY2xvY2ssIDgpLA0KPiAgCQkJCSAgICAgICB0cnVlLCBoYXNfaGRtaV9zaW5rKTsN
Cj4gIA0KPiAtCWlmIChoYXNfaGRtaV9zaW5rKSB7DQo+IC0JCS8qIGlmIHdlIGNhbid0IGRvIDhi
cGMgd2UgbWF5IHN0aWxsIGJlIGFibGUgdG8gZG8gMTJicGMgKi8NCj4gLQkJaWYgKHN0YXR1cyAh
PSBNT0RFX09LICYmDQo+IC0JCSAgICBpbnRlbF9oZG1pX2JwY19wb3NzaWJsZShjb25uZWN0b3Is
IDEyLCBoYXNfaGRtaV9zaW5rLCB5Y2JjcjQyMF9vdXRwdXQpKQ0KPiAtCQkJc3RhdHVzID0gaGRt
aV9wb3J0X2Nsb2NrX3ZhbGlkKGhkbWksIGludGVsX2hkbWlfcG9ydF9jbG9jayhjbG9jaywgMTIp
LA0KPiAtCQkJCQkJICAgICAgIHRydWUsIGhhc19oZG1pX3NpbmspOw0KPiArCS8qIGlmIHdlIGNh
bid0IGRvIDhicGMgd2UgbWF5IHN0aWxsIGJlIGFibGUgdG8gZG8gMTJicGMgKi8NCj4gKwlpZiAo
c3RhdHVzICE9IE1PREVfT0sgJiYNCj4gKwkgICAgaW50ZWxfaGRtaV9icGNfcG9zc2libGUoY29u
bmVjdG9yLCAxMiwgaGFzX2hkbWlfc2luaywgeWNiY3I0MjBfb3V0cHV0KSkNCj4gKwkJc3RhdHVz
ID0gaGRtaV9wb3J0X2Nsb2NrX3ZhbGlkKGhkbWksIGludGVsX2hkbWlfcG9ydF9jbG9jayhjbG9j
aywgMTIpLA0KPiArCQkJCQkgICAgICAgdHJ1ZSwgaGFzX2hkbWlfc2luayk7DQo+ICANCj4gLQkJ
LyogaWYgd2UgY2FuJ3QgZG8gOCwxMmJwYyB3ZSBtYXkgc3RpbGwgYmUgYWJsZSB0byBkbyAxMGJw
YyAqLw0KPiAtCQlpZiAoc3RhdHVzICE9IE1PREVfT0sgJiYNCj4gLQkJICAgIGludGVsX2hkbWlf
YnBjX3Bvc3NpYmxlKGNvbm5lY3RvciwgMTAsIGhhc19oZG1pX3NpbmssIHljYmNyNDIwX291dHB1
dCkpDQo+IC0JCQlzdGF0dXMgPSBoZG1pX3BvcnRfY2xvY2tfdmFsaWQoaGRtaSwgaW50ZWxfaGRt
aV9wb3J0X2Nsb2NrKGNsb2NrLCAxMCksDQo+IC0JCQkJCQkgICAgICAgdHJ1ZSwgaGFzX2hkbWlf
c2luayk7DQo+IC0JfQ0KPiArCS8qIGlmIHdlIGNhbid0IGRvIDgsMTJicGMgd2UgbWF5IHN0aWxs
IGJlIGFibGUgdG8gZG8gMTBicGMgKi8NCj4gKwlpZiAoc3RhdHVzICE9IE1PREVfT0sgJiYNCj4g
KwkgICAgaW50ZWxfaGRtaV9icGNfcG9zc2libGUoY29ubmVjdG9yLCAxMCwgaGFzX2hkbWlfc2lu
aywgeWNiY3I0MjBfb3V0cHV0KSkNCj4gKwkJc3RhdHVzID0gaGRtaV9wb3J0X2Nsb2NrX3ZhbGlk
KGhkbWksIGludGVsX2hkbWlfcG9ydF9jbG9jayhjbG9jaywgMTApLA0KPiArCQkJCQkgICAgICAg
dHJ1ZSwgaGFzX2hkbWlfc2luayk7DQo+ICANCj4gIAlyZXR1cm4gc3RhdHVzOw0KPiAgfQ0KDQpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
