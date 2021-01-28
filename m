Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 258B3307B2E
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Jan 2021 17:43:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D8436E999;
	Thu, 28 Jan 2021 16:43:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D95786E999
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Jan 2021 16:43:43 +0000 (UTC)
IronPort-SDR: sxKUfMi1hhQHFadVKP7/DCMozX0jh/tyBLyJN5BBgLfORXAV2o/RaBtWUdgyjbnEIG96J2N2X2
 K6Bu8LshtY6g==
X-IronPort-AV: E=McAfee;i="6000,8403,9878"; a="159438738"
X-IronPort-AV: E=Sophos;i="5.79,383,1602572400"; d="scan'208";a="159438738"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2021 08:43:43 -0800
IronPort-SDR: AyFnBy5CMSbrL+SrD2PhqTLZ9li882cTMKju1Ja2Vm0M4aBuYAtjsQrdEa3KkYk6eEd6mY2DYp
 ZaTuFhMdrjJg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,383,1602572400"; d="scan'208";a="578684685"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by fmsmga005.fm.intel.com with ESMTP; 28 Jan 2021 08:43:43 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Thu, 28 Jan 2021 08:43:42 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Thu, 28 Jan 2021 08:43:42 -0800
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2106.002;
 Thu, 28 Jan 2021 08:43:42 -0800
From: "Souza, Jose" <jose.souza@intel.com>
To: "De Marchi, Lucas" <lucas.demarchi@intel.com>
Thread-Topic: [Intel-gfx] [PATCH v2 3/4] drm/i915: Fail driver probe when
 unable to load DRAM information
Thread-Index: AQHW9MzdExYaDQwVg0OclRf6DFjViKo89qOAgADPtQA=
Date: Thu, 28 Jan 2021 16:43:42 +0000
Message-ID: <4c638aa3c9b9e9c0eb5c7089f28659b5acfb3b79.camel@intel.com>
References: <20210127165402.117829-1-jose.souza@intel.com>
 <20210127165402.117829-3-jose.souza@intel.com>
 <20210128042135.jr3wpwcbnis7dkw2@ldmartin-desk1>
In-Reply-To: <20210128042135.jr3wpwcbnis7dkw2@ldmartin-desk1>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-ID: <32781BA059C2FC48ABA1475B109A7664@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2 3/4] drm/i915: Fail driver probe when
 unable to load DRAM information
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCAyMDIxLTAxLTI3IGF0IDIwOjIxIC0wODAwLCBMdWNhcyBEZSBNYXJjaGkgd3JvdGU6
DQo+IE9uIFdlZCwgSmFuIDI3LCAyMDIxIGF0IDA4OjU0OjAxQU0gLTA4MDAsIEpvc2UgU291emEg
d3JvdGU6DQo+ID4gRFJBTSBpbmZvcm1hdGlvbiBpcyByZXF1aXJlZCB0byBwcm9wZXJseSBwcm9n
cmFtIGRpc3BsYXkuDQo+ID4gQmVmb3JlICJkcm0vaTkxNS9nZW4xMSs6IE9ubHkgbG9hZCBEUkFN
IGluZm9ybWF0aW9uIGZyb20gcGNvZGUiIHdlDQo+ID4gd2VyZSBmYWlsaW5nIGRyaXZlciBsb2Fk
IGlmIHVuYWJsZSB0byBmZXRjaCBEUkFNIGluZm9ybWF0aW9uIGZyb20NCj4gPiBwY29kZSBmb3Jt
IEdFTjExKyBidXQgd2Ugc2hvdWxkIGFsc28gZXh0ZW5kIGl0IHRvIEdFTjkgcGxhZm9ybXMuDQo+
ID4gDQo+ID4gU2lnbmVkLW9mZi1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6
YUBpbnRlbC5jb20+DQo+IA0KPiBtYWtlcyBzZW5zZSBhbmQgc2VlbXMgY29ycmVjdC4gQnV0IHRo
aXMgbmVlZHMgdG8gYmUgdGVzdGVkIG9uIERHMSB0aGF0DQo+IGlzIG5vdCBvbiBDSSBhbmQgQUZB
SVIgbWlzYmVoYXZlZCB3aGVuIHRyeWluZyB0byBnZXQgdGhpcyBpbmZvIGZyb20NCj4gcGNvZGUu
ICBJZiB0aGF0IGlzIHBhc3Npbmcgbm93LA0KDQpPa2F5LCB3aWxsIHNlbmQgdGhlIDMgb3RoZXIg
YW5kIG1lcmdlIGFzIHNvb24gYXMgSSBnZXQgQ0kgcmVzdWx0cy4NCldpbGwgZG8gc29tZSBtb3Jl
IHRlc3Rpbmcgd2l0aCB0aGlzIG9uZSBiZWZvcmUgbWVyZ2luZyBpdCwgaXQgbWlnaHQgYmUgY2F1
c2luZyBzb21lIHJlZ3Jlc3Npb24gaW4gZmktZ2xrLWRzaS4NCg0KdGhhbmtzIGZvciB0aGUgcmV2
aWV3cy4NCg0KPiANCj4gDQo+IFJldmlld2VkLWJ5OiBMdWNhcyBEZSBNYXJjaGkgPGx1Y2FzLmRl
bWFyY2hpQGludGVsLmNvbT4NCj4gDQo+IEx1Y2FzIERlIE1hcmNoaQ0KPiANCj4gPiAtLS0NCj4g
PiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jICAgfCAgNiArKysrKy0NCj4gPiBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kcmFtLmMgfCAxMyArKysrKysrKystLS0tDQo+ID4gZHJp
dmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZHJhbS5oIHwgIDIgKy0NCj4gPiAzIGZpbGVzIGNoYW5n
ZWQsIDE1IGluc2VydGlvbnMoKyksIDYgZGVsZXRpb25zKC0pDQo+ID4gDQo+ID4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X2Rydi5jDQo+ID4gaW5kZXggYWVjMGU4NzBkYzI1Li43ZmY1OGVhMzBjN2MgMTAwNjQ0
DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYw0KPiA+ICsrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMNCj4gPiBAQCAtNjIyLDEyICs2MjIsMTYgQEAg
c3RhdGljIGludCBpOTE1X2RyaXZlcl9od19wcm9iZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAq
ZGV2X3ByaXYpDQo+ID4gCSAqIEZpbGwgdGhlIGRyYW0gc3RydWN0dXJlIHRvIGdldCB0aGUgc3lz
dGVtIGRyYW0gaW5mby4gVGhpcyB3aWxsIGJlDQo+ID4gCSAqIHVzZWQgZm9yIG1lbW9yeSBsYXRl
bmN5IGNhbGN1bGF0aW9uLg0KPiA+IAkgKi8NCj4gPiAtCWludGVsX2RyYW1fZGV0ZWN0KGRldl9w
cml2KTsNCj4gPiArCXJldCA9IGludGVsX2RyYW1fZGV0ZWN0KGRldl9wcml2KTsNCj4gPiArCWlm
IChyZXQpDQo+ID4gKwkJZ290byBlcnJfZHJhbTsNCj4gPiANCj4gPiAJaW50ZWxfYndfaW5pdF9o
dyhkZXZfcHJpdik7DQo+ID4gDQo+ID4gCXJldHVybiAwOw0KPiA+IA0KPiA+ICtlcnJfZHJhbToN
Cj4gPiArCWludGVsX2d2dF9kcml2ZXJfcmVtb3ZlKGRldl9wcml2KTsNCj4gPiBlcnJfbXNpOg0K
PiA+IAlpZiAocGRldi0+bXNpX2VuYWJsZWQpDQo+ID4gCQlwY2lfZGlzYWJsZV9tc2kocGRldik7
DQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RyYW0uYyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RyYW0uYw0KPiA+IGluZGV4IDRkNWFiMjA2ZWFjYi4u
NmNlNTZlZWRhZjEyIDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVs
X2RyYW0uYw0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RyYW0uYw0KPiA+
IEBAIC00ODQsNyArNDg0LDcgQEAgc3RhdGljIGludCBnZW4xMl9nZXRfZHJhbV9pbmZvKHN0cnVj
dCBkcm1faTkxNV9wcml2YXRlICppOTE1KQ0KPiA+IAlyZXR1cm4gaWNsX3Bjb2RlX3JlYWRfbWVt
X2dsb2JhbF9pbmZvKGk5MTUpOw0KPiA+IH0NCj4gPiANCj4gPiAtdm9pZCBpbnRlbF9kcmFtX2Rl
dGVjdChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkNCj4gPiAraW50IGludGVsX2RyYW1f
ZGV0ZWN0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQ0KPiA+IHsNCj4gPiAJc3RydWN0
IGRyYW1faW5mbyAqZHJhbV9pbmZvID0gJmk5MTUtPmRyYW1faW5mbzsNCj4gPiAJaW50IHJldDsN
Cj4gPiBAQCAtNDk3LDcgKzQ5Nyw3IEBAIHZvaWQgaW50ZWxfZHJhbV9kZXRlY3Qoc3RydWN0IGRy
bV9pOTE1X3ByaXZhdGUgKmk5MTUpDQo+ID4gCWRyYW1faW5mby0+aXNfMTZnYl9kaW1tID0gIUlT
X0dFTjlfTFAoaTkxNSk7DQo+ID4gDQo+ID4gCWlmIChJTlRFTF9HRU4oaTkxNSkgPCA5IHx8ICFI
QVNfRElTUExBWShpOTE1KSkNCj4gPiAtCQlyZXR1cm47DQo+ID4gKwkJcmV0dXJuIDA7DQo+ID4g
DQo+ID4gCWlmIChJTlRFTF9HRU4oaTkxNSkgPj0gMTIpDQo+ID4gCQlyZXQgPSBnZW4xMl9nZXRf
ZHJhbV9pbmZvKGk5MTUpOw0KPiA+IEBAIC01MDcsMTMgKzUwNywxOCBAQCB2b2lkIGludGVsX2Ry
YW1fZGV0ZWN0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQ0KPiA+IAkJcmV0ID0gYnh0
X2dldF9kcmFtX2luZm8oaTkxNSk7DQo+ID4gCWVsc2UNCj4gPiAJCXJldCA9IHNrbF9nZXRfZHJh
bV9pbmZvKGk5MTUpOw0KPiA+IC0JaWYgKHJldCkNCj4gPiAtCQlyZXR1cm47DQo+ID4gKw0KPiA+
ICsJaWYgKHJldCkgew0KPiA+ICsJCWRybV93YXJuKCZpOTE1LT5kcm0sICJVbmFibGUgdG8gbG9h
ZCBkcmFtIGluZm9ybWF0aW9uXG4iKTsNCj4gPiArCQlyZXR1cm4gcmV0Ow0KPiA+ICsJfQ0KPiA+
IA0KPiA+IAlkcm1fZGJnX2ttcygmaTkxNS0+ZHJtLCAiRFJBTSBjaGFubmVsczogJXVcbiIsIGRy
YW1faW5mby0+bnVtX2NoYW5uZWxzKTsNCj4gPiANCj4gPiAJZHJtX2RiZ19rbXMoJmk5MTUtPmRy
bSwgIkRSQU0gMTZHYiBESU1NczogJXNcbiIsDQo+ID4gCQkgICAgeWVzbm8oZHJhbV9pbmZvLT5p
c18xNmdiX2RpbW0pKTsNCj4gPiArDQo+ID4gKwlyZXR1cm4gMDsNCj4gPiB9DQo+ID4gDQo+ID4g
c3RhdGljIHUzMiBnZW45X2VkcmFtX3NpemVfbWIoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5
MTUsIHUzMiBjYXApDQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVs
X2RyYW0uaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RyYW0uaA0KPiA+IGluZGV4IDRi
YTEzYzEzMTYyYy4uMmEwZjI4M2IxYTFkIDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2ludGVsX2RyYW0uaA0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVs
X2RyYW0uaA0KPiA+IEBAIC05LDYgKzksNiBAQA0KPiA+IHN0cnVjdCBkcm1faTkxNV9wcml2YXRl
Ow0KPiA+IA0KPiA+IHZvaWQgaW50ZWxfZHJhbV9lZHJhbV9kZXRlY3Qoc3RydWN0IGRybV9pOTE1
X3ByaXZhdGUgKmk5MTUpOw0KPiA+IC12b2lkIGludGVsX2RyYW1fZGV0ZWN0KHN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlICppOTE1KTsNCj4gPiAraW50IGludGVsX2RyYW1fZGV0ZWN0KHN0cnVjdCBk
cm1faTkxNV9wcml2YXRlICppOTE1KTsNCj4gPiANCj4gPiAjZW5kaWYgLyogX19JTlRFTF9EUkFN
X0hfXyAqLw0KPiA+IC0tIA0KPiA+IDIuMzAuMA0KPiA+IA0KPiA+IF9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQo+ID4gSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dA0KPiA+IEludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gPiBodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA0KDQpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
