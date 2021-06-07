Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FAB739E9F9
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Jun 2021 01:16:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F7656EA4D;
	Mon,  7 Jun 2021 23:16:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E8D906EA50
 for <intel-gfx@lists.freedesktop.org>; Mon,  7 Jun 2021 23:16:33 +0000 (UTC)
IronPort-SDR: Oj9CvXuZq9hxyCSaJ4SAIGBhvWQKE/5RftQFWVpNmrAme1jtTAOUAPCXU77kTl3d1l4BL46t+p
 Qfx4GKZYRl0Q==
X-IronPort-AV: E=McAfee;i="6200,9189,10008"; a="204757833"
X-IronPort-AV: E=Sophos;i="5.83,256,1616482800"; d="scan'208";a="204757833"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2021 16:16:33 -0700
IronPort-SDR: dkT7M0K3yfkXU2kKOObytqDvPe6KxfUhH0YKQlUL6bBWE8Ap17Ht6ay9hoQQtau7UR4Az0k0Os
 jyOYCma/Uc5g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,256,1616482800"; d="scan'208";a="418694531"
Received: from irsmsx603.ger.corp.intel.com ([163.33.146.9])
 by orsmga002.jf.intel.com with ESMTP; 07 Jun 2021 16:16:32 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 irsmsx603.ger.corp.intel.com (163.33.146.9) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Tue, 8 Jun 2021 00:16:30 +0100
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2242.008;
 Mon, 7 Jun 2021 16:16:29 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "Mun, Gwan-gyeong" <gwan-gyeong.mun@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v2 3/4] drm/i915/display: Nuke has_infoframe
Thread-Index: AQHXSRef3rEPVtv6zkaUlnSqzESBRqrujtMAgABMd4CAGj8dAIAAsA0A
Date: Mon, 7 Jun 2021 23:16:29 +0000
Message-ID: <e8c00d1f7fce2d34e7f6dd3b5856920625bf9c66.camel@intel.com>
References: <20210514232247.144542-1-jose.souza@intel.com>
 <20210514232247.144542-3-jose.souza@intel.com>
 <a582c5f8912378f8661a1676f8e360cba7924332.camel@intel.com>
 <90f9a60870bdedcd89363b45fff97a4fb57980bd.camel@intel.com>
 <ebec559f-734d-70cb-7cea-ee2a2582eac9@intel.com>
In-Reply-To: <ebec559f-734d-70cb-7cea-ee2a2582eac9@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.132]
Content-ID: <77F29B57C8A99D42A0894851DA181AFE@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2 3/4] drm/i915/display: Nuke has_infoframe
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

T24gTW9uLCAyMDIxLTA2LTA3IGF0IDE1OjQ5ICswMzAwLCBHd2FuLWd5ZW9uZyBNdW4gd3JvdGU6
DQo+IA0KPiBPbiA1LzIxLzIxIDEwOjU4IFBNLCBTb3V6YSwgSm9zZSB3cm90ZToNCj4gPiBPbiBG
cmksIDIwMjEtMDUtMjEgYXQgMTY6MjcgKzAxMDAsIE11biwgR3dhbi1neWVvbmcgd3JvdGU6DQo+
ID4gPiBPbiBGcmksIDIwMjEtMDUtMTQgYXQgMTY6MjIgLTA3MDAsIEpvc8OpIFJvYmVydG8gZGUg
U291emEgd3JvdGU6DQo+ID4gPiA+IFRoaXMgd2FzIG9ubHkgcmVkdW50YW50IGluZm9ybWF0aW9u
IGhhc19oZG1pX3NpbmsgY2FuIGRvIHRoZSBzYW1lIGpvYi4NCj4gPiA+ID4gc2V0X2luZm9mcmFt
ZXMoKSBob29rcyB3aWxsIGNhbGwgaW50ZWxfd3JpdGVfaW5mb2ZyYW1lKCkgZm9yIHRoZQ0KPiA+
ID4gPiBzdXBwb3J0ZWQgaW5mb2ZyYW1lcyB0eXBlcyBhbmQgaXQgd2lsbCBvbmx5IGJlIGVuYWJs
ZWQgaWYgZ2l2ZW4gdHlwZQ0KPiA+ID4gPiBpcyBzZXQgaW4gY3J0Y19zdGF0ZS0+aW5mb2ZyYW1l
cy5lbmFibGUuDQo+ID4gPiA+IA0KPiA+ID4gPiBXaGlsZSBhdCBpdCBhbHNvIGZpeGluZyB0aGUg
c3R5bGUgb2YgZGlnX3BvcnQtPnNldF9pbmZvZnJhbWVzKCkgY2FsbHMuDQo+ID4gPiA+IA0KPiA+
ID4gPiBDYzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4N
Cj4gPiA+ID4gU2lnbmVkLW9mZi1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6
YUBpbnRlbC5jb20+DQo+ID4gPiA+IC0tLQ0KPiA+ID4gPiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvZzR4X2hkbWkuYyAgICAgICB8IDIyICsrKysrKy0tLS0tLS0tLS0tLS0NCj4gPiA+
ID4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jICAgICAgfCAxNyAr
KysrKy0tLS0tLS0tLQ0KPiA+ID4gPiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGlzcGxheS5jICB8ICA2ICsrLS0tDQo+ID4gPiA+ICAgLi4uL2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZGlzcGxheV90eXBlcy5oICAgIHwgIDMgLS0tDQo+ID4gPiA+ICAgZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9tc3QuYyAgIHwgIDQgKystLQ0KPiA+ID4gPiAgIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaGRtaS5jICAgICB8IDEzICsrKysrLS0t
LS0tDQo+ID4gPiA+ICAgNiBmaWxlcyBjaGFuZ2VkLCAyMiBpbnNlcnRpb25zKCspLCA0MyBkZWxl
dGlvbnMoLSkNCj4gPiA+ID4gDQo+ID4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2c0eF9oZG1pLmMNCj4gPiA+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2c0eF9oZG1pLmMNCj4gPiA+ID4gaW5kZXggYmUzNTJlOWYwYWZjLi5mMzVkYjk2ZTYy
MzkgMTAwNjQ0DQo+ID4gPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvZzR4
X2hkbWkuYw0KPiA+ID4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2c0eF9o
ZG1pLmMNCj4gPiA+ID4gQEAgLTEwNSw5ICsxMDUsNiBAQCBzdGF0aWMgdm9pZCBpbnRlbF9oZG1p
X2dldF9jb25maWcoc3RydWN0DQo+ID4gPiA+IGludGVsX2VuY29kZXIgKmVuY29kZXIsDQo+ID4g
PiA+ICAgICAgICAgIHBpcGVfY29uZmlnLT5pbmZvZnJhbWVzLmVuYWJsZSB8PQ0KPiA+ID4gPiAg
ICAgICAgICAgICAgICAgIGludGVsX2hkbWlfaW5mb2ZyYW1lc19lbmFibGVkKGVuY29kZXIsIHBp
cGVfY29uZmlnKTsNCj4gPiA+ID4gICANCj4gPiA+ID4gLSAgICAgICBpZiAocGlwZV9jb25maWct
PmluZm9mcmFtZXMuZW5hYmxlKQ0KPiA+ID4gPiAtICAgICAgICAgICAgICAgcGlwZV9jb25maWct
Pmhhc19pbmZvZnJhbWUgPSB0cnVlOw0KPiA+ID4gPiAtDQo+ID4gPiAicGlwZV9jb25maWctPmlu
Zm9mcmFtZXMuZW5hYmxlIiBpcyBzZXQgd2l0aCBpbmZvcm1hdGlvbiBhYm91dCB0aGUNCj4gPiA+
IGluZm9mcmFtZXMgY3VycmVudGx5IGFjdGl2ZSBpbiB0aGUgaGFyZHdhcmUgdGhyb3VnaCAicGlw
ZV9jb25maWctDQo+ID4gPiA+IGluZm9mcmFtZXMuZW5hYmxlIHw9IGludGVsX2hkbWlfaW5mb2Zy
YW1lc19lbmFibGVkKGVuY29kZXIsDQo+ID4gPiBwaXBlX2NvbmZpZyk7Ii4NCj4gPiA+IA0KPiA+
ID4gVGhlcmVmb3JlLCB3aGVuIGNhbGxpbmcgc2V0X2luZm9mcmFtZXMoKSBzZW1hbnRpY2FsbHks
IHRoZQ0KPiA+ID4gaGFzX2luZm9mcmFtZSBpbmZvcm1hdGlvbiBzZXQgYnkgImlmIChwaXBlX2Nv
bmZpZy0+aW5mb2ZyYW1lcy5lbmFibGUpDQo+ID4gPiBwaXBlX2NvbmZpZy0+aGFzX2luZm9mcmFt
ZSA9IHRydWU7IiBpcyBtb3JlIGNsZWFyLg0KPiA+IA0KPiA+IFRoYXQgZG9uJ3Qgd29yayBiZWNh
dXNlIHRoZSBmdW5jdGlvbnMgdGhhdCB3aWxsIGNoZWNrIGlmIGEgaW5mb2ZyYW1lIGlzIG5lZWRl
ZCBhbmQgc2V0IHBpcGVfY29uZmlnLT5pbmZvZnJhbWVzLmVuYWJsZSBkZXBlbmRzIG9uIHBpcGVf
Y29uZmlnLQ0KPiA+ID4gaGFzX2luZm9mcmFtZS9jcnRjX3N0YXRlLT5oYXNfaGRtaV9zaW5rLg0K
PiA+IFRoYXQgaXMgcHJvYmFibHkgYmVjYXVzZSBEVkkgcG9ydHMgZG9uJ3Qgc3VwcG9ydCBpbmZv
ZnJhbWVzIGJ1dCBpbiBpOTE1IGFyZSBoYW5kbGUgdmVyeSBzaW1pbGFyIHRvIEhETUkuDQo+ID4g
DQo+ID4gPiANCj4gRFAgYW5kIEhETUkgY2FuIGhhdmUgaW5mb2ZyYW1lcyB0aGF0IGZpdCBlYWNo
IHNwZWNpZmljYXRpb24gaW4gdGhlIA0KPiBzcGVjaWZpY2F0aW9uLg0KPiBBbmQgKGFsdGhvdWdo
IG5vdCB1c2VkIGluIHRoaXMgc2Vuc2UgaGVyZSkgd2hlbiBkcCBoYXMgaGRtaSBzaW5rLCBpdCBj
YW4gDQo+IGJlIHRob3VnaHQgb2YgdXNpbmcgZHAgdG8gaGRtaSBwcm90b2NvbCBjb252ZXJ0ZXIu
IEkgdGhpbmsgaXQgbWlnaHQgYmUgYSANCj4gbGl0dGxlIHVuY2xlYXIsIGJ1dCB3aGF0IGRvIHlv
dSB0aGluaz8NCg0KTm90IHN1cmUgaWYgSSB1bmRlcnN0b29kIHdoYXQgeW91IG1lYW4gYnV0IG9u
IGludGVsX2hkbWlfY29tcHV0ZV9jb25maWcoKSwgaGFzX2luZm9mcmFtZSBpcyBzZXQgcmlnaHQg
bm93IGFmdGVyIGNoZWNrIGlmIHRoZXJlIGlzIGEgSERNSSBzaW5rKGhhbmRsaW5nDQpEUCBhbmQg
SERNSSwgaW50ZWxfaGFzX2hkbWlfc2luaygpKS4NCg0KRllJIEkgaGF2ZSBhcHBsaWVkIGFsbCB0
aGUgb3RoZXIgcGF0Y2hlcy4NCg0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZngK
