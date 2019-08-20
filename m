Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EAC596C13
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Aug 2019 00:20:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6074A6E896;
	Tue, 20 Aug 2019 22:20:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 084DC6E896
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Aug 2019 22:20:02 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Aug 2019 15:20:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,410,1559545200"; d="scan'208";a="262305635"
Received: from fmsmsx106.amr.corp.intel.com ([10.18.124.204])
 by orsmga001.jf.intel.com with ESMTP; 20 Aug 2019 15:20:02 -0700
Received: from fmsmsx157.amr.corp.intel.com (10.18.116.73) by
 FMSMSX106.amr.corp.intel.com (10.18.124.204) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 20 Aug 2019 15:20:01 -0700
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.69]) by
 FMSMSX157.amr.corp.intel.com ([169.254.14.57]) with mapi id 14.03.0439.000;
 Tue, 20 Aug 2019 15:20:01 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "De
 Marchi, Lucas" <lucas.demarchi@intel.com>
Thread-Topic: [PATCH v2 07/40] drm/i915: Do not unmask PSR interruption in
 IRQ postinstall
Thread-Index: AQHVVN+qzUOzpFm9NU6a6w0ADN83TqcE92gAgAAfAQA=
Date: Tue, 20 Aug 2019 22:20:00 +0000
Message-ID: <99dcc236fd1abe56afba2d9fcfa641850fbe0d2d.camel@intel.com>
References: <20190817093902.2171-1-lucas.demarchi@intel.com>
 <20190817093902.2171-8-lucas.demarchi@intel.com>
 <20190820202902.fuqfwpgdom5lvx64@ldmartin-desk1>
In-Reply-To: <20190820202902.fuqfwpgdom5lvx64@ldmartin-desk1>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.9.135]
Content-ID: <36BA1D493A52754382E4A223B5117CDE@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2 07/40] drm/i915: Do not unmask PSR
 interruption in IRQ postinstall
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
Cc: "Pandiyan, Dhinakaran" <dhinakaran.pandiyan@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCAyMDE5LTA4LTIwIGF0IDEzOjI5IC0wNzAwLCBMdWNhcyBEZSBNYXJjaGkgd3JvdGU6
DQo+IE9uIFNhdCwgQXVnIDE3LCAyMDE5IGF0IDAyOjM4OjI5QU0gLTA3MDAsIEx1Y2FzIERlIE1h
cmNoaSB3cm90ZToNCj4gPiBGcm9tOiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXph
QGludGVsLmNvbT4NCj4gPiANCj4gPiBObyBuZWVkIHRvIHVubWFzayBQU1IgaW50ZXJydXRwaW9u
IGlmIFBTUiBpcyBub3QgZW5hYmxlZCwgYmV0dGVyDQo+ID4gbW92ZQ0KPiA+IHRoZSBjYWxsIHRv
IGludGVsX3Bzcl9lbmFibGVfc291cmNlKCkuDQo+ID4gDQo+ID4gQ2M6IFJvZHJpZ28gVml2aSA8
cm9kcmlnby52aXZpQGludGVsLmNvbT4NCj4gPiBDYzogRGhpbmFrYXJhbiBQYW5kaXlhbiA8ZGhp
bmFrYXJhbi5wYW5kaXlhbkBpbnRlbC5jb20+DQo+ID4gU2lnbmVkLW9mZi1ieTogSm9zw6kgUm9i
ZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+DQo+ID4gU2lnbmVkLW9mZi1ieTog
THVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+DQo+ID4gLS0tDQo+ID4g
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYyB8IDQgKysrLQ0KPiA+IGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmggfCAxIC0NCj4gPiBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X2lycS5jICAgICAgICAgIHwgMiAtLQ0KPiA+IDMgZmlsZXMgY2hh
bmdlZCwgMyBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQ0KPiA+IA0KPiA+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ID4gYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ID4gaW5kZXggNDM1MzI3MGJk
NjVjLi5lY2Y5NDVhZWY5MjIgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9wc3IuYw0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfcHNyLmMNCj4gPiBAQCAtMTA1LDcgKzEwNSw3IEBAIHN0YXRpYyBpbnQgZWRwX3Bz
cl9zaGlmdChlbnVtIHRyYW5zY29kZXINCj4gPiBjcHVfdHJhbnNjb2RlcikNCj4gPiAJfQ0KPiA+
IH0NCj4gPiANCj4gPiAtdm9pZCBpbnRlbF9wc3JfaXJxX2NvbnRyb2woc3RydWN0IGRybV9pOTE1
X3ByaXZhdGUgKmRldl9wcml2LCB1MzINCj4gPiBkZWJ1ZykNCj4gPiArc3RhdGljIHZvaWQgaW50
ZWxfcHNyX2lycV9jb250cm9sKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlDQo+ID4gKmRldl9wcml2
LCB1MzIgZGVidWcpDQo+IA0KPiBpbnRlbF9wc3IuYyBzZWVtcyBub3QgdG8gZm9sbG93IHRoZSBj
b252ZW50aW9uIG9mIG5vdCB1c2luZyBhIHByZWZpeA0KPiBmb3INCj4gc3RhdGljIGZ1bmN0aW9u
cy4gQnV0IGl0IHdvdWxkIGJlIG5pY2UgdG8gbWFrZSBpdCBzbywgaS5lLg0KPiBwc3JfaXJxX2Nv
bnRyb2woKS4NCg0KRmFpciwgd2lsbCBkbyB0aGF0IGZvciB0aGlzIG9uZQ0KDQo+IA0KPiA+IHsN
Cj4gPiAJdTMyIGRlYnVnX21hc2ssIG1hc2s7DQo+ID4gCWVudW0gdHJhbnNjb2RlciBjcHVfdHJh
bnNjb2RlcjsNCj4gPiBAQCAtNzM3LDYgKzczNyw4IEBAIHN0YXRpYyB2b2lkIGludGVsX3Bzcl9l
bmFibGVfc291cmNlKHN0cnVjdA0KPiA+IGludGVsX2RwICppbnRlbF9kcCwNCj4gPiAJCW1hc2sg
fD0gRURQX1BTUl9ERUJVR19NQVNLX0RJU1BfUkVHX1dSSVRFOw0KPiA+IA0KPiA+IAlJOTE1X1dS
SVRFKEVEUF9QU1JfREVCVUcoZGV2X3ByaXYtPnBzci50cmFuc2NvZGVyKSwgbWFzayk7DQo+ID4g
Kw0KPiA+ICsJaW50ZWxfcHNyX2lycV9jb250cm9sKGRldl9wcml2LCBkZXZfcHJpdi0+cHNyLmRl
YnVnKTsNCj4gDQo+IHNob3VsZG4ndCB0aGlzIGJlIGRvbmUgYmVmb3JlIHRoZSBvdGhlciB3cml0
ZXMgaW4gdGhpcyBmdW5jdGlvbj8NCg0KVGhlIHVubWFzayBvZiBuZWNlc3NhcnkgaW50ZXJydXB0
cyBvbmx5IG5lZWRzIHRvIGJlIGRvbmUgYmVmb3JlDQppbnRlbF9wc3JfYWN0aXZhdGUoKQ0KDQo+
IA0KPiBMdWNhcyBEZSBNYXJjaGkNCj4gDQo+ID4gfQ0KPiA+IA0KPiA+IHN0YXRpYyB2b2lkIGlu
dGVsX3Bzcl9lbmFibGVfbG9ja2VkKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlDQo+ID4gKmRldl9w
cml2LA0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X3Bzci5oDQo+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5oDQo+
ID4gaW5kZXggZGM4MTg4MjZmMzZkLi40NmU0ZGU4YjhjZDUgMTAwNjQ0DQo+ID4gLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuaA0KPiA+ICsrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmgNCj4gPiBAQCAtMzAsNyArMzAsNiBAQCB2
b2lkIGludGVsX3Bzcl9mbHVzaChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZQ0KPiA+ICpkZXZfcHJp
diwNCj4gPiB2b2lkIGludGVsX3Bzcl9pbml0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZf
cHJpdik7DQo+ID4gdm9pZCBpbnRlbF9wc3JfY29tcHV0ZV9jb25maWcoc3RydWN0IGludGVsX2Rw
ICppbnRlbF9kcCwNCj4gPiAJCQkgICAgICBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19z
dGF0ZSk7DQo+ID4gLXZvaWQgaW50ZWxfcHNyX2lycV9jb250cm9sKHN0cnVjdCBkcm1faTkxNV9w
cml2YXRlICpkZXZfcHJpdiwgdTMyDQo+ID4gZGVidWcpOw0KPiA+IHZvaWQgaW50ZWxfcHNyX2ly
cV9oYW5kbGVyKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwgdTMyDQo+ID4gcHNy
X2lpcik7DQo+ID4gdm9pZCBpbnRlbF9wc3Jfc2hvcnRfcHVsc2Uoc3RydWN0IGludGVsX2RwICpp
bnRlbF9kcCk7DQo+ID4gaW50IGludGVsX3Bzcl93YWl0X2Zvcl9pZGxlKGNvbnN0IHN0cnVjdCBp
bnRlbF9jcnRjX3N0YXRlDQo+ID4gKm5ld19jcnRjX3N0YXRlLA0KPiA+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2lycS5jDQo+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X2lycS5jDQo+ID4gaW5kZXggMzdlM2RkM2MxYTlkLi43NzM5MWQ4MzI1YmYgMTAwNjQ0
DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9pcnEuYw0KPiA+ICsrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfaXJxLmMNCj4gPiBAQCAtMzY4NCw3ICszNjg0LDYgQEAg
c3RhdGljIHZvaWQgaXJvbmxha2VfaXJxX3Bvc3RpbnN0YWxsKHN0cnVjdA0KPiA+IGRybV9pOTE1
X3ByaXZhdGUgKmRldl9wcml2KQ0KPiA+IA0KPiA+IAlpZiAoSVNfSEFTV0VMTChkZXZfcHJpdikp
IHsNCj4gPiAJCWdlbjNfYXNzZXJ0X2lpcl9pc196ZXJvKHVuY29yZSwgRURQX1BTUl9JSVIpOw0K
PiA+IC0JCWludGVsX3Bzcl9pcnFfY29udHJvbChkZXZfcHJpdiwgZGV2X3ByaXYtPnBzci5kZWJ1
Zyk7DQo+ID4gCQlkaXNwbGF5X21hc2sgfD0gREVfRURQX1BTUl9JTlRfSFNXOw0KPiA+IAl9DQo+
ID4gDQo+ID4gQEAgLTM3OTUsNyArMzc5NCw2IEBAIHN0YXRpYyB2b2lkIGdlbjhfZGVfaXJxX3Bv
c3RpbnN0YWxsKHN0cnVjdA0KPiA+IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQ0KPiA+IAkJ
ZGVfcG9ydF9lbmFibGVzIHw9IEdFTjhfUE9SVF9EUF9BX0hPVFBMVUc7DQo+ID4gDQo+ID4gCWdl
bjNfYXNzZXJ0X2lpcl9pc196ZXJvKHVuY29yZSwgRURQX1BTUl9JSVIpOw0KPiA+IC0JaW50ZWxf
cHNyX2lycV9jb250cm9sKGRldl9wcml2LCBkZXZfcHJpdi0+cHNyLmRlYnVnKTsNCj4gPiANCj4g
PiAJZm9yX2VhY2hfcGlwZShkZXZfcHJpdiwgcGlwZSkgew0KPiA+IAkJZGV2X3ByaXYtPmRlX2ly
cV9tYXNrW3BpcGVdID0gfmRlX3BpcGVfbWFza2VkOw0KPiA+IC0tIA0KPiA+IDIuMjEuMA0KPiA+
IA0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
