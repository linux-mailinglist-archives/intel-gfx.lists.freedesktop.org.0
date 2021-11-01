Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CA4BE441F6D
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Nov 2021 18:37:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F0F0C6E084;
	Mon,  1 Nov 2021 17:37:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2D4186E084
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Nov 2021 17:37:41 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10154"; a="291906686"
X-IronPort-AV: E=Sophos;i="5.87,200,1631602800"; d="scan'208";a="291906686"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Nov 2021 10:36:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,200,1631602800"; d="scan'208";a="500133754"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga008.jf.intel.com with ESMTP; 01 Nov 2021 10:36:27 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Mon, 1 Nov 2021 10:36:27 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Mon, 1 Nov 2021 10:36:26 -0700
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2242.012;
 Mon, 1 Nov 2021 10:36:26 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH 08/16] drm/i915: Query the vswing levels
 per-lane for icl combo phy
Thread-Index: AQHXuvPUQM/DEFMH+k64jqbYo4wWravrIQkAgAPwAYCAAH4zAA==
Date: Mon, 1 Nov 2021 17:36:26 +0000
Message-ID: <2ec52bd3d17d55542a0873d4fd240d4577a418fd.camel@intel.com>
References: <20211006204937.30774-1-ville.syrjala@linux.intel.com>
 <20211006204937.30774-9-ville.syrjala@linux.intel.com>
 <8c9df8f4160f3b1edd325d6d0721261922988d72.camel@intel.com>
 <YX+9QfQty2vn6yoP@intel.com>
In-Reply-To: <YX+9QfQty2vn6yoP@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-Type: text/plain; charset="utf-8"
Content-ID: <4808FE240318E342A6C6054EC0656447@intel.com>
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCAyMDIxLTExLTAxIGF0IDEyOjExICswMjAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
DQo+IE9uIEZyaSwgT2N0IDI5LCAyMDIxIGF0IDA5OjU3OjAyUE0gKzAwMDAsIFNvdXphLCBKb3Nl
IHdyb3RlOg0KPiA+IE9uIFdlZCwgMjAyMS0xMC0wNiBhdCAyMzo0OSArMDMwMCwgVmlsbGUgU3ly
amFsYSB3cm90ZToNCj4gPiA+IEZyb206IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBs
aW51eC5pbnRlbC5jb20+DQo+ID4gPiANCj4gPiA+IFByZXBhcmUgZm9yIHBlci1sYW5lIGRyaXZl
IHNldHRpbmdzIGJ5IHF1ZXJ5aW5nIHRoZSBkZXNpcmVkIHZzd2luZw0KPiA+ID4gbGV2ZWwgcGVy
LWxhbmUuDQo+ID4gPiANCj4gPiA+IFNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmls
bGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+ID4gPiAtLS0NCj4gPiA+ICBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jIHwgNyArKysrKystDQo+ID4gPiAgMSBmaWxl
IGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQ0KPiA+ID4gDQo+ID4gPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMNCj4gPiA+IGluZGV4IGFhNzg5
Y2FiYzU1Yi4uNGM0MDBmMGU3MzQ3IDEwMDY0NA0KPiA+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYw0KPiA+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kZGkuYw0KPiA+ID4gQEAgLTEwMzksNyArMTAzOSw2IEBAIHN0YXRp
YyB2b2lkIGljbF9kZGlfY29tYm9fdnN3aW5nX3Byb2dyYW0oc3RydWN0IGludGVsX2VuY29kZXIg
KmVuY29kZXIsDQo+ID4gPiAgCQkJCQkgY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNy
dGNfc3RhdGUpDQo+ID4gPiAgew0KPiA+ID4gIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2
X3ByaXYgPSB0b19pOTE1KGVuY29kZXItPmJhc2UuZGV2KTsNCj4gPiA+IC0JaW50IGxldmVsID0g
aW50ZWxfZGRpX2xldmVsKGVuY29kZXIsIGNydGNfc3RhdGUsIDApOw0KPiA+ID4gIAljb25zdCBz
dHJ1Y3QgaW50ZWxfZGRpX2J1Zl90cmFucyAqdHJhbnM7DQo+ID4gPiAgCWVudW0gcGh5IHBoeSA9
IGludGVsX3BvcnRfdG9fcGh5KGRldl9wcml2LCBlbmNvZGVyLT5wb3J0KTsNCj4gPiA+ICAJaW50
IG5fZW50cmllcywgbG47DQo+ID4gPiBAQCAtMTA2OSw2ICsxMDY4LDggQEAgc3RhdGljIHZvaWQg
aWNsX2RkaV9jb21ib192c3dpbmdfcHJvZ3JhbShzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2Rl
ciwNCj4gPiA+ICANCj4gPiA+ICAJLyogUHJvZ3JhbSBQT1JUX1RYX0RXMiAqLw0KPiA+ID4gIAlm
b3IgKGxuID0gMDsgbG4gPCA0OyBsbisrKSB7DQo+ID4gPiArCQlpbnQgbGV2ZWwgPSBpbnRlbF9k
ZGlfbGV2ZWwoZW5jb2RlciwgY3J0Y19zdGF0ZSwgbG4pOw0KPiA+ID4gKw0KPiA+ID4gIAkJdmFs
ID0gaW50ZWxfZGVfcmVhZChkZXZfcHJpdiwgSUNMX1BPUlRfVFhfRFcyX0xOKGxuLCBwaHkpKTsN
Cj4gPiA+ICAJCXZhbCAmPSB+KFNXSU5HX1NFTF9MT1dFUl9NQVNLIHwgU1dJTkdfU0VMX1VQUEVS
X01BU0sgfA0KPiA+ID4gIAkJCSBSQ09NUF9TQ0FMQVJfTUFTSyk7DQo+ID4gPiBAQCAtMTA4Miw2
ICsxMDgzLDggQEAgc3RhdGljIHZvaWQgaWNsX2RkaV9jb21ib192c3dpbmdfcHJvZ3JhbShzdHJ1
Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwNCj4gPiA+ICAJLyogUHJvZ3JhbSBQT1JUX1RYX0RX
NCAqLw0KPiA+ID4gIAkvKiBXZSBjYW5ub3Qgd3JpdGUgdG8gR1JQLiBJdCB3b3VsZCBvdmVyd3Jp
dGUgaW5kaXZpZHVhbCBsb2FkZ2VuLiAqLw0KPiA+ID4gIAlmb3IgKGxuID0gMDsgbG4gPCA0OyBs
bisrKSB7DQo+ID4gPiArCQlpbnQgbGV2ZWwgPSBpbnRlbF9kZGlfbGV2ZWwoZW5jb2RlciwgY3J0
Y19zdGF0ZSwgbG4pOw0KPiA+ID4gKw0KPiA+ID4gIAkJdmFsID0gaW50ZWxfZGVfcmVhZChkZXZf
cHJpdiwgSUNMX1BPUlRfVFhfRFc0X0xOKGxuLCBwaHkpKTsNCj4gPiA+ICAJCXZhbCAmPSB+KFBP
U1RfQ1VSU09SXzFfTUFTSyB8IFBPU1RfQ1VSU09SXzJfTUFTSyB8DQo+ID4gPiAgCQkJIENVUlNP
Ul9DT0VGRl9NQVNLKTsNCj4gPiA+IEBAIC0xMDkzLDYgKzEwOTYsOCBAQCBzdGF0aWMgdm9pZCBp
Y2xfZGRpX2NvbWJvX3Zzd2luZ19wcm9ncmFtKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVy
LA0KPiA+ID4gIA0KPiA+ID4gIAkvKiBQcm9ncmFtIFBPUlRfVFhfRFc3ICovDQo+ID4gPiAgCWZv
ciAobG4gPSAwOyBsbiA8IDQ7IGxuKyspIHsNCj4gPiA+ICsJCWludCBsZXZlbCA9IGludGVsX2Rk
aV9sZXZlbChlbmNvZGVyLCBjcnRjX3N0YXRlLCBsbik7DQo+ID4gPiArDQo+ID4gPiAgCQl2YWwg
PSBpbnRlbF9kZV9yZWFkKGRldl9wcml2LCBJQ0xfUE9SVF9UWF9EVzdfTE4obG4sIHBoeSkpOw0K
PiA+ID4gIAkJdmFsICY9IH5OX1NDQUxBUl9NQVNLOw0KPiA+ID4gIAkJdmFsIHw9IE5fU0NBTEFS
KHRyYW5zLT5lbnRyaWVzW2xldmVsXS5pY2wuZHc3X25fc2NhbGFyKTsNCj4gPiANCj4gPiBUaGUg
Y292ZXIgbGV0dGVyIG9yIG9uZSBvZiB0aGUgZWFybGllciBwYXRjaGVzIHNob3VsZCBoYXZlIHNv
bWUgZXhwbGFuYXRpb24gYWJvdXQgdGhlIHJlYXNvbnMgb2YgdGhpcyB0aGUgZ3JvdXAgdG8gbGFu
ZSBjb252ZXJzaW9uLg0KPiANCj4gVGhleSBkbyBzYXkgaXQncyBmb3IgcGVyLWxhbmUgZHJpdmUg
c2V0aW5ncy4gTm90IHJhbGx5IHN1cmUgd2hhdCB0byBhZGQNCj4gdG8gdGhhdC4NCj4gDQo+ID4g
UmVhZGluZyBvbmUgb2YgdGhlIGxhdGVyIHBhdGNoZXMgSSB1bmRlcnN0b29kIGlzIGJlY2F1c2Ug
RFAgMi4wIGFsbG93cyBkaWZmZXJlbnQgbGV2ZWwgcGVyIGxhbmUgYnV0IHdvdWxkIGJlIG5pY2Ug
dG8ga25vdyBmb3Igc3VyZSB0aGUgcmVhc29uLg0KPiANCj4gSXQgaGFzIGFsd2F5cyBiZWVuIGEg
ZmVhdHVyZSBvZiBEUCwgd2UganVzdCBuZXZlciBpbXBsZW1lbnRlZCBpdCBmb3INCj4gd2hhdGV2
ZXIgcmVhc29uLg0KPiANCj4gPiANCj4gPiBXaGF0IGlmIGl0IGlzIG9ubHkgdXNpbmcgMiBsYW5l
cz8gUHJvZ3JhbW1pbmcgZGlzYWJsZWQgbGFuZXMgd2lsbCBjYXVzZSBhbnkgaXNzdWU/DQo+IA0K
PiBEZXBlbmRzIG9uIHdoZXRoZXIgdGhlIHJlZ2lzdGVycyBhcmUgYXZhaWxhYmxlIG9yIG5vdC4g
Rm9yIENIViBJIGtub3cNCj4gdGhlIHVudXNlZCBsYW5lcyB3aWxsIGJlIGZ1bGx5IHBvd2VyZWQg
b2ZmIGFuZCB5b3UgY2FuJ3QgYWN0dWFsbHkgYWNjZXNzDQo+IHRoZSByZWdpc3RlcnMgKGFuZCB2
bHZfZHBpb19yZWFkKCkgd2lsbCBhY3R1YWxseSBXQVJOIHdoZW4gaXQgc2VlcyB0aGUNCj4gfjAg
dmFsdWUgZnJvbSBhbiBpbmFjY2Vzc2libGUgcmVnaXN0ZXIpLiBGb3IgbGF0ZXIgcGxhdGZvcm1z
IEkgZG9uJ3QNCj4gYWN0dWFsbHkga25vdyB3aGF0IGhhcHBlbnMuIFdlIGRvbid0IGhhdmUgYW4g
ZXF1aXZhbGVudCBvZiB0aGF0IENIViBXQVJODQo+IGJ1dCBJIHdvdWxkIGhvcGUgdGhhdCB3ZSdk
IGdldCBhbiB1bmNsYWltZWQgcmVnIHdhcm5pbmcgaWYgdGhlIHJlZ2lzdGVyDQo+IGlzIGluYWNj
ZXNzaWJsZS4NCj4gDQo+IEFsdGhvdWdoIEkgc3VwcG9zZSB0aGVyZSdzIGlzbid0IGFueSByZWFs
IGhhcm0gaW4gcG9raW5nIGluYWNjc3NpYmxlDQo+IHJlZ2lzdGVycy4gVGhlIHJlYWRzIHNob3Vs
ZCBqdXN0IHJldHVybiBhbGwgMHMgb3IgYWxsIDFzLCBhbmQgdGhlDQo+IHdyaXRlcyBnbyB0byAv
ZGV2L251bGwuDQo+IA0KDQpGYWlyIGVub3VnaC4NCg0KUmV2aWV3ZWQtYnk6IEpvc8OpIFJvYmVy
dG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPg0K
