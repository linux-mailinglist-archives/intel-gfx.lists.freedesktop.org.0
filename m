Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E0B8A2CAA02
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Dec 2020 18:44:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 089F66E871;
	Tue,  1 Dec 2020 17:44:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E14876E871
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Dec 2020 17:44:27 +0000 (UTC)
IronPort-SDR: xzRYTdm8nsVazB60KDWPHhKM0kQDgjmxdUwdKAdoPGtHp3/CgMH00AEI9rb6fAMe7+MrhEIVST
 EfAl+HLFQi2Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9822"; a="173034139"
X-IronPort-AV: E=Sophos;i="5.78,384,1599548400"; d="scan'208";a="173034139"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2020 09:44:26 -0800
IronPort-SDR: jtSiODrnDLsBjI7t1Y78hGEM5+uy74MI5ylpqmQmvJUUpyWtxCNlKwoKkLRXmqwBEksAViAlXC
 4+AIkRZUfQTg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,384,1599548400"; d="scan'208";a="345555285"
Received: from irsmsx602.ger.corp.intel.com ([163.33.146.8])
 by orsmga002.jf.intel.com with ESMTP; 01 Dec 2020 09:44:25 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 irsmsx602.ger.corp.intel.com (163.33.146.8) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 1 Dec 2020 17:44:24 +0000
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.1713.004;
 Tue, 1 Dec 2020 09:44:22 -0800
From: "Souza, Jose" <jose.souza@intel.com>
To: "Mun, Gwan-gyeong" <gwan-gyeong.mun@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 3/6] drm/i915/display/psr: Consider other planes to
 damaged area calculation
Thread-Index: AQHWobROB73yD8fuOE2pTdqGhvSwvqmr/dMAgABAcYCANxS0AIAAAwIA
Date: Tue, 1 Dec 2020 17:44:22 +0000
Message-ID: <c133352bfcfa8448a789999a3a47e018320667fc.camel@intel.com>
References: <20201013230121.331595-1-jose.souza@intel.com>
 <20201013230121.331595-3-jose.souza@intel.com>
 <0aa09836be51d5baf01925d270bbc71bcb81b3b6.camel@intel.com>
 <894304cd2231996264fc48079196c2b622583ba9.camel@intel.com>
 <1dc7b9db2de6f1a88d604277ad3e97816a337cfe.camel@intel.com>
In-Reply-To: <1dc7b9db2de6f1a88d604277ad3e97816a337cfe.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.132]
Content-ID: <E698BC901A88BA4C9805477EF1C5B0C5@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 3/6] drm/i915/display/psr: Consider other
 planes to damaged area calculation
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

T24gVHVlLCAyMDIwLTEyLTAxIGF0IDE3OjMzICswMDAwLCBNdW4sIEd3YW4tZ3llb25nIHdyb3Rl
Og0KPiBPbiBUdWUsIDIwMjAtMTAtMjcgYXQgMTA6MjUgLTA3MDAsIFNvdXphLCBKb3NlIHdyb3Rl
Og0KPiA+IE9uIFR1ZSwgMjAyMC0xMC0yNyBhdCAxMzozNCArMDAwMCwgTXVuLCBHd2FuLWd5ZW9u
ZyB3cm90ZToNCj4gPiA+IE9uIFR1ZSwgMjAyMC0xMC0xMyBhdCAxNjowMSAtMDcwMCwgSm9zw6kg
Um9iZXJ0byBkZSBTb3V6YSB3cm90ZToNCj4gPiA+ID4gUGxhbmVzIGNhbiBpbmRpdmlkdWFsbHkg
aGF2ZSB0cmFuc3BhcmVudCwgbW92ZSBvciBoYXZlIHZpc2liaWxpdHkNCj4gPiA+ID4gY2hhbmdl
ZCBpZiBhbnkgb2YgdGhvc2UgaGFwcGVucywgcGxhbmVzIGJlbGxvdyBpdCB3aWxsIGJlIHZpc2li
bGUNCj4gPiA+ID4gb3INCj4gPiA+ID4gaGF2ZSBtb3JlIHBpeGVscyBvZiBpdCB2aXNpYmxlIHRo
YW4gYmVmb3JlLg0KPiA+ID4gPiANCj4gPiA+ID4gVGhpcyBwYXRjaCBpcyB0YWtpbmcgY2FyZSBv
ZiB0aGlzIGNhc2UgZm9yIHNlbGVjdGl2ZSBmZXRjaCBieQ0KPiA+ID4gPiBhZGRpbmcNCj4gPiA+
ID4gdG8gZWFjaCBwbGFuZSBkYW1hZ2VkIGFyZWEgYWxsIHRoZSBpbnRlcnNlY3Rpb25zIG9mIHBs
YW5lcyBhYm92ZQ0KPiA+ID4gPiBpdA0KPiA+ID4gPiB0aGF0IG1hdGNoZXMgd2l0aCB0aGUgY2hh
cmFjdGVyaXN0aWNzIGRlc2NyaWJlZCBhYm92ZS4NCj4gPiA+ID4gDQo+ID4gPiA+IFRoZXJlIHN0
aWxsIHNvbWUgcm9vbSBmcm9tIGltcHJvdmVtZW50cyBoZXJlIGJ1dCBhdCBsZWFzdCB0aGlzDQo+
ID4gPiA+IGluaXRpYWwNCj4gPiA+ID4gdmVyc2lvbiB3aWxsIHRha2UgY2FyZSBvZiBkaXNwbGF5
IHdoYXQgaXMgZXhwZWN0ZWQgc2F2aW5nIHNvbWUNCj4gPiA+ID4gbWVtb3J5DQo+ID4gPiA+IHJl
YWRzLg0KPiA+ID4gPiANCj4gPiA+ID4gQ2M6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFs
YUBsaW51eC5pbnRlbC5jb20+DQo+ID4gPiA+IENjOiBHd2FuLWd5ZW9uZyBNdW4gPGd3YW4tZ3ll
b25nLm11bkBpbnRlbC5jb20+DQo+ID4gPiA+IFNpZ25lZC1vZmYtYnk6IEpvc8OpIFJvYmVydG8g
ZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPg0KPiA+ID4gPiAtLS0NCj4gPiA+ID4gwqBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jIHwgNjINCj4gPiA+ID4gKysr
KysrKysrKysrKysrKysrKysrKysrDQo+ID4gPiA+IMKgMSBmaWxlIGNoYW5nZWQsIDYyIGluc2Vy
dGlvbnMoKykNCj4gPiA+ID4gDQo+ID4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ID4gPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9wc3IuYw0KPiA+ID4gPiBpbmRleCAwZjFlOWYwZmE1N2YuLjkxYmE5N2Jm
NjA5YiAxMDA2NDQNCj4gPiA+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9wc3IuYw0KPiA+ID4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX3Bzci5jDQo+ID4gPiA+IEBAIC0xMjUzLDExICsxMjUzLDM4IEBAIHN0YXRpYyB2b2lkIGNs
aXBfYXJlYV91cGRhdGUoc3RydWN0DQo+ID4gPiA+IGRybV9yZWN0DQo+ID4gPiA+ICpvdmVybGFw
X2RhbWFnZV9hcmVhLA0KPiA+ID4gPiDCoAkJb3ZlcmxhcF9kYW1hZ2VfYXJlYS0+eTIgPSBkYW1h
Z2VfYXJlYS0+eTI7DQo+ID4gPiA+IMKgfQ0KPiA+ID4gPiDCoA0KPiA+ID4gPiANCj4gPiA+ID4g
DQo+ID4gPiA+IA0KPiA+ID4gPiANCj4gPiA+ID4gDQo+ID4gPiA+IA0KPiA+ID4gPiArLyogVXBk
YXRlIHBsYW5lIGRhbWFnZSBhcmVhIGlmIHBsYW5lcyBhYm92ZSBtb3ZlZCBvciBoYXZlIGFscGhh
DQo+ID4gPiA+ICovDQo+ID4gPiA+ICtzdGF0aWMgdm9pZCBwaXBlX2RpcnR5X2FyZWFzX3NldChz
dHJ1Y3QgaW50ZWxfcGxhbmVfc3RhdGUNCj4gPiA+ID4gKnBsYW5lX3N0YXRlLA0KPiA+ID4gPiAr
CQkJCSBzdHJ1Y3QgaW50ZWxfcGxhbmUgKnBsYW5lLA0KPiA+ID4gPiArCQkJCSBjb25zdCBzdHJ1
Y3QgZHJtX3JlY3QNCj4gPiA+ID4gKnBpcGVfZGlydHlfYXJlYXMsDQo+ID4gPiA+ICsJCQkJIHN0
cnVjdCBkcm1fcmVjdCAqc2VsX2ZldGNoX2FyZWEpDQo+ID4gPiA+ICt7DQo+ID4gPiA+ICsJZW51
bSBwbGFuZV9pZCBpOw0KPiA+ID4gPiArDQo+ID4gPiA+ICsJZm9yIChpID0gUExBTkVfQ1VSU09S
OyBpID4gcGxhbmUtPmlkOyBpLS0pIHsNCj4gPiA+ID4gKwkJaW50IGo7DQo+ID4gPiA+ICsNCj4g
PiA+ID4gKwkJZm9yIChqID0gMDsgaiA8IDI7IGorKykgew0KPiA+ID4gPiArCQkJc3RydWN0IGRy
bV9yZWN0IHIgPSBwaXBlX2RpcnR5X2FyZWFzW2kgKiAyICsNCj4gPiA+ID4gal07DQo+ID4gPiA+
ICsNCj4gPiA+ID4gKwkJCWlmICghZHJtX3JlY3Rfd2lkdGgoJnIpKQ0KPiA+ID4gPiArCQkJCWNv
bnRpbnVlOw0KPiA+ID4gPiArCQkJaWYgKCFkcm1fcmVjdF9pbnRlcnNlY3QoJnIsICZwbGFuZV9z
dGF0ZS0NCj4gPiA+ID4gPiB1YXBpLmRzdCkpDQo+ID4gPiA+ICsJCQkJY29udGludWU7DQo+ID4g
PiA+ICsNCj4gPiA+ID4gKwkJCXIueTEgLT0gcGxhbmVfc3RhdGUtPnVhcGkuZHN0LnkxOw0KPiA+
ID4gPiArCQkJci55MiAtPSBwbGFuZV9zdGF0ZS0+dWFwaS5kc3QueTE7DQo+ID4gPiB0eXBvIG9m
IHkyPw0KPiA+IA0KPiA+IE5vdCBhIHR5cG8gaW4gdGhpcyBjYXNlLg0KPiA+IA0KPiA+ID4gPiAr
CQkJY2xpcF9hcmVhX3VwZGF0ZShzZWxfZmV0Y2hfYXJlYSwgJnIpOw0KPiA+ID4gc2VsX2ZldGNo
X2FyZWEgaGFzIHBsYW5lIGNvb3JkaW5hdGVzLCBidXQgaXQgdHJpZWQgdG8gYXBwbHkgZHN0DQo+
ID4gPiBjb29yZGluYXRlcy4NCj4gPiANCj4gPiB0aGUgc3VidHJhY3Rpb24gYWJvdmUgaXMgY29u
dmVydGluZyBwaXBlL2RzdCBjb29yZGluYXRlcyB0byB0aGUNCj4gPiBjdXJyZW50IHBsYW5lIGNv
b3JkaW5hdGVzLiANCj4gPiANCj4gPiA+ID4gKwkJfQ0KPiA+ID4gPiArCX0NCj4gPiA+ID4gK30N
Cj4gPiA+ID4gKw0KPiA+ID4gPiDCoGludCBpbnRlbF9wc3IyX3NlbF9mZXRjaF91cGRhdGUoc3Ry
dWN0IGludGVsX2F0b21pY19zdGF0ZQ0KPiA+ID4gPiAqc3RhdGUsDQo+ID4gPiA+IMKgCQkJCXN0
cnVjdCBpbnRlbF9jcnRjICpjcnRjKQ0KPiA+ID4gPiDCoHsNCj4gPiA+ID4gwqAJc3RydWN0IGlu
dGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUgPQ0KPiA+ID4gPiBpbnRlbF9hdG9taWNfZ2V0X25l
d19jcnRjX3N0YXRlKHN0YXRlLCBjcnRjKTsNCj4gPiA+ID4gwqAJc3RydWN0IGludGVsX3BsYW5l
X3N0YXRlICpuZXdfcGxhbmVfc3RhdGUsICpvbGRfcGxhbmVfc3RhdGU7DQo+ID4gPiA+ICsJc3Ry
dWN0IGRybV9yZWN0IHBpcGVfZGlydHlfYXJlYXNbSTkxNV9NQVhfUExBTkVTICogMl0gPSB7fTsN
Cj4gPiA+ID4gwqAJc3RydWN0IGRybV9yZWN0IHBpcGVfY2xpcCA9IHsgLnkxID0gLTEgfTsNCj4g
PiA+ID4gwqAJc3RydWN0IGludGVsX3BsYW5lICpwbGFuZTsNCj4gPiA+ID4gwqAJYm9vbCBmdWxs
X3VwZGF0ZSA9IGZhbHNlOw0KPiA+ID4gPiBAQCAtMTI3MCw2ICsxMjk3LDM4IEBAIGludCBpbnRl
bF9wc3IyX3NlbF9mZXRjaF91cGRhdGUoc3RydWN0DQo+ID4gPiA+IGludGVsX2F0b21pY19zdGF0
ZSAqc3RhdGUsDQo+ID4gPiA+IMKgCWlmIChyZXQpDQo+ID4gPiA+IMKgCQlyZXR1cm4gcmV0Ow0K
PiA+ID4gPiDCoA0KPiA+ID4gPiANCj4gPiA+ID4gDQo+ID4gPiA+IA0KPiA+ID4gPiANCj4gPiA+
ID4gDQo+ID4gPiA+IA0KPiA+ID4gPiANCj4gPiA+ID4gDQo+ID4gPiA+IA0KPiA+ID4gPiANCj4g
PiA+ID4gDQo+ID4gPiA+IA0KPiA+ID4gPiANCj4gPiA+ID4gDQo+ID4gPiA+IA0KPiA+ID4gPiAN
Cj4gPiA+ID4gDQo+ID4gPiA+IA0KPiA+ID4gPiArCS8qDQo+ID4gPiA+ICsJICogTWFyayBhbGwg
dGhlIGFyZWFzIHdoZXJlIHRoZXJlIGlzIGEgcGxhbmUgdGhhdCBtYXRjaGVzIG9uZQ0KPiA+ID4g
PiBvZiB0aGlzOg0KPiA+ID4gPiArCSAqIC0gdHJhbnNwYXJlbnQNCj4gPiA+ID4gKwkgKiAtIG1v
dmVkDQo+ID4gPiA+ICsJICogLSB2aXNpYmlsaXR5IGNoYW5nZWQNCj4gPiA+ID4gKwkgKiBJbiBh
bGwgdGhvc2UgY2FzZXMsIHBsYW5lcyBiZWxsb3cgaXQgd2lsbCBuZWVkIHRvIGJlIHJlZHJhdy4N
Cj4gPiA+ID4gKwkgKi8NCj4gKGZvciBmdXR1cmUgdmlzaWJpbGl0eSBhbmQgZnVsbHkgb2JzY3Vy
ZWQgcGxhbmUgY2hlY2tpbmcpIHdlDQo+IGNhbiAgdHJhdmVyc2UgZnJvbSB0b3AgdG8gZG93biwg
YnkgYWRkaW5nICBhbmQgdXNpbmcNCj4gZm9yX2VhY2hfb2xkbmV3X2ludGVsX3BsYW5lX2luX3N0
YXRlX3JldmVyc2UoKQ0KPiA+ID4gPiArCWZvcl9lYWNoX29sZG5ld19pbnRlbF9wbGFuZV9pbl9z
dGF0ZShzdGF0ZSwgcGxhbmUsDQo+ID4gPiA+IG9sZF9wbGFuZV9zdGF0ZSwNCj4gPiA+ID4gKwkJ
CQkJICAgICBuZXdfcGxhbmVfc3RhdGUsIGkpIHsNCj4gPiA+ID4gKwkJYm9vbCBhbHBoYSwgZmxp
cCwgZGlydHk7DQo+ID4gPiA+ICsNCj4gPiA+ID4gKwkJaWYgKG5ld19wbGFuZV9zdGF0ZS0+dWFw
aS5jcnRjICE9IGNydGNfc3RhdGUtDQo+ID4gPiA+ID4gdWFwaS5jcnRjKQ0KPiA+ID4gPiArCQkJ
Y29udGludWU7DQo+ID4gPiA+ICsNCj4gPiA+ID4gKwkJYWxwaGEgPSBuZXdfcGxhbmVfc3RhdGUt
PnVhcGkuYWxwaGEgIT0NCj4gPiA+ID4gRFJNX0JMRU5EX0FMUEhBX09QQVFVRTsNCj4gPiA+ID4g
KwkJYWxwaGEgfD0gb2xkX3BsYW5lX3N0YXRlLT51YXBpLmFscGhhICE9DQo+ID4gPiA+IERSTV9C
TEVORF9BTFBIQV9PUEFRVUU7DQo+ID4gPiA+ICsJCWZsaXAgPSBuZXdfcGxhbmVfc3RhdGUtPnVh
cGkuZmIgIT0gb2xkX3BsYW5lX3N0YXRlLQ0KPiA+ID4gPiA+IHVhcGkuZmI7DQo+ID4gPiA+ICsJ
CWRpcnR5ID0gYWxwaGEgJiYgZmxpcDsNCj4gPiA+ID4gKw0KPiA+ID4gPiArCQlkaXJ0eSB8PSAh
ZHJtX3JlY3RfZXF1YWxzKCZuZXdfcGxhbmVfc3RhdGUtPnVhcGkuZHN0LA0KPiA+ID4gPiArCQkJ
CQkgICZvbGRfcGxhbmVfc3RhdGUtPnVhcGkuZHN0KTsNCj4gPiA+ID4gKwkJZGlydHkgfD0gbmV3
X3BsYW5lX3N0YXRlLT51YXBpLnZpc2libGUgIT0NCj4gPiA+ID4gKwkJCSBvbGRfcGxhbmVfc3Rh
dGUtPnVhcGkudmlzaWJsZTsNCj4gPiA+ID4gKwkJaWYgKCFkaXJ0eSkNCj4gPiA+ID4gKwkJCWNv
bnRpbnVlOw0KPiA+ID4gPiArDQo+IGlmIHdlIGNhbiBjYWxjdWxhdGUgU1UgcmVnaW9uIGhlcmUs
IHdlIGRvbid0IG5lZWQgdG8gc3RvcmUgYWxsIG9mIHRoZQ0KPiBkaXJ0eSBhcmVhcy4NCg0KSWYg
dGhlIHBsYW5lcyBiZWxsb3cgZG9uJ3QgaGF2ZSBkYW1hZ2VkIGFyZWFzIG9yIGlmIGl0IGRvbid0
IGhhdmUgYW55IG92ZXJsYXAgd2l0aCBvdGhlciBwbGFuZXMgd2Ugc2hvdWxkIG5vdCBpbmNsdWRl
IGl0IGRvIHRoZSBTVSByZWdpb24gdG8gc2F2ZQ0KcG93ZXIuDQoNCj4gPiA+ID4gKwkJaWYgKG9s
ZF9wbGFuZV9zdGF0ZS0+dWFwaS52aXNpYmxlKQ0KPiA+ID4gPiArCQkJcGlwZV9kaXJ0eV9hcmVh
c1twbGFuZS0+aWQgKiAyXSA9DQo+ID4gPiA+IG9sZF9wbGFuZV9zdGF0ZS0+dWFwaS5kc3Q7DQo+
ID4gPiA+ICsJCWlmIChuZXdfcGxhbmVfc3RhdGUtPnVhcGkudmlzaWJsZSkNCj4gPiA+ID4gKwkJ
CXBpcGVfZGlydHlfYXJlYXNbcGxhbmUtPmlkICogMiArIDFdID0NCj4gPiA+ID4gbmV3X3BsYW5l
X3N0YXRlLT51YXBpLmRzdDsNCj4gPiA+ID4gKwl9DQo+ID4gPiA+ICsNCj4gPiA+ID4gwqAJZm9y
X2VhY2hfb2xkbmV3X2ludGVsX3BsYW5lX2luX3N0YXRlKHN0YXRlLCBwbGFuZSwNCj4gPiA+ID4g
b2xkX3BsYW5lX3N0YXRlLA0KPiA+ID4gPiDCoAkJCQkJICAgICBuZXdfcGxhbmVfc3RhdGUsIGkp
IHsNCj4gPiA+ID4gwqAJCXN0cnVjdCBkcm1fcmVjdCAqc2VsX2ZldGNoX2FyZWEsIHRlbXA7DQo+
ID4gPiA+IEBAIC0xMzM3LDYgKzEzOTYsOSBAQCBpbnQgaW50ZWxfcHNyMl9zZWxfZmV0Y2hfdXBk
YXRlKHN0cnVjdA0KPiA+ID4gPiBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLA0KPiA+ID4gPiDC
oAkJCXNlbF9mZXRjaF9hcmVhLT55MiA9IDA7DQo+ID4gPiA+IMKgCQl9DQo+ID4gPiA+IMKgDQo+
ID4gPiA+IA0KPiA+ID4gPiANCj4gPiA+ID4gDQo+ID4gPiA+IA0KPiA+ID4gPiANCj4gPiA+ID4g
DQo+ID4gPiA+IA0KPiA+ID4gPiANCj4gPiA+ID4gDQo+ID4gPiA+IA0KPiA+ID4gPiANCj4gPiA+
ID4gDQo+ID4gPiA+IA0KPiA+ID4gPiANCj4gPiA+ID4gDQo+ID4gPiA+IA0KPiA+ID4gPiANCj4g
PiA+ID4gDQo+ID4gPiA+IA0KPiA+ID4gPiANCj4gPiA+ID4gDQo+ID4gPiA+IA0KPiA+ID4gPiAr
CQlwaXBlX2RpcnR5X2FyZWFzX3NldChuZXdfcGxhbmVfc3RhdGUsIHBsYW5lLA0KPiA+ID4gPiBw
aXBlX2RpcnR5X2FyZWFzLA0KPiA+ID4gPiArCQkJCSAgICAgc2VsX2ZldGNoX2FyZWEpOw0KPiA+
ID4gPiArDQo+ID4gPiBJbiBteSBodW1ibGUgb3BpbmlvbiwgcGxhbmVfc3RhdGUncyBhbHBoYSBh
bmQgdmlzaWJpbGl0eSBtaWdodA0KPiA+ID4gYWZmZWN0DQo+ID4gPiB0byBQU1IgU2VsZWN0aXZl
IFVwZGF0ZSwgYnV0IGl0IHdvdWxkIG5vdCBhZmZlY3QgdG8gZGFtYWdlIHJlZ2lvbg0KPiA+ID4g
b2YNCj4gPiA+IHRoZSBQbGFuZSBTZWxlY3RpdmUgRmV0Y2ggcHJvZ3JhbS4gdGhlcmVmb3JlIGlm
IHdlIHdhbnQgdG8NCj4gPiA+IGNhbGN1bGF0ZQ0KPiA+ID4gd2l0aCBjaGFuZ2luZyBvZiBhbHBo
YSBhbmQgdmlzaWJpbGl0eSwgd2UgbmVlZCB0byBzZXBhcmF0ZSB0aGUgZGF0YQ0KPiA+ID4gc3Ry
dWN0dXJlIG9mIGNsaXAgcmVjdHMgYW5kIGNhbGN1bGF0aW5nIGNsaXAgcmVnaW9uIHRvICJwbGFu
ZSdzDQo+ID4gPiBzZWxlY3RpdmUgZmV0Y2giIGFuZCAiUFNSJ3Mgc2VsZWN0aXZlIHVwZGF0ZSIu
DQo+ID4gDQo+ID4gV2h5IHNlcGFyYXRlPyBXZSBuZWVkIG9uZSBjbGlwIHJlZ2lvbiB0byBwcm9n
cmFtIHNlbGVjdGl2ZSBmZXRjaA0KPiA+IHBsYW5lIHJlZ2lzdGVycy4NCj4gPiBMaWtlIHNhaWQg
aW4gdGhlIGNvbW1pdCBkZXNjcmlwdGlvbiwgdGhpcyBjb3VsZCBiZSBvcHRpbWl6ZWQgaW4NCj4g
PiBmdXR1cmUgbGlrZSB0byBjaGVjayBpZiBwaXhlbHMgY2hhbmdlZCBpbiB0aGUgZGFtYWdlZCBv
dmVybGFwIGFyZWENCj4gPiB3aXRoIGEgcGxhbmUgd2l0aA0KPiA+IGFscGhhIGJ1dCB0aGF0IHdp
bGwgbWFrZSB0aGluZ3MgcmVhbGx5IGNvbXBsaWNhdGVkIHNvIGZvciBub3cga2VlcGluZw0KPiA+
IHRoaXMgbW9yZSBzaW1wbGUgYXBwcm9hY2gsIGNvbXBvc2l0b3JzIGFyZSBub3QgZXZlbiBzdXBw
b3J0aW5nIGRhbWFnZQ0KPiA+IGFyZWEgeWV0Lg0KPiB3ZXN0b24gKHdheWxhbmQgcmVmZXJlbmNl
IGNvbXBvc2l0b3IpIHN1cHBvcnRzIGRhbWFnZSBhcmVhIGZlYXR1cmUuDQoNCldpbGwgdHJ5IGl0
LCBhbnl0aGluZyBuZWVkIHRvIGJlIGVuYWJsZWQgb3IgY29uZmlndXJlIHRvIHRoaXMgdG8gd29y
az8NCkFueSBpbnN0cnVjdGlvbnMgdGhhdCB5b3UgY2FuIHNoYXJlIHdpbGwgc2F2ZSB0aW1lIGZv
ciBtZS4NCg0KPiA+IA0KPiA+ID4gPiDCoAkJLyogRG9uJ3QgbmVlZCB0byByZWRyYXcgcGxhbmUg
ZGFtYWdlZCBhcmVhcyBvdXRzaWRlIG9mDQo+ID4gPiA+IHNjcmVlbiAqLw0KPiA+ID4gPiDCoAkJ
aiA9IHNlbF9mZXRjaF9hcmVhLT55MiArIChuZXdfcGxhbmVfc3RhdGUtPnVhcGkuZHN0LnkxDQo+
ID4gPiA+ID4gPiAxNik7DQo+ID4gPiA+IMKgCQlqID0gY3J0Y19zdGF0ZS0+dWFwaS5hZGp1c3Rl
ZF9tb2RlLmNydGNfdmRpc3BsYXkgLSBqOw0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZngK
