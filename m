Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 860B129456D
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Oct 2020 01:26:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E583B6E1ED;
	Tue, 20 Oct 2020 23:25:58 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BB0036E1ED
 for <Intel-gfx@lists.freedesktop.org>; Tue, 20 Oct 2020 23:25:57 +0000 (UTC)
IronPort-SDR: 5lF+IHUCSQbu3p8vz7aCBIGLkC4piecHckR0NaSwnUknPgRE3hcL3q+GFbGcaXgwJ3tnjS4fOi
 FE/WOuDLXUoA==
X-IronPort-AV: E=McAfee;i="6000,8403,9780"; a="184940222"
X-IronPort-AV: E=Sophos;i="5.77,399,1596524400"; d="scan'208";a="184940222"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2020 16:25:57 -0700
IronPort-SDR: 4jm2Y0xVGV9MNaQ/25d/cVxUh8j7yCXTLmlAPys2WqHc+tG8HvHQWepXkWHZBI+b6W+ttwvFor
 5U8LqILTsm3A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,399,1596524400"; d="scan'208";a="523694098"
Received: from irsmsx602.ger.corp.intel.com ([163.33.146.8])
 by fmsmga005.fm.intel.com with ESMTP; 20 Oct 2020 16:25:55 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 irsmsx602.ger.corp.intel.com (163.33.146.8) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 21 Oct 2020 00:25:54 +0100
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.1713.004;
 Tue, 20 Oct 2020 16:25:53 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "Almahallawy, Khaled" <khaled.almahallawy@intel.com>
Thread-Topic: [PATCH] drm/i915/tgl: Set drm_crtc_state.active=false for all
 added disconnected CRTCs sharing MST stream.
Thread-Index: AQHWprUM7IMmnb3jW063X/fspjlGbqmg5H8AgAC0BAA=
Date: Tue, 20 Oct 2020 23:25:53 +0000
Message-ID: <ded1023ff55d62717e6c7a7055b8e7f651e19c5b.camel@intel.com>
References: <20201020074555.24315-1-khaled.almahallawy@intel.com>
 <20201020124108.GX6112@intel.com>
In-Reply-To: <20201020124108.GX6112@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.132]
Content-ID: <BEFDCCE6C520C9428BBF1B752AB940A2@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/tgl: Set
 drm_crtc_state.active=false for all added disconnected CRTCs sharing MST
 stream.
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
Cc: "daniel.vetter@ffwll.ch" <daniel.vetter@ffwll.ch>,
 "Intel-gfx@lists.freedesktop.org" <Intel-gfx@lists.freedesktop.org>,
 "seanpaul@chromium.org" <seanpaul@chromium.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCAyMDIwLTEwLTIwIGF0IDE1OjQxICswMzAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
DQo+IE9uIFR1ZSwgT2N0IDIwLCAyMDIwIGF0IDEyOjQ1OjU1QU0gLTA3MDAsIEtoYWxlZCBBbG1h
aGFsbGF3eSB3cm90ZToNCj4gPiBUaGlzIHBhdGNoIGF2b2lkcyBmYWlsaW5nIGF0b21pYyBjb21t
aXRzIHNlbnQgYnkgdXNlciBzcGFjZSBieSBtYWtpbmcgc3VyZSBDUlRDL0Nvbm5lY3RvciBhZGRl
ZCB0byBkcm1fYXRvbWljX3N0YXRlIGJ5IHRoZSBkcml2ZXIgYXJlIGluIHZhbGlkIHN0YXRlLg0K
PiA+IA0KPiA+IFdoZW4gZGlzY29ubmVjdGluZyBNU1QgaHViIHdpdGggdHdvIG9yIG1vcmUgY29u
bmVjdGVkIGRpc3BsYXlzLiBUaGUgdXNlciBzcGFjZSBzZW5kcyBJT0NUTCBmb3IgZWFjaCBNU1Qg
cGlwZSB0byBkaXNhYmxlLg0KPiA+IGRybV9hdG9taWNfc3RhdGUgb2JqZWN0IHNlbnQgZnJvbSB1
c2VyIHNwYWNlIGNvbnRhaW5zIG9ubHkgdGhlIHN0YXRlIG9mIHRoZSBjcnRjL3BpcGUgaW50ZW5k
ZWQgdG8gZGlzYWJsZS4NCj4gPiBJbiBUR0wsIGludGVsX2RwX21zdF9hdG9taWNfbWFzdGVyX3Ry
YW5zX2NoZWNrIHdpbGwgYWRkIGFsbCBvdGhlciBDUlRDIGFuZCBjb25uZWN0b3JzIHRoYXQgc2hh
cmUgdGhlIE1TVCBzdHJlYW0gdG8gZHJtX2F0b21pY19zdGF0ZToNCj4gPiANCj4gPiBkcm1fYXRv
bWljX2NvbW1pdA0KPiA+IMKgwqDCoGRybV9hdG9taWNfaGVscGVyX2NoZWNrX21vZGVzZXQNCj4g
PiDCoMKgwqDCoMKgwqDCoHVwZGF0ZV9jb25uZWN0b3Jfcm91dGluZw0KPiA+IMKgwqDCoMKgwqDC
oMKgaW50ZWxfZHBfbXN0X2F0b21pY19jaGVjayA9IGZ1bmNzLT5hdG9taWNfY2hlY2soY29ubmVj
dG9yLCBzdGF0ZSk7DQo+ID4gwqDCoMKgwqDCoMKgwqAJICAgaW50ZWxfZHBfbXN0X2F0b21pY19t
YXN0ZXJfdHJhbnNfY2hlY2sNCj4gPiAJCWludGVsX2F0b21pY19nZXRfZGlnaXRhbF9jb25uZWN0
b3Jfc3RhdGUNCj4gPiAJCQlkcm1fYXRvbWljX2dldF9jb25uZWN0b3Jfc3RhdGUgICA8LS0gQWRk
IGFsbCBDb25uZWN0b3JzDQo+ID4gCQkJICAgIGRybV9hdG9taWNfZ2V0X2NydGNfc3RhdGUgPC0t
IEFkZCBhbGwgQ1JUQ3MNCj4gPiDCoMKgwqDCoMKgwqDCoHVwZGF0ZV9jb25uZWN0b3Jfcm91dGlu
ZyA8LS0gQ2hlY2sgYWRkZWQgQ29ubmVjdG9yL0NSVENzIC0gV2lsbCBmYWlsDQo+ID4gDQo+ID4g
SG93ZXZlciB0aGUgYWRkZWQgY3J0Yy9jb25uZWN0b3IgcGFpciB3aWxsIGJlIGluIGludmFsaWQg
c3RhdGUgKGVuYWJsZWQgc3RhdGUgZm9yIGEgcmVtb3ZlZCBjb25uZWN0b3IpDQo+ID4gdHJpZ2dl
cmluZyB0aGlzIGNvbmRpdGlvbiBpbiBkcm1fYXRvbWljX2hlbHBlci5jL3VwZGF0ZV9jb25uZWN0
b3Jfcm91dGluZzoNCj4gPiANCj4gPiAJaWYgKCFzdGF0ZS0+ZHVwbGljYXRlZCAmJiBkcm1fY29u
bmVjdG9yX2lzX3VucmVnaXN0ZXJlZChjb25uZWN0b3IpICYmDQo+ID4gCSAgICBjcnRjX3N0YXRl
LT5hY3RpdmUpIHsNCj4gPiAJCURSTV9ERUJVR19BVE9NSUMoIltDT05ORUNUT1I6JWQ6JXNdIGlz
IG5vdCByZWdpc3RlcmVkXG4iLA0KPiA+IAkJCQkgY29ubmVjdG9yLT5iYXNlLmlkLCBjb25uZWN0
b3ItPm5hbWUpOw0KPiA+IAkJcmV0dXJuIC1FSU5WQUw7DQo+ID4gCX0NCj4gDQo+IFllYWgsIEkg
dGhpbmsgdGhhdCAicmVqZWN0IG1vZGVzZXQgb24gdW5yZWdpc3RlcmVkIGNvbm5lY3RvcnMiIGlk
ZWEgaXMNCj4gYSBiaXQgYnJva2VuIGdpdmVuIGhvdyB0aGUgdWFwaSBoYXMgd29ya2VkIGluIHRo
ZSBwYXN0LiBDYzppbmcgZGFudmV0DQo+IGFuZCBseXVkZSB3aG8gSUlSQyB3ZXJlIGludm9sdmVk
IHdpdGggdGhhdC4NCj4gDQo+IEhtbS4gTWF5YmUgd2UgY291bGQgYWRkIHRoZSBvdGhlciBzdHVm
ZiB0byB0aGUgc3RhdGUgb25seSBhZnRlciB0aGUNCj4gY29ubmVjdG9yIC5hdG9taWNfY2hlY2so
KSBzdHVmZiBoYXMgYmVlbiBkb25lPyBJIGRvbid0IHF1aXRlIHJlbWVtYmVyDQo+IHdoeSB3ZSBk
ZWNpZGVkIHRvIGRvIGl0IGhlcmUuIEpvc8OpIGRvIHlvdSByZWNhbGwgdGhlIGRldGFpbHM/DQoN
CkJlY2F1c2UgdGhlIGNvbm5lY3RvciBjaGVjayBmdW5jdGlvbiBydW5zIHR3aWNlIGluIGRybV9h
dG9taWNfaGVscGVyX2NoZWNrX21vZGVzZXQoKSwgaW4gdGhlIGZpcnN0IGl0ZXJhdGlvbiBpdCB3
aWxsIGFkZCBhbGwgY29ubmVjdG9ycyB0aGF0IHNoYXJlIHRoZQ0Kc2FtZSBNU1Qgc3RyZWFtIHRv
IHN0YXRlLCB0aGUgc2Vjb25kIG9uZSB3aWxsIG1ha2Ugc3VyZSBhbGwgb3RoZXIgY2hlY2tzIHBh
c3NlZCBpbiBhbGwgY29ubmVjdG9ycyBvZiB0aGUgTVNUIHN0cmVhbS4NCg0KVG8gbWUgbG9va3Mg
bGlrZSB0aGUgQ2hyb21lIHVzZXJzcGFjZSBpcyBub3QgZG9pbmcgdGhlIHJpZ2h0IHRoaW5nLCBp
dCBpcyBzZW5kaW5nIGFzeW5jaHJvbm91cyBhdG9taWMgY29tbWl0cyB3aXRoIGNvbmZsaWN0aW5n
IHN0YXRlIGJldHdlZW4gZWFjaA0KY29tbWl0Lg0KSWYgaXQgaGFkIGEgcG9vbCB0aGF0IGRpc3Bh
dGNoIG9uZSBhdG9taWMgc3RhdGUgYXQgdGltZSB3YWl0aW5nIGZvciBjb21wbGV0aW9uIGJlZm9y
ZSBkaXNwYXRjaCB0aGUgbmV4dCBvbmUgaXQgd291bGQgbm90IGJlIGEgaXNzdWUuDQoNCj4gDQo+
ID4gDQo+ID4gV2hpY2ggd2lsbCBjYXVzZSB0aGUgZHJtX2F0b21pY19jb21taXQvSU9DVEwgZm9y
IGRpc2FibGluZyBvbmUgb2YgTVNUIHN0cmVhbSBwaXBlcyAoTWFpbiBNU1QpIHRvIGZhaWwuDQo+
ID4gDQo+ID4gVGhlIHByb2JsZW0gaGFwcGVucyB3aGVuIGEgdXNlciBzcGFjZSAoYXMgQ2hyb21l
KSBkb2VzbuKAmXQgcmV0cnkgYSBmYWxsaW5nIGNvbW1pdCwgbGVhdmluZyBhIGRpc2Nvbm5lY3Rl
ZCBNU1QgcGlwZSBzdGlsbCBPTiwNCj4gPiB3aGljaCB3aWxsIHJlc3VsdCBpbiBmYWlsaW5nIHJl
Y29ubmVjdCBvZiBNU1QgaHViIG9yIGV2ZW4gd29yc2UgbGVhdmluZyBUQyBQSFkgaW4gYSBjb25u
ZWN0ZWQgc3RhdGUgd2hpbGUgdGhlIE1TVCBIdWIgaXMgZGlzY29ubmVjdGVkLg0KPiA+IA0KPiA+
IFRlc3RlZCBvbiBVYnVudHUoZHJtLXRpcCkgYW5kIENocm9tZShrZXJuZWwtbmV4dCA1LjkgcmM3
KQ0KPiA+IA0KPiA+IFNpZ25lZC1vZmYtYnk6IEtoYWxlZCBBbG1haGFsbGF3eSA8a2hhbGVkLmFs
bWFoYWxsYXd5QGludGVsLmNvbT4NCj4gPiAtLS0NCj4gPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZHBfbXN0LmMgfCAzICsrKw0KPiA+IMKgMSBmaWxlIGNoYW5nZWQsIDMg
aW5zZXJ0aW9ucygrKQ0KPiA+IA0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2RwX21zdC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kcF9tc3QuYw0KPiA+IGluZGV4IGU5NDhhYWNiZDRhYi4uMWVkZTk4MDg3NmVkIDEwMDY0
NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbXN0LmMN
Cj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX21zdC5jDQo+
ID4gQEAgLTI2NSw2ICsyNjUsOSBAQCBpbnRlbF9kcF9tc3RfYXRvbWljX21hc3Rlcl90cmFuc19j
aGVjayhzdHJ1Y3QgaW50ZWxfY29ubmVjdG9yICpjb25uZWN0b3IsDQo+ID4gwqAJCQlyZXR1cm4g
cmV0Ow0KPiA+IMKgCQl9DQo+ID4gwqAJCWNydGNfc3RhdGUtPnVhcGkubW9kZV9jaGFuZ2VkID0g
dHJ1ZTsNCj4gPiArDQo+ID4gKwkJaWYgKGNvbm5lY3Rvcl9pdGVyLT5iYXNlLnN0YXR1cyA9PSBj
b25uZWN0b3Jfc3RhdHVzX2Rpc2Nvbm5lY3RlZCkNCj4gPiArCQkJY3J0Y19zdGF0ZS0+dWFwaS5h
Y3RpdmUgPSBmYWxzZTsNCj4gDQo+IFRoYXQgd2lsbCBtYWtlIHRoZSBzdGF0ZSB1c2Vyc3BhY2Ug
bGFzdCBzZXQgaW5jb25zaXN0ZW50IHdpdGggd2hhdCdzDQo+IHJlYWxseSBnb2luZyBvbi4gV2hp
Y2ggbWVhbnMgc3VkZGVubHkgcGFnZSBmbGlwcy92Ymxhbmsgd2FpdHMgYW5kDQo+IHdoYXRub3Qg
d2lsbCBzdGFydCB0byBmYWlsLg0KPiANCj4gQWxzbyB0aGF0IHdpbCBkaXJlY3RseSBtdXRhdGUg
dGhlIHByb3AgdmlzaWJsZSB0byB1c2VyIHNwYWNlLCB3aGljaA0KPiBpcyBub3QgaG93IHRoZXNl
IHRoaW5ncyBhcmUgc3VwcG9zZWQgdG8gd29yay4gSSB0aGluayBpZiB3ZSBkaWQgZG8NCj4gc29t
ZXRoaW5nIGxpa2UgdGhpcyB3ZSBzaG91bGQgbWF5YmUgaGF2ZSBzb21lIGtpbmQgb2YgaW50ZXJu
YWwNCj4gZmxhZyBmb3IgaXQuDQo+IA0KPiA+IMKgCX0NCj4gPiDCoAlkcm1fY29ubmVjdG9yX2xp
c3RfaXRlcl9lbmQoJmNvbm5lY3Rvcl9saXN0X2l0ZXIpOw0KPiA+IMKgDQo+ID4gDQo+ID4gDQo+
ID4gDQo+ID4gLS0gDQo+ID4gMi4yNS4xDQo+IA0KDQpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZngK
