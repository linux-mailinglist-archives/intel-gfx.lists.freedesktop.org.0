Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 88D0332FBDA
	for <lists+intel-gfx@lfdr.de>; Sat,  6 Mar 2021 17:21:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A1606E219;
	Sat,  6 Mar 2021 16:21:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8F9016E219
 for <intel-gfx@lists.freedesktop.org>; Sat,  6 Mar 2021 16:21:35 +0000 (UTC)
IronPort-SDR: XT9v2PU4L6cWjjiu+w2fQkl/XwDsL9s91Tf2bvpMxUc0zGNcBwinvHF0+NDtzGanHL+yc3yKgy
 TeuW+KPXv14A==
X-IronPort-AV: E=McAfee;i="6000,8403,9915"; a="207566744"
X-IronPort-AV: E=Sophos;i="5.81,228,1610438400"; d="scan'208";a="207566744"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2021 08:21:35 -0800
IronPort-SDR: R5zzn5Ij3Cl0n5DC0xIr4zA9RaGNus6ctLhIosuhFii9Bc0eH5UmkLhkdaEbzPsyCZ354/jcVH
 jU8eT0TNZESA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,228,1610438400"; d="scan'208";a="598244019"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by fmsmga006.fm.intel.com with ESMTP; 06 Mar 2021 08:21:35 -0800
Received: from bgsmsx606.gar.corp.intel.com (10.67.234.8) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Sat, 6 Mar 2021 08:21:33 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 BGSMSX606.gar.corp.intel.com (10.67.234.8) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Sat, 6 Mar 2021 21:51:30 +0530
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2106.013;
 Sat, 6 Mar 2021 08:21:28 -0800
From: "Souza, Jose" <jose.souza@intel.com>
To: "Mun, Gwan-gyeong" <gwan-gyeong.mun@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v2 1/3] drm/i915/display: Replace dc3co_enabled with
 dc3co_exitline on intel_psr struct
Thread-Index: AQHXEfrU9jgPw1Fi0kmLkRn3BhGs+qp3rAEA
Date: Sat, 6 Mar 2021 16:20:49 +0000
Message-ID: <393867a5d635006e2f0c40d59882aaf2b4e4a195.camel@intel.com>
References: <20210305200451.397875-1-gwan-gyeong.mun@intel.com>
In-Reply-To: <20210305200451.397875-1-gwan-gyeong.mun@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.132]
Content-ID: <72B4E21E6F3511419D34A716D5E80CA4@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2 1/3] drm/i915/display: Replace
 dc3co_enabled with dc3co_exitline on intel_psr struct
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

T24gRnJpLCAyMDIxLTAzLTA1IGF0IDIyOjA0ICswMjAwLCBHd2FuLWd5ZW9uZyBNdW4gd3JvdGU6
DQo+IEl0IHJlcGxhY2VzIGRjM2NvX2VuYWJsZWQgd2l0aCBkYzNjb19leGl0bGluZSBvbiBpbnRl
bF9wc3Igc3RydWN0Lg0KPiBBbmQgaXQgc2F2ZXMgZGMzY29fZXhpdGxpbmUsIG5vdCBkYzNjb19l
bmFibGVkLCBzbyB3ZSBjYW4gdXNlDQo+IGRjM2NvX2V4aXRsaW5lIHdpdGhvdXQgaW50ZWxfY3J0
Y19zdGF0ZSBvbiBvdGhlciBwc3IgaW50ZXJuYWwgZnVuY3Rpb24NCj4gbGlrZSBhcyBpbnRlbF9w
c3JfZW5hYmxlX3NvdXJjZSgpLg0KPiANCj4gdjI6IERvIG5vdCBtdXRhdGUgZXh0ZXJuYWxseSB2
aXNpYmxlIHN0YXRlIGluIC5jb21wdXRlX2NvbmZpZygpLiAoVmlsbGUpDQo+IA0KDQpSZXZpZXdl
ZC1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+DQoNCj4g
Q2M6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+IENj
OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4NCj4gQ2M6IEFu
c2h1bWFuIEd1cHRhIDxhbnNodW1hbi5ndXB0YUBpbnRlbC5jb20+DQo+IFNpZ25lZC1vZmYtYnk6
IEd3YW4tZ3llb25nIE11biA8Z3dhbi1neWVvbmcubXVuQGludGVsLmNvbT4NCj4gLS0tDQo+IMKg
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmggfCAgMiAr
LQ0KPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMgICAgICAgICAg
IHwgMTAgKysrKystLS0tLQ0KPiDCoDIgZmlsZXMgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspLCA2
IGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgNCj4gaW5kZXggMWE3NmUxZDlkZTdhLi40NWM2Mzg4ZmE2
MDUgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlz
cGxheV90eXBlcy5oDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGlzcGxheV90eXBlcy5oDQo+IEBAIC0xNDUzLDcgKzE0NTMsNyBAQCBzdHJ1Y3QgaW50ZWxfcHNy
IHsNCj4gwqAJYm9vbCBzaW5rX25vdF9yZWxpYWJsZTsNCj4gwqAJYm9vbCBpcnFfYXV4X2Vycm9y
Ow0KPiDCoAl1MTYgc3VfeF9ncmFudWxhcml0eTsNCj4gLQlib29sIGRjM2NvX2VuYWJsZWQ7DQo+
ICsJdTMyIGRjM2NvX2V4aXRsaW5lOw0KPiDCoAl1MzIgZGMzY29fZXhpdF9kZWxheTsNCj4gwqAJ
c3RydWN0IGRlbGF5ZWRfd29yayBkYzNjb193b3JrOw0KPiDCoAlzdHJ1Y3QgZHJtX2RwX3ZzY19z
ZHAgdnNjOw0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9wc3IuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gaW5k
ZXggY2Q0MzQyODVlM2I3Li45YzI1YTcwMTk0M2EgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiBAQCAtNjM3LDcgKzYzNyw3IEBAIHN0YXRpYyB2b2lk
IHRnbF9kYzNjb19kaXNhYmxlX3dvcmsoc3RydWN0IHdvcmtfc3RydWN0ICp3b3JrKQ0KPiDCoA0K
PiANCj4gDQo+IA0KPiDCoHN0YXRpYyB2b2lkIHRnbF9kaXNhbGxvd19kYzNjb19vbl9wc3IyX2V4
aXQoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCkNCj4gwqB7DQo+IC0JaWYgKCFpbnRlbF9kcC0+
cHNyLmRjM2NvX2VuYWJsZWQpDQo+ICsJaWYgKCFpbnRlbF9kcC0+cHNyLmRjM2NvX2V4aXRsaW5l
KQ0KPiDCoAkJcmV0dXJuOw0KPiDCoA0KPiANCj4gDQo+IA0KPiDCoAljYW5jZWxfZGVsYXllZF93
b3JrKCZpbnRlbF9kcC0+cHNyLmRjM2NvX3dvcmspOw0KPiBAQCAtOTM4LDcgKzkzOCw3IEBAIHN0
YXRpYyB2b2lkIGludGVsX3Bzcl9lbmFibGVfc291cmNlKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxf
ZHAsDQo+IMKgDQo+IA0KPiANCj4gDQo+IMKgCXBzcl9pcnFfY29udHJvbChpbnRlbF9kcCk7DQo+
IMKgDQo+IA0KPiANCj4gDQo+IC0JaWYgKGNydGNfc3RhdGUtPmRjM2NvX2V4aXRsaW5lKSB7DQo+
ICsJaWYgKGludGVsX2RwLT5wc3IuZGMzY29fZXhpdGxpbmUpIHsNCj4gwqAJCXUzMiB2YWw7DQo+
IMKgDQo+IA0KPiANCj4gDQo+IMKgCQkvKg0KPiBAQCAtOTQ3LDcgKzk0Nyw3IEBAIHN0YXRpYyB2
b2lkIGludGVsX3Bzcl9lbmFibGVfc291cmNlKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsDQo+
IMKgCQkgKi8NCj4gwqAJCXZhbCA9IGludGVsX2RlX3JlYWQoZGV2X3ByaXYsIEVYSVRMSU5FKGNw
dV90cmFuc2NvZGVyKSk7DQo+IMKgCQl2YWwgJj0gfkVYSVRMSU5FX01BU0s7DQo+IC0JCXZhbCB8
PSBjcnRjX3N0YXRlLT5kYzNjb19leGl0bGluZSA8PCBFWElUTElORV9TSElGVDsNCj4gKwkJdmFs
IHw9IGludGVsX2RwLT5wc3IuZGMzY29fZXhpdGxpbmUgPDwgRVhJVExJTkVfU0hJRlQ7DQo+IMKg
CQl2YWwgfD0gRVhJVExJTkVfRU5BQkxFOw0KPiDCoAkJaW50ZWxfZGVfd3JpdGUoZGV2X3ByaXYs
IEVYSVRMSU5FKGNwdV90cmFuc2NvZGVyKSwgdmFsKTsNCj4gwqAJfQ0KPiBAQCAtOTcyLDExICs5
NzIsMTEgQEAgc3RhdGljIHZvaWQgaW50ZWxfcHNyX2VuYWJsZV9sb2NrZWQoc3RydWN0IGludGVs
X2RwICppbnRlbF9kcCwNCj4gwqAJaW50ZWxfZHAtPnBzci5wc3IyX2VuYWJsZWQgPSBjcnRjX3N0
YXRlLT5oYXNfcHNyMjsNCj4gwqAJaW50ZWxfZHAtPnBzci5idXN5X2Zyb250YnVmZmVyX2JpdHMg
PSAwOw0KPiDCoAlpbnRlbF9kcC0+cHNyLnBpcGUgPSB0b19pbnRlbF9jcnRjKGNydGNfc3RhdGUt
PnVhcGkuY3J0YyktPnBpcGU7DQo+IC0JaW50ZWxfZHAtPnBzci5kYzNjb19lbmFibGVkID0gISFj
cnRjX3N0YXRlLT5kYzNjb19leGl0bGluZTsNCj4gwqAJaW50ZWxfZHAtPnBzci50cmFuc2NvZGVy
ID0gY3J0Y19zdGF0ZS0+Y3B1X3RyYW5zY29kZXI7DQo+IMKgCS8qIERDNS9EQzYgcmVxdWlyZXMg
YXQgbGVhc3QgNiBpZGxlIGZyYW1lcyAqLw0KPiDCoAl2YWwgPSB1c2Vjc190b19qaWZmaWVzKGlu
dGVsX2dldF9mcmFtZV90aW1lX3VzKGNydGNfc3RhdGUpICogNik7DQo+IMKgCWludGVsX2RwLT5w
c3IuZGMzY29fZXhpdF9kZWxheSA9IHZhbDsNCj4gKwlpbnRlbF9kcC0+cHNyLmRjM2NvX2V4aXRs
aW5lID0gY3J0Y19zdGF0ZS0+ZGMzY29fZXhpdGxpbmU7DQo+IMKgCWludGVsX2RwLT5wc3IucHNy
Ml9zZWxfZmV0Y2hfZW5hYmxlZCA9IGNydGNfc3RhdGUtPmVuYWJsZV9wc3IyX3NlbF9mZXRjaDsN
Cj4gwqANCj4gDQo+IA0KPiANCj4gwqAJLyoNCj4gQEAgLTE3NjEsNyArMTc2MSw3IEBAIHRnbF9k
YzNjb19mbHVzaChzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLCB1bnNpZ25lZCBpbnQgZnJvbnRi
dWZmZXJfYml0cywNCj4gwqB7DQo+IMKgCW11dGV4X2xvY2soJmludGVsX2RwLT5wc3IubG9jayk7
DQo+IMKgDQo+IA0KPiANCj4gDQo+IC0JaWYgKCFpbnRlbF9kcC0+cHNyLmRjM2NvX2VuYWJsZWQp
DQo+ICsJaWYgKCFpbnRlbF9kcC0+cHNyLmRjM2NvX2V4aXRsaW5lKQ0KPiDCoAkJZ290byB1bmxv
Y2s7DQo+IMKgDQo+IA0KPiANCj4gDQo+IMKgCWlmICghaW50ZWxfZHAtPnBzci5wc3IyX2VuYWJs
ZWQgfHwgIWludGVsX2RwLT5wc3IuYWN0aXZlKQ0KDQpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZngK
