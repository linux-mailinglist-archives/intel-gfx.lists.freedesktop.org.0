Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E57F815141B
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Feb 2020 03:06:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B90146E517;
	Tue,  4 Feb 2020 02:06:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8D7DF6E517
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Feb 2020 02:06:25 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Feb 2020 18:06:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,398,1574150400"; d="scan'208";a="249197874"
Received: from fmsmsx108.amr.corp.intel.com ([10.18.124.206])
 by orsmga002.jf.intel.com with ESMTP; 03 Feb 2020 18:06:24 -0800
Received: from fmsmsx115.amr.corp.intel.com (10.18.116.19) by
 FMSMSX108.amr.corp.intel.com (10.18.124.206) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 3 Feb 2020 18:06:24 -0800
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.3]) by
 fmsmsx115.amr.corp.intel.com ([169.254.4.191]) with mapi id 14.03.0439.000;
 Mon, 3 Feb 2020 18:06:24 -0800
From: "Souza, Jose" <jose.souza@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH 2/2] drm/i915/dgfx: Do not write in removed
 FBC fence registers
Thread-Index: AQHV1jYNXHdo/KJ2Nk+f/3vJvJ3ay6gCDDCAgAjM5AA=
Date: Tue, 4 Feb 2020 02:06:23 +0000
Message-ID: <3ab6b8071f4af31d0c6059748c6b5c54bfabd587.camel@intel.com>
References: <20200128235241.169694-1-jose.souza@intel.com>
 <20200128235241.169694-2-jose.souza@intel.com>
 <20200129114257.GR13686@intel.com>
In-Reply-To: <20200129114257.GR13686@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.13.31]
Content-ID: <C3AFC77DA5E92A41AF895A6351B17C29@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/dgfx: Do not write in removed
 FBC fence registers
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "De
 Marchi, Lucas" <lucas.demarchi@intel.com>, "Pandiyan,
 Dhinakaran" <dhinakaran.pandiyan@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCAyMDIwLTAxLTI5IGF0IDEzOjQyICswMjAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
DQo+IE9uIFR1ZSwgSmFuIDI4LCAyMDIwIGF0IDAzOjUyOjQxUE0gLTA4MDAsIEpvc8OpIFJvYmVy
dG8gZGUgU291emENCj4gd3JvdGU6DQo+ID4gRnJvbTogUmFkaGFrcmlzaG5hIFNyaXBhZGEgPHJh
ZGhha3Jpc2huYS5zcmlwYWRhQGludGVsLmNvbT4NCj4gPiANCj4gPiBkZ2Z4IHBsYXRmb3JtcyBk
byBub3Qgc3VwcG9ydCBDUFUgZmVuY2UgYW5kIEZCQyBob3N0IHRyYWNraW5nIHNvDQo+ID4gbGV0
cyBhdm9pZCB3cml0ZSB0byByZW1vdmVkIHJlZ2lzdGVycy4NCj4gPiANCj4gPiBDYzogUm9kcmln
byBWaXZpIDxyb2RyaWdvLnZpdmlAaW50ZWwuY29tPg0KPiA+IENjOiBNYXR0IFJvcGVyIDxtYXR0
aGV3LmQucm9wZXJAaW50ZWwuY29tPg0KPiA+IENjOiBEaGluYWthcmFuIFBhbmRpeWFuIDxkaGlu
YWthcmFuLnBhbmRpeWFuQGludGVsLmNvbT4NCj4gPiBTaWduZWQtb2ZmLWJ5OiBSYWRoYWtyaXNo
bmEgU3JpcGFkYSA8cmFkaGFrcmlzaG5hLnNyaXBhZGFAaW50ZWwuY29tDQo+ID4gPg0KPiA+IFNp
Z25lZC1vZmYtYnk6IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPg0K
PiA+IFNpZ25lZC1vZmYtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50
ZWwuY29tPg0KPiA+IC0tLQ0KPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2ZiYy5jIHwgNyArKysrKystDQo+ID4gIDEgZmlsZSBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKyks
IDEgZGVsZXRpb24oLSkNCj4gPiANCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9mYmMuYw0KPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9mYmMuYw0KPiA+IGluZGV4IDFmMGQyNGExZGVjMS4uMTI5MDBiOGNlMjhlIDEwMDY0
NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMNCj4g
PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5jDQo+ID4gQEAg
LTMxNCw3ICszMTQsMTIgQEAgc3RhdGljIHZvaWQgZ2VuN19mYmNfYWN0aXZhdGUoc3RydWN0DQo+
ID4gZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpDQo+ID4gIAkJYnJlYWs7DQo+ID4gIAl9DQo+
ID4gIA0KPiA+IC0JaWYgKHBhcmFtcy0+ZmVuY2VfaWQgPj0gMCkgew0KPiA+ICsJaWYgKElTX0RH
RlgoZGV2X3ByaXYpKSB7DQo+ID4gKwkJLyoNCj4gPiArCQkgKiBkR0ZYIEdQVXMgZG9uJ3QgaGF2
ZSBhcHBlcnR1cmUgb3IgZmVuY2VzIGFuZCBvbmx5DQo+ID4gcmVseSBvbiBGQkMNCj4gPiArCQkg
KiByZW5kZXIgbnVrZSB0byB0cmFjayBmcm9udGJ1ZmZlciBtb2RpZmljYXRpb25zDQo+ID4gKwkJ
ICovDQo+ID4gKwl9IGVsc2UgaWYgKHBhcmFtcy0+ZmVuY2VfaWQgPj0gMCkgew0KPiA+ICAJCWRw
ZmNfY3RsIHw9IElWQl9EUEZDX0NUTF9GRU5DRV9FTjsNCj4gPiAgCQlpbnRlbF9kZV93cml0ZShk
ZXZfcHJpdiwgU05CX0RQRkNfQ1RMX1NBLA0KPiA+ICAJCQkgICAgICAgU05CX0NQVV9GRU5DRV9F
TkFCTEUgfCBwYXJhbXMtDQo+ID4gPmZlbmNlX2lkKTsNCj4gDQo+IGlmIChmZW5jZSkgew0KPiAJ
ZG8gc3R1ZmYNCj4gfSBlbHNlIGlmIChudW1fZmVuY2VzKSB7DQo+IAlkbyBvdGhlciBzdHVmZg0K
PiB9DQoNCkRpZCBub3QgZ2V0IHdoYXQgeW91IHdhbnQgaGVyZS4NCkl0IGlzIGNvdmVyaW5nIGFs
bCBjYXNlczoNCi0gREdGWCB0aGF0IGRvbid0IGhhdmUgdGhlIHJlZ2lzdGVycw0KLSBTZXR0aW5n
IHRoZSByZWdpc3RlcnMgd2hlbiBmZW5jZV9pZCA+PSAwDQotIENsZWFyaW5nIHRoZSByZWdpc3Rl
ciB3aGVuIGZlbmNlc19pZCA9PSAtMQ0KDQo+IA0KPiA+IC0tIA0KPiA+IDIuMjUuMA0KPiA+IA0K
PiA+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQo+ID4g
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdA0KPiA+IEludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcNCj4gPiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeA0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
