Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BAFDC1E29C1
	for <lists+intel-gfx@lfdr.de>; Tue, 26 May 2020 20:10:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C672B6E245;
	Tue, 26 May 2020 18:10:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 455E76E245
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 May 2020 18:10:51 +0000 (UTC)
IronPort-SDR: AotivmX/e3s4JFAnXPuKfL++ZjakVPWGR7btIopCEpxC6NWfhERwc8kbxNOP84aYWQy5Nnn/9G
 08wGrGIHnw2g==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2020 11:10:50 -0700
IronPort-SDR: cLOQcFuMZGlo8BYKdbciXJEHKNjQtE19yWFDAqp1KMf29BUsKOmEuAxUSBBqoz11l3JW2Oeg/W
 ESMpYm2YpGmA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,437,1583222400"; d="scan'208";a="468441446"
Received: from fmsmsx106.amr.corp.intel.com ([10.18.124.204])
 by fmsmga006.fm.intel.com with ESMTP; 26 May 2020 11:10:50 -0700
Received: from fmsmsx101.amr.corp.intel.com (10.18.124.199) by
 FMSMSX106.amr.corp.intel.com (10.18.124.204) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 26 May 2020 11:10:50 -0700
Received: from fmsmsx116.amr.corp.intel.com ([169.254.2.9]) by
 fmsmsx101.amr.corp.intel.com ([169.254.1.249]) with mapi id 14.03.0439.000;
 Tue, 26 May 2020 11:10:49 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "De
 Marchi, Lucas" <lucas.demarchi@intel.com>
Thread-Topic: [Intel-gfx] [PATCH 09/37] drm/i915: Add has_master_unit_irq flag
Thread-Index: AQHWLwgeNqKArjn1nUWky7e7zkF5Oai7KemA
Date: Tue, 26 May 2020 18:10:49 +0000
Message-ID: <b27eff53f136a335ec857b07e1c332fd6dac0146.camel@intel.com>
References: <20200521003803.18936-1-lucas.demarchi@intel.com>
 <20200521003803.18936-10-lucas.demarchi@intel.com>
In-Reply-To: <20200521003803.18936-10-lucas.demarchi@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.255.73.147]
Content-ID: <C0E1F2D38530164392F974F6A19C0BA6@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 09/37] drm/i915: Add has_master_unit_irq flag
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

T24gV2VkLCAyMDIwLTA1LTIwIGF0IDE3OjM3IC0wNzAwLCBMdWNhcyBEZSBNYXJjaGkgd3JvdGU6
DQo+IEZyb206IFN0dWFydCBTdW1tZXJzIDxzdHVhcnQuc3VtbWVyc0BpbnRlbC5jb20+DQo+IA0K
PiBBZGQgZmxhZyB0byBkaWZmZXJlbnRpYXRlIHBsYXRmb3JtcyB3aXRoIGFuZCB3aXRob3V0IHRo
ZSBtYXN0ZXINCj4gSVJRIGNvbnRyb2wgYml0Lg0KDQpSZXZpZXdlZC1ieTogSm9zw6kgUm9iZXJ0
byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+DQoNCj4gDQo+IFNpZ25lZC1vZmYtYnk6
IFN0dWFydCBTdW1tZXJzIDxzdHVhcnQuc3VtbWVyc0BpbnRlbC5jb20+DQo+IFNpZ25lZC1vZmYt
Ynk6IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPg0KPiAtLS0NCj4g
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmggICAgICAgICAgfCAyICsrDQo+ICBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kZXZpY2VfaW5mby5oIHwgMSArDQo+ICAyIGZpbGVzIGNo
YW5nZWQsIDMgaW5zZXJ0aW9ucygrKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfZHJ2LmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oDQo+IGlu
ZGV4IGJlZDEyNzk5NDk1Yi4uMTYyYjFlYWQ4OGQzIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X2Rydi5oDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
ZHJ2LmgNCj4gQEAgLTE1ODAsNiArMTU4MCw4IEBAIElTX1NVQlBMQVRGT1JNKGNvbnN0IHN0cnVj
dCBkcm1faTkxNV9wcml2YXRlICppOTE1LA0KPiAgI2RlZmluZSBIQVNfTE9HSUNBTF9SSU5HX1BS
RUVNUFRJT04oZGV2X3ByaXYpIFwNCj4gIAkJKElOVEVMX0lORk8oZGV2X3ByaXYpLT5oYXNfbG9n
aWNhbF9yaW5nX3ByZWVtcHRpb24pDQo+ICANCj4gKyNkZWZpbmUgSEFTX01BU1RFUl9VTklUX0lS
UShkZXZfcHJpdikgKElOVEVMX0lORk8oZGV2X3ByaXYpLT5oYXNfbWFzdGVyX3VuaXRfaXJxKQ0K
PiArDQo+ICAjZGVmaW5lIEhBU19FWEVDTElTVFMoZGV2X3ByaXYpIEhBU19MT0dJQ0FMX1JJTkdf
Q09OVEVYVFMoZGV2X3ByaXYpDQo+ICANCj4gICNkZWZpbmUgSU5URUxfUFBHVFQoZGV2X3ByaXYp
IChJTlRFTF9JTkZPKGRldl9wcml2KS0+cHBndHRfdHlwZSkNCj4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2ludGVsX2RldmljZV9pbmZvLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pbnRlbF9kZXZpY2VfaW5mby5oDQo+IGluZGV4IGM5MTJhY2QwNjEwOS4uY2VkOTc5YzliMzY2
IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kZXZpY2VfaW5mby5o
DQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RldmljZV9pbmZvLmgNCj4gQEAg
LTEyMSw2ICsxMjEsNyBAQCBlbnVtIGludGVsX3BwZ3R0X3R5cGUgew0KPiAgCWZ1bmMoaGFzX2xv
Z2ljYWxfcmluZ19jb250ZXh0cyk7IFwNCj4gIAlmdW5jKGhhc19sb2dpY2FsX3JpbmdfZWxzcSk7
IFwNCj4gIAlmdW5jKGhhc19sb2dpY2FsX3JpbmdfcHJlZW1wdGlvbik7IFwNCj4gKwlmdW5jKGhh
c19tYXN0ZXJfdW5pdF9pcnEpOyBcDQo+ICAJZnVuYyhoYXNfcG9vbGVkX2V1KTsgXA0KPiAgCWZ1
bmMoaGFzX3JjNik7IFwNCj4gIAlmdW5jKGhhc19yYzZwKTsgXA0KX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
