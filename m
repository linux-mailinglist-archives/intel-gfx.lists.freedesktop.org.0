Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0004D2695EE
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Sep 2020 21:57:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C4086E56D;
	Mon, 14 Sep 2020 19:57:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EE6A96E56D
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Sep 2020 19:57:38 +0000 (UTC)
IronPort-SDR: NgM6rvNTyr7cidvQ+OSO/dES47VV22z4LSyqFXfiEBaOqvWNFRjs2EBUrDedcuU+XUzH/A3z93
 tuJ1eFUTp0mg==
X-IronPort-AV: E=McAfee;i="6000,8403,9744"; a="156546034"
X-IronPort-AV: E=Sophos;i="5.76,427,1592895600"; d="scan'208";a="156546034"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2020 12:57:38 -0700
IronPort-SDR: pOiwGzcy3pDmbplKsIZzFZyLPV3SyQ71xbBvtzcXBWBUQOkVSBVBHfOZ6gy8QNzEeWJQ5xwret
 ZuPfWqvY+OJg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,427,1592895600"; d="scan'208";a="301866591"
Received: from irsmsx601.ger.corp.intel.com ([163.33.146.7])
 by orsmga003.jf.intel.com with ESMTP; 14 Sep 2020 12:57:37 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 irsmsx601.ger.corp.intel.com (163.33.146.7) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 14 Sep 2020 20:57:35 +0100
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.1713.004;
 Mon, 14 Sep 2020 12:57:34 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Thread-Topic: [PATCH 2/4] drm/i915/display: Fix state of PSR2 sub features
Thread-Index: AQHWf/wnTN9lVOsUzkuuAq9065gTaalousgAgABeBAA=
Date: Mon, 14 Sep 2020 19:57:34 +0000
Message-ID: <f0b80d8f63f2b69ff6694b5a6bf55b7f7fd032b2.camel@intel.com>
References: <20200901010924.235808-1-jose.souza@intel.com>
 <20200901010924.235808-2-jose.souza@intel.com>
 <20200914142406.GN6112@intel.com>
In-Reply-To: <20200914142406.GN6112@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-ID: <0B52594883482040874B566DDA3C7ADC@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 2/4] drm/i915/display: Fix state of PSR2 sub
 features
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

T24gTW9uLCAyMDIwLTA5LTE0IGF0IDE3OjI0ICswMzAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
DQo+IE9uIE1vbiwgQXVnIDMxLCAyMDIwIGF0IDA2OjA5OjIyUE0gLTA3MDAsIEpvc8OpIFJvYmVy
dG8gZGUgU291emEgd3JvdGU6DQo+ID4gSW4gY2FzZSBQU1IyIGlzIGRpc2FibGVkIGJ5IGRlYnVn
ZnMgZGMzY29fZW5hYmxlZCBhbmQNCj4gPiBwc3IyX3NlbF9mZXRjaF9lbmFibGVkIHdlcmUgc3Rp
bGwgYmVpbmcgc2V0IGNhdXNpbmcgc29tZSBjb2RlIHBhdGhzDQo+ID4gdG8gYmUgZXhlY3V0ZWQg
d2VyZSBpdCBzaG91bGQgbm90Lg0KPiA+IFdlIGhhdmUgdGVzdHMgZm9yIFBTUjEgYW5kIFBTUjIg
c28ga2VlcCB0aG9zZSBmZWF0dXJlcyBkaXNhYmxlZCB3aGVuDQo+ID4gUFNSMSBpcyBhY3RpdmUg
YnV0IFBTUjIgaXMgc3VwcG9ydGVkIGlzIGltcG9ydGFudC4NCj4gPiANCj4gPiBDYzogR3dhbi1n
eWVvbmcgTXVuIDwNCj4gPiBnd2FuLWd5ZW9uZy5tdW5AaW50ZWwuY29tDQo+ID4gPg0KPiA+IENj
OiBWaWxsZSBTeXJqw6Rsw6QgPA0KPiA+IHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tDQo+
ID4gPg0KPiA+IFNpZ25lZC1vZmYtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPA0KPiA+IGpv
c2Uuc291emFAaW50ZWwuY29tDQo+ID4gPg0KPiA+IC0tLQ0KPiA+ICBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jIHwgMTEgKysrKysrKy0tLS0NCj4gPiAgMSBmaWxlIGNo
YW5nZWQsIDcgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkNCj4gPiANCj4gPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gPiBpbmRleCA0ZTA5YWU2MWQ0YWEu
LjY2OThkMDIwOTg3OSAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX3Bzci5jDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9wc3IuYw0KPiA+IEBAIC05NjIsMTIgKzk2MiwxNCBAQCBzdGF0aWMgdm9pZCBpbnRlbF9w
c3JfZW5hYmxlX2xvY2tlZChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsDQo+ID4g
IAlkZXZfcHJpdi0+cHNyLnBzcjJfZW5hYmxlZCA9IGludGVsX3BzcjJfZW5hYmxlZChkZXZfcHJp
diwgY3J0Y19zdGF0ZSk7DQo+ID4gIAlkZXZfcHJpdi0+cHNyLmJ1c3lfZnJvbnRidWZmZXJfYml0
cyA9IDA7DQo+ID4gIAlkZXZfcHJpdi0+cHNyLnBpcGUgPSB0b19pbnRlbF9jcnRjKGNydGNfc3Rh
dGUtPnVhcGkuY3J0YyktPnBpcGU7DQo+ID4gLQlkZXZfcHJpdi0+cHNyLmRjM2NvX2VuYWJsZWQg
PSAhIWNydGNfc3RhdGUtPmRjM2NvX2V4aXRsaW5lOw0KPiA+ICsJZGV2X3ByaXYtPnBzci5kYzNj
b19lbmFibGVkID0gISFjcnRjX3N0YXRlLT5kYzNjb19leGl0bGluZSAmJg0KPiA+ICsJCQkJICAg
ICAgZGV2X3ByaXYtPnBzci5wc3IyX2VuYWJsZWQ7DQo+ID4gIAlkZXZfcHJpdi0+cHNyLnRyYW5z
Y29kZXIgPSBjcnRjX3N0YXRlLT5jcHVfdHJhbnNjb2RlcjsNCj4gPiAgCS8qIERDNS9EQzYgcmVx
dWlyZXMgYXQgbGVhc3QgNiBpZGxlIGZyYW1lcyAqLw0KPiA+ICAJdmFsID0gdXNlY3NfdG9famlm
ZmllcyhpbnRlbF9nZXRfZnJhbWVfdGltZV91cyhjcnRjX3N0YXRlKSAqIDYpOw0KPiA+ICAJZGV2
X3ByaXYtPnBzci5kYzNjb19leGl0X2RlbGF5ID0gdmFsOw0KPiA+IC0JZGV2X3ByaXYtPnBzci5w
c3IyX3NlbF9mZXRjaF9lbmFibGVkID0gY3J0Y19zdGF0ZS0+ZW5hYmxlX3BzcjJfc2VsX2ZldGNo
Ow0KPiA+ICsJZGV2X3ByaXYtPnBzci5wc3IyX3NlbF9mZXRjaF9lbmFibGVkID0gY3J0Y19zdGF0
ZS0+ZW5hYmxlX3BzcjJfc2VsX2ZldGNoICYmDQo+ID4gKwkJCQkJICAgICAgIGRldl9wcml2LT5w
c3IucHNyMl9lbmFibGVkOw0KPiA+ICANCj4gPiAgCS8qDQo+ID4gIAkgKiBJZiBhIFBTUiBlcnJv
ciBoYXBwZW5lZCBhbmQgdGhlIGRyaXZlciBpcyByZWxvYWRlZCwgdGhlIEVEUF9QU1JfSUlSDQo+
ID4gQEAgLTExNzgsNyArMTE4MCw3IEBAIHZvaWQgaW50ZWxfcHNyMl9wcm9ncmFtX3RyYW5zX21h
bl90cmtfY3RsKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0DQo+ID4gIAlz
dHJ1Y3QgaTkxNV9wc3IgKnBzciA9ICZkZXZfcHJpdi0+cHNyOw0KPiA+ICANCj4gPiAgCWlmICgh
SEFTX1BTUjJfU0VMX0ZFVENIKGRldl9wcml2KSB8fA0KPiA+IC0JICAgICFjcnRjX3N0YXRlLT5l
bmFibGVfcHNyMl9zZWxfZmV0Y2gpDQo+ID4gKwkgICAgIWRldl9wcml2LT5wc3IucHNyMl9zZWxf
ZmV0Y2hfZW5hYmxlZCkNCj4gPiAgCQlyZXR1cm47DQo+ID4gIA0KPiA+ICAJaW50ZWxfZGVfd3Jp
dGUoZGV2X3ByaXYsIFBTUjJfTUFOX1RSS19DVEwocHNyLT50cmFuc2NvZGVyKSwNCj4gPiBAQCAt
MTE4OSw4ICsxMTkxLDkgQEAgdm9pZCBpbnRlbF9wc3IyX3NlbF9mZXRjaF91cGRhdGUoc3RydWN0
IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsDQo+ID4gIAkJCQkgc3RydWN0IGludGVsX2NydGMg
KmNydGMpDQo+ID4gIHsNCj4gPiAgCXN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRl
ID0gaW50ZWxfYXRvbWljX2dldF9uZXdfY3J0Y19zdGF0ZShzdGF0ZSwgY3J0Yyk7DQo+ID4gKwlz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGNydGMtPmJhc2UuZGV2
KTsNCj4gPiAgDQo+ID4gLQlpZiAoIWNydGNfc3RhdGUtPmVuYWJsZV9wc3IyX3NlbF9mZXRjaCkN
Cj4gPiArCWlmICghZGV2X3ByaXYtPnBzci5wc3IyX3NlbF9mZXRjaF9lbmFibGVkKQ0KPiANCj4g
VGhpcyBsb29rcyByYXRoZXIgc2tldGNoeS4gQUZBSUNTIHRoaXMgZ2V0cyBjYWxsZWQgZHVyaW5n
IGF0b21pY19jaGVjaygpDQo+IHNvIGxvb2tpbmcgYXQgc3R1ZmYgb3V0c2lkZSB0aGUgY3J0YyBz
dGF0ZSBpcyB2ZXJ5IHN1c3BpY2lvdXMuDQoNClRoaXMgaXMgY2FsbGVkIGFmdGVyIHRoZSBmdW5j
dGlvbnMgdGhhdCBjaGFuZ2UgdGhlIFBTUiBzdGF0ZSBzbyBubyBpc3N1ZXMsIGFsc28gd2UgY2Fu
J3QgcmVhbGx5IG9uIGluZm9ybWF0aW9uIGluIENSVEMgc3RhdGUsIGFzIFBTUiBpcyBvbmx5IGVu
YWJsZWQNCmlmIHN1cHBvcnRlZCBieSBzdGF0ZSwgaTkxNSBQU1IgcGFyYW1ldGVyIGFuZCBQU1Ig
ZGVidWcgZnMgdmFsdWUuDQoNCj4gDQo+ID4gIAkJcmV0dXJuOw0KPiA+ICANCj4gPiAgCWNydGNf
c3RhdGUtPnBzcjJfbWFuX3RyYWNrX2N0bCA9IFBTUjJfTUFOX1RSS19DVExfRU5BQkxFIHwNCj4g
PiAtLSANCj4gPiAyLjI4LjANCj4gDQo+IA0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4Cg==
