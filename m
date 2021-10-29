Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FDB844031D
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Oct 2021 21:25:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A4EF26EA7D;
	Fri, 29 Oct 2021 19:25:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 37B6C6EA7D
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Oct 2021 19:25:20 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10152"; a="217918066"
X-IronPort-AV: E=Sophos;i="5.87,193,1631602800"; d="scan'208";a="217918066"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2021 12:25:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,193,1631602800"; d="scan'208";a="466629002"
Received: from irsmsx601.ger.corp.intel.com ([163.33.146.7])
 by orsmga002.jf.intel.com with ESMTP; 29 Oct 2021 12:25:19 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 irsmsx601.ger.corp.intel.com (163.33.146.7) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Fri, 29 Oct 2021 20:25:17 +0100
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2242.012;
 Fri, 29 Oct 2021 12:25:15 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Hogander, Jouni" <jouni.hogander@intel.com>
CC: "Kahola, Mika" <mika.kahola@intel.com>
Thread-Topic: [PATCH 1/2] drm/i915/display: Add initial selective fetch
 support for biplanar formats
Thread-Index: AQHXxmPw39R35lpG60Os/t8lI5DV5avq38IA
Date: Fri, 29 Oct 2021 19:25:15 +0000
Message-ID: <f44923b4fda2403776d530ebe2615e2c0276002b.camel@intel.com>
References: <20211021101024.13112-1-jouni.hogander@intel.com>
 <20211021101024.13112-2-jouni.hogander@intel.com>
In-Reply-To: <20211021101024.13112-2-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.132]
Content-Type: text/plain; charset="utf-8"
Content-ID: <E9CF91914B8D7C48BCA5FC1AC347AC4E@intel.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/display: Add initial selective
 fetch support for biplanar formats
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

T24gVGh1LCAyMDIxLTEwLTIxIGF0IDEzOjEwICswMzAwLCBKb3VuaSBIw7ZnYW5kZXIgd3JvdGU6
DQo+IEJpcGxhbmFyIGZvcm1hdHMgYXJlIHVzaW5nIHR3byBwbGFuZXMgKFkgYW5kIFVWKS4gVGhp
cyBwYXRjaCBhZGRzIGhhbmRsaW5nDQo+IG9mIFkgc2VsZWN0aXZlIGZldGNoIGFyZWEgYnkgdXRp
bGl6aW5nIGV4aXN0aW5nIGxpbmtlZCBwbGFuZSBtZWNoYW5pc20uDQo+IEFsc28gVVYgcGxhbmUg
WSBvZmZzZXQgY29uZmlndXJhdGlvbiBpcyBtb2RpZmllZCBhY2NvcmRpbmcgdG8gQnNwZWMuDQo+
IA0KPiBTaWduZWQtb2ZmLWJ5OiBKb3VuaSBIw7ZnYW5kZXIgPGpvdW5pLmhvZ2FuZGVyQGludGVs
LmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5j
IHwgMzAgKysrKysrKysrKysrKysrKysrKysrLS0tDQo+ICAxIGZpbGUgY2hhbmdlZCwgMjcgaW5z
ZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9wc3IuYw0KPiBpbmRleCA0OWMyZGZiZDQwNTUuLjQ2OWJmOTUxNzhmMyAxMDA2
NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiAr
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+IEBAIC0xNDY3
LDEwICsxNDY3LDE5IEBAIHZvaWQgaW50ZWxfcHNyMl9wcm9ncmFtX3BsYW5lX3NlbF9mZXRjaChz
dHJ1Y3QgaW50ZWxfcGxhbmUgKnBsYW5lLA0KPiAgCXZhbCB8PSBwbGFuZV9zdGF0ZS0+dWFwaS5k
c3QueDE7DQo+ICAJaW50ZWxfZGVfd3JpdGVfZncoZGV2X3ByaXYsIFBMQU5FX1NFTF9GRVRDSF9Q
T1MocGlwZSwgcGxhbmUtPmlkKSwgdmFsKTsNCj4gIA0KPiAtCS8qIFRPRE86IGNvbnNpZGVyIGF1
eGlsaWFyeSBzdXJmYWNlcyAqLw0KPiAtCXggPSBwbGFuZV9zdGF0ZS0+dWFwaS5zcmMueDEgPj4g
MTY7DQo+IC0JeSA9IChwbGFuZV9zdGF0ZS0+dWFwaS5zcmMueTEgPj4gMTYpICsgY2xpcC0+eTE7
DQo+ICsJeCA9IHBsYW5lX3N0YXRlLT52aWV3LmNvbG9yX3BsYW5lW2NvbG9yX3BsYW5lXS54Ow0K
PiArDQo+ICsJLyoNCj4gKwkgKiBGcm9tIEJzcGVjOiBVViBzdXJmYWNlIFN0YXJ0IFkgUG9zaXRp
b24gPSBoYWxmIG9mIFkgcGxhbmUgWQ0KPiArCSAqIHN0YXJ0IHBvc2l0aW9uLg0KPiArCSAqLw0K
PiArCWlmICghY29sb3JfcGxhbmUpDQo+ICsJCXkgPSBwbGFuZV9zdGF0ZS0+dmlldy5jb2xvcl9w
bGFuZVtjb2xvcl9wbGFuZV0ueSArIGNsaXAtPnkxOw0KPiArCWVsc2UNCj4gKwkJeSA9IHBsYW5l
X3N0YXRlLT52aWV3LmNvbG9yX3BsYW5lW2NvbG9yX3BsYW5lXS55ICsgY2xpcC0+eTEgLyAyOw0K
DQpNYXRjaGVzIGJzcGVjIGJ1dCBJJ20gbm90IGFuIGV4cGVydCBpbiBjb2xvcmltZXRyeSBub3Qg
c3VyZSBpZiBpdCBpcyBtaXNzaW5nIGhhbmRsaW5nIGZvciBvdGhlciBub24tUkdCIGZvcm1hdC4N
CkxldCBzaGlwIHdpdGggaXQgYW5kIGZpeCBvbiB0b3AgYnV0IHdvdWxkIGJlIG5pY2UgdG8gYXNr
IGFyb3VuZCBpZiB3ZSBhcmUgbWlzc2luZyBjYXNlcyBmb3Igb3RoZXIgZm9ybWF0cy4NCg0KPiAr
DQo+ICAJdmFsID0geSA8PCAxNiB8IHg7DQo+ICsNCj4gIAlpbnRlbF9kZV93cml0ZV9mdyhkZXZf
cHJpdiwgUExBTkVfU0VMX0ZFVENIX09GRlNFVChwaXBlLCBwbGFuZS0+aWQpLA0KPiAgCQkJICB2
YWwpOw0KPiAgDQo+IEBAIC0xNzAwLDYgKzE3MDksNyBAQCBpbnQgaW50ZWxfcHNyMl9zZWxfZmV0
Y2hfdXBkYXRlKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLA0KPiAgCWZvcl9lYWNo
X29sZG5ld19pbnRlbF9wbGFuZV9pbl9zdGF0ZShzdGF0ZSwgcGxhbmUsIG9sZF9wbGFuZV9zdGF0
ZSwNCj4gIAkJCQkJICAgICBuZXdfcGxhbmVfc3RhdGUsIGkpIHsNCj4gIAkJc3RydWN0IGRybV9y
ZWN0ICpzZWxfZmV0Y2hfYXJlYSwgaW50ZXI7DQo+ICsJCXN0cnVjdCBpbnRlbF9wbGFuZSAqbGlu
a2VkID0gbmV3X3BsYW5lX3N0YXRlLT5wbGFuYXJfbGlua2VkX3BsYW5lOw0KPiAgDQo+ICAJCWlm
IChuZXdfcGxhbmVfc3RhdGUtPnVhcGkuY3J0YyAhPSBjcnRjX3N0YXRlLT51YXBpLmNydGMgfHwN
Cj4gIAkJICAgICFuZXdfcGxhbmVfc3RhdGUtPnVhcGkudmlzaWJsZSkNCj4gQEAgLTE3MTgsNiAr
MTcyOCwyMCBAQCBpbnQgaW50ZWxfcHNyMl9zZWxfZmV0Y2hfdXBkYXRlKHN0cnVjdCBpbnRlbF9h
dG9taWNfc3RhdGUgKnN0YXRlLA0KPiAgCQlzZWxfZmV0Y2hfYXJlYS0+eTEgPSBpbnRlci55MSAt
IG5ld19wbGFuZV9zdGF0ZS0+dWFwaS5kc3QueTE7DQo+ICAJCXNlbF9mZXRjaF9hcmVhLT55MiA9
IGludGVyLnkyIC0gbmV3X3BsYW5lX3N0YXRlLT51YXBpLmRzdC55MTsNCj4gIAkJY3J0Y19zdGF0
ZS0+dXBkYXRlX3BsYW5lcyB8PSBCSVQocGxhbmUtPmlkKTsNCj4gKw0KPiArCQkvKg0KPiArCQkg
KiBTZWxfZmV0Y2hfYXJlYSBpcyBjYWxjdWxhdGVkIGZvciBVViBwbGFuZS4gVXNlDQo+ICsJCSAq
IHNhbWUgYXJlYSBmb3IgWSBwbGFuZSBhcyB3ZWxsLg0KPiArCQkgKi8NCj4gKwkJaWYgKGxpbmtl
ZCkgew0KPiArCQkJc3RydWN0IGludGVsX3BsYW5lX3N0YXRlICpsaW5rZWRfbmV3X3BsYW5lX3N0
YXRlID0NCj4gKwkJCSAgaW50ZWxfYXRvbWljX2dldF9uZXdfcGxhbmVfc3RhdGUoc3RhdGUsIGxp
bmtlZCk7DQo+ICsJCQlzdHJ1Y3QgZHJtX3JlY3QgKmxpbmtlZF9zZWxfZmV0Y2hfYXJlYSA9DQo+
ICsJCQkgICZsaW5rZWRfbmV3X3BsYW5lX3N0YXRlLT5wc3IyX3NlbF9mZXRjaF9hcmVhOw0KPiAr
DQo+ICsJCQlsaW5rZWRfc2VsX2ZldGNoX2FyZWEtPnkxID0gc2VsX2ZldGNoX2FyZWEtPnkxOw0K
PiArCQkJbGlua2VkX3NlbF9mZXRjaF9hcmVhLT55MiA9IHNlbF9mZXRjaF9hcmVhLT55MjsNCg0K
T2theSB0aGlzIGlzIG5lZWRlZCBiZWNhdXNlIHRoZSBzbGF2ZSBwbGFuZSBoYXMgdmlzaWJsZSA9
IGZhbHNlLg0KDQpSZXZpZXdlZC1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6
YUBpbnRlbC5jb20+DQoNCj4gKwkJfQ0KPiAgCX0NCj4gIA0KPiAgc2tpcF9zZWxfZmV0Y2hfc2V0
X2xvb3A6DQoNCg==
