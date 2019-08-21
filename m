Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A23CB9876E
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Aug 2019 00:37:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1CC566EA40;
	Wed, 21 Aug 2019 22:37:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 855B26EA40
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Aug 2019 22:37:11 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 Aug 2019 15:37:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,414,1559545200"; d="scan'208";a="178645173"
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
 by fmsmga008.fm.intel.com with ESMTP; 21 Aug 2019 15:37:08 -0700
Received: from fmsmsx153.amr.corp.intel.com (10.18.125.6) by
 FMSMSX103.amr.corp.intel.com (10.18.124.201) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 21 Aug 2019 15:37:08 -0700
Received: from fmsmsx106.amr.corp.intel.com ([169.254.5.251]) by
 FMSMSX153.amr.corp.intel.com ([169.254.9.165]) with mapi id 14.03.0439.000;
 Wed, 21 Aug 2019 15:37:07 -0700
From: "Summers, Stuart" <stuart.summers@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "chris@chris-wilson.co.uk" <chris@chris-wilson.co.uk>
Thread-Topic: [PATCH 06/11] drm/i915: Add function to set subslices
Thread-Index: AQHVWHBGzA4wY/GU10GOlvvABigBUKcGplcA
Date: Wed, 21 Aug 2019 22:37:07 +0000
Message-ID: <1566427016.128584.8.camel@intel.com>
References: <20190820230544.170010-1-stuart.summers@intel.com>
 <20190820230544.170010-7-stuart.summers@intel.com>
 <156642672645.20466.13423593871824543206@skylake-alporthouse-com>
In-Reply-To: <156642672645.20466.13423593871824543206@skylake-alporthouse-com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.23.184.90]
Content-ID: <83D4FA4754D0934680645B6C322F19A8@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 06/11] drm/i915: Add function to set
 subslices
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.23
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

T24gV2VkLCAyMDE5LTA4LTIxIGF0IDIzOjMyICswMTAwLCBDaHJpcyBXaWxzb24gd3JvdGU6DQo+
IFF1b3RpbmcgU3R1YXJ0IFN1bW1lcnMgKDIwMTktMDgtMjEgMDA6MDU6MzkpDQo+ID4gQWRkIGEg
bmV3IGZ1bmN0aW9uIHRvIHNldCBhIHNldCBvZiBzdWJzbGljZXMgZm9yIGEgZ2l2ZW4NCj4gPiBz
bGljZS4NCj4gPiANCj4gPiBTaWduZWQtb2ZmLWJ5OiBTdHVhcnQgU3VtbWVycyA8c3R1YXJ0LnN1
bW1lcnNAaW50ZWwuY29tPg0KPiA+IC0tLQ0KPiA+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qv
aW50ZWxfc3NldS5jwqDCoMKgwqDCoHzCoMKgNiArKysrKysNCj4gPiDCoGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L2ludGVsX3NzZXUuaMKgwqDCoMKgwqB8wqDCoDMgKysrDQo+ID4gwqBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9pbnRlbF9kZXZpY2VfaW5mby5jIHwgMTggKysrKysrKysrKystLS0tLS0t
DQo+ID4gwqAzIGZpbGVzIGNoYW5nZWQsIDIwIGluc2VydGlvbnMoKyksIDcgZGVsZXRpb25zKC0p
DQo+ID4gDQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3Nz
ZXUuYw0KPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfc3NldS5jDQo+ID4gaW5k
ZXggM2E1YzBmN2I1YTA4Li43OWE5YjVmMTg2ZjkgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3QvaW50ZWxfc3NldS5jDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvaW50ZWxfc3NldS5jDQo+ID4gQEAgLTMwLDYgKzMwLDEyIEBAIGludGVsX3NzZXVfc3Vi
c2xpY2VfdG90YWwoY29uc3Qgc3RydWN0DQo+ID4gc3NldV9kZXZfaW5mbyAqc3NldSkNCj4gPiDC
oMKgwqDCoMKgwqDCoMKgcmV0dXJuIHRvdGFsOw0KPiA+IMKgfQ0KPiA+IMKgDQo+ID4gK3ZvaWQg
aW50ZWxfc3NldV9zZXRfc3Vic2xpY2VzKHN0cnVjdCBzc2V1X2Rldl9pbmZvICpzc2V1LCBpbnQN
Cj4gPiBzbGljZSwNCj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoHU4IHNzX21hc2spDQo+ID4gK3sNCj4gPiArwqDCoMKgwqDCoMKg
wqBzc2V1LT5zdWJzbGljZV9tYXNrW2ldID0gc3NfbWFzayAmIDB4ZmY7DQo+IA0KPiBXaGF0J3Mg
aT8NCg0KU2hvdWxkIGJlIHNsaWNlLCBub3QgaSA6KCBub3Qgc3VyZSB3aHkgdGhlIGJ1aWxkIHdh
c24ndCBjYXRjaGluZyB0aGlzLg0KDQpJJ2xsIGZpeCBpbiB0aGUgbmV4dCByZXZpc2lvbiwgdGhh
bmtzIGZvciB0aGUgY2F0Y2ghDQoNCi0gU3R1YXJ0DQoNCj4gLUNocmlzCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
