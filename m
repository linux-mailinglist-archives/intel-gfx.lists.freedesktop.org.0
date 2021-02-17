Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B5C7C31DD77
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Feb 2021 17:37:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1985D6E183;
	Wed, 17 Feb 2021 16:37:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8992D6E183
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Feb 2021 16:37:27 +0000 (UTC)
IronPort-SDR: w/wMd3mIIl2zqRjAiAFc6FSfEeCYuTNX5X/36+9QxQxD4dhGiX9T+Eo4oqdndsAfZX/xSpVO8g
 cbO9hBDAR2sw==
X-IronPort-AV: E=McAfee;i="6000,8403,9897"; a="170380291"
X-IronPort-AV: E=Sophos;i="5.81,184,1610438400"; d="scan'208";a="170380291"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2021 08:37:25 -0800
IronPort-SDR: F65nDTjCvNV1sQJYl1USWIhg+qtGR4E/yFC2QgzyR9e5T0Nq+A7On34sgc7XfpZYmRhKZJ/82A
 6OCOiohgnEzg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,184,1610438400"; d="scan'208";a="385251298"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga008.fm.intel.com with ESMTP; 17 Feb 2021 08:37:21 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Wed, 17 Feb 2021 08:37:21 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Wed, 17 Feb 2021 08:37:20 -0800
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2106.002;
 Wed, 17 Feb 2021 08:37:20 -0800
From: "Souza, Jose" <jose.souza@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915: Nuke INTEL_OUTPUT_FORMAT_INVALID
Thread-Index: AQHW+/zHVFY3b0oDhEm5wwVk6viMOapdJOwA
Date: Wed, 17 Feb 2021 16:37:20 +0000
Message-ID: <3dd3591dad1839f9f0396e09a68e0a834743d901.camel@intel.com>
References: <20210205202322.27608-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20210205202322.27608-1-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-ID: <9057408C0E1FF743B6315D0FFF52082B@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Nuke INTEL_OUTPUT_FORMAT_INVALID
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

T24gRnJpLCAyMDIxLTAyLTA1IGF0IDIyOjIzICswMjAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOg0K
PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiANCj4gV2UgdGVuZCB0byB1c2Ugb3V0cHV0X2Zvcm1hdCE9UkdCIGFzIGEgc2hvcnRoYW5kIGZv
ciBZQ2JDciwgYnV0DQo+IHRoaXMgZmFpbHMgaWYgd2UgaGF2ZSBhIGRpc2FibGVkIGNydGMgd2hl
cmUgb3V0cHV0X2Zvcm1hdD09SU5WQUxJRC4NCj4gV2UncmUgbm93IGdldHRpbmcgc29tZSBmYWls
IGZyb20gaW50ZWxfY29sb3JfY2hlY2soKSB3aGVuIHdlIGhhdmU6DQo+IMKgaHcuZW5hYmxlPT1m
YWxzZQ0KPiDCoGh3LmN0bSE9TlVMTA0KPiDCoG91dHB1dF9mb3JtYXQ9PUlOVkFMSUQNCj4gDQo+
IExldCdzIGF2b2lkIHRoYXQgYnkgdGhyb3dpbmcgSU5URUxfT1VUUFVUX0ZPUk1BVF9JTlZBTElE
IHRvIHRoZQ0KPiBkdW1wc3RlciwgYW5kIHRodXMgZXZlcnl0aGluZyBkZWZhdWx0cyB0byBSR0Ig
d2hlbiB0aGUgY3J0Yw0KPiBpcyBkaXNhYmxlZC4NCj4gDQo+IFRoaXMgZG9lcyBiZWcgdGhlIGRl
ZXBlciBxdWVzdGlvbiBvZiBob3cgbXVjaCBvZiB0aGUgc3RhdGUNCj4gc2hvdWxkIHdlIGluIGZh
Y3QgYmUgdmFsaWRhdGluZyB3aGVuIGh3L3VhcGkuZW5hYmxlPT1mYWxzZS4NCj4gQW5kIHNob3Vs
ZCB3ZSBldmVuIGJlIGRvaW5nIHRoZSB1YXBpLT5odyBjb3B5IHdoZW4NCj4gdWFwaS5lbmFibGU9
PWZhbHNlPyBTbyBmYXIgSSd2ZSBub3QgYmVlbiBhYmxlIHRvIGNvbWUgdXAgd2l0aA0KPiBzYXRp
c2ZhY3RvcnkgYW5zd2VycyBmb3IgbXlzZWxmLCBzbyBJJ20gcHV0dGluZyBpdCBvZmYgZm9yIHRo
ZQ0KPiBtb21lbnQuDQo+IA0KPiBDYzogTGVlIFNoYXduIEMgPHNoYXduLmMubGVlQGludGVsLmNv
bT4NCj4gRml4ZXM6IDBhYTVjMzgzNWM4YSAoImRybS9pOTE1OiBzdXBwb3J0IHR3byBDU0MgbW9k
dWxlIG9uIGdlbjExIGFuZCBsYXRlciIpDQo+IENsb3NlczogaHR0cHM6Ly9naXRsYWIuZnJlZWRl
c2t0b3Aub3JnL2RybS9pbnRlbC8tL2lzc3Vlcy8yOTY0DQo+IFNpZ25lZC1vZmYtYnk6IFZpbGxl
IFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+IC0tLQ0KPiDCoGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3J0Yy5jICAgICAgICAgIHwgMSAtDQo+
IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgICAgICAgfCAz
ICstLQ0KPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBl
cy5oIHwgMSAtDQo+IMKgMyBmaWxlcyBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgNCBkZWxldGlv
bnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2NydGMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3J0Yy5jDQo+
IGluZGV4IDU3YjBhM2ViZTkwOC4uOGU3N2NhN2RkZjExIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NydGMuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2NydGMuYw0KPiBAQCAtMTA5LDcgKzEwOSw2IEBAIHZvaWQg
aW50ZWxfY3J0Y19zdGF0ZV9yZXNldChzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0
ZSwNCj4gwqAJY3J0Y19zdGF0ZS0+Y3B1X3RyYW5zY29kZXIgPSBJTlZBTElEX1RSQU5TQ09ERVI7
DQo+IMKgCWNydGNfc3RhdGUtPm1hc3Rlcl90cmFuc2NvZGVyID0gSU5WQUxJRF9UUkFOU0NPREVS
Ow0KPiDCoAljcnRjX3N0YXRlLT5oc3dfd29ya2Fyb3VuZF9waXBlID0gSU5WQUxJRF9QSVBFOw0K
PiAtCWNydGNfc3RhdGUtPm91dHB1dF9mb3JtYXQgPSBJTlRFTF9PVVRQVVRfRk9STUFUX0lOVkFM
SUQ7DQoNCk1pc3Npbmcgc2V0IG91dHB1dF9mb3JtYXQgdG8gSU5URUxfT1VUUFVUX0ZPUk1BVF9S
R0IsIGttYWxsb2MoKSBkb24ndCBzZXQgbWVtb3J5IGFsbG9jYXRlZCB0byB6ZXJvIGFuZCBJTlRF
TF9PVVRQVVRfRk9STUFUX0lOVkFMSUQgd2FzIHRoZSBpbmRleCAwIGFuZA0Kd2Ugd2VyZSBzZXR0
aW5nIGl0IGR1cmluZyBpbnRlbF9jcnRjX3N0YXRlX3Jlc2V0KCkgc28gd2Ugc2hvdWxkIG5vdyBz
ZXQgaXQgdG8gSU5URUxfT1VUUFVUX0ZPUk1BVF9SR0IuDQpodHRwczovL3d3dy5rZXJuZWwub3Jn
L2RvYy9odG1sZG9jcy9rZXJuZWwtYXBpL21tLmh0bWwNCg0KV2l0aCB0aGF0IGZpeGVkOg0KDQpS
ZXZpZXdlZC1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+
DQoNCj4gwqAJY3J0Y19zdGF0ZS0+c2NhbGVyX3N0YXRlLnNjYWxlcl9pZCA9IC0xOw0KPiDCoAlj
cnRjX3N0YXRlLT5tc3RfbWFzdGVyX3RyYW5zY29kZXIgPSBJTlZBTElEX1RSQU5TQ09ERVI7DQo+
IMKgfQ0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
aXNwbGF5LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0K
PiBpbmRleCA5MmMxNGYzZjBhYmYuLjQ2ZDAwOTMxODdmOCAxMDA2NDQNCj4gLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4gKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4gQEAgLTEwMjIwLDcgKzEwMjIw
LDYgQEAgc3RhdGljIHZvaWQgc25wcmludGZfb3V0cHV0X3R5cGVzKGNoYXIgKmJ1Ziwgc2l6ZV90
IGxlbiwNCj4gwqB9DQo+IMKgDQo+IA0KPiANCj4gDQo+IMKgc3RhdGljIGNvbnN0IGNoYXIgKiBj
b25zdCBvdXRwdXRfZm9ybWF0X3N0cltdID0gew0KPiAtCVtJTlRFTF9PVVRQVVRfRk9STUFUX0lO
VkFMSURdID0gIkludmFsaWQiLA0KPiDCoAlbSU5URUxfT1VUUFVUX0ZPUk1BVF9SR0JdID0gIlJH
QiIsDQo+IMKgCVtJTlRFTF9PVVRQVVRfRk9STUFUX1lDQkNSNDIwXSA9ICJZQ0JDUjQ6MjowIiwN
Cj4gwqAJW0lOVEVMX09VVFBVVF9GT1JNQVRfWUNCQ1I0NDRdID0gIllDQkNSNDo0OjQiLA0KPiBA
QCAtMTAyMjksNyArMTAyMjgsNyBAQCBzdGF0aWMgY29uc3QgY2hhciAqIGNvbnN0IG91dHB1dF9m
b3JtYXRfc3RyW10gPSB7DQo+IMKgc3RhdGljIGNvbnN0IGNoYXIgKm91dHB1dF9mb3JtYXRzKGVu
dW0gaW50ZWxfb3V0cHV0X2Zvcm1hdCBmb3JtYXQpDQo+IMKgew0KPiDCoAlpZiAoZm9ybWF0ID49
IEFSUkFZX1NJWkUob3V0cHV0X2Zvcm1hdF9zdHIpKQ0KPiAtCQlmb3JtYXQgPSBJTlRFTF9PVVRQ
VVRfRk9STUFUX0lOVkFMSUQ7DQo+ICsJCXJldHVybiAiaW52YWxpZCI7DQo+IMKgCXJldHVybiBv
dXRwdXRfZm9ybWF0X3N0cltmb3JtYXRdOw0KPiDCoH0NCj4gwqANCj4gDQo+IA0KPiANCj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBl
cy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgN
Cj4gaW5kZXggMzA3ZmY0Yjc3MWY0Li5iM2FjMzlmZWE2ZjAgMTAwNjQ0DQo+IC0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oDQo+ICsrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oDQo+IEBAIC04
MzAsNyArODMwLDYgQEAgc3RydWN0IGludGVsX2NydGNfd21fc3RhdGUgew0KPiDCoH07DQo+IMKg
DQo+IA0KPiANCj4gDQo+IMKgZW51bSBpbnRlbF9vdXRwdXRfZm9ybWF0IHsNCj4gLQlJTlRFTF9P
VVRQVVRfRk9STUFUX0lOVkFMSUQsDQo+IMKgCUlOVEVMX09VVFBVVF9GT1JNQVRfUkdCLA0KPiDC
oAlJTlRFTF9PVVRQVVRfRk9STUFUX1lDQkNSNDIwLA0KPiDCoAlJTlRFTF9PVVRQVVRfRk9STUFU
X1lDQkNSNDQ0LA0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
ZngK
