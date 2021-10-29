Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CA2EB440531
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Oct 2021 23:57:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7FEE66EA8B;
	Fri, 29 Oct 2021 21:57:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BF1A46EA8B
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Oct 2021 21:57:03 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10152"; a="230620057"
X-IronPort-AV: E=Sophos;i="5.87,193,1631602800"; d="scan'208";a="230620057"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2021 14:57:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,193,1631602800"; d="scan'208";a="448262856"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga006.jf.intel.com with ESMTP; 29 Oct 2021 14:57:03 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Fri, 29 Oct 2021 14:57:02 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Fri, 29 Oct 2021 14:57:02 -0700
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2242.012;
 Fri, 29 Oct 2021 14:57:02 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 08/16] drm/i915: Query the vswing levels
 per-lane for icl combo phy
Thread-Index: AQHXuvPUQM/DEFMH+k64jqbYo4wWravrIQkA
Date: Fri, 29 Oct 2021 21:57:02 +0000
Message-ID: <8c9df8f4160f3b1edd325d6d0721261922988d72.camel@intel.com>
References: <20211006204937.30774-1-ville.syrjala@linux.intel.com>
 <20211006204937.30774-9-ville.syrjala@linux.intel.com>
In-Reply-To: <20211006204937.30774-9-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.132]
Content-Type: text/plain; charset="utf-8"
Content-ID: <68FB2884D31BEB4A9BBB2E43F3880672@intel.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 08/16] drm/i915: Query the vswing levels
 per-lane for icl combo phy
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

T24gV2VkLCAyMDIxLTEwLTA2IGF0IDIzOjQ5ICswMzAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOg0K
PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiANCj4gUHJlcGFyZSBmb3IgcGVyLWxhbmUgZHJpdmUgc2V0dGluZ3MgYnkgcXVlcnlpbmcgdGhl
IGRlc2lyZWQgdnN3aW5nDQo+IGxldmVsIHBlci1sYW5lLg0KPiANCj4gU2lnbmVkLW9mZi1ieTog
VmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gLS0tDQo+
ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jIHwgNyArKysrKystDQo+
ICAxIGZpbGUgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pDQo+IA0KPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMNCj4gaW5kZXggYWE3ODljYWJj
NTViLi40YzQwMGYwZTczNDcgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGRpLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kZGkuYw0KPiBAQCAtMTAzOSw3ICsxMDM5LDYgQEAgc3RhdGljIHZvaWQgaWNsX2RkaV9j
b21ib192c3dpbmdfcHJvZ3JhbShzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwNCj4gIAkJ
CQkJIGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQ0KPiAgew0KPiAg
CXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoZW5jb2Rlci0+YmFz
ZS5kZXYpOw0KPiAtCWludCBsZXZlbCA9IGludGVsX2RkaV9sZXZlbChlbmNvZGVyLCBjcnRjX3N0
YXRlLCAwKTsNCj4gIAljb25zdCBzdHJ1Y3QgaW50ZWxfZGRpX2J1Zl90cmFucyAqdHJhbnM7DQo+
ICAJZW51bSBwaHkgcGh5ID0gaW50ZWxfcG9ydF90b19waHkoZGV2X3ByaXYsIGVuY29kZXItPnBv
cnQpOw0KPiAgCWludCBuX2VudHJpZXMsIGxuOw0KPiBAQCAtMTA2OSw2ICsxMDY4LDggQEAgc3Rh
dGljIHZvaWQgaWNsX2RkaV9jb21ib192c3dpbmdfcHJvZ3JhbShzdHJ1Y3QgaW50ZWxfZW5jb2Rl
ciAqZW5jb2RlciwNCj4gIA0KPiAgCS8qIFByb2dyYW0gUE9SVF9UWF9EVzIgKi8NCj4gIAlmb3Ig
KGxuID0gMDsgbG4gPCA0OyBsbisrKSB7DQo+ICsJCWludCBsZXZlbCA9IGludGVsX2RkaV9sZXZl
bChlbmNvZGVyLCBjcnRjX3N0YXRlLCBsbik7DQo+ICsNCj4gIAkJdmFsID0gaW50ZWxfZGVfcmVh
ZChkZXZfcHJpdiwgSUNMX1BPUlRfVFhfRFcyX0xOKGxuLCBwaHkpKTsNCj4gIAkJdmFsICY9IH4o
U1dJTkdfU0VMX0xPV0VSX01BU0sgfCBTV0lOR19TRUxfVVBQRVJfTUFTSyB8DQo+ICAJCQkgUkNP
TVBfU0NBTEFSX01BU0spOw0KPiBAQCAtMTA4Miw2ICsxMDgzLDggQEAgc3RhdGljIHZvaWQgaWNs
X2RkaV9jb21ib192c3dpbmdfcHJvZ3JhbShzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwN
Cj4gIAkvKiBQcm9ncmFtIFBPUlRfVFhfRFc0ICovDQo+ICAJLyogV2UgY2Fubm90IHdyaXRlIHRv
IEdSUC4gSXQgd291bGQgb3ZlcndyaXRlIGluZGl2aWR1YWwgbG9hZGdlbi4gKi8NCj4gIAlmb3Ig
KGxuID0gMDsgbG4gPCA0OyBsbisrKSB7DQo+ICsJCWludCBsZXZlbCA9IGludGVsX2RkaV9sZXZl
bChlbmNvZGVyLCBjcnRjX3N0YXRlLCBsbik7DQo+ICsNCj4gIAkJdmFsID0gaW50ZWxfZGVfcmVh
ZChkZXZfcHJpdiwgSUNMX1BPUlRfVFhfRFc0X0xOKGxuLCBwaHkpKTsNCj4gIAkJdmFsICY9IH4o
UE9TVF9DVVJTT1JfMV9NQVNLIHwgUE9TVF9DVVJTT1JfMl9NQVNLIHwNCj4gIAkJCSBDVVJTT1Jf
Q09FRkZfTUFTSyk7DQo+IEBAIC0xMDkzLDYgKzEwOTYsOCBAQCBzdGF0aWMgdm9pZCBpY2xfZGRp
X2NvbWJvX3Zzd2luZ19wcm9ncmFtKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyLA0KPiAg
DQo+ICAJLyogUHJvZ3JhbSBQT1JUX1RYX0RXNyAqLw0KPiAgCWZvciAobG4gPSAwOyBsbiA8IDQ7
IGxuKyspIHsNCj4gKwkJaW50IGxldmVsID0gaW50ZWxfZGRpX2xldmVsKGVuY29kZXIsIGNydGNf
c3RhdGUsIGxuKTsNCj4gKw0KPiAgCQl2YWwgPSBpbnRlbF9kZV9yZWFkKGRldl9wcml2LCBJQ0xf
UE9SVF9UWF9EVzdfTE4obG4sIHBoeSkpOw0KPiAgCQl2YWwgJj0gfk5fU0NBTEFSX01BU0s7DQo+
ICAJCXZhbCB8PSBOX1NDQUxBUih0cmFucy0+ZW50cmllc1tsZXZlbF0uaWNsLmR3N19uX3NjYWxh
cik7DQoNClRoZSBjb3ZlciBsZXR0ZXIgb3Igb25lIG9mIHRoZSBlYXJsaWVyIHBhdGNoZXMgc2hv
dWxkIGhhdmUgc29tZSBleHBsYW5hdGlvbiBhYm91dCB0aGUgcmVhc29ucyBvZiB0aGlzIHRoZSBn
cm91cCB0byBsYW5lIGNvbnZlcnNpb24uDQpSZWFkaW5nIG9uZSBvZiB0aGUgbGF0ZXIgcGF0Y2hl
cyBJIHVuZGVyc3Rvb2QgaXMgYmVjYXVzZSBEUCAyLjAgYWxsb3dzIGRpZmZlcmVudCBsZXZlbCBw
ZXIgbGFuZSBidXQgd291bGQgYmUgbmljZSB0byBrbm93IGZvciBzdXJlIHRoZSByZWFzb24uDQoN
CldoYXQgaWYgaXQgaXMgb25seSB1c2luZyAyIGxhbmVzPyBQcm9ncmFtbWluZyBkaXNhYmxlZCBs
YW5lcyB3aWxsIGNhdXNlIGFueSBpc3N1ZT8NCg0KDQo=
