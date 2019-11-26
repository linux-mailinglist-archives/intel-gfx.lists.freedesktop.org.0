Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A26FC109755
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Nov 2019 01:47:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 951F2893EF;
	Tue, 26 Nov 2019 00:47:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C171F893EF
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Nov 2019 00:47:40 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Nov 2019 16:47:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,243,1571727600"; d="scan'208";a="217046157"
Received: from fmsmsx107.amr.corp.intel.com ([10.18.124.205])
 by fmsmga001.fm.intel.com with ESMTP; 25 Nov 2019 16:47:40 -0800
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.27]) by
 fmsmsx107.amr.corp.intel.com ([169.254.6.172]) with mapi id 14.03.0439.000;
 Mon, 25 Nov 2019 16:47:39 -0800
From: "Souza, Jose" <jose.souza@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>
Thread-Topic: [Intel-gfx] [PATCH 5/5] drm/i915/vbt: Parse power conservation
 features block
Thread-Index: AQHVlEPYy7+XbonwIUmGHn8UKFLW7qeIm/+AgAArI4CAFHyngA==
Date: Tue, 26 Nov 2019 00:47:39 +0000
Message-ID: <2fb0dddb1389172dd75be95f2758d04440cb149a.camel@intel.com>
References: <20191106014504.167656-1-jose.souza@intel.com>
 <20191106014504.167656-5-jose.souza@intel.com>
 <20191112212155.GN21445@mdroper-desk1.amr.corp.intel.com>
 <3eb0c3b944fe92f1bdc76808f2176ece5af8538f.camel@intel.com>
In-Reply-To: <3eb0c3b944fe92f1bdc76808f2176ece5af8538f.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.8.225]
Content-ID: <CA6627AFFAE00C4CA5C15A7F1027551A@intel.com>
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

T24gVHVlLCAyMDE5LTExLTEyIGF0IDIzOjU2ICswMDAwLCBTb3V6YSwgSm9zZSB3cm90ZToNCj4g
T24gVHVlLCAyMDE5LTExLTEyIGF0IDEzOjIxIC0wODAwLCBNYXR0IFJvcGVyIHdyb3RlOg0KPiA+
IE9uIFR1ZSwgTm92IDA1LCAyMDE5IGF0IDA1OjQ1OjA0UE0gLTA4MDAsIEpvc8OpIFJvYmVydG8g
ZGUgU291emENCj4gPiB3cm90ZToNCj4gPiA+IFNpbmNlIFZCVCAyMjggaXMgZnJvbSB0aGlzIGJs
b2NrIHRoYXQgUFNSIGFuZCBvdGhlciBwb3dlciBzYXZpbmcNCj4gPiA+IGZlYXR1cmVzIGNvbmZp
Z3VyYXRpb24gc2hvdWxkIGJlIHJlYWQgZnJvbS4NCj4gPiA+IA0KPiA+ID4gQ2M6IEd3YW4tZ3ll
b25nIE11biA8Z3dhbi1neWVvbmcubXVuQGludGVsLmNvbT4NCj4gPiA+IFNpZ25lZC1vZmYtYnk6
IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPg0KPiA+ID4gLS0t
DQo+ID4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9zLmMgICAgIHwg
MTkgKysrKysrKysrKystDQo+ID4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF92YnRfZGVmcy5oIHwgMjkNCj4gPiA+ICsrKysrKysrKysrKysrKysrKysNCj4gPiA+ICAyIGZp
bGVzIGNoYW5nZWQsIDQ3IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkNCj4gPiA+IA0KPiA+
ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5j
DQo+ID4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5jDQo+ID4g
PiBpbmRleCBhMDNmNTZiN2I0ZWYuLmJmNzllOTg1OGJkOCAxMDA2NDQNCj4gPiA+IC0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5jDQo+ID4gPiArKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuYw0KPiA+ID4gQEAgLTU2MSw3ICs1
NjEsMjMgQEAgcGFyc2VfZHJpdmVyX2ZlYXR1cmVzKHN0cnVjdA0KPiA+ID4gZHJtX2k5MTVfcHJp
dmF0ZQ0KPiA+ID4gKmRldl9wcml2LA0KPiA+ID4gIAkgKi8NCj4gPiA+ICAJaWYgKCFkcml2ZXIt
PmRycnNfZW5hYmxlZCkNCj4gPiA+ICAJCWRldl9wcml2LT52YnQuZHJyc190eXBlID0gRFJSU19O
T1RfU1VQUE9SVEVEOw0KPiA+ID4gLQlkZXZfcHJpdi0+dmJ0LnBzci5lbmFibGUgPSBkcml2ZXIt
PnBzcl9lbmFibGVkOw0KPiA+ID4gKwlpZiAoYmRiLT52ZXJzaW9uIDwgMjI4KQ0KPiA+ID4gKwkJ
ZGV2X3ByaXYtPnZidC5wc3IuZW5hYmxlID0gZHJpdmVyLT5wc3JfZW5hYmxlZDsNCj4gPiA+ICt9
DQo+ID4gPiArDQo+ID4gPiArc3RhdGljIHZvaWQNCj4gPiA+ICtwYXJzZV9wb3dlcl9jb25zZXJ2
YXRpb25fZmVhdHVyZXMoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUNCj4gPiA+ICpkZXZfcHJpdiwN
Cj4gPiA+ICsJCQkJICBjb25zdCBzdHJ1Y3QgYmRiX2hlYWRlciAqYmRiKQ0KPiA+ID4gK3sNCj4g
PiA+ICsJY29uc3Qgc3RydWN0IGJkYl9sZnBfcG93ZXIgKnBvd2VyOw0KPiA+ID4gKwl1OCBwYW5l
bF90eXBlID0gZGV2X3ByaXYtPnZidC5wYW5lbF90eXBlOw0KPiA+ID4gKw0KPiA+ID4gKwlwb3dl
ciA9IGZpbmRfc2VjdGlvbihiZGIsIEJEQl9MVkRTX1BPV0VSKTsNCj4gPiA+ICsJaWYgKCFwb3dl
cikNCj4gPiA+ICsJCXJldHVybjsNCj4gPiA+ICsNCj4gPiA+ICsJaWYgKGJkYi0+dmVyc2lvbiA+
PSAyMjgpDQo+ID4gPiArCQlkZXZfcHJpdi0+dmJ0LnBzci5lbmFibGUgPSBwb3dlci0+cHNyICYg
KDEgPDwNCj4gPiA+IHBhbmVsX3R5cGUpOw0KPiA+IA0KPiA+IFNob3VsZCB3ZSBhbHNvIGJlIHNl
dHRpbmcgZGV2X3ByaXYtPnZidC5kcnJzX3R5cGUgPQ0KPiA+IERSUlNfTk9UX1NVUFBPUlRFRA0K
PiA+IGlmIGJsb2NrIDQ0IHRlbGxzIHVzIGl0IGlzbid0IHZhbGlkIG9uIHRoaXMgcGFuZWw/DQo+
ID4gDQo+IA0KPiBZZXAsIGl0IHNob3VsZC4NCj4gVGhhbmtzIGZvciBjYXRjaGluZyB0aGlzLg0K
DQpOb3RoaW5nIGZyb20gYmxvY2sgNDAgaXMgb2Jzb2xldGUsIGl0IGhhcyB0aGUgaW5mb3JtYXRp
b24gYWJvdXQgdGhlDQpEUlJTIHR5cGUgb2YgYWxsIHRoZSAxNiBwb3NzaWJsZSBwYW5lbHMgc28g
aXMgYmV0dGVyIGtlZXAgcmVseWluZyBvbiBpdA0KYXMgYmxvY2sgNDQgb25seSBoYXZlIG9ubHkg
dGhlIGluZm9ybWF0aW9uIGlmIERSUlMgaXMgc3VwcG9ydGVkIG9yIG5vdC4NCg0KSSBhbHNvIGNo
ZWNrZWQgdGhlIG90aGVyIGZlYXR1cmVzIGJ1dCB3ZSBkb24ndCBpbXBsZW1lbnQgdGhvc2UuDQoN
Cg0KPiANCj4gPiBNYXR0DQo+ID4gDQo+ID4gPiAgfQ0KPiA+ID4gIA0KPiA+ID4gIHN0YXRpYyB2
b2lkDQo+ID4gPiBAQCAtMTg3OCw2ICsxODk0LDcgQEAgdm9pZCBpbnRlbF9iaW9zX2luaXQoc3Ry
dWN0DQo+ID4gPiBkcm1faTkxNV9wcml2YXRlDQo+ID4gPiAqZGV2X3ByaXYpDQo+ID4gPiAgCXBh
cnNlX2xmcF9iYWNrbGlnaHQoZGV2X3ByaXYsIGJkYik7DQo+ID4gPiAgCXBhcnNlX3Nkdm9fcGFu
ZWxfZGF0YShkZXZfcHJpdiwgYmRiKTsNCj4gPiA+ICAJcGFyc2VfZHJpdmVyX2ZlYXR1cmVzKGRl
dl9wcml2LCBiZGIpOw0KPiA+ID4gKwlwYXJzZV9wb3dlcl9jb25zZXJ2YXRpb25fZmVhdHVyZXMo
ZGV2X3ByaXYsIGJkYik7DQo+ID4gPiAgCXBhcnNlX2VkcChkZXZfcHJpdiwgYmRiKTsNCj4gPiA+
ICAJcGFyc2VfcHNyKGRldl9wcml2LCBiZGIpOw0KPiA+ID4gIAlwYXJzZV9taXBpX2NvbmZpZyhk
ZXZfcHJpdiwgYmRiKTsNCj4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX3ZidF9kZWZzLmgNCj4gPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF92YnRfZGVmcy5oDQo+ID4gPiBpbmRleCA2OWE3Y2IxZmExMjEuLjMxZjQ3Y2U1
NjU4NyAxMDA2NDQNCj4gPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfdmJ0X2RlZnMuaA0KPiA+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF92YnRfZGVmcy5oDQo+ID4gPiBAQCAtNzkyLDYgKzc5MiwzNSBAQCBzdHJ1Y3QgYmRiX2xm
cF9iYWNrbGlnaHRfZGF0YSB7DQo+ID4gPiAgCXN0cnVjdCBsZnBfYmFja2xpZ2h0X2NvbnRyb2xf
bWV0aG9kIGJhY2tsaWdodF9jb250cm9sWzE2XTsNCj4gPiA+ICB9IF9fcGFja2VkOw0KPiA+ID4g
IA0KPiA+ID4gKy8qDQo+ID4gPiArICogQmxvY2sgNDQgLSBMRlAgUG93ZXIgQ29uc2VydmF0aW9u
IEZlYXR1cmVzIEJsb2NrDQo+ID4gPiArICovDQo+ID4gPiArDQo+ID4gPiArc3RydWN0IGFsc19k
YXRhX2VudHJ5IHsNCj4gPiA+ICsJdTE2IGJhY2tsaWdodF9hZGp1c3Q7DQo+ID4gPiArCXUxNiBs
dXg7DQo+ID4gPiArfSBfX3BhY2tlZDsNCj4gPiA+ICsNCj4gPiA+ICtzdHJ1Y3QgYWdyZXNzaXZl
bmVzc19wcm9maWxlX2VudHJ5IHsNCj4gPiA+ICsJdTggZHBzdF9hZ3Jlc3NpdmVuZXNzIDogNDsN
Cj4gPiA+ICsJdTggbGFjZV9hZ3Jlc3NpdmVuZXNzIDogNDsNCj4gPiA+ICt9IF9fcGFja2VkOw0K
PiA+ID4gKw0KPiA+ID4gK3N0cnVjdCBiZGJfbGZwX3Bvd2VyIHsNCj4gPiA+ICsJdTggbGZwX2Zl
YXR1cmVfYml0czsNCj4gPiA+ICsJc3RydWN0IGFsc19kYXRhX2VudHJ5IGFsc1s1XTsNCj4gPiA+
ICsJdTggbGFjZV9hZ2dyZXNzaXZlbmVzc19wcm9maWxlOw0KPiA+ID4gKwl1MTYgZHBzdDsNCj4g
PiA+ICsJdTE2IHBzcjsNCj4gPiA+ICsJdTE2IGRycnM7DQo+ID4gPiArCXUxNiBsYWNlX3N1cHBv
cnQ7DQo+ID4gPiArCXUxNiBhZHQ7DQo+ID4gPiArCXUxNiBkbXJyczsNCj4gPiA+ICsJdTE2IGFk
YjsNCj4gPiA+ICsJdTE2IGxhY2VfZW5hYmxlZF9zdGF0dXM7DQo+ID4gPiArCXN0cnVjdCBhZ3Jl
c3NpdmVuZXNzX3Byb2ZpbGVfZW50cnkgYWdncmVzc2l2ZW5lc1sxNl07DQo+ID4gPiArfSBfX3Bh
Y2tlZDsNCj4gPiA+ICsNCj4gPiA+ICAvKg0KPiA+ID4gICAqIEJsb2NrIDUyIC0gTUlQSSBDb25m
aWd1cmF0aW9uIEJsb2NrDQo+ID4gPiAgICovDQo+ID4gPiAtLSANCj4gPiA+IDIuMjQuMA0KPiA+
ID4gDQo+ID4gPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Xw0KPiA+ID4gSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdA0KPiA+ID4gSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZw0KPiA+ID4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZngNCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18NCj4gSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdA0KPiBJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnDQo+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZng=
