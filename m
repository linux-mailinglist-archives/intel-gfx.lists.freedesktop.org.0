Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2092844053B
	for <lists+intel-gfx@lfdr.de>; Sat, 30 Oct 2021 00:02:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A72B89CE3;
	Fri, 29 Oct 2021 22:02:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 64DED89CE3
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Oct 2021 22:02:55 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10152"; a="211531918"
X-IronPort-AV: E=Sophos;i="5.87,193,1631602800"; d="scan'208";a="211531918"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2021 15:01:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,193,1631602800"; d="scan'208";a="538862745"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by fmsmga008.fm.intel.com with ESMTP; 29 Oct 2021 15:01:35 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Fri, 29 Oct 2021 15:01:34 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Fri, 29 Oct 2021 15:01:34 -0700
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2242.012;
 Fri, 29 Oct 2021 15:01:34 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 13/16] drm/i915: Use intel_de_rmw() for tgl
 dkl phy programming
Thread-Index: AQHXuvPOWUVKyBf/pkGeiqX9fPRcVavrIk0A
Date: Fri, 29 Oct 2021 22:01:34 +0000
Message-ID: <1fb440194b8a69f5de47b37c3f4e281a268da58e.camel@intel.com>
References: <20211006204937.30774-1-ville.syrjala@linux.intel.com>
 <20211006204937.30774-14-ville.syrjala@linux.intel.com>
In-Reply-To: <20211006204937.30774-14-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.132]
Content-Type: text/plain; charset="utf-8"
Content-ID: <8F2A59C81E87394DBE159DD213AE4CA8@intel.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 13/16] drm/i915: Use intel_de_rmw() for tgl
 dkl phy programming
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

T24gV2VkLCAyMDIxLTEwLTA2IGF0IDIzOjQ5ICswMzAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOg0K
PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiANCj4gU3RyZWFtbGluZSB0aGUgY29kZSBieSB1c2luZyBpbnRlbF9kZV9ybXcoKS4NCg0KUmV2
aWV3ZWQtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPg0K
DQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGlu
dXguaW50ZWwuY29tPg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGRpLmMgfCAzNiArKysrKysrKysrKy0tLS0tLS0tLS0tLS0NCj4gIDEgZmlsZSBjaGFuZ2Vk
LCAxNiBpbnNlcnRpb25zKCspLCAyMCBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYw0KPiBpbmRleCA4NTI0Nzc0NGU5ZGQuLjNjMWIyODlk
ZjJjMCAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
ZGkuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jDQo+
IEBAIC0xMzA3LDcgKzEzMDcsNiBAQCBzdGF0aWMgdm9pZCB0Z2xfZGtsX3BoeV9zZXRfc2lnbmFs
X2xldmVscyhzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwNCj4gIA0KPiAgCWZvciAobG4g
PSAwOyBsbiA8IDI7IGxuKyspIHsNCj4gIAkJaW50IGxldmVsOw0KPiAtCQl1MzIgdmFsOw0KPiAg
DQo+ICAJCWludGVsX2RlX3dyaXRlKGRldl9wcml2LCBISVBfSU5ERVhfUkVHKHRjX3BvcnQpLA0K
PiAgCQkJICAgICAgIEhJUF9JTkRFWF9WQUwodGNfcG9ydCwgbG4pKTsNCj4gQEAgLTEzMTYsMjkg
KzEzMTUsMjYgQEAgc3RhdGljIHZvaWQgdGdsX2RrbF9waHlfc2V0X3NpZ25hbF9sZXZlbHMoc3Ry
dWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsDQo+ICANCj4gIAkJbGV2ZWwgPSBpbnRlbF9kZGlf
bGV2ZWwoZW5jb2RlciwgY3J0Y19zdGF0ZSwgMipsbiswKTsNCj4gIA0KPiAtCQl2YWwgPSBpbnRl
bF9kZV9yZWFkKGRldl9wcml2LCBES0xfVFhfRFBDTlRMMCh0Y19wb3J0KSk7DQo+IC0JCXZhbCAm
PSB+KERLTF9UWF9QUkVTSE9PVF9DT0VGRl9NQVNLIHwNCj4gLQkJCSBES0xfVFhfREVfRU1QQUhT
SVNfQ09FRkZfTUFTSyB8DQo+IC0JCQkgREtMX1RYX1ZTV0lOR19DT05UUk9MX01BU0spOw0KPiAt
CQl2YWwgfD0gREtMX1RYX1ZTV0lOR19DT05UUk9MKHRyYW5zLT5lbnRyaWVzW2xldmVsXS5ka2wu
dnN3aW5nKSB8DQo+IC0JCQlES0xfVFhfREVfRU1QSEFTSVNfQ09FRkYodHJhbnMtPmVudHJpZXNb
bGV2ZWxdLmRrbC5kZV9lbXBoYXNpcykgfA0KPiAtCQkJREtMX1RYX1BSRVNIT09UX0NPRUZGKHRy
YW5zLT5lbnRyaWVzW2xldmVsXS5ka2wucHJlc2hvb3QpOw0KPiAtCQlpbnRlbF9kZV93cml0ZShk
ZXZfcHJpdiwgREtMX1RYX0RQQ05UTDAodGNfcG9ydCksIHZhbCk7DQo+ICsJCWludGVsX2RlX3Jt
dyhkZXZfcHJpdiwgREtMX1RYX0RQQ05UTDAodGNfcG9ydCksDQo+ICsJCQkgICAgIERLTF9UWF9Q
UkVTSE9PVF9DT0VGRl9NQVNLIHwNCj4gKwkJCSAgICAgREtMX1RYX0RFX0VNUEFIU0lTX0NPRUZG
X01BU0sgfA0KPiArCQkJICAgICBES0xfVFhfVlNXSU5HX0NPTlRST0xfTUFTSywNCj4gKwkJCSAg
ICAgREtMX1RYX1ZTV0lOR19DT05UUk9MKHRyYW5zLT5lbnRyaWVzW2xldmVsXS5ka2wudnN3aW5n
KSB8DQo+ICsJCQkgICAgIERLTF9UWF9ERV9FTVBIQVNJU19DT0VGRih0cmFucy0+ZW50cmllc1ts
ZXZlbF0uZGtsLmRlX2VtcGhhc2lzKSB8DQo+ICsJCQkgICAgIERLTF9UWF9QUkVTSE9PVF9DT0VG
Rih0cmFucy0+ZW50cmllc1tsZXZlbF0uZGtsLnByZXNob290KSk7DQo+ICANCj4gIAkJbGV2ZWwg
PSBpbnRlbF9kZGlfbGV2ZWwoZW5jb2RlciwgY3J0Y19zdGF0ZSwgMipsbisxKTsNCj4gIA0KPiAt
CQl2YWwgPSBpbnRlbF9kZV9yZWFkKGRldl9wcml2LCBES0xfVFhfRFBDTlRMMSh0Y19wb3J0KSk7
DQo+IC0JCXZhbCAmPSB+KERLTF9UWF9QUkVTSE9PVF9DT0VGRl9NQVNLIHwNCj4gLQkJCSBES0xf
VFhfREVfRU1QQUhTSVNfQ09FRkZfTUFTSyB8DQo+IC0JCQkgREtMX1RYX1ZTV0lOR19DT05UUk9M
X01BU0spOw0KPiAtCQl2YWwgfD0gREtMX1RYX1ZTV0lOR19DT05UUk9MKHRyYW5zLT5lbnRyaWVz
W2xldmVsXS5ka2wudnN3aW5nKSB8DQo+IC0JCQlES0xfVFhfREVfRU1QSEFTSVNfQ09FRkYodHJh
bnMtPmVudHJpZXNbbGV2ZWxdLmRrbC5kZV9lbXBoYXNpcykgfA0KPiAtCQkJREtMX1RYX1BSRVNI
T09UX0NPRUZGKHRyYW5zLT5lbnRyaWVzW2xldmVsXS5ka2wucHJlc2hvb3QpOw0KPiAtCQlpbnRl
bF9kZV93cml0ZShkZXZfcHJpdiwgREtMX1RYX0RQQ05UTDEodGNfcG9ydCksIHZhbCk7DQo+ICsJ
CWludGVsX2RlX3JtdyhkZXZfcHJpdiwgREtMX1RYX0RQQ05UTDEodGNfcG9ydCksDQo+ICsJCQkg
ICAgIERLTF9UWF9QUkVTSE9PVF9DT0VGRl9NQVNLIHwNCj4gKwkJCSAgICAgREtMX1RYX0RFX0VN
UEFIU0lTX0NPRUZGX01BU0sgfA0KPiArCQkJICAgICBES0xfVFhfVlNXSU5HX0NPTlRST0xfTUFT
SywNCj4gKwkJCSAgICAgREtMX1RYX1ZTV0lOR19DT05UUk9MKHRyYW5zLT5lbnRyaWVzW2xldmVs
XS5ka2wudnN3aW5nKSB8DQo+ICsJCQkgICAgIERLTF9UWF9ERV9FTVBIQVNJU19DT0VGRih0cmFu
cy0+ZW50cmllc1tsZXZlbF0uZGtsLmRlX2VtcGhhc2lzKSB8DQo+ICsJCQkgICAgIERLTF9UWF9Q
UkVTSE9PVF9DT0VGRih0cmFucy0+ZW50cmllc1tsZXZlbF0uZGtsLnByZXNob290KSk7DQo+ICAN
Cj4gLQkJdmFsID0gaW50ZWxfZGVfcmVhZChkZXZfcHJpdiwgREtMX1RYX0RQQ05UTDIodGNfcG9y
dCkpOw0KPiAtCQl2YWwgJj0gfkRLTF9UWF9EUDIwQklUTU9ERTsNCj4gLQkJaW50ZWxfZGVfd3Jp
dGUoZGV2X3ByaXYsIERLTF9UWF9EUENOVEwyKHRjX3BvcnQpLCB2YWwpOw0KPiArCQlpbnRlbF9k
ZV9ybXcoZGV2X3ByaXYsIERLTF9UWF9EUENOVEwyKHRjX3BvcnQpLA0KPiArCQkJICAgICBES0xf
VFhfRFAyMEJJVE1PREUsIDApOw0KPiAgCX0NCj4gIH0NCj4gIA0KDQo=
