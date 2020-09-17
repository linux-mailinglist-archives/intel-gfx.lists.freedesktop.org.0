Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F71E26E6FE
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Sep 2020 22:59:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1DDD16E326;
	Thu, 17 Sep 2020 20:59:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E8D4D6E326
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Sep 2020 20:59:33 +0000 (UTC)
IronPort-SDR: p7DQRC6S2u5xMYdWVfsRmeeEEROhKmsFIc+Od1TvZLczwiwJQ+XEu1Yertdg9jUhqflj+aPCat
 +Vl4Yf7iLjBA==
X-IronPort-AV: E=McAfee;i="6000,8403,9747"; a="159099646"
X-IronPort-AV: E=Sophos;i="5.77,272,1596524400"; d="scan'208";a="159099646"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2020 13:59:33 -0700
IronPort-SDR: Vx975onCTEKDUF9bS3elzlCztg2SMHlFg/AIsg/aM1gW+Qc3figVkt9W0k+4dOxIryOnNzrTVl
 +VLUY6n29QXw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,272,1596524400"; d="scan'208";a="287722567"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga007.fm.intel.com with ESMTP; 17 Sep 2020 13:59:33 -0700
Received: from bgsmsx601.gar.corp.intel.com (10.109.78.80) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 17 Sep 2020 13:43:49 -0700
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 BGSMSX601.gar.corp.intel.com (10.109.78.80) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 18 Sep 2020 02:13:47 +0530
Received: from bgsmsx604.gar.corp.intel.com ([10.67.234.6]) by
 BGSMSX604.gar.corp.intel.com ([10.67.234.6]) with mapi id 15.01.1713.004;
 Fri, 18 Sep 2020 02:13:47 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 12/20] drm/i915: Polish bdw_read_lut_10() a
 bit
Thread-Index: AQHWXH9FVRfGj+fNTkCqXBXkmLxvBaltrVbg
Date: Thu, 17 Sep 2020 20:43:47 +0000
Message-ID: <61a2aa6a401246a7a9fb4521893b6d9d@intel.com>
References: <20200717211345.26851-1-ville.syrjala@linux.intel.com>
 <20200717211345.26851-13-ville.syrjala@linux.intel.com>
In-Reply-To: <20200717211345.26851-13-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
x-originating-ip: [10.223.10.1]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 12/20] drm/i915: Polish bdw_read_lut_10() a
 bit
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
W1BBVENIIDEyLzIwXSBkcm0vaTkxNTogUG9saXNoIGJkd19yZWFkX2x1dF8xMCgpIGEgYml0DQo+
IA0KPiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29t
Pg0KPiANCj4gU2luY2UgYmR3X3JlYWRfbHV0XzEwKCkgdXNlcyB0aGUgYXV0by1pbmNyZW1lbnQg
bW9kZSB3ZSBtdXN0IGhhdmUgYW4gZXF1YWwNCj4gbnVtYmVyIG9mIGVudHJpZXMgaW4gdGhlIHNv
ZnR3YXJlIExVVCBhbmQgdGhlIGhhcmR3YXJlIExVVC4gV0FSTiBpZiB0aGF0IGlzDQo+IG5vdCB0
aGUgY2FzZS4NCg0KUmV2aWV3ZWQtYnk6IFVtYSBTaGFua2FyIDx1bWEuc2hhbmthckBpbnRlbC5j
b20+DQoNCj4gU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxp
bnV4LmludGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2NvbG9yLmMgfCA3ICsrKysrLS0NCj4gIDEgZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMo
KyksIDIgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9jb2xvci5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9jb2xvci5jDQo+IGluZGV4IGYzNDI1NzkyMmU0ZC4uOWYwMWZiMzE2ZWZhIDEwMDY0
NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NvbG9yLmMNCj4g
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jb2xvci5jDQo+IEBAIC0y
MDA1LDEyICsyMDA1LDE1IEBAIHN0YXRpYyBzdHJ1Y3QgZHJtX3Byb3BlcnR5X2Jsb2INCj4gKmJk
d19yZWFkX2x1dF8xMChzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YywgIHsNCj4gIAlzdHJ1Y3QgZHJt
X2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGNydGMtPmJhc2UuZGV2KTsNCj4gIAlp
bnQgaSwgaHdfbHV0X3NpemUgPSBpdmJfbHV0XzEwX3NpemUocHJlY19pbmRleCk7DQo+ICsJaW50
IGx1dF9zaXplID0gSU5URUxfSU5GTyhkZXZfcHJpdiktPmNvbG9yLmdhbW1hX2x1dF9zaXplOw0K
PiAgCWVudW0gcGlwZSBwaXBlID0gY3J0Yy0+cGlwZTsNCj4gIAlzdHJ1Y3QgZHJtX3Byb3BlcnR5
X2Jsb2IgKmJsb2I7DQo+ICAJc3RydWN0IGRybV9jb2xvcl9sdXQgKmx1dDsNCj4gDQo+ICsJZHJt
X1dBUk5fT04oJmRldl9wcml2LT5kcm0sIGx1dF9zaXplICE9IGh3X2x1dF9zaXplKTsNCj4gKw0K
PiAgCWJsb2IgPSBkcm1fcHJvcGVydHlfY3JlYXRlX2Jsb2IoJmRldl9wcml2LT5kcm0sDQo+IC0J
CQkJCXNpemVvZihzdHJ1Y3QgZHJtX2NvbG9yX2x1dCkgKg0KPiBod19sdXRfc2l6ZSwNCj4gKwkJ
CQkJc2l6ZW9mKHN0cnVjdCBkcm1fY29sb3JfbHV0KSAqIGx1dF9zaXplLA0KPiAgCQkJCQlOVUxM
KTsNCj4gIAlpZiAoSVNfRVJSKGJsb2IpKQ0KPiAgCQlyZXR1cm4gTlVMTDsNCj4gQEAgLTIwMjAs
NyArMjAyMyw3IEBAIHN0YXRpYyBzdHJ1Y3QgZHJtX3Byb3BlcnR5X2Jsb2INCj4gKmJkd19yZWFk
X2x1dF8xMChzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YywNCj4gIAlpbnRlbF9kZV93cml0ZShkZXZf
cHJpdiwgUFJFQ19QQUxfSU5ERVgocGlwZSksDQo+ICAJCSAgICAgICBwcmVjX2luZGV4IHwgUEFM
X1BSRUNfQVVUT19JTkNSRU1FTlQpOw0KPiANCj4gLQlmb3IgKGkgPSAwOyBpIDwgaHdfbHV0X3Np
emU7IGkrKykgew0KPiArCWZvciAoaSA9IDA7IGkgPCBsdXRfc2l6ZTsgaSsrKSB7DQo+ICAJCXUz
MiB2YWwgPSBpbnRlbF9kZV9yZWFkKGRldl9wcml2LCBQUkVDX1BBTF9EQVRBKHBpcGUpKTsNCj4g
DQo+ICAJCWlsa19sdXRfMTBfcGFjaygmbHV0W2ldLCB2YWwpOw0KPiAtLQ0KPiAyLjI2LjINCj4g
DQo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQo+IElu
dGVsLWdmeCBtYWlsaW5nIGxpc3QNCj4gSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0K
PiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eA0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
