Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BC9C3FED9A
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Sep 2021 14:15:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0ECDD6E517;
	Thu,  2 Sep 2021 12:15:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3CB996E517
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Sep 2021 12:15:11 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10094"; a="282800481"
X-IronPort-AV: E=Sophos;i="5.84,372,1620716400"; d="scan'208";a="282800481"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2021 05:15:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,372,1620716400"; d="scan'208";a="499755573"
Received: from irsmsx602.ger.corp.intel.com ([163.33.146.8])
 by fmsmga008.fm.intel.com with ESMTP; 02 Sep 2021 05:15:08 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 irsmsx602.ger.corp.intel.com (163.33.146.8) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Thu, 2 Sep 2021 13:15:07 +0100
Received: from fmsmsx610.amr.corp.intel.com ([10.18.126.90]) by
 fmsmsx610.amr.corp.intel.com ([10.18.126.90]) with mapi id 15.01.2242.012;
 Thu, 2 Sep 2021 05:15:05 -0700
From: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 4/5] drm/i915/display: stop returning errors
 from debugfs registration
Thread-Index: AQHXnZ5h6YfA2JC8g0WlkqVjhCHclKuP1KGAgAAL4ICAAUHtAA==
Date: Thu, 2 Sep 2021 12:15:05 +0000
Message-ID: <18f627186b9e84da5116d876e6adc35e5aef226b.camel@intel.com>
References: <cover.1630327990.git.jani.nikula@intel.com>
 <346562ccef2282ccdbdea54409fab1d2b48f313c.1630327990.git.jani.nikula@intel.com>
 <YS+oRXeF6HB5McQs@intel.com> <87wno09qkk.fsf@intel.com>
In-Reply-To: <87wno09qkk.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.40.4 (3.40.4-1.fc34) 
x-originating-ip: [10.1.200.100]
Content-Type: text/plain; charset="utf-8"
Content-ID: <81E67A15FAD458479D7DC69EB9E44050@intel.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 4/5] drm/i915/display: stop returning errors
 from debugfs registration
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

T24gV2VkLCAyMDIxLTA5LTAxIGF0IDIwOjAyICswMzAwLCBKYW5pIE5pa3VsYSB3cm90ZToNCj4g
T24gV2VkLCAwMSBTZXAgMjAyMSwgUm9kcmlnbyBWaXZpIDxyb2RyaWdvLnZpdmlAaW50ZWwuY29t
PiB3cm90ZToNCj4gPiBPbiBNb24sIEF1ZyAzMCwgMjAyMSBhdCAwMzo1Mzo0M1BNICswMzAwLCBK
YW5pIE5pa3VsYSB3cm90ZToNCj4gPiA+IEZhaWx1cmVzIHRvIHJlZ2lzdGVyIGRlYnVnZnMgc2hv
dWxkIGJlIGlnbm9yZWQgYW55d2F5LCBzbyBzdG9wDQo+ID4gPiBwcm9wYWdhdGluZyBlcnJvcnMg
YWx0b2dldGhlciBmb3IgY2xhcml0eSBhbmQgc2ltcGxpY2l0eS4gTm8NCj4gPiA+IGZ1bmN0aW9u
YWwNCj4gPiA+IGNoYW5nZXMuDQo+ID4gDQo+ID4gbm90IGV2ZW4gYSBkcm1fZGVidWcgaWYgdGhh
dCBmYWlscz8NCj4gDQo+ICpzaHJ1ZyogdGhlIG9ubHkgZXJyb3Igd2Ugd2VyZSByZXR1cm5pbmcg
YW55d2F5IHdhcyBpZiBkZWJ1Z2ZzIGhhZG4ndA0KPiBiZWVuIGFkZGVkIGF0IHRoZSBkcm0gbGV2
ZWwuDQoNCm9oLCBpbmRlZWQuLi4NClJldmlld2VkLWJ5OiBSb2RyaWdvIFZpdmkgPHJvZHJpZ28u
dml2aUBpbnRlbC5jb20+DQoNCj4gDQo+IEJSLA0KPiBKYW5pLg0KPiANCj4gPiANCj4gPiA+IA0K
PiA+ID4gU2lnbmVkLW9mZi1ieTogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4N
Cj4gPiA+IC0tLQ0KPiA+ID4gwqAuLi4vZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X2Rl
YnVnZnMuY8KgIHwgMTkgKysrKystLS0tLS0tLQ0KPiA+ID4gLS0tLS0tDQo+ID4gPiDCoC4uLi9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfZGVidWdmcy5owqAgfMKgIDggKysrKy0tLS0N
Cj4gPiA+IMKgMiBmaWxlcyBjaGFuZ2VkLCA5IGluc2VydGlvbnMoKyksIDE4IGRlbGV0aW9ucygt
KQ0KPiA+ID4gDQo+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kaXNwbGF5X2RlYnVnZnMuYw0KPiA+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2Rpc3BsYXlfZGVidWdmcy5jDQo+ID4gPiBpbmRleCBjMWNkNWQwMDVlMDgu
Ljg0NWUyZGM3NmY4NyAxMDA2NDQNCj4gPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGlzcGxheV9kZWJ1Z2ZzLmMNCj4gPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9kZWJ1Z2ZzLmMNCj4gPiA+IEBAIC0yNDQzLDE3
ICsyNDQzLDE1IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgZmlsZV9vcGVyYXRpb25zDQo+ID4gPiBp
OTE1X2RzY19icHBfZm9wcyA9IHsNCj4gPiA+IMKgICoNCj4gPiA+IMKgICogQ2xlYW51cCB3aWxs
IGJlIGRvbmUgYnkgZHJtX2Nvbm5lY3Rvcl91bnJlZ2lzdGVyKCkgdGhyb3VnaCBhDQo+ID4gPiBj
YWxsIHRvDQo+ID4gPiDCoCAqIGRybV9kZWJ1Z2ZzX2Nvbm5lY3Rvcl9yZW1vdmUoKS4NCj4gPiA+
IC0gKg0KPiA+ID4gLSAqIFJldHVybnMgMCBvbiBzdWNjZXNzLCBuZWdhdGl2ZSBlcnJvciBjb2Rl
cyBvbiBlcnJvci4NCj4gPiA+IMKgICovDQo+ID4gPiAtaW50IGludGVsX2Nvbm5lY3Rvcl9kZWJ1
Z2ZzX2FkZChzdHJ1Y3QgZHJtX2Nvbm5lY3RvciAqY29ubmVjdG9yKQ0KPiA+ID4gK3ZvaWQgaW50
ZWxfY29ubmVjdG9yX2RlYnVnZnNfYWRkKHN0cnVjdCBkcm1fY29ubmVjdG9yDQo+ID4gPiAqY29u
bmVjdG9yKQ0KPiA+ID4gwqB7DQo+ID4gPiDCoMKgwqDCoMKgwqDCoMKgc3RydWN0IGRlbnRyeSAq
cm9vdCA9IGNvbm5lY3Rvci0+ZGVidWdmc19lbnRyeTsNCj4gPiA+IMKgwqDCoMKgwqDCoMKgwqBz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGNvbm5lY3Rvci0NCj4g
PiA+ID5kZXYpOw0KPiA+ID4gwqANCj4gPiA+IMKgwqDCoMKgwqDCoMKgwqAvKiBUaGUgY29ubmVj
dG9yIG11c3QgaGF2ZSBiZWVuIHJlZ2lzdGVyZWQgYmVmb3JlaGFuZHMuDQo+ID4gPiAqLw0KPiA+
ID4gwqDCoMKgwqDCoMKgwqDCoGlmICghcm9vdCkNCj4gPiA+IC3CoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqByZXR1cm4gLUVOT0RFVjsNCj4gPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqByZXR1cm47DQo+ID4gPiDCoA0KPiA+ID4gwqDCoMKgwqDCoMKgwqDCoGlmIChjb25u
ZWN0b3ItPmNvbm5lY3Rvcl90eXBlID09IERSTV9NT0RFX0NPTk5FQ1RPUl9lRFApDQo+ID4gPiB7
DQo+ID4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGRlYnVnZnNfY3JlYXRlX2Zp
bGUoImk5MTVfcGFuZWxfdGltaW5ncyIsDQo+ID4gPiBTX0lSVUdPLCByb290LA0KPiA+ID4gQEAg
LTI0OTMsMjMgKzI0OTEsMTYgQEAgaW50IGludGVsX2Nvbm5lY3Rvcl9kZWJ1Z2ZzX2FkZChzdHJ1
Y3QNCj4gPiA+IGRybV9jb25uZWN0b3IgKmNvbm5lY3RvcikNCj4gPiA+IMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgY29ubmVjdG9yLT5jb25uZWN0b3JfdHlwZSA9PQ0KPiA+ID4gRFJNX01PREVfQ09O
TkVDVE9SX0hETUlCKQ0KPiA+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBkZWJ1
Z2ZzX2NyZWF0ZV9maWxlKCJpOTE1X2xwc3BfY2FwYWJpbGl0eSIsIDA0NDQsDQo+ID4gPiByb290
LA0KPiA+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjb25uZWN0b3IsDQo+ID4gPiAmaTkxNV9scHNwX2NhcGFi
aWxpdHlfZm9wcyk7DQo+ID4gPiAtDQo+ID4gPiAtwqDCoMKgwqDCoMKgwqByZXR1cm4gMDsNCj4g
PiA+IMKgfQ0KPiA+ID4gwqANCj4gPiA+IMKgLyoqDQo+ID4gPiDCoCAqIGludGVsX2NydGNfZGVi
dWdmc19hZGQgLSBhZGQgaTkxNSBzcGVjaWZpYyBjcnRjIGRlYnVnZnMgZmlsZXMNCj4gPiA+IMKg
ICogQGNydGM6IHBvaW50ZXIgdG8gYSBkcm1fY3J0Yw0KPiA+ID4gwqAgKg0KPiA+ID4gLSAqIFJl
dHVybnMgMCBvbiBzdWNjZXNzLCBuZWdhdGl2ZSBlcnJvciBjb2RlcyBvbiBlcnJvci4NCj4gPiA+
IC0gKg0KPiA+ID4gwqAgKiBGYWlsdXJlIHRvIGFkZCBkZWJ1Z2ZzIGVudHJpZXMgc2hvdWxkIGdl
bmVyYWxseSBiZSBpZ25vcmVkLg0KPiA+ID4gwqAgKi8NCj4gPiA+IC1pbnQgaW50ZWxfY3J0Y19k
ZWJ1Z2ZzX2FkZChzdHJ1Y3QgZHJtX2NydGMgKmNydGMpDQo+ID4gPiArdm9pZCBpbnRlbF9jcnRj
X2RlYnVnZnNfYWRkKHN0cnVjdCBkcm1fY3J0YyAqY3J0YykNCj4gPiA+IMKgew0KPiA+ID4gLcKg
wqDCoMKgwqDCoMKgaWYgKCFjcnRjLT5kZWJ1Z2ZzX2VudHJ5KQ0KPiA+ID4gLcKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoHJldHVybiAtRU5PREVWOw0KPiA+ID4gLQ0KPiA+ID4gLcKgwqDC
oMKgwqDCoMKgY3J0Y191cGRhdGVzX2FkZChjcnRjKTsNCj4gPiA+IC3CoMKgwqDCoMKgwqDCoHJl
dHVybiAwOw0KPiA+ID4gK8KgwqDCoMKgwqDCoMKgaWYgKGNydGMtPmRlYnVnZnNfZW50cnkpDQo+
ID4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgY3J0Y191cGRhdGVzX2FkZChjcnRj
KTsNCj4gPiA+IMKgfQ0KPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGlzcGxheV9kZWJ1Z2ZzLmgNCj4gPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X2RlYnVnZnMuaA0KPiA+ID4gaW5kZXggNTU3OTAxZjNl
YjkwLi5jNzJlMzVlY2JhMWYgMTAwNjQ0DQo+ID4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfZGVidWdmcy5oDQo+ID4gPiArKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfZGVidWdmcy5oDQo+ID4gPiBAQCAtMTIs
MTIgKzEyLDEyIEBAIHN0cnVjdCBkcm1faTkxNV9wcml2YXRlOw0KPiA+ID4gwqANCj4gPiA+IMKg
I2lmZGVmIENPTkZJR19ERUJVR19GUw0KPiA+ID4gwqB2b2lkIGludGVsX2Rpc3BsYXlfZGVidWdm
c19yZWdpc3RlcihzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZQ0KPiA+ID4gKmk5MTUpOw0KPiA+ID4g
LWludCBpbnRlbF9jb25uZWN0b3JfZGVidWdmc19hZGQoc3RydWN0IGRybV9jb25uZWN0b3INCj4g
PiA+ICpjb25uZWN0b3IpOw0KPiA+ID4gLWludCBpbnRlbF9jcnRjX2RlYnVnZnNfYWRkKHN0cnVj
dCBkcm1fY3J0YyAqY3J0Yyk7DQo+ID4gPiArdm9pZCBpbnRlbF9jb25uZWN0b3JfZGVidWdmc19h
ZGQoc3RydWN0IGRybV9jb25uZWN0b3INCj4gPiA+ICpjb25uZWN0b3IpOw0KPiA+ID4gK3ZvaWQg
aW50ZWxfY3J0Y19kZWJ1Z2ZzX2FkZChzdHJ1Y3QgZHJtX2NydGMgKmNydGMpOw0KPiA+ID4gwqAj
ZWxzZQ0KPiA+ID4gwqBzdGF0aWMgaW5saW5lIHZvaWQgaW50ZWxfZGlzcGxheV9kZWJ1Z2ZzX3Jl
Z2lzdGVyKHN0cnVjdA0KPiA+ID4gZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkge30NCj4gPiA+IC1z
dGF0aWMgaW5saW5lIGludCBpbnRlbF9jb25uZWN0b3JfZGVidWdmc19hZGQoc3RydWN0DQo+ID4g
PiBkcm1fY29ubmVjdG9yICpjb25uZWN0b3IpIHsgcmV0dXJuIDA7IH0NCj4gPiA+IC1zdGF0aWMg
aW5saW5lIGludCBpbnRlbF9jcnRjX2RlYnVnZnNfYWRkKHN0cnVjdCBkcm1fY3J0YyAqY3J0YykN
Cj4gPiA+IHsgcmV0dXJuIDA7IH0NCj4gPiA+ICtzdGF0aWMgaW5saW5lIHZvaWQgaW50ZWxfY29u
bmVjdG9yX2RlYnVnZnNfYWRkKHN0cnVjdA0KPiA+ID4gZHJtX2Nvbm5lY3RvciAqY29ubmVjdG9y
KSB7fQ0KPiA+ID4gK3N0YXRpYyBpbmxpbmUgdm9pZCBpbnRlbF9jcnRjX2RlYnVnZnNfYWRkKHN0
cnVjdCBkcm1fY3J0YyAqY3J0YykNCj4gPiA+IHt9DQo+ID4gPiDCoCNlbmRpZg0KPiA+ID4gwqAN
Cj4gPiA+IMKgI2VuZGlmIC8qIF9fSU5URUxfRElTUExBWV9ERUJVR0ZTX0hfXyAqLw0KPiA+ID4g
LS0gDQo+ID4gPiAyLjIwLjENCj4gPiA+IA0KPiANCg0K
