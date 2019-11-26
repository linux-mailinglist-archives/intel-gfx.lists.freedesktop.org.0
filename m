Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7895210A617
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Nov 2019 22:41:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D75BF6E499;
	Tue, 26 Nov 2019 21:41:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 17FBF6E499
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Nov 2019 21:41:17 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Nov 2019 13:41:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,247,1571727600"; d="scan'208";a="202853636"
Received: from fmsmsx107.amr.corp.intel.com ([10.18.124.205])
 by orsmga008.jf.intel.com with ESMTP; 26 Nov 2019 13:41:16 -0800
Received: from fmsmsx157.amr.corp.intel.com (10.18.116.73) by
 fmsmsx107.amr.corp.intel.com (10.18.124.205) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 26 Nov 2019 13:41:16 -0800
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.27]) by
 FMSMSX157.amr.corp.intel.com ([169.254.14.160]) with mapi id 14.03.0439.000;
 Tue, 26 Nov 2019 13:41:15 -0800
From: "Souza, Jose" <jose.souza@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 3/3] drm/i915: Program SHPD_FILTER_CNT on CNP+
Thread-Index: AQHVpJ2RLgisHJGD7065mUqtRt7qZ6eegVQA
Date: Tue, 26 Nov 2019 21:41:15 +0000
Message-ID: <9113b0172381d42bfeda71b76876dd870472cbfb.camel@intel.com>
References: <20191126210732.407496-1-matthew.d.roper@intel.com>
 <20191126210732.407496-3-matthew.d.roper@intel.com>
In-Reply-To: <20191126210732.407496-3-matthew.d.roper@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.98.40.66]
Content-ID: <DC2D4F5C3B373244BD995BA1642E9786@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915: Program SHPD_FILTER_CNT on
 CNP+
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

T24gVHVlLCAyMDE5LTExLTI2IGF0IDEzOjA3IC0wODAwLCBNYXR0IFJvcGVyIHdyb3RlOg0KPiBU
aGUgYnNwZWMgdGVsbHMgdXMgJ1Byb2dyYW0gU0hQRF9GSUxURVJfQ05UIHdpdGggdGhlICI1MDAN
Cj4gbWljcm9zZWNvbmRzDQo+IGFkanVzdGVkIiB2YWx1ZSBiZWZvcmUgZW5hYmxpbmcgaG90cGx1
ZyBkZXRlY3Rpb24nIG9uIENOUCsuICBXZQ0KPiBoYXZlbid0DQo+IGJlZW4gdG91Y2hpbmcgdGhp
cyByZWdpc3RlciBhdCBhbGwgdGh1cyBmYXIsIGJ1dCB3ZSBzaG91bGQgcHJvYmFibHkNCj4gZm9s
bG93IHRoZSBic3BlYydzIGd1aWRhbmNlLg0KPiANCj4gVGhlIHJlZ2lzdGVyIGFsc28gZXhpc3Rz
IG9uIExQVCBhbmQgU1BULCBidXQgdGhlcmUgaXNuJ3QgYW55IHNwZWNpZmljDQo+IGd1aWRhbmNl
IEkgY2FuIGZpbmQgb24gaG93IHdlIHNob3VsZCBiZSBwcm9ncmFtbWluZyBpdCB0aGVyZSBzbyBs
ZXQncw0KPiBsZWF2ZSBpdCBiZSBmb3Igbm93Lg0KPiANCj4gQnNwZWM6IDQzNDINCj4gQnNwZWM6
IDMxMjk3DQo+IEJzcGVjOiA4NDA3DQo+IEJzcGVjOiA0OTMwNQ0KPiBCc3BlYzogNTA0NzMNCj4g
DQo+IFNpZ25lZC1vZmYtYnk6IE1hdHQgUm9wZXIgPG1hdHRoZXcuZC5yb3BlckBpbnRlbC5jb20+
DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9pcnEuYyB8IDUgKysrKysNCj4g
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggfCA0ICsrKysNCj4gIDIgZmlsZXMgY2hh
bmdlZCwgOSBpbnNlcnRpb25zKCspDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9pcnEuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfaXJxLmMNCj4g
aW5kZXggZGFlMDBmN2RkN2RmLi4wMjhjYjYyMzljMTIgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfaXJxLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9pcnEuYw0KPiBAQCAtMjk3Niw2ICsyOTc2LDggQEAgc3RhdGljIHZvaWQgaWNwX2hwZF9pcnFf
c2V0dXAoc3RydWN0DQo+IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LA0KPiAgCWhvdHBsdWdf
aXJxcyA9IHNkZV9kZGlfbWFzayB8IHNkZV90Y19tYXNrOw0KPiAgCWVuYWJsZWRfaXJxcyA9IGlu
dGVsX2hwZF9lbmFibGVkX2lycXMoZGV2X3ByaXYsIHBpbnMpOw0KPiAgDQo+ICsJSTkxNV9XUklU
RShTSFBEX0ZJTFRFUl9DTlQsIFNIUERfRklMVEVSX0NOVF81MDBfQURKKTsNCj4gKw0KPiAgCWli
eF9kaXNwbGF5X2ludGVycnVwdF91cGRhdGUoZGV2X3ByaXYsIGhvdHBsdWdfaXJxcywNCj4gZW5h
YmxlZF9pcnFzKTsNCj4gIA0KPiAgCWljcF9ocGRfZGV0ZWN0aW9uX3NldHVwKGRldl9wcml2LCBk
ZGlfZW5hYmxlX21hc2ssDQo+IHRjX2VuYWJsZV9tYXNrKTsNCj4gQEAgLTMwODEsNiArMzA4Myw5
IEBAIHN0YXRpYyB2b2lkIHNwdF9ocGRfaXJxX3NldHVwKHN0cnVjdA0KPiBkcm1faTkxNV9wcml2
YXRlICpkZXZfcHJpdikNCj4gIHsNCj4gIAl1MzIgaG90cGx1Z19pcnFzLCBlbmFibGVkX2lycXM7
DQo+ICANCj4gKwlpZiAoSU5URUxfUENIX1RZUEUoZGV2X3ByaXYpID49IFBDSF9DTlApDQo+ICsJ
CUk5MTVfV1JJVEUoU0hQRF9GSUxURVJfQ05ULCBTSFBEX0ZJTFRFUl9DTlRfNTAwX0FESik7DQo+
ICsNCj4gIAlob3RwbHVnX2lycXMgPSBTREVfSE9UUExVR19NQVNLX1NQVDsNCj4gIAllbmFibGVk
X2lycXMgPSBpbnRlbF9ocGRfZW5hYmxlZF9pcnFzKGRldl9wcml2LCBocGRfc3B0KTsNCj4gIA0K
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaA0KPiBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgNCj4gaW5kZXggOTRkMGY1OTNlZWI3Li43NGNmNDVk
ZTE2MmUgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgNCj4g
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaA0KPiBAQCAtODExMCw2ICs4MTEw
LDEwIEBAIGVudW0gew0KPiAgDQo+ICAjZGVmaW5lIFNIT1RQTFVHX0NUTF9UQwkJCQlfTU1JTygw
eGM0MDM0KQ0KPiAgI2RlZmluZSAgIElDUF9UQ19IUERfRU5BQkxFKHRjX3BvcnQpCQkoOCA8PCAo
dGNfcG9ydCkgKiA0KQ0KPiArDQo+ICsjZGVmaW5lIFNIUERfRklMVEVSX0NOVAkJCQlfTU1JTygw
eGM0MDM4KQ0KPiArI2RlZmluZSAgIFNIUERfRklMVEVSX0NOVF81MDBfQURKCQkweDAwMUQ5DQoN
ClNob3VsZG4ndCBpdCBiZSAweDFGMj8gT3IgSSdtIG1pc3Npbmcgc29tZXRoaW5nPw0KQWxzbyB0
aGlzIGlzIHRoZSBkZWZhdWx0IHZhbHVlLg0KDQoNCj4gKw0KPiAgLyogSWNlbGFrZSBEU0MgUmF0
ZSBDb250cm9sIFJhbmdlIFBhcmFtZXRlciBSZWdpc3RlcnMgKi8NCj4gICNkZWZpbmUgRFNDQV9S
Q19SQU5HRV9QQVJBTUVURVJTXzAJCV9NTUlPKDB4NkIyNDApDQo+ICAjZGVmaW5lIERTQ0FfUkNf
UkFOR0VfUEFSQU1FVEVSU18wX1VEVwkJX01NSU8oMHg2QjI0MCArDQo+IDQpDQpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
