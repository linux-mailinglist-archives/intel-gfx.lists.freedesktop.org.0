Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 25CD516FDC7
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Feb 2020 12:32:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F5B26E504;
	Wed, 26 Feb 2020 11:32:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3495D6E504
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Feb 2020 11:32:28 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Feb 2020 03:32:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,487,1574150400"; d="scan'208";a="436600058"
Received: from irsmsx108.ger.corp.intel.com ([163.33.3.3])
 by fmsmga005.fm.intel.com with ESMTP; 26 Feb 2020 03:32:26 -0800
Received: from irsmsx603.ger.corp.intel.com (163.33.146.9) by
 IRSMSX108.ger.corp.intel.com (163.33.3.3) with Microsoft SMTP Server (TLS) id
 14.3.439.0; Wed, 26 Feb 2020 11:32:25 +0000
Received: from irsmsx604.ger.corp.intel.com (163.33.146.137) by
 irsmsx603.ger.corp.intel.com (163.33.146.9) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 26 Feb 2020 11:32:25 +0000
Received: from irsmsx604.ger.corp.intel.com ([163.33.146.137]) by
 IRSMSX604.ger.corp.intel.com ([163.33.146.137]) with mapi id 15.01.1713.004;
 Wed, 26 Feb 2020 11:32:25 +0000
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v2 11/20] drm/i915: Clean up dbuf debugs during
 .atomic_check()
Thread-Index: AQHV6/61y1tqQS4KaUauXVCl2rHV66gtWAGA
Date: Wed, 26 Feb 2020 11:32:25 +0000
Message-ID: <51062df9bdf7f46692cfb0b3652df3c810cec7b5.camel@intel.com>
References: <20200225171125.28885-1-ville.syrjala@linux.intel.com>
 <20200225171125.28885-12-ville.syrjala@linux.intel.com>
In-Reply-To: <20200225171125.28885-12-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.237.72.89]
Content-ID: <F45DBBA9A9475143A4634F8C4E834565@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2 11/20] drm/i915: Clean up dbuf debugs
 during .atomic_check()
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

T24gVHVlLCAyMDIwLTAyLTI1IGF0IDE5OjExICswMjAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOg0K
PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiANCj4gQ29tYmluZSB0aGUgdHdvIHBlci1waXBlIGRidWYgZGVidWdzIGludG8gb25lLCBhbmQg
dXNlIHRoZSBjYW5vbmljYWwNCj4gW0NSVEM6JWQ6JXNdIHN0eWxlIHRvIGlkZW50aWZ5IHRoZSBj
cnRjLiBBbHNvIHVzZSB0aGUgc2FtZSBzdHlsZSBhcw0KPiB0aGUgcGxhbmUgY29kZSB1c2VzIGZv
ciB0aGUgZGRiIHN0YXJ0L2VuZCwgYW5kIHByZWZpeCBiaXRtYXNrDQo+IHByb3Blcmx5DQo+IHdp
dGggMHggdG8gbWFrZSBpdCBjbGVhciB0aGV5IGFyZSBpbiBmYWN0IGJpdG1hc2tzLg0KPiANCj4g
VGhlICJob3cgbWFueSB0b3RhbCBzbGljZXMgd2UgYXJlIGdvaW5nIHRvIHVzZSIgZGVidWcgd2Ug
bW92ZSB0bw0KPiBvdXRzaWRlIHRoZSBjcnRjIGxvb3Agc28gaXQgZ2V0cyBwcmludGVkIG9ubHkg
b25jZSBhdCB0aGUgZW5kLg0KDQpSZXZpZXdlZC1ieTogU3RhbmlzbGF2IExpc292c2tpeSA8c3Rh
bmlzbGF2Lmxpc292c2tpeUBpbnRlbC5jb20+DQoNCj4gDQo+IENjOiBTdGFuaXNsYXYgTGlzb3Zz
a2l5IDxzdGFuaXNsYXYubGlzb3Zza2l5QGludGVsLmNvbT4NCj4gU2lnbmVkLW9mZi1ieTogVmls
bGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gLS0tDQo+ICBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jIHwgMjYgKysrKysrKysrKysrKysrKysrKy0t
LS0tLS0NCj4gIDEgZmlsZSBjaGFuZ2VkLCAxOSBpbnNlcnRpb25zKCspLCA3IGRlbGV0aW9ucygt
KQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmMNCj4g
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jDQo+IGluZGV4IGRlMjgyMmU1YzYyYy4u
ZDJlZGZiODIwZGQ5IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9w
bS5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmMNCj4gQEAgLTM5MTAs
MTAgKzM5MTAsNiBAQCBza2xfZGRiX2dldF9waXBlX2FsbG9jYXRpb25fbGltaXRzKHN0cnVjdA0K
PiBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwNCj4gIAkgKi8NCj4gIAlkYnVmX3NsaWNlX21h
c2sgPSBza2xfY29tcHV0ZV9kYnVmX3NsaWNlcyhjcnRjX3N0YXRlLA0KPiBhY3RpdmVfcGlwZXMp
Ow0KPiAgDQo+IC0JRFJNX0RFQlVHX0tNUygiREJ1ZiBzbGljZSBtYXNrICV4IHBpcGUgJWMgYWN0
aXZlIHBpcGVzICV4XG4iLA0KPiAtCQkgICAgICBkYnVmX3NsaWNlX21hc2ssDQo+IC0JCSAgICAg
IHBpcGVfbmFtZShmb3JfcGlwZSksIGFjdGl2ZV9waXBlcyk7DQo+IC0NCj4gIAkvKg0KPiAgCSAq
IEZpZ3VyZSBvdXQgYXQgd2hpY2ggREJ1ZiBzbGljZSB3ZSBzdGFydCwgaS5lIGlmIHdlIHN0YXJ0
IGF0DQo+IERidWYgUzINCj4gIAkgKiBhbmQgc2xpY2Ugc2l6ZSBpcyAxMDI0LCB0aGUgb2Zmc2V0
IHdvdWxkIGJlIDEwMjQNCj4gQEAgLTM5OTYsOCArMzk5MiwxMCBAQCBza2xfZGRiX2dldF9waXBl
X2FsbG9jYXRpb25fbGltaXRzKHN0cnVjdA0KPiBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwN
Cj4gIAlhbGxvYy0+c3RhcnQgPSBvZmZzZXQgKyBzdGFydDsNCj4gIAlhbGxvYy0+ZW5kID0gb2Zm
c2V0ICsgZW5kOw0KPiAgDQo+IC0JRFJNX0RFQlVHX0tNUygiUGlwZSAlZCBkZGIgJWQtJWRcbiIs
IGZvcl9waXBlLA0KPiAtCQkgICAgICBhbGxvYy0+c3RhcnQsIGFsbG9jLT5lbmQpOw0KPiArCWRy
bV9kYmdfa21zKCZkZXZfcHJpdi0+ZHJtLA0KPiArCQkgICAgIltDUlRDOiVkOiVzXSBkYnVmIHNs
aWNlcyAweCV4LCBkZGIgKCVkIC0gJWQpLA0KPiBhY3RpdmUgcGlwZXMgMHgleFxuIiwNCj4gKwkJ
ICAgIGZvcl9jcnRjLT5iYXNlLmlkLCBmb3JfY3J0Yy0+bmFtZSwNCj4gKwkJICAgIGRidWZfc2xp
Y2VfbWFzaywgYWxsb2MtPnN0YXJ0LCBhbGxvYy0+ZW5kLA0KPiBhY3RpdmVfcGlwZXMpOw0KPiAg
DQo+ICAJcmV0dXJuIDA7DQo+ICB9DQo+IEBAIC01NDU3LDcgKzU0NTUsMTAgQEAgc2tsX2RkYl9h
ZGRfYWZmZWN0ZWRfcGxhbmVzKGNvbnN0IHN0cnVjdA0KPiBpbnRlbF9jcnRjX3N0YXRlICpvbGRf
Y3J0Y19zdGF0ZSwNCj4gIHN0YXRpYyBpbnQNCj4gIHNrbF9jb21wdXRlX2RkYihzdHJ1Y3QgaW50
ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSkNCj4gIHsNCj4gLQlzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0
ZSAqb2xkX2NydGNfc3RhdGU7DQo+ICsJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2
ID0gdG9faTkxNShzdGF0ZS0+YmFzZS5kZXYpOw0KPiArCWNvbnN0IHN0cnVjdCBpbnRlbF9kYnVm
X3N0YXRlICpvbGRfZGJ1Zl9zdGF0ZTsNCj4gKwljb25zdCBzdHJ1Y3QgaW50ZWxfZGJ1Zl9zdGF0
ZSAqbmV3X2RidWZfc3RhdGU7DQo+ICsJY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKm9s
ZF9jcnRjX3N0YXRlOw0KPiAgCXN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpuZXdfY3J0Y19zdGF0
ZTsNCj4gIAlzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YzsNCj4gIAlpbnQgcmV0LCBpOw0KPiBAQCAt
NTQ3NCw2ICs1NDc1LDE3IEBAIHNrbF9jb21wdXRlX2RkYihzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0
YXRlDQo+ICpzdGF0ZSkNCj4gIAkJCXJldHVybiByZXQ7DQo+ICAJfQ0KPiAgDQo+ICsJb2xkX2Ri
dWZfc3RhdGUgPSBpbnRlbF9hdG9taWNfZ2V0X29sZF9kYnVmX3N0YXRlKHN0YXRlKTsNCj4gKwlu
ZXdfZGJ1Zl9zdGF0ZSA9IGludGVsX2F0b21pY19nZXRfbmV3X2RidWZfc3RhdGUoc3RhdGUpOw0K
PiArDQo+ICsJaWYgKG5ld19kYnVmX3N0YXRlICYmDQo+ICsJICAgIG5ld19kYnVmX3N0YXRlLT5l
bmFibGVkX3NsaWNlcyAhPSBvbGRfZGJ1Zl9zdGF0ZS0NCj4gPmVuYWJsZWRfc2xpY2VzKQ0KPiAr
CQlkcm1fZGJnX2ttcygmZGV2X3ByaXYtPmRybSwNCj4gKwkJCSAgICAiRW5hYmxlZCBkYnVmIHNs
aWNlcyAweCV4IC0+IDB4JXggKG91dCBvZg0KPiAlZCBkYnVmIHNsaWNlcylcbiIsDQo+ICsJCQkg
ICAgb2xkX2RidWZfc3RhdGUtPmVuYWJsZWRfc2xpY2VzLA0KPiArCQkJICAgIG5ld19kYnVmX3N0
YXRlLT5lbmFibGVkX3NsaWNlcywNCj4gKwkJCSAgICBJTlRFTF9JTkZPKGRldl9wcml2KS0NCj4g
Pm51bV9zdXBwb3J0ZWRfZGJ1Zl9zbGljZXMpOw0KPiArDQo+ICAJcmV0dXJuIDA7DQo+ICB9DQo+
ICANCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
