Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 593B542FA61
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Oct 2021 19:35:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 710606E158;
	Fri, 15 Oct 2021 17:35:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 98F356E158
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Oct 2021 17:35:09 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10138"; a="214891353"
X-IronPort-AV: E=Sophos;i="5.85,376,1624345200"; d="scan'208";a="214891353"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2021 10:35:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,376,1624345200"; d="scan'208";a="528224013"
Received: from irsmsx601.ger.corp.intel.com ([163.33.146.7])
 by fmsmga008.fm.intel.com with ESMTP; 15 Oct 2021 10:35:07 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 irsmsx601.ger.corp.intel.com (163.33.146.7) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Fri, 15 Oct 2021 18:35:06 +0100
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2242.012;
 Fri, 15 Oct 2021 10:35:04 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Deak, Imre" <imre.deak@intel.com>
Thread-Topic: [PATCH] drm/i915/dp: Skip the HW readout of DPCD on disabled
 encoders
Thread-Index: AQHXwb2oUjhgpMxOtE+cOONtKYtiU6vUyYyA
Date: Fri, 15 Oct 2021 17:35:04 +0000
Message-ID: <b5ca89da3e8e7d3cff3c314e0b99807416b4e416.camel@intel.com>
References: <20211015121031.870282-1-imre.deak@intel.com>
In-Reply-To: <20211015121031.870282-1-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.132]
Content-Type: text/plain; charset="utf-8"
Content-ID: <3BA26DEAB81262478D9CE34141B9861C@intel.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dp: Skip the HW readout of DPCD on
 disabled encoders
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

T24gRnJpLCAyMDIxLTEwLTE1IGF0IDE1OjEwICswMzAwLCBJbXJlIERlYWsgd3JvdGU6DQo+IFJl
YWRpbmcgb3V0IHRoZSBEUCBlbmNvZGVycycgRFBDRCBkdXJpbmcgYm9vdGluZyBvciByZXN1bWUg
aXMgb25seQ0KPiByZXF1aXJlZCBmb3IgZW5hYmxlZCBlbmNvZGVyczogc3VjaCBlbmNvZGVycyBt
YXkgYmUgbW9kZXNldHRlZCBkdXJpbmcNCj4gdGhlIGluaXRpYWwgY29tbWl0IGFuZCB0aGUgbGlu
ayB0cmFpbmluZyB0aGlzIGludm9sdmVzIGRlcGVuZHMgb24gYW4NCj4gaW5pdGlhbGl6ZWQgRFBD
RC4gRm9yIERESSBlbmNvZGVycyByZWFkaW5nIG91dCB0aGUgRFBDRCBpcyBza2lwcGVkLCBkbw0K
PiB0aGUgc2FtZSBvbiBwcmUtRERJIHBsYXRmb3Jtcy4NCg0KTWlzc2luZyBmaXhlcyB0YWcNCg0K
PiANCj4gQ2M6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPg0K
PiBTaWduZWQtb2ZmLWJ5OiBJbXJlIERlYWsgPGltcmUuZGVha0BpbnRlbC5jb20+DQo+IC0tLQ0K
PiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jIHwgMyArKysNCj4gIDEg
ZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKykNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2RwLmMNCj4gaW5kZXggOWQ4MTMyZGQ0Y2M1YS4uMjNkZTUwMGQ1NmI1MiAx
MDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jDQo+
ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYw0KPiBAQCAtMjAw
Nyw2ICsyMDA3LDkgQEAgdm9pZCBpbnRlbF9kcF9zeW5jX3N0YXRlKHN0cnVjdCBpbnRlbF9lbmNv
ZGVyICplbmNvZGVyLA0KPiAgew0KPiAgCXN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAgPSBlbmNf
dG9faW50ZWxfZHAoZW5jb2Rlcik7DQo+ICANCj4gKwlpZiAoIWNydGNfc3RhdGUpDQo+ICsJCXJl
dHVybjsNCg0KY3J0Y19zdGF0ZSBpcyBub3QgdXNlZA0KDQo+ICsNCj4gIAkvKg0KPiAgCSAqIERv
bid0IGNsb2JiZXIgRFBDRCBpZiBpdCdzIGJlZW4gYWxyZWFkeSByZWFkIG91dCBkdXJpbmcgb3V0
cHV0DQo+ICAJICogc2V0dXAgKGVEUCkgb3IgZGV0ZWN0Lg0KDQo=
