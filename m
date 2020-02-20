Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D4E6165A45
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Feb 2020 10:36:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9CA4B6E89B;
	Thu, 20 Feb 2020 09:36:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DCCF96E89B
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Feb 2020 09:36:10 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Feb 2020 01:36:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,463,1574150400"; d="scan'208";a="349138086"
Received: from fmsmsx106.amr.corp.intel.com ([10.18.124.204])
 by fmsmga001.fm.intel.com with ESMTP; 20 Feb 2020 01:36:09 -0800
Received: from fmsmsx162.amr.corp.intel.com (10.18.125.71) by
 FMSMSX106.amr.corp.intel.com (10.18.124.204) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 20 Feb 2020 01:36:09 -0800
Received: from bgsmsx101.gar.corp.intel.com (10.223.4.170) by
 fmsmsx162.amr.corp.intel.com (10.18.125.71) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 20 Feb 2020 01:36:08 -0800
Received: from bgsmsx104.gar.corp.intel.com ([169.254.5.165]) by
 BGSMSX101.gar.corp.intel.com ([169.254.1.155]) with mapi id 14.03.0439.000;
 Thu, 20 Feb 2020 15:06:05 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Navare, Manasi D" <manasi.d.navare@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [CI v3 1/3] drm/i915: Introduce
 encoder->compute_config_late()
Thread-Index: AQHV4yuQ3udfEVjIe068TdQsID7eFKgj227A
Date: Thu, 20 Feb 2020 09:36:05 +0000
Message-ID: <E7C9878FBA1C6D42A1CA3F62AEB6945F823EB48C@BGSMSX104.gar.corp.intel.com>
References: <20200214114126.13192-1-manasi.d.navare@intel.com>
In-Reply-To: <20200214114126.13192-1-manasi.d.navare@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiMjA4MzU3YjktMmJkZS00ZGY2LWIzOTQtMjcxZmFiNTBjNmE3IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoibHdCVHg0Q3hMRGozMnNua1NzUG4zTDh0SzdmdHY0UjVYbmZ1dWdvVHJ1c2xkTFhtYlJWNFlTNXBGM2V0d001ZSJ9
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.223.10.10]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [CI v3 1/3] drm/i915: Introduce
 encoder->compute_config_late()
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtZ2Z4IDxpbnRl
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBNYW5hc2kN
Cj4gTmF2YXJlDQo+IFNlbnQ6IEZyaWRheSwgRmVicnVhcnkgMTQsIDIwMjAgNToxMSBQTQ0KPiBU
bzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBTdWJqZWN0OiBbSW50ZWwtZ2Z4
XSBbQ0kgdjMgMS8zXSBkcm0vaTkxNTogSW50cm9kdWNlIGVuY29kZXItPmNvbXB1dGVfY29uZmln
X2xhdGUoKQ0KPiANCj4gRnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4
LmludGVsLmNvbT4NCj4gDQo+IEFkZCBhbiBvcHRpb25hbCBzZWNvbmRhcnkgZW5jb2RlciBzdGF0
ZSBjb21wdXRlIGhvb2suIFRoaXMgZ2V0cyBjYWxsZWQgYWZ0ZXIgdGhlDQo+IG5vcm1hayAuY29t
cHV0ZV9jb25maWcoKSBoYXMgYmVlbiBjYWxsZWQgZm9yIGFsbCB0aGUgZW5jb2RlcnMgaW4gdGhl
IHN0YXRlLiBUaHVzIGluDQo+IHRoZSBuZXcgaG9vayB3ZSBjYW4gcmVseSBvbiBhbGwgZGVyaXZl
ZCBzdGF0ZSBwb3B1bGF0ZWQgYnkgLmNvbXB1dGVfY29uZmlnKCkgdG8gYmUNCj4gYWxyZWFkeSBz
ZXQgdXAuIFNob3VsZCBiZSB1c2VmdWwgZm9yIE1TVCBhbmQgcG9ydCBzeW5jIG1hc3Rlci9zbGF2
ZSB0cmFuc2NvZGVyDQo+IHNlbGVjdGlvbi4NCg0KUHVzaGVkIHRoZSBzZXJpZXMgdG8gZGlucS4g
VGhhbmtzIGZvciB0aGUgcGF0Y2hlcyBhbmQgcmV2aWV3Lg0KDQo+IFNpZ25lZC1vZmYtYnk6IFZp
bGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+IFJldmlld2Vk
LWJ5OiBNYW5hc2kgTmF2YXJlIDxtYW5hc2kuZC5uYXZhcmVAaW50ZWwuY29tPg0KPiAtLS0NCj4g
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jICB8IDM5ICsrKysr
KysrKysrKysrKysrKysNCj4gIC4uLi9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlw
ZXMuaCAgICB8ICAzICsrDQo+ICAyIGZpbGVzIGNoYW5nZWQsIDQyIGluc2VydGlvbnMoKykNCj4g
DQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXkuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+
IGluZGV4IGUwOWQzYzkzYzUyYi4uY2U3MjU1MWJhMTZhIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0KPiArKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0KPiBAQCAtMTM1NDksNiArMTM1NDks
MzUgQEAgaW50ZWxfbW9kZXNldF9waXBlX2NvbmZpZyhzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZQ0K
PiAqcGlwZV9jb25maWcpDQo+ICAJcmV0dXJuIDA7DQo+ICB9DQo+IA0KPiArc3RhdGljIGludA0K
PiAraW50ZWxfbW9kZXNldF9waXBlX2NvbmZpZ19sYXRlKHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRl
ICpjcnRjX3N0YXRlKSB7DQo+ICsJc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUgPQ0K
PiArCQl0b19pbnRlbF9hdG9taWNfc3RhdGUoY3J0Y19zdGF0ZS0+dWFwaS5zdGF0ZSk7DQo+ICsJ
c3RydWN0IGludGVsX2NydGMgKmNydGMgPSB0b19pbnRlbF9jcnRjKGNydGNfc3RhdGUtPnVhcGku
Y3J0Yyk7DQo+ICsJc3RydWN0IGRybV9jb25uZWN0b3Jfc3RhdGUgKmNvbm5fc3RhdGU7DQo+ICsJ
c3RydWN0IGRybV9jb25uZWN0b3IgKmNvbm5lY3RvcjsNCj4gKwlpbnQgaTsNCj4gKw0KPiArCWZv
cl9lYWNoX25ld19jb25uZWN0b3JfaW5fc3RhdGUoJnN0YXRlLT5iYXNlLCBjb25uZWN0b3IsDQo+
ICsJCQkJCWNvbm5fc3RhdGUsIGkpIHsNCj4gKwkJc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29k
ZXIgPQ0KPiArCQkJdG9faW50ZWxfZW5jb2Rlcihjb25uX3N0YXRlLT5iZXN0X2VuY29kZXIpOw0K
PiArCQlpbnQgcmV0Ow0KPiArDQo+ICsJCWlmIChjb25uX3N0YXRlLT5jcnRjICE9ICZjcnRjLT5i
YXNlIHx8DQo+ICsJCSAgICAhZW5jb2Rlci0+Y29tcHV0ZV9jb25maWdfbGF0ZSkNCj4gKwkJCWNv
bnRpbnVlOw0KPiArDQo+ICsJCXJldCA9IGVuY29kZXItPmNvbXB1dGVfY29uZmlnX2xhdGUoZW5j
b2RlciwgY3J0Y19zdGF0ZSwNCj4gKwkJCQkJCSAgIGNvbm5fc3RhdGUpOw0KPiArCQlpZiAocmV0
KQ0KPiArCQkJcmV0dXJuIHJldDsNCj4gKwl9DQo+ICsNCj4gKwlyZXR1cm4gMDsNCj4gK30NCj4g
Kw0KPiAgYm9vbCBpbnRlbF9mdXp6eV9jbG9ja19jaGVjayhpbnQgY2xvY2sxLCBpbnQgY2xvY2sy
KSAgew0KPiAgCWludCBkaWZmOw0KPiBAQCAtMTQ5NTQsNiArMTQ5ODMsMTYgQEAgc3RhdGljIGlu
dCBpbnRlbF9hdG9taWNfY2hlY2soc3RydWN0IGRybV9kZXZpY2UgKmRldiwNCj4gIAkJcmV0ID0g
aW50ZWxfbW9kZXNldF9waXBlX2NvbmZpZyhuZXdfY3J0Y19zdGF0ZSk7DQo+ICAJCWlmIChyZXQp
DQo+ICAJCQlnb3RvIGZhaWw7DQo+ICsJfQ0KPiArDQo+ICsJZm9yX2VhY2hfb2xkbmV3X2ludGVs
X2NydGNfaW5fc3RhdGUoc3RhdGUsIGNydGMsIG9sZF9jcnRjX3N0YXRlLA0KPiArCQkJCQkgICAg
bmV3X2NydGNfc3RhdGUsIGkpIHsNCj4gKwkJaWYgKCFuZWVkc19tb2Rlc2V0KG5ld19jcnRjX3N0
YXRlKSkNCj4gKwkJCWNvbnRpbnVlOw0KPiArDQo+ICsJCXJldCA9IGludGVsX21vZGVzZXRfcGlw
ZV9jb25maWdfbGF0ZShuZXdfY3J0Y19zdGF0ZSk7DQo+ICsJCWlmIChyZXQpDQo+ICsJCQlnb3Rv
IGZhaWw7DQo+IA0KPiAgCQlpbnRlbF9jcnRjX2NoZWNrX2Zhc3RzZXQob2xkX2NydGNfc3RhdGUs
IG5ld19jcnRjX3N0YXRlKTsNCj4gIAl9DQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaA0KPiBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oDQo+IGluZGV4IDI4M2M2MjJmOGJhMS4u
MGQ4YTY0MzA1NDY0IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2Rpc3BsYXlfdHlwZXMuaA0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaA0KPiBAQCAtMTQxLDYgKzE0MSw5IEBAIHN0cnVjdCBp
bnRlbF9lbmNvZGVyIHsNCj4gIAlpbnQgKCpjb21wdXRlX2NvbmZpZykoc3RydWN0IGludGVsX2Vu
Y29kZXIgKiwNCj4gIAkJCSAgICAgIHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICosDQo+ICAJCQkg
ICAgICBzdHJ1Y3QgZHJtX2Nvbm5lY3Rvcl9zdGF0ZSAqKTsNCj4gKwlpbnQgKCpjb21wdXRlX2Nv
bmZpZ19sYXRlKShzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqLA0KPiArCQkJCSAgIHN0cnVjdCBpbnRl
bF9jcnRjX3N0YXRlICosDQo+ICsJCQkJICAgc3RydWN0IGRybV9jb25uZWN0b3Jfc3RhdGUgKik7
DQo+ICAJdm9pZCAoKnVwZGF0ZV9wcmVwYXJlKShzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICos
DQo+ICAJCQkgICAgICAgc3RydWN0IGludGVsX2VuY29kZXIgKiwNCj4gIAkJCSAgICAgICBzdHJ1
Y3QgaW50ZWxfY3J0YyAqKTsNCj4gLS0NCj4gMi4xOS4xDQo+IA0KPiBfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KPiBJbnRlbC1nZnggbWFpbGluZyBsaXN0
DQo+IEludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngNCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
