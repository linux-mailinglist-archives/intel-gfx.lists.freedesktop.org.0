Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FC724653D0
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Dec 2021 18:20:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4EEAB6E8B6;
	Wed,  1 Dec 2021 17:20:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 495306E8B6
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Dec 2021 17:20:10 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10185"; a="235236606"
X-IronPort-AV: E=Sophos;i="5.87,279,1631602800"; d="scan'208";a="235236606"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2021 09:17:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,279,1631602800"; d="scan'208";a="477614209"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga002.jf.intel.com with ESMTP; 01 Dec 2021 09:17:44 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Wed, 1 Dec 2021 09:17:43 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Wed, 1 Dec 2021 09:17:43 -0800
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2308.020;
 Wed, 1 Dec 2021 09:17:43 -0800
From: "Souza, Jose" <jose.souza@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 05/14] drm/i915: Rename PLANE_CUS_CTL Y plane
 bits
Thread-Index: AQHX5sfsIThDx11OP02gV28IZCot5KweZ3uA
Date: Wed, 1 Dec 2021 17:17:43 +0000
Message-ID: <e9d512a659717b49ceef6dcf544b5f0c60a5257e.camel@intel.com>
References: <20211201152552.7821-1-ville.syrjala@linux.intel.com>
 <20211201152552.7821-6-ville.syrjala@linux.intel.com>
In-Reply-To: <20211201152552.7821-6-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-Type: text/plain; charset="utf-8"
Content-ID: <B193237003EA0B4DBAAD09C618B4D107@intel.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 05/14] drm/i915: Rename PLANE_CUS_CTL Y
 plane bits
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

T24gV2VkLCAyMDIxLTEyLTAxIGF0IDE3OjI1ICswMjAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOg0K
PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiANCj4gUmVuYW1lIHRoZSBQTEFORV9DVVNfQ1RMIFkgcGxhbmUgc2VsZWN0aW9uIGJpdHMgdG8g
YWN0dWFsbHkNCj4gc2F5ICJZIHBsYW5lIi4NCj4gDQoNClJldmlld2VkLWJ5OiBKb3PDqSBSb2Jl
cnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4NCg0KPiBTaWduZWQtb2ZmLWJ5OiBW
aWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiAtLS0NCj4g
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIHwgOCArKysrLS0t
LQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCAgICAgICAgICAgICAgfCA4ICsr
KystLS0tDQo+ICAyIGZpbGVzIGNoYW5nZWQsIDggaW5zZXJ0aW9ucygrKSwgOCBkZWxldGlvbnMo
LSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Rpc3BsYXkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5j
DQo+IGluZGV4IGJhZGYwMzVlZmFlYi4uNzI2YzE1NTJjOWJmIDEwMDY0NA0KPiAtLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0KPiArKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0KPiBAQCAtNTE1OSwxMyArNTE1
OSwxMyBAQCBzdGF0aWMgaW50IGljbF9jaGVja19udjEyX3BsYW5lcyhzdHJ1Y3QgaW50ZWxfY3J0
Y19zdGF0ZSAqY3J0Y19zdGF0ZSkNCj4gIA0KPiAgCQlpZiAoaWNsX2lzX2hkcl9wbGFuZShkZXZf
cHJpdiwgcGxhbmUtPmlkKSkgew0KPiAgCQkJaWYgKGxpbmtlZC0+aWQgPT0gUExBTkVfU1BSSVRF
NSkNCj4gLQkJCQlwbGFuZV9zdGF0ZS0+Y3VzX2N0bCB8PSBQTEFORV9DVVNfUExBTkVfNzsNCj4g
KwkJCQlwbGFuZV9zdGF0ZS0+Y3VzX2N0bCB8PSBQTEFORV9DVVNfWV9QTEFORV83X0lDTDsNCj4g
IAkJCWVsc2UgaWYgKGxpbmtlZC0+aWQgPT0gUExBTkVfU1BSSVRFNCkNCj4gLQkJCQlwbGFuZV9z
dGF0ZS0+Y3VzX2N0bCB8PSBQTEFORV9DVVNfUExBTkVfNjsNCj4gKwkJCQlwbGFuZV9zdGF0ZS0+
Y3VzX2N0bCB8PSBQTEFORV9DVVNfWV9QTEFORV82X0lDTDsNCj4gIAkJCWVsc2UgaWYgKGxpbmtl
ZC0+aWQgPT0gUExBTkVfU1BSSVRFMykNCj4gLQkJCQlwbGFuZV9zdGF0ZS0+Y3VzX2N0bCB8PSBQ
TEFORV9DVVNfUExBTkVfNV9SS0w7DQo+ICsJCQkJcGxhbmVfc3RhdGUtPmN1c19jdGwgfD0gUExB
TkVfQ1VTX1lfUExBTkVfNV9SS0w7DQo+ICAJCQllbHNlIGlmIChsaW5rZWQtPmlkID09IFBMQU5F
X1NQUklURTIpDQo+IC0JCQkJcGxhbmVfc3RhdGUtPmN1c19jdGwgfD0gUExBTkVfQ1VTX1BMQU5F
XzRfUktMOw0KPiArCQkJCXBsYW5lX3N0YXRlLT5jdXNfY3RsIHw9IFBMQU5FX0NVU19ZX1BMQU5F
XzRfUktMOw0KPiAgCQkJZWxzZQ0KPiAgCQkJCU1JU1NJTkdfQ0FTRShsaW5rZWQtPmlkKTsNCj4g
IAkJfQ0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgNCj4gaW5kZXggNjA2NmIxZTI3NjNjLi40YjJi
YzE3ZDAyMzUgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgN
Cj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaA0KPiBAQCAtNzMyOCwxMCAr
NzMyOCwxMCBAQCBlbnVtIHsNCj4gICNkZWZpbmUgX1BMQU5FX0NVU19DVExfMV9BCQkJMHg3MDFj
OA0KPiAgI2RlZmluZSBfUExBTkVfQ1VTX0NUTF8yX0EJCQkweDcwMmM4DQo+ICAjZGVmaW5lICBQ
TEFORV9DVVNfRU5BQkxFCQkJKDEgPDwgMzEpDQo+IC0jZGVmaW5lICBQTEFORV9DVVNfUExBTkVf
NF9SS0wJCQkoMCA8PCAzMCkNCj4gLSNkZWZpbmUgIFBMQU5FX0NVU19QTEFORV81X1JLTAkJCSgx
IDw8IDMwKQ0KPiAtI2RlZmluZSAgUExBTkVfQ1VTX1BMQU5FXzYJCQkoMCA8PCAzMCkNCj4gLSNk
ZWZpbmUgIFBMQU5FX0NVU19QTEFORV83CQkJKDEgPDwgMzApDQo+ICsjZGVmaW5lICBQTEFORV9D
VVNfWV9QTEFORV80X1JLTAkJKDAgPDwgMzApDQo+ICsjZGVmaW5lICBQTEFORV9DVVNfWV9QTEFO
RV81X1JLTAkJKDEgPDwgMzApDQo+ICsjZGVmaW5lICBQTEFORV9DVVNfWV9QTEFORV82X0lDTAkJ
KDAgPDwgMzApDQo+ICsjZGVmaW5lICBQTEFORV9DVVNfWV9QTEFORV83X0lDTAkJKDEgPDwgMzAp
DQo+ICAjZGVmaW5lICBQTEFORV9DVVNfSFBIQVNFX1NJR05fTkVHQVRJVkUJCSgxIDw8IDE5KQ0K
PiAgI2RlZmluZSAgUExBTkVfQ1VTX0hQSEFTRV8wCQkJKDAgPDwgMTYpDQo+ICAjZGVmaW5lICBQ
TEFORV9DVVNfSFBIQVNFXzBfMjUJCQkoMSA8PCAxNikNCg0K
