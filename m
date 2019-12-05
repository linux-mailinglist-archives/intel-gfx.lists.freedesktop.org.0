Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5446F114304
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Dec 2019 15:52:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A0DF76E127;
	Thu,  5 Dec 2019 14:52:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D4B826E127
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Dec 2019 14:52:17 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Dec 2019 06:52:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,281,1571727600"; d="scan'208";a="214143229"
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
 by orsmga006.jf.intel.com with ESMTP; 05 Dec 2019 06:52:16 -0800
Received: from fmsmsx123.amr.corp.intel.com (10.18.125.38) by
 FMSMSX103.amr.corp.intel.com (10.18.124.201) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 5 Dec 2019 06:52:15 -0800
Received: from bgsmsx105.gar.corp.intel.com (10.223.43.197) by
 fmsmsx123.amr.corp.intel.com (10.18.125.38) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 5 Dec 2019 06:52:15 -0800
Received: from BGSMSX108.gar.corp.intel.com ([169.254.8.190]) by
 BGSMSX105.gar.corp.intel.com ([169.254.3.118]) with mapi id 14.03.0439.000;
 Thu, 5 Dec 2019 20:22:12 +0530
From: "Kulkarni, Vandita" <vandita.kulkarni@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v3 12/13] drm/i915/dsi: account for DSC in horizontal
 timings
Thread-Index: AQHVpF+f9E8rktPTd02yBW+N0NDudqerrWuA
Date: Thu, 5 Dec 2019 14:52:12 +0000
Message-ID: <57510F3E2013164E925CD03ED7512A3B809DA55D@BGSMSX108.gar.corp.intel.com>
References: <cover.1574775655.git.jani.nikula@intel.com>
 <60989a3cf3d5c449356f5d827caf0ab5bfe3b528.1574775655.git.jani.nikula@intel.com>
In-Reply-To: <60989a3cf3d5c449356f5d827caf0ab5bfe3b528.1574775655.git.jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiMmZkN2MzNWQtNjEyOS00ZTkzLWFkZGEtNDVmOWRjY2FiOTFlIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjIuNS4xOCIsIlRydXN0ZWRMYWJlbEhhc2giOiJyRW5uQUNUTGFsbHpneXNDNGlrVnhGQmU3NmlMaXdUSE1cL0xkQmd5cE9lcXM1Z0lucjJiS2o5aG1cL1R6Vk81cjIifQ==
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.223.10.10]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v3 12/13] drm/i915/dsi: account for DSC in
 horizontal timings
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.23
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBKYW5pIE5pa3VsYSA8amFuaS5u
aWt1bGFAaW50ZWwuY29tPg0KPiBTZW50OiBUdWVzZGF5LCBOb3ZlbWJlciAyNiwgMjAxOSA3OjEz
IFBNDQo+IFRvOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENjOiBOaWt1bGEs
IEphbmkgPGphbmkubmlrdWxhQGludGVsLmNvbT47IEt1bGthcm5pLCBWYW5kaXRhDQo+IDx2YW5k
aXRhLmt1bGthcm5pQGludGVsLmNvbT47IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBs
aW51eC5pbnRlbC5jb20+DQo+IFN1YmplY3Q6IFtQQVRDSCB2MyAxMi8xM10gZHJtL2k5MTUvZHNp
OiBhY2NvdW50IGZvciBEU0MgaW4gaG9yaXpvbnRhbA0KPiB0aW1pbmdzDQo+IA0KPiBXaGVuIERT
QyBpcyBlbmFibGVkLCB3ZSBuZWVkIHRvIGFkanVzdCB0aGUgaG9yaXpvbnRhbCB0aW1pbmdzIHRv
IGFjY291bnQNCj4gZm9yIHRoZSBjb21wcmVzc2VkIChhbmQgdGhlcmVmb3JlIHJlZHVjZWQpIGxp
bmsgc3BlZWQuDQo+IA0KPiBUaGUgY29tcHJlc3NlZCBmcmVxdWVuY3kgcmF0aW8gc2ltcGxpZmll
cyBkb3duIHRvIHRoZSByYXRpbyBiZXR3ZWVuDQo+IGNvbXByZXNzZWQgYW5kIG5vbi1jb21wcmVz
c2VkIGJwcC4NCj4gDQo+IEJzcGVjOiA0OTI2Mw0KPiBTdWdnZXN0ZWQtYnk6IFZhbmRpdGEgS3Vs
a2FybmkgPHZhbmRpdGEua3Vsa2FybmlAaW50ZWwuY29tPg0KPiBDYzogVmFuZGl0YSBLdWxrYXJu
aSA8dmFuZGl0YS5rdWxrYXJuaUBpbnRlbC5jb20+DQo+IENjOiBWaWxsZSBTeXJqw6Rsw6QgPHZp
bGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiBTaWduZWQtb2ZmLWJ5OiBKYW5pIE5pa3Vs
YSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPg0KDQpDYW4gYmUgY29uc2lkZXJlZCBvdXQgb2YgdGhp
cyBwYXRjaCwgYnV0IGdlbjExX2RzaV9nZXRfdGltaW5ncyB3b3VsZCBuZWVkIGNvcnJlc3BvbmRp
bmcNCkNoYW5nZXMgdG8gYXZvaWQgc3RhdGUgbWlzbWF0Y2ggd3J0IGhvcml6b250YWwgdGltaW5n
cy4NCg0KT3RoZXIgdGhhbiB0aGF0LCB0aGlzIHBhdGNoIGxvb2tzIGdvb2QgdG8gbWUuDQpSZXZp
ZXdlZC1ieTogVmFuZGl0YSBLdWxrYXJuaSA8dmFuZGl0YS5rdWxrYXJuaUBpbnRlbC5jb20+DQoN
ClRoYW5rcywNClZhbmRpdGENCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ljbF9kc2kuYyB8IDI0ICsrKysrKysrKysrKysrKysrKystLS0tLQ0KPiAgMSBmaWxlIGNoYW5n
ZWQsIDE5IGluc2VydGlvbnMoKyksIDUgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pY2xfZHNpLmMNCj4gYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ljbF9kc2kuYw0KPiBpbmRleCA0NjA3NTk5MTM3MDguLmNhYTQ3N2M0
YjFhZiAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pY2xfZHNp
LmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pY2xfZHNpLmMNCj4gQEAg
LTc4NSwxMiArNzg1LDEyIEBAIGdlbjExX2RzaV9jb25maWd1cmVfdHJhbnNjb2RlcihzdHJ1Y3QN
Cj4gaW50ZWxfZW5jb2RlciAqZW5jb2RlciwNCj4gDQo+ICBzdGF0aWMgdm9pZA0KPiAgZ2VuMTFf
ZHNpX3NldF90cmFuc2NvZGVyX3RpbWluZ3Moc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIs
DQo+IC0JCQkJIGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpwaXBlX2NvbmZpZykNCj4g
KwkJCQkgY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpDQo+ICB7DQo+
ICAJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShlbmNvZGVyLT5i
YXNlLmRldik7DQo+ICAJc3RydWN0IGludGVsX2RzaSAqaW50ZWxfZHNpID0gZW5jX3RvX2ludGVs
X2RzaSgmZW5jb2Rlci0+YmFzZSk7DQo+ICAJY29uc3Qgc3RydWN0IGRybV9kaXNwbGF5X21vZGUg
KmFkanVzdGVkX21vZGUgPQ0KPiAtCQkJCQkmcGlwZV9jb25maWctPmh3LmFkanVzdGVkX21vZGU7
DQo+ICsJCSZjcnRjX3N0YXRlLT5ody5hZGp1c3RlZF9tb2RlOw0KPiAgCWVudW0gcG9ydCBwb3J0
Ow0KPiAgCWVudW0gdHJhbnNjb2RlciBkc2lfdHJhbnM7DQo+ICAJLyogaG9yaXpvbnRhbCB0aW1p
bmdzICovDQo+IEBAIC03OTgsMTEgKzc5OCwyNSBAQCBnZW4xMV9kc2lfc2V0X3RyYW5zY29kZXJf
dGltaW5ncyhzdHJ1Y3QNCj4gaW50ZWxfZW5jb2RlciAqZW5jb2RlciwNCj4gIAl1MTYgaGJhY2tf
cG9yY2g7DQo+ICAJLyogdmVydGljYWwgdGltaW5ncyAqLw0KPiAgCXUxNiB2dG90YWwsIHZhY3Rp
dmUsIHZzeW5jX3N0YXJ0LCB2c3luY19lbmQsIHZzeW5jX3NoaWZ0Ow0KPiArCWludCBtdWwgPSAx
LCBkaXYgPSAxOw0KPiArDQo+ICsJLyoNCj4gKwkgKiBBZGp1c3QgaG9yaXpvbnRhbCB0aW1pbmdz
IChodG90YWwsIGhzeW5jX3N0YXJ0LCBoc3luY19lbmQpIHRvDQo+IGFjY291bnQNCj4gKwkgKiBm
b3Igc2xvd2VyIGxpbmsgc3BlZWQgaWYgRFNDIGlzIGVuYWJsZWQuDQo+ICsJICoNCj4gKwkgKiBU
aGUgY29tcHJlc3Npb24gZnJlcXVlbmN5IHJhdGlvIGlzIHRoZSByYXRpbyBiZXR3ZWVuIGNvbXBy
ZXNzZWQNCj4gYW5kDQo+ICsJICogbm9uLWNvbXByZXNzZWQgbGluayBzcGVlZHMsIGFuZCBzaW1w
bGlmaWVzIGRvd24gdG8gdGhlIHJhdGlvDQo+IGJldHdlZW4NCj4gKwkgKiBjb21wcmVzc2VkIGFu
ZCBub24tY29tcHJlc3NlZCBicHAuDQo+ICsJICovDQo+ICsJaWYgKGNydGNfc3RhdGUtPmRzYy5j
b21wcmVzc2lvbl9lbmFibGUpIHsNCj4gKwkJbXVsID0gY3J0Y19zdGF0ZS0+ZHNjLmNvbXByZXNz
ZWRfYnBwOw0KPiArCQlkaXYgPSBtaXBpX2RzaV9waXhlbF9mb3JtYXRfdG9fYnBwKGludGVsX2Rz
aS0NCj4gPnBpeGVsX2Zvcm1hdCk7DQo+ICsJfQ0KPiANCj4gIAloYWN0aXZlID0gYWRqdXN0ZWRf
bW9kZS0+Y3J0Y19oZGlzcGxheTsNCj4gLQlodG90YWwgPSBhZGp1c3RlZF9tb2RlLT5jcnRjX2h0
b3RhbDsNCj4gLQloc3luY19zdGFydCA9IGFkanVzdGVkX21vZGUtPmNydGNfaHN5bmNfc3RhcnQ7
DQo+IC0JaHN5bmNfZW5kID0gYWRqdXN0ZWRfbW9kZS0+Y3J0Y19oc3luY19lbmQ7DQo+ICsJaHRv
dGFsID0gRElWX1JPVU5EX1VQKGFkanVzdGVkX21vZGUtPmNydGNfaHRvdGFsICogbXVsLCBkaXYp
Ow0KPiArCWhzeW5jX3N0YXJ0ID0gRElWX1JPVU5EX1VQKGFkanVzdGVkX21vZGUtPmNydGNfaHN5
bmNfc3RhcnQgKg0KPiBtdWwsIGRpdik7DQo+ICsJaHN5bmNfZW5kID0gRElWX1JPVU5EX1VQKGFk
anVzdGVkX21vZGUtPmNydGNfaHN5bmNfZW5kICoNCj4gbXVsLCBkaXYpOw0KPiAgCWhzeW5jX3Np
emUgID0gaHN5bmNfZW5kIC0gaHN5bmNfc3RhcnQ7DQo+ICAJaGJhY2tfcG9yY2ggPSAoYWRqdXN0
ZWRfbW9kZS0+Y3J0Y19odG90YWwgLQ0KPiAgCQkgICAgICAgYWRqdXN0ZWRfbW9kZS0+Y3J0Y19o
c3luY19lbmQpOw0KPiAtLQ0KPiAyLjIwLjENCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4
