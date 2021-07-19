Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C2FA3CEA3F
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Jul 2021 19:57:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 82E846E1B1;
	Mon, 19 Jul 2021 17:57:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5A66C6E1B1
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 Jul 2021 17:57:37 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10050"; a="232878858"
X-IronPort-AV: E=Sophos;i="5.84,252,1620716400"; d="scan'208";a="232878858"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jul 2021 10:57:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,252,1620716400"; d="scan'208";a="495879520"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga001.jf.intel.com with ESMTP; 19 Jul 2021 10:57:34 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Mon, 19 Jul 2021 10:57:33 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Mon, 19 Jul 2021 10:57:33 -0700
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2242.010;
 Mon, 19 Jul 2021 10:57:33 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 3/7] drm/i915: Program DFR enable/disable as
 a GT workaround
Thread-Index: AQHXesqooZXNNDauVkikhoHWl566VKtLEBEA
Date: Mon, 19 Jul 2021 17:57:32 +0000
Message-ID: <a16518f8e02c0a3567461ad45eb5b1d171c8554f.camel@intel.com>
References: <20210717051426.4120328-1-matthew.d.roper@intel.com>
 <20210717051426.4120328-4-matthew.d.roper@intel.com>
In-Reply-To: <20210717051426.4120328-4-matthew.d.roper@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.132]
Content-ID: <13FCF84A886BC54BA06E555EB4AF370E@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 3/7] drm/i915: Program DFR enable/disable as
 a GT workaround
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

T24gRnJpLCAyMDIxLTA3LTE2IGF0IDIyOjE0IC0wNzAwLCBNYXR0IFJvcGVyIHdyb3RlOg0KPiBE
RlIgcHJvZ3JhbW1pbmcgKHdoaWNoIHdlIGVuYWJsZSBhcyBhbiBvcHRpbWl6YXRpb24gb24gZ2Vu
MTEsIGJ1dCBtdXN0DQo+IGVuc3VyZSBpcyBkaXNhYmxlZCBvbiBnZW4xMikgc2hvdWxkIGJlIGhh
bmRsZWQgYXMgYSBHVCB3b3JrYXJvdW5kIHJhdGhlcg0KPiB0aGFuIGNsb2NrIGdhdGluZyBpbml0
aWFsaXphdGlvbi4gIFRoaXMgd2lsbCBlbnN1cmUgdGhhdCB0aGUgcHJvZ3JhbW1pbmcNCj4gb2Yg
dGhlc2UgcmVnaXN0ZXJzIGlzIHZlcmlmaWVkIHdpdGggb3VyIHR5cGljYWwgd29ya2Fyb3VuZCBj
aGVja3MuDQoNClJldmlld2VkLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXph
QGludGVsLmNvbT4NCg0KPiANCj4gU2lnbmVkLW9mZi1ieTogTWF0dCBSb3BlciA8bWF0dGhldy5k
LnJvcGVyQGludGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRl
bF93b3JrYXJvdW5kcy5jIHwgOSArKysrKysrKysNCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2lu
dGVsX3BtLmMgICAgICAgICAgICAgfCA4IC0tLS0tLS0tDQo+ICAyIGZpbGVzIGNoYW5nZWQsIDkg
aW5zZXJ0aW9ucygrKSwgOCBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYw0KPiBpbmRleCAzNmQ5NzI0OTI4ODMuLjY4NWM2MTE1
ZDM4MCAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fy
b3VuZHMuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5k
cy5jDQo+IEBAIC05NjUsNiArOTY1LDEyIEBAIGljbF9ndF93b3JrYXJvdW5kc19pbml0KHN0cnVj
dCBkcm1faTkxNV9wcml2YXRlICppOTE1LCBzdHJ1Y3QgaTkxNV93YV9saXN0ICp3YWwpDQo+ICAJ
CXdhX3dyaXRlX29yKHdhbCwNCj4gIAkJCSAgICBTTElDRV9VTklUX0xFVkVMX0NMS0dBVEUsDQo+
ICAJCQkgICAgTDNfQ0xLR0FURV9ESVMgfCBMM19DUjJYX0NMS0dBVEVfRElTKTsNCj4gKw0KPiAr
CS8qDQo+ICsJICogVGhpcyBpcyBub3QgYSBkb2N1bWVudGVkIHdvcmthcm91bmQsIGJ1dCByYXRo
ZXIgYW4gb3B0aW1pemF0aW9uDQo+ICsJICogdG8gcmVkdWNlIHNhbXBsZXIgcG93ZXIuDQo+ICsJ
ICovDQo+ICsJd2Ffd3JpdGVfY2xyKHdhbCwgR0VOMTBfREZSX1JBVElPX0VOX0FORF9DSElDS0VO
LCBERlJfRElTQUJMRSk7DQo+ICB9DQo+ICANCj4gIC8qDQo+IEBAIC05OTgsNiArMTAwNCw5IEBA
IGdlbjEyX2d0X3dvcmthcm91bmRzX2luaXQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUs
DQo+ICANCj4gIAkvKiBXYV8xNDAxMTA2MDY0OTp0Z2wscmtsLGRnMSxhZGwtcyxhZGwtcCAqLw0K
PiAgCXdhXzE0MDExMDYwNjQ5KGk5MTUsIHdhbCk7DQo+ICsNCj4gKwkvKiBXYV8xNDAxMTA1OTc4
ODp0Z2wscmtsLGFkbC1zLGRnMSxhZGwtcCAqLw0KPiArCXdhX3dyaXRlX29yKHdhbCwgR0VOMTBf
REZSX1JBVElPX0VOX0FORF9DSElDS0VOLCBERlJfRElTQUJMRSk7DQo+ICB9DQo+ICANCj4gIHN0
YXRpYyB2b2lkDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5j
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYw0KPiBpbmRleCBlZjUzMDRkM2MyZWMu
LjhhODRhYmZhYTRiMCAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxf
cG0uYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jDQo+IEBAIC03MzQ1
LDEwICs3MzQ1LDYgQEAgc3RhdGljIHZvaWQgaWNsX2luaXRfY2xvY2tfZ2F0aW5nKHN0cnVjdCBk
cm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikNCj4gIAlpbnRlbF91bmNvcmVfd3JpdGUoJmRldl9w
cml2LT51bmNvcmUsIElMS19EUEZDX0NISUNLRU4sDQo+ICAJCSAgIElMS19EUEZDX0NISUNLRU5f
Q09NUF9EVU1NWV9QSVhFTCk7DQo+ICANCj4gLQkvKiBUaGlzIGlzIG5vdCBhbiBXYS4gRW5hYmxl
IHRvIHJlZHVjZSBTYW1wbGVyIHBvd2VyICovDQo+IC0JaW50ZWxfdW5jb3JlX3dyaXRlKCZkZXZf
cHJpdi0+dW5jb3JlLCBHRU4xMF9ERlJfUkFUSU9fRU5fQU5EX0NISUNLRU4sDQo+IC0JCSAgIGlu
dGVsX3VuY29yZV9yZWFkKCZkZXZfcHJpdi0+dW5jb3JlLCBHRU4xMF9ERlJfUkFUSU9fRU5fQU5E
X0NISUNLRU4pICYgfkRGUl9ESVNBQkxFKTsNCj4gLQ0KPiAgCS8qV2FfMTQwMTA1OTQwMTM6aWNs
LCBlaGwgKi8NCj4gIAlpbnRlbF91bmNvcmVfcm13KCZkZXZfcHJpdi0+dW5jb3JlLCBHRU44X0NI
SUNLRU5fRENQUl8xLA0KPiAgCQkJIDAsIENOTF9ERUxBWV9QTVJTUCk7DQo+IEBAIC03MzY3LDEw
ICs3MzYzLDYgQEAgc3RhdGljIHZvaWQgZ2VuMTJscF9pbml0X2Nsb2NrX2dhdGluZyhzdHJ1Y3Qg
ZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpDQo+ICAJCWludGVsX3VuY29yZV93cml0ZSgmZGV2
X3ByaXYtPnVuY29yZSwgR0VOOV9DTEtHQVRFX0RJU18zLCBpbnRlbF91bmNvcmVfcmVhZCgmZGV2
X3ByaXYtPnVuY29yZSwgR0VOOV9DTEtHQVRFX0RJU18zKSB8DQo+ICAJCQkgICBUR0xfVlJIX0dB
VElOR19ESVMpOw0KPiAgDQo+IC0JLyogV2FfMTQwMTEwNTk3ODg6dGdsLHJrbCxhZGwtcyxkZzEs
YWRsLXAgKi8NCj4gLQlpbnRlbF91bmNvcmVfcm13KCZkZXZfcHJpdi0+dW5jb3JlLCBHRU4xMF9E
RlJfUkFUSU9fRU5fQU5EX0NISUNLRU4sDQo+IC0JCQkgMCwgREZSX0RJU0FCTEUpOw0KPiAtDQo+
ICAJLyogV2FfMTQwMTM3MjM2MjI6dGdsLHJrbCxkZzEsYWRsLXMgKi8NCj4gIAlpZiAoRElTUExB
WV9WRVIoZGV2X3ByaXYpID09IDEyKQ0KPiAgCQlpbnRlbF91bmNvcmVfcm13KCZkZXZfcHJpdi0+
dW5jb3JlLCBDTEtSRVFfUE9MSUNZLA0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZngK
