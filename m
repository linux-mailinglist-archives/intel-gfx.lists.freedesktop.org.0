Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B9B5D113B07
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Dec 2019 06:07:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 72E546F550;
	Thu,  5 Dec 2019 05:07:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E00476F550
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Dec 2019 05:07:21 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Dec 2019 21:07:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,279,1571727600"; d="scan'208";a="214069532"
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
 by orsmga003.jf.intel.com with ESMTP; 04 Dec 2019 21:07:20 -0800
Received: from FMSMSX109.amr.corp.intel.com (10.18.116.9) by
 FMSMSX103.amr.corp.intel.com (10.18.124.201) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 4 Dec 2019 21:07:19 -0800
Received: from bgsmsx104.gar.corp.intel.com (10.223.4.190) by
 fmsmsx109.amr.corp.intel.com (10.18.116.9) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 4 Dec 2019 21:07:19 -0800
Received: from BGSMSX108.gar.corp.intel.com ([169.254.8.190]) by
 BGSMSX104.gar.corp.intel.com ([169.254.5.250]) with mapi id 14.03.0439.000;
 Thu, 5 Dec 2019 10:37:15 +0530
From: "Kulkarni, Vandita" <vandita.kulkarni@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v3 04/13] drm/i915/dsc: move DP specific compute params
 to intel_dp.c
Thread-Index: AQHVpF94Lc3DgKG46EmwzIz/pCcL06erCsrA
Date: Thu, 5 Dec 2019 05:07:15 +0000
Message-ID: <57510F3E2013164E925CD03ED7512A3B809D9AB9@BGSMSX108.gar.corp.intel.com>
References: <cover.1574775655.git.jani.nikula@intel.com>
 <d383533108a65816bd139c48647dc950319a6265.1574775655.git.jani.nikula@intel.com>
In-Reply-To: <d383533108a65816bd139c48647dc950319a6265.1574775655.git.jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiZDg1NDMxZjItOTBlYy00MmU0LTlkMDktMTM0Zjg2YTRmOTJiIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjIuNS4xOCIsIlRydXN0ZWRMYWJlbEhhc2giOiJSMThxdHU2elA0YUhQRHJHR0dqNTlWS1VSdlNkZjRMbVRmaWNYK241Y1FxR2lkTTk4WkZDeFBwV0RYSXZFRTZ1In0=
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.223.10.10]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v3 04/13] drm/i915/dsc: move DP specific
 compute params to intel_dp.c
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBKYW5pIE5pa3VsYSA8amFuaS5u
aWt1bGFAaW50ZWwuY29tPg0KPiBTZW50OiBUdWVzZGF5LCBOb3ZlbWJlciAyNiwgMjAxOSA3OjEz
IFBNDQo+IFRvOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENjOiBOaWt1bGEs
IEphbmkgPGphbmkubmlrdWxhQGludGVsLmNvbT47IE5hdmFyZSwgTWFuYXNpIEQNCj4gPG1hbmFz
aS5kLm5hdmFyZUBpbnRlbC5jb20+OyBLdWxrYXJuaSwgVmFuZGl0YQ0KPiA8dmFuZGl0YS5rdWxr
YXJuaUBpbnRlbC5jb20+OyBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50
ZWwuY29tPg0KPiBTdWJqZWN0OiBbUEFUQ0ggdjMgMDQvMTNdIGRybS9pOTE1L2RzYzogbW92ZSBE
UCBzcGVjaWZpYyBjb21wdXRlIHBhcmFtcw0KPiB0byBpbnRlbF9kcC5jDQo+IA0KPiBUdXJucyBv
dXQgZnV0dXJlIERTSSBzcGVjaWZpYyBwYXJhbWV0ZXJzIGFyZW4ndCB3b3JrYWJsZSB3aXRoIHRo
ZSBhcHByb2FjaA0KPiBvZiBoYXZpbmcgdGhlIGVuY29kZXIgc3BlY2lmaWMgZnVuY3Rpb25zIGlu
IGludGVsX3Zkc2MuYy4gTWFrZQ0KPiBpbnRlbF9kc2NfY29tcHV0ZV9wYXJhbXMoKSBhIGhlbHBl
ciB0aGF0IGRvZXMgdGhlIGVuY29kZXIgaW5kZXBlbmRlbnQNCj4gcGFydHMsIGFuZCBoYXZlIGVu
Y29kZXIgY29kZSBjYWxsIGl0LiBNb3ZlIGludGVsX2RzY19kcF9jb21wdXRlX3BhcmFtcygpDQo+
IHRvIGludGVsX2RwLmMgYXMgaW50ZWxfZHBfZHNjX2NvbXB1dGVfcGFyYW1zKCkuDQo+IA0KPiBO
byBmdW5jdGlvbmFsIGNoYW5nZXMuDQo+IA0KPiB2MjogUmVuYW1lIHBpcGVfY29uZmlnIHRvIGNy
dGNfc3RhdGUgd2hpbGUgYXQgaXQuDQo+IA0KPiBDYzogTWFuYXNpIE5hdmFyZSA8bWFuYXNpLmQu
bmF2YXJlQGludGVsLmNvbT4NCj4gQ2M6IFZhbmRpdGEgS3Vsa2FybmkgPHZhbmRpdGEua3Vsa2Fy
bmlAaW50ZWwuY29tPg0KPiBDYzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4
LmludGVsLmNvbT4NCj4gU2lnbmVkLW9mZi1ieTogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGlu
dGVsLmNvbT4NCg0KTG9va3MgZ29vZCB0byBtZS4NClJldmlld2VkLWJ5OiBWYW5kaXRhIEt1bGth
cm5pIDx2YW5kaXRhLmt1bGthcm5pQGludGVsLmNvbT4NCg0KVGhhbmtzLA0KVmFuZGl0YQ0KPiAt
LS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYyAgIHwgNDcgKysr
KysrKysrKysrKysrKysrKysrLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF92ZHNjLmMgfCA0OCArLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQ0KPiAgMiBmaWxlcyBjaGFuZ2Vk
LCA0NyBpbnNlcnRpb25zKCspLCA0OCBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMNCj4gYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMNCj4gaW5kZXggMzEyMzk1OGUyMDgxLi41MDZjN2Qx
OTk2OGIgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZHAuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMNCj4g
QEAgLTIwNDYsNiArMjA0Niw1MSBAQCBzdGF0aWMgaW50IGludGVsX2RwX2RzY19jb21wdXRlX2Jw
cChzdHJ1Y3QNCj4gaW50ZWxfZHAgKmludGVsX2RwLCB1OCBkc2NfbWF4X2JwYykNCj4gIAlyZXR1
cm4gMDsNCj4gIH0NCj4gDQo+ICsjZGVmaW5lIERTQ19TVVBQT1JURURfVkVSU0lPTl9NSU4JCTEN
Cj4gKw0KPiArc3RhdGljIGludCBpbnRlbF9kcF9kc2NfY29tcHV0ZV9wYXJhbXMoc3RydWN0IGlu
dGVsX2VuY29kZXIgKmVuY29kZXIsDQo+ICsJCQkJICAgICAgIHN0cnVjdCBpbnRlbF9jcnRjX3N0
YXRlICpjcnRjX3N0YXRlKSB7DQo+ICsJc3RydWN0IGludGVsX2RwICppbnRlbF9kcCA9IGVuY190
b19pbnRlbF9kcCgmZW5jb2Rlci0+YmFzZSk7DQo+ICsJc3RydWN0IGRybV9kc2NfY29uZmlnICp2
ZHNjX2NmZyA9ICZjcnRjX3N0YXRlLT5kc2MuY29uZmlnOw0KPiArCXU4IGxpbmVfYnVmX2RlcHRo
Ow0KPiArCWludCByZXQ7DQo+ICsNCj4gKwlyZXQgPSBpbnRlbF9kc2NfY29tcHV0ZV9wYXJhbXMo
ZW5jb2RlciwgY3J0Y19zdGF0ZSk7DQo+ICsJaWYgKHJldCkNCj4gKwkJcmV0dXJuIHJldDsNCj4g
Kw0KPiArCXZkc2NfY2ZnLT5kc2NfdmVyc2lvbl9tYWpvciA9DQo+ICsJCShpbnRlbF9kcC0+ZHNj
X2RwY2RbRFBfRFNDX1JFViAtIERQX0RTQ19TVVBQT1JUXSAmDQo+ICsJCSBEUF9EU0NfTUFKT1Jf
TUFTSykgPj4gRFBfRFNDX01BSk9SX1NISUZUOw0KPiArCXZkc2NfY2ZnLT5kc2NfdmVyc2lvbl9t
aW5vciA9DQo+ICsJCW1pbihEU0NfU1VQUE9SVEVEX1ZFUlNJT05fTUlOLA0KPiArCQkgICAgKGlu
dGVsX2RwLT5kc2NfZHBjZFtEUF9EU0NfUkVWIC0gRFBfRFNDX1NVUFBPUlRdICYNCj4gKwkJICAg
ICBEUF9EU0NfTUlOT1JfTUFTSykgPj4gRFBfRFNDX01JTk9SX1NISUZUKTsNCj4gKw0KPiArCXZk
c2NfY2ZnLT5jb252ZXJ0X3JnYiA9IGludGVsX2RwLQ0KPiA+ZHNjX2RwY2RbRFBfRFNDX0RFQ19D
T0xPUl9GT1JNQVRfQ0FQIC0gRFBfRFNDX1NVUFBPUlRdICYNCj4gKwkJRFBfRFNDX1JHQjsNCj4g
Kw0KPiArCWxpbmVfYnVmX2RlcHRoID0gZHJtX2RwX2RzY19zaW5rX2xpbmVfYnVmX2RlcHRoKGlu
dGVsX2RwLQ0KPiA+ZHNjX2RwY2QpOw0KPiArCWlmICghbGluZV9idWZfZGVwdGgpIHsNCj4gKwkJ
RFJNX0RFQlVHX0tNUygiRFNDIFNpbmsgTGluZSBCdWZmZXIgRGVwdGggaW52YWxpZFxuIik7DQo+
ICsJCXJldHVybiAtRUlOVkFMOw0KPiArCX0NCj4gKw0KPiArCWlmICh2ZHNjX2NmZy0+ZHNjX3Zl
cnNpb25fbWlub3IgPT0gMikNCj4gKwkJdmRzY19jZmctPmxpbmVfYnVmX2RlcHRoID0gKGxpbmVf
YnVmX2RlcHRoID09DQo+IERTQ18xXzJfTUFYX0xJTkVCVUZfREVQVEhfQklUUykgPw0KPiArCQkJ
RFNDXzFfMl9NQVhfTElORUJVRl9ERVBUSF9WQUwgOg0KPiBsaW5lX2J1Zl9kZXB0aDsNCj4gKwll
bHNlDQo+ICsJCXZkc2NfY2ZnLT5saW5lX2J1Zl9kZXB0aCA9IChsaW5lX2J1Zl9kZXB0aCA+DQo+
IERTQ18xXzFfTUFYX0xJTkVCVUZfREVQVEhfQklUUykgPw0KPiArCQkJRFNDXzFfMV9NQVhfTElO
RUJVRl9ERVBUSF9CSVRTIDoNCj4gbGluZV9idWZfZGVwdGg7DQo+ICsNCj4gKwl2ZHNjX2NmZy0+
YmxvY2tfcHJlZF9lbmFibGUgPQ0KPiArCQlpbnRlbF9kcC0+ZHNjX2RwY2RbRFBfRFNDX0JMS19Q
UkVESUNUSU9OX1NVUFBPUlQgLQ0KPiBEUF9EU0NfU1VQUE9SVF0gJg0KPiArCQlEUF9EU0NfQkxL
X1BSRURJQ1RJT05fSVNfU1VQUE9SVEVEOw0KPiArDQo+ICsJcmV0dXJuIGRybV9kc2NfY29tcHV0
ZV9yY19wYXJhbWV0ZXJzKHZkc2NfY2ZnKTsNCj4gK30NCj4gKw0KPiAgc3RhdGljIGludCBpbnRl
bF9kcF9kc2NfY29tcHV0ZV9jb25maWcoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwNCj4gIAkJ
CQkgICAgICAgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKnBpcGVfY29uZmlnLA0KPiAgCQkJCSAg
ICAgICBzdHJ1Y3QgZHJtX2Nvbm5lY3Rvcl9zdGF0ZSAqY29ubl9zdGF0ZSwNCj4gQEAgLTIxMzIs
NyArMjE3Nyw3IEBAIHN0YXRpYyBpbnQgaW50ZWxfZHBfZHNjX2NvbXB1dGVfY29uZmlnKHN0cnVj
dA0KPiBpbnRlbF9kcCAqaW50ZWxfZHAsDQo+ICAJCX0NCj4gIAl9DQo+IA0KPiAtCXJldCA9IGlu
dGVsX2RzY19jb21wdXRlX3BhcmFtcygmZGlnX3BvcnQtPmJhc2UsIHBpcGVfY29uZmlnKTsNCj4g
KwlyZXQgPSBpbnRlbF9kcF9kc2NfY29tcHV0ZV9wYXJhbXMoJmRpZ19wb3J0LT5iYXNlLCBwaXBl
X2NvbmZpZyk7DQo+ICAJaWYgKHJldCA8IDApIHsNCj4gIAkJRFJNX0RFQlVHX0tNUygiQ2Fubm90
IGNvbXB1dGUgdmFsaWQgRFNDIHBhcmFtZXRlcnMNCj4gZm9yIElucHV0IEJwcCA9ICVkICINCj4g
IAkJCSAgICAgICJDb21wcmVzc2VkIEJQUCA9ICVkXG4iLA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92ZHNjLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX3Zkc2MuYw0KPiBpbmRleCBiMjNiYThkMTA4ZGIuLjgzNGQ2NjVh
NDdkMiAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92
ZHNjLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92ZHNjLmMN
Cj4gQEAgLTMwLDggKzMwLDYgQEAgZW51bSBDT0xVTU5fSU5ERVhfQlBDIHsNCj4gIAlNQVhfQ09M
VU1OX0lOREVYDQo+ICB9Ow0KPiANCj4gLSNkZWZpbmUgRFNDX1NVUFBPUlRFRF9WRVJTSU9OX01J
TgkJMQ0KPiAtDQo+ICAvKiBGcm9tIERTQ192MS4xMSBzcGVjLCByY19wYXJhbWV0ZXJfU2V0IHN5
bnRheCBlbGVtZW50IHR5cGljYWxseQ0KPiBjb25zdGFudCAqLyAgc3RhdGljIGNvbnN0IHUxNiBy
Y19idWZfdGhyZXNoW10gPSB7DQo+ICAJODk2LCAxNzkyLCAyNjg4LCAzNTg0LCA0NDgwLCA1Mzc2
LCA2MjcyLCA2NzIwLCA3MTY4LCA3NjE2LCBAQCAtDQo+IDMzNSw0NSArMzMzLDYgQEAgc3RhdGlj
IGNvbnN0IHN0cnVjdCByY19wYXJhbWV0ZXJzICpnZXRfcmNfcGFyYW1zKHUxNg0KPiBjb21wcmVz
c2VkX2JwcCwNCj4gIAlyZXR1cm4gJnJjX3BhcmFtZXRlcnNbcm93X2luZGV4XVtjb2x1bW5faW5k
ZXhdOw0KPiAgfQ0KPiANCj4gLS8qIFZhbHVlcyBmaWxsZWQgZnJvbSBEU0MgU2luayBEUENEICov
DQo+IC1zdGF0aWMgaW50IGludGVsX2RzY19kcF9jb21wdXRlX3BhcmFtcyhzdHJ1Y3QgaW50ZWxf
ZW5jb2RlciAqZW5jb2RlciwNCj4gLQkJCQkgICAgICAgc3RydWN0IGludGVsX2NydGNfc3RhdGUg
KnBpcGVfY29uZmlnKQ0KPiAtew0KPiAtCXN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAgPSBlbmNf
dG9faW50ZWxfZHAoJmVuY29kZXItPmJhc2UpOw0KPiAtCXN0cnVjdCBkcm1fZHNjX2NvbmZpZyAq
dmRzY19jZmcgPSAmcGlwZV9jb25maWctPmRzYy5jb25maWc7DQo+IC0JdTggbGluZV9idWZfZGVw
dGg7DQo+IC0NCj4gLQl2ZHNjX2NmZy0+ZHNjX3ZlcnNpb25fbWFqb3IgPQ0KPiAtCQkoaW50ZWxf
ZHAtPmRzY19kcGNkW0RQX0RTQ19SRVYgLSBEUF9EU0NfU1VQUE9SVF0gJg0KPiAtCQkgRFBfRFND
X01BSk9SX01BU0spID4+IERQX0RTQ19NQUpPUl9TSElGVDsNCj4gLQl2ZHNjX2NmZy0+ZHNjX3Zl
cnNpb25fbWlub3IgPQ0KPiAtCQltaW4oRFNDX1NVUFBPUlRFRF9WRVJTSU9OX01JTiwNCj4gLQkJ
ICAgIChpbnRlbF9kcC0+ZHNjX2RwY2RbRFBfRFNDX1JFViAtIERQX0RTQ19TVVBQT1JUXSAmDQo+
IC0JCSAgICAgRFBfRFNDX01JTk9SX01BU0spID4+IERQX0RTQ19NSU5PUl9TSElGVCk7DQo+IC0N
Cj4gLQl2ZHNjX2NmZy0+Y29udmVydF9yZ2IgPSBpbnRlbF9kcC0NCj4gPmRzY19kcGNkW0RQX0RT
Q19ERUNfQ09MT1JfRk9STUFUX0NBUCAtIERQX0RTQ19TVVBQT1JUXSAmDQo+IC0JCURQX0RTQ19S
R0I7DQo+IC0NCj4gLQlsaW5lX2J1Zl9kZXB0aCA9IGRybV9kcF9kc2Nfc2lua19saW5lX2J1Zl9k
ZXB0aChpbnRlbF9kcC0NCj4gPmRzY19kcGNkKTsNCj4gLQlpZiAoIWxpbmVfYnVmX2RlcHRoKSB7
DQo+IC0JCURSTV9ERUJVR19LTVMoIkRTQyBTaW5rIExpbmUgQnVmZmVyIERlcHRoIGludmFsaWRc
biIpOw0KPiAtCQlyZXR1cm4gLUVJTlZBTDsNCj4gLQl9DQo+IC0NCj4gLQlpZiAodmRzY19jZmct
PmRzY192ZXJzaW9uX21pbm9yID09IDIpDQo+IC0JCXZkc2NfY2ZnLT5saW5lX2J1Zl9kZXB0aCA9
IChsaW5lX2J1Zl9kZXB0aCA9PQ0KPiBEU0NfMV8yX01BWF9MSU5FQlVGX0RFUFRIX0JJVFMpID8N
Cj4gLQkJCURTQ18xXzJfTUFYX0xJTkVCVUZfREVQVEhfVkFMIDoNCj4gbGluZV9idWZfZGVwdGg7
DQo+IC0JZWxzZQ0KPiAtCQl2ZHNjX2NmZy0+bGluZV9idWZfZGVwdGggPSAobGluZV9idWZfZGVw
dGggPg0KPiBEU0NfMV8xX01BWF9MSU5FQlVGX0RFUFRIX0JJVFMpID8NCj4gLQkJCURTQ18xXzFf
TUFYX0xJTkVCVUZfREVQVEhfQklUUyA6DQo+IGxpbmVfYnVmX2RlcHRoOw0KPiAtDQo+IC0JdmRz
Y19jZmctPmJsb2NrX3ByZWRfZW5hYmxlID0NCj4gLQkJCWludGVsX2RwLQ0KPiA+ZHNjX2RwY2Rb
RFBfRFNDX0JMS19QUkVESUNUSU9OX1NVUFBPUlQgLSBEUF9EU0NfU1VQUE9SVF0gJg0KPiAtCQlE
UF9EU0NfQkxLX1BSRURJQ1RJT05fSVNfU1VQUE9SVEVEOw0KPiAtDQo+IC0JcmV0dXJuIDA7DQo+
IC19DQo+IC0NCj4gIGludCBpbnRlbF9kc2NfY29tcHV0ZV9wYXJhbXMoc3RydWN0IGludGVsX2Vu
Y29kZXIgKmVuY29kZXIsDQo+ICAJCQkgICAgIHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpwaXBl
X2NvbmZpZykgIHsgQEAgLTM4MSw3DQo+ICszNDAsNiBAQCBpbnQgaW50ZWxfZHNjX2NvbXB1dGVf
cGFyYW1zKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyLA0KPiAgCXUxNiBjb21wcmVzc2Vk
X2JwcCA9IHBpcGVfY29uZmlnLT5kc2MuY29tcHJlc3NlZF9icHA7DQo+ICAJY29uc3Qgc3RydWN0
IHJjX3BhcmFtZXRlcnMgKnJjX3BhcmFtczsNCj4gIAl1OCBpID0gMDsNCj4gLQlpbnQgcmV0Ow0K
PiANCj4gIAl2ZHNjX2NmZy0+cGljX3dpZHRoID0gcGlwZV9jb25maWctDQo+ID5ody5hZGp1c3Rl
ZF9tb2RlLmNydGNfaGRpc3BsYXk7DQo+ICAJdmRzY19jZmctPnBpY19oZWlnaHQgPSBwaXBlX2Nv
bmZpZy0NCj4gPmh3LmFkanVzdGVkX21vZGUuY3J0Y192ZGlzcGxheTsNCj4gQEAgLTQ3MCwxMSAr
NDI4LDcgQEAgaW50IGludGVsX2RzY19jb21wdXRlX3BhcmFtcyhzdHJ1Y3QgaW50ZWxfZW5jb2Rl
cg0KPiAqZW5jb2RlciwNCj4gIAl2ZHNjX2NmZy0+aW5pdGlhbF9zY2FsZV92YWx1ZSA9ICh2ZHNj
X2NmZy0+cmNfbW9kZWxfc2l6ZSA8PCAzKSAvDQo+ICAJCSh2ZHNjX2NmZy0+cmNfbW9kZWxfc2l6
ZSAtIHZkc2NfY2ZnLT5pbml0aWFsX29mZnNldCk7DQo+IA0KPiAtCXJldCA9IGludGVsX2RzY19k
cF9jb21wdXRlX3BhcmFtcyhlbmNvZGVyLCBwaXBlX2NvbmZpZyk7DQo+IC0JaWYgKHJldCkNCj4g
LQkJcmV0dXJuIHJldDsNCj4gLQ0KPiAtCXJldHVybiBkcm1fZHNjX2NvbXB1dGVfcmNfcGFyYW1l
dGVycyh2ZHNjX2NmZyk7DQo+ICsJcmV0dXJuIDA7DQo+ICB9DQo+IA0KPiAgZW51bSBpbnRlbF9k
aXNwbGF5X3Bvd2VyX2RvbWFpbg0KPiAtLQ0KPiAyLjIwLjENCg0KX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
