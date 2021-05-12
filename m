Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BD68837D177
	for <lists+intel-gfx@lfdr.de>; Wed, 12 May 2021 19:56:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 330C26E0DD;
	Wed, 12 May 2021 17:56:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D0E7F6E0DD
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 May 2021 17:56:21 +0000 (UTC)
IronPort-SDR: eV7LuIi8RyuwBzbqOrLcH2S4g2C98f+L9iMmpo48noBBroBBbP5iQr5udFk4BAIh/bRoyugZ6S
 zOlDVYx1wLQQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9982"; a="196676943"
X-IronPort-AV: E=Sophos;i="5.82,293,1613462400"; d="scan'208";a="196676943"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2021 10:56:21 -0700
IronPort-SDR: 1UMf8aNqrFm1HRSerdYN+Lbvx/i2kTu7TZEh6gJ5FNJhrHjHogi7UG5kag9Xs4SjQ0OXihS/NM
 6mD5YOSv+Wig==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,293,1613462400"; d="scan'208";a="462831859"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by FMSMGA003.fm.intel.com with ESMTP; 12 May 2021 10:56:21 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Wed, 12 May 2021 10:56:20 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Wed, 12 May 2021 10:56:20 -0700
Received: from fmsmsx611.amr.corp.intel.com ([10.18.126.91]) by
 fmsmsx611.amr.corp.intel.com ([10.18.126.91]) with mapi id 15.01.2106.013;
 Wed, 12 May 2021 10:56:20 -0700
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v3 06/48] drm/i915/xelpd: Increase maximum
 watermark lines to 255
Thread-Index: AQHXQ7HuUT1Bfm1WxEyvDTt8YMryBqrgKLrw
Date: Wed, 12 May 2021 17:56:20 +0000
Message-ID: <c1835af34d284bee854266a531f84123@intel.com>
References: <20210508022820.780227-1-matthew.d.roper@intel.com>
 <20210508022820.780227-7-matthew.d.roper@intel.com>
In-Reply-To: <20210508022820.780227-7-matthew.d.roper@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
x-originating-ip: [10.22.254.132]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v3 06/48] drm/i915/xelpd: Increase maximum
 watermark lines to 255
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtZ2Z4IDxpbnRl
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBNYXR0DQo+
IFJvcGVyDQo+IFNlbnQ6IEZyaWRheSwgTWF5IDcsIDIwMjEgNzoyOCBQTQ0KPiBUbzogaW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBTdWJqZWN0OiBbSW50ZWwtZ2Z4XSBbUEFUQ0gg
djMgMDYvNDhdIGRybS9pOTE1L3hlbHBkOiBJbmNyZWFzZSBtYXhpbXVtDQo+IHdhdGVybWFyayBs
aW5lcyB0byAyNTUNCj4gDQo+IFhFX0xQRCBjb250aW51ZXMgdG8gdXNlIHRoZSBzYW1lICJza3ls
YWtlLXN0eWxlIiB3YXRlcm1hcmsgcHJvZ3JhbW1pbmcNCj4gYXMgb3RoZXIgcmVjZW50IHBsYXRm
b3Jtcy4gIFRoZSBvbmx5IGNoYW5nZSB0byB0aGUgd2F0ZXJtYXJrIGNhbGN1bGF0aW9ucw0KPiBj
b21wYXJlZCB0byBEaXNwbGF5MTIgaXMgdGhhdCBYRV9MUEQgbm93IGFsbG93cyBhIG1heGltdW0g
b2YgMjU1IGxpbmVzIHZzDQo+IHRoZSBvbGQgbGltaXQgb2YgMzEuDQo+IA0KPiBEdWUgdG8gdGhl
IGxhcmdlciBwb3NzaWJsZSBsaW5lcyB2YWx1ZSwgdGhlIGNvcnJlc3BvbmRpbmcgYml0cyByZXBy
ZXNlbnRpbmcNCj4gdGhlIHZhbHVlIGluIFBMQU5FX1dNIGFyZSBhbHNvIGV4dGVuZGVkLCBzbyBt
YWtlIHN1cmUgd2UgcmVhZC93cml0ZQ0KPiBlbm91Z2ggYml0cy4gIExldCdzIGFsc28gdGFrZSB0
aGlzIG9wcG9ydHVuaXR5IHRvIHN3aXRjaCBvdmVyIHRvIHRoZSBSRUdfRklFTEQNCj4gbm90YXRp
b24uDQo+IA0KPiBCc3BlYzogNDkzMjUNCj4gQnNwZWM6IDUwNDE5DQo+IENjOiBWaWxsZSBTeXJq
w6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiBDYzogQW5zaHVtYW4gR3Vw
dGEgPGFuc2h1bWFuLmd1cHRhQGludGVsLmNvbT4NCj4gU2lnbmVkLW9mZi1ieTogTWF0dCBSb3Bl
ciA8bWF0dGhldy5kLnJvcGVyQGludGVsLmNvbT4NClJldmlld2VkLWJ5OiBBbnVzaGEgU3JpdmF0
c2EgPGFudXNoYS5zcml2YXRzYUBpbnRlbC5jb20+DQoNCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X3JlZy5oIHwgIDMgKy0tICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9w
bS5jDQo+IHwgMTUgKysrKysrKysrKystLS0tDQo+ICAyIGZpbGVzIGNoYW5nZWQsIDEyIGluc2Vy
dGlvbnMoKyksIDYgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9yZWcuaA0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgg
aW5kZXggZTA3MGYyZGY2YTg3Li4wZjZhYTM1MDJmMWYNCj4gMTAwNjQ0DQo+IC0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9yZWcuaA0KPiBAQCAtNjQ0Miw4ICs2NDQyLDcgQEAgZW51bSB7DQo+ICAjZGVmaW5lIF9D
VVJfV01fVFJBTlNfQl8wCTB4NzExNjgNCj4gICNkZWZpbmUgICBQTEFORV9XTV9FTgkJKDEgPDwg
MzEpDQo+ICAjZGVmaW5lICAgUExBTkVfV01fSUdOT1JFX0xJTkVTCSgxIDw8IDMwKQ0KPiAtI2Rl
ZmluZSAgIFBMQU5FX1dNX0xJTkVTX1NISUZUCTE0DQo+IC0jZGVmaW5lICAgUExBTkVfV01fTElO
RVNfTUFTSwkweDFmDQo+ICsjZGVmaW5lICAgUExBTkVfV01fTElORVNfTUFTSwlSRUdfR0VOTUFT
SygyMSwgMTQpDQo+ICAjZGVmaW5lICAgUExBTkVfV01fQkxPQ0tTX01BU0sJMHg3ZmYgLyogc2ts
KzogMTAgYml0cywgaWNsKyAxMSBiaXRzICovDQo+IA0KPiAgI2RlZmluZSBfQ1VSX1dNXzAocGlw
ZSkgX1BJUEUocGlwZSwgX0NVUl9XTV9BXzAsIF9DVVJfV01fQl8wKQ0KPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2ludGVsX3BtLmMgaW5kZXggMDZkNWI3Y2M4YjYyLi5lZjJkMWZhNjBmMDQNCj4gMTAwNjQ0DQo+
IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmMNCj4gKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaW50ZWxfcG0uYw0KPiBAQCAtNTE4NSw2ICs1MTg1LDE0IEBAIHN0YXRpYyBi
b29sIHNrbF93bV9oYXNfbGluZXMoc3RydWN0DQo+IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2
LCBpbnQgbGV2ZWwpDQo+ICAJcmV0dXJuIGxldmVsID4gMDsNCj4gIH0NCj4gDQo+ICtzdGF0aWMg
aW50IHNrbF93bV9tYXhfbGluZXMoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KSB7
DQo+ICsJaWYgKERJU1BMQVlfVkVSKGRldl9wcml2KSA+PSAxMykNCj4gKwkJcmV0dXJuIDI1NTsN
Cj4gKwllbHNlDQo+ICsJCXJldHVybiAzMTsNCj4gK30NCj4gKw0KPiAgc3RhdGljIHZvaWQgc2ts
X2NvbXB1dGVfcGxhbmVfd20oY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3Rh
dGUsDQo+ICAJCQkJIGludCBsZXZlbCwNCj4gIAkJCQkgdW5zaWduZWQgaW50IGxhdGVuY3ksDQo+
IEBAIC01Mjg5LDcgKzUyOTcsNyBAQCBzdGF0aWMgdm9pZCBza2xfY29tcHV0ZV9wbGFuZV93bShj
b25zdCBzdHJ1Y3QNCj4gaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwNCj4gIAlpZiAoIXNr
bF93bV9oYXNfbGluZXMoZGV2X3ByaXYsIGxldmVsKSkNCj4gIAkJbGluZXMgPSAwOw0KPiANCj4g
LQlpZiAobGluZXMgPiAzMSkgew0KPiArCWlmIChsaW5lcyA+IHNrbF93bV9tYXhfbGluZXMoZGV2
X3ByaXYpKSB7DQo+ICAJCS8qIHJlamVjdCBpdCAqLw0KPiAgCQlyZXN1bHQtPm1pbl9kZGJfYWxs
b2MgPSBVMTZfTUFYOw0KPiAgCQlyZXR1cm47DQo+IEBAIC01NTg1LDcgKzU1OTMsNyBAQCBzdGF0
aWMgdm9pZCBza2xfd3JpdGVfd21fbGV2ZWwoc3RydWN0DQo+IGRybV9pOTE1X3ByaXZhdGUgKmRl
dl9wcml2LA0KPiAgCWlmIChsZXZlbC0+aWdub3JlX2xpbmVzKQ0KPiAgCQl2YWwgfD0gUExBTkVf
V01fSUdOT1JFX0xJTkVTOw0KPiAgCXZhbCB8PSBsZXZlbC0+YmxvY2tzOw0KPiAtCXZhbCB8PSBs
ZXZlbC0+bGluZXMgPDwgUExBTkVfV01fTElORVNfU0hJRlQ7DQo+ICsJdmFsIHw9IFJFR19GSUVM
RF9QUkVQKFBMQU5FX1dNX0xJTkVTX01BU0ssIGxldmVsLT5saW5lcyk7DQo+IA0KPiAgCWludGVs
X2RlX3dyaXRlX2Z3KGRldl9wcml2LCByZWcsIHZhbCk7ICB9IEBAIC02MTkzLDggKzYyMDEsNyBA
QA0KPiBzdGF0aWMgdm9pZCBza2xfd21fbGV2ZWxfZnJvbV9yZWdfdmFsKHUzMiB2YWwsIHN0cnVj
dCBza2xfd21fbGV2ZWwgKmxldmVsKQ0KPiAgCWxldmVsLT5lbmFibGUgPSB2YWwgJiBQTEFORV9X
TV9FTjsNCj4gIAlsZXZlbC0+aWdub3JlX2xpbmVzID0gdmFsICYgUExBTkVfV01fSUdOT1JFX0xJ
TkVTOw0KPiAgCWxldmVsLT5ibG9ja3MgPSB2YWwgJiBQTEFORV9XTV9CTE9DS1NfTUFTSzsNCj4g
LQlsZXZlbC0+bGluZXMgPSAodmFsID4+IFBMQU5FX1dNX0xJTkVTX1NISUZUKSAmDQo+IC0JCVBM
QU5FX1dNX0xJTkVTX01BU0s7DQo+ICsJbGV2ZWwtPmxpbmVzID0gUkVHX0ZJRUxEX0dFVChQTEFO
RV9XTV9MSU5FU19NQVNLLCB2YWwpOw0KPiAgfQ0KPiANCj4gIHZvaWQgc2tsX3BpcGVfd21fZ2V0
X2h3X3N0YXRlKHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjLA0KPiAtLQ0KPiAyLjI1LjQNCj4gDQo+
IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQo+IEludGVs
LWdmeCBtYWlsaW5nIGxpc3QNCj4gSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA0K
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
