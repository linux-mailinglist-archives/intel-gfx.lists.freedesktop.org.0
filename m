Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 64E3D3104ED
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Feb 2021 07:29:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 74DDB6E190;
	Fri,  5 Feb 2021 06:29:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E04D36E190
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Feb 2021 06:29:13 +0000 (UTC)
IronPort-SDR: uemy/FUR45+2uvaxQxx5e6s0OthxHDgcuJf/44hIL/QQIrxSKcjeRXVCaR/ycCn9kr7f1SwlAR
 DnJncwf24lTQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9885"; a="168502368"
X-IronPort-AV: E=Sophos;i="5.81,154,1610438400"; d="scan'208";a="168502368"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2021 22:29:12 -0800
IronPort-SDR: hVRtrQ9aUZYcFE9DAT18m1WVRS2k62Nkcuqhb4e9JSJEJ686yS0BFNmtLSDGZOAb4Xy0V/mQ8a
 u+GRXb8L9jPA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,154,1610438400"; d="scan'208";a="393719114"
Received: from irsmsx605.ger.corp.intel.com ([163.33.146.138])
 by orsmga008.jf.intel.com with ESMTP; 04 Feb 2021 22:29:12 -0800
Received: from irsmsx605.ger.corp.intel.com (163.33.146.138) by
 IRSMSX605.ger.corp.intel.com (163.33.146.138) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 5 Feb 2021 06:29:11 +0000
Received: from irsmsx605.ger.corp.intel.com ([163.33.146.138]) by
 IRSMSX605.ger.corp.intel.com ([163.33.146.138]) with mapi id 15.01.1713.004;
 Fri, 5 Feb 2021 06:29:11 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915: Reject 446-480MHz HDMI clock on GLK
Thread-Index: AQHW+g9Kly3g348hI0ioRMgIYXo5IqpJHCAw
Date: Fri, 5 Feb 2021 06:29:11 +0000
Message-ID: <daf4a8d667b048b5800b433b01791387@intel.com>
References: <20210203093044.30532-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20210203093044.30532-1-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.0.76
dlp-product: dlpe-windows
dlp-reaction: no-action
x-originating-ip: [163.33.253.164]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Reject 446-480MHz HDMI clock on
 GLK
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
Cc: "stable@vger.kernel.org" <stable@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC1nZnggPGludGVsLWdm
eC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mIFZpbGxlDQo+IFN5
cmphbGENCj4gU2VudDogV2VkbmVzZGF5LCBGZWJydWFyeSAzLCAyMDIxIDExOjMxIEFNDQo+IFRv
OiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENjOiBzdGFibGVAdmdlci5rZXJu
ZWwub3JnDQo+IFN1YmplY3Q6IFtJbnRlbC1nZnhdIFtQQVRDSF0gZHJtL2k5MTU6IFJlamVjdCA0
NDYtNDgwTUh6IEhETUkgY2xvY2sgb24gR0xLDQo+IA0KPiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6Qg
PHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiANCj4gVGhlIEJYVC9HTEsgRFBMTCBj
YW4ndCBnZW5lcmF0ZSBjZXJ0YWluIGZyZXF1ZW5jaWVzLiBXZSBhbHJlYWR5IHJlamVjdCB0aGUN
Cj4gMjMzLTI0ME1IeiByYW5nZSBvbiBib3RoLiBCdXQgb24gR0xLIHRoZSBEUExMIG1heCBmcmVx
dWVuY3kgd2FzDQo+IGJ1bXBlZCBmcm9tIDMwME1IeiB0byA1OTRNSHosIHNvIG5vdyB3ZSBnZXQg
dG8gYWxzbyB3b3JyeSBhYm91dCB0aGUNCj4gNDQ2LTQ4ME1IeiByYW5nZSAoZG91YmxlIHRoZSBv
cmlnaW5hbCBwcm9ibGVtIHJhbmdlKS4gUmVqZWN0IGFueSBmcmVxdWVuY3kNCj4gd2l0aGluIHRo
ZSBoaWdoZXIgcHJvYmxlbWF0aWMgcmFuZ2UgYXMgd2VsbC4NCj4gDQo+IENjOiBzdGFibGVAdmdl
ci5rZXJuZWwub3JnDQo+IENsb3NlczogaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2Ry
bS9pbnRlbC8tL2lzc3Vlcy8zMDAwDQo+IFNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8
dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQoNClJldmlld2VkLWJ5OiBNaWthIEthaG9s
YSA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPg0KDQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9oZG1pLmMgfCA2ICsrKysrLQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDUg
aW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaGRtaS5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9oZG1pLmMNCj4gaW5kZXggNjZlMWFjMzg4N2M2Li5iNTkzYTcxZTY1
MTcgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaGRt
aS5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaGRtaS5jDQo+
IEBAIC0yMjE4LDcgKzIyMTgsMTEgQEAgaGRtaV9wb3J0X2Nsb2NrX3ZhbGlkKHN0cnVjdCBpbnRl
bF9oZG1pICpoZG1pLA0KPiAgCQkJCQkgIGhhc19oZG1pX3NpbmspKQ0KPiAgCQlyZXR1cm4gTU9E
RV9DTE9DS19ISUdIOw0KPiANCj4gLQkvKiBCWFQgRFBMTCBjYW4ndCBnZW5lcmF0ZSAyMjMtMjQw
IE1IeiAqLw0KPiArCS8qIEdMSyBEUExMIGNhbid0IGdlbmVyYXRlIDQ0Ni00ODAgTUh6ICovDQo+
ICsJaWYgKElTX0dFTUlOSUxBS0UoZGV2X3ByaXYpICYmIGNsb2NrID4gNDQ2NjY2ICYmIGNsb2Nr
IDwgNDgwMDAwKQ0KPiArCQlyZXR1cm4gTU9ERV9DTE9DS19SQU5HRTsNCj4gKw0KPiArCS8qIEJY
VC9HTEsgRFBMTCBjYW4ndCBnZW5lcmF0ZSAyMjMtMjQwIE1IeiAqLw0KPiAgCWlmIChJU19HRU45
X0xQKGRldl9wcml2KSAmJiBjbG9jayA+IDIyMzMzMyAmJiBjbG9jayA8IDI0MDAwMCkNCj4gIAkJ
cmV0dXJuIE1PREVfQ0xPQ0tfUkFOR0U7DQo+IA0KPiAtLQ0KPiAyLjI2LjINCj4gDQo+IF9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQo+IEludGVsLWdmeCBt
YWlsaW5nIGxpc3QNCj4gSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA0KX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
