Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 51EDA151FEE
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Feb 2020 18:48:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B853C6E88D;
	Tue,  4 Feb 2020 17:48:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0E8406E88D
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Feb 2020 17:48:27 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Feb 2020 09:48:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,402,1574150400"; d="scan'208";a="219822221"
Received: from fmsmsx106.amr.corp.intel.com ([10.18.124.204])
 by orsmga007.jf.intel.com with ESMTP; 04 Feb 2020 09:48:26 -0800
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.3]) by
 FMSMSX106.amr.corp.intel.com ([169.254.5.175]) with mapi id 14.03.0439.000;
 Tue, 4 Feb 2020 09:48:25 -0800
From: "Souza, Jose" <jose.souza@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Thread-Topic: [PATCH v2] drm/i915/display: Set TRANS_DDI_MODE_SELECT to
 default value when clearing DDI select
Thread-Index: AQHV2uUadQi1BG9LS0an01/1ZwybxKgLkCOAgABGxwA=
Date: Tue, 4 Feb 2020 17:48:24 +0000
Message-ID: <0abaa6b7a8051e14e676f3c30343b14b3d315f65.camel@intel.com>
References: <20200203225549.152301-1-jose.souza@intel.com>
 <20200204133505.GJ13686@intel.com>
In-Reply-To: <20200204133505.GJ13686@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.12.237]
Content-ID: <20955BE82964454BA41535B2147BD5C2@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/display: Set
 TRANS_DDI_MODE_SELECT to default value when clearing DDI select
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCAyMDIwLTAyLTA0IGF0IDE1OjM1ICswMjAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
DQo+IE9uIE1vbiwgRmViIDAzLCAyMDIwIGF0IDAyOjU1OjQ5UE0gLTA4MDAsIEpvc8OpIFJvYmVy
dG8gZGUgU291emENCj4gd3JvdGU6DQo+ID4gVEdMIGlzIHN1ZmZlcmluZyBvZiB0aW1lb3V0cyBh
bmQgZmlmbyB1bmRlcnJ1bnMgd2hlbiBkaXNhYmxpbmcNCj4gPiB0cmFuc2NvZGVyIGluIE1TVCBt
b2RlLCB0aGlzIGlzIGZpeGVkIGJ5IHNldCBUUkFOU19ERElfTU9ERV9TRUxFQ1QNCj4gPiB0bw0K
PiA+IDAoSERNSSBtb2RlKSB3aGVuIGNsZWFyaW5nIERESSBzZWxlY3QuDQo+ID4gDQo+ID4gQWx0
aG91Z2ggQlNwZWMgZGlzYWJsZSBzZXF1ZW5jZSBkb24ndCByZXF1aXJlIHRoaXMgc3RlcCwgaXQg
aXMgYQ0KPiA+IGhhcm1sZXNzIGNoYW5nZSBhbmQgaXQgaXMgYWxzbyBkb25lIGJ5IFdpbmRvd3Mg
ZHJpdmVyLg0KPiA+IEFueWhvdyBIVyB0ZWFtIHdhcyBub3RpZmllZCBhYm91dCB0aGF0IGJ1dCBp
dCBjYW4gdGFrZSBzb21lIHRpbWUgdG8NCj4gPiBkb2N1bWVudGF0aW9uIHRvIGJlIHVwZGF0ZWQu
DQo+ID4gDQo+ID4gQSBjYXNlIHRoYXQgYWx3YXlzIGxlYWQgdG8gdGhvc2UgaXNzdWVzIGlzOg0K
PiA+IC0gZG8gYSBtb2Rlc2V0IGVuYWJsaW5nIHBpcGUgQSBhbmQgcGlwZSBCIGluIHRoZSBzYW1l
IE1TVCBzdHJlYW0NCj4gPiBsZWF2aW5nIEEgYXMgbWFzdGVyDQo+ID4gLSBkaXNhYmxlIHBpcGUg
QSwgcHJvbW90ZSBCIGFzIG1hc3RlciBkb2luZyBhIGZ1bGwgbW9kZXNldCBpbiBBDQo+ID4gLSBl
bmFibGUgcGlwZSBBLCBjaGFuZ2luZyB0aGUgbWFzdGVyIHRyYW5zY29kZXIgYmFjayB0byBBKGRv
aW5nIGENCj4gPiBmdWxsIG1vZGVzZXQgaW4gQikNCj4gPiAtIFBvdzogdW5kZXJydW5zIGFuZCB0
aW1lb3V0cw0KPiA+IA0KPiA+IFRoZSB0cmFuc2NvZGVycyBpbnZvbHZlZCB3aWxsIG9ubHkgd29y
ayBhZ2FpbiB3aGVuIGNvbXBsZXRlDQo+ID4gZGlzYWJsZWQNCj4gPiBhbmQgdGhlaXIgcG93ZXIg
d2VsbHMgdHVybmVkIG9mZiBjYXVzaW5nIGEgcmVzZXQgaW4gdGhlaXINCj4gPiByZWdpc3RlcnMu
DQo+ID4gDQo+ID4gdjI6IFNldHRpbmcgVFJBTlNfRERJX01PREVfU0VMRUNUIHRvIGRlZmF1bHQg
d2hlbiBjbGVhcmluZyBEREkNCj4gPiBzZWxlY3QNCj4gPiBub3QgYW55bW9yZSB3aGVuIGRpc2Fi
bGluZyBUUkFOU19EREksIGJvdGggd29yayBidXQgdGhpcyBvbmUgbG9va3MNCj4gPiBtb3JlIHNh
ZmUuIChWaWxsZSBjb21tZW50KQ0KPiANCj4gSSBwcmVzdW1lIHRoaXMgc3RpbGwgZml4ZXMgdGhl
IGlzc3VlPw0KDQpJdCBkb2VzLg0KDQo+IA0KPiA+IENjOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxl
LnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiA+IFNpZ25lZC1vZmYtYnk6IEpvc8OpIFJvYmVy
dG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPg0KPiA+IC0tLQ0KPiA+ICBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jIHwgNyArKysrKy0tDQo+ID4gIDEgZmls
ZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pDQo+ID4gDQo+ID4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMNCj4gPiBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMNCj4gPiBpbmRleCBhYTA2
NmZiOWViMDAuLjQ1MDgyZTcxMjYyYyAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kZGkuYw0KPiA+IEBAIC0xOTg4LDEwICsxOTg4LDEyIEBAIHZvaWQNCj4g
PiBpbnRlbF9kZGlfZGlzYWJsZV90cmFuc2NvZGVyX2Z1bmMoY29uc3Qgc3RydWN0IGludGVsX2Ny
dGNfc3RhdGUNCj4gPiAqY3J0Y19zdGF0ZQ0KPiA+ICAJdmFsICY9IH5UUkFOU19ERElfRlVOQ19F
TkFCTEU7DQo+ID4gIA0KPiA+ICAJaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0gMTIpIHsNCj4g
PiAtCQlpZiAoIWludGVsX2RwX21zdF9pc19tYXN0ZXJfdHJhbnMoY3J0Y19zdGF0ZSkpDQo+ID4g
KwkJaWYgKCFpbnRlbF9kcF9tc3RfaXNfbWFzdGVyX3RyYW5zKGNydGNfc3RhdGUpKSB7DQo+ID4g
IAkJCXZhbCAmPSB+VEdMX1RSQU5TX0RESV9QT1JUX01BU0s7DQo+ID4gKwkJCXZhbCAmPSB+VFJB
TlNfRERJX01PREVfU0VMRUNUX01BU0s7DQo+IA0KPiBUd28gc2VwYXJhdGUgc3RhdGVtZW50cy4N
Cj4gDQo+ID4gKwkJfQ0KPiA+ICAJfSBlbHNlIHsNCj4gPiAtCQl2YWwgJj0gflRSQU5TX0RESV9Q
T1JUX01BU0s7DQo+ID4gKwkJdmFsICY9IH4oVFJBTlNfRERJX1BPUlRfTUFTSyB8DQo+ID4gVFJB
TlNfRERJX01PREVfU0VMRUNUX01BU0spOw0KPiANCj4gT25lIHN0YXRlbWVudC4NCg0KSGVyZSB3
YXMgdGhlIG9ubHkgcGxhY2UgdGhhdCBmaXR0ZWQgaW4gODAgY29scy4NCg0KPiANCj4gPiAgCX0N
Cj4gPiAgCWludGVsX2RlX3dyaXRlKGRldl9wcml2LCBUUkFOU19ERElfRlVOQ19DVEwoY3B1X3Ry
YW5zY29kZXIpLA0KPiA+IHZhbCk7DQo+ID4gIA0KPiA+IEBAIC0zNzI5LDYgKzM3MzEsNyBAQCBz
dGF0aWMgdm9pZCBpbnRlbF9kZGlfcG9zdF9kaXNhYmxlX2RwKHN0cnVjdA0KPiA+IGludGVsX2Vu
Y29kZXIgKmVuY29kZXIsDQo+ID4gIAkJCXZhbCA9IGludGVsX2RlX3JlYWQoZGV2X3ByaXYsDQo+
ID4gIAkJCQkJICAgIFRSQU5TX0RESV9GVU5DX0NUTChjcHVfdHJhbg0KPiA+IHNjb2RlcikpOw0K
PiA+ICAJCQl2YWwgJj0gflRHTF9UUkFOU19ERElfUE9SVF9NQVNLOw0KPiA+ICsJCQl2YWwgJj0g
flRSQU5TX0RESV9NT0RFX1NFTEVDVF9NQVNLOw0KPiANCj4gVHdvIGFnYWluLg0KPiANCj4gQSBi
aXQgaW5jb25zaXN0ZW50LCBvdGhlcndpc2UgbGd0bS4NCj4gDQo+IFJldmlld2VkLWJ5OiBWaWxs
ZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KDQpUaGFua3MNCg0K
PiANCj4gPiAgCQkJaW50ZWxfZGVfd3JpdGUoZGV2X3ByaXYsDQo+ID4gIAkJCQkgICAgICAgVFJB
TlNfRERJX0ZVTkNfQ1RMKGNwdV90cmFuc2NvZGUNCj4gPiByKSwNCj4gPiAgCQkJCSAgICAgICB2
YWwpOw0KPiA+IC0tIA0KPiA+IDIuMjUuMA0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4Cg==
