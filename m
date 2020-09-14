Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C617B269738
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Sep 2020 22:56:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1980689F0B;
	Mon, 14 Sep 2020 20:56:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C1BD889F0B
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Sep 2020 20:56:22 +0000 (UTC)
IronPort-SDR: 2szMqjHxJzajnNaI9RYdqL37wt9pGxVvykF/QSITiG/MF+tXPg0eWr9+a1PZ5oJE0xKT7DmTPO
 jI/3ClY9PBsw==
X-IronPort-AV: E=McAfee;i="6000,8403,9744"; a="160095580"
X-IronPort-AV: E=Sophos;i="5.76,427,1592895600"; d="scan'208";a="160095580"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2020 13:56:16 -0700
IronPort-SDR: ZVJgNtQVqQutTbKYUMZ0i+EbCjBMKU9MT2vMc0QTSXurbQeZU8TzcMZluu/LbYes6GeKdM7o8v
 gBADUq0+E5zw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,427,1592895600"; d="scan'208";a="507284851"
Received: from irsmsx602.ger.corp.intel.com ([163.33.146.8])
 by fmsmga005.fm.intel.com with ESMTP; 14 Sep 2020 13:56:15 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 irsmsx602.ger.corp.intel.com (163.33.146.8) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 14 Sep 2020 21:56:14 +0100
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.1713.004;
 Mon, 14 Sep 2020 13:56:12 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Thread-Topic: [PATCH 2/4] drm/i915/display: Fix state of PSR2 sub features
Thread-Index: AQHWf/wnTN9lVOsUzkuuAq9065gTaalousgAgABeBACAAAhmAIAAB/wA
Date: Mon, 14 Sep 2020 20:56:12 +0000
Message-ID: <60200aa55b5abfae8a12c32fa3377d6782d2bc44.camel@intel.com>
References: <20200901010924.235808-1-jose.souza@intel.com>
 <20200901010924.235808-2-jose.souza@intel.com>
 <20200914142406.GN6112@intel.com>
 <f0b80d8f63f2b69ff6694b5a6bf55b7f7fd032b2.camel@intel.com>
 <20200914203040.GD6112@intel.com>
In-Reply-To: <20200914203040.GD6112@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-ID: <CABA2ABCADB80C4584EC7040E6145ECF@intel.com>
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

T24gTW9uLCAyMDIwLTA5LTE0IGF0IDIzOjMwICswMzAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
DQo+IE9uIE1vbiwgU2VwIDE0LCAyMDIwIGF0IDA3OjU3OjM0UE0gKzAwMDAsIFNvdXphLCBKb3Nl
IHdyb3RlOg0KPiA+IE9uIE1vbiwgMjAyMC0wOS0xNCBhdCAxNzoyNCArMDMwMCwgVmlsbGUgU3ly
asOkbMOkIHdyb3RlOg0KPiA+ID4gT24gTW9uLCBBdWcgMzEsIDIwMjAgYXQgMDY6MDk6MjJQTSAt
MDcwMCwgSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSB3cm90ZToNCj4gPiA+ID4gSW4gY2FzZSBQU1Iy
IGlzIGRpc2FibGVkIGJ5IGRlYnVnZnMgZGMzY29fZW5hYmxlZCBhbmQNCj4gPiA+ID4gcHNyMl9z
ZWxfZmV0Y2hfZW5hYmxlZCB3ZXJlIHN0aWxsIGJlaW5nIHNldCBjYXVzaW5nIHNvbWUgY29kZSBw
YXRocw0KPiA+ID4gPiB0byBiZSBleGVjdXRlZCB3ZXJlIGl0IHNob3VsZCBub3QuDQo+ID4gPiA+
IFdlIGhhdmUgdGVzdHMgZm9yIFBTUjEgYW5kIFBTUjIgc28ga2VlcCB0aG9zZSBmZWF0dXJlcyBk
aXNhYmxlZCB3aGVuDQo+ID4gPiA+IFBTUjEgaXMgYWN0aXZlIGJ1dCBQU1IyIGlzIHN1cHBvcnRl
ZCBpcyBpbXBvcnRhbnQuDQo+ID4gPiA+IA0KPiA+ID4gPiBDYzogR3dhbi1neWVvbmcgTXVuIDwN
Cj4gPiA+ID4gZ3dhbi1neWVvbmcubXVuQGludGVsLmNvbQ0KPiA+ID4gPiANCj4gPiA+ID4gDQo+
ID4gPiA+IENjOiBWaWxsZSBTeXJqw6Rsw6QgPA0KPiA+ID4gPiB2aWxsZS5zeXJqYWxhQGxpbnV4
LmludGVsLmNvbQ0KPiA+ID4gPiANCj4gPiA+ID4gDQo+ID4gPiA+IFNpZ25lZC1vZmYtYnk6IEpv
c8OpIFJvYmVydG8gZGUgU291emEgPA0KPiA+ID4gPiBqb3NlLnNvdXphQGludGVsLmNvbQ0KPiA+
ID4gPiANCj4gPiA+ID4gDQo+ID4gPiA+IC0tLQ0KPiA+ID4gPiAgZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9wc3IuYyB8IDExICsrKysrKystLS0tDQo+ID4gPiA+ICAxIGZpbGUg
Y2hhbmdlZCwgNyBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQ0KPiA+ID4gPiANCj4gPiA+
ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ID4gPiA+IGluZGV4
IDRlMDlhZTYxZDRhYS4uNjY5OGQwMjA5ODc5IDEwMDY0NA0KPiA+ID4gPiAtLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ID4gPiA+ICsrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gPiA+ID4gQEAgLTk2MiwxMiArOTYy
LDE0IEBAIHN0YXRpYyB2b2lkIGludGVsX3Bzcl9lbmFibGVfbG9ja2VkKHN0cnVjdCBkcm1faTkx
NV9wcml2YXRlICpkZXZfcHJpdiwNCj4gPiA+ID4gIAlkZXZfcHJpdi0+cHNyLnBzcjJfZW5hYmxl
ZCA9IGludGVsX3BzcjJfZW5hYmxlZChkZXZfcHJpdiwgY3J0Y19zdGF0ZSk7DQo+ID4gPiA+ICAJ
ZGV2X3ByaXYtPnBzci5idXN5X2Zyb250YnVmZmVyX2JpdHMgPSAwOw0KPiA+ID4gPiAgCWRldl9w
cml2LT5wc3IucGlwZSA9IHRvX2ludGVsX2NydGMoY3J0Y19zdGF0ZS0+dWFwaS5jcnRjKS0+cGlw
ZTsNCj4gPiA+ID4gLQlkZXZfcHJpdi0+cHNyLmRjM2NvX2VuYWJsZWQgPSAhIWNydGNfc3RhdGUt
PmRjM2NvX2V4aXRsaW5lOw0KPiA+ID4gPiArCWRldl9wcml2LT5wc3IuZGMzY29fZW5hYmxlZCA9
ICEhY3J0Y19zdGF0ZS0+ZGMzY29fZXhpdGxpbmUgJiYNCj4gPiA+ID4gKwkJCQkgICAgICBkZXZf
cHJpdi0+cHNyLnBzcjJfZW5hYmxlZDsNCj4gPiA+ID4gIAlkZXZfcHJpdi0+cHNyLnRyYW5zY29k
ZXIgPSBjcnRjX3N0YXRlLT5jcHVfdHJhbnNjb2RlcjsNCj4gPiA+ID4gIAkvKiBEQzUvREM2IHJl
cXVpcmVzIGF0IGxlYXN0IDYgaWRsZSBmcmFtZXMgKi8NCj4gPiA+ID4gIAl2YWwgPSB1c2Vjc190
b19qaWZmaWVzKGludGVsX2dldF9mcmFtZV90aW1lX3VzKGNydGNfc3RhdGUpICogNik7DQo+ID4g
PiA+ICAJZGV2X3ByaXYtPnBzci5kYzNjb19leGl0X2RlbGF5ID0gdmFsOw0KPiA+ID4gPiAtCWRl
dl9wcml2LT5wc3IucHNyMl9zZWxfZmV0Y2hfZW5hYmxlZCA9IGNydGNfc3RhdGUtPmVuYWJsZV9w
c3IyX3NlbF9mZXRjaDsNCj4gPiA+ID4gKwlkZXZfcHJpdi0+cHNyLnBzcjJfc2VsX2ZldGNoX2Vu
YWJsZWQgPSBjcnRjX3N0YXRlLT5lbmFibGVfcHNyMl9zZWxfZmV0Y2ggJiYNCj4gPiA+ID4gKwkJ
CQkJICAgICAgIGRldl9wcml2LT5wc3IucHNyMl9lbmFibGVkOw0KPiA+ID4gPiAgDQo+ID4gPiA+
ICAJLyoNCj4gPiA+ID4gIAkgKiBJZiBhIFBTUiBlcnJvciBoYXBwZW5lZCBhbmQgdGhlIGRyaXZl
ciBpcyByZWxvYWRlZCwgdGhlIEVEUF9QU1JfSUlSDQo+ID4gPiA+IEBAIC0xMTc4LDcgKzExODAs
NyBAQCB2b2lkIGludGVsX3BzcjJfcHJvZ3JhbV90cmFuc19tYW5fdHJrX2N0bChjb25zdCBzdHJ1
Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdA0KPiA+ID4gPiAgCXN0cnVjdCBpOTE1X3BzciAq
cHNyID0gJmRldl9wcml2LT5wc3I7DQo+ID4gPiA+ICANCj4gPiA+ID4gIAlpZiAoIUhBU19QU1Iy
X1NFTF9GRVRDSChkZXZfcHJpdikgfHwNCj4gPiA+ID4gLQkgICAgIWNydGNfc3RhdGUtPmVuYWJs
ZV9wc3IyX3NlbF9mZXRjaCkNCj4gPiA+ID4gKwkgICAgIWRldl9wcml2LT5wc3IucHNyMl9zZWxf
ZmV0Y2hfZW5hYmxlZCkNCj4gPiA+ID4gIAkJcmV0dXJuOw0KPiA+ID4gPiAgDQo+ID4gPiA+ICAJ
aW50ZWxfZGVfd3JpdGUoZGV2X3ByaXYsIFBTUjJfTUFOX1RSS19DVEwocHNyLT50cmFuc2NvZGVy
KSwNCj4gPiA+ID4gQEAgLTExODksOCArMTE5MSw5IEBAIHZvaWQgaW50ZWxfcHNyMl9zZWxfZmV0
Y2hfdXBkYXRlKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLA0KPiA+ID4gPiAgCQkJ
CSBzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YykNCj4gPiA+ID4gIHsNCj4gPiA+ID4gIAlzdHJ1Y3Qg
aW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSA9IGludGVsX2F0b21pY19nZXRfbmV3X2NydGNf
c3RhdGUoc3RhdGUsIGNydGMpOw0KPiA+ID4gPiArCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpk
ZXZfcHJpdiA9IHRvX2k5MTUoY3J0Yy0+YmFzZS5kZXYpOw0KPiA+ID4gPiAgDQo+ID4gPiA+IC0J
aWYgKCFjcnRjX3N0YXRlLT5lbmFibGVfcHNyMl9zZWxfZmV0Y2gpDQo+ID4gPiA+ICsJaWYgKCFk
ZXZfcHJpdi0+cHNyLnBzcjJfc2VsX2ZldGNoX2VuYWJsZWQpDQo+ID4gPiANCj4gPiA+IFRoaXMg
bG9va3MgcmF0aGVyIHNrZXRjaHkuIEFGQUlDUyB0aGlzIGdldHMgY2FsbGVkIGR1cmluZyBhdG9t
aWNfY2hlY2soKQ0KPiA+ID4gc28gbG9va2luZyBhdCBzdHVmZiBvdXRzaWRlIHRoZSBjcnRjIHN0
YXRlIGlzIHZlcnkgc3VzcGljaW91cy4NCj4gPiANCj4gPiBUaGlzIGlzIGNhbGxlZCBhZnRlciB0
aGUgZnVuY3Rpb25zIHRoYXQgY2hhbmdlIHRoZSBQU1Igc3RhdGUgc28gbm8gaXNzdWVzLCBhbHNv
IHdlIGNhbid0IHJlYWxseSBvbiBpbmZvcm1hdGlvbiBpbiBDUlRDIHN0YXRlLCBhcyBQU1IgaXMg
b25seSBlbmFibGVkDQo+ID4gaWYgc3VwcG9ydGVkIGJ5IHN0YXRlLCBpOTE1IFBTUiBwYXJhbWV0
ZXIgYW5kIFBTUiBkZWJ1ZyBmcyB2YWx1ZS4NCj4gDQo+IEkgc2VlIGl0IGdldHRpbmcgY2FsbGVk
IGZyb20gaW50ZWxfY3J0Y19hdG9taWNfY2hlY2soKS4gQ29uZnVzZWQuDQo+IEFtIEkgbWlzc2lu
ZyBzb21lIG90aGVyIHBhdGNoZXM/DQoNCkl0IGlzIHNldCBmcm9tIGludGVsX3Bzcl9kaXNhYmxl
KCksIGludGVsX3Bzcl9lbmFibGUoKSBhbmQgaW50ZWxfcHNyX3VwZGF0ZSgpIGFsbCBleGVjdXRl
ZCBiZWZvcmUgaW50ZWxfcHNyMl9zZWxfZmV0Y2hfdXBkYXRlKCkNCg0KaW50ZWxfZW5hYmxlX2Rk
aSgpDQoJaW50ZWxfZW5hYmxlX2RkaV9kcCgpDQoJCWludGVsX3Bzcl9lbmFibGUoKQ0KDQppbnRl
bF91cGRhdGVfY3J0YygpIHsNCglpZiAoIW1vZGVzZXQpIHsNCgkJaW50ZWxfZW5jb2RlcnNfdXBk
YXRlX3BpcGUoKQ0KCQkJZW5jb2Rlci0+dXBkYXRlX3BpcGUoKSAvIGludGVsX2RkaV91cGRhdGVf
cGlwZSgpDQoJCQkJaW50ZWxfZGRpX3VwZGF0ZV9waXBlX2RwKCkNCgkJCQkJaW50ZWxfcHNyX3Vw
ZGF0ZSgpDQoJfQ0KDQoJLi4uDQoJCQ0KCXNrbF91cGRhdGVfcGxhbmVzX29uX2NydGMoc3RhdGUs
IGNydGMpOw0KCQlpbnRlbF91cGRhdGVfcGxhbmUoKQ0KCQkJcGxhbmUtPnVwZGF0ZV9wbGFuZSgp
IC8gc2tsX3VwZGF0ZV9wbGFuZSgpDQoJCQkJc2tsX3Byb2dyYW1fcGxhbmUoKQ0KCQkJCQlpbnRl
bF9wc3IyX3NlbF9mZXRjaF91cGRhdGUoKQ0KfQ0KDQoNCj4gDQo+ID4gPiA+ICAJCXJldHVybjsN
Cj4gPiA+ID4gIA0KPiA+ID4gPiAgCWNydGNfc3RhdGUtPnBzcjJfbWFuX3RyYWNrX2N0bCA9IFBT
UjJfTUFOX1RSS19DVExfRU5BQkxFIHwNCj4gPiA+ID4gLS0gDQo+ID4gPiA+IDIuMjguMA0KPiA+
ID4gDQo+ID4gPiANCj4gDQo+IA0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtZ2Z4Cg==
