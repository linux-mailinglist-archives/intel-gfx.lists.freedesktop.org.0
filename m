Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7682B39656
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Jun 2019 22:03:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 52EF689B9A;
	Fri,  7 Jun 2019 20:02:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 63A4A89B9A
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Jun 2019 20:02:58 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Jun 2019 13:02:57 -0700
X-ExtLoop1: 1
Received: from fmsmsx107.amr.corp.intel.com ([10.18.124.205])
 by FMSMGA003.fm.intel.com with ESMTP; 07 Jun 2019 13:02:57 -0700
Received: from fmsmsx113.amr.corp.intel.com (10.18.116.7) by
 fmsmsx107.amr.corp.intel.com (10.18.124.205) with Microsoft SMTP Server (TLS)
 id 14.3.408.0; Fri, 7 Jun 2019 13:02:57 -0700
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.248]) by
 FMSMSX113.amr.corp.intel.com ([169.254.13.164]) with mapi id 14.03.0415.000;
 Fri, 7 Jun 2019 13:02:57 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Deak, Imre" <imre.deak@intel.com>
Thread-Topic: [Intel-gfx] [PATCH 07/23] drm/i915: Use the correct AUX power
 domain in TypeC TBT-alt mode
Thread-Index: AQHVGuYhMQVTSzQq5k+R9346gNz/x6aRF4sA
Date: Fri, 7 Jun 2019 20:02:57 +0000
Message-ID: <a8875a141a4463e736eb9254991ae036e6e78a47.camel@intel.com>
References: <20190604145826.16424-1-imre.deak@intel.com>
 <20190604145826.16424-8-imre.deak@intel.com>
In-Reply-To: <20190604145826.16424-8-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.8.212]
Content-ID: <1E1575FCB82953478DAAB289E99DD746@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 07/23] drm/i915: Use the correct AUX power
 domain in TypeC TBT-alt mode
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

T24gVHVlLCAyMDE5LTA2LTA0IGF0IDE3OjU4ICswMzAwLCBJbXJlIERlYWsgd3JvdGU6DQo+IElu
IHRoZSBUeXBlQyBUQlQtYWx0IHBvcnQgbW9kZSB3ZSBtdXN0IHVzZSB0aGUgVEJUIEFVWCBwb3dl
ciBkb21haW4sDQo+IGZpeCB0aGF0Lg0KPiANCj4gQ2M6IE1hbmFzaSBOYXZhcmUgPG1hbmFzaS5k
Lm5hdmFyZUBpbnRlbC5jb20+DQo+IENjOiBBbnVzaGEgU3JpdmF0c2EgPGFudXNoYS5zcml2YXRz
YUBpbnRlbC5jb20+DQo+IFNpZ25lZC1vZmYtYnk6IEltcmUgRGVhayA8aW1yZS5kZWFrQGludGVs
LmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kaXNwbGF5LmMgfCAx
OSArKysrKysrKysrKysrKysrKysrDQo+ICAxIGZpbGUgY2hhbmdlZCwgMTkgaW5zZXJ0aW9ucygr
KQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Rpc3BsYXku
Yw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Rpc3BsYXkuYw0KPiBpbmRleCAyNjQ3
NDc4OGI3YjIuLjBlNDI1YTZlZWJmMyAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaW50ZWxfZGlzcGxheS5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Rp
c3BsYXkuYw0KPiBAQCAtNjYwOSw2ICs2NjA5LDI1IEBAIGVudW0gaW50ZWxfZGlzcGxheV9wb3dl
cl9kb21haW4NCj4gaW50ZWxfcG9ydF90b19wb3dlcl9kb21haW4oZW51bSBwb3J0IHBvcnQpDQo+
ICBlbnVtIGludGVsX2Rpc3BsYXlfcG93ZXJfZG9tYWluDQo+ICBpbnRlbF9hdXhfcG93ZXJfZG9t
YWluKHN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgKmRpZ19wb3J0KQ0KPiAgew0KPiArCXN0cnVj
dCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoZGlnX3BvcnQtDQo+ID5iYXNl
LmJhc2UuZGV2KTsNCj4gKw0KPiArCWlmIChpbnRlbF9wb3J0X2lzX3RjKGRldl9wcml2LCBkaWdf
cG9ydC0+YmFzZS5wb3J0KSAmJg0KPiArCSAgICBkaWdfcG9ydC0+dGNfbW9kZSA9PSBUQ19QT1JU
X1RCVF9BTFQpIHsNCj4gKwkJc3dpdGNoIChkaWdfcG9ydC0+YXV4X2NoKSB7DQo+ICsJCWNhc2Ug
QVVYX0NIX0M6DQo+ICsJCQlyZXR1cm4gUE9XRVJfRE9NQUlOX0FVWF9UQlQxOw0KPiArCQljYXNl
IEFVWF9DSF9EOg0KPiArCQkJcmV0dXJuIFBPV0VSX0RPTUFJTl9BVVhfVEJUMjsNCj4gKwkJY2Fz
ZSBBVVhfQ0hfRToNCj4gKwkJCXJldHVybiBQT1dFUl9ET01BSU5fQVVYX1RCVDM7DQo+ICsJCWNh
c2UgQVVYX0NIX0Y6DQo+ICsJCQlyZXR1cm4gUE9XRVJfRE9NQUlOX0FVWF9UQlQ0Ow0KPiArCQlk
ZWZhdWx0Og0KPiArCQkJTUlTU0lOR19DQVNFKGRpZ19wb3J0LT5hdXhfY2gpOw0KPiArCQkJcmV0
dXJuIFBPV0VSX0RPTUFJTl9BVVhfVEJUMTsNCj4gKwkJfQ0KPiArCX0NCg0KDQpJIHdvdWxkIGdv
IGJ5Og0KcmV0dXJuIGRpZ19wb3J0LT5hdXhfY2ggLSBBVVhfQ0hfQyArIFBPV0VSX0RPTUFJTl9B
VVhfVEJUMTsNCg0KYnV0IHRoYXQgd29ya3MgdG9vLg0KDQpSZXZpZXdlZC1ieTogSm9zw6kgUm9i
ZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+DQoNCj4gKw0KPiAgCXN3aXRjaCAo
ZGlnX3BvcnQtPmF1eF9jaCkgew0KPiAgCWNhc2UgQVVYX0NIX0E6DQo+ICAJCXJldHVybiBQT1dF
Ul9ET01BSU5fQVVYX0E7DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZng=
