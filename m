Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C8833F9E9D
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Nov 2019 00:56:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 311B06EC31;
	Tue, 12 Nov 2019 23:56:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 769A56EC31
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Nov 2019 23:56:22 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Nov 2019 15:56:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,298,1569308400"; d="scan'208";a="287712093"
Received: from fmsmsx108.amr.corp.intel.com ([10.18.124.206])
 by orsmga001.jf.intel.com with ESMTP; 12 Nov 2019 15:56:21 -0800
Received: from fmsmsx116.amr.corp.intel.com (10.18.116.20) by
 FMSMSX108.amr.corp.intel.com (10.18.124.206) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 12 Nov 2019 15:56:21 -0800
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.27]) by
 fmsmsx116.amr.corp.intel.com ([169.254.2.87]) with mapi id 14.03.0439.000;
 Tue, 12 Nov 2019 15:56:20 -0800
From: "Souza, Jose" <jose.souza@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>
Thread-Topic: [Intel-gfx] [PATCH 5/5] drm/i915/vbt: Parse power conservation
 features block
Thread-Index: AQHVlEPYy7+XbonwIUmGHn8UKFLW7qeIm/+AgAArI4A=
Date: Tue, 12 Nov 2019 23:56:20 +0000
Message-ID: <3eb0c3b944fe92f1bdc76808f2176ece5af8538f.camel@intel.com>
References: <20191106014504.167656-1-jose.souza@intel.com>
 <20191106014504.167656-5-jose.souza@intel.com>
 <20191112212155.GN21445@mdroper-desk1.amr.corp.intel.com>
In-Reply-To: <20191112212155.GN21445@mdroper-desk1.amr.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.9.135]
Content-ID: <810605545DA5B94AADD141DA27077741@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 5/5] drm/i915/vbt: Parse power conservation
 features block
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCAyMDE5LTExLTEyIGF0IDEzOjIxIC0wODAwLCBNYXR0IFJvcGVyIHdyb3RlOg0KPiBP
biBUdWUsIE5vdiAwNSwgMjAxOSBhdCAwNTo0NTowNFBNIC0wODAwLCBKb3PDqSBSb2JlcnRvIGRl
IFNvdXphDQo+IHdyb3RlOg0KPiA+IFNpbmNlIFZCVCAyMjggaXMgZnJvbSB0aGlzIGJsb2NrIHRo
YXQgUFNSIGFuZCBvdGhlciBwb3dlciBzYXZpbmcNCj4gPiBmZWF0dXJlcyBjb25maWd1cmF0aW9u
IHNob3VsZCBiZSByZWFkIGZyb20uDQo+ID4gDQo+ID4gQ2M6IEd3YW4tZ3llb25nIE11biA8Z3dh
bi1neWVvbmcubXVuQGludGVsLmNvbT4NCj4gPiBTaWduZWQtb2ZmLWJ5OiBKb3PDqSBSb2JlcnRv
IGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4NCj4gPiAtLS0NCj4gPiAgZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9zLmMgICAgIHwgMTkgKysrKysrKysrKystDQo+
ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdmJ0X2RlZnMuaCB8IDI5DQo+
ID4gKysrKysrKysrKysrKysrKysrKw0KPiA+ICAyIGZpbGVzIGNoYW5nZWQsIDQ3IGluc2VydGlv
bnMoKyksIDEgZGVsZXRpb24oLSkNCj4gPiANCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9zLmMNCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfYmlvcy5jDQo+ID4gaW5kZXggYTAzZjU2YjdiNGVmLi5iZjc5ZTk4NThi
ZDggMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9i
aW9zLmMNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3Mu
Yw0KPiA+IEBAIC01NjEsNyArNTYxLDIzIEBAIHBhcnNlX2RyaXZlcl9mZWF0dXJlcyhzdHJ1Y3Qg
ZHJtX2k5MTVfcHJpdmF0ZQ0KPiA+ICpkZXZfcHJpdiwNCj4gPiAgCSAqLw0KPiA+ICAJaWYgKCFk
cml2ZXItPmRycnNfZW5hYmxlZCkNCj4gPiAgCQlkZXZfcHJpdi0+dmJ0LmRycnNfdHlwZSA9IERS
UlNfTk9UX1NVUFBPUlRFRDsNCj4gPiAtCWRldl9wcml2LT52YnQucHNyLmVuYWJsZSA9IGRyaXZl
ci0+cHNyX2VuYWJsZWQ7DQo+ID4gKwlpZiAoYmRiLT52ZXJzaW9uIDwgMjI4KQ0KPiA+ICsJCWRl
dl9wcml2LT52YnQucHNyLmVuYWJsZSA9IGRyaXZlci0+cHNyX2VuYWJsZWQ7DQo+ID4gK30NCj4g
PiArDQo+ID4gK3N0YXRpYyB2b2lkDQo+ID4gK3BhcnNlX3Bvd2VyX2NvbnNlcnZhdGlvbl9mZWF0
dXJlcyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZQ0KPiA+ICpkZXZfcHJpdiwNCj4gPiArCQkJCSAg
Y29uc3Qgc3RydWN0IGJkYl9oZWFkZXIgKmJkYikNCj4gPiArew0KPiA+ICsJY29uc3Qgc3RydWN0
IGJkYl9sZnBfcG93ZXIgKnBvd2VyOw0KPiA+ICsJdTggcGFuZWxfdHlwZSA9IGRldl9wcml2LT52
YnQucGFuZWxfdHlwZTsNCj4gPiArDQo+ID4gKwlwb3dlciA9IGZpbmRfc2VjdGlvbihiZGIsIEJE
Ql9MVkRTX1BPV0VSKTsNCj4gPiArCWlmICghcG93ZXIpDQo+ID4gKwkJcmV0dXJuOw0KPiA+ICsN
Cj4gPiArCWlmIChiZGItPnZlcnNpb24gPj0gMjI4KQ0KPiA+ICsJCWRldl9wcml2LT52YnQucHNy
LmVuYWJsZSA9IHBvd2VyLT5wc3IgJiAoMSA8PA0KPiA+IHBhbmVsX3R5cGUpOw0KPiANCj4gU2hv
dWxkIHdlIGFsc28gYmUgc2V0dGluZyBkZXZfcHJpdi0+dmJ0LmRycnNfdHlwZSA9DQo+IERSUlNf
Tk9UX1NVUFBPUlRFRA0KPiBpZiBibG9jayA0NCB0ZWxscyB1cyBpdCBpc24ndCB2YWxpZCBvbiB0
aGlzIHBhbmVsPw0KPiANCg0KWWVwLCBpdCBzaG91bGQuDQpUaGFua3MgZm9yIGNhdGNoaW5nIHRo
aXMuDQoNCj4gDQo+IE1hdHQNCj4gDQo+ID4gIH0NCj4gPiAgDQo+ID4gIHN0YXRpYyB2b2lkDQo+
ID4gQEAgLTE4NzgsNiArMTg5NCw3IEBAIHZvaWQgaW50ZWxfYmlvc19pbml0KHN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlDQo+ID4gKmRldl9wcml2KQ0KPiA+ICAJcGFyc2VfbGZwX2JhY2tsaWdodChk
ZXZfcHJpdiwgYmRiKTsNCj4gPiAgCXBhcnNlX3Nkdm9fcGFuZWxfZGF0YShkZXZfcHJpdiwgYmRi
KTsNCj4gPiAgCXBhcnNlX2RyaXZlcl9mZWF0dXJlcyhkZXZfcHJpdiwgYmRiKTsNCj4gPiArCXBh
cnNlX3Bvd2VyX2NvbnNlcnZhdGlvbl9mZWF0dXJlcyhkZXZfcHJpdiwgYmRiKTsNCj4gPiAgCXBh
cnNlX2VkcChkZXZfcHJpdiwgYmRiKTsNCj4gPiAgCXBhcnNlX3BzcihkZXZfcHJpdiwgYmRiKTsN
Cj4gPiAgCXBhcnNlX21pcGlfY29uZmlnKGRldl9wcml2LCBiZGIpOw0KPiA+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3ZidF9kZWZzLmgNCj4gPiBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdmJ0X2RlZnMuaA0KPiA+IGluZGV4IDY5
YTdjYjFmYTEyMS4uMzFmNDdjZTU2NTg3IDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfdmJ0X2RlZnMuaA0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfdmJ0X2RlZnMuaA0KPiA+IEBAIC03OTIsNiArNzkyLDM1IEBA
IHN0cnVjdCBiZGJfbGZwX2JhY2tsaWdodF9kYXRhIHsNCj4gPiAgCXN0cnVjdCBsZnBfYmFja2xp
Z2h0X2NvbnRyb2xfbWV0aG9kIGJhY2tsaWdodF9jb250cm9sWzE2XTsNCj4gPiAgfSBfX3BhY2tl
ZDsNCj4gPiAgDQo+ID4gKy8qDQo+ID4gKyAqIEJsb2NrIDQ0IC0gTEZQIFBvd2VyIENvbnNlcnZh
dGlvbiBGZWF0dXJlcyBCbG9jaw0KPiA+ICsgKi8NCj4gPiArDQo+ID4gK3N0cnVjdCBhbHNfZGF0
YV9lbnRyeSB7DQo+ID4gKwl1MTYgYmFja2xpZ2h0X2FkanVzdDsNCj4gPiArCXUxNiBsdXg7DQo+
ID4gK30gX19wYWNrZWQ7DQo+ID4gKw0KPiA+ICtzdHJ1Y3QgYWdyZXNzaXZlbmVzc19wcm9maWxl
X2VudHJ5IHsNCj4gPiArCXU4IGRwc3RfYWdyZXNzaXZlbmVzcyA6IDQ7DQo+ID4gKwl1OCBsYWNl
X2FncmVzc2l2ZW5lc3MgOiA0Ow0KPiA+ICt9IF9fcGFja2VkOw0KPiA+ICsNCj4gPiArc3RydWN0
IGJkYl9sZnBfcG93ZXIgew0KPiA+ICsJdTggbGZwX2ZlYXR1cmVfYml0czsNCj4gPiArCXN0cnVj
dCBhbHNfZGF0YV9lbnRyeSBhbHNbNV07DQo+ID4gKwl1OCBsYWNlX2FnZ3Jlc3NpdmVuZXNzX3By
b2ZpbGU7DQo+ID4gKwl1MTYgZHBzdDsNCj4gPiArCXUxNiBwc3I7DQo+ID4gKwl1MTYgZHJyczsN
Cj4gPiArCXUxNiBsYWNlX3N1cHBvcnQ7DQo+ID4gKwl1MTYgYWR0Ow0KPiA+ICsJdTE2IGRtcnJz
Ow0KPiA+ICsJdTE2IGFkYjsNCj4gPiArCXUxNiBsYWNlX2VuYWJsZWRfc3RhdHVzOw0KPiA+ICsJ
c3RydWN0IGFncmVzc2l2ZW5lc3NfcHJvZmlsZV9lbnRyeSBhZ2dyZXNzaXZlbmVzWzE2XTsNCj4g
PiArfSBfX3BhY2tlZDsNCj4gPiArDQo+ID4gIC8qDQo+ID4gICAqIEJsb2NrIDUyIC0gTUlQSSBD
b25maWd1cmF0aW9uIEJsb2NrDQo+ID4gICAqLw0KPiA+IC0tIA0KPiA+IDIuMjQuMA0KPiA+IA0K
PiA+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQo+ID4g
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdA0KPiA+IEludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcNCj4gPiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeA0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
