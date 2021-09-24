Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BEB2E4168DE
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Sep 2021 02:17:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 42F456E12E;
	Fri, 24 Sep 2021 00:17:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 524C36E12E
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Sep 2021 00:17:56 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10116"; a="211210752"
X-IronPort-AV: E=Sophos;i="5.85,318,1624345200"; d="scan'208";a="211210752"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2021 17:17:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,318,1624345200"; d="scan'208";a="436804519"
Received: from irsmsx603.ger.corp.intel.com ([163.33.146.9])
 by orsmga003.jf.intel.com with ESMTP; 23 Sep 2021 17:17:55 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 irsmsx603.ger.corp.intel.com (163.33.146.9) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Fri, 24 Sep 2021 01:17:53 +0100
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2242.012;
 Thu, 23 Sep 2021 17:17:52 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Deak, Imre" <imre.deak@intel.com>
Thread-Topic: [PATCH 03/13] drm/i915/tc: Remove waiting for PHY complete
 during releasing ownership
Thread-Index: AQHXrn7jr270bNZed0uAVPNhRCcIAauyzSmA
Date: Fri, 24 Sep 2021 00:17:51 +0000
Message-ID: <47540da5f1a23d4b10cacefd388deba2880f7e79.camel@intel.com>
References: <20210921002313.1132357-1-imre.deak@intel.com>
 <20210921002313.1132357-4-imre.deak@intel.com>
In-Reply-To: <20210921002313.1132357-4-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.132]
Content-Type: text/plain; charset="utf-8"
Content-ID: <26EB72078C51BA41B18A9953090A3995@intel.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 03/13] drm/i915/tc: Remove waiting for PHY
 complete during releasing ownership
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

T24gVHVlLCAyMDIxLTA5LTIxIGF0IDAzOjIzICswMzAwLCBJbXJlIERlYWsgd3JvdGU6DQo+IFdh
aXRpbmcgZm9yIHRoZSBQSFkgY29tcGxldGUgZmxhZyB0byBjbGVhciB3aGVuIHJlbGVhc2luZyB0
aGUgUEhZDQo+IG93bmVyc2hpcCB3YXMgYWRkIGluDQo+IA0KPiBjb21taXQgZGRlYzM2MjcyNGY5
ICgiZHJtL2k5MTU6IFdhaXQgZm9yIFR5cGVDIFBIWSBjb21wbGV0ZSBmbGFnIHRvIGNsZWFyIGlu
IHNhZmUgbW9kZSIpDQo+IA0KPiBUaGlzIGlzbid0IHJlcXVpcmVkIGJ5IHRoZSBzcGVjLCB0aGUg
dmFndWUgaWRlYSB3YXMgdG8gbWFrZSB0aGUNCj4gaGFuZHNoYWtlIHdpdGggdGhlIGZpcm13YXJl
IG1vcmUgcm9idXN0LCB3aXRob3V0IGFjdHVhbCBldmlkZW5jZSBmb3INCj4gd2hlbiBpdCB3b3Vs
ZCBiZSBuZWVkZWQuIENoZWNraW5nIHRoaXMgYWdhaW4sIHRoZSBmbGFnIGRvZXNuJ3QgY2xlYXIg
b24NCj4gSUNMIHVudGlsIGFmdGVyIHRoZSBQSFkncyBQTEwgaXMgZGlzYWJsZWQgYW5kIHRoZSBm
bGFnIGlzIHBlcm1hbmVudGx5DQo+IHNldCBvbiBBREwtUC4gVG8gYXZvaWQgdGhlIHNwdXJpb3Vz
IHRpbWVvdXQgbWVzc2FnZXMgaW4gZG1lc2csIGp1c3QNCj4gcmVtb3ZlIHRoaXMgd2FpdC4NCg0K
UmV2aWV3ZWQtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29t
Pg0KDQo+IA0KPiBDYzogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5j
b20+DQo+IFNpZ25lZC1vZmYtYnk6IEltcmUgRGVhayA8aW1yZS5kZWFrQGludGVsLmNvbT4NCj4g
LS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3RjLmMgfCA1IC0tLS0t
DQo+ICAxIGZpbGUgY2hhbmdlZCwgNSBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3RjLmMgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX3RjLmMNCj4gaW5kZXggN2RjMzY5NjA4NWM3MS4uMGQzNTU1NDM3
YjBiMSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF90
Yy5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdGMuYw0KPiBA
QCAtMzM5LDExICszMzksNiBAQCBzdGF0aWMgYm9vbCBpY2xfdGNfcGh5X3Rha2Vfb3duZXJzaGlw
KHN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgKmRpZ19wb3J0LA0KPiAgCWludGVsX3VuY29yZV93
cml0ZSh1bmNvcmUsDQo+ICAJCQkgICBQT1JUX1RYX0RGTEVYRFBDU1NTKGRpZ19wb3J0LT50Y19w
aHlfZmlhKSwgdmFsKTsNCj4gIA0KPiAtCWlmICghdGFrZSAmJiB3YWl0X2ZvcighdGNfcGh5X3N0
YXR1c19jb21wbGV0ZShkaWdfcG9ydCksIDEwKSkNCj4gLQkJZHJtX2RiZ19rbXMoJmk5MTUtPmRy
bSwNCj4gLQkJCSAgICAiUG9ydCAlczogUEhZIGNvbXBsZXRlIGNsZWFyIHRpbWVkIG91dFxuIiwN
Cj4gLQkJCSAgICBkaWdfcG9ydC0+dGNfcG9ydF9uYW1lKTsNCj4gLQ0KPiAgCXJldHVybiB0cnVl
Ow0KPiAgfQ0KPiAgDQoNCg==
