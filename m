Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 41A13380F0E
	for <lists+intel-gfx@lfdr.de>; Fri, 14 May 2021 19:34:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B45A26F3CE;
	Fri, 14 May 2021 17:33:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 874C76F3CE
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 May 2021 17:33:57 +0000 (UTC)
IronPort-SDR: pW8dUMw30vEXTI0BaOyJ1mZM+sYFBo2nty1f25Fllru9OkUBkIojwYIGSI8ME/zjKEWjaM6zWe
 Kr0GECopwX9Q==
X-IronPort-AV: E=McAfee;i="6200,9189,9984"; a="285737607"
X-IronPort-AV: E=Sophos;i="5.82,300,1613462400"; d="scan'208";a="285737607"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2021 10:33:56 -0700
IronPort-SDR: 5x4QCqiejVMJz9+7z4qYiYHUzbYJFFNFeoOOZr3EzDkj9MWdWR4VA+tw/vSprpb6MGbL2T8/qO
 stSvAP6zct/w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,300,1613462400"; d="scan'208";a="610833718"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by orsmga005.jf.intel.com with ESMTP; 14 May 2021 10:33:56 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Fri, 14 May 2021 10:33:56 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Fri, 14 May 2021 10:33:55 -0700
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2106.013;
 Fri, 14 May 2021 10:33:55 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 4/6] drm/i915: Check sink deep color
 capabilitis during HDMI .mode_valid()
Thread-Index: AQHXRn+6pdVrp3vNv0Cx9OPvD7BQfKrjt9yA
Date: Fri, 14 May 2021 17:33:55 +0000
Message-ID: <f877bb51958bf7fe34d931a0c9d8aa5fe6898381.camel@intel.com>
References: <20210511160532.21446-1-ville.syrjala@linux.intel.com>
 <20210511160532.21446-5-ville.syrjala@linux.intel.com>
In-Reply-To: <20210511160532.21446-5-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-ID: <C8B512CFF2152344934C12787EAAA689@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 4/6] drm/i915: Check sink deep color
 capabilitis during HDMI .mode_valid()
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

T24gVHVlLCAyMDIxLTA1LTExIGF0IDE5OjA1ICswMzAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOg0K
PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiANCj4gQ3VycmVudGx5IEhETUkgLm1vZGVfdmFsaWQoKSBvbmx5IGNoZWNrcyB3aGV0aGVyIHRo
ZSBzb3VyY2UgY2FuIGRvDQo+IGRlZXAgY29sb3IuIExldCdzIGNoZWNrIHdoZXRoZXIgdGhlIHNp
bmsgY2FuIGRvIGl0IGFzIHdlbGwuDQo+IA0KDQpSZXZpZXdlZC1ieTogSm9zw6kgUm9iZXJ0byBk
ZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+DQoNCj4gQ2M6IFdlcm5lciBTZW1iYWNoIDx3
c2VAdHV4ZWRvY29tcHV0ZXJzLmNvbT4NCj4gU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOk
IDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2hkbWkuYyB8IDE2ICsrKysrKysrKy0tLS0tLS0NCj4gIDEg
ZmlsZSBjaGFuZ2VkLCA5IGluc2VydGlvbnMoKyksIDcgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9oZG1pLmMgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hkbWkuYw0KPiBpbmRleCA1NmFjNTNlYWI5
MGMuLjg3NGZiODk3MDA1YSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9oZG1pLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9oZG1pLmMNCj4gQEAgLTE5MDEsMTAgKzE5MDEsMTAgQEAgc3RhdGljIGJvb2wgaW50ZWxf
aGRtaV9icGNfcG9zc2libGUoc3RydWN0IGRybV9jb25uZWN0b3IgKmNvbm5lY3RvciwNCj4gIH0N
Cj4gIA0KPiAgc3RhdGljIGVudW0gZHJtX21vZGVfc3RhdHVzDQo+IC1pbnRlbF9oZG1pX21vZGVf
Y2xvY2tfdmFsaWQoc3RydWN0IGludGVsX2hkbWkgKmhkbWksIGludCBjbG9jaywgYm9vbCBoYXNf
aGRtaV9zaW5rKQ0KPiAraW50ZWxfaGRtaV9tb2RlX2Nsb2NrX3ZhbGlkKHN0cnVjdCBkcm1fY29u
bmVjdG9yICpjb25uZWN0b3IsIGludCBjbG9jaywNCj4gKwkJCSAgICBib29sIGhhc19oZG1pX3Np
bmssIGJvb2wgeWNiY3I0MjBfb3V0cHV0KQ0KPiAgew0KPiAtCXN0cnVjdCBkcm1fZGV2aWNlICpk
ZXYgPSBpbnRlbF9oZG1pX3RvX2RldihoZG1pKTsNCj4gLQlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0
ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGRldik7DQo+ICsJc3RydWN0IGludGVsX2hkbWkgKmhkbWkg
PSBpbnRlbF9hdHRhY2hlZF9oZG1pKHRvX2ludGVsX2Nvbm5lY3Rvcihjb25uZWN0b3IpKTsNCj4g
IAllbnVtIGRybV9tb2RlX3N0YXR1cyBzdGF0dXM7DQo+ICANCj4gIAkvKiBjaGVjayBpZiB3ZSBj
YW4gZG8gOGJwYyAqLw0KPiBAQCAtMTkxMywxMiArMTkxMywxNCBAQCBpbnRlbF9oZG1pX21vZGVf
Y2xvY2tfdmFsaWQoc3RydWN0IGludGVsX2hkbWkgKmhkbWksIGludCBjbG9jaywgYm9vbCBoYXNf
aGRtaV9zaQ0KPiAgDQo+ICAJaWYgKGhhc19oZG1pX3NpbmspIHsNCj4gIAkJLyogaWYgd2UgY2Fu
J3QgZG8gOGJwYyB3ZSBtYXkgc3RpbGwgYmUgYWJsZSB0byBkbyAxMmJwYyAqLw0KPiAtCQlpZiAo
c3RhdHVzICE9IE1PREVfT0sgJiYgIUhBU19HTUNIKGRldl9wcml2KSkNCj4gKwkJaWYgKHN0YXR1
cyAhPSBNT0RFX09LICYmDQo+ICsJCSAgICBpbnRlbF9oZG1pX2JwY19wb3NzaWJsZShjb25uZWN0
b3IsIDEyLCBoYXNfaGRtaV9zaW5rLCB5Y2JjcjQyMF9vdXRwdXQpKQ0KPiAgCQkJc3RhdHVzID0g
aGRtaV9wb3J0X2Nsb2NrX3ZhbGlkKGhkbWksIGludGVsX2hkbWlfcG9ydF9jbG9jayhjbG9jaywg
MTIpLA0KPiAgCQkJCQkJICAgICAgIHRydWUsIGhhc19oZG1pX3NpbmspOw0KPiAgDQo+ICAJCS8q
IGlmIHdlIGNhbid0IGRvIDgsMTJicGMgd2UgbWF5IHN0aWxsIGJlIGFibGUgdG8gZG8gMTBicGMg
Ki8NCj4gLQkJaWYgKHN0YXR1cyAhPSBNT0RFX09LICYmIERJU1BMQVlfVkVSKGRldl9wcml2KSA+
PSAxMSkNCj4gKwkJaWYgKHN0YXR1cyAhPSBNT0RFX09LICYmDQo+ICsJCSAgICBpbnRlbF9oZG1p
X2JwY19wb3NzaWJsZShjb25uZWN0b3IsIDEwLCBoYXNfaGRtaV9zaW5rLCB5Y2JjcjQyMF9vdXRw
dXQpKQ0KPiAgCQkJc3RhdHVzID0gaGRtaV9wb3J0X2Nsb2NrX3ZhbGlkKGhkbWksIGludGVsX2hk
bWlfcG9ydF9jbG9jayhjbG9jaywgMTApLA0KPiAgCQkJCQkJICAgICAgIHRydWUsIGhhc19oZG1p
X3NpbmspOw0KPiAgCX0NCj4gQEAgLTE5NTgsNyArMTk2MCw3IEBAIGludGVsX2hkbWlfbW9kZV92
YWxpZChzdHJ1Y3QgZHJtX2Nvbm5lY3RvciAqY29ubmVjdG9yLA0KPiAgCWlmICh5Y2Jjcl80MjBf
b25seSkNCj4gIAkJY2xvY2sgLz0gMjsNCj4gIA0KPiAtCXN0YXR1cyA9IGludGVsX2hkbWlfbW9k
ZV9jbG9ja192YWxpZChoZG1pLCBjbG9jaywgaGFzX2hkbWlfc2luayk7DQo+ICsJc3RhdHVzID0g
aW50ZWxfaGRtaV9tb2RlX2Nsb2NrX3ZhbGlkKGNvbm5lY3RvciwgY2xvY2ssIGhhc19oZG1pX3Np
bmssIHljYmNyXzQyMF9vbmx5KTsNCj4gIAlpZiAoc3RhdHVzICE9IE1PREVfT0spIHsNCj4gIAkJ
aWYgKHljYmNyXzQyMF9vbmx5IHx8DQo+ICAJCSAgICAhY29ubmVjdG9yLT55Y2Jjcl80MjBfYWxs
b3dlZCB8fA0KPiBAQCAtMTk2Niw3ICsxOTY4LDcgQEAgaW50ZWxfaGRtaV9tb2RlX3ZhbGlkKHN0
cnVjdCBkcm1fY29ubmVjdG9yICpjb25uZWN0b3IsDQo+ICAJCQlyZXR1cm4gc3RhdHVzOw0KPiAg
DQo+ICAJCWNsb2NrIC89IDI7DQo+IC0JCXN0YXR1cyA9IGludGVsX2hkbWlfbW9kZV9jbG9ja192
YWxpZChoZG1pLCBjbG9jaywgaGFzX2hkbWlfc2luayk7DQo+ICsJCXN0YXR1cyA9IGludGVsX2hk
bWlfbW9kZV9jbG9ja192YWxpZChjb25uZWN0b3IsIGNsb2NrLCBoYXNfaGRtaV9zaW5rLCB0cnVl
KTsNCj4gIAkJaWYgKHN0YXR1cyAhPSBNT0RFX09LKQ0KPiAgCQkJcmV0dXJuIHN0YXR1czsNCj4g
IAl9DQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
