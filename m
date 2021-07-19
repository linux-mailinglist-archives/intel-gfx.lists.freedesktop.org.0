Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 229F83CEA6D
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Jul 2021 19:59:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 721286E104;
	Mon, 19 Jul 2021 17:59:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B05176E030
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 Jul 2021 17:59:19 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10050"; a="232879265"
X-IronPort-AV: E=Sophos;i="5.84,252,1620716400"; d="scan'208";a="232879265"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jul 2021 10:59:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,252,1620716400"; d="scan'208";a="468676446"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by fmsmga008.fm.intel.com with ESMTP; 19 Jul 2021 10:59:19 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Mon, 19 Jul 2021 10:59:18 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Mon, 19 Jul 2021 10:59:18 -0700
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2242.010;
 Mon, 19 Jul 2021 10:59:18 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 4/7] drm/i915/adl_s: Wa_14011765242 is also
 needed on A1 display stepping
Thread-Index: AQHXesqqmcCWEsxW+ECNR5rLCgNGt6tLEI8A
Date: Mon, 19 Jul 2021 17:59:17 +0000
Message-ID: <09a65fe1b58ed6069758d6881fe850b8c1f1ce3a.camel@intel.com>
References: <20210717051426.4120328-1-matthew.d.roper@intel.com>
 <20210717051426.4120328-5-matthew.d.roper@intel.com>
In-Reply-To: <20210717051426.4120328-5-matthew.d.roper@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.132]
Content-ID: <2A842BBBD6F3AF438EC3C50B4B650DE6@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 4/7] drm/i915/adl_s: Wa_14011765242 is also
 needed on A1 display stepping
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

T24gRnJpLCAyMDIxLTA3LTE2IGF0IDIyOjE0IC0wNzAwLCBNYXR0IFJvcGVyIHdyb3RlOg0KPiBF
eHRlbmQgdGhlIHdvcmthcm91bmQgYm91bmQgdG8gaW5jbHVkZSBBMSBkaXNwbGF5Lg0KPiANCg0K
UmV2aWV3ZWQtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29t
Pg0KDQo+IEJzcGVjOiA1NDM3MA0KPiBTaWduZWQtb2ZmLWJ5OiBNYXR0IFJvcGVyIDxtYXR0aGV3
LmQucm9wZXJAaW50ZWwuY29tPg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVs
X2RldmljZV9pbmZvLmMgfCA0ICsrLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3N0
ZXAuaCAgICAgICAgfCAxICsNCj4gIDIgZmlsZXMgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAy
IGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2lu
dGVsX2RldmljZV9pbmZvLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kZXZpY2VfaW5m
by5jDQo+IGluZGV4IGQyYTUxNGQyNTUxZC4uZGQ2M2RkMmM0NWFkIDEwMDY0NA0KPiAtLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kZXZpY2VfaW5mby5jDQo+ICsrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2ludGVsX2RldmljZV9pbmZvLmMNCj4gQEAgLTI2MSw4ICsyNjEsOCBAQCB2
b2lkIGludGVsX2RldmljZV9pbmZvX3J1bnRpbWVfaW5pdChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0
ZSAqZGV2X3ByaXYpDQo+ICAJc3RydWN0IGludGVsX3J1bnRpbWVfaW5mbyAqcnVudGltZSA9IFJV
TlRJTUVfSU5GTyhkZXZfcHJpdik7DQo+ICAJZW51bSBwaXBlIHBpcGU7DQo+ICANCj4gLQkvKiBX
YV8xNDAxMTc2NTI0MjogYWRsLXMgQTAgKi8NCj4gLQlpZiAoSVNfQURMU19ESVNQTEFZX1NURVAo
ZGV2X3ByaXYsIFNURVBfQTAsIFNURVBfQTApKQ0KPiArCS8qIFdhXzE0MDExNzY1MjQyOiBhZGwt
cyBBMCxBMSAqLw0KPiArCWlmIChJU19BRExTX0RJU1BMQVlfU1RFUChkZXZfcHJpdiwgU1RFUF9B
MCwgU1RFUF9BMSkpDQo+ICAJCWZvcl9lYWNoX3BpcGUoZGV2X3ByaXYsIHBpcGUpDQo+ICAJCQly
dW50aW1lLT5udW1fc2NhbGVyc1twaXBlXSA9IDA7DQo+ICAJZWxzZSBpZiAoR1JBUEhJQ1NfVkVS
KGRldl9wcml2KSA+PSAxMCkgew0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aW50ZWxfc3RlcC5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfc3RlcC5oDQo+IGluZGV4
IDg4YTc3MTU5NzAzZS4uNDE1NjdkOWI3YzM1IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pbnRlbF9zdGVwLmgNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxf
c3RlcC5oDQo+IEBAIC0yMiw2ICsyMiw3IEBAIHN0cnVjdCBpbnRlbF9zdGVwX2luZm8gew0KPiAg
ZW51bSBpbnRlbF9zdGVwIHsNCj4gIAlTVEVQX05PTkUgPSAwLA0KPiAgCVNURVBfQTAsDQo+ICsJ
U1RFUF9BMSwNCj4gIAlTVEVQX0EyLA0KPiAgCVNURVBfQjAsDQo+ICAJU1RFUF9CMSwNCg0KX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
