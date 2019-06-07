Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 926EA397A4
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Jun 2019 23:22:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 51BBD891BE;
	Fri,  7 Jun 2019 21:22:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6E96E890FE
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Jun 2019 21:22:47 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Jun 2019 14:22:46 -0700
X-ExtLoop1: 1
Received: from fmsmsx107.amr.corp.intel.com ([10.18.124.205])
 by orsmga004.jf.intel.com with ESMTP; 07 Jun 2019 14:22:46 -0700
Received: from fmsmsx111.amr.corp.intel.com (10.18.116.5) by
 fmsmsx107.amr.corp.intel.com (10.18.124.205) with Microsoft SMTP Server (TLS)
 id 14.3.408.0; Fri, 7 Jun 2019 14:22:46 -0700
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.248]) by
 fmsmsx111.amr.corp.intel.com ([169.254.12.164]) with mapi id 14.03.0415.000;
 Fri, 7 Jun 2019 14:22:46 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Deak, Imre" <imre.deak@intel.com>
Thread-Topic: [PATCH 09/23] drm/i915: Factor out common parts from TypeC
 port handling functions
Thread-Index: AQHVGuYdT0PnaO0n3kKjpcx5mIfOLqaRLdiA
Date: Fri, 7 Jun 2019 21:22:46 +0000
Message-ID: <a6bac7e6b915eacafcfd0b55384db42304aeb97a.camel@intel.com>
References: <20190604145826.16424-1-imre.deak@intel.com>
 <20190604145826.16424-10-imre.deak@intel.com>
In-Reply-To: <20190604145826.16424-10-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.8.212]
Content-ID: <2CF1F82D309C5E4588DDA80DC2F890FD@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 09/23] drm/i915: Factor out common parts
 from TypeC port handling functions
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
Cc: "Zanoni, Paulo R" <paulo.r.zanoni@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCAyMDE5LTA2LTA0IGF0IDE3OjU4ICswMzAwLCBJbXJlIERlYWsgd3JvdGU6DQo+IEZh
Y3RvciBvdXQgaGVscGVycyByZWFkaW5nL3BhcnNpbmcgdGhlIFR5cGVDIHNwZWNpZmljIHJlZ2lz
dGVycywNCj4gbWFraW5nDQo+IGN1cnJlbnQgdXNlcnMgb2YgdGhlbSBjbGVhcmVyIGFuZCBsZXR0
aW5nIHVzIHVzZSB0aGVtIGxhdGVyLg0KPiANCj4gV2hpbGUgYXQgaXQgYWxzbzoNCj4gLSBTaW1w
bGlmeSBpY2xfdGNfcGh5X2Nvbm5lY3QoKSB3aXRoIGFuIGVhcmx5IHJldHVybiBpbiBsZWdhY3kg
bW9kZS4NCj4gLSBTaW1wbGlmeSB0aGUgbGl2ZSBzdGF0dXMgY2hlY2sgdXNpbmcgb25lIGJpdG1h
c2sgZm9yIGFsbCBIUEQgYml0cy4NCj4gLSBSZW1vdmUgYSBtaWNyby1vcHRpbWlzYXRpb24gb2Yg
dGhlIHJlcGVhdGVkIHNhZmUtbW9kZSBjbGVhcmluZy4NCj4gLSBNYWtlIHN1cmUgd2UgZml4IHRo
ZSBsZWdhY3kgcG9ydCBmbGFnIGluIGFsbCBjYXNlcy4NCj4gDQo+IEV4Y2VwdCBmb3IgdGhlIGxh
c3QgdHdvLCBubyBmdW5jdGlvbmFsIGNoYW5nZXMuDQo+IA0KPiBDYzogSm9zw6kgUm9iZXJ0byBk
ZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+DQo+IENjOiBSb2RyaWdvIFZpdmkgPHJvZHJp
Z28udml2aUBpbnRlbC5jb20+DQo+IENjOiBQYXVsbyBaYW5vbmkgPHBhdWxvLnIuemFub25pQGlu
dGVsLmNvbT4NCj4gU2lnbmVkLW9mZi1ieTogSW1yZSBEZWFrIDxpbXJlLmRlYWtAaW50ZWwuY29t
Pg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RkaS5jIHwgICA1ICstDQo+
ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF90Yy5jICB8IDE2NiArKysrKysrKysrKysrKysr
KysrLS0tLS0tLS0NCj4gLS0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfdGMuaCAg
fCAgIDEgKw0KPiAgMyBmaWxlcyBjaGFuZ2VkLCAxMDMgaW5zZXJ0aW9ucygrKSwgNjkgZGVsZXRp
b25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGRp
LmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kZGkuYw0KPiBpbmRleCA4ZjIyM2Q0
OGQ1NjIuLmQyMzY4MzliZWUxOSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aW50ZWxfZGRpLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGRpLmMNCj4g
QEAgLTI5ODMsNyArMjk4Myw2IEBAIHN0YXRpYyB2b2lkIGljbF9wcm9ncmFtX21nX2RwX21vZGUo
c3RydWN0DQo+IGludGVsX2RpZ2l0YWxfcG9ydCAqaW50ZWxfZGlnX3BvcnQpDQo+ICB7DQo+ICAJ
c3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShpbnRlbF9kaWdfcG9y
dC0NCj4gPmJhc2UuYmFzZS5kZXYpOw0KPiAgCWVudW0gcG9ydCBwb3J0ID0gaW50ZWxfZGlnX3Bv
cnQtPmJhc2UucG9ydDsNCj4gLQllbnVtIHRjX3BvcnQgdGNfcG9ydCA9IGludGVsX3BvcnRfdG9f
dGMoZGV2X3ByaXYsIHBvcnQpOw0KPiAgCXUzMiBsbjAsIGxuMSwgbGFuZV9pbmZvOw0KPiAgDQo+
ICAJaWYgKGludGVsX2RpZ19wb3J0LT50Y19tb2RlID09IFRDX1BPUlRfVEJUX0FMVCkNCj4gQEAg
LTI5OTcsOSArMjk5Niw3IEBAIHN0YXRpYyB2b2lkIGljbF9wcm9ncmFtX21nX2RwX21vZGUoc3Ry
dWN0DQo+IGludGVsX2RpZ2l0YWxfcG9ydCAqaW50ZWxfZGlnX3BvcnQpDQo+ICAJCWxuMCAmPSB+
KE1HX0RQX01PREVfQ0ZHX0RQX1gxX01PREUgfA0KPiBNR19EUF9NT0RFX0NGR19EUF9YMl9NT0RF
KTsNCj4gIAkJbG4xICY9IH4oTUdfRFBfTU9ERV9DRkdfRFBfWDFfTU9ERSB8DQo+IE1HX0RQX01P
REVfQ0ZHX0RQX1gyX01PREUpOw0KPiAgDQo+IC0JCWxhbmVfaW5mbyA9IChJOTE1X1JFQUQoUE9S
VF9UWF9ERkxFWERQU1ApICYNCj4gLQkJCSAgICAgRFBfTEFORV9BU1NJR05NRU5UX01BU0sodGNf
cG9ydCkpID4+DQo+IC0JCQkgICAgRFBfTEFORV9BU1NJR05NRU5UX1NISUZUKHRjX3BvcnQpOw0K
PiArCQlsYW5lX2luZm8gPQ0KPiBpbnRlbF90Y19wb3J0X2dldF9sYW5lX2luZm8oaW50ZWxfZGln
X3BvcnQpOw0KPiAgDQo+ICAJCXN3aXRjaCAobGFuZV9pbmZvKSB7DQo+ICAJCWNhc2UgMHgxOg0K
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfdGMuYw0KPiBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2ludGVsX3RjLmMNCj4gaW5kZXggMDc0ODgyMzViNjdhLi4zZmRjZmEy
YmJhZWUgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3RjLmMNCj4g
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfdGMuYw0KPiBAQCAtNDMsMTAgKzQzLDE5
IEBAIHN0YXRpYyBjb25zdCBjaGFyICp0Y19wb3J0X21vZGVfbmFtZShlbnVtDQo+IHRjX3BvcnRf
bW9kZSBtb2RlKQ0KPiAgCXJldHVybiBuYW1lc1ttb2RlXTsNCj4gIH0NCj4gIA0KPiAtaW50IGlu
dGVsX3RjX3BvcnRfZmlhX21heF9sYW5lX2NvdW50KHN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQN
Cj4gKmRpZ19wb3J0KQ0KPiArdTMyIGludGVsX3RjX3BvcnRfZ2V0X2xhbmVfaW5mbyhzdHJ1Y3Qg
aW50ZWxfZGlnaXRhbF9wb3J0ICpkaWdfcG9ydCkNCj4gIHsNCj4gIAlzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGRpZ19wb3J0LQ0KPiA+YmFzZS5iYXNlLmRldik7
DQo+ICAJZW51bSB0Y19wb3J0IHRjX3BvcnQgPSBpbnRlbF9wb3J0X3RvX3RjKGRldl9wcml2LCBk
aWdfcG9ydC0NCj4gPmJhc2UucG9ydCk7DQo+ICsJdTMyIGxhbmVfaW5mbyA9IEk5MTVfUkVBRChQ
T1JUX1RYX0RGTEVYRFBTUCk7DQo+ICsNCj4gKwlyZXR1cm4gKGxhbmVfaW5mbyAmIERQX0xBTkVf
QVNTSUdOTUVOVF9NQVNLKHRjX3BvcnQpKSA+Pg0KPiArCSAgICAgICBEUF9MQU5FX0FTU0lHTk1F
TlRfU0hJRlQodGNfcG9ydCk7DQo+ICt9DQo+ICsNCj4gK2ludCBpbnRlbF90Y19wb3J0X2ZpYV9t
YXhfbGFuZV9jb3VudChzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9wb3J0DQo+ICpkaWdfcG9ydCkNCj4g
K3sNCj4gKwlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGRpZ19w
b3J0LQ0KPiA+YmFzZS5iYXNlLmRldik7DQo+ICAJaW50ZWxfd2FrZXJlZl90IHdha2VyZWY7DQo+
ICAJdTMyIGxhbmVfaW5mbzsNCj4gIA0KPiBAQCAtNTUsOSArNjQsNyBAQCBpbnQgaW50ZWxfdGNf
cG9ydF9maWFfbWF4X2xhbmVfY291bnQoc3RydWN0DQo+IGludGVsX2RpZ2l0YWxfcG9ydCAqZGln
X3BvcnQpDQo+ICANCj4gIAlsYW5lX2luZm8gPSAwOw0KPiAgCXdpdGhfaW50ZWxfZGlzcGxheV9w
b3dlcihkZXZfcHJpdiwgUE9XRVJfRE9NQUlOX0RJU1BMQVlfQ09SRSwNCj4gd2FrZXJlZikNCj4g
LQkJbGFuZV9pbmZvID0gKEk5MTVfUkVBRChQT1JUX1RYX0RGTEVYRFBTUCkgJg0KPiAtCQkJICAg
ICBEUF9MQU5FX0FTU0lHTk1FTlRfTUFTSyh0Y19wb3J0KSkgPj4NCj4gLQkJCQlEUF9MQU5FX0FT
U0lHTk1FTlRfU0hJRlQodGNfcG9ydCk7DQo+ICsJCWxhbmVfaW5mbyA9IGludGVsX3RjX3BvcnRf
Z2V0X2xhbmVfaW5mbyhkaWdfcG9ydCk7DQo+ICANCj4gIAlzd2l0Y2ggKGxhbmVfaW5mbykgew0K
PiAgCWRlZmF1bHQ6DQo+IEBAIC03NSw2ICs4Miw2OSBAQCBpbnQgaW50ZWxfdGNfcG9ydF9maWFf
bWF4X2xhbmVfY291bnQoc3RydWN0DQo+IGludGVsX2RpZ2l0YWxfcG9ydCAqZGlnX3BvcnQpDQo+
ICAJfQ0KPiAgfQ0KPiAgDQo+ICtzdGF0aWMgdm9pZCB0Y19wb3J0X2ZpeHVwX2xlZ2FjeV9mbGFn
KHN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQNCj4gKmRpZ19wb3J0LA0KPiArCQkJCSAgICAgIHUz
MiBsaXZlX3N0YXR1c19tYXNrKQ0KPiArew0KPiArCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpk
ZXZfcHJpdiA9IHRvX2k5MTUoZGlnX3BvcnQtDQo+ID5iYXNlLmJhc2UuZGV2KTsNCj4gKwllbnVt
IHRjX3BvcnQgdGNfcG9ydCA9IGludGVsX3BvcnRfdG9fdGMoZGV2X3ByaXYsIGRpZ19wb3J0LQ0K
PiA+YmFzZS5wb3J0KTsNCj4gKwl1MzIgdmFsaWRfaHBkX21hc2sgPSBkaWdfcG9ydC0+dGNfbGVn
YWN5X3BvcnQgPw0KPiBCSVQoVENfUE9SVF9MRUdBQ1kpIDoNCj4gKwkJCQkJCQl+QklUKFRDX1BP
UlRfTEUNCj4gR0FDWSk7DQo+ICsNCj4gKwlpZiAoIShsaXZlX3N0YXR1c19tYXNrICYgfnZhbGlk
X2hwZF9tYXNrKSkNCj4gKwkJcmV0dXJuOw0KPiArDQo+ICsJLyogSWYgbGl2ZSBzdGF0dXMgbWlz
bWF0Y2hlcyB0aGUgVkJUIGZsYWcsIHRydXN0IHRoZSBsaXZlDQo+IHN0YXR1cy4gKi8NCj4gKwlE
Uk1fRVJST1IoIlBvcnQgJXM6IGxpdmUgc3RhdHVzICUwOHggbWlzbWF0Y2hlcyB0aGUgbGVnYWN5
IHBvcnQNCj4gZmxhZywgZml4IGZsYWdcbiIsDQo+ICsJCSAgdGNfcG9ydF9uYW1lKGRldl9wcml2
LCB0Y19wb3J0KSwgbGl2ZV9zdGF0dXNfbWFzayk7DQo+ICsNCj4gKwlkaWdfcG9ydC0+dGNfbGVn
YWN5X3BvcnQgPSAhZGlnX3BvcnQtPnRjX2xlZ2FjeV9wb3J0Ow0KPiArfQ0KPiArDQo+ICtzdGF0
aWMgdTMyIHRjX3BvcnRfbGl2ZV9zdGF0dXNfbWFzayhzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9wb3J0
DQo+ICpkaWdfcG9ydCkNCj4gK3sNCj4gKwlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3By
aXYgPSB0b19pOTE1KGRpZ19wb3J0LQ0KPiA+YmFzZS5iYXNlLmRldik7DQo+ICsJZW51bSB0Y19w
b3J0IHRjX3BvcnQgPSBpbnRlbF9wb3J0X3RvX3RjKGRldl9wcml2LCBkaWdfcG9ydC0NCj4gPmJh
c2UucG9ydCk7DQo+ICsJdTMyIHZhbCA9IEk5MTVfUkVBRChQT1JUX1RYX0RGTEVYRFBTUCk7DQo+
ICsJdTMyIG1hc2sgPSAwOw0KPiArDQo+ICsJaWYgKHZhbCAmIFRDX0xJVkVfU1RBVEVfVEJUKHRj
X3BvcnQpKQ0KPiArCQltYXNrIHw9IEJJVChUQ19QT1JUX1RCVF9BTFQpOw0KPiArCWlmICh2YWwg
JiBUQ19MSVZFX1NUQVRFX1RDKHRjX3BvcnQpKQ0KPiArCQltYXNrIHw9IEJJVChUQ19QT1JUX0RQ
X0FMVCk7DQo+ICsNCj4gKwlpZiAoSTkxNV9SRUFEKFNERUlTUikgJiBTREVfVENfSE9UUExVR19J
Q1AodGNfcG9ydCkpDQo+ICsJCW1hc2sgfD0gQklUKFRDX1BPUlRfTEVHQUNZKTsNCj4gKw0KPiAr
CS8qIFRoZSBzaW5rIGNhbiBiZSBjb25uZWN0ZWQgb25seSBpbiBhIHNpbmdsZSBtb2RlLiAqLw0K
PiArCWlmICghV0FSTl9PTihod2VpZ2h0MzIobWFzaykgPiAxKSkNCj4gKwkJdGNfcG9ydF9maXh1
cF9sZWdhY3lfZmxhZyhkaWdfcG9ydCwgbWFzayk7DQoNClRoZSBtYXNrIHNob3VsZCBiZSB1cGRh
dGVkIGFmdGVyIHRoZSBmaXh1cA0KDQo+ICsNCj4gKwlyZXR1cm4gbWFzazsNCj4gK30NCj4gKw0K
PiArc3RhdGljIGJvb2wgaWNsX3RjX3BoeV9zdGF0dXNfY29tcGxldGUoc3RydWN0IGludGVsX2Rp
Z2l0YWxfcG9ydA0KPiAqZGlnX3BvcnQpDQo+ICt7DQo+ICsJc3RydWN0IGRybV9pOTE1X3ByaXZh
dGUgKmRldl9wcml2ID0gdG9faTkxNShkaWdfcG9ydC0NCj4gPmJhc2UuYmFzZS5kZXYpOw0KPiAr
CWVudW0gdGNfcG9ydCB0Y19wb3J0ID0gaW50ZWxfcG9ydF90b190YyhkZXZfcHJpdiwgZGlnX3Bv
cnQtDQo+ID5iYXNlLnBvcnQpOw0KPiArDQo+ICsJcmV0dXJuIEk5MTVfUkVBRChQT1JUX1RYX0RG
TEVYRFBQTVMpICYNCj4gKwkgICAgICAgRFBfUEhZX01PREVfU1RBVFVTX0NPTVBMRVRFRCh0Y19w
b3J0KTsNCj4gK30NCj4gKw0KPiArc3RhdGljIHZvaWQgaWNsX3RjX3BoeV9zZXRfc2FmZV9tb2Rl
KHN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQNCj4gKmRpZ19wb3J0LA0KPiArCQkJCSAgICAgYm9v
bCBlbmFibGUpDQo+ICt7DQo+ICsJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0g
dG9faTkxNShkaWdfcG9ydC0NCj4gPmJhc2UuYmFzZS5kZXYpOw0KPiArCWVudW0gdGNfcG9ydCB0
Y19wb3J0ID0gaW50ZWxfcG9ydF90b190YyhkZXZfcHJpdiwgZGlnX3BvcnQtDQo+ID5iYXNlLnBv
cnQpOw0KPiArCXUzMiB2YWwgPSBJOTE1X1JFQUQoUE9SVF9UWF9ERkxFWERQQ1NTUyk7DQo+ICsN
Cj4gKwl2YWwgJj0gfkRQX1BIWV9NT0RFX1NUQVRVU19OT1RfU0FGRSh0Y19wb3J0KTsNCj4gKwlp
ZiAoIWVuYWJsZSkNCj4gKwkJdmFsIHw9IERQX1BIWV9NT0RFX1NUQVRVU19OT1RfU0FGRSh0Y19w
b3J0KTsNCg0KV2h5IGNvbXBsZXRlIHJlbW92ZSB0aGUgb3B0aW1pemF0aW9ucz8NCllvdSBjb3Vs
ZCBkbzoNCg0Kb2xkX3ZhbCA9IHZhbCA9IEk5MTVfUkVBRChQT1JUX1RYX0RGTEVYRFBDU1NTKTsN
CnZhbCAmPSB+RFBfUEhZX01PREVfU1RBVFVTX05PVF9TQUZFKHRjX3BvcnQpOw0KDQppZiAoIWVu
YWJsZSkNCg0KCXZhbCB8PSBEUF9QSFlfTU9ERV9TVEFUVVNfTk9UX1NBRkUodGNfcG9ydCk7DQoN
Cg0KaWYgKHZhbCAhPSBvbGRfdmFsKQ0KCUk5MTVfV1JJVEUoUE9SVF9UWF9ERkxFWERQQ1NTUywg
dmFsKTsNCg0KPiArDQo+ICsJSTkxNV9XUklURShQT1JUX1RYX0RGTEVYRFBDU1NTLCB2YWwpOw0K
PiArfQ0KPiArDQo+ICAvKg0KPiAgICogVGhpcyBmdW5jdGlvbiBpbXBsZW1lbnRzIHRoZSBmaXJz
dCBwYXJ0IG9mIHRoZSBDb25uZWN0IEZsb3cNCj4gZGVzY3JpYmVkIGJ5IG91cg0KPiAgICogc3Bl
Y2lmaWNhdGlvbiwgR2VuMTEgVHlwZUMgUHJvZ3JhbW1pbmcgY2hhcHRlci4gVGhlIHJlc3Qgb2Yg
dGhlDQo+IGZsb3cgKHJlYWRpbmcNCj4gQEAgLTEwMCwzNiArMTcwLDMxIEBAIHN0YXRpYyBib29s
IGljbF90Y19waHlfY29ubmVjdChzdHJ1Y3QNCj4gaW50ZWxfZGlnaXRhbF9wb3J0ICpkaWdfcG9y
dCkNCj4gIHsNCj4gIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1
KGRpZ19wb3J0LQ0KPiA+YmFzZS5iYXNlLmRldik7DQo+ICAJZW51bSB0Y19wb3J0IHRjX3BvcnQg
PSBpbnRlbF9wb3J0X3RvX3RjKGRldl9wcml2LCBkaWdfcG9ydC0NCj4gPmJhc2UucG9ydCk7DQo+
IC0JdTMyIHZhbDsNCj4gKwl1MzIgbGl2ZV9zdGF0dXNfbWFzazsNCj4gIA0KPiAgCWlmIChkaWdf
cG9ydC0+dGNfbW9kZSAhPSBUQ19QT1JUX0xFR0FDWSAmJg0KPiAgCSAgICBkaWdfcG9ydC0+dGNf
bW9kZSAhPSBUQ19QT1JUX0RQX0FMVCkNCj4gIAkJcmV0dXJuIHRydWU7DQo+ICANCj4gLQl2YWwg
PSBJOTE1X1JFQUQoUE9SVF9UWF9ERkxFWERQUE1TKTsNCj4gLQlpZiAoISh2YWwgJiBEUF9QSFlf
TU9ERV9TVEFUVVNfQ09NUExFVEVEKHRjX3BvcnQpKSkgew0KPiArCWlmICghaWNsX3RjX3BoeV9z
dGF0dXNfY29tcGxldGUoZGlnX3BvcnQpKSB7DQo+ICAJCURSTV9ERUJVR19LTVMoIlBvcnQgJXM6
IFBIWSBub3QgcmVhZHlcbiIsDQo+ICAJCQkgICAgICB0Y19wb3J0X25hbWUoZGV2X3ByaXYsIHRj
X3BvcnQpKTsNCj4gIAkJV0FSTl9PTihkaWdfcG9ydC0+dGNfbGVnYWN5X3BvcnQpOw0KPiAgCQly
ZXR1cm4gZmFsc2U7DQo+ICAJfQ0KPiAgDQo+IC0JLyoNCj4gLQkgKiBUaGlzIGZ1bmN0aW9uIG1h
eSBiZSBjYWxsZWQgbWFueSB0aW1lcyBpbiBhIHJvdyB3aXRob3V0IGFuDQo+IEhQRCBldmVudA0K
PiAtCSAqIGluIGJldHdlZW4sIHNvIHRyeSB0byBhdm9pZCB0aGUgd3JpdGUgd2hlbiB3ZSBjYW4u
DQo+IC0JICovDQo+IC0JdmFsID0gSTkxNV9SRUFEKFBPUlRfVFhfREZMRVhEUENTU1MpOw0KPiAt
CWlmICghKHZhbCAmIERQX1BIWV9NT0RFX1NUQVRVU19OT1RfU0FGRSh0Y19wb3J0KSkpIHsNCj4g
LQkJdmFsIHw9IERQX1BIWV9NT0RFX1NUQVRVU19OT1RfU0FGRSh0Y19wb3J0KTsNCj4gLQkJSTkx
NV9XUklURShQT1JUX1RYX0RGTEVYRFBDU1NTLCB2YWwpOw0KPiAtCX0NCj4gKwlpY2xfdGNfcGh5
X3NldF9zYWZlX21vZGUoZGlnX3BvcnQsIGZhbHNlKTsNCj4gKw0KPiArCWlmIChkaWdfcG9ydC0+
dGNfbW9kZSA9PSBUQ19QT1JUX0xFR0FDWSkNCj4gKwkJcmV0dXJuIHRydWU7DQo+ICsNCj4gKwls
aXZlX3N0YXR1c19tYXNrID0gdGNfcG9ydF9saXZlX3N0YXR1c19tYXNrKGRpZ19wb3J0KTsNCj4g
IA0KPiAgCS8qDQo+ICAJICogTm93IHdlIGhhdmUgdG8gcmUtY2hlY2sgdGhlIGxpdmUgc3RhdGUs
IGluIGNhc2UgdGhlIHBvcnQNCj4gcmVjZW50bHkNCj4gIAkgKiBiZWNhbWUgZGlzY29ubmVjdGVk
LiBOb3QgbmVjZXNzYXJ5IGZvciBsZWdhY3kgbW9kZS4NCj4gIAkgKi8NCj4gLQlpZiAoZGlnX3Bv
cnQtPnRjX21vZGUgPT0gVENfUE9SVF9EUF9BTFQgJiYNCj4gLQkgICAgIShJOTE1X1JFQUQoUE9S
VF9UWF9ERkxFWERQU1ApICYNCj4gVENfTElWRV9TVEFURV9UQyh0Y19wb3J0KSkpIHsNCj4gKwlp
ZiAoIShsaXZlX3N0YXR1c19tYXNrICYgQklUKFRDX1BPUlRfRFBfQUxUKSkpIHsNCg0KV2hlbiBs
aXZlIHN0YXR1cyBpcyBUQ19QT1JUX1RCVF9BTFQgaXQgd2lsbCBjYXVzZSB0aGUgInN1ZGRlbg0K
ZGlzY29ubmVjdCIgdG8gYmUgcHJpbnRlZCBlYWNoIHRpbWUgYWx0aG91Z2ggaWNsX3RjX3BoeV9k
aXNjb25uZWN0KCkNCndpbGwgZG8gbm90aGluZyBmb3IgVEJULg0KDQo+ICAJCURSTV9ERUJVR19L
TVMoIlBvcnQgJXM6IFBIWSBzdWRkZW4gZGlzY29ubmVjdFxuIiwNCj4gIAkJCSAgICAgIHRjX3Bv
cnRfbmFtZShkZXZfcHJpdiwgdGNfcG9ydCkpOw0KPiAgCQlpY2xfdGNfcGh5X2Rpc2Nvbm5lY3Qo
ZGlnX3BvcnQpOw0KPiBAQCAtMTQ4LDQ0ICsyMTMsMzYgQEAgdm9pZCBpY2xfdGNfcGh5X2Rpc2Nv
bm5lY3Qoc3RydWN0DQo+IGludGVsX2RpZ2l0YWxfcG9ydCAqZGlnX3BvcnQpDQo+ICAJc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShkaWdfcG9ydC0NCj4gPmJhc2Uu
YmFzZS5kZXYpOw0KPiAgCWVudW0gdGNfcG9ydCB0Y19wb3J0ID0gaW50ZWxfcG9ydF90b190Yyhk
ZXZfcHJpdiwgZGlnX3BvcnQtDQo+ID5iYXNlLnBvcnQpOw0KPiAgDQo+IC0JLyoNCj4gLQkgKiBU
QlQgZGlzY29ubmVjdGlvbiBmbG93IGlzIHJlYWQgdGhlIGxpdmUgc3RhdHVzLCB3aGF0IHdhcw0K
PiBkb25lIGluDQo+IC0JICogY2FsbGVyLg0KPiAtCSAqLw0KPiAtCWlmIChkaWdfcG9ydC0+dGNf
bW9kZSA9PSBUQ19QT1JUX0RQX0FMVCB8fA0KPiAtCSAgICBkaWdfcG9ydC0+dGNfbW9kZSA9PSBU
Q19QT1JUX0xFR0FDWSkgew0KPiAtCQl1MzIgdmFsOw0KPiAtDQo+IC0JCXZhbCA9IEk5MTVfUkVB
RChQT1JUX1RYX0RGTEVYRFBDU1NTKTsNCj4gLQkJdmFsICY9IH5EUF9QSFlfTU9ERV9TVEFUVVNf
Tk9UX1NBRkUodGNfcG9ydCk7DQo+IC0JCUk5MTVfV1JJVEUoUE9SVF9UWF9ERkxFWERQQ1NTUywg
dmFsKTsNCj4gKwlzd2l0Y2ggKGRpZ19wb3J0LT50Y19tb2RlKSB7DQo+ICsJY2FzZSBUQ19QT1JU
X0xFR0FDWToNCj4gKwljYXNlIFRDX1BPUlRfRFBfQUxUOg0KPiArCQlpY2xfdGNfcGh5X3NldF9z
YWZlX21vZGUoZGlnX3BvcnQsIHRydWUpOw0KPiArCQlkaWdfcG9ydC0+dGNfbW9kZSA9IFRDX1BP
UlRfVEJUX0FMVDsNCj4gKwkJYnJlYWs7DQo+ICsJY2FzZSBUQ19QT1JUX1RCVF9BTFQ6DQo+ICsJ
CS8qIE5vdGhpbmcgdG8gZG8sIHdlIHN0YXkgaW4gVEJULWFsdCBtb2RlICovDQo+ICsJCWJyZWFr
Ow0KPiArCWRlZmF1bHQ6DQo+ICsJCU1JU1NJTkdfQ0FTRShkaWdfcG9ydC0+dGNfbW9kZSk7DQo+
ICAJfQ0KPiAgDQo+ICAJRFJNX0RFQlVHX0tNUygiUG9ydCAlczogbW9kZSAlcyBkaXNjb25uZWN0
ZWRcbiIsDQo+ICAJCSAgICAgIHRjX3BvcnRfbmFtZShkZXZfcHJpdiwgdGNfcG9ydCksDQo+ICAJ
CSAgICAgIHRjX3BvcnRfbW9kZV9uYW1lKGRpZ19wb3J0LT50Y19tb2RlKSk7DQo+IC0NCj4gLQlk
aWdfcG9ydC0+dGNfbW9kZSA9IFRDX1BPUlRfVEJUX0FMVDsNCj4gIH0NCj4gIA0KPiAgc3RhdGlj
IHZvaWQgaWNsX3VwZGF0ZV90Y19wb3J0X3R5cGUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUNCj4g
KmRldl9wcml2LA0KPiAgCQkJCSAgICBzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9wb3J0DQo+ICppbnRl
bF9kaWdfcG9ydCwNCj4gLQkJCQkgICAgYm9vbCBpc19sZWdhY3ksIGJvb2wgaXNfdHlwZWMsIGJv
b2wNCj4gaXNfdGJ0KQ0KPiArCQkJCSAgICB1MzIgbGl2ZV9zdGF0dXNfbWFzaykNCj4gIHsNCj4g
IAllbnVtIHBvcnQgcG9ydCA9IGludGVsX2RpZ19wb3J0LT5iYXNlLnBvcnQ7DQo+ICAJZW51bSB0
Y19wb3J0X21vZGUgb2xkX21vZGUgPSBpbnRlbF9kaWdfcG9ydC0+dGNfbW9kZTsNCj4gIA0KPiAt
CVdBUk5fT04oaXNfbGVnYWN5ICsgaXNfdHlwZWMgKyBpc190YnQgIT0gMSk7DQo+IC0NCj4gLQlp
ZiAoaXNfbGVnYWN5KQ0KPiAtCQlpbnRlbF9kaWdfcG9ydC0+dGNfbW9kZSA9IFRDX1BPUlRfTEVH
QUNZOw0KPiAtCWVsc2UgaWYgKGlzX3R5cGVjKQ0KPiAtCQlpbnRlbF9kaWdfcG9ydC0+dGNfbW9k
ZSA9IFRDX1BPUlRfRFBfQUxUOw0KPiAtCWVsc2UgaWYgKGlzX3RidCkNCj4gLQkJaW50ZWxfZGln
X3BvcnQtPnRjX21vZGUgPSBUQ19QT1JUX1RCVF9BTFQ7DQo+IC0JZWxzZQ0KPiArCWlmICghbGl2
ZV9zdGF0dXNfbWFzaykNCj4gIAkJcmV0dXJuOw0KPiAgDQo+ICsJaW50ZWxfZGlnX3BvcnQtPnRj
X21vZGUgPSBmbHMobGl2ZV9zdGF0dXNfbWFzaykgLSAxOw0KPiArDQo+ICAJaWYgKG9sZF9tb2Rl
ICE9IGludGVsX2RpZ19wb3J0LT50Y19tb2RlKQ0KPiAgCQlEUk1fREVCVUdfS01TKCJQb3J0ICVz
OiBwb3J0IGhhcyBtb2RlICVzXG4iLA0KPiAgCQkJICAgICAgdGNfcG9ydF9uYW1lKGRldl9wcml2
LA0KPiBAQCAtMjA3LDQwICsyNjQsMTkgQEAgc3RhdGljIHZvaWQgaWNsX3VwZGF0ZV90Y19wb3J0
X3R5cGUoc3RydWN0DQo+IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LA0KPiAgYm9vbCBpbnRl
bF90Y19wb3J0X2Nvbm5lY3RlZChzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9wb3J0ICpkaWdfcG9ydCkN
Cj4gIHsNCj4gIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGRp
Z19wb3J0LQ0KPiA+YmFzZS5iYXNlLmRldik7DQo+IC0JZW51bSBwb3J0IHBvcnQgPSBkaWdfcG9y
dC0+YmFzZS5wb3J0Ow0KPiAtCWVudW0gdGNfcG9ydCB0Y19wb3J0ID0gaW50ZWxfcG9ydF90b190
YyhkZXZfcHJpdiwgcG9ydCk7DQo+IC0JYm9vbCBpc19sZWdhY3ksIGlzX3R5cGVjLCBpc190YnQ7
DQo+IC0JdTMyIGRwc3A7DQo+IC0NCj4gLQkvKg0KPiAtCSAqIENvbXBsYWluIGlmIHdlIGdvdCBh
IGxlZ2FjeSBwb3J0IEhQRCwgYnV0IFZCVCBkaWRuJ3QgbWFyaw0KPiB0aGUgcG9ydCBhcw0KPiAt
CSAqIGxlZ2FjeS4gVHJlYXQgdGhlIHBvcnQgYXMgbGVnYWN5IGZyb20gbm93IG9uLg0KPiAtCSAq
Lw0KPiAtCWlmICghZGlnX3BvcnQtPnRjX2xlZ2FjeV9wb3J0ICYmDQo+IC0JICAgIEk5MTVfUkVB
RChTREVJU1IpICYgU0RFX1RDX0hPVFBMVUdfSUNQKHRjX3BvcnQpKSB7DQo+IC0JCURSTV9FUlJP
UigiUG9ydCAlczogVkJUIGluY29ycmVjdGx5IGNsYWltcyBwb3J0IGlzIG5vdA0KPiBUeXBlQyBs
ZWdhY3lcbiIsDQo+IC0JCQkgIHRjX3BvcnRfbmFtZShkZXZfcHJpdiwgdGNfcG9ydCkpOw0KPiAt
CQlkaWdfcG9ydC0+dGNfbGVnYWN5X3BvcnQgPSB0cnVlOw0KPiAtCX0NCj4gLQlpc19sZWdhY3kg
PSBkaWdfcG9ydC0+dGNfbGVnYWN5X3BvcnQ7DQo+ICsJdTMyIGxpdmVfc3RhdHVzX21hc2sgPSB0
Y19wb3J0X2xpdmVfc3RhdHVzX21hc2soZGlnX3BvcnQpOw0KPiAgDQo+ICAJLyoNCj4gIAkgKiBU
aGUgc3BlYyBzYXlzIHdlIHNob3VsZG4ndCBiZSB1c2luZyB0aGUgSVNSIGJpdHMgZm9yDQo+IGRl
dGVjdGluZw0KPiAgCSAqIGJldHdlZW4gVEMgYW5kIFRCVC4gV2Ugc2hvdWxkIHVzZSBERkxFWERQ
U1AuDQo+ICAJICovDQo+IC0JZHBzcCA9IEk5MTVfUkVBRChQT1JUX1RYX0RGTEVYRFBTUCk7DQo+
IC0JaXNfdHlwZWMgPSBkcHNwICYgVENfTElWRV9TVEFURV9UQyh0Y19wb3J0KTsNCj4gLQlpc190
YnQgPSBkcHNwICYgVENfTElWRV9TVEFURV9UQlQodGNfcG9ydCk7DQo+IC0NCj4gLQlpZiAoIWlz
X2xlZ2FjeSAmJiAhaXNfdHlwZWMgJiYgIWlzX3RidCkgew0KPiArCWlmICghbGl2ZV9zdGF0dXNf
bWFzayAmJiAhZGlnX3BvcnQtPnRjX2xlZ2FjeV9wb3J0KSB7DQoNClNvIG5vdyBpdCB3aWxsIGtl
ZXAgbGVnYWN5IHBvcnQgYXMgdW5zYWZlIGV2ZW4gd2hlbiBkaXNjb25uZWN0ZWQuDQpNYXliZSB3
b3J0aCBtZW50aW9uIGluIGNvbW1pdCBtZXNzYWdlLg0KDQo+ICAJCWljbF90Y19waHlfZGlzY29u
bmVjdChkaWdfcG9ydCk7DQo+ICANCj4gIAkJcmV0dXJuIGZhbHNlOw0KPiAgCX0NCj4gIA0KPiAt
CWljbF91cGRhdGVfdGNfcG9ydF90eXBlKGRldl9wcml2LCBkaWdfcG9ydCwgaXNfbGVnYWN5LA0K
PiBpc190eXBlYywNCj4gLQkJCQlpc190YnQpOw0KPiAtDQo+ICsJaWNsX3VwZGF0ZV90Y19wb3J0
X3R5cGUoZGV2X3ByaXYsIGRpZ19wb3J0LCBsaXZlX3N0YXR1c19tYXNrKTsNCj4gIAlpZiAoIWlj
bF90Y19waHlfY29ubmVjdChkaWdfcG9ydCkpDQo+ICAJCXJldHVybiBmYWxzZTsNCj4gIA0KPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfdGMuaA0KPiBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2ludGVsX3RjLmgNCj4gaW5kZXggOTRjNjJhYzRhMTYyLi5lOTM3ZjUzMjY5
NTkgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3RjLmgNCj4gKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfdGMuaA0KPiBAQCAtOCw2ICs4LDcgQEAgc3Ry
dWN0IGludGVsX2RpZ2l0YWxfcG9ydDsNCj4gIHZvaWQgaWNsX3RjX3BoeV9kaXNjb25uZWN0KHN0
cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgKmRpZ19wb3J0KTsNCj4gIA0KPiAgYm9vbCBpbnRlbF90
Y19wb3J0X2Nvbm5lY3RlZChzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9wb3J0ICpkaWdfcG9ydCk7DQo+
ICt1MzIgaW50ZWxfdGNfcG9ydF9nZXRfbGFuZV9pbmZvKHN0cnVjdCBpbnRlbF9kaWdpdGFsX3Bv
cnQNCj4gKmRpZ19wb3J0KTsNCj4gIGludCBpbnRlbF90Y19wb3J0X2ZpYV9tYXhfbGFuZV9jb3Vu
dChzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9wb3J0DQo+ICpkaWdfcG9ydCk7DQo+ICANCj4gICNlbmRp
ZiAvKiBfX0lOVEVMX1RDX0hfXyAqLw0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4
