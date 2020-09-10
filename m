Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D26B1264A9D
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Sep 2020 19:05:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 126986E953;
	Thu, 10 Sep 2020 17:05:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 91C106E953
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Sep 2020 17:05:32 +0000 (UTC)
IronPort-SDR: U/+osnYToTs+zKUnSs09M54+xZZG+eAnNAsGGAonsQ95mVsJua4YZ9bJY8XqOxggZsPODH1+Ml
 0+9Ei21Idn6w==
X-IronPort-AV: E=McAfee;i="6000,8403,9740"; a="138614546"
X-IronPort-AV: E=Sophos;i="5.76,413,1592895600"; d="scan'208";a="138614546"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2020 10:05:23 -0700
IronPort-SDR: x8jRAHQ0RgbT2B/7jX6hI6dkkETATvXaYgh/QAepq6a9IbQ70t8dW8gF1lmFGwEXGfiUEuq4hV
 JR1AfBiL+qSA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,413,1592895600"; d="scan'208";a="378272523"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga001.jf.intel.com with ESMTP; 10 Sep 2020 10:05:22 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 10 Sep 2020 10:05:22 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 10 Sep 2020 10:05:22 -0700
Received: from orsmsx611.amr.corp.intel.com ([10.22.229.24]) by
 ORSMSX611.amr.corp.intel.com ([10.22.229.24]) with mapi id 15.01.1713.004;
 Thu, 10 Sep 2020 10:05:22 -0700
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/pll: Centralize PLL_ENABLE register
 lookup
Thread-Index: AQHWhjtoqmZL8q/blUWLsBTVYCQiZKliVgoA///GhkA=
Date: Thu, 10 Sep 2020 17:05:21 +0000
Message-ID: <39b17c13dd6541d7b3f6b4b48417f92c@intel.com>
References: <20200908233955.11311-1-anusha.srivatsa@intel.com>
 <87blid21z1.fsf@intel.com>
In-Reply-To: <87blid21z1.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
x-originating-ip: [10.22.254.132]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/pll: Centralize PLL_ENABLE
 register lookup
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSmFuaSBOaWt1bGEgPGph
bmkubmlrdWxhQGxpbnV4LmludGVsLmNvbT4NCj4gU2VudDogVGh1cnNkYXksIFNlcHRlbWJlciAx
MCwgMjAyMCA2OjMxIEFNDQo+IFRvOiBTcml2YXRzYSwgQW51c2hhIDxhbnVzaGEuc3JpdmF0c2FA
aW50ZWwuY29tPjsgaW50ZWwtDQo+IGdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gU3ViamVj
dDogUmU6IFtJbnRlbC1nZnhdIFtQQVRDSF0gZHJtL2k5MTUvcGxsOiBDZW50cmFsaXplIFBMTF9F
TkFCTEUgcmVnaXN0ZXINCj4gbG9va3VwDQo+IA0KPiBPbiBUdWUsIDA4IFNlcCAyMDIwLCBBbnVz
aGEgU3JpdmF0c2EgPGFudXNoYS5zcml2YXRzYUBpbnRlbC5jb20+IHdyb3RlOg0KPiA+IFdlIGN1
cnJlbnR5IGNoZWNrIGZvciBwbGF0Zm9ybSBhdCBtdWx0aXBsZSBwYXJ0cyBpbiB0aGUgZHJpdmVy
IHRvIGdyYWINCj4gPiB0aGUgY29ycmVjdCBQTEwuIExldCB1cyBiZWdpbiB0byBjZW50cmFsaXpl
IGl0IHRocm91Z2ggYSBoZWxwZXINCj4gPiBmdW5jdGlvbi4NCj4gPg0KPiA+IHYyOiBzL2ludGVs
X2dldF9wbGxfZW5hYmxlX3JlZygpL2ludGVsX2NvbWJvX3BsbF9lbmFibGVfcmVnKCkgKFZpbGxl
KQ0KPiA+DQo+ID4gdjM6IENsZWFuIHVwIGNvbWJvX3BsbF9kaXNhYmxlKCkgKFJvZHJpZ28pDQo+
ID4NCj4gPiBTdWdnZXN0ZWQtYnk6IE1hdHQgUm9wZXIgPG1hdHRoZXcuZC5yb3BlckBpbnRlbC5j
b20+DQo+ID4gQ2M6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5j
b20+DQo+ID4gQ2M6IE1hdHQgUm9wZXIgPG1hdHRoZXcuZC5yb3BlckBpbnRlbC5jb20+DQo+ID4g
U2lnbmVkLW9mZi1ieTogQW51c2hhIFNyaXZhdHNhIDxhbnVzaGEuc3JpdmF0c2FAaW50ZWwuY29t
Pg0KPiA+IFJldmlld2VkLWJ5OiBSb2RyaWdvIFZpdmkgPHJvZHJpZ28udml2aUBpbnRlbC5jb20+
DQo+ID4gLS0tDQo+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBsbF9t
Z3IuYyB8IDI5DQo+ID4gKysrKysrKysrKystLS0tLS0tLQ0KPiA+ICAxIGZpbGUgY2hhbmdlZCwg
MTcgaW5zZXJ0aW9ucygrKSwgMTIgZGVsZXRpb25zKC0pDQo+ID4NCj4gPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcGxsX21nci5jDQo+ID4gYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwbGxfbWdyLmMNCj4gPiBpbmRleCBjOTAx
M2Y4Zjc2NmYuLjQ0MWI2ZjUyZTgwOCAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2RwbGxfbWdyLmMNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2RwbGxfbWdyLmMNCj4gPiBAQCAtMTQ3LDYgKzE0NywxOCBAQCB2
b2lkIGFzc2VydF9zaGFyZWRfZHBsbChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZQ0KPiAqZGV2X3By
aXYsDQo+ID4gIAkJCXBsbC0+aW5mby0+bmFtZSwgb25vZmYoc3RhdGUpLCBvbm9mZihjdXJfc3Rh
dGUpKTsgIH0NCj4gPg0KPiA+ICtzdGF0aWMNCj4gPiAraTkxNV9yZWdfdCBpbnRlbF9jb21ib19w
bGxfZW5hYmxlX3JlZyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZQ0KPiA+ICsqZGV2X3ByaXYsDQo+
IA0KPiBQbGVhc2Uga2VlcCB0aGUgc3RhdGljIGtleXdvcmQgYW5kIHRoZSByZXR1cm4gdHlwZSBv
biB0aGUgc2FtZSBsaW5lIHdpdGgNCj4gZWFjaCBvdGhlci4NCj4gDQo+IEFuZCBzaW5jZSB5b3Un
cmUgdG91Y2hpbmcgdGhpcywgcGxlYXNlIHJlbmFtZSBkZXZfcHJpdiB0byBpOTE1IGluIGFsbCBu
ZXcNCj4gY29kZSBhZGRpbmcgaXQuDQoNClN1cmUuIFRoYW5rcyBmb3IgdGhlIGZlZWRiYWNrIEph
bmkuDQoNCkFudXNoYQ0KPiBCUiwNCj4gSmFuaS4NCj4gDQo+IA0KPiA+ICsJCQkJICAgIHN0cnVj
dCBpbnRlbF9zaGFyZWRfZHBsbCAqcGxsKSB7DQo+ID4gKw0KPiA+ICsJaWYgKElTX0VMS0hBUlRM
QUtFKGRldl9wcml2KSAmJiAocGxsLT5pbmZvLT5pZCA9PQ0KPiBEUExMX0lEX0VITF9EUExMNCkp
DQo+ID4gKwkJCXJldHVybiBNR19QTExfRU5BQkxFKDApOw0KPiA+ICsNCj4gPiArCXJldHVybiBD
TkxfRFBMTF9FTkFCTEUocGxsLT5pbmZvLT5pZCk7DQo+ID4gKw0KPiA+ICsNCj4gPiArfQ0KPiA+
ICAvKioNCj4gPiAgICogaW50ZWxfcHJlcGFyZV9zaGFyZWRfZHBsbCAtIGNhbGwgYSBkcGxsJ3Mg
cHJlcGFyZSBob29rDQo+ID4gICAqIEBjcnRjX3N0YXRlOiBDUlRDLCBhbmQgaXRzIHN0YXRlLCB3
aGljaCBoYXMgYSBzaGFyZWQgZHBsbCBAQA0KPiA+IC0zODQyLDEyICszODU0LDcgQEAgc3RhdGlj
IGJvb2wgY29tYm9fcGxsX2dldF9od19zdGF0ZShzdHJ1Y3QNCj4gZHJtX2k5MTVfcHJpdmF0ZSAq
ZGV2X3ByaXYsDQo+ID4gIAkJCQkgICBzdHJ1Y3QgaW50ZWxfc2hhcmVkX2RwbGwgKnBsbCwNCj4g
PiAgCQkJCSAgIHN0cnVjdCBpbnRlbF9kcGxsX2h3X3N0YXRlICpod19zdGF0ZSkgIHsNCj4gPiAt
CWk5MTVfcmVnX3QgZW5hYmxlX3JlZyA9IENOTF9EUExMX0VOQUJMRShwbGwtPmluZm8tPmlkKTsN
Cj4gPiAtDQo+ID4gLQlpZiAoSVNfRUxLSEFSVExBS0UoZGV2X3ByaXYpICYmDQo+ID4gLQkgICAg
cGxsLT5pbmZvLT5pZCA9PSBEUExMX0lEX0VITF9EUExMNCkgew0KPiA+IC0JCWVuYWJsZV9yZWcg
PSBNR19QTExfRU5BQkxFKDApOw0KPiA+IC0JfQ0KPiA+ICsJaTkxNV9yZWdfdCBlbmFibGVfcmVn
ID0gaW50ZWxfY29tYm9fcGxsX2VuYWJsZV9yZWcoZGV2X3ByaXYsIHBsbCk7DQo+ID4NCj4gPiAg
CXJldHVybiBpY2xfcGxsX2dldF9od19zdGF0ZShkZXZfcHJpdiwgcGxsLCBod19zdGF0ZSwgZW5h
YmxlX3JlZyk7ICB9DQo+ID4gQEAgLTQwNDUsMTEgKzQwNTIsMTAgQEAgc3RhdGljIHZvaWQgaWNs
X3BsbF9lbmFibGUoc3RydWN0DQo+ID4gZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsICBzdGF0
aWMgdm9pZCBjb21ib19wbGxfZW5hYmxlKHN0cnVjdA0KPiBkcm1faTkxNV9wcml2YXRlICpkZXZf
cHJpdiwNCj4gPiAgCQkJICAgICBzdHJ1Y3QgaW50ZWxfc2hhcmVkX2RwbGwgKnBsbCkgIHsNCj4g
PiAtCWk5MTVfcmVnX3QgZW5hYmxlX3JlZyA9IENOTF9EUExMX0VOQUJMRShwbGwtPmluZm8tPmlk
KTsNCj4gPiArCWk5MTVfcmVnX3QgZW5hYmxlX3JlZyA9IGludGVsX2NvbWJvX3BsbF9lbmFibGVf
cmVnKGRldl9wcml2LCBwbGwpOw0KPiA+DQo+ID4gIAlpZiAoSVNfRUxLSEFSVExBS0UoZGV2X3By
aXYpICYmDQo+ID4gIAkgICAgcGxsLT5pbmZvLT5pZCA9PSBEUExMX0lEX0VITF9EUExMNCkgew0K
PiA+IC0JCWVuYWJsZV9yZWcgPSBNR19QTExfRU5BQkxFKDApOw0KPiA+DQo+ID4gIAkJLyoNCj4g
PiAgCQkgKiBXZSBuZWVkIHRvIGRpc2FibGUgREMgc3RhdGVzIHdoZW4gdGhpcyBEUExMIGlzIGVu
YWJsZWQuDQo+ID4gQEAgLTQxNTcsMTkgKzQxNjMsMTggQEAgc3RhdGljIHZvaWQgaWNsX3BsbF9k
aXNhYmxlKHN0cnVjdA0KPiA+IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LCAgc3RhdGljIHZv
aWQgY29tYm9fcGxsX2Rpc2FibGUoc3RydWN0DQo+IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2
LA0KPiA+ICAJCQkgICAgICBzdHJ1Y3QgaW50ZWxfc2hhcmVkX2RwbGwgKnBsbCkgIHsNCj4gPiAt
CWk5MTVfcmVnX3QgZW5hYmxlX3JlZyA9IENOTF9EUExMX0VOQUJMRShwbGwtPmluZm8tPmlkKTsN
Cj4gPiArCWk5MTVfcmVnX3QgZW5hYmxlX3JlZyA9IGludGVsX2NvbWJvX3BsbF9lbmFibGVfcmVn
KGRldl9wcml2LCBwbGwpOw0KPiA+ICsNCj4gPiArCWljbF9wbGxfZGlzYWJsZShkZXZfcHJpdiwg
cGxsLCBlbmFibGVfcmVnKTsNCj4gPg0KPiA+ICAJaWYgKElTX0VMS0hBUlRMQUtFKGRldl9wcml2
KSAmJg0KPiA+ICAJICAgIHBsbC0+aW5mby0+aWQgPT0gRFBMTF9JRF9FSExfRFBMTDQpIHsNCj4g
PiAtCQllbmFibGVfcmVnID0gTUdfUExMX0VOQUJMRSgwKTsNCj4gPiAtCQlpY2xfcGxsX2Rpc2Fi
bGUoZGV2X3ByaXYsIHBsbCwgZW5hYmxlX3JlZyk7DQo+ID4NCj4gPiAgCQlpbnRlbF9kaXNwbGF5
X3Bvd2VyX3B1dChkZXZfcHJpdiwNCj4gUE9XRVJfRE9NQUlOX0RQTExfRENfT0ZGLA0KPiA+ICAJ
CQkJCXBsbC0+d2FrZXJlZik7DQo+ID4gIAkJcmV0dXJuOw0KPiA+ICAJfQ0KPiA+DQo+ID4gLQlp
Y2xfcGxsX2Rpc2FibGUoZGV2X3ByaXYsIHBsbCwgZW5hYmxlX3JlZyk7DQo+ID4gIH0NCj4gPg0K
PiA+ICBzdGF0aWMgdm9pZCB0YnRfcGxsX2Rpc2FibGUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUg
KmRldl9wcml2LA0KPiANCj4gLS0NCj4gSmFuaSBOaWt1bGEsIEludGVsIE9wZW4gU291cmNlIEdy
YXBoaWNzIENlbnRlcg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4Cg==
