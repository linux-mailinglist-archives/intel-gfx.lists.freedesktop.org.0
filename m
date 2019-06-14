Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 074CF45706
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2019 10:14:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9C01E894B7;
	Fri, 14 Jun 2019 08:14:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2B2E5894B7;
 Fri, 14 Jun 2019 08:14:10 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Jun 2019 01:14:09 -0700
X-ExtLoop1: 1
Received: from irsmsx106.ger.corp.intel.com ([163.33.3.31])
 by fmsmga006.fm.intel.com with ESMTP; 14 Jun 2019 01:14:09 -0700
Received: from irsmsx156.ger.corp.intel.com (10.108.20.68) by
 IRSMSX106.ger.corp.intel.com (163.33.3.31) with Microsoft SMTP Server (TLS)
 id 14.3.408.0; Fri, 14 Jun 2019 09:12:49 +0100
Received: from irsmsx104.ger.corp.intel.com ([169.254.5.227]) by
 IRSMSX156.ger.corp.intel.com ([169.254.3.125]) with mapi id 14.03.0415.000;
 Fri, 14 Jun 2019 09:12:49 +0100
From: "Ser, Simon" <simon.ser@intel.com>
To: "guillaume.tucker@collabora.com" <guillaume.tucker@collabora.com>,
 "Hiler, Arkadiusz" <arkadiusz.hiler@intel.com>, "Latvala, Petri"
 <petri.latvala@intel.com>
Thread-Topic: [igt-dev] [PATCH i-g-t v2 4/4] tests/sw_sync: use atomic_*
 instead of __sync_*
Thread-Index: AQHVIe+BfJkCzSeLqkepZ673tmaMO6aavVmA
Date: Fri, 14 Jun 2019 08:12:49 +0000
Message-ID: <f8cfd4fd52c7176643968e2e23295ef0224e887a.camel@intel.com>
References: <cover.1560433744.git.guillaume.tucker@collabora.com>
 <737b847e6518b74fe57de3e309b5a4ede719ea72.1560433744.git.guillaume.tucker@collabora.com>
In-Reply-To: <737b847e6518b74fe57de3e309b5a4ede719ea72.1560433744.git.guillaume.tucker@collabora.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.237.72.181]
Content-ID: <9172A929D8E16B4BA95D466FBB27E348@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t v2 4/4] tests/sw_sync: use
 atomic_* instead of __sync_*
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
Cc: "igt-dev@lists.freedesktop.org" <igt-dev@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCAyMDE5LTA2LTEzIGF0IDE0OjUzICswMTAwLCBHdWlsbGF1bWUgVHVja2VyIHdyb3Rl
Og0KPiBSZXBsYWNlIGNhbGxzIHRvIHRoZSBvbGRlciBfX3N5bmNfKiBmdW5jdGlvbnMgd2l0aCB0
aGUgbmV3IGF0b21pY18qDQo+IHN0YW5kYXJkIG9uZXMgdG8gYmUgY29uc2lzdGVudCB3aXRoIG90
aGVyIHRlc3RzIGFuZCBpbXByb3ZlDQo+IHBvcnRhYmlsaXR5IGFjcm9zcyBDUFUgYXJjaGl0ZWN0
dXJlcy4gIEFkZCBkZXBlbmRlbmN5IG9mIHN3X3N5bmMgb24NCj4gbGliYXRvbWljLg0KPiANCj4g
U2lnbmVkLW9mZi1ieTogR3VpbGxhdW1lIFR1Y2tlciA8Z3VpbGxhdW1lLnR1Y2tlckBjb2xsYWJv
cmEuY29tPg0KDQpSZXZpZXdlZC1ieTogU2ltb24gU2VyIDxzaW1vbi5zZXJAaW50ZWwuY29tPg0K
DQpUaGFua3MhDQoNCj4gLS0tDQo+ICB0ZXN0cy9NYWtlZmlsZS5hbSB8ICAxICsNCj4gIHRlc3Rz
L21lc29uLmJ1aWxkIHwgIDggKysrKysrKy0NCj4gIHRlc3RzL3N3X3N5bmMuYyAgIHwgMTIgKysr
KysrLS0tLS0tDQo+ICAzIGZpbGVzIGNoYW5nZWQsIDE0IGluc2VydGlvbnMoKyksIDcgZGVsZXRp
b25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvdGVzdHMvTWFrZWZpbGUuYW0gYi90ZXN0cy9NYWtl
ZmlsZS5hbQ0KPiBpbmRleCBiYmQzODZjOWMyZGIuLjdkNzFkZjhjN2EyZSAxMDA2NDQNCj4gLS0t
IGEvdGVzdHMvTWFrZWZpbGUuYW0NCj4gKysrIGIvdGVzdHMvTWFrZWZpbGUuYW0NCj4gQEAgLTEy
Miw2ICsxMjIsNyBAQCBwcmltZV9zZWxmX2ltcG9ydF9MREFERCA9ICQoTERBREQpIC1scHRocmVh
ZA0KPiAgZ2VtX3VzZXJwdHJfYmxpdHNfQ0ZMQUdTID0gJChBTV9DRkxBR1MpICQoVEhSRUFEX0NG
TEFHUykNCj4gIGdlbV91c2VycHRyX2JsaXRzX0xEQUREID0gJChMREFERCkgLWxwdGhyZWFkDQo+
ICBwZXJmX3BtdV9MREFERCA9ICQoTERBREQpICQodG9wX2J1aWxkZGlyKS9saWIvbGliaWd0X3Bl
cmYubGENCj4gK3N3X3N5bmNfTERBREQgPSAkKExEQUREKSAtbGF0b21pYw0KPiAgDQo+ICBrbXNf
ZmxpcF9MREFERCA9ICQoTERBREQpIC1scHRocmVhZA0KPiAgDQo+IGRpZmYgLS1naXQgYS90ZXN0
cy9tZXNvbi5idWlsZCBiL3Rlc3RzL21lc29uLmJ1aWxkDQo+IGluZGV4IGZmZDQzMmQzODE5My4u
MzRhNzQwMjVhNTM3IDEwMDY0NA0KPiAtLS0gYS90ZXN0cy9tZXNvbi5idWlsZA0KPiArKysgYi90
ZXN0cy9tZXNvbi5idWlsZA0KPiBAQCAtNzYsNyArNzYsNiBAQCB0ZXN0X3Byb2dzID0gWw0KPiAg
CSdwcmltZV9zZWxmX2ltcG9ydCcsDQo+ICAJJ3ByaW1lX3VkbCcsDQo+ICAJJ3ByaW1lX3ZnZW0n
LA0KPiAtCSdzd19zeW5jJywNCj4gIAknc3luY29ial9iYXNpYycsDQo+ICAJJ3N5bmNvYmpfd2Fp
dCcsDQo+ICAJJ3RlbXBsYXRlJywNCj4gQEAgLTMyOSw2ICszMjgsMTMgQEAgZXhlY3V0YWJsZSgn
dGVzdGRpc3BsYXknLCBbJ3Rlc3RkaXNwbGF5LmMnLA0KPiAndGVzdGRpc3BsYXlfaG90cGx1Zy5j
J10sDQo+ICAJICAgaW5zdGFsbCA6IHRydWUpDQo+ICB0ZXN0X2xpc3QgKz0gJ3Rlc3RkaXNwbGF5
Jw0KPiAgDQo+ICt0ZXN0X2V4ZWN1dGFibGVzICs9IGV4ZWN1dGFibGUoJ3N3X3N5bmMnLCAnc3df
c3luYy5jJywNCj4gKwkgICBkZXBlbmRlbmNpZXMgOiB0ZXN0X2RlcHMgKyBbIGxpYmF0b21pYyBd
LA0KPiArCSAgIGluc3RhbGxfZGlyIDogbGliZXhlY2RpciwNCj4gKwkgICBpbnN0YWxsX3JwYXRo
IDogbGliZXhlY2Rpcl9ycGF0aGRpciwNCj4gKwkgICBpbnN0YWxsIDogdHJ1ZSkNCj4gK3Rlc3Rf
bGlzdCArPSAnc3dfc3luYycNCj4gKw0KPiAgc3ViZGlyKCdhbWRncHUnKQ0KPiAgDQo+ICBnZW5f
dGVzdGxpc3QgPSBmaW5kX3Byb2dyYW0oJ2dlbmVyYXRlX3Rlc3RsaXN0LnNoJykNCj4gZGlmZiAt
LWdpdCBhL3Rlc3RzL3N3X3N5bmMuYyBiL3Rlc3RzL3N3X3N5bmMuYw0KPiBpbmRleCA5NTBiOGI2
MTQ3NTkuLjYyZDFkMTdjYWI0NSAxMDA2NDQNCj4gLS0tIGEvdGVzdHMvc3dfc3luYy5jDQo+ICsr
KyBiL3Rlc3RzL3N3X3N5bmMuYw0KPiBAQCAtMjYsNiArMjYsNyBAQA0KPiAgDQo+ICAjaW5jbHVk
ZSA8cHRocmVhZC5oPg0KPiAgI2luY2x1ZGUgPHNlbWFwaG9yZS5oPg0KPiArI2luY2x1ZGUgPHN0
ZGF0b21pYy5oPg0KPiAgI2luY2x1ZGUgPHN0ZGludC5oPg0KPiAgI2luY2x1ZGUgPHN5cy9zb2Nr
ZXQuaD4NCj4gICNpbmNsdWRlIDxzeXMvdHlwZXMuaD4NCj4gQEAgLTQzLDcgKzQ0LDcgQEAgSUdU
X1RFU1RfREVTQ1JJUFRJT04oIlRlc3QgU1cgU3luYyBGcmFtZXdvcmsiKTsNCj4gIHR5cGVkZWYg
c3RydWN0IHsNCj4gIAlpbnQgdGltZWxpbmU7DQo+ICAJdWludDMyX3QgdGhyZWFkX2lkOw0KPiAt
CXVpbnQzMl90ICpjb3VudGVyOw0KPiArCV9BdG9taWModWludDMyX3QpICpjb3VudGVyOw0KPiAg
CXNlbV90ICpzZW07DQo+ICB9IGRhdGFfdDsNCj4gIA0KPiBAQCAtNDg5LDcgKzQ5MCw3IEBAIHN0
YXRpYyB2b2lkIHRlc3Rfc3luY19tdWx0aV9jb25zdW1lcih2b2lkKQ0KPiAgCXB0aHJlYWRfdCB0
aHJlYWRfYXJyW01VTFRJX0NPTlNVTUVSX1RIUkVBRFNdOw0KPiAgCXNlbV90IHNlbTsNCj4gIAlp
bnQgdGltZWxpbmU7DQo+IC0JdWludDMyX3QgY291bnRlciA9IDA7DQo+ICsJX0F0b21pYyh1aW50
MzJfdCkgY291bnRlciA9IDA7DQo+ICAJdWludHB0cl90IHRocmVhZF9yZXQgPSAwOw0KPiAgCWRh
dGFfdCBkYXRhOw0KPiAgCWludCBpLCByZXQ7DQo+IEBAIC01MTcsNyArNTE4LDcgQEAgc3RhdGlj
IHZvaWQgdGVzdF9zeW5jX211bHRpX2NvbnN1bWVyKHZvaWQpDQo+ICAJew0KPiAgCQlzZW1fd2Fp
dCgmc2VtKTsNCj4gIA0KPiAtCQlfX3N5bmNfZmV0Y2hfYW5kX2FkZCgmY291bnRlciwgMSk7DQo+
ICsJCWF0b21pY19mZXRjaF9hZGQoJmNvdW50ZXIsIDEpOw0KPiAgCQlzd19zeW5jX3RpbWVsaW5l
X2luYyh0aW1lbGluZSwgMSk7DQo+ICAJfQ0KPiAgDQo+IEBAIC01NTQsNyArNTU1LDcgQEAgc3Rh
dGljIHZvaWQgKg0KPiB0ZXN0X3N5bmNfbXVsdGlfY29uc3VtZXJfcHJvZHVjZXJfdGhyZWFkKHZv
aWQgKmFyZykNCj4gIAkJaWYgKHN5bmNfZmVuY2Vfd2FpdChmZW5jZSwgMTAwMCkgPCAwKQ0KPiAg
CQkJcmV0dXJuICh2b2lkICopIDE7DQo+ICANCj4gLQkJaWYgKF9fc3luY19mZXRjaF9hbmRfYWRk
KGRhdGEtPmNvdW50ZXIsIDEpICE9DQo+IG5leHRfcG9pbnQpDQo+ICsJCWlmIChhdG9taWNfZmV0
Y2hfYWRkKGRhdGEtPmNvdW50ZXIsIDEpICE9IG5leHRfcG9pbnQpDQo+ICAJCQlyZXR1cm4gKHZv
aWQgKikgMTsNCj4gIA0KPiAgCQkvKiBLaWNrIG9mZiB0aGUgbmV4dCB0aHJlYWQuICovDQo+IEBA
IC01NzAsNyArNTcxLDcgQEAgc3RhdGljIHZvaWQNCj4gdGVzdF9zeW5jX211bHRpX2NvbnN1bWVy
X3Byb2R1Y2VyKHZvaWQpDQo+ICAJZGF0YV90IGRhdGFfYXJyW01VTFRJX0NPTlNVTUVSX1BST0RV
Q0VSX1RIUkVBRFNdOw0KPiAgCXB0aHJlYWRfdCB0aHJlYWRfYXJyW01VTFRJX0NPTlNVTUVSX1BS
T0RVQ0VSX1RIUkVBRFNdOw0KPiAgCWludCB0aW1lbGluZTsNCj4gLQl1aW50MzJfdCBjb3VudGVy
ID0gMDsNCj4gKwlfQXRvbWljKHVpbnQzMl90KSBjb3VudGVyID0gMDsNCj4gIAl1aW50cHRyX3Qg
dGhyZWFkX3JldCA9IDA7DQo+ICAJZGF0YV90IGRhdGE7DQo+ICAJaW50IGksIHJldDsNCj4gQEAg
LTkwMCw0ICs5MDEsMyBAQCBpZ3RfbWFpbg0KPiAgCWlndF9zdWJ0ZXN0KCJzeW5jX3JhbmRvbV9t
ZXJnZSIpDQo+ICAJCXRlc3Rfc3luY19yYW5kb21fbWVyZ2UoKTsNCj4gIH0NCj4gLQ0KX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
