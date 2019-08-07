Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BB98283E2A
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Aug 2019 02:11:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E1966E583;
	Wed,  7 Aug 2019 00:11:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A05DC6E583
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Aug 2019 00:11:03 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Aug 2019 17:11:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,353,1559545200"; d="scan'208";a="179315567"
Received: from orsmsx108.amr.corp.intel.com ([10.22.240.6])
 by orsmga006.jf.intel.com with ESMTP; 06 Aug 2019 17:11:02 -0700
Received: from orsmsx126.amr.corp.intel.com (10.22.240.126) by
 ORSMSX108.amr.corp.intel.com (10.22.240.6) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 6 Aug 2019 17:11:01 -0700
Received: from orsmsx110.amr.corp.intel.com ([169.254.10.211]) by
 ORSMSX126.amr.corp.intel.com ([169.254.4.77]) with mapi id 14.03.0439.000;
 Tue, 6 Aug 2019 17:11:01 -0700
From: "Tolakanahalli Pradeep, Madhumitha"
 <madhumitha.tolakanahalli.pradeep@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Navare, Manasi D" <manasi.d.navare@intel.com>
Thread-Topic: [Intel-gfx] [PATCH v3 1/8] drm/i915/display: Rename
 update_crtcs() to commit_modeset_enables()
Thread-Index: AQHVKtDxCtp5d94rFUKwtf+Gp7VcH6bviQiA
Date: Wed, 7 Aug 2019 00:11:01 +0000
Message-ID: <e9a03e8b929247808035741f4b9b0e9cf6b0633c.camel@intel.com>
References: <20190624210850.17223-1-manasi.d.navare@intel.com>
 <20190624210850.17223-2-manasi.d.navare@intel.com>
In-Reply-To: <20190624210850.17223-2-manasi.d.navare@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.7.197.51]
Content-ID: <E8A954DF6839D64198520948DE568298@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v3 1/8] drm/i915/display: Rename
 update_crtcs() to commit_modeset_enables()
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

DQpPbiBNb24sIDIwMTktMDYtMjQgYXQgMTQ6MDggLTA3MDAsIE1hbmFzaSBOYXZhcmUgd3JvdGU6
DQo+IFRoaXMgcGF0Y2ggaGFzIG5vIGZ1bmN0aW9uYWwgY2hhbmdlcy4gVGhpcyBqdXN0IHJlbmFt
ZXMgdGhlDQo+IHVwZGF0ZV9jcnRjcygpDQo+IGhvb2tzIHRvIGNvbW1pdF9tb2Rlc2V0X2VuYWJs
ZXMoKSB0byBtYXRjaCB0aGUgZHJtX2F0b21pYyBoZWxwZXINCj4gbmFtaW5nDQo+IGNvbnZlbnRp
b25zLg0KPiANCj4gU3VnZ2VzdGVkLWJ5OiBEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGlu
dGVsLmNvbT4NCj4gQ2M6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRl
bC5jb20+DQo+IENjOiBNYWFydGVuIExhbmtob3JzdCA8bWFhcnRlbi5sYW5raG9yc3RAbGludXgu
aW50ZWwuY29tPg0KPiBDYzogTWF0dCBSb3BlciA8bWF0dGhldy5kLnJvcGVyQGludGVsLmNvbT4N
Cj4gQ2M6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+DQo+IFNpZ25lZC1vZmYt
Ynk6IE1hbmFzaSBOYXZhcmUgPG1hbmFzaS5kLm5hdmFyZUBpbnRlbC5jb20+DQoNCg0KTG9va3Mg
Z29vZCB0byBtZS4NCg0KUmV2aWV3ZWQtYnk6IE1hZGh1bWl0aGEgVG9sYWthbmFoYWxsaSBQcmFk
ZWVwIDwNCm1hZGh1bWl0aGEudG9sYWthbmFoYWxsaS5wcmFkZWVwQGludGVsLmNvbT4NCg0KTWFk
aHVtaXRoYQ0KDQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
aXNwbGF5LmMgfCAxMCArKysrKy0tLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Ry
di5oICAgICAgICAgICAgICB8ICAyICstDQo+ICAyIGZpbGVzIGNoYW5nZWQsIDYgaW5zZXJ0aW9u
cygrKSwgNiBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+IGluZGV4IDczZmUxYmNmY2Q5OS4uNzFlODZlMmYwZjkw
IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXkuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXku
Yw0KPiBAQCAtMTM2MTMsNyArMTM2MTMsNyBAQCBzdGF0aWMgdm9pZCBpbnRlbF91cGRhdGVfY3J0
YyhzdHJ1Y3QgZHJtX2NydGMNCj4gKmNydGMsDQo+ICAJaW50ZWxfZmluaXNoX2NydGNfY29tbWl0
KHRvX2ludGVsX2F0b21pY19zdGF0ZShzdGF0ZSksDQo+IGludGVsX2NydGMpOw0KPiAgfQ0KPiAg
DQo+IC1zdGF0aWMgdm9pZCBpbnRlbF91cGRhdGVfY3J0Y3Moc3RydWN0IGRybV9hdG9taWNfc3Rh
dGUgKnN0YXRlKQ0KPiArc3RhdGljIHZvaWQgaW50ZWxfY29tbWl0X21vZGVzZXRfZW5hYmxlcyhz
dHJ1Y3QgZHJtX2F0b21pY19zdGF0ZQ0KPiAqc3RhdGUpDQo+ICB7DQo+ICAJc3RydWN0IGRybV9j
cnRjICpjcnRjOw0KPiAgCXN0cnVjdCBkcm1fY3J0Y19zdGF0ZSAqb2xkX2NydGNfc3RhdGUsICpu
ZXdfY3J0Y19zdGF0ZTsNCj4gQEAgLTEzNjI4LDcgKzEzNjI4LDcgQEAgc3RhdGljIHZvaWQgaW50
ZWxfdXBkYXRlX2NydGNzKHN0cnVjdA0KPiBkcm1fYXRvbWljX3N0YXRlICpzdGF0ZSkNCj4gIAl9
DQo+ICB9DQo+ICANCj4gLXN0YXRpYyB2b2lkIHNrbF91cGRhdGVfY3J0Y3Moc3RydWN0IGRybV9h
dG9taWNfc3RhdGUgKnN0YXRlKQ0KPiArc3RhdGljIHZvaWQgc2tsX2NvbW1pdF9tb2Rlc2V0X2Vu
YWJsZXMoc3RydWN0IGRybV9hdG9taWNfc3RhdGUNCj4gKnN0YXRlKQ0KPiAgew0KPiAgCXN0cnVj
dCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoc3RhdGUtPmRldik7DQo+ICAJ
c3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqaW50ZWxfc3RhdGUgPQ0KPiB0b19pbnRlbF9hdG9t
aWNfc3RhdGUoc3RhdGUpOw0KPiBAQCAtMTM4NjgsNyArMTM4NjgsNyBAQCBzdGF0aWMgdm9pZCBp
bnRlbF9hdG9taWNfY29tbWl0X3RhaWwoc3RydWN0DQo+IGRybV9hdG9taWNfc3RhdGUgKnN0YXRl
KQ0KPiAgCX0NCj4gIA0KPiAgCS8qIE5vdyBlbmFibGUgdGhlIGNsb2NrcywgcGxhbmUsIHBpcGUs
IGFuZCBjb25uZWN0b3JzIHRoYXQgd2UNCj4gc2V0IHVwLiAqLw0KPiAtCWRldl9wcml2LT5kaXNw
bGF5LnVwZGF0ZV9jcnRjcyhzdGF0ZSk7DQo+ICsJZGV2X3ByaXYtPmRpc3BsYXkuY29tbWl0X21v
ZGVzZXRfZW5hYmxlcyhzdGF0ZSk7DQo+ICANCj4gIAlpZiAoaW50ZWxfc3RhdGUtPm1vZGVzZXQp
DQo+ICAJCWludGVsX3NldF9jZGNsa19wb3N0X3BsYW5lX3VwZGF0ZShkZXZfcHJpdiwNCj4gQEAg
LTE1NzE5LDkgKzE1NzE5LDkgQEAgdm9pZCBpbnRlbF9pbml0X2Rpc3BsYXlfaG9va3Moc3RydWN0
DQo+IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQ0KPiAgCX0NCj4gIA0KPiAgCWlmIChJTlRF
TF9HRU4oZGV2X3ByaXYpID49IDkpDQo+IC0JCWRldl9wcml2LT5kaXNwbGF5LnVwZGF0ZV9jcnRj
cyA9IHNrbF91cGRhdGVfY3J0Y3M7DQo+ICsJCWRldl9wcml2LT5kaXNwbGF5LmNvbW1pdF9tb2Rl
c2V0X2VuYWJsZXMgPQ0KPiBza2xfY29tbWl0X21vZGVzZXRfZW5hYmxlczsNCj4gIAllbHNlDQo+
IC0JCWRldl9wcml2LT5kaXNwbGF5LnVwZGF0ZV9jcnRjcyA9IGludGVsX3VwZGF0ZV9jcnRjczsN
Cj4gKwkJZGV2X3ByaXYtPmRpc3BsYXkuY29tbWl0X21vZGVzZXRfZW5hYmxlcyA9DQo+IGludGVs
X2NvbW1pdF9tb2Rlc2V0X2VuYWJsZXM7DQo+ICB9DQo+ICANCj4gIHN0YXRpYyBpOTE1X3JlZ190
IGk5MTVfdmdhY250cmxfcmVnKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlDQo+ICpkZXZfcHJpdikN
Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgNCj4gYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oDQo+IGluZGV4IDYyZTdjNWU4YWVlNS4uMDc1ZDdl
YjNjM2YyIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oDQo+
ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgNCj4gQEAgLTMxMCw3ICszMTAs
NyBAQCBzdHJ1Y3QgZHJtX2k5MTVfZGlzcGxheV9mdW5jcyB7DQo+ICAJCQkgICAgc3RydWN0IGRy
bV9hdG9taWNfc3RhdGUgKm9sZF9zdGF0ZSk7DQo+ICAJdm9pZCAoKmNydGNfZGlzYWJsZSkoc3Ry
dWN0IGludGVsX2NydGNfc3RhdGUgKm9sZF9jcnRjX3N0YXRlLA0KPiAgCQkJICAgICBzdHJ1Y3Qg
ZHJtX2F0b21pY19zdGF0ZSAqb2xkX3N0YXRlKTsNCj4gLQl2b2lkICgqdXBkYXRlX2NydGNzKShz
dHJ1Y3QgZHJtX2F0b21pY19zdGF0ZSAqc3RhdGUpOw0KPiArCXZvaWQgKCpjb21taXRfbW9kZXNl
dF9lbmFibGVzKShzdHJ1Y3QgZHJtX2F0b21pY19zdGF0ZSAqc3RhdGUpOw0KPiAgCXZvaWQgKCph
dWRpb19jb2RlY19lbmFibGUpKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyLA0KPiAgCQkJ
CSAgIGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlDQo+ICpjcnRjX3N0YXRlLA0KPiAgCQkJ
CSAgIGNvbnN0IHN0cnVjdCBkcm1fY29ubmVjdG9yX3N0YXRlDQo+ICpjb25uX3N0YXRlKTsNCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
