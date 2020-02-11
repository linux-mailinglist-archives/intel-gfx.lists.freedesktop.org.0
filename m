Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EF7F1597CE
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Feb 2020 19:11:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F0216F40B;
	Tue, 11 Feb 2020 18:11:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C762D6F40B
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Feb 2020 18:11:27 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Feb 2020 10:11:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,428,1574150400"; d="scan'208";a="226589319"
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
 by orsmga008.jf.intel.com with ESMTP; 11 Feb 2020 10:11:26 -0800
Received: from fmsmsx124.amr.corp.intel.com (10.18.125.39) by
 FMSMSX103.amr.corp.intel.com (10.18.124.201) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 11 Feb 2020 10:11:24 -0800
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.129]) by
 fmsmsx124.amr.corp.intel.com ([169.254.8.239]) with mapi id 14.03.0439.000;
 Tue, 11 Feb 2020 10:11:20 -0800
From: "Souza, Jose" <jose.souza@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915/mst: Set intel_dp_set_m_n() for MST slaves
Thread-Index: AQHV4EG6acxY1CK7oEep9LxQz9Uj96gVbFkAgAFFWQCAACE2AA==
Date: Tue, 11 Feb 2020 18:11:18 +0000
Message-ID: <8c4f2846a23206b94feb177608dc36a064cb4ea4.camel@intel.com>
References: <20200210184057.296698-1-jose.souza@intel.com>
 <871rr2w4n5.fsf@intel.com> <87a75pyufp.fsf@intel.com>
In-Reply-To: <87a75pyufp.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.12.229]
Content-ID: <45AC828BEF170348B5AC28123E398B62@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/mst: Set intel_dp_set_m_n() for
 MST slaves
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

T24gVHVlLCAyMDIwLTAyLTExIGF0IDE4OjEyICswMjAwLCBKYW5pIE5pa3VsYSB3cm90ZToNCj4g
T24gTW9uLCAxMCBGZWIgMjAyMCwgSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4g
d3JvdGU6DQo+ID4gT24gTW9uLCAxMCBGZWIgMjAyMCwgSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8
am9zZS5zb3V6YUBpbnRlbC5jb20+DQo+ID4gd3JvdGU6DQo+ID4gPiBDb21taXQgMWM5ZDJlYjI0
MTUzICgiZHJtL2k5MTU6IG1vdmUgaW50ZWxfZHBfc2V0X21fbigpIHRvDQo+ID4gPiBlbmNvZGVy
IGZvcg0KPiA+ID4gRERJIHBsYXRmb3JtcyIpIG1vdmVkIHRoZSBpbnRlbF9kcF9zZXRfbV9uKCkg
ZnJvbQ0KPiA+ID4gaHN3X2NydGNfZW5hYmxlKCkNCj4gPiA+IHRvIGludGVsX2RkaV9wcmVfZW5h
YmxlX2RwKCkgYnV0IGl0IG1pc3NlZCBhZGQgaXQgdG8NCj4gPiA+IGludGVsX21zdF9wcmVfZW5h
YmxlX2RwKCkgY2F1c2luZyBNU1Qgc2xhdmVzIHRvIG5vdCB3b3JrLg0KPiA+ID4gDQo+ID4gPiBG
aXhlczogMWM5ZDJlYjI0MTUzICgiZHJtL2k5MTU6IG1vdmUgaW50ZWxfZHBfc2V0X21fbigpIHRv
DQo+ID4gPiBlbmNvZGVyIGZvciBEREkgcGxhdGZvcm1zIikNCj4gPiA+IENjOiBWYW5kaXRhIEt1
bGthcm5pIDx2YW5kaXRhLmt1bGthcm5pQGludGVsLmNvbT4NCj4gPiA+IENjOiBKYW5pIE5pa3Vs
YSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPg0KPiA+ID4gU2lnbmVkLW9mZi1ieTogSm9zw6kgUm9i
ZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+DQo+ID4gDQo+ID4gRGFtbiBpdCwg
dGhpcyBpcyB0aGUgc2Vjb25kIERQIE1TVCB0aGluZyBJIG1pc3NlZCBpbiB0aGUgc2FtZQ0KPiA+
IHNlcmllcy4gKmZhY2VwYWxtKi4gVGhlIGZpcnN0IGdvb2YtdXAgd2FzIGZpeGVkIGluIGNvbW1p
dA0KPiA+IDI3NDk1OTYyMjAxNw0KPiA+ICgiZHJtL2k5MTUvbXN0OiBmaXggcGlwZSBhbmQgdmJs
YW5rIGVuYWJsZSIpLiBXZSByZWFsbHkgbmVlZCBtb3JlDQo+ID4gTVNUIGluDQo+ID4gQ0kuDQo+
IA0KPiBBY3R1YWxseSwgd29uZGVyaW5nIGlmIHRoZSBpbnRlbF9kcF9zZXRfbV9uKCkgY2FsbCBp
bg0KPiBpbnRlbF9kZGlfcHJlX2VuYWJsZV9kcCgpIG5vdyBuZWVkcyB0byBiZSB3cmFwcGVkIGlu
DQo+IA0KPiAJaWYgKCFpbnRlbF9jcnRjX2hhc190eXBlKGNydGNfc3RhdGUsIElOVEVMX09VVFBV
VF9EUF9NU1QpKQ0KPiANCj4gU2ltaWxhciB0byBpbnRlbF9kZGlfc2V0X2RwX21zYSgpLg0KDQpJ
bmRlZWQgdGhhbmtzIGZvciBjYXRjaGluZywgd2lsbCBzZW5kIHRoZSBmaXhlZCB2ZXJzaW9uIGlu
IGEgYml0Lg0KDQo+IA0KPiBCUiwNCj4gSmFuaS4NCj4gDQo+IA0KPiA+IFJldmlld2VkLWJ5OiBK
YW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPg0KPiA+IA0KPiA+ID4gLS0tDQo+ID4g
PiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9tc3QuYyB8IDIgKysNCj4g
PiA+ICAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspDQo+ID4gPiANCj4gPiA+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX21zdC5jDQo+ID4g
PiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbXN0LmMNCj4gPiA+IGlu
ZGV4IDljZDU5MTQxOTUzZC4uZDdiZmE3YzM1MGU5IDEwMDY0NA0KPiA+ID4gLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9tc3QuYw0KPiA+ID4gKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9tc3QuYw0KPiA+ID4gQEAgLTQ4MCw2ICs0
ODAsOCBAQCBzdGF0aWMgdm9pZCBpbnRlbF9tc3RfcHJlX2VuYWJsZV9kcChzdHJ1Y3QNCj4gPiA+
IGludGVsX2VuY29kZXIgKmVuY29kZXIsDQo+ID4gPiAgCQlpbnRlbF9kZGlfZW5hYmxlX3BpcGVf
Y2xvY2socGlwZV9jb25maWcpOw0KPiA+ID4gIA0KPiA+ID4gIAlpbnRlbF9kZGlfc2V0X2RwX21z
YShwaXBlX2NvbmZpZywgY29ubl9zdGF0ZSk7DQo+ID4gPiArDQo+ID4gPiArCWludGVsX2RwX3Nl
dF9tX24ocGlwZV9jb25maWcsIE0xX04xKTsNCj4gPiA+ICB9DQo+ID4gPiAgDQo+ID4gPiAgc3Rh
dGljIHZvaWQgaW50ZWxfbXN0X2VuYWJsZV9kcChzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2Rl
ciwNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
