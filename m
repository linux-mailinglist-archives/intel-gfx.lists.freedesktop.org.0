Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 93FE62CA9DD
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Dec 2020 18:39:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E85A389BB2;
	Tue,  1 Dec 2020 17:39:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 26B1D89BB2
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Dec 2020 17:39:28 +0000 (UTC)
IronPort-SDR: gW1u6oFt+cBv9mpvrEPzj5IVkXE9iJSPraJR6Z2mzGqshE2m+WiyOnOrBLaHoBRe0r5LgLJ5eL
 MpCQNvlXe9mQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9822"; a="152128492"
X-IronPort-AV: E=Sophos;i="5.78,384,1599548400"; d="scan'208";a="152128492"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2020 09:39:09 -0800
IronPort-SDR: 2F0aqZvc0EK5SVJjP7JwCDaV17qnDXFJ74KSZKTiS4TgB1RaoPV32bmv4X95UtY46u6kF3urUc
 r0g488RHWpVw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,384,1599548400"; d="scan'208";a="330079578"
Received: from irsmsx604.ger.corp.intel.com ([163.33.146.137])
 by orsmga003.jf.intel.com with ESMTP; 01 Dec 2020 09:39:08 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 IRSMSX604.ger.corp.intel.com (163.33.146.137) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 1 Dec 2020 17:39:07 +0000
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.1713.004;
 Tue, 1 Dec 2020 09:39:05 -0800
From: "Souza, Jose" <jose.souza@intel.com>
To: "Mun, Gwan-gyeong" <gwan-gyeong.mun@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 2/6] drm/i915/display/psr: Use plane damage
 clips to calculate damaged area
Thread-Index: AQHWobRN4jSuhASKLEGmJvCD25Y0B6mq8yeAgAA444CAAUDtgIA24/4AgAADjQA=
Date: Tue, 1 Dec 2020 17:39:05 +0000
Message-ID: <830adf188ccffc1c41593b92b4cc5b0d66770a7d.camel@intel.com>
References: <20201013230121.331595-1-jose.souza@intel.com>
 <20201013230121.331595-2-jose.souza@intel.com>
 <39fe2eb7bb30de6eed687592f70f6652ca12e24f.camel@intel.com>
 <3ea6bf28fecf1d164fafa88ffdb7ec9d6c9c9b7f.camel@intel.com>
 <0933a0a5e71702638db60953baba781d6a6b8198.camel@intel.com>
 <ad3214f9777626c8e8f05c0ecff5bd57dc093c2d.camel@intel.com>
In-Reply-To: <ad3214f9777626c8e8f05c0ecff5bd57dc093c2d.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.132]
Content-ID: <AF24DEA81C6476449E7917C07F0CCFD5@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 2/6] drm/i915/display/psr: Use plane damage
 clips to calculate damaged area
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

T24gVHVlLCAyMDIwLTEyLTAxIGF0IDE3OjI2ICswMDAwLCBNdW4sIEd3YW4tZ3llb25nIHdyb3Rl
Og0KPiBPbiBUdWUsIDIwMjAtMTAtMjcgYXQgMTM6MTIgLTA3MDAsIFNvdXphLCBKb3NlIHdyb3Rl
Og0KPiA+IE9uIFR1ZSwgMjAyMC0xMC0yNyBhdCAwMTowNCArMDAwMCwgU291emEsIEpvc2Ugd3Jv
dGU6DQo+ID4gPiBPbiBNb24sIDIwMjAtMTAtMjYgYXQgMjE6NDAgKzAwMDAsIE11biwgR3dhbi1n
eWVvbmcgd3JvdGU6DQo+ID4gPiA+IE9uIFR1ZSwgMjAyMC0xMC0xMyBhdCAxNjowMSAtMDcwMCwg
Sm9zw6kgUm9iZXJ0byBkZSBTb3V6YSB3cm90ZToNCj4gPiA+ID4gPiBOb3cgdXNpbmcgcGxhbmUg
ZGFtYWdlIGNsaXBzIHByb3BlcnR5IHRvIGNhbGN1YWx0ZSB0aGUgZGFtYWdlZA0KPiA+ID4gPiA+
IGFyZWEuDQo+ID4gPiA+ID4gU2VsZWN0aXZlIGZldGNoIG9ubHkgc3VwcG9ydHMgb25lIHJlZ2lv
biB0byBiZSBmZXRjaGVkIHNvDQo+ID4gPiA+ID4gc29mdHdhcmUNCj4gPiA+ID4gPiBuZWVkcyB0
byBjYWxjdWxhdGUgYSBib3VuZGluZyBib3ggYXJvdW5kIGFsbCBkYW1hZ2UgY2xpcHMuDQo+ID4g
PiA+ID4gDQo+ID4gPiA+ID4gQ2M6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51
eC5pbnRlbC5jb20+DQo+ID4gPiA+ID4gQ2M6IEd3YW4tZ3llb25nIE11biA8Z3dhbi1neWVvbmcu
bXVuQGludGVsLmNvbT4NCj4gPiA+ID4gPiBTaWduZWQtb2ZmLWJ5OiBKb3PDqSBSb2JlcnRvIGRl
IFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4NCj4gPiA+ID4gPiAtLS0NCj4gPiA+ID4gPiDC
oGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMgfCA1NA0KPiA+ID4gPiA+
ICsrKysrKysrKysrKysrKysrKysrKy0NCj4gPiA+ID4gPiAtLQ0KPiA+ID4gPiA+IMKgMSBmaWxl
IGNoYW5nZWQsIDQ5IGluc2VydGlvbnMoKyksIDUgZGVsZXRpb25zKC0pDQo+ID4gPiA+ID4gDQo+
ID4gPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
cHNyLmMNCj4gPiA+ID4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNy
LmMNCj4gPiA+ID4gPiBpbmRleCA3NzNhNWI1ZmEwNzguLjBmMWU5ZjBmYTU3ZiAxMDA2NDQNCj4g
PiA+ID4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+
ID4gPiA+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0K
PiA+ID4gPiA+IEBAIC0xMjczLDYgKzEyNzMsOSBAQCBpbnQgaW50ZWxfcHNyMl9zZWxfZmV0Y2hf
dXBkYXRlKHN0cnVjdA0KPiA+ID4gPiA+IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsDQo+ID4g
PiA+ID4gwqAJZm9yX2VhY2hfb2xkbmV3X2ludGVsX3BsYW5lX2luX3N0YXRlKHN0YXRlLCBwbGFu
ZSwNCj4gPiA+ID4gPiBvbGRfcGxhbmVfc3RhdGUsDQo+ID4gPiA+ID4gwqAJCQkJCSAgICAgbmV3
X3BsYW5lX3N0YXRlLA0KPiA+ID4gPiA+IGkpIHsNCj4gPiA+ID4gPiDCoAkJc3RydWN0IGRybV9y
ZWN0ICpzZWxfZmV0Y2hfYXJlYSwgdGVtcDsNCj4gPiA+ID4gPiArCQlzdHJ1Y3QgZHJtX21vZGVf
cmVjdCAqZGFtYWdlZF9jbGlwczsNCj4gPiA+ID4gPiArCQl1MzIgbnVtX2NsaXBzOw0KPiA+ID4g
PiA+ICsJCWludCBqOw0KPiA+ID4gPiA+IMKgDQo+ID4gPiA+ID4gDQo+ID4gPiA+ID4gDQo+ID4g
PiA+ID4gDQo+ID4gPiA+ID4gDQo+ID4gPiA+ID4gDQo+ID4gPiA+ID4gDQo+ID4gPiA+ID4gwqAJ
CWlmIChuZXdfcGxhbmVfc3RhdGUtPnVhcGkuY3J0YyAhPSBjcnRjX3N0YXRlLQ0KPiA+ID4gPiA+
ID4gdWFwaS5jcnRjKQ0KPiA+ID4gPiA+IMKgCQkJY29udGludWU7DQo+IHNlbGVjdGl2ZSBmZXRj
aCBhcmVhIGFsc28gY2FuIGJlIGFmZmVjdGVkIGJ5IFNlbGVjdGl2ZSBVcGRhdGVkIHJlZ2lvbi4g
DQo+IHRoZXJlZm9yZSBTZWxlY3RpdmUgVXBkYXRlZCByZWdpb24gcmVjdCBzaG91bGQgYmUgY2Fs
Y3VsYXRlZCBmaXJzdCBhbmQNCj4gdGhlbiB0aGUgcGxhbmUncyBzZWxlY3RpdmUgZmV0Y2ggYXJl
YSBzaG91bGQgYmUgYXBwbGllZCAoaW50ZXJzZWN0ZWQgYnkNCj4gY2FsY3VsYXRlZCBTVS4pDQo+
IHBsZWFzZSBjaGVjayB0aGlzIGltcGxlbWVudGF0aW9uLg0KDQpXaHkgc2VsZWN0aXZlIHVwZGF0
ZSByZWdpb24gbmVlZHMgdG8gYmUgY2FsY3VsYXRlIGZpcnN0IGlmIGl0IHNob3VsZCBiZSBiYXNl
ZCBvbiB0aGUgcGxhbmUgZGFtYWdlIGFyZWFzL3NlbGVjdGl2ZSBmZXRjaCBhcmVhcz8NCkNhbiB5
b3UgZ2l2ZSBhIGV4YW1wbGUgd2hlcmUgaXQgZ2l2ZXMgbm90IHRoZSBleHBlY3RlZCByZXN1bHQ/
DQoNCg0KPiAoaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3BhdGNoLzQwNDI2NC8/
c2VyaWVzPTg0MzQwJnJldj0xKQ0KPiA+ID4gPiA+IEBAIC0xMjkxLDEzICsxMjk0LDU0IEBAIGlu
dCBpbnRlbF9wc3IyX3NlbF9mZXRjaF91cGRhdGUoc3RydWN0DQo+ID4gPiA+ID4gaW50ZWxfYXRv
bWljX3N0YXRlICpzdGF0ZSwNCj4gPiA+ID4gPiDCoAkJaWYgKCFuZXdfcGxhbmVfc3RhdGUtPnVh
cGkudmlzaWJsZSkNCj4gPiA+ID4gPiDCoAkJCWNvbnRpbnVlOw0KPiA+ID4gPiA+IMKgDQo+ID4g
PiA+ID4gDQo+ID4gPiA+ID4gDQo+ID4gPiA+ID4gDQo+ID4gPiA+ID4gDQo+ID4gPiA+ID4gDQo+
ID4gPiA+ID4gDQo+ID4gPiA+ID4gKwkJc2VsX2ZldGNoX2FyZWEgPSAmbmV3X3BsYW5lX3N0YXRl
LQ0KPiA+ID4gPiA+ID4gcHNyMl9zZWxfZmV0Y2hfYXJlYTsNCj4gPiA+ID4gPiArCQlzZWxfZmV0
Y2hfYXJlYS0+eTEgPSAtMTsNCj4gPiA+ID4gPiArDQo+ID4gPiA+ID4gKwkJZGFtYWdlZF9jbGlw
cyA9DQo+ID4gPiA+ID4gZHJtX3BsYW5lX2dldF9kYW1hZ2VfY2xpcHMoJm5ld19wbGFuZV9zdGF0
ZS0+dWFwaSk7DQo+ID4gPiA+ID4gKwkJbnVtX2NsaXBzID0NCj4gPiA+ID4gPiBkcm1fcGxhbmVf
Z2V0X2RhbWFnZV9jbGlwc19jb3VudCgmbmV3X3BsYW5lX3N0YXRlLT51YXBpKTsNCj4gPiA+ID4g
PiArDQo+ID4gPiA+ID4gwqAJCS8qDQo+ID4gPiA+ID4gLQkJICogRm9yIG5vdyBkb2luZyBhIHNl
bGVjdGl2ZSBmZXRjaCBpbiB0aGUgd2hvbGUNCj4gPiA+ID4gPiBwbGFuZQ0KPiA+ID4gPiA+IGFy
ZWEsDQo+ID4gPiA+ID4gLQkJICogb3B0aW1pemF0aW9ucyB3aWxsIGNvbWUgaW4gdGhlIGZ1dHVy
ZS4NCj4gPiA+ID4gPiArCQkgKiBJZiBwbGFuZSBtb3ZlZCwgbWFyayB0aGUgd2hvbGUgcGxhbmUg
YXJlYSBhcw0KPiA+ID4gPiA+IGRhbWFnZWQNCj4gPiA+ID4gPiBhcyBpdA0KPiA+ID4gPiA+ICsJ
CSAqIG5lZWRzIHRvIGJlIGNvbXBsZXRlIHJlZHJhdyBpbiB0aGUgbmV3DQo+ID4gPiA+ID4gcG9z
aXRpb24uDQo+ID4gPiA+ID4gwqAJCSAqLw0KPiA+ID4gPiA+IC0JCXNlbF9mZXRjaF9hcmVhID0g
Jm5ld19wbGFuZV9zdGF0ZS0NCj4gPiA+ID4gPiA+IHBzcjJfc2VsX2ZldGNoX2FyZWE7DQo+ID4g
PiA+ID4gLQkJc2VsX2ZldGNoX2FyZWEtPnkxID0gbmV3X3BsYW5lX3N0YXRlLQ0KPiA+ID4gPiA+
ID4gdWFwaS5zcmMueTEgPj4NCj4gPiA+ID4gPiAxNjsNCj4gPiA+ID4gPiAtCQlzZWxfZmV0Y2hf
YXJlYS0+eTIgPSBuZXdfcGxhbmVfc3RhdGUtDQo+ID4gPiA+ID4gPiB1YXBpLnNyYy55MiA+Pg0K
PiA+ID4gPiA+IDE2Ow0KPiA+ID4gPiA+ICsJCWlmICghZHJtX3JlY3RfZXF1YWxzKCZuZXdfcGxh
bmVfc3RhdGUtDQo+ID4gPiA+ID4gPiB1YXBpLmRzdCwNCj4gPiA+ID4gPiArCQkJCSAgICAgJm9s
ZF9wbGFuZV9zdGF0ZS0NCj4gPiA+ID4gPiA+IHVhcGkuZHN0KSkgew0KPiA+ID4gPiA+ICsJCQlu
dW1fY2xpcHMgPSAwOw0KPiA+ID4gPiA+ICsJCQlzZWxfZmV0Y2hfYXJlYS0+eTEgPSBuZXdfcGxh
bmVfc3RhdGUtDQo+ID4gPiA+ID4gPiB1YXBpLnNyYy55MSA+PiAxNjsNCj4gPiA+ID4gPiArCQkJ
c2VsX2ZldGNoX2FyZWEtPnkyID0gbmV3X3BsYW5lX3N0YXRlLQ0KPiA+ID4gPiA+ID4gdWFwaS5z
cmMueTIgPj4gMTY7DQo+ID4gPiA+ID4gKwkJfSBlbHNlIGlmICghbnVtX2NsaXBzICYmIG5ld19w
bGFuZV9zdGF0ZS0NCj4gPiA+ID4gPiA+IHVhcGkuZmIgIT0NCj4gPiA+ID4gPiArCQkJICAgb2xk
X3BsYW5lX3N0YXRlLT51YXBpLmZiKSB7DQo+ID4gPiA+ID4gKwkJCS8qDQo+ID4gPiA+ID4gKwkJ
CSAqIElmIHRoZSBwbGFuZSBkb24ndCBoYXZlIGRhbWFnZSBhcmVhcw0KPiA+ID4gPiA+IGJ1dCB0
aGUNCj4gPiA+ID4gPiArCQkJICogZnJhbWVidWZmZXIgY2hhbmdlZCwgbWFyayB0aGUgd2hvbGUN
Cj4gPiA+ID4gPiBwbGFuZQ0KPiA+ID4gPiA+IGFyZWEgYXMNCj4gPiA+ID4gPiArCQkJICogZGFt
YWdlZC4NCj4gPiA+ID4gPiArCQkJICovDQo+ID4gPiA+ID4gKwkJCXNlbF9mZXRjaF9hcmVhLT55
MSA9IG5ld19wbGFuZV9zdGF0ZS0NCj4gPiA+ID4gPiA+IHVhcGkuc3JjLnkxID4+IDE2Ow0KPiA+
ID4gPiA+ICsJCQlzZWxfZmV0Y2hfYXJlYS0+eTIgPSBuZXdfcGxhbmVfc3RhdGUtDQo+ID4gPiA+
ID4gPiB1YXBpLnNyYy55MiA+PiAxNjsNCj4gPiA+ID4gPiArCQl9DQo+ID4gPiA+ID4gKw0KPiA+
ID4gPiB3aHkgZG9uJ3QgeW91IHVzZSBkcm1fYXRvbWljX2hlbHBlcl9kYW1hZ2VfbWVyZ2VkKCkg
ZnVuY3Rpb24NCj4gPiA+ID4gaGVyZT8NCj4gPiA+IA0KPiA+ID4gaHVtIGRpZCBub3Qga25ldyBh
Ym91dCB0aGlzIGZ1bmN0aW9uLCB3aWxsIHRha2UgYSBsb29rIGF0IGFzIGl0DQo+ID4gPiBkb2Vz
IG1vcmUgdGhhbiBqdXN0IG1lcmdlIGFsbCBkYW1hZ2VkIGFyZWFzLg0KPiA+IA0KPiA+IFdlIGNh
bid0IHVzZSB0aGlzIGZ1bmN0aW9uIGFzIGl0IG1hcmtzIHRoZSB3aG9sZSBwbGFuZSBhcmVhIGFz
DQo+ID4gZGFtYWdlZCBpZiB0aGVyZSBpcyBubyBkYW1hZ2VkIGNsaXBzLg0KPiA+IEJ1dCBmb3Ig
b3VyIHVzZSBjYXNlIHRoaXMgaXMgYmFkIGFzIHdlIGFkZCBhbGwgcGxhbmVzIG9mIHRoZQ0KPiA+
IHBpcGUvQ1JUQyB0byB0aGUgc3RhdGUsIHNvIGl0IHdvdWxkIGNhdXNlIGEgZnVsbCBmZXRjaCBv
ZiB0aGUgcGxhbmVzDQo+ID4gd2l0aG91dCBhbnkNCj4gPiBmbGlwL21vZGlmaWNhdGlvbi4NCj4g
PiANCj4gPiA+ID4gPiArCQlmb3IgKGogPSAwOyBqIDwgbnVtX2NsaXBzOyBqKyspIHsNCj4gPiA+
ID4gPiArCQkJc3RydWN0IGRybV9yZWN0IGRhbWFnZV9hcmVhOw0KPiA+ID4gPiA+ICsNCj4gPiA+
ID4gPiArCQkJZGFtYWdlX2FyZWEueTEgPSBkYW1hZ2VkX2NsaXBzW2pdLnkxOw0KPiA+ID4gPiA+
ICsJCQlkYW1hZ2VfYXJlYS55MiA9IGRhbWFnZWRfY2xpcHNbal0ueTI7DQo+ID4gPiA+ID4gKwkJ
CWNsaXBfYXJlYV91cGRhdGUoc2VsX2ZldGNoX2FyZWEsDQo+ID4gPiA+ID4gJmRhbWFnZV9hcmVh
KTsNCj4gPiA+ID4gPiArCQl9DQo+ID4gPiA+ID4gKw0KPiA+ID4gPiA+ICsJCS8qDQo+ID4gPiA+
ID4gKwkJICogTm8gcGFnZSBmbGlwLCBubyBwbGFuZSBtb3ZpbWVudCBvciBubyBkYW1hZ2UNCj4g
PiA+ID4gPiBhcmVhcywNCj4gPiA+ID4gPiBzbyBkb24ndA0KPiA+ID4gPiB0eXBvIChtb3ZpbWVu
dCAtPiBtb3ZlbWVudCkNCj4gPiA+IA0KPiA+ID4gZml4ZWQNCj4gPiA+IA0KPiA+ID4gPiA+ICsJ
CSAqIGZldGNoIGFueSBwaXhlbCBmcm9tIG1lbW9yeSBmb3IgdGhpcyBwbGFuZQ0KPiA+ID4gPiA+
ICsJCSAqLw0KPiA+ID4gPiA+ICsJCWlmIChzZWxfZmV0Y2hfYXJlYS0+eTEgPT0gLTEpIHsNCj4g
PiA+ID4gPiArCQkJc2VsX2ZldGNoX2FyZWEtPnkxID0gMDsNCj4gPiA+ID4gPiArCQkJc2VsX2Zl
dGNoX2FyZWEtPnkyID0gMDsNCj4gPiA+ID4gPiArCQl9DQo+ID4gPiA+ID4gKw0KPiA+ID4gPiA+
ICsJCS8qIERvbid0IG5lZWQgdG8gcmVkcmF3IHBsYW5lIGRhbWFnZWQgYXJlYXMNCj4gPiA+ID4g
PiBvdXRzaWRlIG9mDQo+ID4gPiA+ID4gc2NyZWVuICovDQo+ID4gPiA+ID4gKwkJaiA9IHNlbF9m
ZXRjaF9hcmVhLT55MiArIChuZXdfcGxhbmVfc3RhdGUtDQo+ID4gPiA+ID4gPiB1YXBpLmRzdC55
MQ0KPiA+ID4gPiA+ID4gPiAxNik7DQo+ID4gPiA+IHNyYyBjb29yZGluYXRlcyBvZiB0aGUgZHJt
X3BsYW5lX3N0YXRlIGFyZSAxNi4xNiBmaXhlZCBwb2ludCBidXQNCj4gPiA+ID4gZHN0DQo+ID4g
PiA+IGNvb3JkaW5hdGVzIGFyZSBub3QgMTYuMTYgZml4ZWQgcG9pbnQuDQo+ID4gPiA+IHRoZXJl
Zm9yZSB3ZSBkb24ndCBuZWVkIHRvIGJpdCBzaGlmdCBmb3IgZHN0Lg0KPiA+ID4gPiBCZWNhdXNl
IHRoZSBzZWxfZmV0Y2hfYXJlYSBzZWVtcyBiYXNlZCBvbiBzcmMgY29vcmRpbmF0ZXMsIGluDQo+
ID4gPiA+IG9yZGVyIHRvDQo+ID4gPiA+IGFwcGx5IHRvIGRzdCBjb29yZGluYXRlcyBoZXJlLCAg
aXQgcmVxdWlyZXMgY29vcmRpbmF0ZQ0KPiA+ID4gPiBjYWxjdWxhdGlvbi4gDQo+ID4gPiANCj4g
PiA+IHRoYW5rcyBmb3IgY2F0Y2hpbmcgdGhpcywgYWxzbyBmaXhlZCB0aGUgc2FtZSBpc3N1ZSBw
YXRjaCAxLg0KPiA+ID4gDQo+ID4gPiA+ID4gKwkJaiA9IGNydGNfc3RhdGUtDQo+ID4gPiA+ID4g
PiB1YXBpLmFkanVzdGVkX21vZGUuY3J0Y192ZGlzcGxheSAtIGo7DQo+ID4gPiA+ID4gKwkJaWYg
KGogPCAwKQ0KPiA+ID4gPiA+ICsJCQlzZWxfZmV0Y2hfYXJlYS0+eTIgKz0gajsNCj4gPiA+ID4g
PiDCoA0KPiA+ID4gPiA+IA0KPiA+ID4gPiA+IA0KPiA+ID4gPiA+IA0KPiA+ID4gPiA+IA0KPiA+
ID4gPiA+IA0KPiA+ID4gPiA+IA0KPiA+ID4gPiA+IA0KPiA+ID4gPiA+IA0KPiA+ID4gPiA+IA0K
PiA+ID4gPiA+IA0KPiA+ID4gPiA+IA0KPiA+ID4gPiA+IA0KPiA+ID4gPiA+IA0KPiA+ID4gPiA+
IA0KPiA+ID4gPiA+IA0KPiA+ID4gPiA+IA0KPiA+ID4gPiA+IA0KPiA+ID4gPiA+IA0KPiA+ID4g
PiA+IMKgCQl0ZW1wID0gKnNlbF9mZXRjaF9hcmVhOw0KPiA+ID4gPiA+IMKgCQl0ZW1wLnkxICs9
IG5ld19wbGFuZV9zdGF0ZS0+dWFwaS5kc3QueTEgPj4gMTY7DQo+ID4gPiANCj4gPiA+IF9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQo+ID4gPiBJbnRlbC1n
ZnggbWFpbGluZyBsaXN0DQo+ID4gPiBJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+
ID4gPiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LWdmeA0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
