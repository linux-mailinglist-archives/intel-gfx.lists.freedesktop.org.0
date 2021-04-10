Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C9A435AD92
	for <lists+intel-gfx@lfdr.de>; Sat, 10 Apr 2021 15:27:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6E2AF6E51A;
	Sat, 10 Apr 2021 13:27:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 22D266E51A
 for <intel-gfx@lists.freedesktop.org>; Sat, 10 Apr 2021 13:26:59 +0000 (UTC)
IronPort-SDR: p1/1YSEM1SMjKeqv5p8JUeYL55nFG9YVwXFqMwdiKh2urgl7U0FC+o6oyBaOmNJt/GeYoMqZ5C
 qJFFkkyXmTRA==
X-IronPort-AV: E=McAfee;i="6000,8403,9950"; a="193480780"
X-IronPort-AV: E=Sophos;i="5.82,210,1613462400"; d="scan'208";a="193480780"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2021 06:26:58 -0700
IronPort-SDR: ckUbmlGFMm2o/Jbnt3Zsd0/+OF917JP4qX7hTQPVLWLskXlvvlIU0RXMs0BKSRqwackvemT/mf
 ECzdH6/6WKug==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,210,1613462400"; d="scan'208";a="382411640"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga006.jf.intel.com with ESMTP; 10 Apr 2021 06:26:58 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Sat, 10 Apr 2021 06:26:58 -0700
Received: from irsmsx605.ger.corp.intel.com (163.33.146.138) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Sat, 10 Apr 2021 06:26:57 -0700
Received: from irsmsx605.ger.corp.intel.com ([163.33.146.138]) by
 IRSMSX605.ger.corp.intel.com ([163.33.146.138]) with mapi id 15.01.2106.013;
 Sat, 10 Apr 2021 14:26:55 +0100
From: "Mun, Gwan-gyeong" <gwan-gyeong.mun@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Souza, Jose" <jose.souza@intel.com>
Thread-Topic: [PATCH 1/2] drm/i915/display: Implement Wa_14013723622
Thread-Index: AQHXLLhNFB1i21eXI0yaNjPqlh2pDqqtsCQA
Date: Sat, 10 Apr 2021 13:26:55 +0000
Message-ID: <b42f0797a1f8f9e4cac5151e7a0077e98f589647.camel@intel.com>
References: <20210408204917.254272-1-jose.souza@intel.com>
In-Reply-To: <20210408204917.254272-1-jose.souza@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.253.164]
Content-ID: <C52BD6F7D536854BB44EABA4DAB7DDF3@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/display: Implement
 Wa_14013723622
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

UmV2aWV3ZWQtYnk6IEd3YW4tZ3llb25nIE11biA8Z3dhbi1neWVvbmcubXVuQGludGVsLmNvbT4N
ClRlc3RlZC1ieTogR3dhbi1neWVvbmcgTXVuIDxnd2FuLWd5ZW9uZy5tdW5AaW50ZWwuY29tPg0K
T24gVGh1LCAyMDIxLTA0LTA4IGF0IDEzOjQ5IC0wNzAwLCBKb3PDqSBSb2JlcnRvIGRlIFNvdXph
IHdyb3RlOg0KPiBUaGlzIFdBIGZpeCBzb21lIGRpc3BsYXkgZ2xpdGNoZXMgd2hlbiB0aGUgc3lz
dGVtIGlzIHVuZGVyIGhpZ2gNCj4gbWVtb3J5IHByZXNzdXJlLg0KPiANCj4gQlNwZWM6IDUyODkw
DQo+IENjOiBHd2FuLWd5ZW9uZyBNdW4gPGd3YW4tZ3llb25nLm11bkBpbnRlbC5jb20+DQo+IFNp
Z25lZC1vZmYtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29t
Pg0KPiAtLS0NCj4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oIHwgMyArKysNCj4g
wqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jIHwgNSArKysrKw0KPiDCoDIgZmlsZXMg
Y2hhbmdlZCwgOCBpbnNlcnRpb25zKCspDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9yZWcuaA0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgN
Cj4gaW5kZXggY2JmN2E2MGFmZTU0Li5mNGE3Nzk2NDNmNGQgMTAwNjQ0DQo+IC0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9yZWcuaA0KPiBAQCAtMTI1NDksNCArMTI1NDksNyBAQCBlbnVtIHNrbF9wb3dlcl9nYXRl
IHsNCj4gwqAjZGVmaW5lIFRHTF9ST09UX0RFVklDRV9TS1VfVUxYwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqAweDINCj4gwqAjZGVmaW5lIFRHTF9ST09UX0RFVklDRV9TS1VfVUxUwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAweDQNCj4gwqANCj4gKyNkZWZpbmUgQ0xLUkVR
X1BPTElDWcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoF9NTUlPKDB4MTAxMDM4
KQ0KPiArI2RlZmluZcKgIENMS1JFUV9QT0xJQ1lfTUVNX1VQX09WUkTCoMKgwqDCoMKgUkVHX0JJ
VCgxKQ0KPiArDQo+IMKgI2VuZGlmIC8qIF9JOTE1X1JFR19IXyAqLw0KPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2ludGVsX3BtLmMNCj4gaW5kZXggMzJmMzAxY2EzYWIwLi44ZTM5ZTMwMDM2YjIgMTAwNjQ0DQo+
IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmMNCj4gKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaW50ZWxfcG0uYw0KPiBAQCAtNzE0MSw2ICs3MTQxLDExIEBAIHN0YXRpYyB2
b2lkIGdlbjEybHBfaW5pdF9jbG9ja19nYXRpbmcoc3RydWN0DQo+IGRybV9pOTE1X3ByaXZhdGUg
KmRldl9wcml2KQ0KPiDCoMKgwqDCoMKgwqDCoMKgLyogV2FfMTQwMTEwNTk3ODg6dGdsLHJrbCxh
ZGxfcyxkZzEgKi8NCj4gwqDCoMKgwqDCoMKgwqDCoGludGVsX3VuY29yZV9ybXcoJmRldl9wcml2
LT51bmNvcmUsDQo+IEdFTjEwX0RGUl9SQVRJT19FTl9BTkRfQ0hJQ0tFTiwNCj4gwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDAsIERGUl9ESVNBQkxFKTsN
Cj4gKw0KPiArwqDCoMKgwqDCoMKgwqAvKiBXYV8xNDAxMzcyMzYyMjp0Z2wscmtsLGRnMSxhZGwt
cyAqLw0KPiArwqDCoMKgwqDCoMKgwqBpZiAoRElTUExBWV9WRVIoZGV2X3ByaXYpID09IDEyKQ0K
PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgaW50ZWxfdW5jb3JlX3JtdygmZGV2X3By
aXYtPnVuY29yZSwgQ0xLUkVRX1BPTElDWSwNCj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIENMS1JFUV9QT0xJQ1lfTUVNX1VQ
X09WUkQsIDApOw0KPiDCoH0NCj4gwqANCj4gwqBzdGF0aWMgdm9pZCBkZzFfaW5pdF9jbG9ja19n
YXRpbmcoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQ0KDQpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
