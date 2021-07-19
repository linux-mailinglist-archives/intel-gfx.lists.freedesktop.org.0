Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F2DF93CE903
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Jul 2021 19:51:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 326F26E201;
	Mon, 19 Jul 2021 17:51:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E66386E201
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 Jul 2021 17:51:47 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10050"; a="211101714"
X-IronPort-AV: E=Sophos;i="5.84,252,1620716400"; d="scan'208";a="211101714"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jul 2021 10:51:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,252,1620716400"; d="scan'208";a="631979359"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga005.jf.intel.com with ESMTP; 19 Jul 2021 10:51:47 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Mon, 19 Jul 2021 10:51:47 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Mon, 19 Jul 2021 10:51:46 -0700
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2242.010;
 Mon, 19 Jul 2021 10:51:46 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 1/7] drm/i915: Fix application of
 WaInPlaceDecompressionHang
Thread-Index: AQHXesqsCG+aaPZgmUKUFXisfFQV/6tLDnOA
Date: Mon, 19 Jul 2021 17:51:45 +0000
Message-ID: <229af519024a1055d74ab8a7f6c57406c1006f50.camel@intel.com>
References: <20210717051426.4120328-1-matthew.d.roper@intel.com>
 <20210717051426.4120328-2-matthew.d.roper@intel.com>
In-Reply-To: <20210717051426.4120328-2-matthew.d.roper@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.132]
Content-ID: <1BC0187E7B33DC4EA7470BDC816D4418@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/7] drm/i915: Fix application of
 WaInPlaceDecompressionHang
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

T24gRnJpLCAyMDIxLTA3LTE2IGF0IDIyOjE0IC0wNzAwLCBNYXR0IFJvcGVyIHdyb3RlOg0KPiBP
biBTS0wgd2UndmUgYmVlbiBhcHBseWluZyB0aGlzIHdvcmthcm91bmQgb24gSDArIHN0ZXBwaW5n
cywgd2hpY2ggaXMNCj4gYWN0dWFsbHkgYmFja3dhcmRzOyBIMCBpcyBzdXBwb3NlZCB0byBiZSB0
aGUgZmlyc3Qgc3RlcHBpbmcgd2hlcmUgdGhlDQo+IHdvcmthcm91bmQgaXMgbm8gbG9uZ2VyIG5l
ZWRlZC4gIEZsaXAgdGhlIGJvdW5kcyBzbyB0aGF0IHRoZSB3b3JrYXJvdW5kDQo+IGFwcGxpZXMg
dG8gYWxsIHN0ZXBwaW5ncyBfYmVmb3JlXyBIMC4NCj4gDQo+IE9uIEJYVCB3ZSd2ZSBiZWVuIGFw
cGx5aW5nIHRoaXMgd29ya2Fyb3VuZCB0byBhbGwgc3RlcHBpbmdzLCBidXQgdGhlDQo+IGJzcGVj
IHRlbGxzIHVzIGl0J3Mgb25seSBuZWVkZWQgdW50aWwgQzAuICBQcmUtQzAgR1Qgc3RlcHBpbmdz
IG9ubHkNCj4gYXBwZWFyZWQgaW4gcHJlLXByb2R1Y3Rpb24gaGFyZHdhcmUsIHdoaWNoIHdlIG5v
IGxvbmdlciBzdXBwb3J0IGluIHRoZQ0KPiBkcml2ZXIsIHNvIHdlIGNhbiBkcm9wIHRoZSB3b3Jr
YXJvdW5kIGNvbXBsZXRlbHkgZm9yIHRoaXMgcGxhdGZvcm0uDQo+IA0KPiBPbiBJQ0wgd2UndmUg
YmVlbiBhcHBseWluZyB0aGlzIHdvcmthcm91bmQgdG8gYWxsIHN0ZXBwaW5ncywgYnV0IHRoZXJl
DQo+IGRvZXNuJ3Qgc2VlbSB0byBiZSBhbnkgaW5kaWNhdGlvbiB0aGF0IHRoaXMgd29ya2Fyb3Vu
ZCB3YXMgZXZlciBuZWVkZWQNCj4gZm9yIHRoaXMgcGxhdGZvcm0gKGV2ZW4gbm93LWRlcHJlY2F0
ZWQgcGFnZSAyMDE5NiBvZiB0aGUgYnNwZWMgZG9lc24ndA0KPiBtZW50aW9uIGl0KS4gIFdlIGNh
biBnbyBhaGVhZCBhbmQgZHJvcCBpdC4NCj4gDQo+IEkgYWxzbyBkb24ndCBzZWUgYW55IG1lbnRp
b24gb2YgdGhpcyB3b3JrYXJvdW5kIGJlaW5nIG5lZWRlZCBmb3IgS0JMLA0KPiBhbHRob3VnaCB0
aGlzIG1heSBiZSBhbiBvdmVyc2lnaHQgc2luY2UgdGhlIHdvcmthcm91bmQgaXMgbmVlZGVkIGZv
ciBhbGwNCj4gc3RlcHBpbmdzIG9mIENGTC4gIEknbGwgbGVhdmUgdGhlIHdvcmthcm91bmQgaW4g
cGxhY2UgZm9yIEtCTCB0byBiZQ0KPiBzYWZlLg0KDQpSZXZpZXdlZC1ieTogSm9zw6kgUm9iZXJ0
byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+DQoNCj4gDQo+IEJzcGVjOiAxNDA5MSwg
MzM0NTANCj4gU2lnbmVkLW9mZi1ieTogTWF0dCBSb3BlciA8bWF0dGhldy5kLnJvcGVyQGludGVs
LmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5k
cy5jIHwgMjAgKystLS0tLS0tLS0tLS0tLS0tLS0NCj4gIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2Vy
dGlvbnMoKyksIDE4IGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC9pbnRlbF93b3JrYXJvdW5kcy5jDQo+IGluZGV4IDc3MzFkYjMzYzQ2YS4uNzZhM2I1ZDVlOWRj
IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5k
cy5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMN
Cj4gQEAgLTgzOCwyMyArODM4LDEyIEBAIHNrbF9ndF93b3JrYXJvdW5kc19pbml0KHN0cnVjdCBk
cm1faTkxNV9wcml2YXRlICppOTE1LCBzdHJ1Y3QgaTkxNV93YV9saXN0ICp3YWwpDQo+ICAJCSAg
ICBHRU44X0VVX0dBVU5JVF9DTE9DS19HQVRFX0RJU0FCTEUpOw0KPiAgDQo+ICAJLyogV2FJblBs
YWNlRGVjb21wcmVzc2lvbkhhbmc6c2tsICovDQo+IC0JaWYgKElTX1NLTF9HVF9TVEVQKGk5MTUs
IFNURVBfSDAsIFNURVBfRk9SRVZFUikpDQo+ICsJaWYgKElTX1NLTF9HVF9TVEVQKGk5MTUsIFNU
RVBfQTAsIFNURVBfSDAgLSAxKSkNCj4gIAkJd2Ffd3JpdGVfb3Iod2FsLA0KPiAgCQkJICAgIEdF
TjlfR0FNVF9FQ09fUkVHX1JXX0lBLA0KPiAgCQkJICAgIEdBTVRfRUNPX0VOQUJMRV9JTl9QTEFD
RV9ERUNPTVBSRVNTKTsNCj4gIH0NCj4gIA0KPiAtc3RhdGljIHZvaWQNCj4gLWJ4dF9ndF93b3Jr
YXJvdW5kc19pbml0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LCBzdHJ1Y3QgaTkxNV93
YV9saXN0ICp3YWwpDQo+IC17DQo+IC0JZ2VuOV9ndF93b3JrYXJvdW5kc19pbml0KGk5MTUsIHdh
bCk7DQo+IC0NCj4gLQkvKiBXYUluUGxhY2VEZWNvbXByZXNzaW9uSGFuZzpieHQgKi8NCj4gLQl3
YV93cml0ZV9vcih3YWwsDQo+IC0JCSAgICBHRU45X0dBTVRfRUNPX1JFR19SV19JQSwNCj4gLQkJ
ICAgIEdBTVRfRUNPX0VOQUJMRV9JTl9QTEFDRV9ERUNPTVBSRVNTKTsNCj4gLX0NCj4gLQ0KPiAg
c3RhdGljIHZvaWQNCj4gIGtibF9ndF93b3JrYXJvdW5kc19pbml0KHN0cnVjdCBkcm1faTkxNV9w
cml2YXRlICppOTE1LCBzdHJ1Y3QgaTkxNV93YV9saXN0ICp3YWwpDQo+ICB7DQo+IEBAIC05NDIs
MTEgKzkzMSw2IEBAIGljbF9ndF93b3JrYXJvdW5kc19pbml0KHN0cnVjdCBkcm1faTkxNV9wcml2
YXRlICppOTE1LCBzdHJ1Y3QgaTkxNV93YV9saXN0ICp3YWwpDQo+ICB7DQo+ICAJaWNsX3dhX2lu
aXRfbWNyKGk5MTUsIHdhbCk7DQo+ICANCj4gLQkvKiBXYUluUGxhY2VEZWNvbXByZXNzaW9uSGFu
ZzppY2wgKi8NCj4gLQl3YV93cml0ZV9vcih3YWwsDQo+IC0JCSAgICBHRU45X0dBTVRfRUNPX1JF
R19SV19JQSwNCj4gLQkJICAgIEdBTVRfRUNPX0VOQUJMRV9JTl9QTEFDRV9ERUNPTVBSRVNTKTsN
Cj4gLQ0KPiAgCS8qIFdhTW9kaWZ5R2FtVGxiUGFydGl0aW9uaW5nOmljbCAqLw0KPiAgCXdhX3dy
aXRlX2Nscl9zZXQod2FsLA0KPiAgCQkJIEdFTjExX0dBQ0JfUEVSRl9DVFJMLA0KPiBAQCAtMTA4
MSw3ICsxMDY1LDcgQEAgZ3RfaW5pdF93b3JrYXJvdW5kcyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0
ZSAqaTkxNSwgc3RydWN0IGk5MTVfd2FfbGlzdCAqd2FsKQ0KPiAgCWVsc2UgaWYgKElTX0tBQllM
QUtFKGk5MTUpKQ0KPiAgCQlrYmxfZ3Rfd29ya2Fyb3VuZHNfaW5pdChpOTE1LCB3YWwpOw0KPiAg
CWVsc2UgaWYgKElTX0JST1hUT04oaTkxNSkpDQo+IC0JCWJ4dF9ndF93b3JrYXJvdW5kc19pbml0
KGk5MTUsIHdhbCk7DQo+ICsJCWdlbjlfZ3Rfd29ya2Fyb3VuZHNfaW5pdChpOTE1LCB3YWwpOw0K
PiAgCWVsc2UgaWYgKElTX1NLWUxBS0UoaTkxNSkpDQo+ICAJCXNrbF9ndF93b3JrYXJvdW5kc19p
bml0KGk5MTUsIHdhbCk7DQo+ICAJZWxzZSBpZiAoSVNfSEFTV0VMTChpOTE1KSkNCg0KX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
