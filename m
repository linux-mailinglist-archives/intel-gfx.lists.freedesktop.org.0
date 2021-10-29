Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B4C2440542
	for <lists+intel-gfx@lfdr.de>; Sat, 30 Oct 2021 00:03:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F30E89CE3;
	Fri, 29 Oct 2021 22:03:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F07E189CE3
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Oct 2021 22:03:43 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10152"; a="211532146"
X-IronPort-AV: E=Sophos;i="5.87,193,1631602800"; d="scan'208";a="211532146"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2021 15:02:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,193,1631602800"; d="scan'208";a="636993501"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by fmsmga001.fm.intel.com with ESMTP; 29 Oct 2021 15:02:36 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Fri, 29 Oct 2021 15:02:36 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Fri, 29 Oct 2021 15:02:35 -0700
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2242.012;
 Fri, 29 Oct 2021 15:02:35 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 15/16] drm/i915: Use intel_de_rmw() for icl
 combo phy programming
Thread-Index: AQHXuvPSY/O2EbMKL0mJpTQbg05ecqvrIpcA
Date: Fri, 29 Oct 2021 22:02:35 +0000
Message-ID: <f68eb9900ae900952ca65b4faa8b4f39eadea9c4.camel@intel.com>
References: <20211006204937.30774-1-ville.syrjala@linux.intel.com>
 <20211006204937.30774-16-ville.syrjala@linux.intel.com>
In-Reply-To: <20211006204937.30774-16-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.132]
Content-Type: text/plain; charset="utf-8"
Content-ID: <C73ACF46ED10C74CBFD5255F4584B9C7@intel.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 15/16] drm/i915: Use intel_de_rmw() for icl
 combo phy programming
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
PiANCj4gU3RyZWFtbGluZSB0aGUgY29kZSBieSB1c2luZyBpbnRlbF9kZV9ybXcoKS4NCg0KUmV2
aWV3ZWQtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPg0K
DQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGlu
dXguaW50ZWwuY29tPg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGRpLmMgfCA0NCArKysrKysrKysrLS0tLS0tLS0tLS0tLS0NCj4gIDEgZmlsZSBjaGFuZ2Vk
LCAxOCBpbnNlcnRpb25zKCspLCAyNiBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYw0KPiBpbmRleCBjZThjODU3MDFjZmYuLmM3Yzg2YjQ5
N2ViYyAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
ZGkuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jDQo+
IEBAIC0xMDcwLDE0ICsxMDcwLDExIEBAIHN0YXRpYyB2b2lkIGljbF9kZGlfY29tYm9fdnN3aW5n
X3Byb2dyYW0oc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsDQo+ICAJZm9yIChsbiA9IDA7
IGxuIDwgNDsgbG4rKykgew0KPiAgCQlpbnQgbGV2ZWwgPSBpbnRlbF9kZGlfbGV2ZWwoZW5jb2Rl
ciwgY3J0Y19zdGF0ZSwgbG4pOw0KPiAgDQo+IC0JCXZhbCA9IGludGVsX2RlX3JlYWQoZGV2X3By
aXYsIElDTF9QT1JUX1RYX0RXMl9MTihsbiwgcGh5KSk7DQo+IC0JCXZhbCAmPSB+KFNXSU5HX1NF
TF9MT1dFUl9NQVNLIHwgU1dJTkdfU0VMX1VQUEVSX01BU0sgfA0KPiAtCQkJIFJDT01QX1NDQUxB
Ul9NQVNLKTsNCj4gLQkJdmFsIHw9IFNXSU5HX1NFTF9VUFBFUih0cmFucy0+ZW50cmllc1tsZXZl
bF0uaWNsLmR3Ml9zd2luZ19zZWwpOw0KPiAtCQl2YWwgfD0gU1dJTkdfU0VMX0xPV0VSKHRyYW5z
LT5lbnRyaWVzW2xldmVsXS5pY2wuZHcyX3N3aW5nX3NlbCk7DQo+IC0JCS8qIFByb2dyYW0gUmNv
bXAgc2NhbGFyIGZvciBldmVyeSB0YWJsZSBlbnRyeSAqLw0KPiAtCQl2YWwgfD0gUkNPTVBfU0NB
TEFSKDB4OTgpOw0KPiAtCQlpbnRlbF9kZV93cml0ZShkZXZfcHJpdiwgSUNMX1BPUlRfVFhfRFcy
X0xOKGxuLCBwaHkpLCB2YWwpOw0KPiArCQlpbnRlbF9kZV9ybXcoZGV2X3ByaXYsIElDTF9QT1JU
X1RYX0RXMl9MTihsbiwgcGh5KSwNCj4gKwkJCSAgICAgU1dJTkdfU0VMX1VQUEVSX01BU0sgfCBT
V0lOR19TRUxfTE9XRVJfTUFTSyB8IFJDT01QX1NDQUxBUl9NQVNLLA0KPiArCQkJICAgICBTV0lO
R19TRUxfVVBQRVIodHJhbnMtPmVudHJpZXNbbGV2ZWxdLmljbC5kdzJfc3dpbmdfc2VsKSB8DQo+
ICsJCQkgICAgIFNXSU5HX1NFTF9MT1dFUih0cmFucy0+ZW50cmllc1tsZXZlbF0uaWNsLmR3Ml9z
d2luZ19zZWwpIHwNCj4gKwkJCSAgICAgUkNPTVBfU0NBTEFSKDB4OTgpKTsNCj4gIAl9DQo+ICAN
Cj4gIAkvKiBQcm9ncmFtIFBPUlRfVFhfRFc0ICovDQo+IEBAIC0xMDg1LDIzICsxMDgyLDIwIEBA
IHN0YXRpYyB2b2lkIGljbF9kZGlfY29tYm9fdnN3aW5nX3Byb2dyYW0oc3RydWN0IGludGVsX2Vu
Y29kZXIgKmVuY29kZXIsDQo+ICAJZm9yIChsbiA9IDA7IGxuIDwgNDsgbG4rKykgew0KPiAgCQlp
bnQgbGV2ZWwgPSBpbnRlbF9kZGlfbGV2ZWwoZW5jb2RlciwgY3J0Y19zdGF0ZSwgbG4pOw0KPiAg
DQo+IC0JCXZhbCA9IGludGVsX2RlX3JlYWQoZGV2X3ByaXYsIElDTF9QT1JUX1RYX0RXNF9MTihs
biwgcGh5KSk7DQo+IC0JCXZhbCAmPSB+KFBPU1RfQ1VSU09SXzFfTUFTSyB8IFBPU1RfQ1VSU09S
XzJfTUFTSyB8DQo+IC0JCQkgQ1VSU09SX0NPRUZGX01BU0spOw0KPiAtCQl2YWwgfD0gUE9TVF9D
VVJTT1JfMSh0cmFucy0+ZW50cmllc1tsZXZlbF0uaWNsLmR3NF9wb3N0X2N1cnNvcl8xKTsNCj4g
LQkJdmFsIHw9IFBPU1RfQ1VSU09SXzIodHJhbnMtPmVudHJpZXNbbGV2ZWxdLmljbC5kdzRfcG9z
dF9jdXJzb3JfMik7DQo+IC0JCXZhbCB8PSBDVVJTT1JfQ09FRkYodHJhbnMtPmVudHJpZXNbbGV2
ZWxdLmljbC5kdzRfY3Vyc29yX2NvZWZmKTsNCj4gLQkJaW50ZWxfZGVfd3JpdGUoZGV2X3ByaXYs
IElDTF9QT1JUX1RYX0RXNF9MTihsbiwgcGh5KSwgdmFsKTsNCj4gKwkJaW50ZWxfZGVfcm13KGRl
dl9wcml2LCBJQ0xfUE9SVF9UWF9EVzRfTE4obG4sIHBoeSksDQo+ICsJCQkgICAgIFBPU1RfQ1VS
U09SXzFfTUFTSyB8IFBPU1RfQ1VSU09SXzJfTUFTSyB8IENVUlNPUl9DT0VGRl9NQVNLLA0KPiAr
CQkJICAgICBQT1NUX0NVUlNPUl8xKHRyYW5zLT5lbnRyaWVzW2xldmVsXS5pY2wuZHc0X3Bvc3Rf
Y3Vyc29yXzEpIHwNCj4gKwkJCSAgICAgUE9TVF9DVVJTT1JfMih0cmFucy0+ZW50cmllc1tsZXZl
bF0uaWNsLmR3NF9wb3N0X2N1cnNvcl8yKSB8DQo+ICsJCQkgICAgIENVUlNPUl9DT0VGRih0cmFu
cy0+ZW50cmllc1tsZXZlbF0uaWNsLmR3NF9jdXJzb3JfY29lZmYpKTsNCj4gIAl9DQo+ICANCj4g
IAkvKiBQcm9ncmFtIFBPUlRfVFhfRFc3ICovDQo+ICAJZm9yIChsbiA9IDA7IGxuIDwgNDsgbG4r
Kykgew0KPiAgCQlpbnQgbGV2ZWwgPSBpbnRlbF9kZGlfbGV2ZWwoZW5jb2RlciwgY3J0Y19zdGF0
ZSwgbG4pOw0KPiAgDQo+IC0JCXZhbCA9IGludGVsX2RlX3JlYWQoZGV2X3ByaXYsIElDTF9QT1JU
X1RYX0RXN19MTihsbiwgcGh5KSk7DQo+IC0JCXZhbCAmPSB+Tl9TQ0FMQVJfTUFTSzsNCj4gLQkJ
dmFsIHw9IE5fU0NBTEFSKHRyYW5zLT5lbnRyaWVzW2xldmVsXS5pY2wuZHc3X25fc2NhbGFyKTsN
Cj4gLQkJaW50ZWxfZGVfd3JpdGUoZGV2X3ByaXYsIElDTF9QT1JUX1RYX0RXN19MTihsbiwgcGh5
KSwgdmFsKTsNCj4gKwkJaW50ZWxfZGVfcm13KGRldl9wcml2LCBJQ0xfUE9SVF9UWF9EVzdfTE4o
bG4sIHBoeSksDQo+ICsJCQkgICAgIE5fU0NBTEFSX01BU0ssDQo+ICsJCQkgICAgIE5fU0NBTEFS
KHRyYW5zLT5lbnRyaWVzW2xldmVsXS5pY2wuZHc3X25fc2NhbGFyKSk7DQo+ICAJfQ0KPiAgfQ0K
PiAgDQo+IEBAIC0xMTMzLDE2ICsxMTI3LDE0IEBAIHN0YXRpYyB2b2lkIGljbF9jb21ib19waHlf
c2V0X3NpZ25hbF9sZXZlbHMoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsDQo+ICAJICog
PiA2IEdIeiAoTE4wPTAsIExOMT0wLCBMTjI9MCwgTE4zPTApDQo+ICAJICovDQo+ICAJZm9yIChs
biA9IDA7IGxuIDwgNDsgbG4rKykgew0KPiAtCQl2YWwgPSBpbnRlbF9kZV9yZWFkKGRldl9wcml2
LCBJQ0xfUE9SVF9UWF9EVzRfTE4obG4sIHBoeSkpOw0KPiAtCQl2YWwgJj0gfkxPQURHRU5fU0VM
RUNUOw0KPiAtCQl2YWwgfD0gaWNsX2NvbWJvX3BoeV9sb2FkZ2VuX3NlbGVjdChjcnRjX3N0YXRl
LCBsbik7DQo+IC0JCWludGVsX2RlX3dyaXRlKGRldl9wcml2LCBJQ0xfUE9SVF9UWF9EVzRfTE4o
bG4sIHBoeSksIHZhbCk7DQo+ICsJCWludGVsX2RlX3JtdyhkZXZfcHJpdiwgSUNMX1BPUlRfVFhf
RFc0X0xOKGxuLCBwaHkpLA0KPiArCQkJICAgICBMT0FER0VOX1NFTEVDVCwNCj4gKwkJCSAgICAg
aWNsX2NvbWJvX3BoeV9sb2FkZ2VuX3NlbGVjdChjcnRjX3N0YXRlLCBsbikpOw0KPiAgCX0NCj4g
IA0KPiAgCS8qIDMuIFNldCBQT1JUX0NMX0RXNSBTVVMgQ2xvY2sgQ29uZmlnIHRvIDExYiAqLw0K
PiAtCXZhbCA9IGludGVsX2RlX3JlYWQoZGV2X3ByaXYsIElDTF9QT1JUX0NMX0RXNShwaHkpKTsN
Cj4gLQl2YWwgfD0gU1VTX0NMT0NLX0NPTkZJRzsNCj4gLQlpbnRlbF9kZV93cml0ZShkZXZfcHJp
diwgSUNMX1BPUlRfQ0xfRFc1KHBoeSksIHZhbCk7DQo+ICsJaW50ZWxfZGVfcm13KGRldl9wcml2
LCBJQ0xfUE9SVF9DTF9EVzUocGh5KSwNCj4gKwkJICAgICAwLCBTVVNfQ0xPQ0tfQ09ORklHKTsN
Cj4gIA0KPiAgCS8qIDQuIENsZWFyIHRyYWluaW5nIGVuYWJsZSB0byBjaGFuZ2Ugc3dpbmcgdmFs
dWVzICovDQo+ICAJdmFsID0gaW50ZWxfZGVfcmVhZChkZXZfcHJpdiwgSUNMX1BPUlRfVFhfRFc1
X0xOKDAsIHBoeSkpOw0KDQo=
