Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6479B15217A
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Feb 2020 21:30:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DDAB06E8EA;
	Tue,  4 Feb 2020 20:30:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7A9D36E8EA
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Feb 2020 20:30:42 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Feb 2020 12:30:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,403,1574150400"; d="scan'208";a="378532667"
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
 by orsmga004.jf.intel.com with ESMTP; 04 Feb 2020 12:30:41 -0800
Received: from fmsmsx114.amr.corp.intel.com (10.18.116.8) by
 FMSMSX103.amr.corp.intel.com (10.18.124.201) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 4 Feb 2020 12:30:40 -0800
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.3]) by
 FMSMSX114.amr.corp.intel.com ([169.254.6.143]) with mapi id 14.03.0439.000;
 Tue, 4 Feb 2020 12:30:40 -0800
From: "Souza, Jose" <jose.souza@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Thread-Topic: [PATCH] drm/i915: Fix the docs for
 intel_set_cdclk_post_plane_update()
Thread-Index: AQHV23KGh7rqXAp0MESLE+xGu7dkk6gL3h+AgAAj0ACAAAE2AA==
Date: Tue, 4 Feb 2020 20:30:40 +0000
Message-ID: <efdd2dcb530fd612a5393af92c4f7b1124d656ce.camel@intel.com>
References: <20200204154803.25403-1-ville.syrjala@linux.intel.com>
 <b587253bd7d48edbce7b678a0d7fbf5958f2284a.camel@intel.com>
 <20200204202620.GE13686@intel.com>
In-Reply-To: <20200204202620.GE13686@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.12.237]
Content-ID: <E4E7E775BCD7ED418ED9B7374E37A865@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix the docs for
 intel_set_cdclk_post_plane_update()
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCAyMDIwLTAyLTA0IGF0IDIyOjI2ICswMjAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
DQo+IE9uIFR1ZSwgRmViIDA0LCAyMDIwIGF0IDA2OjE4OjA5UE0gKzAwMDAsIFNvdXphLCBKb3Nl
IHdyb3RlOg0KPiA+IE9uIFR1ZSwgMjAyMC0wMi0wNCBhdCAxNzo0OCArMDIwMCwgVmlsbGUgU3ly
amFsYSB3cm90ZToNCj4gPiA+IEZyb206IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBs
aW51eC5pbnRlbC5jb20+DQo+ID4gPiANCj4gPiA+IHMvYmVmb3JlL2FmdGVyLyBhZ2FpbiBhZnRl
ciBhY2NpZGVudGFsbHkgY2hhbmdpbmcgaXQgdGhlDQo+ID4gPiBvdGhlciB3YXkgaW4gY29tbWl0
IDU2MDRlOWNlYWVkNSAoImRybS9pOTE1OiBTaW1wbGlmeQ0KPiA+ID4gaW50ZWxfc2V0X2NkY2xr
X3twcmUscG9zdH1fcGxhbmVfdXBkYXRlKCkgY2FsbGluZyBjb252ZW50aW9uIikNCj4gPiA+IA0K
PiA+ID4gQ2M6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPg0K
PiA+ID4gU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4
LmludGVsLmNvbT4NCj4gPiA+IC0tLQ0KPiA+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfY2RjbGsuYyB8IDIgKy0NCj4gPiA+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRp
b24oKyksIDEgZGVsZXRpb24oLSkNCj4gPiA+IA0KPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY2RjbGsuYw0KPiA+ID4gYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2NkY2xrLmMNCj4gPiA+IGluZGV4IDcxNTRhMjI4ODMxMC4u
M2FkNWYzNjQ0N2U5IDEwMDY0NA0KPiA+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9jZGNsay5jDQo+ID4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2NkY2xrLmMNCj4gPiA+IEBAIC0xODk1LDcgKzE4OTUsNyBAQCBpbnRlbF9zZXRf
Y2RjbGtfcHJlX3BsYW5lX3VwZGF0ZShzdHJ1Y3QNCj4gPiA+IGludGVsX2F0b21pY19zdGF0ZSAq
c3RhdGUpDQo+ID4gPiAgICogaW50ZWxfc2V0X2NkY2xrX3Bvc3RfcGxhbmVfdXBkYXRlIC0gUHVz
aCB0aGUgQ0RDTEsgc3RhdGUgdG8NCj4gPiA+IHRoZQ0KPiA+ID4gaGFyZHdhcmUNCj4gPiA+ICAg
KiBAc3RhdGU6IGludGVsIGF0b21pYyBzdGF0ZQ0KPiA+ID4gICAqDQo+ID4gPiAtICogUHJvZ3Jh
bSB0aGUgaGFyZHdhcmUgYmVmb3JlIHVwZGF0aW5nIHRoZSBIVyBwbGFuZSBzdGF0ZSBiYXNlZA0K
PiA+ID4gb24NCj4gPiA+IHRoZQ0KPiA+ID4gKyAqIFByb2dyYW0gdGhlIGhhcmR3YXJlIGFmdGVy
IHVwZGF0aW5nIHRoZSBIVyBwbGFuZSBzdGF0ZSBiYXNlZA0KPiA+ID4gb24NCj4gPiA+IHRoZQ0K
PiA+ID4gICAqIG5ldyBDRENMSyBzdGF0ZSwgaWYgbmVjZXNzYXJ5Lg0KPiA+IA0KPiA+IEJ1dCB0
aGUgSFcgcGxhbmUgc3RhdGUgd2lsbCBiZSB1cGRhdGVkIGxhdGVyIGluIGRldl9wcml2LQ0KPiA+
ID4gZGlzcGxheS5jb21taXRfbW9kZXNldF9lbmFibGVzKCkuDQo+IA0KPiBUaGF0IGNvbWVzIGJl
Zm9yZSBpbnRlbF9zZXRfY2RjbGtfcG9zdF9wbGFuZV91cGRhdGUoKS4NCg0KR2l0IGRpZmYgZm9v
bGVkIG1lLg0KDQoiQEAgLTE4OTUsNyArMTg5NSw3IEBAIGludGVsX3NldF9jZGNsa19wcmVfcGxh
bmVfdXBkYXRlKHN0cnVjdA0KaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSkiDQoNClJldmlld2Vk
LWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4NCg0KDQo+
IA0KPiA+ID4gICAqLw0KPiA+ID4gIHZvaWQNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLWdmeAo=
