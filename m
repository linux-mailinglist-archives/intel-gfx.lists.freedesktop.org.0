Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 993D423B134
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Aug 2020 01:48:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 65FEC89F19;
	Mon,  3 Aug 2020 23:48:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7EEFD89F19
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Aug 2020 23:48:10 +0000 (UTC)
IronPort-SDR: +FfhPxJstlCduHIEL/XBjz/ly+2VxaDkhMXZ/nYza/S2aZ3Q2oBeGuWun43qWXQli3Ub/QjQIE
 U5h8BWeh2czQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9702"; a="152188676"
X-IronPort-AV: E=Sophos;i="5.75,431,1589266800"; d="scan'208";a="152188676"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Aug 2020 16:48:09 -0700
IronPort-SDR: 2l1EOdsAp2HmsNy3rW8TzklgPLmQzHrSKVNRuivZzk3+vSPR1rTp4iaAS1gA72zdc9PoGIEeEv
 aXZYlg3Ilegw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,431,1589266800"; d="scan'208";a="366654191"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by orsmga001.jf.intel.com with ESMTP; 03 Aug 2020 16:48:09 -0700
Received: from orsmsx606.amr.corp.intel.com (10.22.229.19) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 3 Aug 2020 16:48:09 -0700
Received: from orsmsx110.amr.corp.intel.com (10.22.240.8) by
 orsmsx606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Mon, 3 Aug 2020 16:48:09 -0700
Received: from orsmsx151.amr.corp.intel.com ([169.254.7.123]) by
 ORSMSX110.amr.corp.intel.com ([169.254.10.225]) with mapi id 14.03.0439.000;
 Mon, 3 Aug 2020 16:48:08 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "De
 Marchi, Lucas" <lucas.demarchi@intel.com>
Thread-Topic: [PATCH v5 15/22] drm/i915/dg1: Update voltage swing tables for DP
Thread-Index: AQHWYgLoI7ssO0g/NEituYby5EAofqknkweA
Date: Mon, 3 Aug 2020 23:48:08 +0000
Message-ID: <02330385e9e87b4a93a9bbad2e950643e7df5e5f.camel@intel.com>
References: <20200724213918.27424-1-lucas.demarchi@intel.com>
 <20200724213918.27424-16-lucas.demarchi@intel.com>
In-Reply-To: <20200724213918.27424-16-lucas.demarchi@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.251.135.198]
Content-ID: <4B83C2280F535F47B3C3AEBA5D60E0A7@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v5 15/22] drm/i915/dg1: Update voltage swing
 tables for DP
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

T24gRnJpLCAyMDIwLTA3LTI0IGF0IDE0OjM5IC0wNzAwLCBMdWNhcyBEZSBNYXJjaGkgd3JvdGU6
DQo+IEZyb206IE1hdHQgUm9wZXIgPA0KPiBtYXR0aGV3LmQucm9wZXJAaW50ZWwuY29tDQo+ID4N
Cj4gDQo+IERHMSdzIHZzd2luZyB0YWJsZXMgYXJlIHRoZSBzYW1lIGZvciBlRFAgYW5kIEhETUkg
YnV0IGhhdmUgc2xpZ2h0DQo+IGRpZmZlcmVuY2VzIGZyb20gSUNML1RHTCBmb3IgRFAuDQoNClJl
dmlld2VkLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4N
Cg0KPiANCj4gQnNwZWM6IDQ5MjkxDQo+IENjOiBDbGludG9uIFRheWxvciA8DQo+IENsaW50b24u
QS5UYXlsb3JAaW50ZWwuY29tDQo+ID4NCj4gQ2M6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPA0K
PiBqb3NlLnNvdXphQGludGVsLmNvbQ0KPiA+DQo+IENjOiBSYWRoYWtyaXNobmEgU3JpcGFkYSA8
DQo+IHJhZGhha3Jpc2huYS5zcmlwYWRhQGludGVsLmNvbQ0KPiA+DQo+IFNpZ25lZC1vZmYtYnk6
IE1hdHQgUm9wZXIgPA0KPiBtYXR0aGV3LmQucm9wZXJAaW50ZWwuY29tDQo+ID4NCj4gU2lnbmVk
LW9mZi1ieTogTHVjYXMgRGUgTWFyY2hpIDwNCj4gbHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tDQo+
ID4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jIHwg
MzQgKysrKysrKysrKysrKysrKysrKysrKysrDQo+ICAxIGZpbGUgY2hhbmdlZCwgMzQgaW5zZXJ0
aW9ucygrKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZGRpLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jDQo+
IGluZGV4IDcxNGIyYmM5NmYyMy4uYzE5ZDVhMzc1ZWJhIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMNCj4gQEAgLTU4Miw2ICs1ODIsMzQgQEAgc3RhdGlj
IGNvbnN0IHN0cnVjdCBjbmxfZGRpX2J1Zl90cmFucyBlaGxfY29tYm9fcGh5X2RkaV90cmFuc2xh
dGlvbnNfZHBbXSA9IHsNCj4gIAl7IDB4NiwgMHg3RiwgMHgzRiwgMHgwMCwgMHgwMCB9LAkvKiA5
MDAgICA5MDAgICAgICAwLjAgICAqLw0KPiAgfTsNCj4gIA0KPiArc3RhdGljIGNvbnN0IHN0cnVj
dCBjbmxfZGRpX2J1Zl90cmFucyBkZzFfY29tYm9fcGh5X2RkaV90cmFuc2xhdGlvbnNfZHBfaGJy
W10gPSB7DQo+ICsJCQkJCQkvKiBOVCBtViBUcmFucyBtViBkYiAgICAqLw0KPiArCXsgMHhBLCAw
eDMyLCAweDNGLCAweDAwLCAweDAwIH0sCS8qIDM1MCAgIDM1MCAgICAgIDAuMCAgICovDQo+ICsJ
eyAweEEsIDB4NDgsIDB4MzUsIDB4MDAsIDB4MEEgfSwJLyogMzUwICAgNTAwICAgICAgMy4xICAg
Ki8NCj4gKwl7IDB4QywgMHg2MywgMHgyRiwgMHgwMCwgMHgxMCB9LAkvKiAzNTAgICA3MDAgICAg
ICA2LjAgICAqLw0KPiArCXsgMHg2LCAweDdGLCAweDJDLCAweDAwLCAweDEzIH0sCS8qIDM1MCAg
IDkwMCAgICAgIDguMiAgICovDQo+ICsJeyAweEEsIDB4NDMsIDB4M0YsIDB4MDAsIDB4MDAgfSwJ
LyogNTAwICAgNTAwICAgICAgMC4wICAgKi8NCj4gKwl7IDB4QywgMHg2MCwgMHgzNiwgMHgwMCwg
MHgwOSB9LAkvKiA1MDAgICA3MDAgICAgICAyLjkgICAqLw0KPiArCXsgMHg2LCAweDdGLCAweDMw
LCAweDAwLCAweDBGIH0sCS8qIDUwMCAgIDkwMCAgICAgIDUuMSAgICovDQo+ICsJeyAweEMsIDB4
NjAsIDB4M0YsIDB4MDAsIDB4MDAgfSwJLyogNjUwICAgNzAwICAgICAgMC42ICAgKi8NCj4gKwl7
IDB4NiwgMHg3RiwgMHgzNywgMHgwMCwgMHgwOCB9LAkvKiA2MDAgICA5MDAgICAgICAzLjUgICAq
Lw0KPiArCXsgMHg2LCAweDdGLCAweDNGLCAweDAwLCAweDAwIH0sCS8qIDkwMCAgIDkwMCAgICAg
IDAuMCAgICovDQo+ICt9Ow0KPiArDQo+ICtzdGF0aWMgY29uc3Qgc3RydWN0IGNubF9kZGlfYnVm
X3RyYW5zIGRnMV9jb21ib19waHlfZGRpX3RyYW5zbGF0aW9uc19kcF9oYnIyW10gPSB7DQo+ICsJ
CQkJCQkvKiBOVCBtViBUcmFucyBtViBkYiAgICAqLw0KPiArCXsgMHhBLCAweDMyLCAweDNGLCAw
eDAwLCAweDAwIH0sCS8qIDM1MCAgIDM1MCAgICAgIDAuMCAgICovDQo+ICsJeyAweEEsIDB4NDgs
IDB4MzUsIDB4MDAsIDB4MEEgfSwJLyogMzUwICAgNTAwICAgICAgMy4xICAgKi8NCj4gKwl7IDB4
QywgMHg2MywgMHgyRiwgMHgwMCwgMHgxMCB9LAkvKiAzNTAgICA3MDAgICAgICA2LjAgICAqLw0K
PiArCXsgMHg2LCAweDdGLCAweDJDLCAweDAwLCAweDEzIH0sCS8qIDM1MCAgIDkwMCAgICAgIDgu
MiAgICovDQo+ICsJeyAweEEsIDB4NDMsIDB4M0YsIDB4MDAsIDB4MDAgfSwJLyogNTAwICAgNTAw
ICAgICAgMC4wICAgKi8NCj4gKwl7IDB4QywgMHg2MCwgMHgzNiwgMHgwMCwgMHgwOSB9LAkvKiA1
MDAgICA3MDAgICAgICAyLjkgICAqLw0KPiArCXsgMHg2LCAweDdGLCAweDMwLCAweDAwLCAweDBG
IH0sCS8qIDUwMCAgIDkwMCAgICAgIDUuMSAgICovDQo+ICsJeyAweEMsIDB4NTgsIDB4M0YsIDB4
MDAsIDB4MDAgfSwJLyogNjUwICAgNzAwICAgICAgMC42ICAgKi8NCj4gKwl7IDB4NiwgMHg3Riwg
MHgzNSwgMHgwMCwgMHgwQSB9LAkvKiA2MDAgICA5MDAgICAgICAzLjUgICAqLw0KPiArCXsgMHg2
LCAweDdGLCAweDNGLCAweDAwLCAweDAwIH0sCS8qIDkwMCAgIDkwMCAgICAgIDAuMCAgICovDQo+
ICt9Ow0KPiArDQo+ICBzdHJ1Y3QgaWNsX21nX3BoeV9kZGlfYnVmX3RyYW5zIHsNCj4gIAl1MzIg
Y3JpX3R4ZGVlbXBoX292ZXJyaWRlXzExXzY7DQo+ICAJdTMyIGNyaV90eGRlZW1waF9vdmVycmlk
ZV81XzA7DQo+IEBAIC0xMDM0LDYgKzEwNjIsMTIgQEAgaWNsX2dldF9jb21ib19idWZfdHJhbnMo
c3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsIGludCB0eXBlLCBpbnQgcmF0ZSwNCj4gIAl9
IGVsc2UgaWYgKHR5cGUgPT0gSU5URUxfT1VUUFVUX0VEUCAmJiBkZXZfcHJpdi0+dmJ0LmVkcC5s
b3dfdnN3aW5nKSB7DQo+ICAJCSpuX2VudHJpZXMgPSBBUlJBWV9TSVpFKGljbF9jb21ib19waHlf
ZGRpX3RyYW5zbGF0aW9uc19lZHBfaGJyMik7DQo+ICAJCXJldHVybiBpY2xfY29tYm9fcGh5X2Rk
aV90cmFuc2xhdGlvbnNfZWRwX2hicjI7DQo+ICsJfSBlbHNlIGlmIChJU19ERzEoZGV2X3ByaXYp
ICYmIHJhdGUgPiAyNzAwMDApIHsNCj4gKwkJKm5fZW50cmllcyA9IEFSUkFZX1NJWkUoZGcxX2Nv
bWJvX3BoeV9kZGlfdHJhbnNsYXRpb25zX2RwX2hicjIpOw0KPiArCQlyZXR1cm4gZGcxX2NvbWJv
X3BoeV9kZGlfdHJhbnNsYXRpb25zX2RwX2hicjI7DQo+ICsJfSBlbHNlIGlmIChJU19ERzEoZGV2
X3ByaXYpKSB7DQo+ICsJCSpuX2VudHJpZXMgPSBBUlJBWV9TSVpFKGRnMV9jb21ib19waHlfZGRp
X3RyYW5zbGF0aW9uc19kcF9oYnIpOw0KPiArCQlyZXR1cm4gZGcxX2NvbWJvX3BoeV9kZGlfdHJh
bnNsYXRpb25zX2RwX2hicjsNCj4gIAl9DQo+ICANCj4gIAkqbl9lbnRyaWVzID0gQVJSQVlfU0la
RShpY2xfY29tYm9fcGh5X2RkaV90cmFuc2xhdGlvbnNfZHBfaGJyMik7DQo+IA0KX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcg
bGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
