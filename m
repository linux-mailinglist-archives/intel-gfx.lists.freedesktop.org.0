Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F98F44C6B7
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Nov 2021 19:16:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E2D26EC40;
	Wed, 10 Nov 2021 18:16:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3AE5A6EC40
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Nov 2021 18:16:55 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10164"; a="212757653"
X-IronPort-AV: E=Sophos;i="5.87,224,1631602800"; d="scan'208";a="212757653"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2021 10:16:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,224,1631602800"; d="scan'208";a="534133345"
Received: from irsmsx606.ger.corp.intel.com ([163.33.146.139])
 by orsmga001.jf.intel.com with ESMTP; 10 Nov 2021 10:16:32 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 IRSMSX606.ger.corp.intel.com (163.33.146.139) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Wed, 10 Nov 2021 18:16:30 +0000
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2242.012;
 Wed, 10 Nov 2021 10:16:29 -0800
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Hogander, Jouni" <jouni.hogander@intel.com>
Thread-Topic: [PATCH] drm/i915/psr: Fix PSR2 handling of multiplanar format
Thread-Index: AQHX1OgXoCumSRCxF0qS2+NJE+7Oaqv7hj+AgACCPQCAAW1MgIAAJM0A
Date: Wed, 10 Nov 2021 18:16:29 +0000
Message-ID: <15a9667df6f1be6a84688911c22aee101f8482d7.camel@intel.com>
References: <20211108213807.39865-1-jose.souza@intel.com>
 <41137e8964637d45ba52b47ccba7d83db584dc0f.camel@intel.com>
 <d161d435144766ec057dfd388bcc34c93d164a0e.camel@intel.com>
 <db4c7afa7516888f89591ecf5544c0c6de57d90e.camel@intel.com>
In-Reply-To: <db4c7afa7516888f89591ecf5544c0c6de57d90e.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-Type: text/plain; charset="utf-8"
Content-ID: <0B88AEB779D1F94E951FE501B61E9791@intel.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/psr: Fix PSR2 handling of
 multiplanar format
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

T24gV2VkLCAyMDIxLTExLTEwIGF0IDE2OjA1ICswMDAwLCBIb2dhbmRlciwgSm91bmkgd3JvdGU6
DQo+IE9uIFR1ZSwgMjAyMS0xMS0wOSBhdCAxODoxNyArMDAwMCwgU291emEsIEpvc2Ugd3JvdGU6
DQo+ID4gT24gVHVlLCAyMDIxLTExLTA5IGF0IDEwOjMxICswMDAwLCBIb2dhbmRlciwgSm91bmkg
d3JvdGU6DQo+ID4gPiBPbiBNb24sIDIwMjEtMTEtMDggYXQgMTM6MzggLTA4MDAsIEpvc8OpIFJv
YmVydG8gZGUgU291emEgd3JvdGU6DQo+ID4gPiA+IFdoZW4gYSBwbGFuZSB3aXRoIGEgbXVsdGlw
bGFuYXIgZm9ybWF0IGlzIGFkZGVkIHRvIHRoZSBzdGF0ZSBieQ0KPiA+ID4gPiBkcm1fYXRvbWlj
X2FkZF9hZmZlY3RlZF9wbGFuZXMoKSwgb25seSB0aGUgVVYgcGxhbmUgaXMNCj4gPiA+ID4gYWRk
ZWQsIHNvIGEgaW50ZWxfYXRvbWljX2dldF9uZXdfcGxhbmVfc3RhdGUoKSBjYWxsIHRvIGdldCB0
aGUgWQ0KPiA+ID4gPiBwbGFuZSBzdGF0ZSBjYW4gcmV0dXJuIGEgbnVsbCBwb2ludGVyLg0KPiA+
ID4gDQo+ID4gPiBJIGRvbid0IHVuZGVyc3RhbmQgaG93IHRoaXMgY291bGQgaGFwcGVuIG9ubHkg
c29tZXRpbWVzPyBXZXJlIHlvdQ0KPiA+ID4gYWJsZQ0KPiA+ID4gdG8gcmVwcm9kdWNlIHRoaXMg
c29tZWhvdz8NCj4gPiANCj4gPiBoZXJlIGEgZXhhbXBsZToNCj4gPiBwbGFuZSAwIC0gcHJpbWFy
eSBwbGFuZSB3aXRoIG52MTIgZm9ybWF0DQo+ID4gcGxhbmUgMSAtIG92ZXJsYXkgd2l0aCBhbnkg
Zm9ybWF0DQo+ID4gcGxhbmUgMiAtIHByaW1hcnkgc2xhdmUNCj4gPiANCj4gPiB1c2Vyc3BhY2Ug
ZG9lcyBhIGZsaXAgdG8gb3ZlcmxheSwgc28gc3RhdGUgZG8gbm90IGhhdmUgdGhlIHByaW1hcnkN
Cj4gPiBwbGFuZQ0KPiA+IGJ1dCB0aGUgcHJpbWFyeSBhbmQgb3ZlcmxheSBwbGFuZXMgb3Zlcmxh
cCwgc28gdGhlIHByaW1hcnkgaXMgYWRkZWQNCj4gPiBieSBkcm1fYXRvbWljX2FkZF9hZmZlY3Rl
ZF9wbGFuZXMoKS4uLg0KPiANCj4gT2ssIHRoYW5rIHlvdSBmb3IgdGhlIGV4cGxhbmF0aW9uLg0K
PiANCj4gPiANCj4gPiA+IEdlbmVyYWxseTogY2hlY2tpbmcgbGlua2VkX25ld19wbGFuZV9zdGF0
ZSBiZWluZyB2YWxpZCBwb2ludGVyDQo+ID4gPiBtYWtlcw0KPiA+ID4gc2Vuc2UuIEknbSBqdXN0
IHdvbmRlcmluZyBob3cgYW5kIHdoZW4gdGhpcyBjb3VsZCBoYXBwZW4gYW5kIGhvdw0KPiA+ID4g
dGhhdA0KPiA+ID4gc2hvdWxkIGJlIGhhbmRsZWQuDQo+ID4gPiANCj4gPiA+ID4gVG8gZml4IHRo
aXMsIGludGVsX2F0b21pY19nZXRfcGxhbmVfc3RhdGUoKSBzaG91bGQgYmUgY2FsbGVkIGFuZA0K
PiA+ID4gPiB0aGUgcmV0dXJuIG5lZWRzIHRvIGJlIGNoZWNrZWQgZm9yIGVycm9ycywgYXMgaXQg
Y291bGQgcmV0dXJuIGENCj4gPiA+ID4gRUFHQUlODQo+ID4gPiA+IGFzIG90aGVyIGF0b21pYyBz
dGF0ZSBjb3VsZCBiZSBob2xkaW5nIHRoZSBsb2NrIGZvciB0aGUgWSBwbGFuZS4NCj4gPiA+ID4g
DQo+ID4gPiA+IE90aGVyIGlzc3VlIHdpdGggdGhlIHBhdGNoIGJlaW5nIGZpeGVkIGlzIHRoYXQg
dGhlIFkgcGxhbmUgaXMgbm90DQo+ID4gPiA+IGJlaW5nIGNvbW1pdHRlZCB0byBoYXJkd2FyZSBi
ZWNhdXNlIHRoZSBjb3JyZXNwb25kZWQgcGxhbmUgYml0IGlzDQo+ID4gPiA+IG5vdA0KPiA+ID4g
PiBzZXQgaW4gdXBkYXRlX3BsYW5lcyB3aGVuIFVWIGFuZCBZIHBsYW5lcyBhcmUgYWRkZWQgdG8g
dGhlIHN0YXRlDQo+ID4gPiA+IGJ5DQo+ID4gPiA+IGRybV9hdG9taWNfYWRkX2FmZmVjdGVkX3Bs
YW5lcygpLg0KPiA+ID4gDQo+ID4gPiBUbyBteSB1bmRlcnN0YW5kaW5nIHRoaXMgb25lIGlzIGFs
cmVhZHkgc2V0IGluDQo+ID4gPiBpbnRlbF9kaXNwbGF5LmM6aWNsX2NoZWNrX252MTJfcGxhbmVz
Lg0KPiA+IA0KPiA+IHByaW1hcnkgcGxhbmUgd2lsbCBiZSBhZGRlZCBhZnRlciB0aGlzIHdhcyBl
eGVjdXRlZC4NCj4gDQo+IE9rLCBidXQgdGhlbiBpc24ndCBpdCBhIHByb2JsZW0gYWxzbyB3aGVu
IHNlbGVjdGl2ZSBmZXRjaCBpcyBub3QgaW4NCj4gdXNlPw0KDQpZZXMgYnV0IGl0IGlzIG5vdCBj
b21tb24gdG8gY2FsbCBkcm1fYXRvbWljX2FkZF9hZmZlY3RlZF9wbGFuZXMoKSBvciBpbnRlbF9h
dG9taWNfZ2V0X3BsYW5lX3N0YXRlKCkgdGhhdCBsYXRlLg0KDQo+IA0KPiA+IA0KPiA+ID4gPiBD
YzogSm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+ID4gPiA+IENj
OiBNaWthIEthaG9sYSA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPg0KPiA+ID4gPiBGaXhlczogMzgw
OTk5MWZmNWY0ICgiZHJtL2k5MTUvZGlzcGxheTogQWRkIGluaXRpYWwgc2VsZWN0aXZlDQo+ID4g
PiA+IGZldGNoDQo+ID4gPiA+IHN1cHBvcnQgZm9yIGJpcGxhbmFyIGZvcm1hdHMiKQ0KPiA+ID4g
PiBTaWduZWQtb2ZmLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVs
LmNvbT4NCj4gPiA+ID4gLS0tDQo+ID4gPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX3Bzci5jIHwgMTIgKysrKysrKystLS0tDQo+ID4gPiA+ICAxIGZpbGUgY2hhbmdlZCwg
OCBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQ0KPiA+ID4gPiANCj4gPiA+ID4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gPiA+ID4g
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ID4gPiA+IGluZGV4
IDlkNTg5ZDQ3MWUzMzUuLmExYTY2M2YzNjJlN2QgMTAwNjQ0DQo+ID4gPiA+IC0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gPiA+ID4gKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiA+ID4gPiBAQCAtMTczMiwxMyAr
MTczMiwxNyBAQCBpbnQgaW50ZWxfcHNyMl9zZWxfZmV0Y2hfdXBkYXRlKHN0cnVjdA0KPiA+ID4g
PiBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLA0KPiA+ID4gPiAgICAgICAgICAgICAgICAqIHNh
bWUgYXJlYSBmb3IgWSBwbGFuZSBhcyB3ZWxsLg0KPiA+ID4gPiAgICAgICAgICAgICAgICAqLw0K
PiA+ID4gPiAgICAgICAgICAgICAgIGlmIChsaW5rZWQpIHsNCj4gPiA+ID4gLSAgICAgICAgICAg
ICAgICAgICAgIHN0cnVjdCBpbnRlbF9wbGFuZV9zdGF0ZQ0KPiA+ID4gPiAqbGlua2VkX25ld19w
bGFuZV9zdGF0ZSA9DQo+ID4gPiA+IC0gICAgICAgICAgICAgICAgICAgICAgIGludGVsX2F0b21p
Y19nZXRfbmV3X3BsYW5lX3N0YXRlKHN0YXRlLA0KPiA+ID4gPiBsaW5rZWQpOw0KPiA+ID4gPiAt
ICAgICAgICAgICAgICAgICAgICAgc3RydWN0IGRybV9yZWN0ICpsaW5rZWRfc2VsX2ZldGNoX2Fy
ZWEgPQ0KPiA+ID4gPiAtICAgICAgICAgICAgICAgICAgICAgICAmbGlua2VkX25ld19wbGFuZV9z
dGF0ZS0NCj4gPiA+ID4gPiBwc3IyX3NlbF9mZXRjaF9hcmVhOw0KPiA+ID4gPiArICAgICAgICAg
ICAgICAgICAgICAgc3RydWN0IGludGVsX3BsYW5lX3N0YXRlDQo+ID4gPiA+ICpsaW5rZWRfbmV3
X3BsYW5lX3N0YXRlOw0KPiA+ID4gPiArICAgICAgICAgICAgICAgICAgICAgc3RydWN0IGRybV9y
ZWN0ICpsaW5rZWRfc2VsX2ZldGNoX2FyZWE7DQo+ID4gPiA+IA0KPiA+ID4gPiArICAgICAgICAg
ICAgICAgICAgICAgbGlua2VkX25ld19wbGFuZV9zdGF0ZSA9DQo+ID4gPiA+IGludGVsX2F0b21p
Y19nZXRfcGxhbmVfc3RhdGUoc3RhdGUsIGxpbmtlZCk7DQo+ID4gPiA+ICsgICAgICAgICAgICAg
ICAgICAgICBpZiAoSVNfRVJSKGxpbmtlZF9uZXdfcGxhbmVfc3RhdGUpKQ0KPiA+ID4gPiArICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICByZXR1cm4NCj4gPiA+ID4gUFRSX0VSUihsaW5rZWRf
bmV3X3BsYW5lX3N0YXRlKTsNCj4gPiA+ID4gKw0KPiA+ID4gPiArICAgICAgICAgICAgICAgICAg
ICAgbGlua2VkX3NlbF9mZXRjaF9hcmVhID0NCj4gPiA+ID4gJmxpbmtlZF9uZXdfcGxhbmVfc3Rh
dGUtPnBzcjJfc2VsX2ZldGNoX2FyZWE7DQo+ID4gPiA+ICAgICAgICAgICAgICAgICAgICAgICBs
aW5rZWRfc2VsX2ZldGNoX2FyZWEtPnkxID0gc2VsX2ZldGNoX2FyZWEtDQo+ID4gPiA+ID4geTE7
DQo+ID4gPiA+ICAgICAgICAgICAgICAgICAgICAgICBsaW5rZWRfc2VsX2ZldGNoX2FyZWEtPnky
ID0gc2VsX2ZldGNoX2FyZWEtDQo+ID4gPiA+ID4geTI7DQo+ID4gPiA+ICsgICAgICAgICAgICAg
ICAgICAgICBjcnRjX3N0YXRlLT51cGRhdGVfcGxhbmVzIHw9IEJJVChsaW5rZWQtDQo+ID4gPiA+
ID4gaWQpOw0KPiA+ID4gPiAgICAgICAgICAgICAgIH0NCj4gPiA+ID4gICAgICAgfQ0KPiA+ID4g
PiANCg0K
