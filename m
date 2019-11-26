Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9756510A642
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Nov 2019 22:57:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6C6F66E198;
	Tue, 26 Nov 2019 21:57:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 539176E198
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Nov 2019 21:57:21 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Nov 2019 13:57:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,247,1571727600"; d="scan'208";a="383292902"
Received: from fmsmsx105.amr.corp.intel.com ([10.18.124.203])
 by orsmga005.jf.intel.com with ESMTP; 26 Nov 2019 13:57:20 -0800
Received: from FMSMSX110.amr.corp.intel.com (10.18.116.10) by
 FMSMSX105.amr.corp.intel.com (10.18.124.203) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 26 Nov 2019 13:57:20 -0800
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.27]) by
 FMSMSX110.amr.corp.intel.com ([169.254.14.163]) with mapi id 14.03.0439.000;
 Tue, 26 Nov 2019 13:57:20 -0800
From: "Souza, Jose" <jose.souza@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>
Thread-Topic: [Intel-gfx] [PATCH 3/3] drm/i915: Program SHPD_FILTER_CNT on CNP+
Thread-Index: AQHVpJ2RLgisHJGD7065mUqtRt7qZ6eegVQAgAACtYCAAAHJAA==
Date: Tue, 26 Nov 2019 21:57:19 +0000
Message-ID: <184f4056bf3acd173b39ef0e47fec79468121611.camel@intel.com>
References: <20191126210732.407496-1-matthew.d.roper@intel.com>
 <20191126210732.407496-3-matthew.d.roper@intel.com>
 <9113b0172381d42bfeda71b76876dd870472cbfb.camel@intel.com>
 <20191126215055.GC6337@mdroper-desk1.amr.corp.intel.com>
In-Reply-To: <20191126215055.GC6337@mdroper-desk1.amr.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.98.40.66]
Content-ID: <E47A174A599D244E88AB890F89C8BA49@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915: Program SHPD_FILTER_CNT on
 CNP+
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCAyMDE5LTExLTI2IGF0IDEzOjUwIC0wODAwLCBNYXR0IFJvcGVyIHdyb3RlOg0KPiBP
biBUdWUsIE5vdiAyNiwgMjAxOSBhdCAwMTo0MToxNVBNIC0wODAwLCBTb3V6YSwgSm9zZSB3cm90
ZToNCj4gPiBPbiBUdWUsIDIwMTktMTEtMjYgYXQgMTM6MDcgLTA4MDAsIE1hdHQgUm9wZXIgd3Jv
dGU6DQo+ID4gPiBUaGUgYnNwZWMgdGVsbHMgdXMgJ1Byb2dyYW0gU0hQRF9GSUxURVJfQ05UIHdp
dGggdGhlICI1MDANCj4gPiA+IG1pY3Jvc2Vjb25kcw0KPiA+ID4gYWRqdXN0ZWQiIHZhbHVlIGJl
Zm9yZSBlbmFibGluZyBob3RwbHVnIGRldGVjdGlvbicgb24gQ05QKy4gIFdlDQo+ID4gPiBoYXZl
bid0DQo+ID4gPiBiZWVuIHRvdWNoaW5nIHRoaXMgcmVnaXN0ZXIgYXQgYWxsIHRodXMgZmFyLCBi
dXQgd2Ugc2hvdWxkDQo+ID4gPiBwcm9iYWJseQ0KPiA+ID4gZm9sbG93IHRoZSBic3BlYydzIGd1
aWRhbmNlLg0KPiA+ID4gDQo+ID4gPiBUaGUgcmVnaXN0ZXIgYWxzbyBleGlzdHMgb24gTFBUIGFu
ZCBTUFQsIGJ1dCB0aGVyZSBpc24ndCBhbnkNCj4gPiA+IHNwZWNpZmljDQo+ID4gPiBndWlkYW5j
ZSBJIGNhbiBmaW5kIG9uIGhvdyB3ZSBzaG91bGQgYmUgcHJvZ3JhbW1pbmcgaXQgdGhlcmUgc28N
Cj4gPiA+IGxldCdzDQo+ID4gPiBsZWF2ZSBpdCBiZSBmb3Igbm93Lg0KPiA+ID4gDQo+ID4gPiBC
c3BlYzogNDM0Mg0KPiA+ID4gQnNwZWM6IDMxMjk3DQo+ID4gPiBCc3BlYzogODQwNw0KPiA+ID4g
QnNwZWM6IDQ5MzA1DQo+ID4gPiBCc3BlYzogNTA0NzMNCj4gPiA+IA0KPiA+ID4gU2lnbmVkLW9m
Zi1ieTogTWF0dCBSb3BlciA8bWF0dGhldy5kLnJvcGVyQGludGVsLmNvbT4NCj4gPiA+IC0tLQ0K
PiA+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfaXJxLmMgfCA1ICsrKysrDQo+ID4gPiAg
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCB8IDQgKysrKw0KPiA+ID4gIDIgZmlsZXMg
Y2hhbmdlZCwgOSBpbnNlcnRpb25zKCspDQo+ID4gPiANCj4gPiA+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2lycS5jDQo+ID4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfaXJxLmMNCj4gPiA+IGluZGV4IGRhZTAwZjdkZDdkZi4uMDI4Y2I2MjM5YzEyIDEwMDY0
NA0KPiA+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9pcnEuYw0KPiA+ID4gKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9pcnEuYw0KPiA+ID4gQEAgLTI5NzYsNiArMjk3
Niw4IEBAIHN0YXRpYyB2b2lkIGljcF9ocGRfaXJxX3NldHVwKHN0cnVjdA0KPiA+ID4gZHJtX2k5
MTVfcHJpdmF0ZSAqZGV2X3ByaXYsDQo+ID4gPiAgCWhvdHBsdWdfaXJxcyA9IHNkZV9kZGlfbWFz
ayB8IHNkZV90Y19tYXNrOw0KPiA+ID4gIAllbmFibGVkX2lycXMgPSBpbnRlbF9ocGRfZW5hYmxl
ZF9pcnFzKGRldl9wcml2LCBwaW5zKTsNCj4gPiA+ICANCj4gPiA+ICsJSTkxNV9XUklURShTSFBE
X0ZJTFRFUl9DTlQsIFNIUERfRklMVEVSX0NOVF81MDBfQURKKTsNCj4gPiA+ICsNCj4gPiA+ICAJ
aWJ4X2Rpc3BsYXlfaW50ZXJydXB0X3VwZGF0ZShkZXZfcHJpdiwgaG90cGx1Z19pcnFzLA0KPiA+
ID4gZW5hYmxlZF9pcnFzKTsNCj4gPiA+ICANCj4gPiA+ICAJaWNwX2hwZF9kZXRlY3Rpb25fc2V0
dXAoZGV2X3ByaXYsIGRkaV9lbmFibGVfbWFzaywNCj4gPiA+IHRjX2VuYWJsZV9tYXNrKTsNCj4g
PiA+IEBAIC0zMDgxLDYgKzMwODMsOSBAQCBzdGF0aWMgdm9pZCBzcHRfaHBkX2lycV9zZXR1cChz
dHJ1Y3QNCj4gPiA+IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQ0KPiA+ID4gIHsNCj4gPiA+
ICAJdTMyIGhvdHBsdWdfaXJxcywgZW5hYmxlZF9pcnFzOw0KPiA+ID4gIA0KPiA+ID4gKwlpZiAo
SU5URUxfUENIX1RZUEUoZGV2X3ByaXYpID49IFBDSF9DTlApDQo+ID4gPiArCQlJOTE1X1dSSVRF
KFNIUERfRklMVEVSX0NOVCwgU0hQRF9GSUxURVJfQ05UXzUwMF9BREopOw0KPiA+ID4gKw0KPiA+
ID4gIAlob3RwbHVnX2lycXMgPSBTREVfSE9UUExVR19NQVNLX1NQVDsNCj4gPiA+ICAJZW5hYmxl
ZF9pcnFzID0gaW50ZWxfaHBkX2VuYWJsZWRfaXJxcyhkZXZfcHJpdiwgaHBkX3NwdCk7DQo+ID4g
PiAgDQo+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaA0K
PiA+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oDQo+ID4gPiBpbmRleCA5NGQw
ZjU5M2VlYjcuLjc0Y2Y0NWRlMTYyZSAxMDA2NDQNCj4gPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfcmVnLmgNCj4gPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
cmVnLmgNCj4gPiA+IEBAIC04MTEwLDYgKzgxMTAsMTAgQEAgZW51bSB7DQo+ID4gPiAgDQo+ID4g
PiAgI2RlZmluZSBTSE9UUExVR19DVExfVEMJCQkJX01NSU8oMHhjNDAzNCkNCj4gPiA+ICAjZGVm
aW5lICAgSUNQX1RDX0hQRF9FTkFCTEUodGNfcG9ydCkJCSg4IDw8ICh0Y19wb3J0KQ0KPiA+ID4g
KiA0KQ0KPiA+ID4gKw0KPiA+ID4gKyNkZWZpbmUgU0hQRF9GSUxURVJfQ05UCQkJCV9NTUlPKDB4
YzQwMzgpDQo+ID4gPiArI2RlZmluZSAgIFNIUERfRklMVEVSX0NOVF81MDBfQURKCQkweDAwMUQ5
DQo+ID4gDQo+ID4gU2hvdWxkbid0IGl0IGJlIDB4MUYyPyBPciBJJ20gbWlzc2luZyBzb21ldGhp
bmc/DQo+ID4gQWxzbyB0aGlzIGlzIHRoZSBkZWZhdWx0IHZhbHVlLg0KPiA+IA0KPiANCj4gMHgx
RjIgaXMgdGhlICI1MDAgbWljcm9zZWNvbmRzIiBvcHRpb24sIHdoZXJlYXMgMHgxRDkgaXMgdGhl
ICI1MDANCj4gbWljcm9zZWNvbmRzIGFkanVzdGVkIiBvcHRpb24gYWNjb3JkaW5nIHRvIGJzcGVj
IDg0MDcvNTA0NzMuICBUaGUNCj4gcHJvZ3JhbW1pbmcgaW5zdHJ1Y3Rpb25zIHRlbGwgdXMgdG8g
dXNlIHRoZSBub24tZGVmYXVsdCAiYWRqdXN0ZWQiDQo+IHZhcmlhbnQuDQo+IA0KPiBJJ20gbm90
IHN1cmUgd2h5IHRoZXkgZG9uJ3QganVzdCBjYWxsIGl0ICI0NzUgbWljcm9zZWNvbmRzIiBzaW5j
ZQ0KPiB0aGF0J3MNCj4gd2hhdCB0aGlzIHZhbHVlIHJlYWxseSB3b3JrcyBvdXQgdG8uLi4NCg0K
T29vaA0KDQoiQWRqdXN0ZWQiIHNtZWxscyBsaWtlIGEgd29ya2Fyb3VuZCB2YWx1ZQ0KDQpBbnl3
YXlzOg0KUmV2aWV3ZWQtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50
ZWwuY29tPg0KDQo+IA0KPiANCj4gTWF0dA0KPiANCj4gPiA+ICsNCj4gPiA+ICAvKiBJY2VsYWtl
IERTQyBSYXRlIENvbnRyb2wgUmFuZ2UgUGFyYW1ldGVyIFJlZ2lzdGVycyAqLw0KPiA+ID4gICNk
ZWZpbmUgRFNDQV9SQ19SQU5HRV9QQVJBTUVURVJTXzAJCV9NTUlPKDB4NkIyNDApDQo+ID4gPiAg
I2RlZmluZSBEU0NBX1JDX1JBTkdFX1BBUkFNRVRFUlNfMF9VRFcJCV9NTUlPKDB4NkIyNDAgKw0K
PiA+ID4gNCkNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
