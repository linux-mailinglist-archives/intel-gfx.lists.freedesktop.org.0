Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 52FCF2A8385
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Nov 2020 17:27:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B988D6ED9F;
	Thu,  5 Nov 2020 16:27:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 679B56ED9F
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Nov 2020 16:27:49 +0000 (UTC)
IronPort-SDR: YYSZCjOb2ncghwL8weUn9c5g83z8OXhvBFw8N7XE5wPFP4qNNomAncbZkvCMEICVTA2KyWTdHy
 rXfR+NAcxMoA==
X-IronPort-AV: E=McAfee;i="6000,8403,9796"; a="187320768"
X-IronPort-AV: E=Sophos;i="5.77,453,1596524400"; d="scan'208";a="187320768"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2020 08:27:30 -0800
IronPort-SDR: 1976rSl5a1nW3RjyJ82wLYQagGpgLashpdLxmWpT7VYDYtxwrQcDk4RgwUVqG4tNRs8sSXwDgv
 yJU7mkU0tV/w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,453,1596524400"; d="scan'208";a="321274017"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga003.jf.intel.com with ESMTP; 05 Nov 2020 08:27:30 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 5 Nov 2020 08:27:30 -0800
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 5 Nov 2020 08:27:28 -0800
Received: from bgsmsx604.gar.corp.intel.com ([10.67.234.6]) by
 BGSMSX604.gar.corp.intel.com ([10.67.234.6]) with mapi id 15.01.1713.004;
 Thu, 5 Nov 2020 21:57:26 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Souza, Jose" <jose.souza@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 1/2] drm/i915/display/tgl: Disable FBC with
 PSR2
Thread-Index: AQHWst+8uNvzKg5dCEma6k3N1EMOxKm5WaKAgABg54A=
Date: Thu, 5 Nov 2020 16:27:26 +0000
Message-ID: <515ba1d3643b4c299022d52630fe73ba@intel.com>
References: <20201104195604.3334-1-uma.shankar@intel.com>
 <20201104195604.3334-2-uma.shankar@intel.com>
 <e878e9da4dc6ff8cd139d661ac5ba7d2469f7745.camel@intel.com>
In-Reply-To: <e878e9da4dc6ff8cd139d661ac5ba7d2469f7745.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
x-originating-ip: [10.223.10.1]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/display/tgl: Disable FBC with
 PSR2
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogU291emEsIEpvc2UgPGpv
c2Uuc291emFAaW50ZWwuY29tPg0KPiBTZW50OiBUaHVyc2RheSwgTm92ZW1iZXIgNSwgMjAyMCA5
OjM4IFBNDQo+IFRvOiBTaGFua2FyLCBVbWEgPHVtYS5zaGFua2FyQGludGVsLmNvbT47IGludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gU3ViamVjdDogUmU6IFtJbnRlbC1nZnhdIFtQ
QVRDSCAxLzJdIGRybS9pOTE1L2Rpc3BsYXkvdGdsOiBEaXNhYmxlIEZCQyB3aXRoIFBTUjINCj4g
DQo+IE9uIFRodSwgMjAyMC0xMS0wNSBhdCAwMToyNiArMDUzMCwgVW1hIFNoYW5rYXIgd3JvdGU6
DQo+ID4gVGhlcmUgYXJlIHNvbWUgY29ybmVyIGNhc2VzIHdydCB1bmRlcnJ1biB3aGVuIHdlIGVu
YWJsZSBGQkMgd2l0aCBQU1IyDQo+ID4gb24gVEdMLiBSZWNvbW1lbmRhdGlvbiBmcm9tIGhhcmR3
YXJlIGlzIHRvIGtlZXAgdGhpcyBjb21iaW5hdGlvbg0KPiA+IGRpc2FibGVkLg0KPiANCj4gRG8g
eW91IGhhdmUgYW55IHJlZmVyZW5jZXMgdG8gdGhpcz8gSFNEPyBCU3BlYz8NCg0KSGkgSm9zZSwN
CkJlbG93IGlzIHRoZSBIU0QgZm9yIHRoZSBzYW1lOg0KaHR0cHM6Ly9oc2Rlcy5pbnRlbC5jb20v
YXBwc3RvcmUvYXJ0aWNsZS8jLzE0MDEwMjYwMDAyDQoNCldpbGwgYWRkIHRoZSBsaW5rIGluIHBh
dGNoIGFzIHdlbGwuDQoNClJlZ2FyZHMsDQpVbWEgU2hhbmthcg0KPiANCj4gPg0KPiA+IFNpZ25l
ZC1vZmYtYnk6IFVtYSBTaGFua2FyIDx1bWEuc2hhbmthckBpbnRlbC5jb20+DQo+ID4gLS0tDQo+
ID4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5jIHwgNiArKysrKysN
Cj4gPiDCoDEgZmlsZSBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKykNCj4gPg0KPiA+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5jDQo+ID4gYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5jDQo+ID4gaW5kZXggYTViMDcyODE2
YTdiLi4zMmM0MTE0MTQ5MDggMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9mYmMuYw0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZmJjLmMNCj4gPiBAQCAtNzk5LDYgKzc5OSwxMiBAQCBzdGF0aWMgYm9vbCBpbnRl
bF9mYmNfY2FuX2FjdGl2YXRlKHN0cnVjdCBpbnRlbF9jcnRjDQo+ICpjcnRjKQ0KPiA+IMKgCXN0
cnVjdCBpbnRlbF9mYmMgKmZiYyA9ICZkZXZfcHJpdi0+ZmJjOw0KPiA+IMKgCXN0cnVjdCBpbnRl
bF9mYmNfc3RhdGVfY2FjaGUgKmNhY2hlID0gJmZiYy0+c3RhdGVfY2FjaGU7DQo+ID4NCj4gPg0K
PiA+DQo+ID4NCj4gPiArCWlmIChkZXZfcHJpdi0+cHNyLnNpbmtfcHNyMl9zdXBwb3J0ICYmDQo+
ID4gKwkgICAgSVNfVElHRVJMQUtFKGRldl9wcml2KSkgew0KPiA+ICsJCWZiYy0+bm9fZmJjX3Jl
YXNvbiA9ICJub3Qgc3VwcG9ydGVkIHdpdGggUFNSMiI7DQo+ID4gKwkJcmV0dXJuIGZhbHNlOw0K
PiA+ICsJfQ0KPiA+ICsNCj4gPiDCoAlpZiAoIWludGVsX2ZiY19jYW5fZW5hYmxlKGRldl9wcml2
KSkNCj4gPiDCoAkJcmV0dXJuIGZhbHNlOw0KPiA+DQo+ID4NCj4gPg0KPiA+DQoNCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5n
IGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
