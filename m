Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F7CA4BDA09
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Feb 2022 14:55:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD13010E73C;
	Mon, 21 Feb 2022 13:55:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E1B8410E72F
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Feb 2022 13:55:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645451721; x=1676987721;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=nAQqxn3OKmiQa/o5f2Ep60ytMz+APQqMGxqUO8VO4d4=;
 b=fwqYm1lQninjFYEOcuKvoGXE6bgHvP8Z6AdWvpD1C+HiLd8k7piCZOf5
 24QJnqYMif7qbIQVcfb+O+C1EkkMDIPchUbfqycTc/GZCRKijz0kv0U0T
 Gpjqf9hfuZ0WimW18ZoXWB4VPyHxM+B13eMs+9rU+Zwj6tEqyQNQmwvdo
 1WDkjBJA8XJoGoNXIVSwSlQC9lJGbLGwnh9L2RmGN5IOnIGSr92w2sNG6
 6T0Qr6eHu7wV0VPJW8LReArJJJYKF/QsWYhWEOdc5cudBkFtoAFj/l8SX
 WaxoJLVzVOG5aUfZoM0WWCWtdA7XxgPACqUS699RbnusbV0Llza1aJWEi g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10264"; a="249090431"
X-IronPort-AV: E=Sophos;i="5.88,385,1635231600"; d="scan'208";a="249090431"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2022 05:55:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,385,1635231600"; d="scan'208";a="573114376"
Received: from irsmsx603.ger.corp.intel.com ([163.33.146.9])
 by orsmga001.jf.intel.com with ESMTP; 21 Feb 2022 05:55:20 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 irsmsx603.ger.corp.intel.com (163.33.146.9) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Mon, 21 Feb 2022 13:55:18 +0000
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2308.020;
 Mon, 21 Feb 2022 05:55:17 -0800
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Deak, Imre" <imre.deak@intel.com>
Thread-Topic: [Intel-gfx] [PATCH v2] drm/i915/adlp: Add TypeC PHY
 TBT->DP-alt/legacy mode switch workaround
Thread-Index: AQHYJMOHjWEauToX0kO9QD8VZ2l94qyekoeA
Date: Mon, 21 Feb 2022 13:55:16 +0000
Message-ID: <595e645dd0ca1110b6d68626a9ecd5b4307b5878.camel@intel.com>
References: <20220218122611.767974-1-imre.deak@intel.com>
 <20220218123149.768485-1-imre.deak@intel.com>
In-Reply-To: <20220218123149.768485-1-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-Type: text/plain; charset="utf-8"
Content-ID: <D0137C786279AE47A49C2F09330A5B64@intel.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/adlp: Add TypeC PHY
 TBT->DP-alt/legacy mode switch workaround
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

T24gRnJpLCAyMDIyLTAyLTE4IGF0IDE0OjMxICswMjAwLCBJbXJlIERlYWsgd3JvdGU6DQo+IEFk
ZCBkaXNwbGF5IHdvcmthcm91bmQgIyAxMzA5MTc5NDY5ICwgd2hpY2ggZml4ZXMgYSBQSFkgaGFu
ZyB3aGVuDQo+IHN3aXRjaGluZyBmcm9tIFRCVCBtb2RlIHRvIERQLWFsdC9sZWdhY3kgbW9kZS4g
VGhlIHdvcmthcm91bmQgYWxzbw0KPiByZXF1aXJlcyBhbiBJRldJL1BIWSBmaXJtd2FyZSBjaGFu
Z2UsIGJlZm9yZSB0aGF0IHRoaXMgY2hhbmdlIGhhcyBubw0KPiBlZmZlY3QgKHRoZSBES0xfUENT
X0RXNS9TT0ZUUkVTRVQgZmxhZyBpcyBhbHdheXMgY2xlYXJlZCkuDQo+IA0KPiBIU0RFUzogMTgw
MTgyMzc4NjYNCj4gSFNERVM6IDE2MDE0NDczMzE5DQo+IA0KPiB2MjogQWRkIHRoZSBXQSBjb21t
ZW50IGFuZCBtYWtlIHRoZSBXQSBmdW5jIG5hbWUgbW9yZSBhY2N1cmF0ZS4NCj4gDQoNClJldmll
d2VkLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4NCg0K
PiBTaWduZWQtb2ZmLWJ5OiBJbXJlIERlYWsgPGltcmUuZGVha0BpbnRlbC5jb20+DQo+IC0tLQ0K
PiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYyB8IDIwICsrKysrKysr
KysrKysrKysrKystDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oICAgICAgICAg
IHwgIDYgKysrKysrDQo+ICAyIGZpbGVzIGNoYW5nZWQsIDI1IGluc2VydGlvbnMoKyksIDEgZGVs
ZXRpb24oLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2RkaS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYw0K
PiBpbmRleCA5ZGVlMTI5ODY5OTFjLi5lNmUyNmU0Y2Q4N2Q3IDEwMDY0NA0KPiAtLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMNCj4gQEAgLTMxMDEsMTAgKzMxMDEsMjQgQEAg
aW50ZWxfZGRpX3ByZV9wbGxfZW5hYmxlKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRl
LA0KPiAgCQkJCQkJY3J0Y19zdGF0ZS0+bGFuZV9sYXRfb3B0aW1fbWFzayk7DQo+ICB9DQo+ICAN
Cj4gKy8qIERpc3BsYXkgV0EgIzEzMDkxNzk0Njk6IGFkbC1wICovDQo+ICtzdGF0aWMgdm9pZCBh
ZGxwX3RidF90b19kcF9hbHRfbGVnYWN5X3N3aXRjaF93YShzdHJ1Y3QgaW50ZWxfZW5jb2RlciAq
ZW5jb2RlcikNCj4gK3sNCj4gKwlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IHRvX2k5
MTUoZW5jb2Rlci0+YmFzZS5kZXYpOw0KPiArCWVudW0gdGNfcG9ydCB0Y19wb3J0ID0gaW50ZWxf
cG9ydF90b190YyhpOTE1LCBlbmNvZGVyLT5wb3J0KTsNCj4gKwlpbnQgbG47DQo+ICsNCj4gKwlm
b3IgKGxuID0gMDsgbG4gPCAyOyBsbisrKSB7DQo+ICsJCWludGVsX2RlX3dyaXRlKGk5MTUsIEhJ
UF9JTkRFWF9SRUcodGNfcG9ydCksIEhJUF9JTkRFWF9WQUwodGNfcG9ydCwgbG4pKTsNCj4gKwkJ
aW50ZWxfZGVfcm13KGk5MTUsIERLTF9QQ1NfRFc1KHRjX3BvcnQpLCBES0xfUENTX0RXNV9DT1JF
X1NPRlRSRVNFVCwgMCk7DQo+ICsJfQ0KPiArfQ0KPiArDQo+ICBzdGF0aWMgdm9pZCBpbnRlbF9k
ZGlfcHJlcGFyZV9saW5rX3JldHJhaW4oc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwNCj4gIAkJ
CQkJICAgY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpDQo+ICB7DQo+
IC0Jc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIgPSAmZHBfdG9fZGlnX3BvcnQoaW50ZWxf
ZHApLT5iYXNlOw0KPiArCXN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgKmRpZ19wb3J0ID0gZHBf
dG9fZGlnX3BvcnQoaW50ZWxfZHApOw0KPiArCXN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVy
ID0gJmRpZ19wb3J0LT5iYXNlOw0KPiAgCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJp
diA9IHRvX2k5MTUoZW5jb2Rlci0+YmFzZS5kZXYpOw0KPiAgCWVudW0gcG9ydCBwb3J0ID0gZW5j
b2Rlci0+cG9ydDsNCj4gIAl1MzIgZHBfdHBfY3RsLCBkZGlfYnVmX2N0bDsNCj4gQEAgLTMxNDAs
NiArMzE1NCwxMCBAQCBzdGF0aWMgdm9pZCBpbnRlbF9kZGlfcHJlcGFyZV9saW5rX3JldHJhaW4o
c3RydWN0IGludGVsX2RwICppbnRlbF9kcCwNCj4gIAlpbnRlbF9kZV93cml0ZShkZXZfcHJpdiwg
ZHBfdHBfY3RsX3JlZyhlbmNvZGVyLCBjcnRjX3N0YXRlKSwgZHBfdHBfY3RsKTsNCj4gIAlpbnRl
bF9kZV9wb3N0aW5nX3JlYWQoZGV2X3ByaXYsIGRwX3RwX2N0bF9yZWcoZW5jb2RlciwgY3J0Y19z
dGF0ZSkpOw0KPiAgDQo+ICsJaWYgKElTX0FMREVSTEFLRV9QKGRldl9wcml2KSAmJg0KPiArCSAg
ICAoaW50ZWxfdGNfcG9ydF9pbl9kcF9hbHRfbW9kZShkaWdfcG9ydCkgfHwgaW50ZWxfdGNfcG9y
dF9pbl9sZWdhY3lfbW9kZShkaWdfcG9ydCkpKQ0KPiArCQlhZGxwX3RidF90b19kcF9hbHRfbGVn
YWN5X3N3aXRjaF93YShlbmNvZGVyKTsNCj4gKw0KPiAgCWludGVsX2RwLT5EUCB8PSBERElfQlVG
X0NUTF9FTkFCTEU7DQo+ICAJaW50ZWxfZGVfd3JpdGUoZGV2X3ByaXYsIERESV9CVUZfQ1RMKHBv
cnQpLCBpbnRlbF9kcC0+RFApOw0KPiAgCWludGVsX2RlX3Bvc3RpbmdfcmVhZChkZXZfcHJpdiwg
RERJX0JVRl9DVEwocG9ydCkpOw0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9yZWcuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgNCj4gaW5kZXggMjZi
NDk2ZmEzMTk3Mi4uOGFiYmRjNjJiOTgxZiAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9yZWcuaA0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5o
DQo+IEBAIC03OTA3LDYgKzc5MDcsMTIgQEAgZW51bSBza2xfcG93ZXJfZ2F0ZSB7DQo+ICAjZGVm
aW5lIF9ES0xfUEhZNl9CQVNFCQkJMHgxNkQwMDANCj4gIA0KPiAgLyogREVLRUwgUEhZIE1NSU8g
QWRkcmVzcyA9IFBoeSBiYXNlICsgKGludGVybmFsIGFkZHJlc3MgJiB+aW5kZXhfbWFzaykgKi8N
Cj4gKyNkZWZpbmUgX0RLTF9QQ1NfRFc1CQkJMHgxNA0KPiArI2RlZmluZSBES0xfUENTX0RXNSh0
Y19wb3J0KQkJX01NSU8oX1BPUlQodGNfcG9ydCwgX0RLTF9QSFkxX0JBU0UsIFwNCj4gKwkJCQkJ
CSAgICBfREtMX1BIWTJfQkFTRSkgKyBcDQo+ICsJCQkJCQkgICAgX0RLTF9QQ1NfRFc1KQ0KPiAr
I2RlZmluZSAgIERLTF9QQ1NfRFc1X0NPUkVfU09GVFJFU0VUCVJFR19CSVQoMTEpDQo+ICsNCj4g
ICNkZWZpbmUgX0RLTF9QTExfRElWMAkJCTB4MjAwDQo+ICAjZGVmaW5lICAgREtMX1BMTF9ESVYw
X0lOVEVHX0NPRUZGKHgpCSgoeCkgPDwgMTYpDQo+ICAjZGVmaW5lICAgREtMX1BMTF9ESVYwX0lO
VEVHX0NPRUZGX01BU0sJKDB4MUYgPDwgMTYpDQoNCg==
