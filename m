Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D00E22194CB
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Jul 2020 02:01:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 43A7A6E97F;
	Thu,  9 Jul 2020 00:01:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3AE506E97F
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Jul 2020 00:01:40 +0000 (UTC)
IronPort-SDR: jkJvYSFH/6ZXAUMgOUGwDG4UTy6QIe5Ed7Xt5jU940wUPIxPwydCqWt369g7VrI47vojhiLL6D
 mczniBPD4h0g==
X-IronPort-AV: E=McAfee;i="6000,8403,9676"; a="127503539"
X-IronPort-AV: E=Sophos;i="5.75,329,1589266800"; d="scan'208";a="127503539"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2020 17:01:39 -0700
IronPort-SDR: ETcglei98L9Xs5if9GFM7V5HmrLkRgeJN/Aja46ax3oUqGIAcYeqUSmS+bSEwPmbC6BWmqlMi4
 XDh0aXpnv2mQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,329,1589266800"; d="scan'208";a="268602320"
Received: from fmsmsx106.amr.corp.intel.com ([10.18.124.204])
 by fmsmga008.fm.intel.com with ESMTP; 08 Jul 2020 17:01:35 -0700
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.171]) by
 FMSMSX106.amr.corp.intel.com ([169.254.5.119]) with mapi id 14.03.0439.000;
 Wed, 8 Jul 2020 17:01:35 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 1/4] drm/i915: Move all FBC w/as to
 .init_clock_gating()
Thread-Index: AQHWVSl0J9e9tfJAT0+kWHiMMZ2eNaj+070A
Date: Thu, 9 Jul 2020 00:01:34 +0000
Message-ID: <3ef77c57ace5a612f5bc4e76fc1322e0f6fec8cf.camel@intel.com>
References: <20200708131223.9519-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20200708131223.9519-1-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.14.51]
Content-ID: <6155370B66E07F4B810D948A55B30754@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/4] drm/i915: Move all FBC w/as to
 .init_clock_gating()
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

T24gV2VkLCAyMDIwLTA3LTA4IGF0IDE2OjEyICswMzAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOg0K
PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiANCj4gU29tZSBwbGF0Zm9ybXMgYXBwbHkgdGhlIEZCQyB3L2FzIGluIC5pbml0X2Nsb2NrX2dh
dGluZygpLCBzb21lDQo+IGluIGZiY19hY3RpdmF0ZSgpLiBNb3ZlIHRoZW0gYWxsIHRvIC5pbml0
X2Nsb2NrX2dhdGluZygpIGZvcg0KPiBjb25zaXN0ZW50Y2UuIEFsc28gc2FmZXIgc2luY2Ugd2Ug
ZG9uJ3QgaGF2ZSB0byB3b3JyeSBhYm91dCB0aGUNCj4gUk1XcyBjbGFzaGluZyB3aXRoIGFueSBv
dGhlciBydW50aW1lIHVzZSBvZiB0aGUgc2FtZSByZWdpc3RlcnMuDQo+IA0KDQpSZXZpZXdlZC1i
eTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+DQoNCj4gU2ln
bmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNv
bT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5jIHwg
MTUgLS0tLS0tLS0tLS0tLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jICAg
ICAgICAgIHwgMjMgKysrKysrKysrKysrKysrKysrKysrKysNCj4gIDIgZmlsZXMgY2hhbmdlZCwg
MjMgaW5zZXJ0aW9ucygrKSwgMTUgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmMuYyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMNCj4gaW5kZXggMDM2NTQ2Y2U4ZGI4Li5lZjJlYjE0ZjYx
NTcgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJj
LmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmMuYw0KPiBA
QCAtMzQ3LDIxICszNDcsNiBAQCBzdGF0aWMgdm9pZCBnZW43X2ZiY19hY3RpdmF0ZShzdHJ1Y3Qg
ZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpDQo+ICAJaWYgKGRldl9wcml2LT5mYmMuZmFsc2Vf
Y29sb3IpDQo+ICAJCWRwZmNfY3RsIHw9IEZCQ19DVExfRkFMU0VfQ09MT1I7DQo+ICANCj4gLQlp
ZiAoSVNfSVZZQlJJREdFKGRldl9wcml2KSkgew0KPiAtCQkvKiBXYUZiY0FzeW5jaEZsaXBEaXNh
YmxlRmJjUXVldWU6aXZiICovDQo+IC0JCWludGVsX2RlX3dyaXRlKGRldl9wcml2LCBJTEtfRElT
UExBWV9DSElDS0VOMSwNCj4gLQkJCSAgICAgICBpbnRlbF9kZV9yZWFkKGRldl9wcml2LCBJTEtf
RElTUExBWV9DSElDS0VOMSkgfCBJTEtfRkJDUV9ESVMpOw0KPiAtCX0gZWxzZSBpZiAoSVNfSEFT
V0VMTChkZXZfcHJpdikgfHwgSVNfQlJPQURXRUxMKGRldl9wcml2KSkgew0KPiAtCQkvKiBXYUZi
Y0FzeW5jaEZsaXBEaXNhYmxlRmJjUXVldWU6aHN3LGJkdyAqLw0KPiAtCQlpbnRlbF9kZV93cml0
ZShkZXZfcHJpdiwgQ0hJQ0tFTl9QSVBFU0xfMShwYXJhbXMtPmNydGMucGlwZSksDQo+IC0JCQkg
ICAgICAgaW50ZWxfZGVfcmVhZChkZXZfcHJpdiwgQ0hJQ0tFTl9QSVBFU0xfMShwYXJhbXMtPmNy
dGMucGlwZSkpIHwgSFNXX0ZCQ1FfRElTKTsNCj4gLQl9DQo+IC0NCj4gLQlpZiAoSU5URUxfR0VO
KGRldl9wcml2KSA+PSAxMSkNCj4gLQkJLyogV2FfMTQwOTEyMDAxMzppY2wsZWhsLHRnbCAqLw0K
PiAtCQlpbnRlbF9kZV93cml0ZShkZXZfcHJpdiwgSUxLX0RQRkNfQ0hJQ0tFTiwNCj4gLQkJCSAg
ICAgICBJTEtfRFBGQ19DSElDS0VOX0NPTVBfRFVNTVlfUElYRUwpOw0KPiAtDQo+ICAJaW50ZWxf
ZGVfd3JpdGUoZGV2X3ByaXYsIElMS19EUEZDX0NPTlRST0wsIGRwZmNfY3RsIHwgRFBGQ19DVExf
RU4pOw0KPiAgDQo+ICAJaW50ZWxfZmJjX3JlY29tcHJlc3MoZGV2X3ByaXYpOw0KPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2ludGVsX3BtLmMNCj4gaW5kZXggMmQ5ODBiODNhMWYxLi42M2QxYTQ4ODI3MjcgMTAwNjQ0
DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmMNCj4gKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYw0KPiBAQCAtNzA5OCw2ICs3MDk4LDEwIEBAIHN0YXRp
YyB2b2lkIGdlbjhfc2V0X2wzc3FjX2NyZWRpdHMoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRl
dl9wcml2LA0KPiAgDQo+ICBzdGF0aWMgdm9pZCBpY2xfaW5pdF9jbG9ja19nYXRpbmcoc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQ0KPiAgew0KPiArCS8qIFdhXzE0MDkxMjAwMTM6
aWNsLGVobCAqLw0KPiArCUk5MTVfV1JJVEUoSUxLX0RQRkNfQ0hJQ0tFTiwNCj4gKwkJICAgSUxL
X0RQRkNfQ0hJQ0tFTl9DT01QX0RVTU1ZX1BJWEVMKTsNCj4gKw0KPiAgCS8qIFRoaXMgaXMgbm90
IGFuIFdhLiBFbmFibGUgdG8gcmVkdWNlIFNhbXBsZXIgcG93ZXIgKi8NCj4gIAlJOTE1X1dSSVRF
KEdFTjEwX0RGUl9SQVRJT19FTl9BTkRfQ0hJQ0tFTiwNCj4gIAkJICAgSTkxNV9SRUFEKEdFTjEw
X0RGUl9SQVRJT19FTl9BTkRfQ0hJQ0tFTikgJiB+REZSX0RJU0FCTEUpOw0KPiBAQCAtNzExMiw2
ICs3MTE2LDEwIEBAIHN0YXRpYyB2b2lkIHRnbF9pbml0X2Nsb2NrX2dhdGluZyhzdHJ1Y3QgZHJt
X2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpDQo+ICAJdTMyIHZkX3BnX2VuYWJsZSA9IDA7DQo+ICAJ
dW5zaWduZWQgaW50IGk7DQo+ICANCj4gKwkvKiBXYV8xNDA5MTIwMDEzOnRnbCAqLw0KPiArCUk5
MTVfV1JJVEUoSUxLX0RQRkNfQ0hJQ0tFTiwNCj4gKwkJICAgSUxLX0RQRkNfQ0hJQ0tFTl9DT01Q
X0RVTU1ZX1BJWEVMKTsNCj4gKw0KPiAgCS8qIFRoaXMgaXMgbm90IGEgV0EuIEVuYWJsZSBWRCBI
Q1AgJiBNRlhfRU5DIHBvd2VyZ2F0ZSAqLw0KPiAgCWZvciAoaSA9IDA7IGkgPCBJOTE1X01BWF9W
Q1M7IGkrKykgew0KPiAgCQlpZiAoSEFTX0VOR0lORShkZXZfcHJpdiwgX1ZDUyhpKSkpDQo+IEBA
IC03MjIyLDYgKzcyMzAsMTEgQEAgc3RhdGljIHZvaWQgYmR3X2luaXRfY2xvY2tfZ2F0aW5nKHN0
cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikNCj4gIHsNCj4gIAllbnVtIHBpcGUgcGlw
ZTsNCj4gIA0KPiArCS8qIFdhRmJjQXN5bmNoRmxpcERpc2FibGVGYmNRdWV1ZTpoc3csYmR3ICov
DQo+ICsJSTkxNV9XUklURShDSElDS0VOX1BJUEVTTF8xKFBJUEVfQSksDQo+ICsJCSAgIEk5MTVf
UkVBRChDSElDS0VOX1BJUEVTTF8xKFBJUEVfQSkpIHwNCj4gKwkJICAgSFNXX0ZCQ1FfRElTKTsN
Cj4gKw0KPiAgCS8qIFdhU3dpdGNoU29sVmZGQXJiaXRyYXRpb25Qcmlvcml0eTpiZHcgKi8NCj4g
IAlJOTE1X1dSSVRFKEdBTV9FQ09DSEssIEk5MTVfUkVBRChHQU1fRUNPQ0hLKSB8IEhTV19FQ09D
SEtfQVJCX1BSSU9fU09MKTsNCj4gIA0KPiBAQCAtNzI2OSw2ICs3MjgyLDExIEBAIHN0YXRpYyB2
b2lkIGJkd19pbml0X2Nsb2NrX2dhdGluZyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3By
aXYpDQo+ICANCj4gIHN0YXRpYyB2b2lkIGhzd19pbml0X2Nsb2NrX2dhdGluZyhzdHJ1Y3QgZHJt
X2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpDQo+ICB7DQo+ICsJLyogV2FGYmNBc3luY2hGbGlwRGlz
YWJsZUZiY1F1ZXVlOmhzdyxiZHcgKi8NCj4gKwlJOTE1X1dSSVRFKENISUNLRU5fUElQRVNMXzEo
UElQRV9BKSwNCj4gKwkJICAgSTkxNV9SRUFEKENISUNLRU5fUElQRVNMXzEoUElQRV9BKSkgfA0K
PiArCQkgICBIU1dfRkJDUV9ESVMpOw0KPiArDQo+ICAJLyogVGhpcyBpcyByZXF1aXJlZCBieSBX
YUNhdEVycm9yUmVqZWN0aW9uSXNzdWU6aHN3ICovDQo+ICAJSTkxNV9XUklURShHRU43X1NRX0NI
SUNLRU5fTUJDVU5JVF9DT05GSUcsDQo+ICAJCSAgIEk5MTVfUkVBRChHRU43X1NRX0NISUNLRU5f
TUJDVU5JVF9DT05GSUcpIHwNCj4gQEAgLTcyODYsNiArNzMwNCwxMSBAQCBzdGF0aWMgdm9pZCBp
dmJfaW5pdF9jbG9ja19nYXRpbmcoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQ0K
PiAgDQo+ICAJSTkxNV9XUklURShJTEtfRFNQQ0xLX0dBVEVfRCwgSUxLX1ZSSFVOSVRfQ0xPQ0tf
R0FURV9ESVNBQkxFKTsNCj4gIA0KPiArCS8qIFdhRmJjQXN5bmNoRmxpcERpc2FibGVGYmNRdWV1
ZTppdmIgKi8NCj4gKwlJOTE1X1dSSVRFKElMS19ESVNQTEFZX0NISUNLRU4xLA0KPiArCQkgICBJ
OTE1X1JFQUQoSUxLX0RJU1BMQVlfQ0hJQ0tFTjEpIHwNCj4gKwkJICAgSUxLX0ZCQ1FfRElTKTsN
Cj4gKw0KPiAgCS8qIFdhRGlzYWJsZUJhY2tUb0JhY2tGbGlwRml4Oml2YiAqLw0KPiAgCUk5MTVf
V1JJVEUoSVZCX0NISUNLRU4zLA0KPiAgCQkgICBDSElDS0VOM19ER01HX1JFUV9PVVRfRklYX0RJ
U0FCTEUgfA0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
