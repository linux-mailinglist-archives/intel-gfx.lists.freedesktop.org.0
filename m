Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A8535366070
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Apr 2021 21:54:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3820B6E8C1;
	Tue, 20 Apr 2021 19:53:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4B3906E8C1
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Apr 2021 19:53:58 +0000 (UTC)
IronPort-SDR: Jw1/QGbgyes4KBzAdOuLGjYvaaAQEFnfYzfbZAALFCCVhUj7FbPw3Rrnw+nJtUwYNdVg70zjhZ
 PqH/1Q5pHVVA==
X-IronPort-AV: E=McAfee;i="6200,9189,9960"; a="175685698"
X-IronPort-AV: E=Sophos;i="5.82,237,1613462400"; d="scan'208";a="175685698"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2021 12:53:57 -0700
IronPort-SDR: KeU9fO4dXhcr3OU7jLwVDcCYy/aw4LIkt6Tef9zkvSJQioYdxxv1kjAM7NJ1atE6eeYMVHbgdP
 TaW909fvny6g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,237,1613462400"; d="scan'208";a="427138980"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga008.jf.intel.com with ESMTP; 20 Apr 2021 12:53:51 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Tue, 20 Apr 2021 12:53:51 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Tue, 20 Apr 2021 12:53:50 -0700
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2106.013;
 Tue, 20 Apr 2021 12:53:50 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/dmc: Let's abstract the dmc path.
Thread-Index: AQHXNhkjOsb4ncvTY0WXwQHSQyU3j6q+R6+A
Date: Tue, 20 Apr 2021 19:53:50 +0000
Message-ID: <c4a76bb18065c292e4ed7805fd394e5565931f33.camel@intel.com>
References: <20210420191226.1930570-1-rodrigo.vivi@intel.com>
In-Reply-To: <20210420191226.1930570-1-rodrigo.vivi@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-ID: <72C04F8463402E45A7E8F1557A17DE2A@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dmc: Let's abstract the dmc path.
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

T24gVHVlLCAyMDIxLTA0LTIwIGF0IDE1OjEyIC0wNDAwLCBSb2RyaWdvIFZpdmkgd3JvdGU6DQo+
IEFsdGhvdWdoIHRoaXMgYWJzdHJhY3Rpb24gcmVtb3ZlcyB0aGUgY29udmVuaWVuY2Ugb2YgZ3Jl
cHBpbmcNCj4gZm9yIHRoZSBmaWxlIG5hbWUsIGl0Og0KPiAtIG1ha2VzIGFkZGl0aW9uIGVhc2ll
ci4NCj4gLSBtYWtlcyBpdCBlYXNpZXIgdG8gdHdlYWsgZ2xvYmFsIHBhdGggd2hlbiBleHBlcmlt
ZW50cyBhcmUgbmVlZGVkLg0KPiAtIGdldCBpbiBzeW5jIHdpdGggZ3VjL2h1Yywgd2l0aG91dCBn
ZXR0aW5nIG92ZXJseSBhYnN0cmFjdGVkLg0KPiAtIGFsbG93cyBmdXR1cmUganVuY3Rpb24gd2l0
aCBDU1JfVkVSU0lPTiBmb3Igc2ltcGxpY2l0eS4NCj4gLSBFbmZvcmNlcyBkbWMgZmlsZSB3aWxs
IG5ldmVyIGNoYW5nZSB0aGlzIHN0YW5kYXJkLg0KPiANCg0KUmV2aWV3ZWQtYnk6IEpvc8OpIFJv
YmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPg0KDQo+IENjOiBGZWkgWWFuZyA8
ZmVpLnlhbmdAaW50ZWwuY29tPg0KPiBDYzogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVs
LmNvbT4NCj4gQ2M6IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPg0K
PiBTaWduZWQtb2ZmLWJ5OiBSb2RyaWdvIFZpdmkgPHJvZHJpZ28udml2aUBpbnRlbC5jb20+DQo+
IC0tLQ0KPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3NyLmMgfCAyMCAr
KysrKysrKysrLS0tLS0tLS0tLQ0KPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfY3NyLmggfCAgNiArKysrKysNCj4gwqAyIGZpbGVzIGNoYW5nZWQsIDE2IGluc2VydGlvbnMo
KyksIDEwIGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfY3NyLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2Nzci5jDQo+IGluZGV4IDI2YTNjNjc4N2U5ZS4uYWQ2OGJjYzYxMWM0IDEwMDY0NA0KPiAt
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Nzci5jDQo+ICsrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3NyLmMNCj4gQEAgLTQwLDQ4ICs0MCw0
OCBAQA0KPiDCoA0KPiANCj4gDQo+IA0KPiDCoCNkZWZpbmUgR0VOMTJfQ1NSX01BWF9GV19TSVpF
CQlJQ0xfQ1NSX01BWF9GV19TSVpFDQo+IMKgDQo+IA0KPiANCj4gDQo+IC0jZGVmaW5lIEFETFNf
Q1NSX1BBVEgJCQkiaTkxNS9hZGxzX2RtY192ZXIyXzAxLmJpbiINCj4gKyNkZWZpbmUgQURMU19D
U1JfUEFUSAkJCURNQ19QQVRIKGFkbHMsIDIsIDAxKQ0KPiDCoCNkZWZpbmUgQURMU19DU1JfVkVS
U0lPTl9SRVFVSVJFRAlDU1JfVkVSU0lPTigyLCAxKQ0KPiDCoE1PRFVMRV9GSVJNV0FSRShBRExT
X0NTUl9QQVRIKTsNCj4gwqANCj4gDQo+IA0KPiANCj4gLSNkZWZpbmUgREcxX0NTUl9QQVRICQkJ
Imk5MTUvZGcxX2RtY192ZXIyXzAyLmJpbiINCj4gKyNkZWZpbmUgREcxX0NTUl9QQVRICQkJRE1D
X1BBVEgoZGcxLCAyLCAwMikNCj4gwqAjZGVmaW5lIERHMV9DU1JfVkVSU0lPTl9SRVFVSVJFRAlD
U1JfVkVSU0lPTigyLCAyKQ0KPiDCoE1PRFVMRV9GSVJNV0FSRShERzFfQ1NSX1BBVEgpOw0KPiDC
oA0KPiANCj4gDQo+IA0KPiAtI2RlZmluZSBSS0xfQ1NSX1BBVEgJCQkiaTkxNS9ya2xfZG1jX3Zl
cjJfMDIuYmluIg0KPiArI2RlZmluZSBSS0xfQ1NSX1BBVEgJCQlETUNfUEFUSChya2wsIDIsIDAy
KQ0KPiDCoCNkZWZpbmUgUktMX0NTUl9WRVJTSU9OX1JFUVVJUkVECUNTUl9WRVJTSU9OKDIsIDIp
DQo+IMKgTU9EVUxFX0ZJUk1XQVJFKFJLTF9DU1JfUEFUSCk7DQo+IMKgDQo+IA0KPiANCj4gDQo+
IC0jZGVmaW5lIFRHTF9DU1JfUEFUSAkJCSJpOTE1L3RnbF9kbWNfdmVyMl8wOC5iaW4iDQo+ICsj
ZGVmaW5lIFRHTF9DU1JfUEFUSAkJCURNQ19QQVRIKHRnbCwgMiwgMDgpDQo+IMKgI2RlZmluZSBU
R0xfQ1NSX1ZFUlNJT05fUkVRVUlSRUQJQ1NSX1ZFUlNJT04oMiwgOCkNCj4gwqBNT0RVTEVfRklS
TVdBUkUoVEdMX0NTUl9QQVRIKTsNCj4gwqANCj4gDQo+IA0KPiANCj4gLSNkZWZpbmUgSUNMX0NT
Ul9QQVRICQkJImk5MTUvaWNsX2RtY192ZXIxXzA5LmJpbiINCj4gKyNkZWZpbmUgSUNMX0NTUl9Q
QVRICQkJRE1DX1BBVEgoaWNsLCAxLCAwOSkNCj4gwqAjZGVmaW5lIElDTF9DU1JfVkVSU0lPTl9S
RVFVSVJFRAlDU1JfVkVSU0lPTigxLCA5KQ0KPiDCoCNkZWZpbmUgSUNMX0NTUl9NQVhfRldfU0la
RQkJMHg2MDAwDQo+IMKgTU9EVUxFX0ZJUk1XQVJFKElDTF9DU1JfUEFUSCk7DQo+IMKgDQo+IA0K
PiANCj4gDQo+IC0jZGVmaW5lIENOTF9DU1JfUEFUSAkJCSJpOTE1L2NubF9kbWNfdmVyMV8wNy5i
aW4iDQo+ICsjZGVmaW5lIENOTF9DU1JfUEFUSAkJCURNQ19QQVRIKGNubCwgMSwgMDcpDQo+IMKg
I2RlZmluZSBDTkxfQ1NSX1ZFUlNJT05fUkVRVUlSRUQJQ1NSX1ZFUlNJT04oMSwgNykNCj4gwqAj
ZGVmaW5lIENOTF9DU1JfTUFYX0ZXX1NJWkUJCUdMS19DU1JfTUFYX0ZXX1NJWkUNCj4gwqBNT0RV
TEVfRklSTVdBUkUoQ05MX0NTUl9QQVRIKTsNCj4gwqANCj4gDQo+IA0KPiANCj4gLSNkZWZpbmUg
R0xLX0NTUl9QQVRICQkJImk5MTUvZ2xrX2RtY192ZXIxXzA0LmJpbiINCj4gKyNkZWZpbmUgR0xL
X0NTUl9QQVRICQkJRE1DX1BBVEgoZ2xrLCAxLCAwNCkNCj4gwqAjZGVmaW5lIEdMS19DU1JfVkVS
U0lPTl9SRVFVSVJFRAlDU1JfVkVSU0lPTigxLCA0KQ0KPiDCoCNkZWZpbmUgR0xLX0NTUl9NQVhf
RldfU0laRQkJMHg0MDAwDQo+IMKgTU9EVUxFX0ZJUk1XQVJFKEdMS19DU1JfUEFUSCk7DQo+IMKg
DQo+IA0KPiANCj4gDQo+IC0jZGVmaW5lIEtCTF9DU1JfUEFUSAkJCSJpOTE1L2tibF9kbWNfdmVy
MV8wNC5iaW4iDQo+ICsjZGVmaW5lIEtCTF9DU1JfUEFUSAkJCURNQ19QQVRIKGtibCwgMSwgMDQp
DQo+IMKgI2RlZmluZSBLQkxfQ1NSX1ZFUlNJT05fUkVRVUlSRUQJQ1NSX1ZFUlNJT04oMSwgNCkN
Cj4gwqAjZGVmaW5lIEtCTF9DU1JfTUFYX0ZXX1NJWkUJCUJYVF9DU1JfTUFYX0ZXX1NJWkUNCj4g
wqBNT0RVTEVfRklSTVdBUkUoS0JMX0NTUl9QQVRIKTsNCj4gwqANCj4gDQo+IA0KPiANCj4gLSNk
ZWZpbmUgU0tMX0NTUl9QQVRICQkJImk5MTUvc2tsX2RtY192ZXIxXzI3LmJpbiINCj4gKyNkZWZp
bmUgU0tMX0NTUl9QQVRICQkJRE1DX1BBVEgoc2tsLCAxLCAyNykNCj4gwqAjZGVmaW5lIFNLTF9D
U1JfVkVSU0lPTl9SRVFVSVJFRAlDU1JfVkVSU0lPTigxLCAyNykNCj4gwqAjZGVmaW5lIFNLTF9D
U1JfTUFYX0ZXX1NJWkUJCUJYVF9DU1JfTUFYX0ZXX1NJWkUNCj4gwqBNT0RVTEVfRklSTVdBUkUo
U0tMX0NTUl9QQVRIKTsNCj4gwqANCj4gDQo+IA0KPiANCj4gLSNkZWZpbmUgQlhUX0NTUl9QQVRI
CQkJImk5MTUvYnh0X2RtY192ZXIxXzA3LmJpbiINCj4gKyNkZWZpbmUgQlhUX0NTUl9QQVRICQkJ
RE1DX1BBVEgoYnh0LCAxLCAwNykNCj4gwqAjZGVmaW5lIEJYVF9DU1JfVkVSU0lPTl9SRVFVSVJF
RAlDU1JfVkVSU0lPTigxLCA3KQ0KPiDCoCNkZWZpbmUgQlhUX0NTUl9NQVhfRldfU0laRQkJMHgz
MDAwDQo+IMKgTU9EVUxFX0ZJUk1XQVJFKEJYVF9DU1JfUEFUSCk7DQo+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Nzci5oIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9jc3IuaA0KPiBpbmRleCAwM2M2NGY4YWY3YWIuLmZiZmRhYTNk
ZjA3ZSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9j
c3IuaA0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Nzci5oDQo+
IEBAIC04LDYgKzgsMTIgQEANCj4gwqANCj4gDQo+IA0KPiANCj4gwqBzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZTsNCj4gwqANCj4gDQo+IA0KPiANCj4gKyNkZWZpbmUgRE1DX1BBVEgocGxhdGZvcm0s
IG1ham9yLCBtaW5vcikgXA0KPiArCSJpOTE1LyIJCQkJIFwNCj4gKwlfX3N0cmluZ2lmeShwbGF0
Zm9ybSkgIl9kbWNfdmVyIiBcDQo+ICsJX19zdHJpbmdpZnkobWFqb3IpICJfIgkJIFwNCj4gKwlf
X3N0cmluZ2lmeShtaW5vcikgIi5iaW4iDQo+ICsNCj4gwqAjZGVmaW5lIENTUl9WRVJTSU9OKG1h
am9yLCBtaW5vcikJKChtYWpvcikgPDwgMTYgfCAobWlub3IpKQ0KPiDCoCNkZWZpbmUgQ1NSX1ZF
UlNJT05fTUFKT1IodmVyc2lvbikJKCh2ZXJzaW9uKSA+PiAxNikNCj4gwqAjZGVmaW5lIENTUl9W
RVJTSU9OX01JTk9SKHZlcnNpb24pCSgodmVyc2lvbikgJiAweGZmZmYpDQoNCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
