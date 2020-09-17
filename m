Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AEC826E558
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Sep 2020 21:39:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 12BDC6E125;
	Thu, 17 Sep 2020 19:39:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6BE826E125
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Sep 2020 19:39:29 +0000 (UTC)
IronPort-SDR: oP77dgxdLesnhlqY8lNC/nQFeINGmDY0ODdcyCqqqLRGUwocb7Hvr7LLPvgeg6BhjfA2DbzPX7
 GkMieX/BPivw==
X-IronPort-AV: E=McAfee;i="6000,8403,9747"; a="160704822"
X-IronPort-AV: E=Sophos;i="5.77,271,1596524400"; d="scan'208";a="160704822"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2020 12:39:27 -0700
IronPort-SDR: rz8qo/i1VU99DgOPCdRqKbyhVUw87InjLlkcMYAAL+JI9pKyhXJEy29yMs/xMrjGZ2qTuppHIL
 LWr+Ip51GUXA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,271,1596524400"; d="scan'208";a="336534228"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by orsmga008.jf.intel.com with ESMTP; 17 Sep 2020 12:39:27 -0700
Received: from bgsmsx606.gar.corp.intel.com (10.67.234.8) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 17 Sep 2020 12:39:26 -0700
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 BGSMSX606.gar.corp.intel.com (10.67.234.8) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 18 Sep 2020 01:09:23 +0530
Received: from bgsmsx604.gar.corp.intel.com ([10.67.234.6]) by
 BGSMSX604.gar.corp.intel.com ([10.67.234.6]) with mapi id 15.01.1713.004;
 Fri, 18 Sep 2020 01:09:23 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 05/20] drm/i915: Reset glk degamma index
 after programming/readout
Thread-Index: AQHWXH86GXbqVqth80217CvRKBE+nKltmrOQ
Date: Thu, 17 Sep 2020 19:39:23 +0000
Message-ID: <e318e015a4d14e898f1935650ea94ff7@intel.com>
References: <20200717211345.26851-1-ville.syrjala@linux.intel.com>
 <20200717211345.26851-6-ville.syrjala@linux.intel.com>
In-Reply-To: <20200717211345.26851-6-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
x-originating-ip: [10.223.10.1]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 05/20] drm/i915: Reset glk degamma index
 after programming/readout
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtZ2Z4IDxpbnRl
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBWaWxsZQ0K
PiBTeXJqYWxhDQo+IFNlbnQ6IFNhdHVyZGF5LCBKdWx5IDE4LCAyMDIwIDI6NDQgQU0NCj4gVG86
IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gU3ViamVjdDogW0ludGVsLWdmeF0g
W1BBVENIIDA1LzIwXSBkcm0vaTkxNTogUmVzZXQgZ2xrIGRlZ2FtbWEgaW5kZXggYWZ0ZXINCj4g
cHJvZ3JhbW1pbmcvcmVhZG91dA0KPiANCj4gRnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5z
eXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gDQo+IEp1c3QgZm9yIHNvbWUgZXh0cmEgY29uc2lz
dGVuY3kgbGV0J3MgcmVzZXQgdGhlIGdsayBkZWdhbW1hIExVVCBpbmRleCBiYWNrIHRvIDANCj4g
YWZ0ZXIgd2UncmUgZG9uZyB0cmF3bGluZyB0aGUgTFVULg0KDQpXZSBkbyBzZXQgdGhpcyB0byAw
IGluIHRoZSBiZWdpbm5pbmcsIGJ1dCBJIHRoaW5rIGdvb2QgdG8gbGVhdmUgaW4gYSBjbGVhbiBz
dGF0ZS4NClJldmlld2VkLWJ5OiBVbWEgU2hhbmthciA8dW1hLnNoYW5rYXJAaW50ZWwuY29tPg0K
DQo+IFNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5p
bnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9j
b2xvci5jIHwgNiArKysrKy0NCj4gIDEgZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKyksIDEg
ZGVsZXRpb24oLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2NvbG9yLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2NvbG9yLmMNCj4gaW5kZXggNzdjMTAzYTg2YTMwLi4zN2E0ZmVkZTdiYzAgMTAwNjQ0DQo+IC0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY29sb3IuYw0KPiArKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NvbG9yLmMNCj4gQEAgLTgxOCwxMiAr
ODE4LDE0IEBAIHN0YXRpYyB2b2lkIGdsa19sb2FkX2RlZ2FtbWFfbHV0KGNvbnN0IHN0cnVjdA0K
PiBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQ0KPiAgCQkgKiBhcyBjb21wYXJlZCB0byBq
dXN0IDE2IHRvIGFjaGlldmUgdGhpcy4NCj4gIAkJICovDQo+ICAJCWludGVsX2RlX3dyaXRlKGRl
dl9wcml2LCBQUkVfQ1NDX0dBTUNfREFUQShwaXBlKSwNCj4gLQkJICAgICAgICAgICAgICAgbHV0
W2ldLmdyZWVuKTsNCj4gKwkJCSAgICAgICBsdXRbaV0uZ3JlZW4pOw0KPiAgCX0NCj4gDQo+ICAJ
LyogQ2xhbXAgdmFsdWVzID4gMS4wLiAqLw0KPiAgCXdoaWxlIChpKysgPCAzNSkNCj4gIAkJaW50
ZWxfZGVfd3JpdGUoZGV2X3ByaXYsIFBSRV9DU0NfR0FNQ19EQVRBKHBpcGUpLCAxIDw8IDE2KTsN
Cj4gKw0KPiArCWludGVsX2RlX3dyaXRlKGRldl9wcml2LCBQUkVfQ1NDX0dBTUNfSU5ERVgocGlw
ZSksIDApOw0KPiAgfQ0KPiANCj4gIHN0YXRpYyB2b2lkIGdsa19sb2FkX2RlZ2FtbWFfbHV0X2xp
bmVhcihjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZQ0KPiAqY3J0Y19zdGF0ZSkgQEAgLTg1
MSw2ICs4NTMsOCBAQCBzdGF0aWMgdm9pZA0KPiBnbGtfbG9hZF9kZWdhbW1hX2x1dF9saW5lYXIo
Y29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdA0KPiAgCS8qIENsYW1wIHZh
bHVlcyA+IDEuMC4gKi8NCj4gIAl3aGlsZSAoaSsrIDwgMzUpDQo+ICAJCWludGVsX2RlX3dyaXRl
KGRldl9wcml2LCBQUkVfQ1NDX0dBTUNfREFUQShwaXBlKSwgMSA8PCAxNik7DQo+ICsNCj4gKwlp
bnRlbF9kZV93cml0ZShkZXZfcHJpdiwgUFJFX0NTQ19HQU1DX0lOREVYKHBpcGUpLCAwKTsNCj4g
IH0NCj4gDQo+ICBzdGF0aWMgdm9pZCBnbGtfbG9hZF9sdXRzKGNvbnN0IHN0cnVjdCBpbnRlbF9j
cnRjX3N0YXRlICpjcnRjX3N0YXRlKQ0KPiAtLQ0KPiAyLjI2LjINCj4gDQo+IF9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQo+IEludGVsLWdmeCBtYWlsaW5n
IGxpc3QNCj4gSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA0KX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
