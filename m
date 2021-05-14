Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C3C0380F0B
	for <lists+intel-gfx@lfdr.de>; Fri, 14 May 2021 19:33:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6930B6F3CB;
	Fri, 14 May 2021 17:33:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 253A76F3CB
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 May 2021 17:33:43 +0000 (UTC)
IronPort-SDR: M/Avx4nHLUFWvftZpo1dISPzdCaAFLXBpRFYWmZG57GiAgUiNrJe2LrjYJWZ2JoAu4YusoyOmt
 Q1fq9a37aoxA==
X-IronPort-AV: E=McAfee;i="6200,9189,9984"; a="187624087"
X-IronPort-AV: E=Sophos;i="5.82,300,1613462400"; d="scan'208";a="187624087"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2021 10:33:42 -0700
IronPort-SDR: nOkGLj4b3DBwKy9bzK5Wzvk8AmnP1esxwsywLqGmTLD/xMJe+CUCCTHUTnDwWMFE58QaKZtaaw
 vNsP4uHsr7FQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,300,1613462400"; d="scan'208";a="402291310"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by fmsmga007.fm.intel.com with ESMTP; 14 May 2021 10:33:41 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Fri, 14 May 2021 10:33:41 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Fri, 14 May 2021 10:33:40 -0700
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2106.013;
 Fri, 14 May 2021 10:33:40 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 3/6] drm/i915: Move platform checks into
 intel_hdmi_bpc_possible()
Thread-Index: AQHXRn+ouPkpQgavWUGcwYdpKbWvHKrjt8oA
Date: Fri, 14 May 2021 17:33:40 +0000
Message-ID: <608ac28ac268ff6bdfc0f4a4b593f01d217b5d52.camel@intel.com>
References: <20210511160532.21446-1-ville.syrjala@linux.intel.com>
 <20210511160532.21446-4-ville.syrjala@linux.intel.com>
In-Reply-To: <20210511160532.21446-4-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-ID: <82F74D800A16C244A8302ADC2EA840EC@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 3/6] drm/i915: Move platform checks into
 intel_hdmi_bpc_possible()
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

T24gVHVlLCAyMDIxLTA1LTExIGF0IDE5OjA1ICswMzAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOg0K
PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiANCj4gTGV0J3MgcHV0IHRoZSBwbGF0Zm9ybSBjaGVja3MgaW50byBpbnRlbF9oZG1pX2JwY19w
b3NzaWJsZSgpIHNvIHRoYXQNCj4gaXQnbGwgY29uZmlybSBib3RoIHRoZSBzb3VyY2UgYW5kIHNp
bmsgY2FwYWJpbGl0aWVzLg0KDQpSZXZpZXdlZC1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8
am9zZS5zb3V6YUBpbnRlbC5jb20+DQoNCj4gDQo+IENjOiBXZXJuZXIgU2VtYmFjaCA8d3NlQHR1
eGVkb2NvbXB1dGVycy5jb20+DQo+IFNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmls
bGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9oZG1pLmMgfCAxMyArKysrKysrLS0tLS0tDQo+ICAxIGZpbGUgY2hh
bmdlZCwgNyBpbnNlcnRpb25zKCspLCA2IGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaGRtaS5jIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9oZG1pLmMNCj4gaW5kZXggZTY5Njc2NmYyYjRiLi41NmFj
NTNlYWI5MGMgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfaGRtaS5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaGRt
aS5jDQo+IEBAIC0xODY1LDExICsxODY1LDE1IEBAIHN0YXRpYyBpbnQgaW50ZWxfaGRtaV9wb3J0
X2Nsb2NrKGludCBjbG9jaywgaW50IGJwYykNCj4gIHN0YXRpYyBib29sIGludGVsX2hkbWlfYnBj
X3Bvc3NpYmxlKHN0cnVjdCBkcm1fY29ubmVjdG9yICpjb25uZWN0b3IsDQo+ICAJCQkJICAgIGlu
dCBicGMsIGJvb2wgaGFzX2hkbWlfc2luaywgYm9vbCB5Y2JjcjQyMF9vdXRwdXQpDQo+ICB7DQo+
ICsJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSB0b19pOTE1KGNvbm5lY3Rvci0+ZGV2
KTsNCj4gIAljb25zdCBzdHJ1Y3QgZHJtX2Rpc3BsYXlfaW5mbyAqaW5mbyA9ICZjb25uZWN0b3It
PmRpc3BsYXlfaW5mbzsNCj4gIAljb25zdCBzdHJ1Y3QgZHJtX2hkbWlfaW5mbyAqaGRtaSA9ICZp
bmZvLT5oZG1pOw0KPiAgDQo+ICAJc3dpdGNoIChicGMpIHsNCj4gIAljYXNlIDEyOg0KPiArCQlp
ZiAoSEFTX0dNQ0goaTkxNSkpDQo+ICsJCQlyZXR1cm4gZmFsc2U7DQo+ICsNCj4gIAkJaWYgKCFo
YXNfaGRtaV9zaW5rKQ0KPiAgCQkJcmV0dXJuIGZhbHNlOw0KPiAgDQo+IEBAIC0xODc4LDYgKzE4
ODIsOSBAQCBzdGF0aWMgYm9vbCBpbnRlbF9oZG1pX2JwY19wb3NzaWJsZShzdHJ1Y3QgZHJtX2Nv
bm5lY3RvciAqY29ubmVjdG9yLA0KPiAgCQllbHNlDQo+ICAJCQlyZXR1cm4gaW5mby0+ZWRpZF9o
ZG1pX2RjX21vZGVzICYgRFJNX0VESURfSERNSV9EQ18zNjsNCj4gIAljYXNlIDEwOg0KPiArCQlp
ZiAoRElTUExBWV9WRVIoaTkxNSkgPCAxMSkNCj4gKwkJCXJldHVybiBmYWxzZTsNCj4gKw0KPiAg
CQlpZiAoIWhhc19oZG1pX3NpbmspDQo+ICAJCQlyZXR1cm4gZmFsc2U7DQo+ICANCj4gQEAgLTE5
OTcsMTIgKzIwMDQsNiBAQCBzdGF0aWMgYm9vbCBoZG1pX2RlZXBfY29sb3JfcG9zc2libGUoY29u
c3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUsDQo+ICAJY29uc3Qgc3RydWN0
IGRybV9kaXNwbGF5X21vZGUgKmFkanVzdGVkX21vZGUgPQ0KPiAgCQkmY3J0Y19zdGF0ZS0+aHcu
YWRqdXN0ZWRfbW9kZTsNCj4gIA0KPiAtCWlmIChIQVNfR01DSChkZXZfcHJpdikpDQo+IC0JCXJl
dHVybiBmYWxzZTsNCj4gLQ0KPiAtCWlmIChicGMgPT0gMTAgJiYgRElTUExBWV9WRVIoZGV2X3By
aXYpIDwgMTEpDQo+IC0JCXJldHVybiBmYWxzZTsNCj4gLQ0KPiAgCS8qDQo+ICAJICogSERNSSBk
ZWVwIGNvbG9yIGFmZmVjdHMgdGhlIGNsb2Nrcywgc28gaXQncyBvbmx5IHBvc3NpYmxlDQo+ICAJ
ICogd2hlbiBub3QgY2xvbmluZyB3aXRoIG90aGVyIGVuY29kZXIgdHlwZXMuDQoNCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5n
IGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
