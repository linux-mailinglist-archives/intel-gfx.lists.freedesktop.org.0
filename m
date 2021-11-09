Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D8C6F44B298
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Nov 2021 19:17:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 16E4189E15;
	Tue,  9 Nov 2021 18:17:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 15F5C89E15
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Nov 2021 18:17:24 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10163"; a="232358299"
X-IronPort-AV: E=Sophos;i="5.87,220,1631602800"; d="scan'208";a="232358299"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2021 10:17:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,220,1631602800"; d="scan'208";a="452006555"
Received: from irsmsx604.ger.corp.intel.com ([163.33.146.137])
 by orsmga006.jf.intel.com with ESMTP; 09 Nov 2021 10:17:22 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 IRSMSX604.ger.corp.intel.com (163.33.146.137) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Tue, 9 Nov 2021 18:17:21 +0000
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2242.012;
 Tue, 9 Nov 2021 10:17:20 -0800
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Hogander, Jouni" <jouni.hogander@intel.com>
Thread-Topic: [PATCH] drm/i915/psr: Fix PSR2 handling of multiplanar format
Thread-Index: AQHX1OgXoCumSRCxF0qS2+NJE+7Oaqv7hj+AgACCPQA=
Date: Tue, 9 Nov 2021 18:17:19 +0000
Message-ID: <d161d435144766ec057dfd388bcc34c93d164a0e.camel@intel.com>
References: <20211108213807.39865-1-jose.souza@intel.com>
 <41137e8964637d45ba52b47ccba7d83db584dc0f.camel@intel.com>
In-Reply-To: <41137e8964637d45ba52b47ccba7d83db584dc0f.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-Type: text/plain; charset="utf-8"
Content-ID: <2116979AD032374AA9DDA2015E6B95C2@intel.com>
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

T24gVHVlLCAyMDIxLTExLTA5IGF0IDEwOjMxICswMDAwLCBIb2dhbmRlciwgSm91bmkgd3JvdGU6
DQo+IE9uIE1vbiwgMjAyMS0xMS0wOCBhdCAxMzozOCAtMDgwMCwgSm9zw6kgUm9iZXJ0byBkZSBT
b3V6YSB3cm90ZToNCj4gPiBXaGVuIGEgcGxhbmUgd2l0aCBhIG11bHRpcGxhbmFyIGZvcm1hdCBp
cyBhZGRlZCB0byB0aGUgc3RhdGUgYnkNCj4gPiBkcm1fYXRvbWljX2FkZF9hZmZlY3RlZF9wbGFu
ZXMoKSwgb25seSB0aGUgVVYgcGxhbmUgaXMNCj4gPiBhZGRlZCwgc28gYSBpbnRlbF9hdG9taWNf
Z2V0X25ld19wbGFuZV9zdGF0ZSgpIGNhbGwgdG8gZ2V0IHRoZSBZDQo+ID4gcGxhbmUgc3RhdGUg
Y2FuIHJldHVybiBhIG51bGwgcG9pbnRlci4NCj4gDQo+IEkgZG9uJ3QgdW5kZXJzdGFuZCBob3cg
dGhpcyBjb3VsZCBoYXBwZW4gb25seSBzb21ldGltZXM/IFdlcmUgeW91IGFibGUNCj4gdG8gcmVw
cm9kdWNlIHRoaXMgc29tZWhvdz8NCg0KaGVyZSBhIGV4YW1wbGU6DQpwbGFuZSAwIC0gcHJpbWFy
eSBwbGFuZSB3aXRoIG52MTIgZm9ybWF0DQpwbGFuZSAxIC0gb3ZlcmxheSB3aXRoIGFueSBmb3Jt
YXQNCnBsYW5lIDIgLSBwcmltYXJ5IHNsYXZlDQoNCnVzZXJzcGFjZSBkb2VzIGEgZmxpcCB0byBv
dmVybGF5LCBzbyBzdGF0ZSBkbyBub3QgaGF2ZSB0aGUgcHJpbWFyeSBwbGFuZQ0KYnV0IHRoZSBw
cmltYXJ5IGFuZCBvdmVybGF5IHBsYW5lcyBvdmVybGFwLCBzbyB0aGUgcHJpbWFyeSBpcyBhZGRl
ZCBieSBkcm1fYXRvbWljX2FkZF9hZmZlY3RlZF9wbGFuZXMoKS4uLg0KDQo+IA0KPiBHZW5lcmFs
bHk6IGNoZWNraW5nIGxpbmtlZF9uZXdfcGxhbmVfc3RhdGUgYmVpbmcgdmFsaWQgcG9pbnRlciBt
YWtlcw0KPiBzZW5zZS4gSSdtIGp1c3Qgd29uZGVyaW5nIGhvdyBhbmQgd2hlbiB0aGlzIGNvdWxk
IGhhcHBlbiBhbmQgaG93IHRoYXQNCj4gc2hvdWxkIGJlIGhhbmRsZWQuDQo+IA0KPiA+IFRvIGZp
eCB0aGlzLCBpbnRlbF9hdG9taWNfZ2V0X3BsYW5lX3N0YXRlKCkgc2hvdWxkIGJlIGNhbGxlZCBh
bmQNCj4gPiB0aGUgcmV0dXJuIG5lZWRzIHRvIGJlIGNoZWNrZWQgZm9yIGVycm9ycywgYXMgaXQg
Y291bGQgcmV0dXJuIGENCj4gPiBFQUdBSU4NCj4gPiBhcyBvdGhlciBhdG9taWMgc3RhdGUgY291
bGQgYmUgaG9sZGluZyB0aGUgbG9jayBmb3IgdGhlIFkgcGxhbmUuDQo+ID4gDQo+ID4gT3RoZXIg
aXNzdWUgd2l0aCB0aGUgcGF0Y2ggYmVpbmcgZml4ZWQgaXMgdGhhdCB0aGUgWSBwbGFuZSBpcyBu
b3QNCj4gPiBiZWluZyBjb21taXR0ZWQgdG8gaGFyZHdhcmUgYmVjYXVzZSB0aGUgY29ycmVzcG9u
ZGVkIHBsYW5lIGJpdCBpcyBub3QNCj4gPiBzZXQgaW4gdXBkYXRlX3BsYW5lcyB3aGVuIFVWIGFu
ZCBZIHBsYW5lcyBhcmUgYWRkZWQgdG8gdGhlIHN0YXRlIGJ5DQo+ID4gZHJtX2F0b21pY19hZGRf
YWZmZWN0ZWRfcGxhbmVzKCkuDQo+IA0KPiBUbyBteSB1bmRlcnN0YW5kaW5nIHRoaXMgb25lIGlz
IGFscmVhZHkgc2V0IGluDQo+IGludGVsX2Rpc3BsYXkuYzppY2xfY2hlY2tfbnYxMl9wbGFuZXMu
DQoNCnByaW1hcnkgcGxhbmUgd2lsbCBiZSBhZGRlZCBhZnRlciB0aGlzIHdhcyBleGVjdXRlZC4N
Cg0KPiANCj4gPiANCj4gPiBDYzogSm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRl
bC5jb20+DQo+ID4gQ2M6IE1pa2EgS2Fob2xhIDxtaWthLmthaG9sYUBpbnRlbC5jb20+DQo+ID4g
Rml4ZXM6IDM4MDk5OTFmZjVmNCAoImRybS9pOTE1L2Rpc3BsYXk6IEFkZCBpbml0aWFsIHNlbGVj
dGl2ZSBmZXRjaA0KPiA+IHN1cHBvcnQgZm9yIGJpcGxhbmFyIGZvcm1hdHMiKQ0KPiA+IFNpZ25l
ZC1vZmYtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPg0K
PiA+IC0tLQ0KPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jIHwg
MTIgKysrKysrKystLS0tDQo+ID4gIDEgZmlsZSBjaGFuZ2VkLCA4IGluc2VydGlvbnMoKyksIDQg
ZGVsZXRpb25zKC0pDQo+ID4gDQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfcHNyLmMNCj4gPiBpbmRleCA5ZDU4OWQ0NzFlMzM1Li5hMWE2NjNmMzYyZTdkIDEwMDY0
NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4g
PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ID4gQEAg
LTE3MzIsMTMgKzE3MzIsMTcgQEAgaW50IGludGVsX3BzcjJfc2VsX2ZldGNoX3VwZGF0ZShzdHJ1
Y3QNCj4gPiBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLA0KPiA+ICAgICAgICAgICAgICAgICog
c2FtZSBhcmVhIGZvciBZIHBsYW5lIGFzIHdlbGwuDQo+ID4gICAgICAgICAgICAgICAgKi8NCj4g
PiAgICAgICAgICAgICAgIGlmIChsaW5rZWQpIHsNCj4gPiAtICAgICAgICAgICAgICAgICAgICAg
c3RydWN0IGludGVsX3BsYW5lX3N0YXRlDQo+ID4gKmxpbmtlZF9uZXdfcGxhbmVfc3RhdGUgPQ0K
PiA+IC0gICAgICAgICAgICAgICAgICAgICAgIGludGVsX2F0b21pY19nZXRfbmV3X3BsYW5lX3N0
YXRlKHN0YXRlLA0KPiA+IGxpbmtlZCk7DQo+ID4gLSAgICAgICAgICAgICAgICAgICAgIHN0cnVj
dCBkcm1fcmVjdCAqbGlua2VkX3NlbF9mZXRjaF9hcmVhID0NCj4gPiAtICAgICAgICAgICAgICAg
ICAgICAgICAmbGlua2VkX25ld19wbGFuZV9zdGF0ZS0+cHNyMl9zZWxfZmV0Y2hfYXJlYTsNCj4g
PiArICAgICAgICAgICAgICAgICAgICAgc3RydWN0IGludGVsX3BsYW5lX3N0YXRlDQo+ID4gKmxp
bmtlZF9uZXdfcGxhbmVfc3RhdGU7DQo+ID4gKyAgICAgICAgICAgICAgICAgICAgIHN0cnVjdCBk
cm1fcmVjdCAqbGlua2VkX3NlbF9mZXRjaF9hcmVhOw0KPiA+IA0KPiA+ICsgICAgICAgICAgICAg
ICAgICAgICBsaW5rZWRfbmV3X3BsYW5lX3N0YXRlID0NCj4gPiBpbnRlbF9hdG9taWNfZ2V0X3Bs
YW5lX3N0YXRlKHN0YXRlLCBsaW5rZWQpOw0KPiA+ICsgICAgICAgICAgICAgICAgICAgICBpZiAo
SVNfRVJSKGxpbmtlZF9uZXdfcGxhbmVfc3RhdGUpKQ0KPiA+ICsgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIHJldHVybiBQVFJfRVJSKGxpbmtlZF9uZXdfcGxhbmVfc3RhdGUpOw0KPiA+ICsN
Cj4gPiArICAgICAgICAgICAgICAgICAgICAgbGlua2VkX3NlbF9mZXRjaF9hcmVhID0NCj4gPiAm
bGlua2VkX25ld19wbGFuZV9zdGF0ZS0+cHNyMl9zZWxfZmV0Y2hfYXJlYTsNCj4gPiAgICAgICAg
ICAgICAgICAgICAgICAgbGlua2VkX3NlbF9mZXRjaF9hcmVhLT55MSA9IHNlbF9mZXRjaF9hcmVh
LT55MTsNCj4gPiAgICAgICAgICAgICAgICAgICAgICAgbGlua2VkX3NlbF9mZXRjaF9hcmVhLT55
MiA9IHNlbF9mZXRjaF9hcmVhLT55MjsNCj4gPiArICAgICAgICAgICAgICAgICAgICAgY3J0Y19z
dGF0ZS0+dXBkYXRlX3BsYW5lcyB8PSBCSVQobGlua2VkLT5pZCk7DQo+ID4gICAgICAgICAgICAg
ICB9DQo+ID4gICAgICAgfQ0KPiA+IA0KPiANCg0K
