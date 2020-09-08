Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 100E8261531
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Sep 2020 18:46:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 543C66E1F2;
	Tue,  8 Sep 2020 16:45:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CF7C06E1F2
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Sep 2020 16:45:57 +0000 (UTC)
IronPort-SDR: kL0sXXnbwzjh9nL9ebACm7i2ehNT7r8iUxR40E7KRZMnr/RmX+EVFI2ffwaIYeRQ4eOyY0Tz0c
 YdirE6ntnOvQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9738"; a="219733527"
X-IronPort-AV: E=Sophos;i="5.76,406,1592895600"; d="scan'208";a="219733527"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2020 09:45:56 -0700
IronPort-SDR: PRt2LZ6nXPBdwNaoBJR40NBeDgPEg058huirfjDpK1JdELJ8sZcyGDlXR8PUz7/jCX7YPuTetq
 amArahn1Zrig==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,406,1592895600"; d="scan'208";a="299852699"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by orsmga003.jf.intel.com with ESMTP; 08 Sep 2020 09:45:56 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 8 Sep 2020 09:45:56 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 8 Sep 2020 09:45:55 -0700
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.1713.004;
 Tue, 8 Sep 2020 09:45:55 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [07/12] drm/i915: Configure GEN11_{TBT, TC}_HOTPLUG_CTL for
 ports TC5/6
Thread-Index: AQHWhfmeYq+PYDbNwECFrkCT5sg7VKlfaSyA
Date: Tue, 8 Sep 2020 16:45:55 +0000
Message-ID: <dea3788659ab9e41c69d5cef7b0bbe0f266cefb7.camel@intel.com>
References: <20200630215601.28557-8-ville.syrjala@linux.intel.com>
In-Reply-To: <20200630215601.28557-8-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-ID: <2F047F91C765CD4FB814ED3F41624703@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [07/12] drm/i915: Configure GEN11_{TBT,
 TC}_HOTPLUG_CTL for ports TC5/6
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
bQ0KPiA+DQo+IA0KPiBnZW4xMV9ocGRfZGV0ZWN0aW9uX3NldHVwKCkgaXMgbWlzc2luZyBwb3J0
cyBUQzUvNi4gQWRkIHRoZW0uDQo+IA0KPiBUT0RPOiBNaWdodCBiZSBuaWNlIHRvIG9ubHkgZW5h
YmxlIHRoZSBocGQgZGV0ZWN0aW9uIGxvZ2ljDQo+IGZvciBwb3J0cyB3ZSBhY3R1YWxseSBoYXZl
LiBTaG91bGQgYmUgcm9sbGVkIG91dCBmb3IgYWxsDQo+IHBsYXRmb3JtcyBpZi93aGVuIGRvbmUu
Li4NCg0KVEM1IGFuZCBUQzYgZG9uJ3QgZXhpc3QgaW4gSUNMIGJ1dCB0aGlzIGlzIG5vdCBhIHJl
c2VydmVkIHJlZ2lzdGVyLCBzaG91bGQgbm90IGNhdXNlIGFueSBoYXJtLg0KDQpSZXZpZXdlZC1i
eTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+DQoNCj4gDQo+
IFNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8DQo+IHZpbGxlLnN5cmphbGFAbGludXgu
aW50ZWwuY29tDQo+ID4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2lycS5j
IHwgOCArKysrKystLQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKSwgMiBkZWxl
dGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2ly
cS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9pcnEuYw0KPiBpbmRleCBhZDUyMTA5Yzc0
N2QuLjgzOWFlNjc0YmM0NCAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9pcnEuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2lycS5jDQo+IEBAIC0z
MTA5LDE0ICszMTA5LDE4IEBAIHN0YXRpYyB2b2lkIGdlbjExX2hwZF9kZXRlY3Rpb25fc2V0dXAo
c3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQ0KPiAgCWhvdHBsdWcgfD0gR0VOMTFf
SE9UUExVR19DVExfRU5BQkxFKFBPUlRfVEMxKSB8DQo+ICAJCSAgIEdFTjExX0hPVFBMVUdfQ1RM
X0VOQUJMRShQT1JUX1RDMikgfA0KPiAgCQkgICBHRU4xMV9IT1RQTFVHX0NUTF9FTkFCTEUoUE9S
VF9UQzMpIHwNCj4gLQkJICAgR0VOMTFfSE9UUExVR19DVExfRU5BQkxFKFBPUlRfVEM0KTsNCj4g
KwkJICAgR0VOMTFfSE9UUExVR19DVExfRU5BQkxFKFBPUlRfVEM0KSB8DQo+ICsJCSAgIEdFTjEx
X0hPVFBMVUdfQ1RMX0VOQUJMRShQT1JUX1RDNSkgfA0KPiArCQkgICBHRU4xMV9IT1RQTFVHX0NU
TF9FTkFCTEUoUE9SVF9UQzYpOw0KPiAgCUk5MTVfV1JJVEUoR0VOMTFfVENfSE9UUExVR19DVEws
IGhvdHBsdWcpOw0KPiAgDQo+ICAJaG90cGx1ZyA9IEk5MTVfUkVBRChHRU4xMV9UQlRfSE9UUExV
R19DVEwpOw0KPiAgCWhvdHBsdWcgfD0gR0VOMTFfSE9UUExVR19DVExfRU5BQkxFKFBPUlRfVEMx
KSB8DQo+ICAJCSAgIEdFTjExX0hPVFBMVUdfQ1RMX0VOQUJMRShQT1JUX1RDMikgfA0KPiAgCQkg
ICBHRU4xMV9IT1RQTFVHX0NUTF9FTkFCTEUoUE9SVF9UQzMpIHwNCj4gLQkJICAgR0VOMTFfSE9U
UExVR19DVExfRU5BQkxFKFBPUlRfVEM0KTsNCj4gKwkJICAgR0VOMTFfSE9UUExVR19DVExfRU5B
QkxFKFBPUlRfVEM0KSB8DQo+ICsJCSAgIEdFTjExX0hPVFBMVUdfQ1RMX0VOQUJMRShQT1JUX1RD
NSkgfA0KPiArCQkgICBHRU4xMV9IT1RQTFVHX0NUTF9FTkFCTEUoUE9SVF9UQzYpOw0KPiAgCUk5
MTVfV1JJVEUoR0VOMTFfVEJUX0hPVFBMVUdfQ1RMLCBob3RwbHVnKTsNCj4gIH0NCj4gIA0KPiAN
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
