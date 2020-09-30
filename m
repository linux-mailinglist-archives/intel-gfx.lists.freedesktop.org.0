Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F13C527F34B
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Sep 2020 22:21:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 099CB6E819;
	Wed, 30 Sep 2020 20:21:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BF7C76E0DF
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Sep 2020 20:21:10 +0000 (UTC)
IronPort-SDR: djiLVjWGs1+uDXRQj1ZTk4+AVGn4om7FwdSNXXIbQaMA8e/+O74t9cvcInJwhKSqIK/AxXuWHG
 nrsWgiim/dDA==
X-IronPort-AV: E=McAfee;i="6000,8403,9760"; a="247264655"
X-IronPort-AV: E=Sophos;i="5.77,322,1596524400"; d="scan'208";a="247264655"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2020 13:21:05 -0700
IronPort-SDR: l/OIsVscZcW3nGJRZOJa4wSI3f9QhpQz5c3nT3ppekUVeigGJzpRBk4GZOeZU2S8adOhqetmSM
 YUQ5w2Vp6TjQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,322,1596524400"; d="scan'208";a="341310046"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by orsmga008.jf.intel.com with ESMTP; 30 Sep 2020 13:21:04 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 30 Sep 2020 13:21:04 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 30 Sep 2020 13:21:03 -0700
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.1713.004;
 Wed, 30 Sep 2020 13:21:03 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "Surendrakumar Upadhyay, TejaskumarX"
 <tejaskumarx.surendrakumar.upadhyay@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v2] drm/i915/display/ehl: Limit eDP to HBR2
Thread-Index: AQHWldHzgrArc81zCkGcsM2TEaq5m6mBzlcAgABKugA=
Date: Wed, 30 Sep 2020 20:21:03 +0000
Message-ID: <fc82e9a240a156560c4992392d3462ca901c7b89.camel@intel.com>
References: <20200928200309.88982-1-jose.souza@intel.com>
 <SN6PR11MB34217BC5C5AE290B12C8123CDF330@SN6PR11MB3421.namprd11.prod.outlook.com>
In-Reply-To: <SN6PR11MB34217BC5C5AE290B12C8123CDF330@SN6PR11MB3421.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.132]
Content-ID: <A92C7FB6771BDC4393621ADDEFDA4BD2@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/display/ehl: Limit eDP to HBR2
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

T24gV2VkLCAyMDIwLTA5LTMwIGF0IDE1OjU2ICswMDAwLCBTdXJlbmRyYWt1bWFyIFVwYWRoeWF5
LCBUZWphc2t1bWFyWCB3cm90ZToNCj4gDQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+
IEZyb206IEludGVsLWdmeCA8DQo+IGludGVsLWdmeC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZw0KPiA+IE9uIEJlaGFsZiBPZiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphDQo+IFNlbnQ6IDI5
IFNlcHRlbWJlciAyMDIwIDAxOjMzDQo+IFRvOiANCj4gaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZw0KPiANCj4gU3ViamVjdDogW0ludGVsLWdmeF0gW1BBVENIIHYyXSBkcm0vaTkxNS9k
aXNwbGF5L2VobDogTGltaXQgZURQIHRvIEhCUjINCj4gDQo+IFJlY2VudCB1cGRhdGUgaW4gZG9j
dW1lbnRhdGlvbiBkZWZlYXR1cmVkIGVEUCBIQlIzIGZvciBFSEwgYW5kIEpTTC4NCj4gDQo+IHYy
Og0KPiAtIFJlbW92ZSBkZWFkIGNvZGUgaW4gZWhsX2dldF9jb21ib19idWZfdHJhbnMoKQ0KPiAN
Cj4gQlNwZWM6IDMyMjQ3DQo+IENjOiBNYXR0IFJvcGVyIDwNCj4gbWF0dGhldy5kLnJvcGVyQGlu
dGVsLmNvbQ0KPiA+DQo+IENjOiBWaWR5YSBTcmluaXZhcyA8DQo+IHZpZHlhLnNyaW5pdmFzQGlu
dGVsLmNvbQ0KPiA+DQo+IFNpZ25lZC1vZmYtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPA0K
PiBqb3NlLnNvdXphQGludGVsLmNvbQ0KPiA+DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kZGkuYyB8ICA5ICsrLS0tLS0tLSAgZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kcC5jICB8IDExICsrKysrKysrKystDQo+ICAyIGZpbGVzIGNoYW5n
ZWQsIDEyIGluc2VydGlvbnMoKyksIDggZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMNCj4gaW5kZXggNGQwNjE3OGNkNzZjLi5lZjA2Yjdi
ODJiZTkgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGRpLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYw0K
PiBAQCAtMTA4MiwxMyArMTA4Miw4IEBAIGVobF9nZXRfY29tYm9fYnVmX3RyYW5zKHN0cnVjdCBp
bnRlbF9lbmNvZGVyICplbmNvZGVyLCBpbnQgdHlwZSwgaW50IHJhdGUsDQo+ICByZXR1cm4gaWNs
X2NvbWJvX3BoeV9kZGlfdHJhbnNsYXRpb25zX2hkbWk7DQo+ICBjYXNlIElOVEVMX09VVFBVVF9F
RFA6DQo+ICBpZiAoZGV2X3ByaXYtPnZidC5lZHAubG93X3Zzd2luZykgew0KPiAtaWYgKHJhdGUg
PiA1NDAwMDApIHsNCj4gLSpuX2VudHJpZXMgPSBBUlJBWV9TSVpFKGljbF9jb21ib19waHlfZGRp
X3RyYW5zbGF0aW9uc19lZHBfaGJyMyk7DQo+IC1yZXR1cm4gaWNsX2NvbWJvX3BoeV9kZGlfdHJh
bnNsYXRpb25zX2VkcF9oYnIzOw0KPiAtfSBlbHNlIHsNCj4gLSpuX2VudHJpZXMgPSBBUlJBWV9T
SVpFKGljbF9jb21ib19waHlfZGRpX3RyYW5zbGF0aW9uc19lZHBfaGJyMik7DQo+IC1yZXR1cm4g
aWNsX2NvbWJvX3BoeV9kZGlfdHJhbnNsYXRpb25zX2VkcF9oYnIyOw0KPiAtfQ0KPiArKm5fZW50
cmllcyA9IEFSUkFZX1NJWkUoaWNsX2NvbWJvX3BoeV9kZGlfdHJhbnNsYXRpb25zX2VkcF9oYnIy
KTsNCj4gK3JldHVybiBpY2xfY29tYm9fcGh5X2RkaV90cmFuc2xhdGlvbnNfZWRwX2hicjI7DQo+
IA0KPiBBcyBwZSBCc3BlYywgZWhsX2VkcF9oYnIyIGRvZXMgbm90IG1hdGNoIHdpdGggaWNsX2Vk
cF9oYnIyIHZhbHVlcy4gUmF0aGVyIEkgc2VlIChpY2xfZWRwX2hicjIgPT0gZWhsX2VkcF9oYnIp
IHRydWUuDQoNClRoaXMgY2hhbmdlIGlzIG5vdCByZWxhdGVkIHRvIHZvbHRhZ2Ugc3dpbmcgdGFi
bGVzLCBpdCBpcyBvbmx5IHJlbW92aW5nIGEgZGVhZCBjb2RlIGFzIHRoZSBoYnIzIHZvbHRhZ2Ug
c3dpbmcgdGFibGUgd2lsbCBuZXZlciBiZSB1c2VkIGluIEVITC9KU0wuDQoNClllYWggdGhlIHZv
bHRhZ2Ugc3dpbmcgdGFibGVzIGZvciBFSEwgYXJlIG5vdCBtYXRjaGluZyB0b28sIGNvdWxkIHlv
dSB1cGRhdGUgaXQgaW4geW91ciBzZXJpZXMgdXBkYXRpbmcgdGhlIEpTTCB0YWJsZXM/DQoNCj4g
DQo+IFRoYW5rcywNCj4gVGVqYXMNCj4gIH0NCj4gIC8qIGZhbGwgdGhyb3VnaCAqLw0KPiAgZGVm
YXVsdDoNCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZHAuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYw0KPiBpbmRleCA1
NGE0YjgxZWEzZmYuLjk2ZDJjNzY3NzJkNiAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZHAuYw0KPiBAQCAtMjc3LDEzICsyNzcsMjAgQEAgc3RhdGljIGludCBpY2xf
bWF4X3NvdXJjZV9yYXRlKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApDQo+ICBlbnVtIHBoeSBw
aHkgPSBpbnRlbF9wb3J0X3RvX3BoeShkZXZfcHJpdiwgZGlnX3BvcnQtPmJhc2UucG9ydCk7DQo+
IA0KPiAgaWYgKGludGVsX3BoeV9pc19jb21ibyhkZXZfcHJpdiwgcGh5KSAmJg0KPiAtICAgICFJ
U19FTEtIQVJUTEFLRShkZXZfcHJpdikgJiYNCj4gICAgICAhaW50ZWxfZHBfaXNfZWRwKGludGVs
X2RwKSkNCj4gIHJldHVybiA1NDAwMDA7DQo+IA0KPiAgcmV0dXJuIDgxMDAwMDsNCj4gIH0NCj4g
DQo+ICtzdGF0aWMgaW50IGVobF9tYXhfc291cmNlX3JhdGUoc3RydWN0IGludGVsX2RwICppbnRl
bF9kcCkgew0KPiAraWYgKGludGVsX2RwX2lzX2VkcChpbnRlbF9kcCkpDQo+ICtyZXR1cm4gNTQw
MDAwOw0KPiArDQo+ICtyZXR1cm4gODEwMDAwOw0KPiArfQ0KPiArDQo+ICBzdGF0aWMgdm9pZA0K
PiAgaW50ZWxfZHBfc2V0X3NvdXJjZV9yYXRlcyhzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKSAg
eyBAQCAtMzE4LDYgKzMyNSw4IEBAIGludGVsX2RwX3NldF9zb3VyY2VfcmF0ZXMoc3RydWN0IGlu
dGVsX2RwICppbnRlbF9kcCkNCj4gIHNpemUgPSBBUlJBWV9TSVpFKGNubF9yYXRlcyk7DQo+ICBp
ZiAoSVNfR0VOKGRldl9wcml2LCAxMCkpDQo+ICBtYXhfcmF0ZSA9IGNubF9tYXhfc291cmNlX3Jh
dGUoaW50ZWxfZHApOw0KPiArZWxzZSBpZiAoSVNfRUxLSEFSVExBS0UoZGV2X3ByaXYpKQ0KPiAr
bWF4X3JhdGUgPSBlaGxfbWF4X3NvdXJjZV9yYXRlKGludGVsX2RwKTsNCj4gIGVsc2UNCj4gIG1h
eF9yYXRlID0gaWNsX21heF9zb3VyY2VfcmF0ZShpbnRlbF9kcCk7DQo+ICB9IGVsc2UgaWYgKElT
X0dFTjlfTFAoZGV2X3ByaXYpKSB7DQo+IC0tDQo+IDIuMjguMA0KPiANCj4gX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18NCj4gSW50ZWwtZ2Z4IG1haWxpbmcg
bGlzdA0KPiBJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IA0KPiBodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA0KPiANCj4gDQpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
