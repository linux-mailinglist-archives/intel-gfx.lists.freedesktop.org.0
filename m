Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E72864EA7
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jul 2019 00:17:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C52BC8981D;
	Wed, 10 Jul 2019 22:17:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3114D8981D
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Jul 2019 22:17:28 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Jul 2019 15:17:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,476,1557212400"; d="scan'208";a="156631758"
Received: from fmsmsx108.amr.corp.intel.com ([10.18.124.206])
 by orsmga007.jf.intel.com with ESMTP; 10 Jul 2019 15:17:27 -0700
Received: from fmsmsx152.amr.corp.intel.com (10.18.125.5) by
 FMSMSX108.amr.corp.intel.com (10.18.124.206) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 10 Jul 2019 15:17:27 -0700
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.206]) by
 FMSMSX152.amr.corp.intel.com ([169.254.6.42]) with mapi id 14.03.0439.000;
 Wed, 10 Jul 2019 15:17:26 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>
Thread-Topic: [Intel-gfx] [PATCH v3 1/2] drm/i915: Add support for retrying
 hotplug
Thread-Index: AQHVLfnz+gpj2+4Bs0akr7qEZJ+WbqbEPDwAgAC3qYA=
Date: Wed, 10 Jul 2019 22:17:25 +0000
Message-ID: <b8d12634a613e9d6a69411661145ccf685399b40.camel@intel.com>
References: <20190628213921.16879-1-jose.souza@intel.com>
 <20190710112004.GL16315@intel.com>
In-Reply-To: <20190710112004.GL16315@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.9.133]
Content-ID: <2818D938C79AB64091CB54BFEC2C99A5@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v3 1/2] drm/i915: Add support for retrying
 hotplug
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCAyMDE5LTA3LTEwIGF0IDA0OjIwIC0wNzAwLCBSb2RyaWdvIFZpdmkgd3JvdGU6DQo+
IE9uIEZyaSwgSnVuIDI4LCAyMDE5IGF0IDAyOjM5OjIwUE0gLTA3MDAsIEpvc8OpIFJvYmVydG8g
ZGUgU291emENCj4gd3JvdGU6DQo+ID4gRnJvbTogSW1yZSBEZWFrIDxpbXJlLmRlYWtAaW50ZWwu
Y29tPg0KPiA+IA0KPiA+IFRoZXJlIGlzIHNvbWUgc2NlbmFyaW9zIHRoYXQgd2UgYXJlIGF3YXJl
IHRoYXQgc2luayBwcm9iZSBjYW4gZmFpbCwNCj4gPiBzbyBsZXRzIGFkZCB0aGUgaW5mcmFzdHJ1
Y3R1cmUgdG8gbGV0IGhvdHBsdWcoKSBob29rIHRvIHJlcXVlc3QNCj4gPiBhbm90aGVyIHByb2Jl
IGFmdGVyIHNvbWUgdGltZS4NCj4gPiANCj4gPiB2MjogSGFuZGxlIHNoYXJlZCBIUEQgcGlucyAo
SW1yZSkNCj4gPiB2MzogUmViYXNlZA0KPiA+IA0KPiA+IENjOiBWaWxsZSBTeXJqw6Rsw6QgPHZp
bGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiA+IFNpZ25lZC1vZmYtYnk6IEpvc8OpIFJv
YmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPg0KPiA+IFNpZ25lZC1vZmYtYnk6
IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+DQo+ID4gU2lnbmVkLW9mZi1ieTog
SW1yZSBEZWFrIDxpbXJlLmRlYWtAaW50ZWwuY29tPg0KPiA+IC0tLQ0KPiA+ICBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jICAgICB8IDEyICsrLS0NCj4gPiAgZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jICAgICAgfCAxMiArKy0tDQo+ID4gIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaG90cGx1Zy5jIHwgNTkgKysrKysrKysr
KysrKysrLQ0KPiA+IC0tLS0NCj4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9ob3RwbHVnLmggfCAgNSArLQ0KPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX3Nkdm8uYyAgICB8ICA4ICsrLQ0KPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rl
YnVnZnMuYyAgICAgICAgICB8ICAyICstDQo+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
ZHJ2LmggICAgICAgICAgICAgIHwgIDMgKy0NCj4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50
ZWxfZHJ2LmggICAgICAgICAgICAgfCAxMSArKystDQo+ID4gIDggZmlsZXMgY2hhbmdlZCwgODAg
aW5zZXJ0aW9ucygrKSwgMzIgZGVsZXRpb25zKC0pDQo+ID4gDQo+ID4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMNCj4gPiBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMNCj4gPiBpbmRleCA3OTI1YTE3NmY5MDAuLjUz
MDA5OTg0ZTA0NiAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2RkaS5jDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kZGkuYw0KPiA+IEBAIC00MDgxLDE0ICs0MDgxLDE2IEBAIHN0YXRpYyBpbnQgaW50ZWxfaGRt
aV9yZXNldF9saW5rKHN0cnVjdA0KPiA+IGludGVsX2VuY29kZXIgKmVuY29kZXIsDQo+ID4gIAly
ZXR1cm4gbW9kZXNldF9waXBlKCZjcnRjLT5iYXNlLCBjdHgpOw0KPiA+ICB9DQo+ID4gIA0KPiA+
IC1zdGF0aWMgYm9vbCBpbnRlbF9kZGlfaG90cGx1ZyhzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5j
b2RlciwNCj4gPiAtCQkJICAgICAgc3RydWN0IGludGVsX2Nvbm5lY3RvciAqY29ubmVjdG9yKQ0K
PiA+ICtzdGF0aWMgZW51bSBpbnRlbF9ob3RwbHVnX3N0YXRlDQo+ID4gK2ludGVsX2RkaV9ob3Rw
bHVnKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyLA0KPiA+ICsJCSAgc3RydWN0IGludGVs
X2Nvbm5lY3RvciAqY29ubmVjdG9yLA0KPiA+ICsJCSAgYm9vbCBpcnFfcmVjZWl2ZWQpDQo+ID4g
IHsNCj4gPiAgCXN0cnVjdCBkcm1fbW9kZXNldF9hY3F1aXJlX2N0eCBjdHg7DQo+ID4gLQlib29s
IGNoYW5nZWQ7DQo+ID4gKwllbnVtIGludGVsX2hvdHBsdWdfc3RhdGUgc3RhdGU7DQo+ID4gIAlp
bnQgcmV0Ow0KPiA+ICANCj4gPiAtCWNoYW5nZWQgPSBpbnRlbF9lbmNvZGVyX2hvdHBsdWcoZW5j
b2RlciwgY29ubmVjdG9yKTsNCj4gPiArCXN0YXRlID0gaW50ZWxfZW5jb2Rlcl9ob3RwbHVnKGVu
Y29kZXIsIGNvbm5lY3RvciwNCj4gPiBpcnFfcmVjZWl2ZWQpOw0KPiA+ICANCj4gPiAgCWRybV9t
b2Rlc2V0X2FjcXVpcmVfaW5pdCgmY3R4LCAwKTsNCj4gPiAgDQo+ID4gQEAgLTQxMTAsNyArNDEx
Miw3IEBAIHN0YXRpYyBib29sIGludGVsX2RkaV9ob3RwbHVnKHN0cnVjdA0KPiA+IGludGVsX2Vu
Y29kZXIgKmVuY29kZXIsDQo+ID4gIAlkcm1fbW9kZXNldF9hY3F1aXJlX2ZpbmkoJmN0eCk7DQo+
ID4gIAlXQVJOKHJldCwgIkFjcXVpcmluZyBtb2Rlc2V0IGxvY2tzIGZhaWxlZCB3aXRoICVpXG4i
LCByZXQpOw0KPiA+ICANCj4gPiAtCXJldHVybiBjaGFuZ2VkOw0KPiA+ICsJcmV0dXJuIHN0YXRl
Ow0KPiA+ICB9DQo+ID4gIA0KPiA+ICBzdGF0aWMgc3RydWN0IGludGVsX2Nvbm5lY3RvciAqDQo+
ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYw0K
PiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jDQo+ID4gaW5kZXgg
NDMzNmRmNDZmZTc4Li45NWQwZGE5ZDFiYWMgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kcC5jDQo+ID4gQEAgLTQ4NzgsMTQgKzQ4NzgsMTYgQEAgaW50IGlu
dGVsX2RwX3JldHJhaW5fbGluayhzdHJ1Y3QNCj4gPiBpbnRlbF9lbmNvZGVyICplbmNvZGVyLA0K
PiA+ICAgKiByZXRyYWluIHRoZSBsaW5rIHRvIGdldCBhIHBpY3R1cmUuIFRoYXQncyBpbiBjYXNl
IG5vDQo+ID4gICAqIHVzZXJzcGFjZSBjb21wb25lbnQgcmVhY3RlZCB0byBpbnRlcm1pdHRlbnQg
SFBEIGRpcC4NCj4gPiAgICovDQo+ID4gLXN0YXRpYyBib29sIGludGVsX2RwX2hvdHBsdWcoc3Ry
dWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsDQo+ID4gLQkJCSAgICAgc3RydWN0IGludGVsX2Nv
bm5lY3RvciAqY29ubmVjdG9yKQ0KPiA+ICtzdGF0aWMgZW51bSBpbnRlbF9ob3RwbHVnX3N0YXRl
DQo+ID4gK2ludGVsX2RwX2hvdHBsdWcoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsDQo+
ID4gKwkJIHN0cnVjdCBpbnRlbF9jb25uZWN0b3IgKmNvbm5lY3RvciwNCj4gPiArCQkgYm9vbCBp
cnFfcmVjZWl2ZWQpDQo+ID4gIHsNCj4gPiAgCXN0cnVjdCBkcm1fbW9kZXNldF9hY3F1aXJlX2N0
eCBjdHg7DQo+ID4gLQlib29sIGNoYW5nZWQ7DQo+ID4gKwllbnVtIGludGVsX2hvdHBsdWdfc3Rh
dGUgc3RhdGU7DQo+ID4gIAlpbnQgcmV0Ow0KPiA+ICANCj4gPiAtCWNoYW5nZWQgPSBpbnRlbF9l
bmNvZGVyX2hvdHBsdWcoZW5jb2RlciwgY29ubmVjdG9yKTsNCj4gPiArCXN0YXRlID0gaW50ZWxf
ZW5jb2Rlcl9ob3RwbHVnKGVuY29kZXIsIGNvbm5lY3RvciwNCj4gPiBpcnFfcmVjZWl2ZWQpOw0K
PiA+ICANCj4gPiAgCWRybV9tb2Rlc2V0X2FjcXVpcmVfaW5pdCgmY3R4LCAwKTsNCj4gPiAgDQo+
ID4gQEAgLTQ5MDQsNyArNDkwNiw3IEBAIHN0YXRpYyBib29sIGludGVsX2RwX2hvdHBsdWcoc3Ry
dWN0DQo+ID4gaW50ZWxfZW5jb2RlciAqZW5jb2RlciwNCj4gPiAgCWRybV9tb2Rlc2V0X2FjcXVp
cmVfZmluaSgmY3R4KTsNCj4gPiAgCVdBUk4ocmV0LCAiQWNxdWlyaW5nIG1vZGVzZXQgbG9ja3Mg
ZmFpbGVkIHdpdGggJWlcbiIsIHJldCk7DQo+ID4gIA0KPiA+IC0JcmV0dXJuIGNoYW5nZWQ7DQo+
ID4gKwlyZXR1cm4gc3RhdGU7DQo+ID4gIH0NCj4gPiAgDQo+ID4gIHN0YXRpYyB2b2lkIGludGVs
X2RwX2NoZWNrX3NlcnZpY2VfaXJxKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApDQo+ID4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaG90cGx1Zy5jDQo+
ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hvdHBsdWcuYw0KPiA+IGlu
ZGV4IGVhM2RlNGFjYzg1MC4uMzY2Mjk2NmQzNjZlIDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaG90cGx1Zy5jDQo+ID4gKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9ob3RwbHVnLmMNCj4gPiBAQCAtMTEyLDYgKzExMiw3
IEBAIGVudW0gaHBkX3BpbiBpbnRlbF9ocGRfcGluX2RlZmF1bHQoc3RydWN0DQo+ID4gZHJtX2k5
MTVfcHJpdmF0ZSAqZGV2X3ByaXYsDQo+ID4gIA0KPiA+ICAjZGVmaW5lIEhQRF9TVE9STV9ERVRF
Q1RfUEVSSU9ECQkxMDAwDQo+ID4gICNkZWZpbmUgSFBEX1NUT1JNX1JFRU5BQkxFX0RFTEFZCSgy
ICogNjAgKiAxMDAwKQ0KPiA+ICsjZGVmaW5lIEhQRF9SRVRSWV9ERUxBWQkJCTEwMDANCj4gPiAg
DQo+ID4gIC8qKg0KPiA+ICAgKiBpbnRlbF9ocGRfaXJxX3N0b3JtX2RldGVjdCAtIGdhdGhlciBz
dGF0cyBhbmQgZGV0ZWN0IEhQRCBJUlENCj4gPiBzdG9ybSBvbiBhIHBpbg0KPiA+IEBAIC0yNjYs
OCArMjY3LDEwIEBAIHN0YXRpYyB2b2lkDQo+ID4gaW50ZWxfaHBkX2lycV9zdG9ybV9yZWVuYWJs
ZV93b3JrKHN0cnVjdCB3b3JrX3N0cnVjdCAqd29yaykNCj4gPiAgCWludGVsX3J1bnRpbWVfcG1f
cHV0KCZkZXZfcHJpdi0+cnVudGltZV9wbSwgd2FrZXJlZik7DQo+ID4gIH0NCj4gPiAgDQo+ID4g
LWJvb2wgaW50ZWxfZW5jb2Rlcl9ob3RwbHVnKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVy
LA0KPiA+IC0JCQkgICBzdHJ1Y3QgaW50ZWxfY29ubmVjdG9yICpjb25uZWN0b3IpDQo+ID4gK2Vu
dW0gaW50ZWxfaG90cGx1Z19zdGF0ZQ0KPiA+ICtpbnRlbF9lbmNvZGVyX2hvdHBsdWcoc3RydWN0
IGludGVsX2VuY29kZXIgKmVuY29kZXIsDQo+ID4gKwkJICAgICAgc3RydWN0IGludGVsX2Nvbm5l
Y3RvciAqY29ubmVjdG9yLA0KPiA+ICsJCSAgICAgIGJvb2wgaXJxX3JlY2VpdmVkKQ0KPiA+ICB7
DQo+ID4gIAlzdHJ1Y3QgZHJtX2RldmljZSAqZGV2ID0gY29ubmVjdG9yLT5iYXNlLmRldjsNCj4g
PiAgCWVudW0gZHJtX2Nvbm5lY3Rvcl9zdGF0dXMgb2xkX3N0YXR1czsNCj4gPiBAQCAtMjc5LDcg
KzI4Miw3IEBAIGJvb2wgaW50ZWxfZW5jb2Rlcl9ob3RwbHVnKHN0cnVjdCBpbnRlbF9lbmNvZGVy
DQo+ID4gKmVuY29kZXIsDQo+ID4gIAkJZHJtX2hlbHBlcl9wcm9iZV9kZXRlY3QoJmNvbm5lY3Rv
ci0+YmFzZSwgTlVMTCwgZmFsc2UpOw0KPiA+ICANCj4gPiAgCWlmIChvbGRfc3RhdHVzID09IGNv
bm5lY3Rvci0+YmFzZS5zdGF0dXMpDQo+ID4gLQkJcmV0dXJuIGZhbHNlOw0KPiA+ICsJCXJldHVy
biBJTlRFTF9IT1RQTFVHX05PQ0hBTkdFOw0KPiA+ICANCj4gPiAgCURSTV9ERUJVR19LTVMoIltD
T05ORUNUT1I6JWQ6JXNdIHN0YXR1cyB1cGRhdGVkIGZyb20gJXMgdG8NCj4gPiAlc1xuIiwNCj4g
PiAgCQkgICAgICBjb25uZWN0b3ItPmJhc2UuYmFzZS5pZCwNCj4gPiBAQCAtMjg3LDcgKzI5MCw3
IEBAIGJvb2wgaW50ZWxfZW5jb2Rlcl9ob3RwbHVnKHN0cnVjdCBpbnRlbF9lbmNvZGVyDQo+ID4g
KmVuY29kZXIsDQo+ID4gIAkJICAgICAgZHJtX2dldF9jb25uZWN0b3Jfc3RhdHVzX25hbWUob2xk
X3N0YXR1cyksDQo+ID4gIAkJICAgICAgZHJtX2dldF9jb25uZWN0b3Jfc3RhdHVzX25hbWUoY29u
bmVjdG9yLQ0KPiA+ID5iYXNlLnN0YXR1cykpOw0KPiA+ICANCj4gPiAtCXJldHVybiB0cnVlOw0K
PiA+ICsJcmV0dXJuIElOVEVMX0hPVFBMVUdfQ0hBTkdFRDsNCj4gPiAgfQ0KPiA+ICANCj4gPiAg
c3RhdGljIGJvb2wgaW50ZWxfZW5jb2Rlcl9oYXNfaHBkX3B1bHNlKHN0cnVjdCBpbnRlbF9lbmNv
ZGVyDQo+ID4gKmVuY29kZXIpDQo+ID4gQEAgLTMzOSw3ICszNDIsNyBAQCBzdGF0aWMgdm9pZCBp
OTE1X2RpZ3BvcnRfd29ya19mdW5jKHN0cnVjdA0KPiA+IHdvcmtfc3RydWN0ICp3b3JrKQ0KPiA+
ICAJCXNwaW5fbG9ja19pcnEoJmRldl9wcml2LT5pcnFfbG9jayk7DQo+ID4gIAkJZGV2X3ByaXYt
PmhvdHBsdWcuZXZlbnRfYml0cyB8PSBvbGRfYml0czsNCj4gPiAgCQlzcGluX3VubG9ja19pcnEo
JmRldl9wcml2LT5pcnFfbG9jayk7DQo+ID4gLQkJc2NoZWR1bGVfd29yaygmZGV2X3ByaXYtPmhv
dHBsdWcuaG90cGx1Z193b3JrKTsNCj4gPiArCQlzY2hlZHVsZV9kZWxheWVkX3dvcmsoJmRldl9w
cml2LT5ob3RwbHVnLmhvdHBsdWdfd29yaywNCj4gPiAwKTsNCj4gPiAgCX0NCj4gPiAgfQ0KPiA+
ICANCj4gPiBAQCAtMzQ5LDE0ICszNTIsMTYgQEAgc3RhdGljIHZvaWQgaTkxNV9kaWdwb3J0X3dv
cmtfZnVuYyhzdHJ1Y3QNCj4gPiB3b3JrX3N0cnVjdCAqd29yaykNCj4gPiAgc3RhdGljIHZvaWQg
aTkxNV9ob3RwbHVnX3dvcmtfZnVuYyhzdHJ1Y3Qgd29ya19zdHJ1Y3QgKndvcmspDQo+ID4gIHsN
Cj4gPiAgCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9DQo+ID4gLQkJY29udGFp
bmVyX29mKHdvcmssIHN0cnVjdCBkcm1faTkxNV9wcml2YXRlLA0KPiA+IGhvdHBsdWcuaG90cGx1
Z193b3JrKTsNCj4gPiArCQljb250YWluZXJfb2Yod29yaywgc3RydWN0IGRybV9pOTE1X3ByaXZh
dGUsDQo+ID4gKwkJCSAgICAgaG90cGx1Zy5ob3RwbHVnX3dvcmsud29yayk7DQo+ID4gIAlzdHJ1
Y3QgZHJtX2RldmljZSAqZGV2ID0gJmRldl9wcml2LT5kcm07DQo+ID4gIAlzdHJ1Y3QgaW50ZWxf
Y29ubmVjdG9yICppbnRlbF9jb25uZWN0b3I7DQo+ID4gIAlzdHJ1Y3QgaW50ZWxfZW5jb2RlciAq
aW50ZWxfZW5jb2RlcjsNCj4gPiAgCXN0cnVjdCBkcm1fY29ubmVjdG9yICpjb25uZWN0b3I7DQo+
ID4gIAlzdHJ1Y3QgZHJtX2Nvbm5lY3Rvcl9saXN0X2l0ZXIgY29ubl9pdGVyOw0KPiA+IC0JYm9v
bCBjaGFuZ2VkID0gZmFsc2U7DQo+ID4gKwl1MzIgY2hhbmdlZCA9IDAsIHJldHJ5ID0gMDsNCj4g
PiAgCXUzMiBocGRfZXZlbnRfYml0czsNCj4gPiArCXUzMiBocGRfcmV0cnlfYml0czsNCj4gPiAg
DQo+ID4gIAltdXRleF9sb2NrKCZkZXYtPm1vZGVfY29uZmlnLm11dGV4KTsNCj4gPiAgCURSTV9E
RUJVR19LTVMoInJ1bm5pbmcgZW5jb2RlciBob3RwbHVnIGZ1bmN0aW9uc1xuIik7DQo+ID4gQEAg
LTM2NSw2ICszNzAsOCBAQCBzdGF0aWMgdm9pZCBpOTE1X2hvdHBsdWdfd29ya19mdW5jKHN0cnVj
dA0KPiA+IHdvcmtfc3RydWN0ICp3b3JrKQ0KPiA+ICANCj4gPiAgCWhwZF9ldmVudF9iaXRzID0g
ZGV2X3ByaXYtPmhvdHBsdWcuZXZlbnRfYml0czsNCj4gPiAgCWRldl9wcml2LT5ob3RwbHVnLmV2
ZW50X2JpdHMgPSAwOw0KPiA+ICsJaHBkX3JldHJ5X2JpdHMgPSBkZXZfcHJpdi0+aG90cGx1Zy5y
ZXRyeV9iaXRzOw0KPiA+ICsJZGV2X3ByaXYtPmhvdHBsdWcucmV0cnlfYml0cyA9IDA7DQo+ID4g
IA0KPiA+ICAJLyogRW5hYmxlIHBvbGxpbmcgZm9yIGNvbm5lY3RvcnMgd2hpY2ggaGFkIEhQRCBJ
UlEgc3Rvcm1zICovDQo+ID4gIAlpbnRlbF9ocGRfaXJxX3N0b3JtX3N3aXRjaF90b19wb2xsaW5n
KGRldl9wcml2KTsNCj4gPiBAQCAtMzczLDE2ICszODAsMjkgQEAgc3RhdGljIHZvaWQgaTkxNV9o
b3RwbHVnX3dvcmtfZnVuYyhzdHJ1Y3QNCj4gPiB3b3JrX3N0cnVjdCAqd29yaykNCj4gPiAgDQo+
ID4gIAlkcm1fY29ubmVjdG9yX2xpc3RfaXRlcl9iZWdpbihkZXYsICZjb25uX2l0ZXIpOw0KPiA+
ICAJZHJtX2Zvcl9lYWNoX2Nvbm5lY3Rvcl9pdGVyKGNvbm5lY3RvciwgJmNvbm5faXRlcikgew0K
PiA+ICsJCXUzMiBocGRfYml0Ow0KPiA+ICsNCj4gPiAgCQlpbnRlbF9jb25uZWN0b3IgPSB0b19p
bnRlbF9jb25uZWN0b3IoY29ubmVjdG9yKTsNCj4gPiAgCQlpZiAoIWludGVsX2Nvbm5lY3Rvci0+
ZW5jb2RlcikNCj4gPiAgCQkJY29udGludWU7DQo+ID4gIAkJaW50ZWxfZW5jb2RlciA9IGludGVs
X2Nvbm5lY3Rvci0+ZW5jb2RlcjsNCj4gPiAtCQlpZiAoaHBkX2V2ZW50X2JpdHMgJiAoMSA8PCBp
bnRlbF9lbmNvZGVyLT5ocGRfcGluKSkgew0KPiA+ICsJCWhwZF9iaXQgPSBCSVQoaW50ZWxfZW5j
b2Rlci0+aHBkX3Bpbik7DQo+ID4gKwkJaWYgKChocGRfZXZlbnRfYml0cyB8IGhwZF9yZXRyeV9i
aXRzKSAmIGhwZF9iaXQpIHsNCj4gPiAgCQkJRFJNX0RFQlVHX0tNUygiQ29ubmVjdG9yICVzIChw
aW4gJWkpIHJlY2VpdmVkDQo+ID4gaG90cGx1ZyBldmVudC5cbiIsDQo+ID4gIAkJCQkgICAgICBj
b25uZWN0b3ItPm5hbWUsIGludGVsX2VuY29kZXItDQo+ID4gPmhwZF9waW4pOw0KPiA+ICANCj4g
PiAtCQkJY2hhbmdlZCB8PSBpbnRlbF9lbmNvZGVyLQ0KPiA+ID5ob3RwbHVnKGludGVsX2VuY29k
ZXIsDQo+ID4gLQkJCQkJCQkgIGludGVsX2Nvbm5lY3QNCj4gPiBvcik7DQo+ID4gKwkJCXN3aXRj
aCAoaW50ZWxfZW5jb2Rlci0+aG90cGx1ZyhpbnRlbF9lbmNvZGVyLA0KPiA+ICsJCQkJCQkgICAg
ICAgaW50ZWxfY29ubmVjdG9yLA0KPiA+ICsJCQkJCQkgICAgICAgaHBkX2V2ZW50X2JpdHMgJg0K
PiA+IGhwZF9iaXQpKSB7DQo+ID4gKwkJCWNhc2UgSU5URUxfSE9UUExVR19OT0NIQU5HRToNCj4g
PiArCQkJCWJyZWFrOw0KPiA+ICsJCQljYXNlIElOVEVMX0hPVFBMVUdfQ0hBTkdFRDoNCj4gPiAr
CQkJCWNoYW5nZWQgfD0gaHBkX2JpdDsNCj4gPiArCQkJCWJyZWFrOw0KPiA+ICsJCQljYXNlIElO
VEVMX0hPVFBMVUdfUkVUUlk6DQo+ID4gKwkJCQlyZXRyeSB8PSBocGRfYml0Ow0KPiA+ICsJCQkJ
YnJlYWs7DQo+ID4gKwkJCX0NCj4gPiAgCQl9DQo+ID4gIAl9DQo+ID4gIAlkcm1fY29ubmVjdG9y
X2xpc3RfaXRlcl9lbmQoJmNvbm5faXRlcik7DQo+ID4gQEAgLTM5MCw2ICs0MTAsMTcgQEAgc3Rh
dGljIHZvaWQgaTkxNV9ob3RwbHVnX3dvcmtfZnVuYyhzdHJ1Y3QNCj4gPiB3b3JrX3N0cnVjdCAq
d29yaykNCj4gPiAgDQo+ID4gIAlpZiAoY2hhbmdlZCkNCj4gPiAgCQlkcm1fa21zX2hlbHBlcl9o
b3RwbHVnX2V2ZW50KGRldik7DQo+ID4gKw0KPiA+ICsJLyogUmVtb3ZlIHNoYXJlZCBIUEQgcGlu
cyB0aGF0IGhhdmUgY2hhbmdlZCAqLw0KPiA+ICsJcmV0cnkgJj0gfmNoYW5nZWQ7DQo+ID4gKwlp
ZiAocmV0cnkpIHsNCj4gPiArCQlzcGluX2xvY2tfaXJxKCZkZXZfcHJpdi0+aXJxX2xvY2spOw0K
PiA+ICsJCWRldl9wcml2LT5ob3RwbHVnLnJldHJ5X2JpdHMgfD0gcmV0cnk7DQo+ID4gKwkJc3Bp
bl91bmxvY2tfaXJxKCZkZXZfcHJpdi0+aXJxX2xvY2spOw0KPiA+ICsNCj4gPiArCQltb2RfZGVs
YXllZF93b3JrKHN5c3RlbV93cSwgJmRldl9wcml2LQ0KPiA+ID5ob3RwbHVnLmhvdHBsdWdfd29y
aywNCj4gPiArCQkJCSBtc2Vjc190b19qaWZmaWVzKEhQRF9SRVRSWV9ERUxBWSkpOw0KPiA+ICsJ
fQ0KPiA+ICB9DQo+ID4gIA0KPiA+ICANCj4gPiBAQCAtNTE2LDcgKzU0Nyw3IEBAIHZvaWQgaW50
ZWxfaHBkX2lycV9oYW5kbGVyKHN0cnVjdA0KPiA+IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2
LA0KPiA+ICAJaWYgKHF1ZXVlX2RpZykNCj4gPiAgCQlxdWV1ZV93b3JrKGRldl9wcml2LT5ob3Rw
bHVnLmRwX3dxLCAmZGV2X3ByaXYtDQo+ID4gPmhvdHBsdWcuZGlnX3BvcnRfd29yayk7DQo+ID4g
IAlpZiAocXVldWVfaHApDQo+ID4gLQkJc2NoZWR1bGVfd29yaygmZGV2X3ByaXYtPmhvdHBsdWcu
aG90cGx1Z193b3JrKTsNCj4gPiArCQlzY2hlZHVsZV9kZWxheWVkX3dvcmsoJmRldl9wcml2LT5o
b3RwbHVnLmhvdHBsdWdfd29yaywNCj4gPiAwKTsNCj4gPiAgfQ0KPiA+ICANCj4gPiAgLyoqDQo+
ID4gQEAgLTYzNiw3ICs2NjcsOCBAQCB2b2lkIGludGVsX2hwZF9wb2xsX2luaXQoc3RydWN0DQo+
ID4gZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpDQo+ID4gIA0KPiA+ICB2b2lkIGludGVsX2hw
ZF9pbml0X3dvcmsoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQ0KPiA+ICB7DQo+
ID4gLQlJTklUX1dPUksoJmRldl9wcml2LT5ob3RwbHVnLmhvdHBsdWdfd29yaywNCj4gPiBpOTE1
X2hvdHBsdWdfd29ya19mdW5jKTsNCj4gPiArCUlOSVRfREVMQVlFRF9XT1JLKCZkZXZfcHJpdi0+
aG90cGx1Zy5ob3RwbHVnX3dvcmssDQo+ID4gKwkJCSAgaTkxNV9ob3RwbHVnX3dvcmtfZnVuYyk7
DQo+ID4gIAlJTklUX1dPUksoJmRldl9wcml2LT5ob3RwbHVnLmRpZ19wb3J0X3dvcmssDQo+ID4g
aTkxNV9kaWdwb3J0X3dvcmtfZnVuYyk7DQo+ID4gIAlJTklUX1dPUksoJmRldl9wcml2LT5ob3Rw
bHVnLnBvbGxfaW5pdF93b3JrLA0KPiA+IGk5MTVfaHBkX3BvbGxfaW5pdF93b3JrKTsNCj4gPiAg
CUlOSVRfREVMQVlFRF9XT1JLKCZkZXZfcHJpdi0+aG90cGx1Zy5yZWVuYWJsZV93b3JrLA0KPiA+
IEBAIC02NTAsMTEgKzY4MiwxMiBAQCB2b2lkIGludGVsX2hwZF9jYW5jZWxfd29yayhzdHJ1Y3QN
Cj4gPiBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikNCj4gPiAgCWRldl9wcml2LT5ob3RwbHVn
LmxvbmdfcG9ydF9tYXNrID0gMDsNCj4gPiAgCWRldl9wcml2LT5ob3RwbHVnLnNob3J0X3BvcnRf
bWFzayA9IDA7DQo+ID4gIAlkZXZfcHJpdi0+aG90cGx1Zy5ldmVudF9iaXRzID0gMDsNCj4gPiAr
CWRldl9wcml2LT5ob3RwbHVnLnJldHJ5X2JpdHMgPSAwOw0KPiA+ICANCj4gPiAgCXNwaW5fdW5s
b2NrX2lycSgmZGV2X3ByaXYtPmlycV9sb2NrKTsNCj4gPiAgDQo+ID4gIAljYW5jZWxfd29ya19z
eW5jKCZkZXZfcHJpdi0+aG90cGx1Zy5kaWdfcG9ydF93b3JrKTsNCj4gPiAtCWNhbmNlbF93b3Jr
X3N5bmMoJmRldl9wcml2LT5ob3RwbHVnLmhvdHBsdWdfd29yayk7DQo+ID4gKwljYW5jZWxfZGVs
YXllZF93b3JrX3N5bmMoJmRldl9wcml2LT5ob3RwbHVnLmhvdHBsdWdfd29yayk7DQo+ID4gIAlj
YW5jZWxfd29ya19zeW5jKCZkZXZfcHJpdi0+aG90cGx1Zy5wb2xsX2luaXRfd29yayk7DQo+ID4g
IAljYW5jZWxfZGVsYXllZF93b3JrX3N5bmMoJmRldl9wcml2LT5ob3RwbHVnLnJlZW5hYmxlX3dv
cmspOw0KPiA+ICB9DQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfaG90cGx1Zy5oDQo+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2hvdHBsdWcuaA0KPiA+IGluZGV4IDgwNWY4OTdkYmI3YS4uYjBjZDQ0N2I3ZmJjIDEwMDY0
NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaG90cGx1Zy5o
DQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9ob3RwbHVnLmgN
Cj4gPiBAQCAtMTUsOCArMTUsOSBAQCBzdHJ1Y3QgaW50ZWxfY29ubmVjdG9yOw0KPiA+ICBzdHJ1
Y3QgaW50ZWxfZW5jb2RlcjsNCj4gPiAgDQo+ID4gIHZvaWQgaW50ZWxfaHBkX3BvbGxfaW5pdChz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpOw0KPiA+IC1ib29sIGludGVsX2VuY29k
ZXJfaG90cGx1ZyhzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwNCj4gPiAtCQkJICAgc3Ry
dWN0IGludGVsX2Nvbm5lY3RvciAqY29ubmVjdG9yKTsNCj4gPiArZW51bSBpbnRlbF9ob3RwbHVn
X3N0YXRlIGludGVsX2VuY29kZXJfaG90cGx1ZyhzdHJ1Y3QNCj4gPiBpbnRlbF9lbmNvZGVyICpl
bmNvZGVyLA0KPiA+ICsJCQkJCSAgICAgICBzdHJ1Y3QgaW50ZWxfY29ubmVjdG9yDQo+ID4gKmNv
bm5lY3RvciwNCj4gPiArCQkJCQkgICAgICAgYm9vbCBpcnFfcmVjZWl2ZWQpOw0KPiA+ICB2b2lk
IGludGVsX2hwZF9pcnFfaGFuZGxlcihzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYs
DQo+ID4gIAkJCSAgIHUzMiBwaW5fbWFzaywgdTMyIGxvbmdfbWFzayk7DQo+ID4gIHZvaWQgaW50
ZWxfaHBkX2luaXQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KTsNCj4gPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9zZHZvLmMNCj4gPiBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfc2R2by5jDQo+ID4gaW5kZXggY2Vk
YTAzZTVhM2Q0Li4yODU1ZjE0ZjU3NDYgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9zZHZvLmMNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX3Nkdm8uYw0KPiA+IEBAIC0xODkzLDEyICsxODkzLDE0IEBAIHN0YXRp
YyB2b2lkDQo+ID4gaW50ZWxfc2R2b19lbmFibGVfaG90cGx1ZyhzdHJ1Y3QgaW50ZWxfZW5jb2Rl
ciAqZW5jb2RlcikNCj4gPiAgCQkJICAgICAmaW50ZWxfc2R2by0+aG90cGx1Z19hY3RpdmUsIDIp
Ow0KPiA+ICB9DQo+ID4gIA0KPiA+IC1zdGF0aWMgYm9vbCBpbnRlbF9zZHZvX2hvdHBsdWcoc3Ry
dWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsDQo+ID4gLQkJCSAgICAgICBzdHJ1Y3QgaW50ZWxf
Y29ubmVjdG9yICpjb25uZWN0b3IpDQo+ID4gK3N0YXRpYyBlbnVtIGludGVsX2hvdHBsdWdfc3Rh
dGUNCj4gPiAraW50ZWxfc2R2b19ob3RwbHVnKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVy
LA0KPiA+ICsJCSAgIHN0cnVjdCBpbnRlbF9jb25uZWN0b3IgKmNvbm5lY3RvciwNCj4gPiArCQkg
ICBib29sIGlycV9yZWNlaXZlZCkNCj4gPiAgew0KPiA+ICAJaW50ZWxfc2R2b19lbmFibGVfaG90
cGx1ZyhlbmNvZGVyKTsNCj4gPiAgDQo+ID4gLQlyZXR1cm4gaW50ZWxfZW5jb2Rlcl9ob3RwbHVn
KGVuY29kZXIsIGNvbm5lY3Rvcik7DQo+ID4gKwlyZXR1cm4gaW50ZWxfZW5jb2Rlcl9ob3RwbHVn
KGVuY29kZXIsIGNvbm5lY3RvciwgaXJxX3JlY2VpdmVkKTsNCj4gPiAgfQ0KPiA+ICANCj4gPiAg
c3RhdGljIGJvb2wNCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9k
ZWJ1Z2ZzLmMNCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZGVidWdmcy5jDQo+ID4g
aW5kZXggZWVlY2RhZDBlM2NhLi44MzY3MDllZTlmZjcgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9kZWJ1Z2ZzLmMNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X2RlYnVnZnMuYw0KPiA+IEBAIC00MDgzLDcgKzQwODMsNyBAQCBzdGF0aWMgaW50
IGk5MTVfaHBkX3N0b3JtX2N0bF9zaG93KHN0cnVjdA0KPiA+IHNlcV9maWxlICptLCB2b2lkICpk
YXRhKQ0KPiA+ICAJICovDQo+ID4gIAlzeW5jaHJvbml6ZV9pcnEoZGV2X3ByaXYtPmRybS5pcnEp
Ow0KPiA+ICAJZmx1c2hfd29yaygmZGV2X3ByaXYtPmhvdHBsdWcuZGlnX3BvcnRfd29yayk7DQo+
ID4gLQlmbHVzaF93b3JrKCZkZXZfcHJpdi0+aG90cGx1Zy5ob3RwbHVnX3dvcmspOw0KPiA+ICsJ
Zmx1c2hfZGVsYXllZF93b3JrKCZkZXZfcHJpdi0+aG90cGx1Zy5ob3RwbHVnX3dvcmspOw0KPiA+
ICANCj4gPiAgCXNlcV9wcmludGYobSwgIlRocmVzaG9sZDogJWRcbiIsIGhvdHBsdWctPmhwZF9z
dG9ybV90aHJlc2hvbGQpOw0KPiA+ICAJc2VxX3ByaW50ZihtLCAiRGV0ZWN0ZWQ6ICVzXG4iLA0K
PiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oDQo+ID4gYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oDQo+ID4gaW5kZXggN2U5ODFiMDNmYWNlLi5k
MjQwOTk3OTEyZDAgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9k
cnYuaA0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgNCj4gPiBAQCAt
MTYzLDcgKzE2Myw3IEBAIGVudW0gaHBkX3BpbiB7DQo+ID4gICNkZWZpbmUgSFBEX1NUT1JNX0RF
RkFVTFRfVEhSRVNIT0xEIDUwDQo+ID4gIA0KPiA+ICBzdHJ1Y3QgaTkxNV9ob3RwbHVnIHsNCj4g
PiAtCXN0cnVjdCB3b3JrX3N0cnVjdCBob3RwbHVnX3dvcms7DQo+ID4gKwlzdHJ1Y3QgZGVsYXll
ZF93b3JrIGhvdHBsdWdfd29yazsNCj4gPiAgDQo+ID4gIAlzdHJ1Y3Qgew0KPiA+ICAJCXVuc2ln
bmVkIGxvbmcgbGFzdF9qaWZmaWVzOw0KPiA+IEBAIC0xNzUsNiArMTc1LDcgQEAgc3RydWN0IGk5
MTVfaG90cGx1ZyB7DQo+ID4gIAkJfSBzdGF0ZTsNCj4gPiAgCX0gc3RhdHNbSFBEX05VTV9QSU5T
XTsNCj4gPiAgCXUzMiBldmVudF9iaXRzOw0KPiA+ICsJdTMyIHJldHJ5X2JpdHM7DQo+ID4gIAlz
dHJ1Y3QgZGVsYXllZF93b3JrIHJlZW5hYmxlX3dvcms7DQo+ID4gIA0KPiA+ICAJdTMyIGxvbmdf
cG9ydF9tYXNrOw0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9k
cnYuaA0KPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZHJ2LmgNCj4gPiBpbmRleCAx
ZDU4ZjdlYzVkODQuLjAwODhlYjJmNTEwZSAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pbnRlbF9kcnYuaA0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVs
X2Rydi5oDQo+ID4gQEAgLTEwMSwxNCArMTAxLDIxIEBAIHN0cnVjdCBpbnRlbF9mYmRldiB7DQo+
ID4gIAlzdHJ1Y3QgbXV0ZXggaHBkX2xvY2s7DQo+ID4gIH07DQo+ID4gIA0KPiA+ICtlbnVtIGlu
dGVsX2hvdHBsdWdfc3RhdGUgew0KPiA+ICsJSU5URUxfSE9UUExVR19OT0NIQU5HRSwNCj4gPiAr
CUlOVEVMX0hPVFBMVUdfQ0hBTkdFRCwNCj4gDQo+IG15IG9ubHkgYmlrZXNoZWQgd291bGQgYmUg
dG8ga2VlcCB0aGlzIHN5bW1ldHJpYy4uLg0KPiBuby1jaGFuZ2UgY2hhbmdlIG9yIHByZWZlcmFi
bHkgdW5jaGFuZ2VkIGNoYW5nZWQuDQo+IA0KPiBCdXQgZXZlcnl0aGluZyBzZWVtcyByaWdodCBz
byBsZXQncyBtb3ZlDQoNCkp1c3Qgc2VudCBhIG5ldyB2ZXJzaW9uIHJlcGxhY2luZyBub2NoYW5n
ZSB0byB1bmNoYW5nZWQgYW5kIGFkZGVkIHlvdXINCnItdi1iLg0KDQpUaGFua3MNCg0KPiANCj4g
UmV2aWV3ZWQtYnk6IFJvZHJpZ28gVml2aSA8cm9kcmlnby52aXZpQGludGVsLmNvbT4NCj4gDQo+
ID4gKwlJTlRFTF9IT1RQTFVHX1JFVFJZLA0KPiA+ICt9Ow0KPiA+ICsNCj4gPiAgc3RydWN0IGlu
dGVsX2VuY29kZXIgew0KPiA+ICAJc3RydWN0IGRybV9lbmNvZGVyIGJhc2U7DQo+ID4gIA0KPiA+
ICAJZW51bSBpbnRlbF9vdXRwdXRfdHlwZSB0eXBlOw0KPiA+ICAJZW51bSBwb3J0IHBvcnQ7DQo+
ID4gIAl1bnNpZ25lZCBpbnQgY2xvbmVhYmxlOw0KPiA+IC0JYm9vbCAoKmhvdHBsdWcpKHN0cnVj
dCBpbnRlbF9lbmNvZGVyICplbmNvZGVyLA0KPiA+IC0JCQlzdHJ1Y3QgaW50ZWxfY29ubmVjdG9y
ICpjb25uZWN0b3IpOw0KPiA+ICsJZW51bSBpbnRlbF9ob3RwbHVnX3N0YXRlICgqaG90cGx1Zyko
c3RydWN0IGludGVsX2VuY29kZXINCj4gPiAqZW5jb2RlciwNCj4gPiArCQkJCQkgICAgc3RydWN0
IGludGVsX2Nvbm5lY3Rvcg0KPiA+ICpjb25uZWN0b3IsDQo+ID4gKwkJCQkJICAgIGJvb2wgaXJx
X3JlY2VpdmVkKTsNCj4gPiAgCWVudW0gaW50ZWxfb3V0cHV0X3R5cGUgKCpjb21wdXRlX291dHB1
dF90eXBlKShzdHJ1Y3QNCj4gPiBpbnRlbF9lbmNvZGVyICosDQo+ID4gIAkJCQkJCSAgICAgIHN0
cnVjdA0KPiA+IGludGVsX2NydGNfc3RhdGUgKiwNCj4gPiAgCQkJCQkJICAgICAgc3RydWN0DQo+
ID4gZHJtX2Nvbm5lY3Rvcl9zdGF0ZSAqKTsNCj4gPiAtLSANCj4gPiAyLjIyLjANCj4gPiANCj4g
PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KPiA+IElu
dGVsLWdmeCBtYWlsaW5nIGxpc3QNCj4gPiBJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
DQo+ID4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZngNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
