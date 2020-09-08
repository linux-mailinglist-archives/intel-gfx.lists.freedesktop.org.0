Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A2F302614D3
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Sep 2020 18:38:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1BC786E091;
	Tue,  8 Sep 2020 16:38:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8F3E76E091
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Sep 2020 16:38:04 +0000 (UTC)
IronPort-SDR: 1h2m/l21zQi2q4hF7IkCQyRabFJsrEwfcNa6c5VVEqiPWr2Nqk+zzd6ubSqRNukKaXKo+uCLiy
 hwmJgO3+hO4g==
X-IronPort-AV: E=McAfee;i="6000,8403,9738"; a="155661379"
X-IronPort-AV: E=Sophos;i="5.76,406,1592895600"; d="scan'208";a="155661379"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2020 09:38:03 -0700
IronPort-SDR: WB40izzA+qmynckY3IUfM/osxFSOzwAj1Ch5xRIRdL0SvJR4uB+ylNu9Nbqom5+fl4b+TXQI/p
 qSPwR2GDpdyQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,406,1592895600"; d="scan'208";a="407180597"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga001.fm.intel.com with ESMTP; 08 Sep 2020 09:38:03 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 8 Sep 2020 09:38:03 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 8 Sep 2020 09:38:02 -0700
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.1713.004;
 Tue, 8 Sep 2020 09:38:02 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [05/12] drm/i915: Add VBT AUX CH H and I
Thread-Index: AQHWhfme7v9sX/J0EUmnKROiPMtDY6lfZwyA
Date: Tue, 8 Sep 2020 16:38:02 +0000
Message-ID: <c1811fca0ee669110871a5bb1e585c5b73c819da.camel@intel.com>
References: <20200630215601.28557-6-ville.syrjala@linux.intel.com>
In-Reply-To: <20200630215601.28557-6-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-ID: <41819F90B40BD44AAA5613EE44A60FB2@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [05/12] drm/i915: Add VBT AUX CH H and I
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

T24gV2VkLCAyMDIwLTA3LTAxIGF0IDAwOjU1ICswMzAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOg0K
PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPA0KPiB2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNv
bQ0KPiA+DQo+IA0KPiBBcyB3aXRoIGV2ZXJ5dGhpbmcgZWxzZSBWQlQgY2FuIG5vdyBzcGVjaWZ5
IEFVWCBDSCBIIG9yIEkuDQo+IA0KDQpSZXZpZXdlZC1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6
YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+DQoNCj4gU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOk
bMOkIDwNCj4gdmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20NCj4gPg0KPiAtLS0NCj4gIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5jICAgICB8IDYgKysrKysrDQo+
ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3ZidF9kZWZzLmggfCAyICsrDQo+
ICAyIGZpbGVzIGNoYW5nZWQsIDggaW5zZXJ0aW9ucygrKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5jIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9iaW9zLmMNCj4gaW5kZXggMmJmMGJjMGRlZWU4Li4wNWViODhl
ZTczZjggMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
Ymlvcy5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5j
DQo+IEBAIC0yNjQ5LDYgKzI2NDksMTIgQEAgZW51bSBhdXhfY2ggaW50ZWxfYmlvc19wb3J0X2F1
eF9jaChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsDQo+ICAJY2FzZSBEUF9BVVhf
RzoNCj4gIAkJYXV4X2NoID0gQVVYX0NIX0c7DQo+ICAJCWJyZWFrOw0KPiArCWNhc2UgRFBfQVVY
X0g6DQo+ICsJCWF1eF9jaCA9IEFVWF9DSF9IOw0KPiArCQlicmVhazsNCj4gKwljYXNlIERQX0FV
WF9JOg0KPiArCQlhdXhfY2ggPSBBVVhfQ0hfSTsNCj4gKwkJYnJlYWs7DQo+ICAJZGVmYXVsdDoN
Cj4gIAkJTUlTU0lOR19DQVNFKGluZm8tPmFsdGVybmF0ZV9hdXhfY2hhbm5lbCk7DQo+ICAJCWF1
eF9jaCA9IEFVWF9DSF9BOw0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF92YnRfZGVmcy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF92YnRfZGVmcy5oDQo+IGluZGV4IGU1MDJkNjUzMDBmYS4uYjVmN2E1MmY3NTFhIDEwMDY0NA0K
PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3ZidF9kZWZzLmgNCj4g
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92YnRfZGVmcy5oDQo+IEBA
IC0zMzQsNiArMzM0LDggQEAgZW51bSB2YnRfZ21idXNfZGRpIHsNCj4gICNkZWZpbmUgRFBfQVVY
X0UgMHg1MA0KPiAgI2RlZmluZSBEUF9BVVhfRiAweDYwDQo+ICAjZGVmaW5lIERQX0FVWF9HIDB4
NzANCj4gKyNkZWZpbmUgRFBfQVVYX0ggMHg4MA0KPiArI2RlZmluZSBEUF9BVVhfSSAweDkwDQo+
ICANCj4gICNkZWZpbmUgVkJUX0RQX01BWF9MSU5LX1JBVEVfSEJSMwkwDQo+ICAjZGVmaW5lIFZC
VF9EUF9NQVhfTElOS19SQVRFX0hCUjIJMQ0KPiANCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeAo=
