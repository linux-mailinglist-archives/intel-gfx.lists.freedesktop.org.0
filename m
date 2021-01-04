Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7934F2E9E69
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Jan 2021 20:59:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7FC3F6E03C;
	Mon,  4 Jan 2021 19:59:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 80C2F6E03C
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 Jan 2021 19:59:45 +0000 (UTC)
IronPort-SDR: PRA0OLk3pkDZ7qvXslkZyov+JWATtEUPIpg7LUaLYkHzs1vp47ZtTzFxj57EbPJYsYJZn7iZSz
 Ytbual4d4fPw==
X-IronPort-AV: E=McAfee;i="6000,8403,9854"; a="177102614"
X-IronPort-AV: E=Sophos;i="5.78,474,1599548400"; d="scan'208";a="177102614"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2021 11:59:42 -0800
IronPort-SDR: mrUy++o5AIJ+7VNMCilBXE0cYwc3SZundCSUkW8xvTnXem2lPCc/EqkZMzNApscP9iQKSHZKBP
 JUXx7bh8ggjA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,474,1599548400"; d="scan'208";a="462057653"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by fmsmga001.fm.intel.com with ESMTP; 04 Jan 2021 11:59:43 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 4 Jan 2021 11:59:42 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 4 Jan 2021 11:59:42 -0800
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.1713.004;
 Mon, 4 Jan 2021 11:59:42 -0800
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "chris@chris-wilson.co.uk" <chris@chris-wilson.co.uk>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/selftests: Guard against
 redifinition of SZ_8G
Thread-Index: AQHW4rz+kHssDtl9mEuG+Z/PAxBPmaoYaSgA
Date: Mon, 4 Jan 2021 19:59:42 +0000
Message-ID: <21a7e20a8752295c1a4a3f1c7b03242d4d643993.camel@intel.com>
References: <20210104171344.32339-1-chris@chris-wilson.co.uk>
In-Reply-To: <20210104171344.32339-1-chris@chris-wilson.co.uk>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-ID: <049173E180291944A31700D0537CA90E@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftests: Guard against
 redifinition of SZ_8G
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

T24gTW9uLCAyMDIxLTAxLTA0IGF0IDE3OjEzICswMDAwLCBDaHJpcyBXaWxzb24gd3JvdGU6DQo+
IEluIHRoZSBuZWFyIGZ1dHVyZSwgdXBzdHJlYW0gd2lsbCBpbnRyb2R1Y2UgYSBTWl84RyBtYWNy
byB0aGF0IGlzDQo+IHNsaWdodGx5IGRpZmZlcmVudCB0byBvdXIgb3duLiBFbXBsb3kgYSB0ZW1w
b3JhcnkgaWZuZGVmIHRvIGF2b2lkDQo+IGNvbXBpbGF0aW9uIGZhaWx1cmUgdW50aWwgd2UgaGF2
ZSBiYWNrbWVyZ2VkLg0KDQpBbHJlYWR5IGhlcmUhDQoNClJldmlld2VkLWJ5OiBKb3PDqSBSb2Jl
cnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4NCg0KV2lsbCBwdXNoIHRoaXMgdG8g
Zml4IGJ1aWxkIGJ1dCBmcm9tIG5vdyBvbiB3ZSBwcm9iYWJseSB3YW50IHRvIHJlbW92ZSB0aGlz
IG1hY3JvIHJpZ2h0Pw0KDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlz
QGNocmlzLXdpbHNvbi5jby51az4NCj4gLS0tDQo+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvc2Vs
ZnRlc3RzL2ludGVsX21lbW9yeV9yZWdpb24uYyB8IDIgKysNCj4gwqAxIGZpbGUgY2hhbmdlZCwg
MiBpbnNlcnRpb25zKCspDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
c2VsZnRlc3RzL2ludGVsX21lbW9yeV9yZWdpb24uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L3Nl
bGZ0ZXN0cy9pbnRlbF9tZW1vcnlfcmVnaW9uLmMNCj4gaW5kZXggYTU1MDc5YTA2MWRkLi43NTgz
OWRiNjNiZWEgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9p
bnRlbF9tZW1vcnlfcmVnaW9uLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRl
c3RzL2ludGVsX21lbW9yeV9yZWdpb24uYw0KPiBAQCAtMzUyLDcgKzM1Miw5IEBAIHN0YXRpYyBp
bnQgaWd0X21vY2tfc3BsaW50ZXJlZF9yZWdpb24odm9pZCAqYXJnKQ0KPiDCoAlyZXR1cm4gZXJy
Ow0KPiDCoH0NCj4gwqANCj4gDQo+IA0KPiANCj4gKyNpZm5kZWYgU1pfOEcNCj4gwqAjZGVmaW5l
IFNaXzhHIEJJVF9VTEwoMzMpDQo+ICsjZW5kaWYNCj4gwqANCj4gDQo+IA0KPiANCj4gwqBzdGF0
aWMgaW50IGlndF9tb2NrX21heF9zZWdtZW50KHZvaWQgKmFyZykNCj4gwqB7DQoNCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5n
IGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
