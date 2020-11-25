Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A8CB2C470F
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Nov 2020 18:52:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA8366E8DD;
	Wed, 25 Nov 2020 17:52:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EEEE76E8DD
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Nov 2020 17:52:17 +0000 (UTC)
IronPort-SDR: Wb0r+mRnuCjQkwlOIqZ5BjVbWdfJHzgxPKkv2Ey/uRyz+O+YfuqjMp7qs/88B7e+VH8kdCOLLk
 ajZUKCbBr+bw==
X-IronPort-AV: E=McAfee;i="6000,8403,9816"; a="256885124"
X-IronPort-AV: E=Sophos;i="5.78,369,1599548400"; d="scan'208";a="256885124"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2020 09:52:17 -0800
IronPort-SDR: 4wnknwWmD39+rXTnkbqEADmUIjMP6dc0HcnAl13qMK8qImq5q0+JGGuMG9MooMgjhr10RTa3sT
 pR7BShVhg3og==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,369,1599548400"; d="scan'208";a="479017647"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by orsmga004.jf.intel.com with ESMTP; 25 Nov 2020 09:52:17 -0800
Received: from bgsmsx603.gar.corp.intel.com (10.109.78.82) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 25 Nov 2020 09:52:16 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 BGSMSX603.gar.corp.intel.com (10.109.78.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 25 Nov 2020 23:22:13 +0530
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.1713.004;
 Wed, 25 Nov 2020 09:52:10 -0800
From: "Souza, Jose" <jose.souza@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Thread-Topic: [Intel-gfx] [v3 1/2] drm/i915/display/tgl: Disable FBC with PSR2
Thread-Index: AQHWvqZp9ipM8+so4UWz2Ss2oWaquanYZCqAgAExtYCAABpjAA==
Date: Wed, 25 Nov 2020 17:52:10 +0000
Message-ID: <ae57f8e2ddc7a2bda0d6f741d411c2a0b59efa80.camel@intel.com>
References: <20201119155050.20328-2-uma.shankar@intel.com>
 <20201119193614.25914-1-uma.shankar@intel.com>
 <d5698ec6956ff3f0df5d3bcce9b836fcd06ef7d0.camel@intel.com>
 <20201125161755.GN6112@intel.com>
In-Reply-To: <20201125161755.GN6112@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-ID: <F664A8D2B968554486337BF842E74336@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [v3 1/2] drm/i915/display/tgl: Disable FBC with PSR2
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

T24gV2VkLCAyMDIwLTExLTI1IGF0IDE4OjE3ICswMjAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
DQo+IE9uIFR1ZSwgTm92IDI0LCAyMDIwIGF0IDEwOjAzOjM1UE0gKzAwMDAsIFNvdXphLCBKb3Nl
IHdyb3RlOg0KPiA+IE9uIEZyaSwgMjAyMC0xMS0yMCBhdCAwMTowNiArMDUzMCwgVW1hIFNoYW5r
YXIgd3JvdGU6DQo+ID4gPiBUaGVyZSBhcmUgc29tZSBjb3JuZXIgY2FzZXMgd3J0IHVuZGVycnVu
IHdoZW4gd2UgZW5hYmxlDQo+ID4gPiBGQkMgd2l0aCBQU1IyIG9uIFRHTC4gUmVjb21tZW5kYXRp
b24gZnJvbSBoYXJkd2FyZSBpcyB0bw0KPiA+ID4ga2VlcCB0aGlzIGNvbWJpbmF0aW9uIGRpc2Fi
bGVkLg0KPiA+ID4gDQo+ID4gPiBCc3BlYzogNTA0MjIgSFNEOiAxNDAxMDI2MDAwMg0KPiA+ID4g
DQo+ID4gPiB2MjogQWRkZWQgcHNyMiBlbmFibGVkIGNoZWNrIGZyb20gY3J0Y19zdGF0ZSAoQW5z
aHVtYW4pDQo+ID4gPiBBZGRlZCBCc3BlYyBsaW5rIGFuZCBIU0QgcmVmZXJuZWNlcyAoSm9zZSkN
Cj4gPiA+IA0KPiA+ID4gdjM6IE1vdmVkIHRoZSBsb2dpYyB0byBkaXNhYmxlIGZiYyB0byBpbnRl
bF9mYmNfdXBkYXRlX3N0YXRlX2NhY2hlDQo+ID4gPiBhbmQgcmVtb3ZlZCB0aGUgY3J0Yy0+Y29u
ZmlnIHVzYWdlcywgYXMgcGVyIFZpbGxlJ3MgcmVjb21tZW5kYXRpb24uDQo+ID4gPiANCj4gPiA+
IFNpZ25lZC1vZmYtYnk6IFVtYSBTaGFua2FyIDx1bWEuc2hhbmthckBpbnRlbC5jb20+DQo+ID4g
PiAtLS0NCj4gPiA+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmMuYyB8
IDkgKysrKysrKysrDQo+ID4gPiDCoDEgZmlsZSBjaGFuZ2VkLCA5IGluc2VydGlvbnMoKykNCj4g
PiA+IA0KPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZmJjLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5jDQo+ID4g
PiBpbmRleCBhNWIwNzI4MTZhN2IuLmNiMjljNmYwNjhmOSAxMDA2NDQNCj4gPiA+IC0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMNCj4gPiA+ICsrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMNCj4gPiA+IEBAIC03MDEsNiArNzAx
LDE1IEBAIHN0YXRpYyB2b2lkIGludGVsX2ZiY191cGRhdGVfc3RhdGVfY2FjaGUoc3RydWN0IGlu
dGVsX2NydGMgKmNydGMsDQo+ID4gPiDCoAlzdHJ1Y3QgZHJtX2ZyYW1lYnVmZmVyICpmYiA9IHBs
YW5lX3N0YXRlLT5ody5mYjsNCj4gPiA+IMKgDQo+ID4gPiANCj4gPiA+IA0KPiA+ID4gDQo+ID4g
PiDCoAljYWNoZS0+cGxhbmUudmlzaWJsZSA9IHBsYW5lX3N0YXRlLT51YXBpLnZpc2libGU7DQo+
ID4gPiArDQo+ID4gPiArCS8qDQo+ID4gPiArCSAqIFRpZ2VybGFrZSBpcyBub3Qgc3VwcG9ydGlu
ZyBGQkMgd2l0aCBQU1IyLg0KPiA+ID4gKwkgKiBSZWNvbW1lbmRhdGlvbiBpcyB0byBrZWVwIHRo
aXMgY29tYmluYXRpb24gZGlzYWJsZWQNCj4gPiA+ICsJICogQnNwZWM6IDUwNDIyIEhTRDogMTQw
MTAyNjAwMDINCj4gPiA+ICsJICovDQo+ID4gPiArCWlmIChjcnRjX3N0YXRlLT5oYXNfcHNyMiAm
JiBJU19USUdFUkxBS0UoZGV2X3ByaXYpKQ0KPiA+ID4gKwkJY2FjaGUtPnBsYW5lLnZpc2libGUg
PSBmYWxzZTsNCj4gPiANCj4gPiBMb29rcyBsaWtlIGEgaGFjayB0byBtZSwgd291bGQgYmUgYmV0
dGVyIGFkZCBhIHBzcjIgdmFyaWFibGUgaW4gaW50ZWxfZmJjX3N0YXRlX2NhY2hlLg0KPiANCj4g
VGhlIHBsYW4gaXMgdG8gcmVtb3ZlIG1vc3QgdGhpbmdzIGZyb20gdGhhdCBjYWNoZSBhbnl3YXkg
c2luY2UgaXQncw0KPiBtb3N0bHkgcG9pbnRsZXNzIHN0dWZmIHRoYXQgc2hvdWxkIGp1c3QgYmUg
aGFuZGxlZCBkaXJlY3RseSB2aWENCj4gdGhlIHBsYW5lL2NydGMgc3RhdGVzLiBOb3QgcmVhbGx5
IGNvbnZpbmNlZCBpdCBtYWtlcyBzZW5zZSB0byBhZGQNCj4gbW9yZSBjcmFwIHRvIGl0IGF0IHRo
aXMgdGltZS4gU28gSU1PIHRoaXMgaXMgZ29vZCBlbm91Z2ggZm9yIG5vdy4NCg0KV2hlbiB0aGlz
IHdpbGwgaGFwcGVuPyBpZiBzb29uIG9rYXkuDQpJZiB0aGVyZSBpcyBubyBFVEEgSU1ITyBpcyBi
ZXR0ZXIgZG8gdGhlIHJpZ2h0IHRoaW5nLg0KDQo+IA0KPiA+IFdlIGFsc28gd291bGQgbmVlZCBo
YXZlIGEgUFNSMiByZWFzb24gc2V0IGluIG5vX2ZiY19yZWFzb24gYW5kIGhhbmRsZSBpdCBpbiBJ
R1QuDQo+IA0KPiBJIHRoaW5rIHRoYXQgbm9fZmJjX3JlYXNvbiBpcyByYXRoZXIgcG9pbnRsZXNz
IGFzIHdlbGwuIFdvdWxkIG1ha2UNCj4gbGlmZSBhIGxvdCBzaW1wbGVyIGlmIHdlIGRpZG4ndCBo
YXZlIHRvIHdvcnJ5IGFib3V0IGl0LiBTbyB0ZW1wdGVkDQo+IHRvIGp1c3QgbnVrZSBpdC4NCj4g
DQo+ID4gDQo+ID4gPiArDQo+ID4gPiDCoAlpZiAoIWNhY2hlLT5wbGFuZS52aXNpYmxlKQ0KPiA+
ID4gwqAJCXJldHVybjsNCj4gPiA+IMKgDQo+ID4gPiANCj4gPiA+IA0KPiA+ID4gDQo+ID4gDQo+
IA0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
