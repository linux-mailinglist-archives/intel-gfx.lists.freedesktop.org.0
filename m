Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 85F8E1D405A
	for <lists+intel-gfx@lfdr.de>; Thu, 14 May 2020 23:44:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD6876E397;
	Thu, 14 May 2020 21:44:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6AA3E6E397
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 May 2020 21:44:15 +0000 (UTC)
IronPort-SDR: bUSoLzU5+ZBKNUkNSAtcNec7Q6NP8CO4NBn1/TVtqUTccIvnwyVrGmGDMmSnhQn0kodkk+UyyZ
 b0LKdOywPsHg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2020 14:44:14 -0700
IronPort-SDR: ZOLK+g/Ubb+yKI7o/Afpf5Ce2Kn9Ye0ND9lwPTddoP2R5Fx/TNWTDcs4mOgvDNJrHxGBzwtDmq
 azpdVAtWKyXA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,392,1583222400"; d="scan'208";a="262980462"
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
 by orsmga003.jf.intel.com with ESMTP; 14 May 2020 14:44:13 -0700
Received: from fmsmsx116.amr.corp.intel.com ([169.254.2.85]) by
 FMSMSX103.amr.corp.intel.com ([169.254.2.250]) with mapi id 14.03.0439.000;
 Thu, 14 May 2020 14:44:12 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Deak, Imre" <imre.deak@intel.com>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915: Fix AUX power domain toggling
 across TypeC mode resets
Thread-Index: AQHWKjC0SRXduwcViUmfS4hAe1Qa5qiokyuA
Date: Thu, 14 May 2020 21:44:11 +0000
Message-ID: <b2fb32c25309b1f8aef9d9c7beacf01d3fb5e9e7.camel@intel.com>
References: <20200514204553.27193-1-imre.deak@intel.com>
In-Reply-To: <20200514204553.27193-1-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.15.8]
Content-ID: <EAEA0FF90348CC4FBDAC8F0AC56F58CF@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix AUX power domain toggling
 across TypeC mode resets
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
Cc: "stable@vger.kernel.org" <stable@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCAyMDIwLTA1LTE0IGF0IDIzOjQ1ICswMzAwLCBJbXJlIERlYWsgd3JvdGU6DQo+IE1h
a2Ugc3VyZSB0byBzZWxlY3QgdGhlIHBvcnQncyBBVVggcG93ZXIgZG9tYWluIHdoaWxlIGhvbGRp
bmcgdGhlIFRDDQo+IHBvcnQgbG9jay4gVGhlIGRvbWFpbiBkZXBlbmRzIG9uIHRoZSBwb3J0J3Mg
Y3VycmVudCBUQyBtb2RlLCB3aGljaCBtYXkNCj4gZ2V0IGNoYW5nZWQgdW5kZXIgdXMgaWYgd2Un
cmUgbm90IGhvbGRpbmcgdGhlIGxvY2suDQo+IA0KPiBUaGlzIHdhcyBsZWZ0IG91dCBmcm9tDQo+
IGNvbW1pdCA4YzEwZTIyNjI2NjMgKCJkcm0vaTkxNTogS2VlcCB0aGUgVHlwZUMgcG9ydCBtb2Rl
IGZpeGVkIGZvciBkZXRlY3QvQVVYIHRyYW5zZmVycyIpDQo+IA0KDQpSZXZpZXdlZC1ieTogSm9z
w6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+DQoNCj4gQ2M6IDxzdGFi
bGVAdmdlci5rZXJuZWwub3JnPiAjIHY1LjQrDQo+IFNpZ25lZC1vZmYtYnk6IEltcmUgRGVhayA8
aW1yZS5kZWFrQGludGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2RwLmMgfCA1ICsrKy0tDQo+ICAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25z
KCspLCAyIGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZHAuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZHAuYw0KPiBpbmRleCA0MDhjM2MxYzVlODEuLjQwZDQyZGNmZjBiNyAxMDA2NDQNCj4gLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jDQo+ICsrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYw0KPiBAQCAtMTM1OSw4ICsxMzU5LDcg
QEAgaW50ZWxfZHBfYXV4X3hmZXIoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwNCj4gIAlib29s
IGlzX3RjX3BvcnQgPSBpbnRlbF9waHlfaXNfdGMoaTkxNSwgcGh5KTsNCj4gIAlpOTE1X3JlZ190
IGNoX2N0bCwgY2hfZGF0YVs1XTsNCj4gIAl1MzIgYXV4X2Nsb2NrX2RpdmlkZXI7DQo+IC0JZW51
bSBpbnRlbF9kaXNwbGF5X3Bvd2VyX2RvbWFpbiBhdXhfZG9tYWluID0NCj4gLQkJaW50ZWxfYXV4
X3Bvd2VyX2RvbWFpbihpbnRlbF9kaWdfcG9ydCk7DQo+ICsJZW51bSBpbnRlbF9kaXNwbGF5X3Bv
d2VyX2RvbWFpbiBhdXhfZG9tYWluOw0KPiAgCWludGVsX3dha2VyZWZfdCBhdXhfd2FrZXJlZjsN
Cj4gIAlpbnRlbF93YWtlcmVmX3QgcHBzX3dha2VyZWY7DQo+ICAJaW50IGksIHJldCwgcmVjdl9i
eXRlczsNCj4gQEAgLTEzNzUsNiArMTM3NCw4IEBAIGludGVsX2RwX2F1eF94ZmVyKHN0cnVjdCBp
bnRlbF9kcCAqaW50ZWxfZHAsDQo+ICAJaWYgKGlzX3RjX3BvcnQpDQo+ICAJCWludGVsX3RjX3Bv
cnRfbG9jayhpbnRlbF9kaWdfcG9ydCk7DQo+ICANCj4gKwlhdXhfZG9tYWluID0gaW50ZWxfYXV4
X3Bvd2VyX2RvbWFpbihpbnRlbF9kaWdfcG9ydCk7DQo+ICsNCj4gIAlhdXhfd2FrZXJlZiA9IGlu
dGVsX2Rpc3BsYXlfcG93ZXJfZ2V0KGk5MTUsIGF1eF9kb21haW4pOw0KPiAgCXBwc193YWtlcmVm
ID0gcHBzX2xvY2soaW50ZWxfZHApOw0KPiAgDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZngK
