Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 13882423231
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Oct 2021 22:41:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0412C6EC46;
	Tue,  5 Oct 2021 20:41:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 81CEA6EC46
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Oct 2021 20:41:28 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10128"; a="289354540"
X-IronPort-AV: E=Sophos;i="5.85,349,1624345200"; d="scan'208";a="289354540"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Oct 2021 13:41:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,349,1624345200"; d="scan'208";a="458196051"
Received: from irsmsx602.ger.corp.intel.com ([163.33.146.8])
 by orsmga002.jf.intel.com with ESMTP; 05 Oct 2021 13:41:27 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 irsmsx602.ger.corp.intel.com (163.33.146.8) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Tue, 5 Oct 2021 21:41:25 +0100
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2242.012;
 Tue, 5 Oct 2021 13:41:24 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "Shankar, Uma" <uma.shankar@intel.com>, "ville.syrjala@linux.intel.com"
 <ville.syrjala@linux.intel.com>, "Sharma, Swati2" <swati2.sharma@intel.com>
Thread-Topic: [PATCH] drm/i915/bios: gracefully disable dual eDP for now
Thread-Index: AQHXuhJfAjsc9yQgCke0ym38APyFMavFT+QAgAADMACAAAJ/AA==
Date: Tue, 5 Oct 2021 20:41:24 +0000
Message-ID: <28fd302c6dd79caf88cfde6c9bd45ae2c7c8312b.camel@intel.com>
References: <20211005175636.24669-1-jani.nikula@intel.com>
 <995bbd7b0d68a8c22d6192c92ec5a8bedbfcd18f.camel@intel.com>
 <8735pf1a2p.fsf@intel.com>
In-Reply-To: <8735pf1a2p.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.132]
Content-Type: text/plain; charset="utf-8"
Content-ID: <1C0E4E3CBF7CEA4DA9CB43A346B9A3F6@intel.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/bios: gracefully disable dual eDP
 for now
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCAyMDIxLTEwLTA1IGF0IDIzOjM4ICswMzAwLCBKYW5pIE5pa3VsYSB3cm90ZToNCj4g
T24gVHVlLCAwNSBPY3QgMjAyMSwgIlNvdXphLCBKb3NlIiA8am9zZS5zb3V6YUBpbnRlbC5jb20+
IHdyb3RlOg0KPiA+IE9uIFR1ZSwgMjAyMS0xMC0wNSBhdCAyMDo1NiArMDMwMCwgSmFuaSBOaWt1
bGEgd3JvdGU6DQo+ID4gPiBGb3IgdGhlIHRpbWUgYmVpbmcsIG5laXRoZXIgdGhlIHBvd2VyIHNl
cXVlbmNlciBub3IgdGhlIGJhY2tsaWdodCBjb2RlDQo+ID4gPiBwcm9wZXJseSBzdXBwb3J0IHR3
byBlRFAgcGFuZWxzIHNpbXVsdGFuZW91c2x5LiBXaGlsZSB0aGUgc29mdHdhcmUNCj4gPiA+IHN0
YXRlcyB3aWxsIGJlIGluZGVwZW5kZW50LCB0aGUgc2FtZSBzZXRzIG9mIHJlZ2lzdGVycyB3aWxs
IGJlIHVzZWQgZm9yDQo+ID4gPiBib3RoIGVEUCBwYW5lbHMsIGNsb2JiZXJpbmcgdGhlIGhhcmR3
YXJlIHN0YXRlIGFuZCBsZWFkaW5nIHRvIGVycm9ycy4NCj4gPiA+IA0KPiA+ID4gR3JhY2VmdWxs
eSBkaXNhYmxlIGR1YWwgZURQIHVudGlsIHByb3BlciBzdXBwb3J0IGhhcyBiZWVuIGFkZGVkLg0K
PiA+ID4gDQo+ID4gPiBDYzogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRl
bC5jb20+DQo+ID4gPiBDYzogVW1hIFNoYW5rYXIgPHVtYS5zaGFua2FyQGludGVsLmNvbT4NCj4g
PiA+IENjOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiA+ID4gQ2M6IFN3YXRpIFNoYXJtYSA8c3dhdGkyLnNoYXJtYUBpbnRlbC5jb20+DQo+ID4gPiBT
aWduZWQtb2ZmLWJ5OiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPg0KPiA+ID4g
LS0tDQo+ID4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9zLmMgfCA0
NyArKysrKysrKysrKysrKysrKysrKysrKw0KPiA+ID4gIDEgZmlsZSBjaGFuZ2VkLCA0NyBpbnNl
cnRpb25zKCspDQo+ID4gPiANCj4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Jpb3MuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfYmlvcy5jDQo+ID4gPiBpbmRleCBmOTc3NmNhODVkZTMuLmI5OTkwN2M2NTZiYiAxMDA2NDQN
Cj4gPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5jDQo+
ID4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuYw0KPiA+
ID4gQEAgLTE5MzAsNiArMTkzMCw1MCBAQCBzdGF0aWMgaW50IF9pbnRlbF9iaW9zX21heF90bWRz
X2Nsb2NrKGNvbnN0IHN0cnVjdCBpbnRlbF9iaW9zX2VuY29kZXJfZGF0YSAqZGV2ZA0KPiA+ID4g
IAl9DQo+ID4gPiAgfQ0KPiA+ID4gIA0KPiA+ID4gK3N0YXRpYyBlbnVtIHBvcnQgZ2V0X2VkcF9w
b3J0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQ0KPiA+ID4gK3sNCj4gPiA+ICsJY29u
c3Qgc3RydWN0IGludGVsX2Jpb3NfZW5jb2Rlcl9kYXRhICpkZXZkYXRhOw0KPiA+ID4gKwllbnVt
IHBvcnQgcG9ydDsNCj4gPiA+ICsNCj4gPiA+ICsJZm9yX2VhY2hfcG9ydChwb3J0KSB7DQo+ID4g
PiArCQlkZXZkYXRhID0gaTkxNS0+dmJ0LnBvcnRzW3BvcnRdOw0KPiA+ID4gKw0KPiA+ID4gKwkJ
aWYgKGRldmRhdGEgJiYgaW50ZWxfYmlvc19lbmNvZGVyX3N1cHBvcnRzX2VkcChkZXZkYXRhKSkN
Cj4gPiA+ICsJCQlyZXR1cm4gcG9ydDsNCj4gPiA+ICsJfQ0KPiA+ID4gKw0KPiA+ID4gKwlyZXR1
cm4gUE9SVF9OT05FOw0KPiA+ID4gK30NCj4gPiA+ICsNCj4gPiA+ICsvKg0KPiA+ID4gKyAqIEZJ
WE1FOiBUaGUgcG93ZXIgc2VxdWVuY2VyIGFuZCBiYWNrbGlnaHQgY29kZSBjdXJyZW50bHkgZG8g
bm90IHN1cHBvcnQgbW9yZQ0KPiA+ID4gKyAqIHRoYW4gb25lIHNldCByZWdpc3RlcnMsIGF0IGxl
YXN0IG5vdCBvbiBhbnl0aGluZyBvdGhlciB0aGFuIFZMVi9DSFYuIEl0IHdpbGwNCj4gPiA+ICsg
KiBjbG9iYmVyIHRoZSByZWdpc3RlcnMuIEFzIGEgdGVtcG9yYXJ5IHdvcmthcm91bmQsIGdyYWNl
ZnVsbHkgcHJldmVudCBtb3JlDQo+ID4gPiArICogdGhhbiBvbmUgZURQIGZyb20gYmVpbmcgcmVn
aXN0ZXJlZC4NCj4gPiA+ICsgKi8NCj4gPiA+ICtzdGF0aWMgdm9pZCBzYW5pdGl6ZV9kdWFsX2Vk
cChzdHJ1Y3QgaW50ZWxfYmlvc19lbmNvZGVyX2RhdGEgKmRldmRhdGEsDQo+ID4gPiArCQkJICAg
ICAgZW51bSBwb3J0IHBvcnQpDQo+ID4gPiArew0KPiA+ID4gKwlzdHJ1Y3QgZHJtX2k5MTVfcHJp
dmF0ZSAqaTkxNSA9IGRldmRhdGEtPmk5MTU7DQo+ID4gPiArCXN0cnVjdCBjaGlsZF9kZXZpY2Vf
Y29uZmlnICpjaGlsZCA9ICZkZXZkYXRhLT5jaGlsZDsNCj4gPiA+ICsJZW51bSBwb3J0IHA7DQo+
ID4gPiArDQo+ID4gPiArCS8qIENIViBtaWdodCBub3QgY2xvYmJlciBQUFMgcmVnaXN0ZXJzLiAq
Lw0KPiA+ID4gKwlpZiAoSVNfQ0hFUlJZVklFVyhpOTE1KSkNCj4gPiA+ICsJCXJldHVybjsNCj4g
PiA+ICsNCj4gPiA+ICsJcCA9IGdldF9lZHBfcG9ydChpOTE1KTsNCj4gPiA+ICsJaWYgKHAgPT0g
UE9SVF9OT05FKQ0KPiA+ID4gKwkJcmV0dXJuOw0KPiA+ID4gKw0KPiA+ID4gKwlkcm1fZGJnX2tt
cygmaTkxNS0+ZHJtLCAiYm90aCBwb3J0cyAlYyBhbmQgJWMgY29uZmlndXJlZCBhcyBlRFAsICIN
Cj4gPiA+ICsJCSAgICAiZGlzYWJsaW5nIHBvcnQgJWMgZURQXG4iLCBwb3J0X25hbWUocCksIHBv
cnRfbmFtZShwb3J0KSwNCj4gPiA+ICsJCSAgICBwb3J0X25hbWUocG9ydCkpOw0KPiA+ID4gKw0K
PiA+ID4gKwljaGlsZC0+ZGV2aWNlX3R5cGUgJj0gfkRFVklDRV9UWVBFX0RJU1BMQVlQT1JUX09V
VFBVVDsNCj4gPiANCj4gPiBXaHkgYWxzbyBjbGVhbmluZyB0aGUgREVWSUNFX1RZUEVfRElTUExB
WVBPUlRfT1VUUFVUIGJpdD8gVGhlIHJlc3QgbGd0bS4NCj4gDQo+IENvdWxkJ3ZlIGxlYW5lZCBv
bmUgd2F5IG9yIHRoZSBvdGhlciwgYnV0IGRvIHdlIHJlYWxseSB3YW50IHRvDQo+IGluaXRpYWxp
emUgYSByZWd1bGFyIERQIG9uIHRoZSBwb3J0Pw0KDQpZZWFoLCBsZXRzIGdvIHdpdGhvdXQuDQoN
ClJldmlld2VkLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNv
bT4NCg0KPiANCj4gQlIsDQo+IEphbmkuDQo+IA0KPiA+IA0KPiA+ID4gKwljaGlsZC0+ZGV2aWNl
X3R5cGUgJj0gfkRFVklDRV9UWVBFX0lOVEVSTkFMX0NPTk5FQ1RPUjsNCj4gPiA+ICt9DQo+ID4g
PiArDQo+ID4gPiAgc3RhdGljIGJvb2wgaXNfcG9ydF92YWxpZChzdHJ1Y3QgZHJtX2k5MTVfcHJp
dmF0ZSAqaTkxNSwgZW51bSBwb3J0IHBvcnQpDQo+ID4gPiAgew0KPiA+ID4gIAkvKg0KPiA+ID4g
QEAgLTE5ODcsNiArMjAzMSw5IEBAIHN0YXRpYyB2b2lkIHBhcnNlX2RkaV9wb3J0KHN0cnVjdCBk
cm1faTkxNV9wcml2YXRlICppOTE1LA0KPiA+ID4gIAkJICAgIHN1cHBvcnRzX3R5cGVjX3VzYiwg
c3VwcG9ydHNfdGJ0LA0KPiA+ID4gIAkJICAgIGRldmRhdGEtPmRzYyAhPSBOVUxMKTsNCj4gPiA+
ICANCj4gPiA+ICsJaWYgKGlzX2VkcCkNCj4gPiA+ICsJCXNhbml0aXplX2R1YWxfZWRwKGRldmRh
dGEsIHBvcnQpOw0KPiA+ID4gKw0KPiA+ID4gIAlpZiAoaXNfZHZpKQ0KPiA+ID4gIAkJc2FuaXRp
emVfZGRjX3BpbihkZXZkYXRhLCBwb3J0KTsNCj4gPiA+ICANCj4gPiANCj4gDQoNCg==
