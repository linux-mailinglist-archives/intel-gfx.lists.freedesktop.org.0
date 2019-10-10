Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DF82D32A5
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Oct 2019 22:45:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4F34F89BFF;
	Thu, 10 Oct 2019 20:45:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E913C89BFF
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Oct 2019 20:45:42 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Oct 2019 13:45:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,281,1566889200"; d="scan'208";a="219168067"
Received: from fmsmsx107.amr.corp.intel.com ([10.18.124.205])
 by fmsmga004.fm.intel.com with ESMTP; 10 Oct 2019 13:45:42 -0700
Received: from fmsmsx152.amr.corp.intel.com (10.18.125.5) by
 fmsmsx107.amr.corp.intel.com (10.18.124.205) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 10 Oct 2019 13:45:42 -0700
Received: from fmsmsx116.amr.corp.intel.com ([169.254.2.25]) by
 FMSMSX152.amr.corp.intel.com ([169.254.6.186]) with mapi id 14.03.0439.000;
 Thu, 10 Oct 2019 13:45:41 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 3/4] drm/i915/display: DFSM CDCLK LIMIT is only
 available in BXT
Thread-Index: AQHVf6GG7QgMnZWb5UCjZzYUNzIAz6dUzXAA
Date: Thu, 10 Oct 2019 20:45:42 +0000
Message-ID: <3b7ad4a20360b24e3821e414d5ac3298e39ef6ef.camel@intel.com>
References: <20191010193241.101401-1-jose.souza@intel.com>
 <20191010193241.101401-3-jose.souza@intel.com>
In-Reply-To: <20191010193241.101401-3-jose.souza@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.255.229.24]
Content-ID: <841C0318B478B84288A0D07A9BC57A57@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 3/4] drm/i915/display: DFSM CDCLK LIMIT is
 only available in BXT
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SSBtZXNzZWQgdXAgb24gdGhpcyBwYXRjaCwgcGxlYXNlIGlnbm9yZSB0aGlzIG9uZS4NCldpbGwg
c2VuZCB0aGUgZml4ZWQgdmVyc2lvbiBzb29uLg0KDQpPbiBUaHUsIDIwMTktMTAtMTAgYXQgMTI6
MzIgLTA3MDAsIEpvc8OpIFJvYmVydG8gZGUgU291emEgd3JvdGU6DQo+IE9uIEdMSyB0aG9zZSBy
ZWdpc3RlcnMgYXJlIHJlc2VydmVkIGFuZCBvbiBhbm90aGVyIGdlbnMgaXQgaGF2ZQ0KPiBhbm90
aGVyIG1lYW5pbmcsIHNvIHJlbmFtaW5nIGl0IHRvIEJYVCBvbmx5Lg0KPiANCj4gQlNwZWM6IDc1
NDgNCj4gU2lnbmVkLW9mZi1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBp
bnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9j
ZGNsay5jIHwgMTIgKysrKystLS0tLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3Jl
Zy5oICAgICAgICAgICAgfCAxMCArKysrKy0tLS0tDQo+ICAyIGZpbGVzIGNoYW5nZWQsIDEwIGlu
c2VydGlvbnMoKyksIDEyIGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY2RjbGsuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfY2RjbGsuYw0KPiBpbmRleCA0MzU2NDI5NWI4NjQuLmExNzg3ZDE2
NTQ2NyAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9j
ZGNsay5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY2RjbGsu
Yw0KPiBAQCAtMjM4NCw4ICsyMzg0LDggQEAgdm9pZCBpbnRlbF91cGRhdGVfbWF4X2NkY2xrKHN0
cnVjdA0KPiBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikNCj4gIAkJCWRldl9wcml2LT5tYXhf
Y2RjbGtfZnJlcSA9IDY1MjgwMDsNCj4gIAl9IGVsc2UgaWYgKElTX0NBTk5PTkxBS0UoZGV2X3By
aXYpKSB7DQo+ICAJCWRldl9wcml2LT5tYXhfY2RjbGtfZnJlcSA9IDUyODAwMDsNCj4gLQl9IGVs
c2UgaWYgKElTX0dFTjlfQkMoZGV2X3ByaXYpKSB7DQo+IC0JCXUzMiBsaW1pdCA9IEk5MTVfUkVB
RChTS0xfREZTTSkgJg0KPiBTS0xfREZTTV9DRENMS19MSU1JVF9NQVNLOw0KPiArCX0gZWxzZSBp
ZiAoSVNfQlJPWFRPTihkZXZfcHJpdikpIHsNCj4gKwkJdTMyIGxpbWl0ID0gSTkxNV9SRUFEKFNL
TF9ERlNNKSAmDQo+IEJYVF9ERlNNX0NEQ0xLX0xJTUlUX01BU0s7DQo+ICAJCWludCBtYXhfY2Rj
bGssIHZjbzsNCj4gIA0KPiAgCQl2Y28gPSBkZXZfcHJpdi0+c2tsX3ByZWZlcnJlZF92Y29fZnJl
cTsNCj4gQEAgLTIzOTYsMTEgKzIzOTYsMTEgQEAgdm9pZCBpbnRlbF91cGRhdGVfbWF4X2NkY2xr
KHN0cnVjdA0KPiBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikNCj4gIAkJICogZmlyc3QgZ3Vl
c3MuIHNrbF9jYWxjX2NkY2xrKCkgd2lsbCBjb3JyZWN0IGl0DQo+ICAJCSAqIGlmIHRoZSBwcmVm
ZXJyZWQgdmNvIGlzIDgxMDAgaW5zdGVhZC4NCj4gIAkJICovDQo+IC0JCWlmIChsaW1pdCA9PSBT
S0xfREZTTV9DRENMS19MSU1JVF82NzUpDQo+ICsJCWlmIChsaW1pdCA9PSBCWFRfREZTTV9DRENM
S19MSU1JVF82NzUpDQo+ICAJCQltYXhfY2RjbGsgPSA2MTcxNDM7DQo+IC0JCWVsc2UgaWYgKGxp
bWl0ID09IFNLTF9ERlNNX0NEQ0xLX0xJTUlUXzU0MCkNCj4gKwkJZWxzZSBpZiAobGltaXQgPT0g
QlhUX0RGU01fQ0RDTEtfTElNSVRfNTQwKQ0KPiAgCQkJbWF4X2NkY2xrID0gNTQwMDAwOw0KPiAt
CQllbHNlIGlmIChsaW1pdCA9PSBTS0xfREZTTV9DRENMS19MSU1JVF80NTApDQo+ICsJCWVsc2Ug
aWYgKGxpbWl0ID09IEJYVF9ERlNNX0NEQ0xLX0xJTUlUXzQ1MCkNCj4gIAkJCW1heF9jZGNsayA9
IDQzMjAwMDsNCj4gIAkJZWxzZQ0KPiAgCQkJbWF4X2NkY2xrID0gMzA4NTcxOw0KPiBAQCAtMjQw
OCw4ICsyNDA4LDYgQEAgdm9pZCBpbnRlbF91cGRhdGVfbWF4X2NkY2xrKHN0cnVjdA0KPiBkcm1f
aTkxNV9wcml2YXRlICpkZXZfcHJpdikNCj4gIAkJZGV2X3ByaXYtPm1heF9jZGNsa19mcmVxID0g
c2tsX2NhbGNfY2RjbGsobWF4X2NkY2xrLA0KPiB2Y28pOw0KPiAgCX0gZWxzZSBpZiAoSVNfR0VN
SU5JTEFLRShkZXZfcHJpdikpIHsNCj4gIAkJZGV2X3ByaXYtPm1heF9jZGNsa19mcmVxID0gMzE2
ODAwOw0KPiAtCX0gZWxzZSBpZiAoSVNfQlJPWFRPTihkZXZfcHJpdikpIHsNCj4gLQkJZGV2X3By
aXYtPm1heF9jZGNsa19mcmVxID0gNjI0MDAwOw0KPiAgCX0gZWxzZSBpZiAoSVNfQlJPQURXRUxM
KGRldl9wcml2KSkgIHsNCj4gIAkJLyoNCj4gIAkJICogRklYTUUgd2l0aCBleHRyYSBjb29saW5n
IHdlIGNhbiBhbGxvdw0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9y
ZWcuaA0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgNCj4gaW5kZXggYjM4MzUx
MWI2MjMxLi4zOWM2NWYwNTE0NjggMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfcmVnLmgNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaA0KPiBA
QCAtNzY0NCwxMSArNzY0NCwxMSBAQCBlbnVtIHsNCj4gIA0KPiAgI2RlZmluZSBTS0xfREZTTQkJ
CV9NTUlPKDB4NTEwMDApDQo+ICAjZGVmaW5lIFNLTF9ERlNNX0RJU1BMQVlfSERDUF9ESVNBQkxF
CSgxIDw8IDI1KQ0KPiAtI2RlZmluZSBTS0xfREZTTV9DRENMS19MSU1JVF9NQVNLCSgzIDw8IDIz
KQ0KPiAtI2RlZmluZSBTS0xfREZTTV9DRENMS19MSU1JVF82NzUJKDAgPDwgMjMpDQo+IC0jZGVm
aW5lIFNLTF9ERlNNX0NEQ0xLX0xJTUlUXzU0MAkoMSA8PCAyMykNCj4gLSNkZWZpbmUgU0tMX0RG
U01fQ0RDTEtfTElNSVRfNDUwCSgyIDw8IDIzKQ0KPiAtI2RlZmluZSBTS0xfREZTTV9DRENMS19M
SU1JVF8zMzdfNQkoMyA8PCAyMykNCj4gKyNkZWZpbmUgQlhUX0RGU01fQ0RDTEtfTElNSVRfTUFT
SwkoMyA8PCAyMykNCj4gKyNkZWZpbmUgQlhUX0RGU01fQ0RDTEtfTElNSVRfNjc1CSgwIDw8IDIz
KQ0KPiArI2RlZmluZSBCWFRfREZTTV9DRENMS19MSU1JVF81NDAJKDEgPDwgMjMpDQo+ICsjZGVm
aW5lIEJYVF9ERlNNX0NEQ0xLX0xJTUlUXzQ1MAkoMiA8PCAyMykNCj4gKyNkZWZpbmUgQlhUX0RG
U01fQ0RDTEtfTElNSVRfMzM3XzUJKDMgPDwgMjMpDQo+ICAjZGVmaW5lIFNLTF9ERlNNX1BJUEVf
QV9ESVNBQkxFCQkoMSA8PCAzMCkNCj4gICNkZWZpbmUgU0tMX0RGU01fUElQRV9CX0RJU0FCTEUJ
CSgxIDw8IDIxKQ0KPiAgI2RlZmluZSBTS0xfREZTTV9QSVBFX0NfRElTQUJMRQkJKDEgPDwgMjgp
DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
