Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 326DC23F1EB
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Aug 2020 19:27:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 94F576EA0F;
	Fri,  7 Aug 2020 17:27:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 79A556EA0F
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Aug 2020 17:26:59 +0000 (UTC)
IronPort-SDR: 4VNyqaptZryHlbe/lx/u3lwNpa3G3AVRuQm8yDI+poCFGYlVbr/ZCqdwYO/8DQCLNCVOL7b30/
 C60Ulhj6PDGQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9706"; a="150599183"
X-IronPort-AV: E=Sophos;i="5.75,446,1589266800"; d="scan'208";a="150599183"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2020 10:26:58 -0700
IronPort-SDR: JoshN0OCL8XbAIQJv+wDm1TAzLf2PUHctwFHSCHxZsZBz5tLiP4heuBbqIEM9ehs5C2nF/8pot
 33fqpjQiA/eQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,446,1589266800"; d="scan'208";a="316606410"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga004.fm.intel.com with ESMTP; 07 Aug 2020 10:26:58 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 7 Aug 2020 10:26:58 -0700
Received: from orsmsx114.amr.corp.intel.com (10.22.240.10) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Fri, 7 Aug 2020 10:26:58 -0700
Received: from orsmsx151.amr.corp.intel.com ([169.254.7.123]) by
 ORSMSX114.amr.corp.intel.com ([169.254.8.213]) with mapi id 14.03.0439.000;
 Fri, 7 Aug 2020 10:26:54 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "Gupta, Anshuman" <anshuman.gupta@intel.com>
Thread-Topic: [Intel-gfx] [PATCH v5 22/22] drm/i915/dg1: Change DMC_DEBUG{1,
 2} registers
Thread-Index: AQHWYgL2yr+1YflUEkqFJT7vKi88r6knjmoAgAWcPwCAAEcygA==
Date: Fri, 7 Aug 2020 17:26:54 +0000
Message-ID: <63bc6529b69d6c632f9bbd750db7296cab03abf0.camel@intel.com>
References: <20200724213918.27424-1-lucas.demarchi@intel.com>
 <20200724213918.27424-23-lucas.demarchi@intel.com>
 <b74c416a220331321552464c33bb06080dd99baa.camel@intel.com>
 <20200807131424.GD30770@intel.com>
In-Reply-To: <20200807131424.GD30770@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.251.136.42]
Content-ID: <E3C41239D584D94C852905A33347ADFE@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v5 22/22] drm/i915/dg1: Change DMC_DEBUG{1,
 2} registers
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "De
 Marchi, Lucas" <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCAyMDIwLTA4LTA3IGF0IDE4OjQ0ICswNTMwLCBBbnNodW1hbiBHdXB0YSB3cm90ZToN
Cj4gT24gMjAyMC0wOC0wNCBhdCAwNTowMTozNyArMDUzMCwgU291emEsIEpvc2Ugd3JvdGU6DQo+
ID4gT24gRnJpLCAyMDIwLTA3LTI0IGF0IDE0OjM5IC0wNzAwLCBMdWNhcyBEZSBNYXJjaGkgd3Jv
dGU6DQo+ID4gPiBGcm9tOiBBbnNodW1hbiBHdXB0YSA8DQo+ID4gPiBhbnNodW1hbi5ndXB0YUBp
bnRlbC5jb20NCj4gPiA+IA0KPiA+ID4gDQo+ID4gPiBER0ZYIGRldmljZXMgaGF2ZSBkaWZmZXJl
bnQgRE1DX0RFQlVHKiBjb3VudGVyIE1NSU8gYWRkcmVzcw0KPiA+ID4gb2Zmc2V0LiBJbmNvcnBv
cmF0ZSB0aGVzZSBjaGFuZ2VzIGluIGk5MTVfcmVnLmggZm9yIERHMSBEQzUvREM2DQo+ID4gPiBj
b3VudGVyIGFuZCBoYW5kbGUgaTkxNV9kbWNfaW5mbyBhY2NvcmRpbmdseS4NCj4gPiA+IA0KPiA+
ID4gQ2M6IFVtYSBTaGFua2FyIDwNCj4gPiA+IHVtYS5zaGFua2FyQGludGVsLmNvbQ0KPiA+ID4g
DQo+ID4gPiANCj4gPiA+IFNpZ25lZC1vZmYtYnk6IEFuc2h1bWFuIEd1cHRhIDwNCj4gPiA+IGFu
c2h1bWFuLmd1cHRhQGludGVsLmNvbQ0KPiA+ID4gDQo+ID4gPiANCj4gPiA+IFNpZ25lZC1vZmYt
Ynk6IEx1Y2FzIERlIE1hcmNoaSA8DQo+ID4gPiBsdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20NCj4g
PiA+IA0KPiA+ID4gDQo+ID4gPiAtLS0NCj4gPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2Rpc3BsYXlfZGVidWdmcy5jIHwgOSArKysrKysrLS0NCj4gPiA+ICBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oICAgICAgICAgICAgICAgICAgICAgIHwgMiArKw0KPiA+
ID4gIDIgZmlsZXMgY2hhbmdlZCwgOSBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQ0KPiA+
ID4gDQo+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kaXNwbGF5X2RlYnVnZnMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGlzcGxheV9kZWJ1Z2ZzLmMNCj4gPiA+IGluZGV4IDM2NDQ3NTJjYzVlYy4uZTM1MzZlZGNiMzk0
IDEwMDY0NA0KPiA+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
aXNwbGF5X2RlYnVnZnMuYw0KPiA+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kaXNwbGF5X2RlYnVnZnMuYw0KPiA+ID4gQEAgLTUxNSw4ICs1MTUsMTMgQEAgc3Rh
dGljIGludCBpOTE1X2RtY19pbmZvKHN0cnVjdCBzZXFfZmlsZSAqbSwgdm9pZCAqdW51c2VkKQ0K
PiA+ID4gIAkJICAgQ1NSX1ZFUlNJT05fTUlOT1IoY3NyLT52ZXJzaW9uKSk7DQo+ID4gPiAgDQo+
ID4gPiAgCWlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDEyKSB7DQo+ID4gPiAtCQlkYzVfcmVn
ID0gVEdMX0RNQ19ERUJVR19EQzVfQ09VTlQ7DQo+ID4gPiAtCQlkYzZfcmVnID0gVEdMX0RNQ19E
RUJVR19EQzZfQ09VTlQ7DQo+ID4gPiArCQlpZiAoSVNfREcxKGRldl9wcml2KSkgew0KPiA+ID4g
KwkJCWRjNV9yZWcgPSBERzFfRE1DX0RFQlVHX0RDNV9DT1VOVDsNCj4gPiA+ICsJCX0gZWxzZSB7
DQo+ID4gPiArCQkJZGM1X3JlZyA9IFRHTF9ETUNfREVCVUdfREM1X0NPVU5UOw0KPiA+ID4gKwkJ
CWRjNl9yZWcgPSBUR0xfRE1DX0RFQlVHX0RDNl9DT1VOVDsNCj4gPiA+ICsJCX0NCj4gPiA+ICsN
Cj4gPiA+ICAJCS8qDQo+ID4gPiAgCQkgKiBOT1RFOiBETUNfREVCVUczIGlzIGEgZ2VuZXJhbCBw
dXJwb3NlIHJlZy4NCj4gPiA+ICAJCSAqIEFjY29yZGluZyB0byBCLlNwZWNzOjQ5MTk2IERNQyBm
L3cgcmV1c2VzIERDNS82IGNvdW50ZXINCj4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X3JlZy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaA0KPiA+
ID4gaW5kZXggNGU5NTMxMmViYTI0Li43OGJkY2U2N2RhMDggMTAwNjQ0DQo+ID4gPiAtLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oDQo+ID4gPiArKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X3JlZy5oDQo+ID4gPiBAQCAtNzU0OSw2ICs3NTQ5LDggQEAgZW51bSB7DQo+
ID4gPiAgI2RlZmluZSBCWFRfQ1NSX0RDM19EQzVfQ09VTlQJX01NSU8oMHg4MDAzOCkNCj4gPiA+
ICAjZGVmaW5lIFRHTF9ETUNfREVCVUdfREM1X0NPVU5UCV9NTUlPKDB4MTAxMDg0KQ0KPiA+ID4g
ICNkZWZpbmUgVEdMX0RNQ19ERUJVR19EQzZfQ09VTlQJX01NSU8oMHgxMDEwODgpDQo+ID4gPiAr
I2RlZmluZSBERzFfRE1DX0RFQlVHX0RDNV9DT1VOVAlfTU1JTygweDEzNDE1NCkNCj4gPiA+ICsj
ZGVmaW5lIERHMV9ETUNfREVCVUdfREM2X0NPVU5UCV9NTUlPKDB4MTM0MTU4KQ0KPiA+IA0KPiA+
IERHMV9ETUNfREVCVUdfREM2X0NPVU5UIGlzIG5vdCB1c2VkIGFzIERHMSBkbyBub3Qgc3VwcG9y
dCBEQzYuDQo+ID4gUmVtb3ZpbmcgaXQ6DQo+IA0KPiBERzFfRE1DX0RFQlVHX0RDNl9DT1VOVCBp
cyBzdGlsbCB2YWxpZCBETUNfREVCVUcgY291bnRlciBmb3IgZnV0dXJlDQo+IGlnZnggcGxhdGZv
cm1zLCBjb25zaWRlcmluZyBuYW1lIGNvbnNpc3RlbmN5IGl0IGhhcyBiZWVuIGtlcHQgd2l0aCBu
YW1lIERHMV8qDQo+IGlubGluZSB0byBCLlNwZWMgSW5kZXg6NDk3ODcuDQoNCkEgZGlzY3JldGUg
Z3JhcGhpY3MgY2FyZCB3aWxsIG5ldmVyIGJlIGFibGUgdG8gcmVhY2ggREM2IGFzIGl0IGlzIGEg
U09DIHBvd2VyIHNhdmluZyBmZWF0dXJlLg0KDQo+IA0KPiBUaGFua3MsDQo+IEFuc2h1bWFuIEd1
cHRhLg0KPiA+IFJldmlld2VkLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDwNCj4gPiBqb3Nl
LnNvdXphQGludGVsLmNvbQ0KPiA+ID4NCj4gPiANCj4gPiANCj4gPiA+ICANCj4gPiA+ICAjZGVm
aW5lIERNQ19ERUJVRzMJCV9NTUlPKDB4MTAxMDkwKQ0KPiA+ID4gIA0KPiA+ID4gDQo+ID4gDQo+
ID4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18NCj4gPiBJ
bnRlbC1nZnggbWFpbGluZyBsaXN0DQo+ID4gSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
Zw0KPiA+IA0KPiA+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4DQo+ID4gDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZngK
