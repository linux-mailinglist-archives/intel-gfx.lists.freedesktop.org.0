Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C6D6B42AECC
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Oct 2021 23:23:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E31056E9F9;
	Tue, 12 Oct 2021 21:23:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F0DA46E9E3
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Oct 2021 21:23:28 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10135"; a="214424851"
X-IronPort-AV: E=Sophos;i="5.85,368,1624345200"; d="scan'208";a="214424851"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2021 14:23:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,368,1624345200"; d="scan'208";a="441393418"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by orsmga006.jf.intel.com with ESMTP; 12 Oct 2021 14:23:28 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Tue, 12 Oct 2021 14:23:28 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Tue, 12 Oct 2021 14:23:27 -0700
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2242.012;
 Tue, 12 Oct 2021 14:23:27 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/icl: Fix read of memory frequency
Thread-Index: AQHXvIZ8tSqHiA/TekCMS0N7X9FxBqvQWlyAgAACawA=
Date: Tue, 12 Oct 2021 21:23:27 +0000
Message-ID: <3200fd7f9d4b032a100abb311475ef44dd2e0edd.camel@intel.com>
References: <20211008205855.36778-1-jose.souza@intel.com>
 <20211012212051.GX602200@mdroper-desk1.amr.corp.intel.com>
In-Reply-To: <20211012212051.GX602200@mdroper-desk1.amr.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.132]
Content-Type: text/plain; charset="utf-8"
Content-ID: <EA206B3CCF1AC34B800B554B78E3B02D@intel.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/icl: Fix read of memory frequency
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCAyMDIxLTEwLTEyIGF0IDE0OjIwIC0wNzAwLCBNYXR0IFJvcGVyIHdyb3RlOg0KPiBP
biBGcmksIE9jdCAwOCwgMjAyMSBhdCAwMTo1ODo1NVBNIC0wNzAwLCBKb3PDqSBSb2JlcnRvIGRl
IFNvdXphIHdyb3RlOg0KPiA+IEFsbCBkaXNwbGF5IDkgYW5kIGRpc3BsYXkgMTAgcGxhdGZvcm1z
IGhhcyBvbmx5IDQgYml0cyBmb3IgdGhlIG1lbW9yeQ0KPiA+IGZyZXF1ZW5jeSBidXQgZGlzcGxh
eSAxMSBwbGF0Zm9ybXMgaXQgY2hhbmdlcyB0byA4IGJpdHMuDQo+ID4gDQo+ID4gRGlzcGxheSA5
IHBsYXRmb3JtcyBoYXMgYW5vdGhlciByZWdpc3RlciBpbiBiaXRzIDc6NCB0aGF0IHByZXZlbnRz
IHVzDQo+ID4gdG8gaGF2ZSBhIHNpbmdsZSBtYXNrLg0KPiA+IEFsc28gYWRkaW5nIG5ldyBtYXNr
IHdpdGggdGhlIGN1cnJlbnQgbmFtZSBpbiBDUldlYlZpZXdlciwgbm90DQo+ID4gc3VyZSB3aHkg
Y3VycmVudCBtYXNrIGlzIG5hbWVkIGxpa2UgdGhpcy4NCj4gPiANCj4gPiBGaXhlczogZjgxMTJj
Yjk1NzRiICgiZHJtL2k5MTUvZ2VuMTErOiBPbmx5IGxvYWQgRFJBTSBpbmZvcm1hdGlvbiBmcm9t
IHBjb2RlIikNCj4gPiBTaWduZWQtb2ZmLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3Nl
LnNvdXphQGludGVsLmNvbT4NCj4gPiAtLS0NCj4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9yZWcuaCAgIHwgMSArDQo+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RyYW0uYyB8
IDcgKysrKystLQ0KPiA+ICAyIGZpbGVzIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKSwgMiBkZWxl
dGlvbnMoLSkNCj4gPiANCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9yZWcuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgNCj4gPiBpbmRleCBhODk3
ZjRhYmVhMGMzLi4wNDFmN2RjOWUwZDk0IDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfcmVnLmgNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3Jl
Zy5oDQo+ID4gQEAgLTExMTQ4LDYgKzExMTQ4LDcgQEAgZW51bSBza2xfcG93ZXJfZ2F0ZSB7DQo+
ID4gICNkZWZpbmUgU0tMX01FTU9SWV9GUkVRX01VTFRJUExJRVJfSFoJCTI2NjY2NjY2Ng0KPiA+
ICAjZGVmaW5lIFNLTF9NQ19CSU9TX0RBVEFfMF8wXzBfTUNIQkFSX1BDVQlfTU1JTyhNQ0hCQVJf
TUlSUk9SX0JBU0VfU05CICsgMHg1RTA0KQ0KPiA+ICAjZGVmaW5lICBTS0xfUkVRX0RBVEFfTUFT
SwkJCSgweEYgPDwgMCkNCj4gPiArI2RlZmluZSAgSUNMX0ZSRVFfTUFTSwkJCQkoMHhGRiA8PCAw
KQ0KPiANCj4gV2UgbWlnaHQgYXMgd2VsbCB0YWtlIHRoaXMgb3Bwb3J0dW5pdHkgdG8gc3dpdGNo
IG92ZXIgdG8gUkVHX0dFTk1BU0sNCj4gbm90YXRpb24gd2hpbGUgd2UncmUgaGVyZS4NCg0KV2ls
bCBkby4NCg0KPiANCj4gPiAgI2RlZmluZSAgREcxX0dFQVJfVFlQRQkJCQlSRUdfQklUKDE2KQ0K
PiA+ICANCj4gPiAgI2RlZmluZSBTS0xfTUFEX0lOVEVSX0NIQU5ORUxfMF8wXzBfTUNIQkFSX01D
TUFJTiBfTU1JTyhNQ0hCQVJfTUlSUk9SX0JBU0VfU05CICsgMHg1MDAwKQ0KPiA+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kcmFtLmMgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pbnRlbF9kcmFtLmMNCj4gPiBpbmRleCAzMGEwY2FiNWVmZjQ2Li41NTg1ODliMTIwMmQ2
IDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RyYW0uYw0KPiA+
ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RyYW0uYw0KPiA+IEBAIC0yNTcsOCAr
MjU3LDExIEBAIHNrbF9nZXRfZHJhbV9pbmZvKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1
KQ0KPiA+ICANCj4gPiAgCXZhbCA9IGludGVsX3VuY29yZV9yZWFkKCZpOTE1LT51bmNvcmUsDQo+
ID4gIAkJCQlTS0xfTUNfQklPU19EQVRBXzBfMF8wX01DSEJBUl9QQ1UpOw0KPiA+IC0JbWVtX2Zy
ZXFfa2h6ID0gRElWX1JPVU5EX1VQKCh2YWwgJiBTS0xfUkVRX0RBVEFfTUFTSykgKg0KPiA+IC0J
CQkJICAgIFNLTF9NRU1PUllfRlJFUV9NVUxUSVBMSUVSX0haLCAxMDAwKTsNCj4gPiArCWlmIChE
SVNQTEFZX1ZFUihpOTE1KSA9PSAxMSkNCj4gPiArCQl2YWwgJj0gSUNMX0ZSRVFfTUFTSzsNCj4g
PiArCWVsc2UNCj4gPiArCQl2YWwgJj0gU0tMX1JFUV9EQVRBX01BU0s7DQo+ID4gKwltZW1fZnJl
cV9raHogPSBESVZfUk9VTkRfVVAodmFsICogU0tMX01FTU9SWV9GUkVRX01VTFRJUExJRVJfSFos
IDEwMDApOw0KPiANCj4gSSdtIG5vdCBzdXJlIFNLTF9NRU1PUllfRlJFUV9NVUxUSVBMSUVSX0ha
IGlzIGNvcnJlY3QgYW55bW9yZSBlaXRoZXIuDQo+IElmIEknbSByZWFkaW5nIHRoZSByZWdpc3Rl
ciBkZXNjcmlwdGlvbiBjb3JyZWN0bHksIGl0IGFwcGVhcnMgdGhlIHZhbHVlDQo+IGlzIG5vdyBn
aXZlbiBpbiB1bml0cyBvZiAxMzMuMzMgTUh6IGluc3RlYWQgb2YgdGhlIG9sZCAyNjYuNjYuDQoN
ClRob3VnaHQgYWJvdXQgdGhhdCBidXQgYXMgdGhlIGNhbGN1bGF0ZWQgbWVtb3J5IGZyZXF1ZW5j
eSBoZXJlIGlzIG5vdCB1c2VkIGZvciBhbnl0aGluZyBiZXNpZGVzIGNoZWNrIGlmIGlzIG5vdCB6
ZXJvLCBJIGxlZnQgYXMgaXMuDQoNCj4gDQo+IA0KPiBNYXR0DQo+IA0KPiA+ICANCj4gPiAgCWlm
IChkcmFtX2luZm8tPm51bV9jaGFubmVscyAqIG1lbV9mcmVxX2toeiA9PSAwKSB7DQo+ID4gIAkJ
ZHJtX2luZm8oJmk5MTUtPmRybSwNCj4gPiAtLSANCj4gPiAyLjMzLjANCj4gPiANCj4gDQoNCg==
