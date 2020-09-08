Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B92EB2615D7
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Sep 2020 18:57:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 23D4D6E14B;
	Tue,  8 Sep 2020 16:57:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A2C796E14B
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Sep 2020 16:57:29 +0000 (UTC)
IronPort-SDR: DvgBhTN1zxp3mXAghPEgvn8AQXbuWqgyTvd4ECbtwalWBOcN1pS7hmc95srjIXc2blZm0AZIuE
 oKrbF/2SQSVw==
X-IronPort-AV: E=McAfee;i="6000,8403,9738"; a="137691677"
X-IronPort-AV: E=Sophos;i="5.76,406,1592895600"; d="scan'208";a="137691677"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2020 09:57:28 -0700
IronPort-SDR: BUQhmMoPgM5CWMaPJxP8GG+PeqJINFnlCCudV6VpRfkhbRB64NrxluEOV8p4sqhKlf4RiOePs0
 ZdrRQmInYknQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,406,1592895600"; d="scan'208";a="377586079"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga001.jf.intel.com with ESMTP; 08 Sep 2020 09:57:28 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 8 Sep 2020 09:57:28 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 8 Sep 2020 09:57:28 -0700
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.1713.004;
 Tue, 8 Sep 2020 09:57:27 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [09/12] drm/i915: Move hpd_pin setup to encoder init
Thread-Index: AQHWhfmenggQflY2qkmTzUaMYZzd66lfbHkA
Date: Tue, 8 Sep 2020 16:57:27 +0000
Message-ID: <f5d70f80ffdb3d27a2c80d105411881e9baae172.camel@intel.com>
References: <20200630215601.28557-10-ville.syrjala@linux.intel.com>
In-Reply-To: <20200630215601.28557-10-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-ID: <0133496CC7CB11428A0EA3ADDB7D10A6@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [09/12] drm/i915: Move hpd_pin setup to encoder init
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

T24gV2VkLCAyMDIwLTA3LTAxIGF0IDAwOjU1ICswMzAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOg0K
PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPA0KPiB2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNv
bQ0KPiA+DQo+IA0KPiBDdXJyZW50bHkgRFAvSERNSS9EREkgZW5jb2RlcnMgaW5pdCB0aGVpciBo
cGRfcGluIGZyb20gdGhlDQo+IGNvbm5lY3RvciBpbml0LiBMZXQncyBtb3ZlIGl0IHRvIHRoZSBl
bmNvZGVyIGluaXQgc28gdGhhdA0KPiB3ZSBkb24ndCBuZWVkIHRvIGFkZCBwbGF0Zm9ybSBzcGVj
aWZpYyBqdW5rIHRvIHRoZSBjb25uZWN0b3INCj4gaW5pdCAod2hpY2ggaXMgc2hhcmVkIGJ5IGFs
bCBnNHgrIHBsYXRmb3JtcykuDQo+IA0KDQpSZXZpZXdlZC1ieTogSm9zw6kgUm9iZXJ0byBkZSBT
b3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+DQoNCj4gU2lnbmVkLW9mZi1ieTogVmlsbGUgU3ly
asOkbMOkIDwNCj4gdmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20NCj4gPg0KPiAtLS0NCj4g
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMgIHwgMSArDQo+ICBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMgICB8IDIgKy0NCj4gIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaGRtaS5jIHwgMiArLQ0KPiAgMyBmaWxlcyBjaGFu
Z2VkLCAzIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMNCj4gaW5kZXggODg0YjUwN2M1ZjU1Li5kMDI0NDkx
NzM4YjMgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGRpLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYw0K
PiBAQCAtNDkwNyw2ICs0OTA3LDcgQEAgdm9pZCBpbnRlbF9kZGlfaW5pdChzdHJ1Y3QgZHJtX2k5
MTVfcHJpdmF0ZSAqZGV2X3ByaXYsIGVudW0gcG9ydCBwb3J0KQ0KPiAgCWVuY29kZXItPnBvcnQg
PSBwb3J0Ow0KPiAgCWVuY29kZXItPmNsb25lYWJsZSA9IDA7DQo+ICAJZW5jb2Rlci0+cGlwZV9t
YXNrID0gfjA7DQo+ICsJZW5jb2Rlci0+aHBkX3BpbiA9IGludGVsX2hwZF9waW5fZGVmYXVsdChk
ZXZfcHJpdiwgcG9ydCk7DQo+ICANCj4gIAlpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSAxMSkN
Cj4gIAkJaW50ZWxfZGlnX3BvcnQtPnNhdmVkX3BvcnRfYml0cyA9IGludGVsX2RlX3JlYWQoZGV2
X3ByaXYsDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2RwLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMNCj4gaW5kZXgg
M2RmNWQ5MDFkZDlkLi5jZDUxNmNkOGFjYjggMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2RwLmMNCj4gQEAgLTgyMTEsNyArODIxMSw2IEBAIGludGVsX2RwX2luaXRf
Y29ubmVjdG9yKHN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgKmludGVsX2RpZ19wb3J0LA0KPiAg
CWlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDExKQ0KPiAgCQljb25uZWN0b3ItPnljYmNyXzQy
MF9hbGxvd2VkID0gdHJ1ZTsNCj4gIA0KPiAtCWludGVsX2VuY29kZXItPmhwZF9waW4gPSBpbnRl
bF9ocGRfcGluX2RlZmF1bHQoZGV2X3ByaXYsIHBvcnQpOw0KPiAgCWludGVsX2Nvbm5lY3Rvci0+
cG9sbGVkID0gRFJNX0NPTk5FQ1RPUl9QT0xMX0hQRDsNCj4gIA0KPiAgCWludGVsX2RwX2F1eF9p
bml0KGludGVsX2RwKTsNCj4gQEAgLTgzNTQsNiArODM1Myw3IEBAIGJvb2wgaW50ZWxfZHBfaW5p
dChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsDQo+ICAJfQ0KPiAgCWludGVsX2Vu
Y29kZXItPmNsb25lYWJsZSA9IDA7DQo+ICAJaW50ZWxfZW5jb2Rlci0+cG9ydCA9IHBvcnQ7DQo+
ICsJaW50ZWxfZW5jb2Rlci0+aHBkX3BpbiA9IGludGVsX2hwZF9waW5fZGVmYXVsdChkZXZfcHJp
diwgcG9ydCk7DQo+ICANCj4gIAlpbnRlbF9kaWdfcG9ydC0+aHBkX3B1bHNlID0gaW50ZWxfZHBf
aHBkX3B1bHNlOw0KPiAgDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2hkbWkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaGRt
aS5jDQo+IGluZGV4IDg2NGExNjQyZTgxYy4uZjUxNWQwZmNlOTY4IDEwMDY0NA0KPiAtLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hkbWkuYw0KPiArKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hkbWkuYw0KPiBAQCAtMzI1Myw3ICszMjUzLDYg
QEAgdm9pZCBpbnRlbF9oZG1pX2luaXRfY29ubmVjdG9yKHN0cnVjdCBpbnRlbF9kaWdpdGFsX3Bv
cnQgKmludGVsX2RpZ19wb3J0LA0KPiAgCWlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDEwIHx8
IElTX0dFTUlOSUxBS0UoZGV2X3ByaXYpKQ0KPiAgCQljb25uZWN0b3ItPnljYmNyXzQyMF9hbGxv
d2VkID0gdHJ1ZTsNCj4gIA0KPiAtCWludGVsX2VuY29kZXItPmhwZF9waW4gPSBpbnRlbF9ocGRf
cGluX2RlZmF1bHQoZGV2X3ByaXYsIHBvcnQpOw0KPiAgCWludGVsX2Nvbm5lY3Rvci0+cG9sbGVk
ID0gRFJNX0NPTk5FQ1RPUl9QT0xMX0hQRDsNCj4gIA0KPiAgCWlmIChIQVNfRERJKGRldl9wcml2
KSkNCj4gQEAgLTMzODUsNiArMzM4NCw3IEBAIHZvaWQgaW50ZWxfaGRtaV9pbml0KHN0cnVjdCBk
cm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwNCj4gIAkJaW50ZWxfZW5jb2Rlci0+cGlwZV9tYXNr
ID0gfjA7DQo+ICAJfQ0KPiAgCWludGVsX2VuY29kZXItPmNsb25lYWJsZSA9IDEgPDwgSU5URUxf
T1VUUFVUX0FOQUxPRzsNCj4gKwlpbnRlbF9lbmNvZGVyLT5ocGRfcGluID0gaW50ZWxfaHBkX3Bp
bl9kZWZhdWx0KGRldl9wcml2LCBwb3J0KTsNCj4gIAkvKg0KPiAgCSAqIEJTcGVjIGlzIHVuY2xl
YXIgYWJvdXQgSERNSStIRE1JIGNsb25pbmcgb24gZzR4LCBidXQgaXQgc2VlbXMNCj4gIAkgKiB0
byB3b3JrIG9uIHJlYWwgaGFyZHdhcmUuIEFuZCBzaW5jZSBnNHggY2FuIHNlbmQgaW5mb2ZyYW1l
cyB0bw0KPiANCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
