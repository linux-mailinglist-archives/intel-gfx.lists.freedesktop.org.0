Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A5CC2AC645
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Nov 2020 21:49:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 97E1B8947A;
	Mon,  9 Nov 2020 20:49:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0A785894C0
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Nov 2020 20:48:58 +0000 (UTC)
IronPort-SDR: bDhAld12qUsaBnXPAeh48zXuzphuphnI70ptn5a/RFK66Acj0yfwiT22FMPrhiUO+n1imOCbhQ
 I32sM6w0kdaQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9800"; a="169982281"
X-IronPort-AV: E=Sophos;i="5.77,464,1596524400"; d="scan'208";a="169982281"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2020 12:48:57 -0800
IronPort-SDR: 1EryLDaTNj01OFiSCvroJRaf19Ydi/auLdA/0QRbSQFrYySVbeJd4DCJBskUbuOs6qtwrWjWzf
 DZ4qiJdXFS6w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,464,1596524400"; d="scan'208";a="365214583"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by FMSMGA003.fm.intel.com with ESMTP; 09 Nov 2020 12:48:57 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 9 Nov 2020 12:48:56 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 9 Nov 2020 12:48:56 -0800
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.1713.004;
 Mon, 9 Nov 2020 12:48:56 -0800
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "De
 Marchi, Lucas" <lucas.demarchi@intel.com>
Thread-Topic: [PATCH 8/8] drm/i915: Do not setup hpd without display
Thread-Index: AQHWtI/799qdb92k7UuwxdwvgG59tanA0HIA
Date: Mon, 9 Nov 2020 20:48:56 +0000
Message-ID: <ca6efdbb9e4b70cd7760f9493ed2960aab1ac628.camel@intel.com>
References: <20201106225531.920641-1-lucas.demarchi@intel.com>
 <20201106225531.920641-8-lucas.demarchi@intel.com>
In-Reply-To: <20201106225531.920641-8-lucas.demarchi@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-ID: <8FC5DA56DEF9AE4DBB2F5FD28357542C@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 8/8] drm/i915: Do not setup hpd without
 display
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
Cc: "Nikula,
 Jani" <jani.nikula@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCAyMDIwLTExLTA2IGF0IDE0OjU1IC0wODAwLCBMdWNhcyBEZSBNYXJjaGkgd3JvdGU6
DQo+IE5vdyB0aGF0IGhwZC9kaXNwbGF5IHJlbGF0ZWQgY2FsbHMgYXJlIHNwbGl0IGZyb20gdGhl
IHJlc3QgaW4NCj4gaW50ZWxfaXJxX2luaXQoKSwgc2tpcCBhbGwgb2YgdGhhdCBpbiBjYXNlIHdl
IGRvbid0IGhhdmUgZGlzcGxheS4NCg0KUmV2aWV3ZWQtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291
emEgPGpvc2Uuc291emFAaW50ZWwuY29tPg0KDQo+IA0KPiBDYzogSm9zw6kgUm9iZXJ0byBkZSBT
b3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+DQo+IENjOiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1
bGFAaW50ZWwuY29tPg0KPiBTaWduZWQtb2ZmLWJ5OiBMdWNhcyBEZSBNYXJjaGkgPGx1Y2FzLmRl
bWFyY2hpQGludGVsLmNvbT4NCj4gLS0tDQo+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9p
cnEuYyB8IDMgKysrDQo+IMKgMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKQ0KPiANCj4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfaXJxLmMgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X2lycS5jDQo+IGluZGV4IDRmYWY3Y2I5YzE1OC4uMDFmNTc0OWE1OTA1
IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2lycS5jDQo+ICsrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfaXJxLmMNCj4gQEAgLTQyMTIsNiArNDIxMiw5IEBA
IHZvaWQgaW50ZWxfaXJxX2luaXQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQ0K
PiDCoAlpZiAoSEFTX0dUX1VDKGRldl9wcml2KSAmJiBJTlRFTF9HRU4oZGV2X3ByaXYpIDwgMTEp
DQo+IMKgCQlkZXZfcHJpdi0+Z3QucG1fZ3VjX2V2ZW50cyA9IEdVQ19JTlRSX0dVQzJIT1NUIDw8
IDE2Ow0KPiDCoA0KPiANCj4gDQo+IA0KPiArCWlmICghSEFTX0RJU1BMQVkoZGV2X3ByaXYpKQ0K
PiArCQlyZXR1cm47DQo+ICsNCj4gwqAJaW50ZWxfaHBkX2luaXRfcGlucyhkZXZfcHJpdik7DQo+
IMKgDQo+IA0KPiANCj4gDQo+IMKgCWludGVsX2hwZF9pbml0X3dvcmsoZGV2X3ByaXYpOw0KDQpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
