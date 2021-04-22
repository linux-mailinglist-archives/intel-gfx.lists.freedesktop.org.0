Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2392036828E
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Apr 2021 16:39:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 26A8F6E0B6;
	Thu, 22 Apr 2021 14:39:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E48D66E0B6
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Apr 2021 14:39:48 +0000 (UTC)
IronPort-SDR: 5YEyAfuwdUCXKf/5HkHG03yUy8upo2r6Zdb1uUe7svpPcmPPJE61HgfH+V382xWMcAIJXisvS/
 CMp9WMMLcBMg==
X-IronPort-AV: E=McAfee;i="6200,9189,9962"; a="195955252"
X-IronPort-AV: E=Sophos;i="5.82,242,1613462400"; d="scan'208";a="195955252"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2021 07:39:46 -0700
IronPort-SDR: TYvw7jan0G+s15QM4reuAujwVZHV6yO89W4jkX2DTgHUyx2jmniyb3DgmlwrvGgpv0J6L1OPro
 p+ti6Iys0Z+g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,242,1613462400"; d="scan'208";a="421394840"
Received: from irsmsx603.ger.corp.intel.com ([163.33.146.9])
 by fmsmga008.fm.intel.com with ESMTP; 22 Apr 2021 07:39:46 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 irsmsx603.ger.corp.intel.com (163.33.146.9) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Thu, 22 Apr 2021 15:39:44 +0100
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2106.013;
 Thu, 22 Apr 2021 07:39:43 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "Mun, Gwan-gyeong" <gwan-gyeong.mun@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915/display: Disable PSR2 if TGL Display stepping
 is B1 from A0
Thread-Index: AQHXN11wpxNMBPAp0EeC5Il0eFMdZKrBEgwA
Date: Thu, 22 Apr 2021 14:39:42 +0000
Message-ID: <9c29c4ebad4ba756ccd6a538eb2b8c2ef35e44b8.camel@intel.com>
References: <20210422095401.2377644-1-gwan-gyeong.mun@intel.com>
In-Reply-To: <20210422095401.2377644-1-gwan-gyeong.mun@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-ID: <6D4FE199205E4145AC84075D91CB8723@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Disable PSR2 if TGL
 Display stepping is B1 from A0
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

T24gVGh1LCAyMDIxLTA0LTIyIGF0IDEyOjU0ICswMzAwLCBHd2FuLWd5ZW9uZyBNdW4gd3JvdGU6
DQo+IFRHTCBQU1IyIGhhcmR3YXJlIHRyYWNraW5nIHNob3dzIG1vbWVudGFyeSBmbGlja2VyIGFu
ZCBzY3JlZW4gc2hpZnQgaWYNCj4gVEdMIERpc3BsYXkgc3RlcHBpbmcgaXMgQjEgZnJvbSBBMC4N
Cj4gSXQgaGFzIGJlZW4gZml4ZWQgZnJvbSBUR0wgRGlzcGxheSBzdGVwcGluZyBDMC4NCj4gDQo+
IEhTREVTOiAxODAxNTk3MDAyMQ0KPiBIU0RFUzogMjIwOTMxMzgxMQ0KPiBCU3BlYzogNTUzNzgN
Cj4gDQo+IENjOiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4N
Cj4gU2lnbmVkLW9mZi1ieTogR3dhbi1neWVvbmcgTXVuIDxnd2FuLWd5ZW9uZy5tdW5AaW50ZWwu
Y29tPg0KPiAtLS0NCj4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5j
IHwgNiArKysrKysNCj4gwqAxIGZpbGUgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspDQo+IA0KPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gaW5kZXggNGFkNzU2ZTIz
OGM1Li4yY2M5ZWVhYjRiYWYgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfcHNyLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9wc3IuYw0KPiBAQCAtNzM5LDYgKzczOSwxMiBAQCBzdGF0aWMgYm9vbCBpbnRlbF9wc3Iy
X2NvbmZpZ192YWxpZChzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLA0KPiDCoAkJcmV0dXJuIGZh
bHNlOw0KPiDCoAl9DQo+IMKgDQo+IA0KPiANCj4gDQo+IA0KPiANCj4gDQo+IA0KPiArCS8qIFdh
XzIyMDkzMTM4MTEgKi8NCj4gKwlpZiAoSVNfVEdMX0RJU1BMQVlfU1RFUChkZXZfcHJpdiwgU1RF
UF9BMCwgU1RFUF9CMSkpIHsNCg0KTWlzc2luZyB0byBjaGVjayBpZiBtYW51YWwgdHJhY2tpbmcg
aXMgYmVpbmcgdXNlZCwgaW4gdGhpcyBjYXNlIHdlIGNhbiBlbmFibGUgUFNSMiBpbiB0aG9zZSBk
aXNwbGF5IHN0ZXBwaW5ncy4NCg0KPiArCQlkcm1fZGJnX2ttcygmZGV2X3ByaXYtPmRybSwgIlBT
UjIgaXMgbm90IHN1cHBvcnRlZCB0aGlzIERpc3BsYXkgc3RlcHBpbmdcbiIpOw0KPiArCQlyZXR1
cm4gZmFsc2U7DQo+ICsJfQ0KPiArDQo+IMKgCS8qIFdhXzE2MDExMTgxMjUwICovDQo+IMKgCWlm
IChJU19ST0NLRVRMQUtFKGRldl9wcml2KSB8fCBJU19BTERFUkxBS0VfUyhkZXZfcHJpdikpIHsN
Cj4gwqAJCWRybV9kYmdfa21zKCZkZXZfcHJpdi0+ZHJtLCAiUFNSMiBpcyBkZWZlYXR1cmVkIGZv
ciB0aGlzIHBsYXRmb3JtXG4iKTsNCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4Cg==
