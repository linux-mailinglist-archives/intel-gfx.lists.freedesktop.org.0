Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 34CF441B8C1
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Sep 2021 22:56:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F3AC46E995;
	Tue, 28 Sep 2021 20:56:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CFD986E995
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Sep 2021 20:56:01 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10121"; a="224873068"
X-IronPort-AV: E=Sophos;i="5.85,330,1624345200"; d="scan'208";a="224873068"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Sep 2021 13:56:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,330,1624345200"; d="scan'208";a="554300912"
Received: from irsmsx605.ger.corp.intel.com ([163.33.146.138])
 by FMSMGA003.fm.intel.com with ESMTP; 28 Sep 2021 13:56:00 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 IRSMSX605.ger.corp.intel.com (163.33.146.138) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Tue, 28 Sep 2021 21:55:59 +0100
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2242.012;
 Tue, 28 Sep 2021 13:55:57 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Deak, Imre" <imre.deak@intel.com>
Thread-Topic: [PATCH 13/13] drm/i915/tc: Fix system hang on ADL-P during TypeC
 PHY disconnect
Thread-Index: AQHXrn7qiLwrqpwPK0aD/5b9q1thnqu6cG+A
Date: Tue, 28 Sep 2021 20:55:57 +0000
Message-ID: <4815d931b077793601539ab14ee04b6b1c7d92ce.camel@intel.com>
References: <20210921002313.1132357-1-imre.deak@intel.com>
 <20210921002313.1132357-14-imre.deak@intel.com>
In-Reply-To: <20210921002313.1132357-14-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.132]
Content-Type: text/plain; charset="utf-8"
Content-ID: <5D8DE642E142BB4F9642ED0E1CD327F0@intel.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 13/13] drm/i915/tc: Fix system hang on ADL-P
 during TypeC PHY disconnect
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

T24gVHVlLCAyMDIxLTA5LTIxIGF0IDAzOjIzICswMzAwLCBJbXJlIERlYWsgd3JvdGU6DQo+IFRo
ZSBQSFkgb3duZXJzaGlwIHJlbGVhc2UtPkFVWCBQVyBkaXNhYmxlIHN0ZXBzIGR1cmluZyBhIG1v
ZGVzZXQNCj4gZGlzYWJsZS0+UEhZIGRpc2Nvbm5lY3Qgc2VxdWVuY2UgY2FuIGhhbmcgdGhlIHN5
c3RlbSBpZiB0aGUgUEhZDQo+IGRpc2Nvbm5lY3QgaGFwcGVucyBhZnRlciBkaXNhYmxpbmcgdGhl
IFBIWSdzIFBMTC4gVGhlIHNwZWMgZG9lc24ndA0KPiByZXF1aXJlIGEgc3BlY2lmaWMgb3JkZXIg
Zm9yIHRoZXNlIHR3byBzdGVwcywgc28gdGhpcyBpc3N1ZSBpcyBzdGlsbA0KPiBiZWluZyByb290
IGNhdXNlZCBieSBIVy9GVyB0ZWFtcy4gVW50aWwgdGhhdCBpcyBmb3VuZCwgbGV0J3MgbWFrZQ0K
PiBzdXJlIHRoZSBkaXNjb25uZWN0IGhhcHBlbnMgYmVmb3JlIHRoZSBQTEwgaXMgZGlzYWJsZWQs
IGFuZCBkbyB0aGlzIG9uDQo+IGFsbCBwbGF0Zm9ybXMgZm9yIGNvbnNpc3RlbmN5Lg0KPiANCj4g
Q2M6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPg0KPiBTaWdu
ZWQtb2ZmLWJ5OiBJbXJlIERlYWsgPGltcmUuZGVha0BpbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF90Yy5jIHwgNiArKysrKysNCj4gIDEgZmls
ZSBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKykNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3RjLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX3RjLmMNCj4gaW5kZXggOTliNjZjMjg1MmU1My4uZGM1MmI3NmJkNTdlMiAxMDA2
NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF90Yy5jDQo+ICsr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdGMuYw0KPiBAQCAtODEzLDYg
KzgxMywxMiBAQCB2b2lkIGludGVsX3RjX3BvcnRfcHV0X2xpbmsoc3RydWN0IGludGVsX2RpZ2l0
YWxfcG9ydCAqZGlnX3BvcnQpDQo+ICAJaW50ZWxfdGNfcG9ydF9sb2NrKGRpZ19wb3J0KTsNCj4g
IAktLWRpZ19wb3J0LT50Y19saW5rX3JlZmNvdW50Ow0KPiAgCWludGVsX3RjX3BvcnRfdW5sb2Nr
KGRpZ19wb3J0KTsNCj4gKw0KPiArCS8qDQo+ICsJICogRGlzY29ubmVjdGluZyB0aGUgUEhZIGFm
dGVyIHRoZSBQSFkncyBQTEwgZ2V0cyBkaXNhYmxlZCBtYXkNCj4gKwkgKiBoYW5nIHRoZSBzeXN0
ZW0gb24gQURMLVAsIHNvIGRpc2Nvbm5lY3QgdGhlIFBIWSBoZXJlIHN5bmNocm9ub3VzbHkuDQo+
ICsJICovDQoNClBsZWFzZSBhdCB0byB0aGUgY29tbWVudCB0aGF0IHRoaXMgaXMgdGVtcG9yYXJ5
IHdoaWxlIEhXL0ZXIHRlYWFtcyByb290IGNhdXNlIGl0Lg0KDQpXaXRoIHRoYXQ6DQpSZXZpZXdl
ZC1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+DQoNCj4g
KwlpbnRlbF90Y19wb3J0X2ZsdXNoX3dvcmsoZGlnX3BvcnQpOw0KPiAgfQ0KPiAgDQo+ICBzdGF0
aWMgYm9vbA0KDQo=
