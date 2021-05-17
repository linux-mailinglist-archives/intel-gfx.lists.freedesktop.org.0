Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BF241382480
	for <lists+intel-gfx@lfdr.de>; Mon, 17 May 2021 08:39:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 133EF6E8CA;
	Mon, 17 May 2021 06:39:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CFBCF6E8CA
 for <intel-gfx@lists.freedesktop.org>; Mon, 17 May 2021 06:39:39 +0000 (UTC)
IronPort-SDR: dNtn81qbmbdQ0W4D8WyT3DtpQWLj6+G3p5i4JOxgN1tliZFOsF1dLlpwwV2mrCbT20nrmDJCTP
 09X8sYdoxUlw==
X-IronPort-AV: E=McAfee;i="6200,9189,9986"; a="187519342"
X-IronPort-AV: E=Sophos;i="5.82,306,1613462400"; d="scan'208";a="187519342"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2021 23:39:39 -0700
IronPort-SDR: LAErMnHbi3/l081ihj7V1d/+8rWQNepGi3i7A2gdeF0zpLqbH6ZtSwLSmxpZzTUIGN4VuDuqKS
 KgfIBqpyeWVg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,306,1613462400"; d="scan'208";a="460170145"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga004.fm.intel.com with ESMTP; 16 May 2021 23:39:38 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Sun, 16 May 2021 23:39:38 -0700
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Sun, 16 May 2021 23:39:37 -0700
Received: from bgsmsx604.gar.corp.intel.com ([10.67.234.6]) by
 BGSMSX604.gar.corp.intel.com ([10.67.234.6]) with mapi id 15.01.2106.013;
 Mon, 17 May 2021 12:09:35 +0530
From: "Gupta, Anshuman" <anshuman.gupta@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v4 15/23] drm/i915/display: Replace dc3co_enabled with
 dc3co_exitline on intel_psr struct
Thread-Index: AQHXSTfofHbqvl4PUkqNmtzbyHOLsarnO25w
Date: Mon, 17 May 2021 06:39:34 +0000
Message-ID: <2bf20ff9aada49ffa65335aad6cd1328@intel.com>
References: <20210515031035.2561658-1-matthew.d.roper@intel.com>
 <20210515031035.2561658-16-matthew.d.roper@intel.com>
In-Reply-To: <20210515031035.2561658-16-matthew.d.roper@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.5.1.3
dlp-reaction: no-action
x-originating-ip: [10.223.10.1]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v4 15/23] drm/i915/display: Replace
 dc3co_enabled with dc3co_exitline on intel_psr struct
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogUm9wZXIsIE1hdHRoZXcg
RCA8bWF0dGhldy5kLnJvcGVyQGludGVsLmNvbT4NCj4gU2VudDogU2F0dXJkYXksIE1heSAxNSwg
MjAyMSA4OjQwIEFNDQo+IFRvOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENj
OiBNdW4sIEd3YW4tZ3llb25nIDxnd2FuLWd5ZW9uZy5tdW5AaW50ZWwuY29tPjsgVmlsbGUgU3ly
asOkbMOkDQo+IDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT47IFNvdXphLCBKb3NlIDxq
b3NlLnNvdXphQGludGVsLmNvbT47IEd1cHRhLA0KPiBBbnNodW1hbiA8YW5zaHVtYW4uZ3VwdGFA
aW50ZWwuY29tPjsgUm9wZXIsIE1hdHRoZXcgRA0KPiA8bWF0dGhldy5kLnJvcGVyQGludGVsLmNv
bT4NCj4gU3ViamVjdDogW1BBVENIIHY0IDE1LzIzXSBkcm0vaTkxNS9kaXNwbGF5OiBSZXBsYWNl
IGRjM2NvX2VuYWJsZWQgd2l0aA0KPiBkYzNjb19leGl0bGluZSBvbiBpbnRlbF9wc3Igc3RydWN0
DQo+IA0KPiBGcm9tOiBHd2FuLWd5ZW9uZyBNdW4gPGd3YW4tZ3llb25nLm11bkBpbnRlbC5jb20+
DQo+IA0KPiBJdCByZXBsYWNlcyBkYzNjb19lbmFibGVkIHdpdGggZGMzY29fZXhpdGxpbmUgb24g
aW50ZWxfcHNyIHN0cnVjdC4gIEFuZCBpdCBzYXZlcw0KPiBkYzNjb19leGl0bGluZSwgbm90IGRj
M2NvX2VuYWJsZWQsIHNvIHdlIGNhbiB1c2UgZGMzY29fZXhpdGxpbmUgd2l0aG91dA0KPiBpbnRl
bF9jcnRjX3N0YXRlIG9uIG90aGVyIHBzciBpbnRlcm5hbCBmdW5jdGlvbiBsaWtlIGFzIGludGVs
X3Bzcl9lbmFibGVfc291cmNlKCkuDQo+IA0KPiBDYzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5z
eXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gQ2M6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpv
c2Uuc291emFAaW50ZWwuY29tPg0KPiBDYzogQW5zaHVtYW4gR3VwdGEgPGFuc2h1bWFuLmd1cHRh
QGludGVsLmNvbT4NCj4gU2lnbmVkLW9mZi1ieTogR3dhbi1neWVvbmcgTXVuIDxnd2FuLWd5ZW9u
Zy5tdW5AaW50ZWwuY29tPg0KPiBTaWduZWQtb2ZmLWJ5OiBNYXR0IFJvcGVyIDxtYXR0aGV3LmQu
cm9wZXJAaW50ZWwuY29tPg0KTG9va3MgZ29vZCB0byBtZS4NClJldmlld2VkLWJ5OiBBbnNodW1h
biBHdXB0YSA8YW5zaHVtYW4uZ3VwdGFAaW50ZWwuY29tPg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oIHwgIDIgKy0NCj4gIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMgICAgICAgICAgIHwgMTAgKysrKyst
LS0tLQ0KPiAgMiBmaWxlcyBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKyksIDYgZGVsZXRpb25zKC0p
DQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
aXNwbGF5X3R5cGVzLmgNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rp
c3BsYXlfdHlwZXMuaA0KPiBpbmRleCA5ZTlmNzY4ZTJkN2YuLmI4ZDFmNzAyZDgwOCAxMDA2NDQN
Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVz
LmgNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5
cGVzLmgNCj4gQEAgLTE0OTgsNyArMTQ5OCw3IEBAIHN0cnVjdCBpbnRlbF9wc3Igew0KPiAgCWJv
b2wgc2lua19ub3RfcmVsaWFibGU7DQo+ICAJYm9vbCBpcnFfYXV4X2Vycm9yOw0KPiAgCXUxNiBz
dV94X2dyYW51bGFyaXR5Ow0KPiAtCWJvb2wgZGMzY29fZW5hYmxlZDsNCj4gKwl1MzIgZGMzY29f
ZXhpdGxpbmU7DQo+ICAJdTMyIGRjM2NvX2V4aXRfZGVsYXk7DQo+ICAJc3RydWN0IGRlbGF5ZWRf
d29yayBkYzNjb193b3JrOw0KPiAgCXN0cnVjdCBkcm1fZHBfdnNjX3NkcCB2c2M7DQo+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+IGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiBpbmRleCBhY2FmM2Q0NTk4
MjEuLjViYWZkMGRlNmFkOSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9wc3IuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX3Bzci5jDQo+IEBAIC02MzgsNyArNjM4LDcgQEAgc3RhdGljIHZvaWQgdGdsX2RjM2NvX2Rp
c2FibGVfd29yayhzdHJ1Y3Qgd29ya19zdHJ1Y3QNCj4gKndvcmspDQo+IA0KPiAgc3RhdGljIHZv
aWQgdGdsX2Rpc2FsbG93X2RjM2NvX29uX3BzcjJfZXhpdChzdHJ1Y3QgaW50ZWxfZHAgKmludGVs
X2RwKSAgew0KPiAtCWlmICghaW50ZWxfZHAtPnBzci5kYzNjb19lbmFibGVkKQ0KPiArCWlmICgh
aW50ZWxfZHAtPnBzci5kYzNjb19leGl0bGluZSkNCj4gIAkJcmV0dXJuOw0KPiANCj4gIAljYW5j
ZWxfZGVsYXllZF93b3JrKCZpbnRlbF9kcC0+cHNyLmRjM2NvX3dvcmspOw0KPiBAQCAtMTAxMCw3
ICsxMDEwLDcgQEAgc3RhdGljIHZvaWQgaW50ZWxfcHNyX2VuYWJsZV9zb3VyY2Uoc3RydWN0IGlu
dGVsX2RwDQo+ICppbnRlbF9kcCwNCj4gDQo+ICAJcHNyX2lycV9jb250cm9sKGludGVsX2RwKTsN
Cj4gDQo+IC0JaWYgKGNydGNfc3RhdGUtPmRjM2NvX2V4aXRsaW5lKSB7DQo+ICsJaWYgKGludGVs
X2RwLT5wc3IuZGMzY29fZXhpdGxpbmUpIHsNCj4gIAkJdTMyIHZhbDsNCj4gDQo+ICAJCS8qDQo+
IEBAIC0xMDE5LDcgKzEwMTksNyBAQCBzdGF0aWMgdm9pZCBpbnRlbF9wc3JfZW5hYmxlX3NvdXJj
ZShzdHJ1Y3QgaW50ZWxfZHANCj4gKmludGVsX2RwLA0KPiAgCQkgKi8NCj4gIAkJdmFsID0gaW50
ZWxfZGVfcmVhZChkZXZfcHJpdiwgRVhJVExJTkUoY3B1X3RyYW5zY29kZXIpKTsNCj4gIAkJdmFs
ICY9IH5FWElUTElORV9NQVNLOw0KPiAtCQl2YWwgfD0gY3J0Y19zdGF0ZS0+ZGMzY29fZXhpdGxp
bmUgPDwgRVhJVExJTkVfU0hJRlQ7DQo+ICsJCXZhbCB8PSBpbnRlbF9kcC0+cHNyLmRjM2NvX2V4
aXRsaW5lIDw8IEVYSVRMSU5FX1NISUZUOw0KPiAgCQl2YWwgfD0gRVhJVExJTkVfRU5BQkxFOw0K
PiAgCQlpbnRlbF9kZV93cml0ZShkZXZfcHJpdiwgRVhJVExJTkUoY3B1X3RyYW5zY29kZXIpLCB2
YWwpOw0KPiAgCX0NCj4gQEAgLTEwNDQsMTEgKzEwNDQsMTEgQEAgc3RhdGljIHZvaWQgaW50ZWxf
cHNyX2VuYWJsZV9sb2NrZWQoc3RydWN0IGludGVsX2RwDQo+ICppbnRlbF9kcCwNCj4gIAlpbnRl
bF9kcC0+cHNyLnBzcjJfZW5hYmxlZCA9IGNydGNfc3RhdGUtPmhhc19wc3IyOw0KPiAgCWludGVs
X2RwLT5wc3IuYnVzeV9mcm9udGJ1ZmZlcl9iaXRzID0gMDsNCj4gIAlpbnRlbF9kcC0+cHNyLnBp
cGUgPSB0b19pbnRlbF9jcnRjKGNydGNfc3RhdGUtPnVhcGkuY3J0YyktPnBpcGU7DQo+IC0JaW50
ZWxfZHAtPnBzci5kYzNjb19lbmFibGVkID0gISFjcnRjX3N0YXRlLT5kYzNjb19leGl0bGluZTsN
Cj4gIAlpbnRlbF9kcC0+cHNyLnRyYW5zY29kZXIgPSBjcnRjX3N0YXRlLT5jcHVfdHJhbnNjb2Rl
cjsNCj4gIAkvKiBEQzUvREM2IHJlcXVpcmVzIGF0IGxlYXN0IDYgaWRsZSBmcmFtZXMgKi8NCj4g
IAl2YWwgPSB1c2Vjc190b19qaWZmaWVzKGludGVsX2dldF9mcmFtZV90aW1lX3VzKGNydGNfc3Rh
dGUpICogNik7DQo+ICAJaW50ZWxfZHAtPnBzci5kYzNjb19leGl0X2RlbGF5ID0gdmFsOw0KPiAr
CWludGVsX2RwLT5wc3IuZGMzY29fZXhpdGxpbmUgPSBjcnRjX3N0YXRlLT5kYzNjb19leGl0bGlu
ZTsNCj4gIAlpbnRlbF9kcC0+cHNyLnBzcjJfc2VsX2ZldGNoX2VuYWJsZWQgPSBjcnRjX3N0YXRl
LQ0KPiA+ZW5hYmxlX3BzcjJfc2VsX2ZldGNoOw0KPiANCj4gIAkvKg0KPiBAQCAtMTgxOCw3ICsx
ODE4LDcgQEAgdGdsX2RjM2NvX2ZsdXNoKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsIHVuc2ln
bmVkDQo+IGludCBmcm9udGJ1ZmZlcl9iaXRzLCAgew0KPiAgCW11dGV4X2xvY2soJmludGVsX2Rw
LT5wc3IubG9jayk7DQo+IA0KPiAtCWlmICghaW50ZWxfZHAtPnBzci5kYzNjb19lbmFibGVkKQ0K
PiArCWlmICghaW50ZWxfZHAtPnBzci5kYzNjb19leGl0bGluZSkNCj4gIAkJZ290byB1bmxvY2s7
DQo+IA0KPiAgCWlmICghaW50ZWxfZHAtPnBzci5wc3IyX2VuYWJsZWQgfHwgIWludGVsX2RwLT5w
c3IuYWN0aXZlKQ0KPiAtLQ0KPiAyLjI1LjQNCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4Cg==
