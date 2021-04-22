Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E100D367F2D
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Apr 2021 13:01:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3DEB66E086;
	Thu, 22 Apr 2021 11:01:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6F58E6E086
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Apr 2021 11:01:22 +0000 (UTC)
IronPort-SDR: EoRkbLpEyqESxy0iOaHgZshdrxOfYIj4NV+2wKtQt49jftKCne/ecjvYfTgqcEGTg5fBccmiY2
 qWfVGKljtSgQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9961"; a="257177163"
X-IronPort-AV: E=Sophos;i="5.82,242,1613462400"; d="scan'208";a="257177163"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2021 04:01:21 -0700
IronPort-SDR: ho4soD4GFhiWgh4+Nyq8QLKGiha1V3PFwhn7t6nlgmAM19YOgNpG4b2z1olsj1rQWBt5qXM/14
 Ri9sExdfhy7Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,242,1613462400"; d="scan'208";a="427889007"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by orsmga008.jf.intel.com with ESMTP; 22 Apr 2021 04:01:21 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Thu, 22 Apr 2021 04:01:20 -0700
Received: from irsmsx605.ger.corp.intel.com (163.33.146.138) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Thu, 22 Apr 2021 04:01:19 -0700
Received: from irsmsx605.ger.corp.intel.com ([163.33.146.138]) by
 IRSMSX605.ger.corp.intel.com ([163.33.146.138]) with mapi id 15.01.2106.013;
 Thu, 22 Apr 2021 12:01:18 +0100
From: "Mun, Gwan-gyeong" <gwan-gyeong.mun@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Souza, Jose" <jose.souza@intel.com>
Thread-Topic: [PATCH 2/2] drm/i915/display/xelpd: Do not program
 EDP_Y_COORDINATE_ENABLE
Thread-Index: AQHXNvmnBvGL+4FC7Ee4agqP0bP8UqrATuuA
Date: Thu, 22 Apr 2021 11:01:18 +0000
Message-ID: <0dee62fca74a24216a60afa945b4f02582d1b720.camel@intel.com>
References: <20210421220224.200729-1-jose.souza@intel.com>
 <20210421220224.200729-2-jose.souza@intel.com>
In-Reply-To: <20210421220224.200729-2-jose.souza@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.253.164]
Content-ID: <FFA2669E433752409D55345B95E7A413@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/display/xelpd: Do not program
 EDP_Y_COORDINATE_ENABLE
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

TG9va3MgZ29vZCB0byBtZS4NCg0KUmV2aWV3ZWQtYnk6IEd3YW4tZ3llb25nIE11biA8Z3dhbi1n
eWVvbmcubXVuQGludGVsLmNvbT4NCg0KT24gV2VkLCAyMDIxLTA0LTIxIGF0IDE1OjAyIC0wNzAw
LCBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIHdyb3RlOg0KPiBFRFBfWV9DT09SRElOQVRFX0VOQUJM
RSBiZWNhbWUgYSByZXNlcnZlZCByZWdpc3RlciBpbiBkaXNwbGF5IDEzLg0KPiBFRFBfWV9DT09S
RElOQVRFX1ZBTElEIGhhdmUgdGhlIHNhbWUgZmF0ZSBhcyBFRFBfWV9DT09SRElOQVRFX0VOQUJM
RQ0KPiBidXQgYXMgd2UgZG9uJ3QgbmVlZCBpdCwgcmVtb3ZpbmcgdGhlIG1hY3JvIGRlZmluaXRp
b24gb2YgaXQuDQo+IA0KPiBCU3BlYzogNTA0MjINCj4gQ2M6IEd3YW4tZ3llb25nIE11biA8Z3dh
bi1neWVvbmcubXVuQGludGVsLmNvbT4NCj4gQ2M6IEFudXNoYSBTcml2YXRzYSA8YW51c2hhLnNy
aXZhdHNhQGludGVsLmNvbT4NCj4gU2lnbmVkLW9mZi1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6
YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+DQo+IC0tLQ0KPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfcHNyLmMgfCAyICstDQo+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9yZWcuaMKgwqDCoMKgwqDCoMKgwqDCoCB8IDMgKy0tDQo+IMKgMiBmaWxlcyBjaGFuZ2VkLCAy
IGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gaW5kZXggNGFkNzU2ZTIzOGM1Li42NjMzNWVjNmI3
ZDEgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNy
LmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiBA
QCAtNTI0LDcgKzUyNCw3IEBAIHN0YXRpYyB2b2lkIGhzd19hY3RpdmF0ZV9wc3IyKHN0cnVjdCBp
bnRlbF9kcA0KPiAqaW50ZWxfZHApDQo+IMKgwqDCoMKgwqDCoMKgwqB2YWwgPSBwc3JfY29tcHV0
ZV9pZGxlX2ZyYW1lcyhpbnRlbF9kcCkgPDwNCj4gRURQX1BTUjJfSURMRV9GUkFNRV9TSElGVDsN
Cj4gwqANCj4gwqDCoMKgwqDCoMKgwqDCoHZhbCB8PSBFRFBfUFNSMl9FTkFCTEUgfCBFRFBfU1Vf
VFJBQ0tfRU5BQkxFOw0KPiAtwqDCoMKgwqDCoMKgwqBpZiAoRElTUExBWV9WRVIoZGV2X3ByaXYp
ID49IDEwKQ0KPiArwqDCoMKgwqDCoMKgwqBpZiAoRElTUExBWV9WRVIoZGV2X3ByaXYpID49IDEw
ICYmIERJU1BMQVlfVkVSKGRldl9wcml2KSA8PSAxMikNCj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqB2YWwgfD0gRURQX1lfQ09PUkRJTkFURV9FTkFCTEU7DQo+IMKgDQo+IMKgwqDC
oMKgwqDCoMKgwqB2YWwgfD0gRURQX1BTUjJfRlJBTUVfQkVGT1JFX1NVKGludGVsX2RwLT5wc3Iu
c2lua19zeW5jX2xhdGVuY3kNCj4gKyAxKTsNCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfcmVnLmgNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oDQo+
IGluZGV4IDY2YTkwMmIzYmI4ZS4uZTE4NTc2Yzk0Y2VmIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfcmVnLmgNCj4gQEAgLTQ1NjksOCArNDU2OSw3IEBAIGVudW0gew0KPiDCoCNkZWZpbmXCoMKg
IEVEUF9TVV9UUkFDS19FTkFCTEXCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAo
MSA8PCAzMCkNCj4gwqAjZGVmaW5lwqDCoCBUR0xfRURQX1BTUjJfQkxPQ0tfQ09VTlRfTlVNXzLC
oMKgwqDCoMKgwqDCoCgwIDw8IDI4KQ0KPiDCoCNkZWZpbmXCoMKgIFRHTF9FRFBfUFNSMl9CTE9D
S19DT1VOVF9OVU1fM8KgwqDCoMKgwqDCoMKgKDEgPDwgMjgpDQo+IC0jZGVmaW5lwqDCoCBFRFBf
WV9DT09SRElOQVRFX1ZBTElEwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgKDEgPDwgMjYp
IC8qIEdMSyBhbmQNCj4gQ05MKyAqLw0KPiAtI2RlZmluZcKgwqAgRURQX1lfQ09PUkRJTkFURV9F
TkFCTEXCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgKDEgPDwgMjUpIC8qIEdMSyBhbmQNCj4g
Q05MKyAqLw0KPiArI2RlZmluZcKgwqAgRURQX1lfQ09PUkRJTkFURV9FTkFCTEXCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgUkVHX0JJVCgyNSkgLyogZGlzcGxheQ0KPiAxMCwgMTEgYW5kIDEy
ICovDQo+IMKgI2RlZmluZcKgwqAgRURQX01BWF9TVV9ESVNBQkxFX1RJTUUodCnCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgKCh0KSA8PCAyMCkNCj4gwqAjZGVmaW5lwqDCoCBFRFBfTUFYX1NVX0RJU0FC
TEVfVElNRV9NQVNLwqDCoMKgwqDCoMKgwqDCoMKgKDB4MWYgPDwgMjApDQo+IMKgI2RlZmluZcKg
wqAgRURQX1BTUjJfSU9fQlVGRkVSX1dBS0VfTUFYX0xJTkVTwqDCoMKgwqA4DQoNCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5n
IGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
