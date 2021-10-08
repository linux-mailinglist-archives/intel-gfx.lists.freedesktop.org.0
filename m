Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DBE242732E
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Oct 2021 23:47:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 753BB6E877;
	Fri,  8 Oct 2021 21:47:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2E99A6E877
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Oct 2021 21:47:25 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10131"; a="226548402"
X-IronPort-AV: E=Sophos;i="5.85,358,1624345200"; d="scan'208";a="226548402"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2021 14:47:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,358,1624345200"; d="scan'208";a="713926024"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga006.fm.intel.com with ESMTP; 08 Oct 2021 14:47:23 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Fri, 8 Oct 2021 14:47:23 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Fri, 8 Oct 2021 14:47:22 -0700
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2242.012;
 Fri, 8 Oct 2021 14:47:22 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915/icl: Fix read of memory frequency
Thread-Index: AQHXvIZ8tSqHiA/TekCMS0N7X9FxBqvKGhwA
Date: Fri, 8 Oct 2021 21:47:22 +0000
Message-ID: <f05f6e3097b6d70b61180ef425396c646b0cea92.camel@intel.com>
References: <20211008205855.36778-1-jose.souza@intel.com>
In-Reply-To: <20211008205855.36778-1-jose.souza@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.132]
Content-Type: text/plain; charset="utf-8"
Content-ID: <FBF5D001DDD21449B2B9C573052AFD92@intel.com>
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

T24gRnJpLCAyMDIxLTEwLTA4IGF0IDEzOjU4IC0wNzAwLCBKb3PDqSBSb2JlcnRvIGRlIFNvdXph
IHdyb3RlOg0KPiBBbGwgZGlzcGxheSA5IGFuZCBkaXNwbGF5IDEwIHBsYXRmb3JtcyBoYXMgb25s
eSA0IGJpdHMgZm9yIHRoZSBtZW1vcnkNCj4gZnJlcXVlbmN5IGJ1dCBkaXNwbGF5IDExIHBsYXRm
b3JtcyBpdCBjaGFuZ2VzIHRvIDggYml0cy4NCj4gDQo+IERpc3BsYXkgOSBwbGF0Zm9ybXMgaGFz
IGFub3RoZXIgcmVnaXN0ZXIgaW4gYml0cyA3OjQgdGhhdCBwcmV2ZW50cyB1cw0KPiB0byBoYXZl
IGEgc2luZ2xlIG1hc2suDQo+IEFsc28gYWRkaW5nIG5ldyBtYXNrIHdpdGggdGhlIGN1cnJlbnQg
bmFtZSBpbiBDUldlYlZpZXdlciwgbm90DQo+IHN1cmUgd2h5IGN1cnJlbnQgbWFzayBpcyBuYW1l
ZCBsaWtlIHRoaXMuDQo+IA0KPiBGaXhlczogZjgxMTJjYjk1NzRiICgiZHJtL2k5MTUvZ2VuMTEr
OiBPbmx5IGxvYWQgRFJBTSBpbmZvcm1hdGlvbiBmcm9tIHBjb2RlIikNCg0KT3BzIGhhc2ggc2hv
dWxkIGJlOiA1ZDBjOTM4ZWM5Y2MNCldpbGwgZml4IGluIHRoZSBuZXh0IHZlcnNpb24gb3Igd2hl
biBhcHBseWluZy4NCg0KPiBTaWduZWQtb2ZmLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxq
b3NlLnNvdXphQGludGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X3JlZy5oICAgfCAxICsNCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RyYW0uYyB8IDcg
KysrKystLQ0KPiAgMiBmaWxlcyBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25z
KC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgNCj4gaW5kZXggYTg5N2Y0YWJlYTBjMy4u
MDQxZjdkYzllMGQ5NCAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9y
ZWcuaA0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oDQo+IEBAIC0xMTE0
OCw2ICsxMTE0OCw3IEBAIGVudW0gc2tsX3Bvd2VyX2dhdGUgew0KPiAgI2RlZmluZSBTS0xfTUVN
T1JZX0ZSRVFfTVVMVElQTElFUl9IWgkJMjY2NjY2NjY2DQo+ICAjZGVmaW5lIFNLTF9NQ19CSU9T
X0RBVEFfMF8wXzBfTUNIQkFSX1BDVQlfTU1JTyhNQ0hCQVJfTUlSUk9SX0JBU0VfU05CICsgMHg1
RTA0KQ0KPiAgI2RlZmluZSAgU0tMX1JFUV9EQVRBX01BU0sJCQkoMHhGIDw8IDApDQo+ICsjZGVm
aW5lICBJQ0xfRlJFUV9NQVNLCQkJCSgweEZGIDw8IDApDQo+ICAjZGVmaW5lICBERzFfR0VBUl9U
WVBFCQkJCVJFR19CSVQoMTYpDQo+ICANCj4gICNkZWZpbmUgU0tMX01BRF9JTlRFUl9DSEFOTkVM
XzBfMF8wX01DSEJBUl9NQ01BSU4gX01NSU8oTUNIQkFSX01JUlJPUl9CQVNFX1NOQiArIDB4NTAw
MCkNCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RyYW0uYyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RyYW0uYw0KPiBpbmRleCAzMGEwY2FiNWVmZjQ2Li41
NTg1ODliMTIwMmQ2IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9k
cmFtLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZHJhbS5jDQo+IEBAIC0y
NTcsOCArMjU3LDExIEBAIHNrbF9nZXRfZHJhbV9pbmZvKHN0cnVjdCBkcm1faTkxNV9wcml2YXRl
ICppOTE1KQ0KPiAgDQo+ICAJdmFsID0gaW50ZWxfdW5jb3JlX3JlYWQoJmk5MTUtPnVuY29yZSwN
Cj4gIAkJCQlTS0xfTUNfQklPU19EQVRBXzBfMF8wX01DSEJBUl9QQ1UpOw0KPiAtCW1lbV9mcmVx
X2toeiA9IERJVl9ST1VORF9VUCgodmFsICYgU0tMX1JFUV9EQVRBX01BU0spICoNCj4gLQkJCQkg
ICAgU0tMX01FTU9SWV9GUkVRX01VTFRJUExJRVJfSFosIDEwMDApOw0KPiArCWlmIChESVNQTEFZ
X1ZFUihpOTE1KSA9PSAxMSkNCj4gKwkJdmFsICY9IElDTF9GUkVRX01BU0s7DQo+ICsJZWxzZQ0K
PiArCQl2YWwgJj0gU0tMX1JFUV9EQVRBX01BU0s7DQo+ICsJbWVtX2ZyZXFfa2h6ID0gRElWX1JP
VU5EX1VQKHZhbCAqIFNLTF9NRU1PUllfRlJFUV9NVUxUSVBMSUVSX0haLCAxMDAwKTsNCj4gIA0K
PiAgCWlmIChkcmFtX2luZm8tPm51bV9jaGFubmVscyAqIG1lbV9mcmVxX2toeiA9PSAwKSB7DQo+
ICAJCWRybV9pbmZvKCZpOTE1LT5kcm0sDQoNCg==
