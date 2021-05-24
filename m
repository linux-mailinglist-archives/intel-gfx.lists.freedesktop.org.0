Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3980538F2AB
	for <lists+intel-gfx@lfdr.de>; Mon, 24 May 2021 19:59:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7744F6E8DB;
	Mon, 24 May 2021 17:59:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3064D6E8DB
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 May 2021 17:59:25 +0000 (UTC)
IronPort-SDR: uxTZoHBYZ99wK5UcpYdHzfuNOmk5tr1RqPKcdbltzzjNxgQP4eiNCCEb3SX7MJbXdNaUV1MJpX
 s9OoKvhvykrQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9993"; a="223151558"
X-IronPort-AV: E=Sophos;i="5.82,325,1613462400"; d="scan'208";a="223151558"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 May 2021 10:59:24 -0700
IronPort-SDR: 7TyXuQ+IOBUk6ZgTWYowb8UG9vg53SzAUwDYRQ8CUX9qwzoxAn2IH8MAWROYLY4vlDJLmuUdB8
 ecmWuJPPExYA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,325,1613462400"; d="scan'208";a="396484774"
Received: from irsmsx606.ger.corp.intel.com ([163.33.146.139])
 by orsmga003.jf.intel.com with ESMTP; 24 May 2021 10:59:23 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 IRSMSX606.ger.corp.intel.com (163.33.146.139) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Mon, 24 May 2021 18:59:21 +0100
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2242.008;
 Mon, 24 May 2021 10:59:20 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Deak, Imre" <imre.deak@intel.com>
Thread-Topic: [Intel-gfx] [PATCH 2/3] drm/i915/adlp: Fix GEM VM asserts for
 DPT VMs
Thread-Index: AQHXUMIpNmywgsMM60ik6v+oGxMEsqrzYc6A
Date: Mon, 24 May 2021 17:59:20 +0000
Message-ID: <c3457d39360f86cf45810f13a54bf909fec06888.camel@intel.com>
References: <20210524172703.2113058-1-imre.deak@intel.com>
 <20210524172703.2113058-2-imre.deak@intel.com>
In-Reply-To: <20210524172703.2113058-2-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-ID: <70802927CEBF824A8ECF2D74DFCBA9CF@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915/adlp: Fix GEM VM asserts for
 DPT VMs
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

T24gTW9uLCAyMDIxLTA1LTI0IGF0IDIwOjI3ICswMzAwLCBJbXJlIERlYWsgd3JvdGU6DQo+IEFu
IG9iamVjdCBtYXBwZWQgdmlhIERQVCBjYW4gaGF2ZSByZW1hcHBlZCBhbmQgcm90YXRlZCBWTUEg
aW5zdGFuY2VzDQo+IGJlc2lkZXMgdGhlIG5vcm1hbCBWTUEgaW5zdGFuY2UsIHNpbWlsYXJseSB0
byBHR1RUIFZNQSBpbnN0YW5jZXMuDQo+IEFkanVzdCB0aGUgY29ycmVzcG9uZGluZyBWTUEgbG9v
a3VwIGFzc2VydHMuDQo+IA0KPiBXaGlsZSBhdCBpdCBhbHNvIGNoZWNrIGlmIGEgRFBUIFZNIGlz
IHBhc3NlZCBpbmNvcnJlY3RseSB0bw0KPiBpOTE1X3ZtX3RvX3BwZ3R0KCkuDQo+IA0KDQpSZXZp
ZXdlZC1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+DQoN
Cj4gU2lnbmVkLW9mZi1ieTogSW1yZSBEZWFrIDxpbXJlLmRlYWtAaW50ZWwuY29tPg0KPiAtLS0N
Cj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0dC5oIHwgMyArKy0NCj4gIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfdm1hLmMgICAgIHwgMiArLQ0KPiAgZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV92bWEuaCAgICAgfCAyICstDQo+ICAzIGZpbGVzIGNoYW5nZWQsIDQgaW5zZXJ0
aW9ucygrKSwgMyBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9ndC9pbnRlbF9ndHQuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0
dC5oDQo+IGluZGV4IGNhMDBiNDU4MjdiNzQuLjUwYTk4Y2UzOWY3NGIgMTAwNjQ0DQo+IC0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0dC5oDQo+ICsrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L2ludGVsX2d0dC5oDQo+IEBAIC0zNTksNiArMzU5LDcgQEAgc3RydWN0IGk5
MTVfcHBndHQgew0KPiAgDQo+ICAjZGVmaW5lIGk5MTVfaXNfZ2d0dCh2bSkgKCh2bSktPmlzX2dn
dHQpDQo+ICAjZGVmaW5lIGk5MTVfaXNfZHB0KHZtKSAoKHZtKS0+aXNfZHB0KQ0KPiArI2RlZmlu
ZSBpOTE1X2lzX2dndHRfb3JfZHB0KHZtKSAoaTkxNV9pc19nZ3R0KHZtKSB8fCBpOTE1X2lzX2Rw
dCh2bSkpDQo+ICANCj4gIGludCBfX211c3RfY2hlY2sNCj4gIGk5MTVfdm1fbG9ja19vYmplY3Rz
KHN0cnVjdCBpOTE1X2FkZHJlc3Nfc3BhY2UgKnZtLCBzdHJ1Y3QgaTkxNV9nZW1fd3dfY3R4ICp3
dyk7DQo+IEBAIC0zOTMsNyArMzk0LDcgQEAgc3RhdGljIGlubGluZSBzdHJ1Y3QgaTkxNV9wcGd0
dCAqDQo+ICBpOTE1X3ZtX3RvX3BwZ3R0KHN0cnVjdCBpOTE1X2FkZHJlc3Nfc3BhY2UgKnZtKQ0K
PiAgew0KPiAgCUJVSUxEX0JVR19PTihvZmZzZXRvZihzdHJ1Y3QgaTkxNV9wcGd0dCwgdm0pKTsN
Cj4gLQlHRU1fQlVHX09OKGk5MTVfaXNfZ2d0dCh2bSkpOw0KPiArCUdFTV9CVUdfT04oaTkxNV9p
c19nZ3R0X29yX2RwdCh2bSkpOw0KPiAgCXJldHVybiBjb250YWluZXJfb2Yodm0sIHN0cnVjdCBp
OTE1X3BwZ3R0LCB2bSk7DQo+ICB9DQo+ICANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfdm1hLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3ZtYS5jDQo+IGlu
ZGV4IGE2Y2QwZmE2Mjg0NzcuLmIzMTlmZDNmOTFjYzMgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfdm1hLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV92bWEuYw0KPiBAQCAtMjc0LDcgKzI3NCw3IEBAIGk5MTVfdm1hX2luc3RhbmNlKHN0cnVjdCBk
cm1faTkxNV9nZW1fb2JqZWN0ICpvYmosDQo+ICB7DQo+ICAJc3RydWN0IGk5MTVfdm1hICp2bWE7
DQo+ICANCj4gLQlHRU1fQlVHX09OKHZpZXcgJiYgIWk5MTVfaXNfZ2d0dCh2bSkpOw0KPiArCUdF
TV9CVUdfT04odmlldyAmJiAhaTkxNV9pc19nZ3R0X29yX2RwdCh2bSkpOw0KPiAgCUdFTV9CVUdf
T04oIWF0b21pY19yZWFkKCZ2bS0+b3BlbikpOw0KPiAgDQo+ICAJc3Bpbl9sb2NrKCZvYmotPnZt
YS5sb2NrKTsNCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfdm1hLmgg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3ZtYS5oDQo+IGluZGV4IDhkZjc4NGEwMjZkMjEu
LjJhMTA4ZTY2Y2Q0OTUgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
dm1hLmgNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV92bWEuaA0KPiBAQCAtMTU4
LDcgKzE1OCw3IEBAIGk5MTVfdm1hX2NvbXBhcmUoc3RydWN0IGk5MTVfdm1hICp2bWEsDQo+ICB7
DQo+ICAJcHRyZGlmZl90IGNtcDsNCj4gIA0KPiAtCUdFTV9CVUdfT04odmlldyAmJiAhaTkxNV9p
c19nZ3R0KHZtKSk7DQo+ICsJR0VNX0JVR19PTih2aWV3ICYmICFpOTE1X2lzX2dndHRfb3JfZHB0
KHZtKSk7DQo+ICANCj4gIAljbXAgPSBwdHJkaWZmKHZtYS0+dm0sIHZtKTsNCj4gIAlpZiAoY21w
KQ0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
