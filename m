Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 223253D7C15
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Jul 2021 19:23:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 17E306E9BF;
	Tue, 27 Jul 2021 17:23:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1A3F16E9BF
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Jul 2021 17:23:32 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10058"; a="234362790"
X-IronPort-AV: E=Sophos;i="5.84,274,1620716400"; d="scan'208";a="234362790"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2021 10:23:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,274,1620716400"; d="scan'208";a="464361227"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga008.jf.intel.com with ESMTP; 27 Jul 2021 10:23:08 -0700
Received: from bgsmsx603.gar.corp.intel.com (10.109.78.82) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Tue, 27 Jul 2021 10:23:07 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 BGSMSX603.gar.corp.intel.com (10.109.78.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Tue, 27 Jul 2021 22:53:04 +0530
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2242.010;
 Tue, 27 Jul 2021 10:23:02 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Deak, Imre" <imre.deak@intel.com>
Thread-Topic: [PATCH] drm/i915/adlp: Add workaround to disable CMTG clock
 gating
Thread-Index: AQHXgu13W96OdTugnE6O8uCtSrlwOqtXiNoA
Date: Tue, 27 Jul 2021 17:23:02 +0000
Message-ID: <79fd3f479c9829cfd0f0c7d8e0392e2043cfe8c3.camel@intel.com>
References: <20210727134400.101290-1-imre.deak@intel.com>
In-Reply-To: <20210727134400.101290-1-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.132]
Content-ID: <082BC6F7F943E94686B757F04DC1A9AD@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/adlp: Add workaround to disable
 CMTG clock gating
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

T24gVHVlLCAyMDIxLTA3LTI3IGF0IDE2OjQ0ICswMzAwLCBJbXJlIERlYWsgd3JvdGU6DQo+IFRo
ZSBkcml2ZXIgZG9lc24ndCBkZXBlbmQgYXRtIG9uIHRoZSBjb21tb24gbW9kZSB0aW1pbmcgZ2Vu
ZXJhdG9yDQo+IGZ1bmN0aW9uYWxpdHkgKGl0IHdvdWxkIGJlIHVzZWQgZm9yIHNvbWUgcG93ZXIg
c2F2aW5nIGZlYXR1cmUgYW5kIHBhbmVsDQo+IHRpbWluZyBzeW5jaHJvbml6YXRpb24pLCBob3dl
dmVyIERNQyB3aWxsIGNvcnJ1cHQgdGhlIENNVEcgcmVnaXN0ZXJzDQo+IGFjcm9zcyBEQzUgZW50
cnkvZXhpdCBzZXF1ZW5jZXMgdW5sZXNzIHRoZSBDTVRHIGNsb2NrIGdhdGluZyBpcw0KPiBkaXNh
YmxlZC4gVGhpcyBpbiB0dXJuIGNhbiBsZWFkIHRvIGF0IGxlYXN0IHRoZSBEUExMMC8xIGNvbmZp
Z3VyYXRpb24NCj4gZ2V0dGluZyBzdHVjayBhdCB0aGVpciBsYXN0IHN0YXRlLCB3aGljaCBtZWFu
cyB3ZSBjYW4ndCByZXByb2dyYW0gdGhlbQ0KPiB0byBhIG5ldyBjb25maWcuDQo+IA0KPiBBZGQg
dGhlIGNvcnJlc3BvbmRpbmcgQnNwZWMgd29ya2Fyb3VuZCB0byBwcmV2ZW50IHRoZSBhYm92ZS4N
Cj4gDQo+IENjOiBVbWEgU2hhbmthciA8dW1hLnNoYW5rYXJAaW50ZWwuY29tPg0KPiBDYzogSm9z
w6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+DQo+IENjOiBBbnNodW1h
biBHdXB0YSA8YW5zaHVtYW4uZ3VwdGFAaW50ZWwuY29tPg0KPiBTaWduZWQtb2ZmLWJ5OiBJbXJl
IERlYWsgPGltcmUuZGVha0BpbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgfCAxOCArKysrKysrKysrKysrKysrKysNCj4gIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggICAgICAgICAgICAgIHwgIDMgKysrDQo+ICAy
IGZpbGVzIGNoYW5nZWQsIDIxIGluc2VydGlvbnMoKykNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+IGluZGV4IGJiMGFlYmNjM2VjZDMuLjQ3
NGQ3MjNhMzc0NTQgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZGlzcGxheS5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGlzcGxheS5jDQo+IEBAIC0xMzE5OCw2ICsxMzE5OCwyNCBAQCBzdGF0aWMgdm9pZCBpbnRl
bF9lYXJseV9kaXNwbGF5X3dhcyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpDQo+
ICAJCQkgICAgIEtCTF9BUkJfRklMTF9TUEFSRV8xMyB8IEtCTF9BUkJfRklMTF9TUEFSRV8xNCwN
Cj4gIAkJCSAgICAgS0JMX0FSQl9GSUxMX1NQQVJFXzE0KTsNCj4gIAl9DQo+ICsNCj4gKwlpZiAo
SVNfQURMUF9ESVNQTEFZX1NURVAoZGV2X3ByaXYsIFNURVBfQTAsIFNURVBfQjApKSB7DQo+ICsJ
CXVpbnQzMl90IHZhbDsNCg0KRml4aW5nIHN0eWxlIGVycm9ycyBwb2ludGVkIGJ5IGJvdC4NCg0K
UmV2aWV3ZWQtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29t
Pg0KDQo+ICsNCj4gKwkJLyoNCj4gKwkJICogV2FfMTYwMTEwNjk1MTY6YWRsLXBbYTBdDQo+ICsJ
CSAqDQo+ICsJCSAqIEFsbCBDTVRHIHJlZ3MgYXJlIHVucmVsaWFibGUgdW50aWwgQ01URyBjbG9j
ayBnYXRpbmcgaXMNCj4gKwkJICogZGlzYWJsZWQsIHNvIHdlIGNhbiBvbmx5IGFzc3VtZSB0aGUg
ZGVmYXVsdCBDTVRHX0NISUNLRU4NCj4gKwkJICogcmVnIHZhbHVlIGFuZCBzYW5pdHkgY2hlY2sg
dGhpcyBhc3N1bXB0aW9uIHdpdGggYSBkb3VibGUNCj4gKwkJICogcmVhZCwgd2hpY2ggcHJlc3Vt
YWJseSByZXR1cm5zIHRoZSBjb3JyZWN0IHZhbHVlIGV2ZW4gd2l0aA0KPiArCQkgKiBjbG9jayBn
YXRpbmcgb24uDQo+ICsJCSAqLw0KPiArCQl2YWwgPSBpbnRlbF9kZV9yZWFkKGRldl9wcml2LCBU
UkFOU19DTVRHX0NISUNLRU4pOw0KPiArCQl2YWwgPSBpbnRlbF9kZV9yZWFkKGRldl9wcml2LCBU
UkFOU19DTVRHX0NISUNLRU4pOw0KPiArCQlpbnRlbF9kZV93cml0ZShkZXZfcHJpdiwgVFJBTlNf
Q01UR19DSElDS0VOLCBESVNBQkxFX0RQVF9DTEtfR0FUSU5HKTsNCj4gKwkJZHJtX1dBUk5fT04o
JmRldl9wcml2LT5kcm0sIHZhbCAmfiBESVNBQkxFX0RQVF9DTEtfR0FUSU5HKTsNCj4gKwl9DQo+
ICB9DQo+ICANCj4gIHN0YXRpYyB2b2lkIGlieF9zYW5pdGl6ZV9wY2hfaGRtaV9wb3J0KHN0cnVj
dCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwNCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfcmVnLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oDQo+
IGluZGV4IGM0MWY5MDgzZTIzMzguLmUwMmJkNzVkZDEwNjQgMTAwNjQ0DQo+IC0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9yZWcuaA0KPiBAQCAtMTAyMDgsNiArMTAyMDgsOSBAQCBlbnVtIHNrbF9wb3dlcl9nYXRl
IHsNCj4gICNkZWZpbmUgIFBPUlRfU1lOQ19NT0RFX01BU1RFUl9TRUxFQ1RfTUFTSwlSRUdfR0VO
TUFTSygyLCAwKQ0KPiAgI2RlZmluZSAgUE9SVF9TWU5DX01PREVfTUFTVEVSX1NFTEVDVCh4KQlS
RUdfRklFTERfUFJFUChQT1JUX1NZTkNfTU9ERV9NQVNURVJfU0VMRUNUX01BU0ssICh4KSkNCj4g
IA0KPiArI2RlZmluZSBUUkFOU19DTVRHX0NISUNLRU4JCV9NTUlPKDB4NmZhOTApDQo+ICsjZGVm
aW5lICBESVNBQkxFX0RQVF9DTEtfR0FUSU5HCQlSRUdfQklUKDEpDQo+ICsNCj4gIC8qIERpc3Bs
YXlQb3J0IFRyYW5zcG9ydCBDb250cm9sICovDQo+ICAjZGVmaW5lIF9EUF9UUF9DVExfQQkJCTB4
NjQwNDANCj4gICNkZWZpbmUgX0RQX1RQX0NUTF9CCQkJMHg2NDE0MA0KDQpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
