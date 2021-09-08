Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A082403FF0
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Sep 2021 21:41:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 734008921A;
	Wed,  8 Sep 2021 19:41:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 11DC36E2C8
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Sep 2021 19:41:55 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10101"; a="200782065"
X-IronPort-AV: E=Sophos;i="5.85,279,1624345200"; d="scan'208";a="200782065"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2021 12:41:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,279,1624345200"; d="scan'208";a="431458765"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by orsmga003.jf.intel.com with ESMTP; 08 Sep 2021 12:41:54 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Wed, 8 Sep 2021 12:41:54 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Wed, 8 Sep 2021 12:41:53 -0700
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2242.012;
 Wed, 8 Sep 2021 12:41:53 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "Manna, Animesh" <animesh.manna@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Mun, Gwan-gyeong" <gwan-gyeong.mun@intel.com>, "Nikula, Jani"
 <jani.nikula@intel.com>, "Kahola, Mika" <mika.kahola@intel.com>, "Navare,
 Manasi D" <manasi.d.navare@intel.com>
Thread-Topic: [Intel-gfx] [RFC 4/5] drm/i915/panelreplay: enable/disable panel
 replay
Thread-Index: AQHXpJVTpY9Om5b4mkmgp9peLiTXcaubANOA
Date: Wed, 8 Sep 2021 19:41:53 +0000
Message-ID: <2b7c1ce83612756a61b739ea2a0bfd1ebad8df06.camel@intel.com>
References: <20210908091544.13772-1-animesh.manna@intel.com>
 <20210908091544.13772-5-animesh.manna@intel.com>
In-Reply-To: <20210908091544.13772-5-animesh.manna@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.132]
Content-Type: text/plain; charset="utf-8"
Content-ID: <A54164876D4F374786291234053FF8C9@intel.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [RFC 4/5] drm/i915/panelreplay: enable/disable
 panel replay
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

T24gV2VkLCAyMDIxLTA5LTA4IGF0IDE0OjQ1ICswNTMwLCBBbmltZXNoIE1hbm5hIHdyb3RlOg0K
PiBUUkFOU19EUDJfQ1RMIHJlZ2lzdGVyIGlzIHByb2dyYW1tZWQgdG8gZW5hYmxlIHBhbmVsIHJl
cGxheSBmcm9tIHNvdXJjZQ0KPiBhbmQgc2luayBpcyBlbmFibGVkIHRocm91Z2ggcGFuZWwgcmVw
bGF5IGRwY2QgY29uZmlndXJhdGlvbiBhZGRyZXNzLg0KPiANCj4gU2lnbmVkLW9mZi1ieTogQW5p
bWVzaCBNYW5uYSA8YW5pbWVzaC5tYW5uYUBpbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYyB8IDMwICsrKysrKysrKysrKysrKysrKysr
LS0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCAgICAgICAgICB8ICAxICsN
Cj4gIGluY2x1ZGUvZHJtL2RybV9kcF9oZWxwZXIuaCAgICAgICAgICAgICAgfCAgMyArKysNCj4g
IDMgZmlsZXMgY2hhbmdlZCwgMjkgaW5zZXJ0aW9ucygrKSwgNSBkZWxldGlvbnMoLSkNCj4gDQo+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiBpbmRleCA2NjBlMTlj
MTBhYTguLjFkYzZiMzQwZDc0NSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9wc3IuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX3Bzci5jDQo+IEBAIC0zNjksOCArMzY5LDEyIEBAIHN0YXRpYyB2b2lkIGludGVsX3Bz
cl9lbmFibGVfc2luayhzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKQ0KPiAgCXN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IGRwX3RvX2k5MTUoaW50ZWxfZHApOw0KPiAgCXU4IGRw
Y2RfdmFsID0gRFBfUFNSX0VOQUJMRTsNCj4gIA0KPiAtCS8qIEVuYWJsZSBBTFBNIGF0IHNpbmsg
Zm9yIHBzcjIgKi8NCj4gLQlpZiAoaW50ZWxfZHAtPnBzci5wc3IyX2VuYWJsZWQpIHsNCj4gKwlp
ZiAoaW50ZWxfZHAtPnBzci5wcl9lbmFibGVkKSB7DQo+ICsJCWRybV9kcF9kcGNkX3dyaXRlYigm
aW50ZWxfZHAtPmF1eCwgUEFORUxfUkVQTEFZX0NPTkZJRywNCj4gKwkJCQkgICBQQU5FTF9SRVBM
QVlfRU5BQkxFKTsNCj4gKwkJcmV0dXJuOw0KDQpJZiB5b3UgYXJlIHN1cmUgbm8gb3RoZXIgZHBj
ZCB3cml0ZSBpcyBuZWVkZWQgYmV0dGVyIHNlcGFyYXRlIHRoaXMgaWYgKyByZXR1cm4gZnJvbSB0
aGUgb3RoZXINCg0KDQppZiAoaW50ZWxfZHAtPnBzci5wcl9lbmFibGVkKSB7DQoJLi4uDQoJcmV0
dXJuOw0KfQ0KDQppZiAoaW50ZWxfZHAtPnBzci5wc3IyX2VuYWJsZWQpIHsNCgkuLi4uDQp9IGVs
c2Ugew0KCS4uLg0KfQ0KDQouLi4uDQoNCj4gKwl9IGVsc2UgaWYgKGludGVsX2RwLT5wc3IucHNy
Ml9lbmFibGVkKSB7DQo+ICsJCS8qIEVuYWJsZSBBTFBNIGF0IHNpbmsgZm9yIHBzcjIgKi8NCj4g
IAkJZHJtX2RwX2RwY2Rfd3JpdGViKCZpbnRlbF9kcC0+YXV4LCBEUF9SRUNFSVZFUl9BTFBNX0NP
TkZJRywNCj4gIAkJCQkgICBEUF9BTFBNX0VOQUJMRSB8DQo+ICAJCQkJICAgRFBfQUxQTV9MT0NL
X0VSUk9SX0lSUV9IUERfRU5BQkxFKTsNCj4gQEAgLTQ5Nyw2ICs1MDEsMTcgQEAgc3RhdGljIHUz
MiBpbnRlbF9wc3IyX2dldF90cF90aW1lKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApDQo+ICAJ
cmV0dXJuIHZhbDsNCj4gIH0NCj4gIA0KPiArc3RhdGljIHZvaWQgZGcyX2FjdGl2YXRlX3BhbmVs
X3JlcGxheShzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKQ0KPiArew0KPiArCXN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IGRwX3RvX2k5MTUoaW50ZWxfZHApOw0KPiArDQo+ICsJ
aW50ZWxfZGVfd3JpdGUoZGV2X3ByaXYsIFBTUjJfTUFOX1RSS19DVEwoaW50ZWxfZHAtPnBzci50
cmFuc2NvZGVyKSwNCj4gKwkJICAgICAgIEFETFBfUFNSMl9NQU5fVFJLX0NUTF9TRl9QQVJUSUFM
X0ZSQU1FX1VQREFURSk7DQo+ICsNCj4gKwlpbnRlbF9kZV9ybXcoZGV2X3ByaXYsIFRSQU5TX0RQ
Ml9DVEwoaW50ZWxfZHAtPnBzci50cmFuc2NvZGVyKSwgMCwNCj4gKwkJICAgICBUUkFOU19EUDJf
UEFORUxfUkVQTEFZX0VOQUJMRSk7DQoNClBTUjIgaXMgbm90IHN1cHBvcnRlZCBpbiBERzIgYW5k
IEkgd291bGQgYmVsaWV2ZSB0aGF0IGlzIHRoZSBjYXNlIGZvciBwYW5lbCByZWxheS4NCg0KPiAr
fQ0KPiArDQo+ICBzdGF0aWMgdm9pZCBoc3dfYWN0aXZhdGVfcHNyMihzdHJ1Y3QgaW50ZWxfZHAg
KmludGVsX2RwKQ0KPiAgew0KPiAgCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9
IGRwX3RvX2k5MTUoaW50ZWxfZHApOw0KPiBAQCAtMTA3Nyw4ICsxMDkyLDEwIEBAIHN0YXRpYyB2
b2lkIGludGVsX3Bzcl9hY3RpdmF0ZShzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKQ0KPiAgCWRy
bV9XQVJOX09OKCZkZXZfcHJpdi0+ZHJtLCBpbnRlbF9kcC0+cHNyLmFjdGl2ZSk7DQo+ICAJbG9j
a2RlcF9hc3NlcnRfaGVsZCgmaW50ZWxfZHAtPnBzci5sb2NrKTsNCj4gIA0KPiAtCS8qIHBzcjEg
YW5kIHBzcjIgYXJlIG11dHVhbGx5IGV4Y2x1c2l2ZS4qLw0KPiAtCWlmIChpbnRlbF9kcC0+cHNy
LnBzcjJfZW5hYmxlZCkNCj4gKwkvKiBwc3IxLCBwc3IyIGFuZCBwYW5lbC1yZXBsYXkgYXJlIG11
dHVhbGx5IGV4Y2x1c2l2ZS4qLw0KPiArCWlmIChpbnRlbF9kcC0+cHNyLnByX2VuYWJsZWQpDQo+
ICsJCWRnMl9hY3RpdmF0ZV9wYW5lbF9yZXBsYXkoaW50ZWxfZHApOw0KPiArCWVsc2UgaWYgKGlu
dGVsX2RwLT5wc3IucHNyMl9lbmFibGVkKQ0KPiAgCQloc3dfYWN0aXZhdGVfcHNyMihpbnRlbF9k
cCk7DQo+ICAJZWxzZQ0KPiAgCQloc3dfYWN0aXZhdGVfcHNyMShpbnRlbF9kcCk7DQo+IEBAIC0x
MjY3LDcgKzEyODQsMTAgQEAgc3RhdGljIHZvaWQgaW50ZWxfcHNyX2V4aXQoc3RydWN0IGludGVs
X2RwICppbnRlbF9kcCkNCj4gIAkJcmV0dXJuOw0KPiAgCX0NCj4gIA0KPiAtCWlmIChpbnRlbF9k
cC0+cHNyLnBzcjJfZW5hYmxlZCkgew0KPiArCWlmIChpbnRlbF9kcC0+cHNyLnByX2VuYWJsZWQp
IHsNCj4gKwkJaW50ZWxfZGVfcm13KGRldl9wcml2LCBUUkFOU19EUDJfQ1RMKGludGVsX2RwLT5w
c3IudHJhbnNjb2RlciksDQo+ICsJCQkgICAgIFRSQU5TX0RQMl9QQU5FTF9SRVBMQVlfRU5BQkxF
LCAwKTsNCj4gKwl9IGVsc2UgaWYgKGludGVsX2RwLT5wc3IucHNyMl9lbmFibGVkKSB7DQo+ICAJ
CXRnbF9kaXNhbGxvd19kYzNjb19vbl9wc3IyX2V4aXQoaW50ZWxfZHApOw0KPiAgCQl2YWwgPSBp
bnRlbF9kZV9yZWFkKGRldl9wcml2LA0KPiAgCQkJCSAgICBFRFBfUFNSMl9DVEwoaW50ZWxfZHAt
PnBzci50cmFuc2NvZGVyKSk7DQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X3JlZy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaA0KPiBpbmRleCA1YmM4
ZjIyZmE5YTguLjllZmZiYzZlNTUzOSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9yZWcuaA0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oDQo+
IEBAIC00NzIwLDYgKzQ3MjAsNyBAQCBlbnVtIHsNCj4gICNkZWZpbmUgIFBTUjJfTUFOX1RSS19D
VExfU0ZfU0lOR0xFX0ZVTExfRlJBTUUJCQlSRUdfQklUKDMpDQo+ICAjZGVmaW5lICBQU1IyX01B
Tl9UUktfQ1RMX1NGX0NPTlRJTlVPU19GVUxMX0ZSQU1FCQlSRUdfQklUKDIpDQo+ICAjZGVmaW5l
ICBQU1IyX01BTl9UUktfQ1RMX1NGX1BBUlRJQUxfRlJBTUVfVVBEQVRFCQlSRUdfQklUKDEpDQo+
ICsjZGVmaW5lICBBRExQX1BTUjJfTUFOX1RSS19DVExfU0ZfUEFSVElBTF9GUkFNRV9VUERBVEUJ
CVJFR19CSVQoMzEpDQo+ICAjZGVmaW5lICBBRExQX1BTUjJfTUFOX1RSS19DVExfU1VfUkVHSU9O
X1NUQVJUX0FERFJfTUFTSwlSRUdfR0VOTUFTSygyOCwgMTYpDQo+ICAjZGVmaW5lICBBRExQX1BT
UjJfTUFOX1RSS19DVExfU1VfUkVHSU9OX1NUQVJUX0FERFIodmFsKQlSRUdfRklFTERfUFJFUChB
RExQX1BTUjJfTUFOX1RSS19DVExfU1VfUkVHSU9OX1NUQVJUX0FERFJfTUFTSywgdmFsKQ0KPiAg
I2RlZmluZSAgQURMUF9QU1IyX01BTl9UUktfQ1RMX1NVX1JFR0lPTl9FTkRfQUREUl9NQVNLCQlS
RUdfR0VOTUFTSygxMiwgMCkNCj4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvZHJtL2RybV9kcF9oZWxw
ZXIuaCBiL2luY2x1ZGUvZHJtL2RybV9kcF9oZWxwZXIuaA0KPiBpbmRleCAxYjRkY2VlM2IyODEu
LjYzZmFjZTRlNGY2ZiAxMDA2NDQNCj4gLS0tIGEvaW5jbHVkZS9kcm0vZHJtX2RwX2hlbHBlci5o
DQo+ICsrKyBiL2luY2x1ZGUvZHJtL2RybV9kcF9oZWxwZXIuaA0KPiBAQCAtNzA3LDYgKzcwNyw5
IEBAIHN0cnVjdCBkcm1fcGFuZWw7DQo+ICAjZGVmaW5lIERQX0JSQU5DSF9ERVZJQ0VfQ1RSTAkJ
ICAgIDB4MWExDQo+ICAjIGRlZmluZSBEUF9CUkFOQ0hfREVWSUNFX0lSUV9IUEQJICAgICgxIDw8
IDApDQo+ICANCj4gKyNkZWZpbmUgUEFORUxfUkVQTEFZX0NPTkZJRyAgICAgICAgICAgICAgICAg
MHgxYjANCj4gKyMgZGVmaW5lIFBBTkVMX1JFUExBWV9FTkFCTEUgICAgICAgICAgICAgICAgKDEg
PDwgMCkNCj4gKw0KPiAgI2RlZmluZSBEUF9QQVlMT0FEX0FMTE9DQVRFX1NFVAkJICAgIDB4MWMw
DQo+ICAjZGVmaW5lIERQX1BBWUxPQURfQUxMT0NBVEVfU1RBUlRfVElNRV9TTE9UIDB4MWMxDQo+
ICAjZGVmaW5lIERQX1BBWUxPQURfQUxMT0NBVEVfVElNRV9TTE9UX0NPVU5UIDB4MWMyDQoNCg==
