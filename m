Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 358122161E2
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Jul 2020 01:10:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 837736E0E5;
	Mon,  6 Jul 2020 23:10:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E6BC66E0E5
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Jul 2020 23:10:17 +0000 (UTC)
IronPort-SDR: xK2/F8umaNt+ggakxfKdB35ypWqj3GlXhehc5XZ1Zdu9x3rywA7xL8vf8A5bptW7pX3BmsZYps
 4BYDUiYj0E2w==
X-IronPort-AV: E=McAfee;i="6000,8403,9674"; a="127107537"
X-IronPort-AV: E=Sophos;i="5.75,321,1589266800"; d="scan'208";a="127107537"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2020 16:10:17 -0700
IronPort-SDR: 02xhIQAh67xcifrCgqva19KJrIgl5V73uNffEVJ+AVDu8dSx08h1HKCNclA4xUKUT+jkgpHAKf
 uekI9++c7xJQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,321,1589266800"; d="scan'208";a="266661964"
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
 by fmsmga007.fm.intel.com with ESMTP; 06 Jul 2020 16:10:17 -0700
Received: from fmsmsx158.amr.corp.intel.com (10.18.116.75) by
 FMSMSX103.amr.corp.intel.com (10.18.124.201) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 6 Jul 2020 16:10:16 -0700
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.171]) by
 fmsmsx158.amr.corp.intel.com ([169.254.15.146]) with mapi id 14.03.0439.000;
 Mon, 6 Jul 2020 16:10:16 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>
Thread-Topic: [Intel-gfx] [PATCH v2] drm/i915/display: Implement new combo
 phy initialization step
Thread-Index: AQHWSl4PdqSa/uIKZ0uZD63M3l/Inaj7tWQAgAAA7AA=
Date: Mon, 6 Jul 2020 23:10:15 +0000
Message-ID: <3cb061992e1c0dfef99c7b1420077e41d5f7909b.camel@intel.com>
References: <20200624193249.20725-1-jose.souza@intel.com>
 <20200706230842.GD2081034@mdroper-desk1.amr.corp.intel.com>
In-Reply-To: <20200706230842.GD2081034@mdroper-desk1.amr.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.14.51]
Content-ID: <D1026F8213EADB4FB2758BAE72DAD503@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/display: Implement new combo
 phy initialization step
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "De
 Marchi, Lucas" <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCAyMDIwLTA3LTA2IGF0IDE2OjA4IC0wNzAwLCBNYXR0IFJvcGVyIHdyb3RlOg0KPiBP
biBXZWQsIEp1biAyNCwgMjAyMCBhdCAxMjozMjo0OVBNIC0wNzAwLCBKb3PDqSBSb2JlcnRvIGRl
IFNvdXphIHdyb3RlOg0KPiA+IFRoaXMgaXMgbmV3IHN0ZXAgdGhhdCB3YXMgcmVjZW50bHkgYWRk
ZWQgdG8gdGhlIGNvbWJvIHBoeQ0KPiA+IGluaXRpYWxpemF0aW9uLg0KPiA+IA0KPiA+IHYyOg0K
PiA+IC0gdXNpbmcgaW50ZWxfZGVfcm13KCkNCj4gDQo+IEFjdHVhbGx5LCBJJ20gbm90IHN1cmUg
d2hldGhlciB0aGlzIGlzIHZhbGlkOyBJIGJlbGlldmUgd2UgYWx3YXlzIGhhdmUNCj4gdG8gcmVh
ZCBmcm9tIGEgbGFuZSByZWdpc3RlciBhbmQgY2FuIG9ubHkgd3JpdGUgdG8gdGhlIGdyb3VwIHJl
Z2lzdGVyczoNCj4gDQo+ICAgICAgICAgIlJlYWRzIHVzaW5nIGEgcG9ydCBncm91cCBhZGRyZXNz
IHVzdWFsbHkgY2Fubm90IHJldHVybiBjb3JyZWN0DQo+ICAgICAgICAgZGF0YS4gRm9yIHJlYWQv
bW9kaWZ5L3dyaXRlIHRvIGEgZ3JvdXAsIHRoZSByZWFkIHNob3VsZCBiZSB0bw0KPiAgICAgICAg
IG9uZSBvZiB0aGUgbGFuZSBhZGRyZXNzZXMsIHRoZW4gdGhlIHdyaXRlIHRvIHRoZSBncm91cCBh
ZGRyZXNzLiINCg0KWWVwLCB2MyBpcyBkb2luZyB0aGUgcmlnaHQgdGhpbmc6IGh0dHBzOi8vcGF0
Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvNzg3OTYvDQoNCj4gDQo+ID4gQlNwZWM6IDQ5
MjkxDQo+ID4gQ2M6IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPg0K
PiA+IFNpZ25lZC1vZmYtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50
ZWwuY29tPg0KPiA+IC0tLQ0KPiA+ICAuLi4vZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY29t
Ym9fcGh5LmMgICAgfCAyMyArKysrKysrKysrKysrKysrKysrDQo+ID4gIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfcmVnLmggICAgICAgICAgICAgICB8ICA3ICsrKysrKw0KPiA+ICAyIGZpbGVz
IGNoYW5nZWQsIDMwIGluc2VydGlvbnMoKykNCj4gPiANCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jb21ib19waHkuYyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfY29tYm9fcGh5LmMNCj4gPiBpbmRleCA3N2IwNGJiM2VjNjIu
LjExNTA2OTgzMzM0OCAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2NvbWJvX3BoeS5jDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9jb21ib19waHkuYw0KPiA+IEBAIC0yNjQsNiArMjY0LDE4IEBAIHN0YXRpYyBi
b29sIGljbF9jb21ib19waHlfdmVyaWZ5X3N0YXRlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpk
ZXZfcHJpdiwNCj4gPiAgCWlmICghaWNsX2NvbWJvX3BoeV9lbmFibGVkKGRldl9wcml2LCBwaHkp
KQ0KPiA+ICAJCXJldHVybiBmYWxzZTsNCj4gPiAgDQo+ID4gKwlpZiAoSU5URUxfR0VOKGRldl9w
cml2KSA+PSAxMikgew0KPiA+ICsJCXJldCAmPSBjaGVja19waHlfcmVnKGRldl9wcml2LCBwaHks
IElDTF9QT1JUX1RYX0RXOF9HUlAocGh5KSwNCj4gPiArCQkJCSAgICAgSUNMX1BPUlRfVFhfRFc4
X09EQ0NfQ0xLX1NFTCB8DQo+ID4gKwkJCQkgICAgIElDTF9QT1JUX1RYX0RXOF9PRENDX0NMS19E
SVZfU0VMX01BU0ssDQo+ID4gKwkJCQkgICAgIElDTF9QT1JUX1RYX0RXOF9PRENDX0NMS19TRUwg
fA0KPiA+ICsJCQkJICAgICBJQ0xfUE9SVF9UWF9EVzhfT0RDQ19DTEtfRElWX1NFTF9ESVYyKTsN
Cj4gDQo+IElmIEknbSByZWFkaW5nIHRoZSBic3BlYyBjb3JyZWN0bHksIGl0IGxvb2tzIGxpa2Ug
Ym90aCAwMCBhbmQgMDENCj4gcmVwcmVzZW50IGRpdjIgZm9yIHRoaXMgcmVnaXN0ZXIuICBTbyBt
YXliZSByYXRoZXIgdGhhbiBsb29raW5nIGZvciAwMQ0KPiBleGFjdGx5IGhlcmUgd2Ugc2hvdWxk
IGp1c3QgY2hlY2sgdGhhdCBiaXQgMzAgaXMgb2ZmPw0KPiANCj4gDQo+ID4gKw0KPiA+ICsJCXJl
dCAmPSBjaGVja19waHlfcmVnKGRldl9wcml2LCBwaHksIElDTF9QT1JUX1BDU19EVzFfR1JQKHBo
eSksDQo+ID4gKwkJCQkgICAgIERDQ19NT0RFX1NFTEVDVF9NQVNLLA0KPiA+ICsJCQkJICAgICBE
Q0NfTU9ERV9TRUxFQ1RfQ09OVElOVU9TTFkpOw0KPiA+ICsJfQ0KPiA+ICsNCj4gPiAgCXJldCA9
IGNubF92ZXJpZnlfcHJvY21vbl9yZWZfdmFsdWVzKGRldl9wcml2LCBwaHkpOw0KPiA+ICANCj4g
PiAgCWlmIChwaHlfaXNfbWFzdGVyKGRldl9wcml2LCBwaHkpKSB7DQo+ID4gQEAgLTM3NSw2ICsz
ODcsMTcgQEAgc3RhdGljIHZvaWQgaWNsX2NvbWJvX3BoeXNfaW5pdChzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZSAqZGV2X3ByaXYpDQo+ID4gIAkJaW50ZWxfZGVfd3JpdGUoZGV2X3ByaXYsIElDTF9Q
SFlfTUlTQyhwaHkpLCB2YWwpOw0KPiA+ICANCj4gPiAgc2tpcF9waHlfbWlzYzoNCj4gPiArCQlp
ZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSAxMikgew0KPiANCj4gV2UgbWF5IHdhbnQgdG8ga2Vl
cCBhbiBleWUgb24gdGhpcyBwYXJ0IG9mIHRoZSBic3BlYzsgdGhlcmUgc2VlbXMgdG8gYmUNCj4g
c29tZXRoaW5nIGEgYml0IG9mZiB3aXRoIHRoZSBic3BlYyB0YWdnaW5nIG9mIHRoaXMgYmxvY2sg
YW5kIEknbSBub3QNCj4gMTAwJSBzdXJlIGl0IHdhcyBhY3R1YWxseSBpbnRlbmRlZCB0byBhcHBs
eSB0byBSS0wgdG9vIG9yIG5vdC4NCj4gDQo+IEl0IHNlZW1zIGxpa2UgdGhlIGJzcGVjIGhhcyB0
aGVzZSBzdGVwcyBhcyB0aGUgdmVyeSBmaXJzdCB0aGluZywgZXZlbg0KPiBiZWZvcmUgdGhlICJj
aGVjayB3aGV0aGVyIHRoZSBQSFkgaXMgYWxyZWFkeSBpbml0aWFsaXplZCIgc3RlcC4NCj4gQnV0
IHNpbmNlIHdlJ3JlIGNoZWNraW5nIHRoYXQgdGhlIGJpdHMgYXJlIHNldCB0aGUgd2F5IHdlIHdh
bnQgaW4gdGhlDQo+IHZlcmlmeSBmdW5jdGlvbiB0b28sIEkgZG9uJ3QgdGhpbmsgdGhlIG9yZGVy
aW5nIHNob3VsZCBtYXR0ZXIuDQo+IA0KPiA+ICsJCQlpbnRlbF9kZV9ybXcoZGV2X3ByaXYsIElD
TF9QT1JUX1RYX0RXOF9HUlAocGh5KSwNCj4gPiArCQkJCSAgICAgSUNMX1BPUlRfVFhfRFc4X09E
Q0NfQ0xLX0RJVl9TRUxfTUFTSywNCj4gPiArCQkJCSAgICAgSUNMX1BPUlRfVFhfRFc4X09EQ0Nf
Q0xLX1NFTCB8DQo+ID4gKwkJCQkgICAgIElDTF9QT1JUX1RYX0RXOF9PRENDX0NMS19ESVZfU0VM
X0RJVjIpOw0KPiANCj4gQXMgbm90ZWQgYWJvdmUsIG1heWJlIHdlIHNob3VsZCBqdXN0IGNsZWFy
IGJpdCAzMCBhbmQgbGVhdmUgYml0IDI5IHNldA0KPiBob3dldmVyIGl0IGFscmVhZHkgd2FzPw0K
PiANCj4gDQo+IE1hdHQNCj4gDQo+ID4gKw0KPiA+ICsJCQlpbnRlbF9kZV9ybXcoZGV2X3ByaXYs
IElDTF9QT1JUX1BDU19EVzFfR1JQKHBoeSksDQo+ID4gKwkJCQkgICAgIERDQ19NT0RFX1NFTEVD
VF9NQVNLLA0KPiA+ICsJCQkJICAgICBEQ0NfTU9ERV9TRUxFQ1RfQ09OVElOVU9TTFkpOw0KPiA+
ICsJCX0NCj4gPiArDQo+ID4gIAkJY25sX3NldF9wcm9jbW9uX3JlZl92YWx1ZXMoZGV2X3ByaXYs
IHBoeSk7DQo+ID4gIA0KPiA+ICAJCWlmIChwaHlfaXNfbWFzdGVyKGRldl9wcml2LCBwaHkpKSB7
DQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oDQo+ID4gaW5kZXggZjA5MTIwY2FjODlhLi41NDY5
YzkwMjlmNmQgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcu
aA0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgNCj4gPiBAQCAtMTk3
NCw2ICsxOTc0LDggQEAgc3RhdGljIGlubGluZSBib29sIGk5MTVfbW1pb19yZWdfdmFsaWQoaTkx
NV9yZWdfdCByZWcpDQo+ID4gICNkZWZpbmUgSUNMX1BPUlRfUENTX0RXMV9BVVgocGh5KQlfTU1J
TyhfSUNMX1BPUlRfUENTX0RXX0FVWCgxLCBwaHkpKQ0KPiA+ICAjZGVmaW5lIElDTF9QT1JUX1BD
U19EVzFfR1JQKHBoeSkJX01NSU8oX0lDTF9QT1JUX1BDU19EV19HUlAoMSwgcGh5KSkNCj4gPiAg
I2RlZmluZSBJQ0xfUE9SVF9QQ1NfRFcxX0xOMChwaHkpCV9NTUlPKF9JQ0xfUE9SVF9QQ1NfRFdf
TE4oMSwgMCwgcGh5KSkNCj4gPiArI2RlZmluZSAgIERDQ19NT0RFX1NFTEVDVF9NQVNLCQkoMHgz
IDw8IDIwKQ0KPiA+ICsjZGVmaW5lICAgRENDX01PREVfU0VMRUNUX0NPTlRJTlVPU0xZCSgweDMg
PDwgMjApDQo+ID4gICNkZWZpbmUgICBDT01NT05fS0VFUEVSX0VOCQkoMSA8PCAyNikNCj4gPiAg
I2RlZmluZSAgIExBVEVOQ1lfT1BUSU1fTUFTSwkJKDB4MyA8PCAyKQ0KPiA+ICAjZGVmaW5lICAg
TEFURU5DWV9PUFRJTV9WQUwoeCkJCSgoeCkgPDwgMikNCj4gPiBAQCAtMjA3Miw2ICsyMDc0LDEx
IEBAIHN0YXRpYyBpbmxpbmUgYm9vbCBpOTE1X21taW9fcmVnX3ZhbGlkKGk5MTVfcmVnX3QgcmVn
KQ0KPiA+ICAjZGVmaW5lICAgTl9TQ0FMQVIoeCkJCQkoKHgpIDw8IDI0KQ0KPiA+ICAjZGVmaW5l
ICAgTl9TQ0FMQVJfTUFTSwkJCSgweDdGIDw8IDI0KQ0KPiA+ICANCj4gPiArI2RlZmluZSBJQ0xf
UE9SVF9UWF9EVzhfR1JQKHBoeSkJCV9NTUlPKF9JQ0xfUE9SVF9UWF9EV19HUlAoOCwgcGh5KSkN
Cj4gPiArI2RlZmluZSBJQ0xfUE9SVF9UWF9EVzhfT0RDQ19DTEtfU0VMCQlSRUdfQklUKDMxKQ0K
PiA+ICsjZGVmaW5lIElDTF9QT1JUX1RYX0RXOF9PRENDX0NMS19ESVZfU0VMX01BU0sJUkVHX0dF
Tk1BU0soMzAsIDI5KQ0KPiA+ICsjZGVmaW5lIElDTF9QT1JUX1RYX0RXOF9PRENDX0NMS19ESVZf
U0VMX0RJVjIJUkVHX0ZJRUxEX1BSRVAoSUNMX1BPUlRfVFhfRFc4X09EQ0NfQ0xLX0RJVl9TRUxf
TUFTSywgMHgxKQ0KPiA+ICsNCj4gPiAgI2RlZmluZSBfSUNMX0RQSFlfQ0hLTl9SRUcJCQkweDE5
NA0KPiA+ICAjZGVmaW5lIElDTF9EUEhZX0NIS04ocG9ydCkJCQlfTU1JTyhfSUNMX0NPTUJPUEhZ
KHBvcnQpICsgX0lDTF9EUEhZX0NIS05fUkVHKQ0KPiA+ICAjZGVmaW5lICAgSUNMX0RQSFlfQ0hL
Tl9BRkVfT1ZFUl9QUElfU1RSQVAJUkVHX0JJVCg3KQ0KPiA+IC0tIA0KPiA+IDIuMjcuMA0KPiA+
IA0KPiA+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQo+
ID4gSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdA0KPiA+IEludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcNCj4gPiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeA0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
Cg==
