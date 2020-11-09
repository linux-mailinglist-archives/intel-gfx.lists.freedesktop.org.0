Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ECF532AC622
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Nov 2020 21:46:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E0C1289298;
	Mon,  9 Nov 2020 20:46:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8111A89298
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Nov 2020 20:46:10 +0000 (UTC)
IronPort-SDR: JWVFQehGBnDAy7ZqM+F4DyoroIVdIZtiDzc3iYy78uBRjbch0Edl+CuyaLUvtjikgR6PR6CNfQ
 YXAgWcsloxPQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9800"; a="254576844"
X-IronPort-AV: E=Sophos;i="5.77,464,1596524400"; d="scan'208";a="254576844"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2020 12:46:09 -0800
IronPort-SDR: g3bLY+Qi2NOmP4Es8UEpuO4n3whOk1jBYaASiw5dup6jL6WeoK8KBNlk/5bKi6olZv+6Toxpr2
 mB9RIE32UtgA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,464,1596524400"; d="scan'208";a="541017847"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga005.jf.intel.com with ESMTP; 09 Nov 2020 12:46:08 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 9 Nov 2020 12:46:07 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 9 Nov 2020 12:46:07 -0800
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.1713.004;
 Mon, 9 Nov 2020 12:46:07 -0800
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "De
 Marchi, Lucas" <lucas.demarchi@intel.com>
Thread-Topic: [PATCH 4/8] drm/i915/display: return earlier from
 intel_modeset_init() without display
Thread-Index: AQHWtI/7prufe4BpG0+e1PKWa5dOIanAz6mA
Date: Mon, 9 Nov 2020 20:46:06 +0000
Message-ID: <073d022f5d455fd8bf3b7490054800f4f86f0149.camel@intel.com>
References: <20201106225531.920641-1-lucas.demarchi@intel.com>
 <20201106225531.920641-4-lucas.demarchi@intel.com>
In-Reply-To: <20201106225531.920641-4-lucas.demarchi@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-ID: <719891FB22F4394A891463362D8107FB@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 4/8] drm/i915/display: return earlier from
 intel_modeset_init() without display
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
DQo+IEZyb206IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+DQo+IA0KPiAhSEFT
X0RJU1BMQVkoKSBpbXBsaWVzICFIQVNfT1ZFUkxBWSgpLCBza2lwcGluZyBvdmVybGF5IHNldHVw
IGFueXdheSwgc28NCj4gcmV0dXJuIGVhcmxpZXIgZnJvbSBpbnRlbF9tb2Rlc2V0X2luaXQoKSBm
b3IgY2xhcml0eS4NCg0KUmV2aWV3ZWQtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uu
c291emFAaW50ZWwuY29tPg0KDQo+IA0KPiBDYzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJq
YWxhQGxpbnV4LmludGVsLmNvbT4NCj4gU2lnbmVkLW9mZi1ieTogSmFuaSBOaWt1bGEgPGphbmku
bmlrdWxhQGludGVsLmNvbT4NCj4gU2lnbmVkLW9mZi1ieTogTHVjYXMgRGUgTWFyY2hpIDxsdWNh
cy5kZW1hcmNoaUBpbnRlbC5jb20+DQo+IC0tLQ0KPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGlzcGxheS5jIHwgNCArKy0tDQo+IMKgMSBmaWxlIGNoYW5nZWQsIDIgaW5z
ZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+IGluZGV4IGI2YTlkNDFhMDQzZS4uYjNlNmM0M2Yw
Y2IyIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rp
c3BsYXkuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXkuYw0KPiBAQCAtMTgzNjQsMTEgKzE4MzY0LDExIEBAIGludCBpbnRlbF9tb2Rlc2V0X2luaXQo
c3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpDQo+IMKgew0KPiDCoAlpbnQgcmV0Ow0KPiDC
oA0KPiANCj4gDQo+IA0KPiAtCWludGVsX292ZXJsYXlfc2V0dXAoaTkxNSk7DQo+IC0NCj4gwqAJ
aWYgKCFIQVNfRElTUExBWShpOTE1KSkNCj4gwqAJCXJldHVybiAwOw0KPiDCoA0KPiANCj4gDQo+
IA0KPiArCWludGVsX292ZXJsYXlfc2V0dXAoaTkxNSk7DQo+ICsNCj4gwqAJcmV0ID0gaW50ZWxf
ZmJkZXZfaW5pdCgmaTkxNS0+ZHJtKTsNCj4gwqAJaWYgKHJldCkNCj4gwqAJCXJldHVybiByZXQ7
DQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
