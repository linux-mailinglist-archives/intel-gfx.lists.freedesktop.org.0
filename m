Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9756D80184
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Aug 2019 22:01:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3F69F6E819;
	Fri,  2 Aug 2019 20:01:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9499D6E819
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Aug 2019 20:01:33 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Aug 2019 13:01:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,339,1559545200"; d="scan'208";a="167330421"
Received: from fmsmsx106.amr.corp.intel.com ([10.18.124.204])
 by orsmga008.jf.intel.com with ESMTP; 02 Aug 2019 13:01:32 -0700
Received: from fmsmsx162.amr.corp.intel.com (10.18.125.71) by
 FMSMSX106.amr.corp.intel.com (10.18.124.204) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 2 Aug 2019 13:01:32 -0700
Received: from fmsmsx116.amr.corp.intel.com ([169.254.2.137]) by
 fmsmsx162.amr.corp.intel.com ([169.254.5.91]) with mapi id 14.03.0439.000;
 Fri, 2 Aug 2019 13:01:32 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "De
 Marchi, Lucas" <lucas.demarchi@intel.com>
Thread-Topic: [PATCH] drm/i915/dmc: Load DMC on TGL
Thread-Index: AQHVSWGPkY5eEbHL1Uy2LHAjrIOpnqbovL2A
Date: Fri, 2 Aug 2019 20:01:32 +0000
Message-ID: <791ee0c9df99b0c5126bb532f92dd2b7cf5ae229.camel@intel.com>
References: <20190802183856.27280-1-lucas.demarchi@intel.com>
In-Reply-To: <20190802183856.27280-1-lucas.demarchi@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.9.51]
Content-ID: <E4B201DB4C221D4584BC30AEFB7619C3@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dmc: Load DMC on TGL
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

T24gRnJpLCAyMDE5LTA4LTAyIGF0IDExOjM4IC0wNzAwLCBMdWNhcyBEZSBNYXJjaGkgd3JvdGU6
DQo+IEZyb206IEFudXNoYSBTcml2YXRzYSA8YW51c2hhLnNyaXZhdHNhQGludGVsLmNvbT4NCj4g
DQo+IEFkZCBTdXBwb3J0IHRvIGxvYWQgRE1DIHYyLjAzIG9uIFRHTC4NCj4gDQo+IHYyOiBVc2Ug
dmVyc2lvbiAyLjAzIHRoYXQgaXMgYWxyZWFkeSBhdmFpbGFibGUgc2luY2UgdGhhdCB3b3JrcyB3
aXRoDQo+ICAgICBQU1IyDQoNClN0aWxsIG5vdCBhdmFpbGFibGUgb24gDQpodHRwczovL2dpdC5r
ZXJuZWwub3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dpdC9maXJtd2FyZS9saW51eC1maXJtd2Fy
ZS5naXQvdHJlZS9pOTE1DQoNCkJ1dCB0aGUgcGF0Y2ggbG9va3MgZ29vZA0KDQpSZXZpZXdlZC1i
eTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+DQoNCj4gDQo+
IFNpZ25lZC1vZmYtYnk6IEFudXNoYSBTcml2YXRzYSA8YW51c2hhLnNyaXZhdHNhQGludGVsLmNv
bT4NCj4gU2lnbmVkLW9mZi1ieTogTHVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRl
bC5jb20+DQo+IFJldmlld2VkLWJ5OiBNYXR0IEF0d29vZCA8bWF0dGhldy5zLmF0d29vZEBpbnRl
bC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfY3NyLmMgfCA3ICsr
KysrKysNCj4gIDEgZmlsZSBjaGFuZ2VkLCA3IGluc2VydGlvbnMoKykNCj4gDQo+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9jc3IuYw0KPiBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2ludGVsX2Nzci5jDQo+IGluZGV4IDZlZjc0NTMxNTg4YS4uODI3OWU3MmVkZjRjIDEw
MDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9jc3IuYw0KPiArKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9jc3IuYw0KPiBAQCAtMzksNiArMzksMTEgQEANCj4g
IA0KPiAgI2RlZmluZSBHRU4xMl9DU1JfTUFYX0ZXX1NJWkUJCUlDTF9DU1JfTUFYX0ZXX1NJWkUN
Cj4gIA0KPiArI2RlZmluZSBUR0xfQ1NSX1BBVEgJCQkiaTkxNS90Z2xfZG1jX3ZlcjJfMDMuYmlu
Ig0KPiArI2RlZmluZSBUR0xfQ1NSX1ZFUlNJT05fUkVRVUlSRUQJQ1NSX1ZFUlNJT04oMiwgMykN
Cj4gKyNkZWZpbmUgVEdMX0NTUl9NQVhfRldfU0laRQkJMHg2MDAwDQo+ICtNT0RVTEVfRklSTVdB
UkUoVEdMX0NTUl9QQVRIKTsNCj4gKw0KPiAgI2RlZmluZSBJQ0xfQ1NSX1BBVEgJCQkiaTkxNS9p
Y2xfZG1jX3ZlcjFfMDcuYmluIg0KPiAgI2RlZmluZSBJQ0xfQ1NSX1ZFUlNJT05fUkVRVUlSRUQJ
Q1NSX1ZFUlNJT04oMSwgNykNCj4gICNkZWZpbmUgSUNMX0NTUl9NQVhfRldfU0laRQkJMHg2MDAw
DQo+IEBAIC02NzQsNiArNjc5LDggQEAgdm9pZCBpbnRlbF9jc3JfdWNvZGVfaW5pdChzdHJ1Y3Qg
ZHJtX2k5MTVfcHJpdmF0ZQ0KPiAqZGV2X3ByaXYpDQo+ICAJaW50ZWxfY3NyX3J1bnRpbWVfcG1f
Z2V0KGRldl9wcml2KTsNCj4gIA0KPiAgCWlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDEyKSB7
DQo+ICsJCWNzci0+ZndfcGF0aCA9IFRHTF9DU1JfUEFUSDsNCj4gKwkJY3NyLT5yZXF1aXJlZF92
ZXJzaW9uID0gVEdMX0NTUl9WRVJTSU9OX1JFUVVJUkVEOw0KPiAgCQkvKiBBbGxvdyB0byBsb2Fk
IGZ3IHZpYSBwYXJhbWV0ZXIgdXNpbmcgdGhlIGxhc3Qga25vd24NCj4gc2l6ZSAqLw0KPiAgCQlj
c3ItPm1heF9md19zaXplID0gR0VOMTJfQ1NSX01BWF9GV19TSVpFOw0KPiAgCX0gZWxzZSBpZiAo
SVNfR0VOKGRldl9wcml2LCAxMSkpIHsNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeA==
