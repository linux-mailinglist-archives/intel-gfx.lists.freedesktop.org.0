Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E3E292AC643
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Nov 2020 21:48:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5645189452;
	Mon,  9 Nov 2020 20:48:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D3AF89452
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Nov 2020 20:48:44 +0000 (UTC)
IronPort-SDR: QSCxKmpLIKXCQxk/DBUj1WkLh0s7PgTe1dmeCr/rV4g7nkC7AvCbMpv01HT2hIShKHtzTyu8mw
 7RWAKi30ctlA==
X-IronPort-AV: E=McAfee;i="6000,8403,9800"; a="167284243"
X-IronPort-AV: E=Sophos;i="5.77,464,1596524400"; d="scan'208";a="167284243"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2020 12:48:44 -0800
IronPort-SDR: bhB9SYtB72JzSgwWUt4IyVhzd0RsLXSEfCa1bZ4TWUMUJvhAQW1+pz8VfhWyRYJej0CT5oJeRO
 r5qvW/f+K24g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,464,1596524400"; d="scan'208";a="365214543"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by FMSMGA003.fm.intel.com with ESMTP; 09 Nov 2020 12:48:43 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 9 Nov 2020 12:48:43 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 9 Nov 2020 12:48:43 -0800
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.1713.004;
 Mon, 9 Nov 2020 12:48:43 -0800
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "De
 Marchi, Lucas" <lucas.demarchi@intel.com>
Thread-Topic: [PATCH 7/8] drm/i915: move display-related to the end of
 intel_irq_init()
Thread-Index: AQHWtI/7hXGqWZrMYE+6R6BGN+uuc6nA0GOA
Date: Mon, 9 Nov 2020 20:48:42 +0000
Message-ID: <a40da9dc0ccc76364231f06e4ac308ba68621928.camel@intel.com>
References: <20201106225531.920641-1-lucas.demarchi@intel.com>
 <20201106225531.920641-7-lucas.demarchi@intel.com>
In-Reply-To: <20201106225531.920641-7-lucas.demarchi@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-ID: <259ECA4CEC70DA47A34D55E1DD5DA6C8@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 7/8] drm/i915: move display-related to the
 end of intel_irq_init()
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

T24gRnJpLCAyMDIwLTExLTA2IGF0IDE0OjU1IC0wODAwLCBMdWNhcyBEZSBNYXJjaGkgd3JvdGU6
DQo+IEluIGludGVsX2lycV9pbml0KCkgbW92ZSB3aGF0J3MgZGlzcGxheS9ocGQgcmVsYXRlZCBh
ZnRlciB3aGF0IGlzIGd0IGFuZA0KPiBndWMuIFRoaXMgbWFrZXMgaXQgZWFzaWVyIHRvIHN1cHBv
cnQgIUhBU19ESVNQTEFZKCkgaW4gZnV0dXJlLg0KDQpSZXZpZXdlZC1ieTogSm9zw6kgUm9iZXJ0
byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+DQoNCj4gDQo+IFNpZ25lZC1vZmYtYnk6
IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPg0KPiAtLS0NCj4gwqBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2lycS5jIHwgOCArKysrLS0tLQ0KPiDCoDEgZmlsZSBj
aGFuZ2VkLCA0IGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9pcnEuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfaXJxLmMNCj4gaW5kZXggMmFiNGVkZjdmMjVjLi40ZmFmN2NiOWMxNTggMTAwNjQ0DQo+
IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfaXJxLmMNCj4gKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9pcnEuYw0KPiBAQCAtNDIwNCwxMCArNDIwNCw2IEBAIHZvaWQgaW50
ZWxfaXJxX2luaXQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQ0KPiDCoAlzdHJ1
Y3QgZHJtX2RldmljZSAqZGV2ID0gJmRldl9wcml2LT5kcm07DQo+IMKgCWludCBpOw0KPiDCoA0K
PiANCj4gDQo+IA0KPiAtCWludGVsX2hwZF9pbml0X3BpbnMoZGV2X3ByaXYpOw0KPiAtDQo+IC0J
aW50ZWxfaHBkX2luaXRfd29yayhkZXZfcHJpdik7DQo+IC0NCj4gwqAJSU5JVF9XT1JLKCZkZXZf
cHJpdi0+bDNfcGFyaXR5LmVycm9yX3dvcmssIGl2Yl9wYXJpdHlfd29yayk7DQo+IMKgCWZvciAo
aSA9IDA7IGkgPCBNQVhfTDNfU0xJQ0VTOyArK2kpDQo+IMKgCQlkZXZfcHJpdi0+bDNfcGFyaXR5
LnJlbWFwX2luZm9baV0gPSBOVUxMOw0KPiBAQCAtNDIxNiw2ICs0MjEyLDEwIEBAIHZvaWQgaW50
ZWxfaXJxX2luaXQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQ0KPiDCoAlpZiAo
SEFTX0dUX1VDKGRldl9wcml2KSAmJiBJTlRFTF9HRU4oZGV2X3ByaXYpIDwgMTEpDQo+IMKgCQlk
ZXZfcHJpdi0+Z3QucG1fZ3VjX2V2ZW50cyA9IEdVQ19JTlRSX0dVQzJIT1NUIDw8IDE2Ow0KPiDC
oA0KPiANCj4gDQo+IA0KPiArCWludGVsX2hwZF9pbml0X3BpbnMoZGV2X3ByaXYpOw0KPiArDQo+
ICsJaW50ZWxfaHBkX2luaXRfd29yayhkZXZfcHJpdik7DQo+ICsNCj4gwqAJZGV2LT52Ymxhbmtf
ZGlzYWJsZV9pbW1lZGlhdGUgPSB0cnVlOw0KPiDCoA0KPiANCj4gDQo+IA0KPiDCoAkvKiBNb3N0
IHBsYXRmb3JtcyB0cmVhdCB0aGUgZGlzcGxheSBpcnEgYmxvY2sgYXMgYW4gYWx3YXlzLW9uDQoN
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
