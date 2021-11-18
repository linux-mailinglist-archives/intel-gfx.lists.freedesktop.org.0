Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B09C456398
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Nov 2021 20:40:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B16876E0DC;
	Thu, 18 Nov 2021 19:40:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A8CA16E0DC
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Nov 2021 19:40:52 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10172"; a="295091560"
X-IronPort-AV: E=Sophos;i="5.87,245,1631602800"; d="scan'208";a="295091560"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2021 11:40:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,245,1631602800"; d="scan'208";a="605304957"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by orsmga004.jf.intel.com with ESMTP; 18 Nov 2021 11:40:51 -0800
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Thu, 18 Nov 2021 11:40:51 -0800
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 BGSMSX604.gar.corp.intel.com (10.67.234.6) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Fri, 19 Nov 2021 01:10:48 +0530
Received: from bgsmsx604.gar.corp.intel.com ([10.67.234.6]) by
 BGSMSX604.gar.corp.intel.com ([10.67.234.6]) with mapi id 15.01.2242.012;
 Fri, 19 Nov 2021 01:10:48 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 2/2] drm/i915: Disable DSB usage for now
Thread-Index: AQHXwSgAtjS8jYpRoUmvf00W+0ADdKwJ5T4g
Date: Thu, 18 Nov 2021 19:40:48 +0000
Message-ID: <ede57d2d0f3d446b9e5e047722830625@intel.com>
References: <20211014181856.17581-1-ville.syrjala@linux.intel.com>
 <20211014181856.17581-2-ville.syrjala@linux.intel.com>
In-Reply-To: <20211014181856.17581-2-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.200.16
x-originating-ip: [10.223.10.1]
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915: Disable DSB usage for now
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtZ2Z4IDxpbnRl
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBWaWxsZSBT
eXJqYWxhDQo+IFNlbnQ6IFRodXJzZGF5LCBPY3RvYmVyIDE0LCAyMDIxIDExOjQ5IFBNDQo+IFRv
OiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IFN1YmplY3Q6IFtJbnRlbC1nZnhd
IFtQQVRDSCAyLzJdIGRybS9pOTE1OiBEaXNhYmxlIERTQiB1c2FnZSBmb3Igbm93DQo+IA0KPiBG
cm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiAN
Cj4gVHVybnMgb3V0IHRoZSBEU0IgaGFzIHRyb3VibGUgY29ycmVjdGx5IGxvYWRpbmcgdGhlIGdh
bW1hIExVVC4NCj4gRnJvbSBhIGN1cnNvcnkgbG9vayBtYXliZSBsaWtlIHNvbWUgZW50cmllcyBk
byBub3QgbG9hZCBwcm9wZXJseSwgb3IgdGhleSBnZXQNCj4gbG9hZGVkIHdpdGggc29tZSBnaWJi
ZXJpc2guIFVuZm9ydHVuYXRlbHkgb3VyIGN1cnJlbnQga21zX2NvbG9yL2V0Yy4gdGVzdHMgZG8g
bm90DQo+IHNlZW0gdG8gY2F0Y2ggdGhpcy4NCj4gDQo+IEkgaGFkIGEgYnJpZWYgbG9vayBhdCB0
aGUgZ2VuZXJhdGVkIERTQiBiYXRjaCBhbmQgaXQgbG9va2VkIGNvcnJlY3QuIFRyaWVkIGEgZmV3
IHF1aWNrDQo+IHRyaWNrcyBsaWtlIHdyaXRpbmcgdGhlIGluZGV4IHJlZ2lzdGVyIHR3aWNlL2V0
Yy4gYnV0IGRpZG4ndCBzZWUgYW55IGltcHJvdmVtZW50Lg0KPiBBbHNvIHRyaWVkIHN3aXRjaGlu
ZyB0byB0aGUgMTBiaXQgZ2FtbWEgbW9kZSBpbiBjYXNlIHRoZXJlIGlzIHlldCBhbm90aGVyIGlz
c3VlIHdpdGgNCj4gdGhlIG11bHRpLXNlZ21lbnQgbW9kZSwgYnV0IGV2ZW4gdGhlIDEwYml0IG1v
ZGUgd2FzIHNob3dpbmcgaXNzdWVzLg0KPiANCj4gU3dpdGNoaW5nIHRvIG1taW8gZml4ZXMgYWxs
IG9mIGl0LiBJIHN1cHBvc2Ugb25lIHRoZW9yeSBpcyB0aGF0IG1heWJlIHRoZSBEU0IgYmFuZ3MN
Cj4gb24gdGhlIExVVCB0b28gcXVpY2tseSBhbmQgaXQgY2FuJ3Qga2VlcCB1cCBhbmQgaW5zdGVh
ZCBzb21lIGRhdGEgZWl0aGVyIGdldHMNCj4gZHJvcHBlZCBvciBjb3JydXB0ZWQuIFRvIGNvbmZp
cm0gdGhhdCBzb21lb25lIHNob3VsZCB0cnkgdG8gc2xvdyBkb3duIHRoZSBEU0Incw0KPiBwcm9n
cmVzcyBhIGJpdC4NCj4gQW5vdGhlciB0aG91Z2h0IHdhcyB0aGF0IG1heWJlIHRoZSBMVVQgaGFz
IGNyYXBweSBkdWFsIHBvcnRpbmcgYW5kIHlvdSBnZXQNCj4gY29udGVudGlvbiBpZiB5b3UgdHJ5
IHRvIGxvYWQgaXQgZHVyaW5nIGFjdGl2ZSBzY2Fub3V0LiBCdXQgd2h5IHRoZW4gd291bGQgdGhl
IG1taW8NCj4gcGF0aCB3b3JrLCB1bmxlc3MgaXQncyBqdXN0IHN1ZmZpY2llbnRseSBzbG93Pw0K
PiANCj4gV2hhdGV2ZXIgdGhlIGNhc2UsIHRoaXMgaXMgY3VycmVudGx5IGJ1c3RlZCBzbyBsZXQn
cyBkaXNhYmxlIGl0IHVudGlsIHdlIGdldCB0byB0aGUgcm9vdA0KPiBvZiB0aGUgcHJvYmxlbS4N
Cg0KRFNCIGZ1bmN0aW9uYWxseSBzaG91bGQgd29yaywgYXMgbm8gcG90ZW50aWFsIGh3IGlzc3Vl
IGlzIGlkZW50aWZpZWQuIFdlIG1heSBoYXZlIHRvDQpoYW5kbGUgaXQgYmV0dGVyIGluIGRyaXZl
ci4gV2l0aCB0aGlzIHVuZGVyIGludmVzdGlnYXRpb24sIHdlIGNhbiBkaXNhYmxlIGl0IGZvciBu
b3cgd2hpbGUNCnRoZSBmaXggaXMgZ2V0dGluZyBpZGVudGlmaWVkLg0KDQpSZXZpZXdlZC1ieTog
VW1hIFNoYW5rYXIgPHVtYS5zaGFua2FyQGludGVsLmNvbT4NCg0KPiBDbG9zZXM6IGh0dHBzOi8v
Z2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9kcm0vaW50ZWwvLS9pc3N1ZXMvMzkxNg0KPiBTaWduZWQt
b2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGNpLmMgfCAyICstDQo+ICAxIGZp
bGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkNCj4gDQo+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BjaS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9wY2kuYyBpbmRleA0KPiA3NjU1YzdhNGY5MDQuLmJmYzdiZGRlNzNhMSAxMDA2NDQN
Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wY2kuYw0KPiArKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X3BjaS5jDQo+IEBAIC04NzIsNyArODcyLDcgQEAgc3RhdGljIGNv
bnN0IHN0cnVjdCBpbnRlbF9kZXZpY2VfaW5mbyBqc2xfaW5mbyA9IHsNCj4gIAlUR0xfQ1VSU09S
X09GRlNFVFMsIFwNCj4gIAkuaGFzX2dsb2JhbF9tb2NzID0gMSwgXA0KPiAgCS5oYXNfcHhwID0g
MSwgXA0KPiAtCS5kaXNwbGF5Lmhhc19kc2IgPSAxDQo+ICsJLmRpc3BsYXkuaGFzX2RzYiA9IDAg
LyogRklYTUU6IExVVCBsb2FkIGlzIGJyb2tlbiB3aXRoIERTQiAqLw0KPiANCj4gIHN0YXRpYyBj
b25zdCBzdHJ1Y3QgaW50ZWxfZGV2aWNlX2luZm8gdGdsX2luZm8gPSB7DQo+ICAJR0VOMTJfRkVB
VFVSRVMsDQo+IC0tDQo+IDIuMzIuMA0KDQo=
