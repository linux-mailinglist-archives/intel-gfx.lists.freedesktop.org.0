Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D52B67689
	for <lists+intel-gfx@lfdr.de>; Sat, 13 Jul 2019 00:32:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D57D26E346;
	Fri, 12 Jul 2019 22:32:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E84FB6E346
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Jul 2019 22:32:48 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Jul 2019 15:32:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,484,1557212400"; d="scan'208";a="177633011"
Received: from fmsmsx107.amr.corp.intel.com ([10.18.124.205])
 by orsmga002.jf.intel.com with ESMTP; 12 Jul 2019 15:32:48 -0700
Received: from fmsmsx155.amr.corp.intel.com (10.18.116.71) by
 fmsmsx107.amr.corp.intel.com (10.18.124.205) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 12 Jul 2019 15:32:48 -0700
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.206]) by
 FMSMSX155.amr.corp.intel.com ([169.254.5.80]) with mapi id 14.03.0439.000;
 Fri, 12 Jul 2019 15:32:47 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915/ehl: Map MCC pins based on PHY, not port
Thread-Index: AQHVOP9+/vxnSUR8ikmepc+n3Wk1aKbIBs4A
Date: Fri, 12 Jul 2019 22:32:47 +0000
Message-ID: <197110faa19dba647ebe476036006848245562c6.camel@intel.com>
References: <20190712221641.21031-1-matthew.d.roper@intel.com>
In-Reply-To: <20190712221641.21031-1-matthew.d.roper@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.9.133]
Content-ID: <BAEFB40DA5E6044DB62823549973CAD9@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/ehl: Map MCC pins based on PHY,
 not port
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

T24gRnJpLCAyMDE5LTA3LTEyIGF0IDE1OjE2IC0wNzAwLCBNYXR0IFJvcGVyIHdyb3RlOg0KPiBO
b3cgdGhhdCB3ZSBkaXN0aW5ndWlzaCBiZXR3ZWVuIHBoeSBhbmQgcG9ydChkZGkpLA0KPiBtY2Nf
cG9ydF90b19kZGNfcGluDQo+IHNob3VsZCB1c2UgdGhlIHBoeSwgbm90IHRoZSBEREksIGZvciBk
ZXRlcm1pbmluZyBEREMgcGlucy4NCg0KTml0OiBNYXliZSBhZGQgdG8gdGhlIGNvbW1pdCBtZXNz
YWdlIHdoeSB5b3UgYXJlIG9ubHkgY29udmVydGluZyB0aGlzDQpvbmUgYW5kIG5vdCB0aGUgb3Ro
ZXJzPw0KDQpBbnl3YXlzOg0KDQpSZXZpZXdlZC1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8
am9zZS5zb3V6YUBpbnRlbC5jb20+DQoNCj4gDQo+IENjOiBKb3PDqSBSb2JlcnRvIGRlIFNvdXph
IDxqb3NlLnNvdXphQGludGVsLmNvbT4NCj4gU2lnbmVkLW9mZi1ieTogTWF0dCBSb3BlciA8bWF0
dGhldy5kLnJvcGVyQGludGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2hkbWkuYyB8IDExICsrKysrKy0tLS0tDQo+ICAxIGZpbGUgY2hhbmdlZCwg
NiBpbnNlcnRpb25zKCspLCA1IGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaGRtaS5jDQo+IGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9oZG1pLmMNCj4gaW5kZXggNzdhZjBkZmQ5M2NlLi4wOThlYTJj
NWQ4MzEgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
aGRtaS5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaGRtaS5j
DQo+IEBAIC0yOTQzLDIwICsyOTQzLDIxIEBAIHN0YXRpYyB1OCBpY2xfcG9ydF90b19kZGNfcGlu
KHN0cnVjdA0KPiBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwgZW51bSBwb3J0IHBvcnQpDQo+
ICANCj4gIHN0YXRpYyB1OCBtY2NfcG9ydF90b19kZGNfcGluKHN0cnVjdCBkcm1faTkxNV9wcml2
YXRlICpkZXZfcHJpdiwNCj4gZW51bSBwb3J0IHBvcnQpDQo+ICB7DQo+ICsJZW51bSBwaHkgcGh5
ID0gaW50ZWxfcG9ydF90b19waHkoZGV2X3ByaXYsIHBvcnQpOw0KPiAgCXU4IGRkY19waW47DQo+
ICANCj4gLQlzd2l0Y2ggKHBvcnQpIHsNCj4gLQljYXNlIFBPUlRfQToNCj4gKwlzd2l0Y2ggKHBo
eSkgew0KPiArCWNhc2UgUEhZX0E6DQo+ICAJCWRkY19waW4gPSBHTUJVU19QSU5fMV9CWFQ7DQo+
ICAJCWJyZWFrOw0KPiAtCWNhc2UgUE9SVF9COg0KPiArCWNhc2UgUEhZX0I6DQo+ICAJCWRkY19w
aW4gPSBHTUJVU19QSU5fMl9CWFQ7DQo+ICAJCWJyZWFrOw0KPiAtCWNhc2UgUE9SVF9DOg0KPiAr
CWNhc2UgUEhZX0M6DQo+ICAJCWRkY19waW4gPSBHTUJVU19QSU5fOV9UQzFfSUNQOw0KPiAgCQli
cmVhazsNCj4gIAlkZWZhdWx0Og0KPiAtCQlNSVNTSU5HX0NBU0UocG9ydCk7DQo+ICsJCU1JU1NJ
TkdfQ0FTRShwaHkpOw0KPiAgCQlkZGNfcGluID0gR01CVVNfUElOXzFfQlhUOw0KPiAgCQlicmVh
azsNCj4gIAl9DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
