Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E23DEBB70
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Nov 2019 01:37:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DDF0F6F6A5;
	Fri,  1 Nov 2019 00:37:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 84A966F6A5
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Nov 2019 00:37:40 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 31 Oct 2019 17:37:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,253,1569308400"; d="scan'208";a="231061725"
Received: from fmsmsx108.amr.corp.intel.com ([10.18.124.206])
 by fmsmga002.fm.intel.com with ESMTP; 31 Oct 2019 17:37:39 -0700
Received: from fmsmsx116.amr.corp.intel.com ([169.254.2.25]) by
 FMSMSX108.amr.corp.intel.com ([169.254.9.101]) with mapi id 14.03.0439.000;
 Thu, 31 Oct 2019 17:37:39 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "De
 Marchi, Lucas" <lucas.demarchi@intel.com>
Thread-Topic: [PATCH 3/5] drm/i915/tgl: do not enable transcoder clock twice
 on MST
Thread-Index: AQHVjsDnTtaWOkd8akWMMdOJaMnjJad18PYA
Date: Fri, 1 Nov 2019 00:37:39 +0000
Message-ID: <c4090752c7b497b0dec0c815216c6ef35de9f057.camel@intel.com>
References: <20191030012448.14937-1-lucas.demarchi@intel.com>
 <20191030012448.14937-4-lucas.demarchi@intel.com>
In-Reply-To: <20191030012448.14937-4-lucas.demarchi@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.9.135]
Content-ID: <E173BF6D0245114785668F45155B8DED@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 3/5] drm/i915/tgl: do not enable transcoder
 clock twice on MST
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCAyMDE5LTEwLTI5IGF0IDE4OjI0IC0wNzAwLCBMdWNhcyBEZSBNYXJjaGkgd3JvdGU6
DQo+IEZvciBNU1Qgb24gVGlnZXIgTGFrZSB0aGVyZSBhcmUgZGlmZmVyZW50IG1vbWVudHMgd2hl
biB3ZSBuZWVkIHRvDQo+IGNvbmZpZ3VyZSB0aGUgdHJhbnNjb2RlciBjbG9jayBzZWxlY3QuIEZv
ciB0aGUgZmlyc3QgbGluayB0aGlzIGlzIGluDQo+IHN0ZXANCj4gNy5hIG9mIHRoZSBzcGVjLCBi
ZWZvcmUgdHJhaW5pbmcgdGhlIGxpbmsuICBGb3IgYWRkaXRpb25hbCBzdHJlYW1zDQo+IHRoaXMN
Cj4gc2hvdWxkIGJlIGRvbmUgYXMgcGFydCBvZiBzdGVwIDguYiBhZnRlciBwcm9ncmFtbWluZyBy
ZWNlaXZlciBWQw0KPiBQYXlsb2FkDQo+IElELg0KPiANCj4gQnNwZWM6IDQ5MTkwDQo+IA0KDQpS
ZXZpZXdlZC1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+
DQoNCj4gU2lnbmVkLW9mZi1ieTogTHVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRl
bC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGku
YyAgICB8ICA3ICsrKystLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZHBfbXN0LmMgfCAxNiArKysrKysrKysrKysrLS0tDQo+ICAyIGZpbGVzIGNoYW5nZWQsIDE3IGlu
c2VydGlvbnMoKyksIDYgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZGRpLmMNCj4gaW5kZXggZmVkN2ZjNTZkZDkyLi4yY2U5OTg1MjlkMDgg
MTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMN
Cj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYw0KPiBAQCAt
MzQ2Miw5ICszNDYyLDEwIEBAIHN0YXRpYyB2b2lkIHRnbF9kZGlfcHJlX2VuYWJsZV9kcChzdHJ1
Y3QNCj4gaW50ZWxfZW5jb2RlciAqZW5jb2RlciwNCj4gIAlpY2xfcHJvZ3JhbV9tZ19kcF9tb2Rl
KGRpZ19wb3J0LCBjcnRjX3N0YXRlKTsNCj4gIA0KPiAgCS8qDQo+IC0JICogNy5hIC0gU3RlcHMg
aW4gdGhpcyBmdW5jdGlvbiBzaG91bGQgb25seSBiZSBleGVjdXRlZCBvdmVyDQo+IE1TVA0KPiAt
CSAqIG1hc3Rlciwgd2hhdCB3aWxsIGJlIHRha2VuIGluIGNhcmUgYnkgTVNUIGhvb2sNCj4gLQkg
KiBpbnRlbF9tc3RfcHJlX2VuYWJsZV9kcCgpDQo+ICsJICogNy5hIC0gc2luZ2xlIHN0cmVhbSBv
ciBtdWx0aS1zdHJlYW0gbWFzdGVyIHRyYW5zY29kZXI6DQo+IENvbmZpZ3VyZQ0KPiArCSAqIFRy
YW5zY29kZXIgQ2xvY2sgU2VsZWN0LiBGb3IgYWRkaXRpb25hbCBNU1Qgc3RyZWFtcyB0aGlzDQo+
IHdpbGwgYmUgZG9uZQ0KPiArCSAqIGJ5IGludGVsX21zdF9wcmVfZW5hYmxlX2RwKCkgYWZ0ZXIg
cHJvZ3JhbW1pbmcgVkMgUGF5bG9hZCBJRA0KPiB0aHJvdWdoDQo+ICsJICogQVVYLg0KPiAgCSAq
Lw0KPiAgCWludGVsX2RkaV9lbmFibGVfcGlwZV9jbG9jayhjcnRjX3N0YXRlKTsNCj4gIA0KPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9tc3QuYw0K
PiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbXN0LmMNCj4gaW5kZXgg
YTk5NjI4NDZhNTAzLi5hZDU0NjE4ZjYxNDIgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbXN0LmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kcF9tc3QuYw0KPiBAQCAtMjk5LDIxICsyOTksMjMgQEAgc3RhdGlj
IHZvaWQgaW50ZWxfbXN0X3ByZV9lbmFibGVfZHAoc3RydWN0DQo+IGludGVsX2VuY29kZXIgKmVu
Y29kZXIsDQo+ICAJCXRvX2ludGVsX2Nvbm5lY3Rvcihjb25uX3N0YXRlLT5jb25uZWN0b3IpOw0K
PiAgCWludCByZXQ7DQo+ICAJdTMyIHRlbXA7DQo+ICsJYm9vbCBmaXJzdF9tc3Rfc3RyZWFtOw0K
PiAgDQo+ICAJLyogTVNUIGVuY29kZXJzIGFyZSBib3VuZCB0byBhIGNydGMsIG5vdCB0byBhIGNv
bm5lY3RvciwNCj4gIAkgKiBmb3JjZSB0aGUgbWFwcGluZyBoZXJlIGZvciBnZXRfaHdfc3RhdGUu
DQo+ICAJICovDQo+ICAJY29ubmVjdG9yLT5lbmNvZGVyID0gZW5jb2RlcjsNCj4gIAlpbnRlbF9t
c3QtPmNvbm5lY3RvciA9IGNvbm5lY3RvcjsNCj4gKwlmaXJzdF9tc3Rfc3RyZWFtID0gaW50ZWxf
ZHAtPmFjdGl2ZV9tc3RfbGlua3MgPT0gMDsNCj4gIA0KPiAgCURSTV9ERUJVR19LTVMoImFjdGl2
ZSBsaW5rcyAlZFxuIiwgaW50ZWxfZHAtPmFjdGl2ZV9tc3RfbGlua3MpOw0KPiAgDQo+IC0JaWYg
KGludGVsX2RwLT5hY3RpdmVfbXN0X2xpbmtzID09IDApDQo+ICsJaWYgKGZpcnN0X21zdF9zdHJl
YW0pDQo+ICAJCWludGVsX2RwX3NpbmtfZHBtcyhpbnRlbF9kcCwgRFJNX01PREVfRFBNU19PTik7
DQo+ICANCj4gIAlkcm1fZHBfc2VuZF9wb3dlcl91cGRvd25fcGh5KCZpbnRlbF9kcC0+bXN0X21n
ciwgY29ubmVjdG9yLQ0KPiA+cG9ydCwgdHJ1ZSk7DQo+ICANCj4gLQlpZiAoaW50ZWxfZHAtPmFj
dGl2ZV9tc3RfbGlua3MgPT0gMCkNCj4gKwlpZiAoZmlyc3RfbXN0X3N0cmVhbSkNCj4gIAkJaW50
ZWxfZGlnX3BvcnQtPmJhc2UucHJlX2VuYWJsZSgmaW50ZWxfZGlnX3BvcnQtPmJhc2UsDQo+ICAJ
CQkJCQlwaXBlX2NvbmZpZywgTlVMTCk7DQo+ICANCj4gQEAgLTMzMCw3ICszMzIsMTUgQEAgc3Rh
dGljIHZvaWQgaW50ZWxfbXN0X3ByZV9lbmFibGVfZHAoc3RydWN0DQo+IGludGVsX2VuY29kZXIg
KmVuY29kZXIsDQo+ICANCj4gIAlyZXQgPSBkcm1fZHBfdXBkYXRlX3BheWxvYWRfcGFydDEoJmlu
dGVsX2RwLT5tc3RfbWdyKTsNCj4gIA0KPiAtCWludGVsX2RkaV9lbmFibGVfcGlwZV9jbG9jayhw
aXBlX2NvbmZpZyk7DQo+ICsJLyoNCj4gKwkgKiBCZWZvcmUgR2VuIDEyIHRoaXMgaXMgbm90IGRv
bmUgYXMgcGFydCBvZg0KPiArCSAqIGludGVsX2RpZ19wb3J0LT5iYXNlLnByZV9lbmFibGUoKSBh
bmQgc2hvdWxkIGJlIGRvbmUgaGVyZS4NCj4gRm9yDQo+ICsJICogR2VuIDEyKyB0aGUgc3RlcCBp
biB3aGljaCB0aGlzIHNob3VsZCBiZSBkb25lIGlzIGRpZmZlcmVudA0KPiBmb3IgdGhlDQo+ICsJ
ICogZmlyc3QgTVNUIHN0cmVhbSwgc28gaXQncyBkb25lIG9uIHRoZSBEREkgZm9yIHRoZSBmaXJz
dA0KPiBzdHJlYW0gYW5kDQo+ICsJICogaGVyZSBmb3IgdGhlIGZvbGxvd2luZyBvbmVzLg0KPiAr
CSAqLw0KPiArCWlmIChJTlRFTF9HRU4oZGV2X3ByaXYpIDwgMTIgfHwgIWZpcnN0X21zdF9zdHJl
YW0pDQo+ICsJCWludGVsX2RkaV9lbmFibGVfcGlwZV9jbG9jayhwaXBlX2NvbmZpZyk7DQo+ICB9
DQo+ICANCj4gIHN0YXRpYyB2b2lkIGludGVsX21zdF9lbmFibGVfZHAoc3RydWN0IGludGVsX2Vu
Y29kZXIgKmVuY29kZXIsDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZng=
