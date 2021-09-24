Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 780E74168F1
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Sep 2021 02:30:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 56A656E12E;
	Fri, 24 Sep 2021 00:30:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ABCE56E12E
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Sep 2021 00:30:11 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10116"; a="203468470"
X-IronPort-AV: E=Sophos;i="5.85,318,1624345200"; d="scan'208";a="203468470"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2021 17:30:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,318,1624345200"; d="scan'208";a="653846411"
Received: from irsmsx606.ger.corp.intel.com ([163.33.146.139])
 by orsmga005.jf.intel.com with ESMTP; 23 Sep 2021 17:30:10 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 IRSMSX606.ger.corp.intel.com (163.33.146.139) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Fri, 24 Sep 2021 01:30:08 +0100
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2242.012;
 Thu, 23 Sep 2021 17:30:07 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Deak, Imre" <imre.deak@intel.com>
Thread-Topic: [PATCH 04/13] drm/i915/tc: Check for DP-alt, legacy sinks before
 taking PHY ownership
Thread-Index: AQHXrn7kUbu7tAY/gkW+O/LE2gMg6Kuy0JUA
Date: Fri, 24 Sep 2021 00:30:07 +0000
Message-ID: <f56fd922c9b349cee458be9edcbe028cab178fd6.camel@intel.com>
References: <20210921002313.1132357-1-imre.deak@intel.com>
 <20210921002313.1132357-5-imre.deak@intel.com>
In-Reply-To: <20210921002313.1132357-5-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.132]
Content-Type: text/plain; charset="utf-8"
Content-ID: <39554594C6BFD84E98ACB7B1AC491775@intel.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 04/13] drm/i915/tc: Check for DP-alt,
 legacy sinks before taking PHY ownership
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

T24gVHVlLCAyMDIxLTA5LTIxIGF0IDAzOjIzICswMzAwLCBJbXJlIERlYWsgd3JvdGU6DQo+IE9u
IEFETC1QIHRoZSBQSFkgcmVhZHkvY29tcGxldGUgZmxhZyBpcyBhbHdheXMgc2V0IGV2ZW4gaW4g
VEJULWFsdCBtb2RlLg0KPiBUbyBhdm9pZCB0YWtpbmcgdGhlIFBIWSBvd25lcnNoaXAgYW5kIHRo
ZSBmb2xsb3dpbmcgc3B1cmlvdXMgIlBIWSBzdWRkZW4NCj4gZGlzY29ubmVjdCIgbWVzc2FnZXMg
b24gdGhpcyBwbGF0Zm9ybSB3aGVuIGNvbm5lY3RpbmcgdGhlIFBIWSBpbiBUQlQNCj4gbW9kZSwg
Y2hlY2sgaWYgdGhlcmUgaXMgYW55IERQLWFsdCBvciBsZWdhY3kgc2luayBjb25uZWN0ZWQgYmVm
b3JlDQo+IHRha2luZyB0aGUgb3duZXJzaGlwLg0KPiANCj4gQ2M6IEpvc8OpIFJvYmVydG8gZGUg
U291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPg0KPiBTaWduZWQtb2ZmLWJ5OiBJbXJlIERlYWsg
PGltcmUuZGVha0BpbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF90Yy5jIHwgNyArKysrKysrDQo+ICAxIGZpbGUgY2hhbmdlZCwgNyBpbnNlcnRp
b25zKCspDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF90Yy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF90Yy5jDQo+IGlu
ZGV4IDBkMzU1NTQzN2IwYjEuLjFmNzZjMTFkNzA4MzQgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdGMuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX3RjLmMNCj4gQEAgLTQzMiw2ICs0MzIsMTMgQEAgc3RhdGljIHZv
aWQgaWNsX3RjX3BoeV9jb25uZWN0KHN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgKmRpZ19wb3J0
LA0KPiAgCQlnb3RvIG91dF9zZXRfdGJ0X2FsdF9tb2RlOw0KPiAgCX0NCj4gIA0KPiArCWlmICgh
KHRjX3BvcnRfbGl2ZV9zdGF0dXNfbWFzayhkaWdfcG9ydCkgJg0KPiArCSAgICAgIChCSVQoVENf
UE9SVF9EUF9BTFQpIHwgQklUKFRDX1BPUlRfTEVHQUNZKSkpKSB7DQo+ICsJCWRybV9kYmdfa21z
KCZpOTE1LT5kcm0sICJQb3J0ICVzOiBub3RoaW5nIGlzIGNvbm5lY3RlZFxuIiwNCj4gKwkJCSAg
ICBkaWdfcG9ydC0+dGNfcG9ydF9uYW1lKTsNCg0KTWlzbGVhZGluZyBsb2csIGl0IGNvdWxkIGhh
dmUgYWN0dWFsIFRCVCBjb25uZWN0ZWQgYW5kIGl0IHdvdWxkIHByaW50IG5vdGhpbmcgaXMgY29u
bmVjdGVkLg0KDQpDb3VsZCB5b3UgYWxzbyBhZGQgYSBjb21tZW50IGluIHRjX3BoeV9zdGF0dXNf
Y29tcGxldGUoKSBhYm91dCB0aGUgVEJUIGJlaGF2aW9yIG9uIGFkbC1wPw0KDQpGaXhpbmcgdGhl
IGFib3ZlOg0KUmV2aWV3ZWQtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFA
aW50ZWwuY29tPg0KDQo+ICsJCWdvdG8gb3V0X3NldF90YnRfYWx0X21vZGU7DQo+ICsJfQ0KPiAr
DQo+ICAJaWYgKCF0Y19waHlfdGFrZV9vd25lcnNoaXAoZGlnX3BvcnQsIHRydWUpICYmDQo+ICAJ
ICAgICFkcm1fV0FSTl9PTigmaTkxNS0+ZHJtLCBkaWdfcG9ydC0+dGNfbGVnYWN5X3BvcnQpKQ0K
PiAgCQlnb3RvIG91dF9zZXRfdGJ0X2FsdF9tb2RlOw0KDQo=
