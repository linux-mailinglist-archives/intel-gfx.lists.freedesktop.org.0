Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 551CA43DB38
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Oct 2021 08:35:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2592A6E7DD;
	Thu, 28 Oct 2021 06:35:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1FCA66E7DD
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Oct 2021 06:35:04 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10150"; a="227790730"
X-IronPort-AV: E=Sophos;i="5.87,188,1631602800"; d="scan'208";a="227790730"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2021 23:35:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,188,1631602800"; d="scan'208";a="447556816"
Received: from irsmsx603.ger.corp.intel.com ([163.33.146.9])
 by orsmga006.jf.intel.com with ESMTP; 27 Oct 2021 23:35:03 -0700
Received: from irsmsx605.ger.corp.intel.com (163.33.146.138) by
 irsmsx603.ger.corp.intel.com (163.33.146.9) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Thu, 28 Oct 2021 07:35:02 +0100
Received: from irsmsx605.ger.corp.intel.com ([163.33.146.138]) by
 IRSMSX605.ger.corp.intel.com ([163.33.146.138]) with mapi id 15.01.2242.012;
 Thu, 28 Oct 2021 07:35:01 +0100
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Souza, Jose" <jose.souza@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "Hogander, Jouni" <jouni.hogander@intel.com>, "Nikula, Jani"
 <jani.nikula@intel.com>
Thread-Topic: [PATCH v2] drm/i915/adlp: Extend PSR2 support in transcoder B
Thread-Index: AQHXy1xlFhmHL1NlrUGWomlrUIhBXavn9ORw
Date: Thu, 28 Oct 2021 06:35:01 +0000
Message-ID: <b4a8ce7871f5487aab62991d44dec142@intel.com>
References: <20211027180545.55660-1-jose.souza@intel.com>
In-Reply-To: <20211027180545.55660-1-jose.souza@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.253.164]
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/adlp: Extend PSR2 support in
 transcoder B
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBTb3V6YSwgSm9zZSA8am9zZS5z
b3V6YUBpbnRlbC5jb20+DQo+IFNlbnQ6IFdlZG5lc2RheSwgT2N0b2JlciAyNywgMjAyMSA5OjA2
IFBNDQo+IFRvOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENjOiBIb2dhbmRl
ciwgSm91bmkgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT47IE5pa3VsYSwgSmFuaQ0KPiA8amFu
aS5uaWt1bGFAaW50ZWwuY29tPjsgS2Fob2xhLCBNaWthIDxtaWthLmthaG9sYUBpbnRlbC5jb20+
OyBTb3V6YSwgSm9zZQ0KPiA8am9zZS5zb3V6YUBpbnRlbC5jb20+DQo+IFN1YmplY3Q6IFtQQVRD
SCB2Ml0gZHJtL2k5MTUvYWRscDogRXh0ZW5kIFBTUjIgc3VwcG9ydCBpbiB0cmFuc2NvZGVyIEIN
Cj4gDQo+IFBTUjIgaXMgc3VwcG9ydGVkIGluIHRyYW5zY29kZXIgQSBhbmQgQiBvbiBBbGRlcmxh
a2UtUC4NCj4gDQo+IHYyOg0KPiAtIGV4cGxpY2l0eSBjaGVja2luZyBmb3IgdHJhbnNjb2RlciBB
IGFuZCBCIHRvIGF2b2lkIGludmFsaWQgdHJhbnNjb2Rlcg0KPiANCj4gQlNwZWM6IDQ5MTg1DQo+
IFJldmlld2VkLWJ5OiBKb3VuaSBIw7ZnYW5kZXIgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4g
IyB2MQ0KDQpSZXZpZXdlZC1ieTogTWlrYSBLYWhvbGEgPG1pa2Eua2Fob2xhQGludGVsLmNvbT4g
IyB2Mg0KDQo+IENjOiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPg0KPiBDYzog
TWlrYSBLYWhvbGEgPG1pa2Eua2Fob2xhQGludGVsLmNvbT4NCj4gQ2M6IEpvdW5pIEhvZ2FuZGVy
IDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IFNpZ25lZC1vZmYtYnk6IEpvc8OpIFJvYmVy
dG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMgfCA0ICsrKy0NCj4gIDEgZmlsZSBjaGFuZ2Vk
LCAzIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+IGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiBpbmRleCA4ZDA4ZTNjZjA4YzFmLi4zM2I1MDY0
NmI5Yzk3IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X3Bzci5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMN
Cj4gQEAgLTU4OCw3ICs1ODgsOSBAQCBzdGF0aWMgdm9pZCBoc3dfYWN0aXZhdGVfcHNyMihzdHJ1
Y3QgaW50ZWxfZHAgKmludGVsX2RwKQ0KPiBzdGF0aWMgYm9vbCAgdHJhbnNjb2Rlcl9oYXNfcHNy
MihzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsIGVudW0NCj4gdHJhbnNjb2RlciB0
cmFucykgIHsNCj4gLQlpZiAoRElTUExBWV9WRVIoZGV2X3ByaXYpID49IDEyKQ0KPiArCWlmIChJ
U19BTERFUkxBS0VfUChkZXZfcHJpdikpDQo+ICsJCXJldHVybiB0cmFucyA9PSBUUkFOU0NPREVS
X0EgfHwgdHJhbnMgPT0gVFJBTlNDT0RFUl9COw0KPiArCWVsc2UgaWYgKERJU1BMQVlfVkVSKGRl
dl9wcml2KSA+PSAxMikNCj4gIAkJcmV0dXJuIHRyYW5zID09IFRSQU5TQ09ERVJfQTsNCj4gIAll
bHNlDQo+ICAJCXJldHVybiB0cmFucyA9PSBUUkFOU0NPREVSX0VEUDsNCj4gLS0NCj4gMi4zMy4x
DQoNCg==
