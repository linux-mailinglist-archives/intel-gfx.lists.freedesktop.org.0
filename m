Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E65926E5F3
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Sep 2020 21:58:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7AA796EC7F;
	Thu, 17 Sep 2020 19:58:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 716A16EC7F
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Sep 2020 19:58:41 +0000 (UTC)
IronPort-SDR: HtQXizT/P+m3i4GQTEzY7A2zE5HzKGJpsNSm4q+NJOpnCKQM7fZX6B1a8TnvFnpVYEPV4gRiE0
 BP85Nj12VYvQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9747"; a="159840188"
X-IronPort-AV: E=Sophos;i="5.77,271,1596524400"; d="scan'208";a="159840188"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2020 12:58:39 -0700
IronPort-SDR: bjYzlJErYHpM0ISpVASdO/b9tJnpsxgRqVbAzRv/DHUZkbva8EBCB7U7HOipjxSDQh14lg6MwR
 dEM02cUGffrQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,271,1596524400"; d="scan'208";a="336540388"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga008.jf.intel.com with ESMTP; 17 Sep 2020 12:58:39 -0700
Received: from bgsmsx603.gar.corp.intel.com (10.109.78.82) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 17 Sep 2020 12:58:38 -0700
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 BGSMSX603.gar.corp.intel.com (10.109.78.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 18 Sep 2020 01:28:36 +0530
Received: from bgsmsx604.gar.corp.intel.com ([10.67.234.6]) by
 BGSMSX604.gar.corp.intel.com ([10.67.234.6]) with mapi id 15.01.1713.004;
 Fri, 18 Sep 2020 01:28:36 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 08/20] drm/i915: Add glk+ degamma readout
Thread-Index: AQHWXH88ZWHE2nxnnkm2QGXv2B4Ys6ltoHhw
Date: Thu, 17 Sep 2020 19:58:36 +0000
Message-ID: <5feabf37656f4504b144bce1d3cbcd3c@intel.com>
References: <20200717211345.26851-1-ville.syrjala@linux.intel.com>
 <20200717211345.26851-9-ville.syrjala@linux.intel.com>
In-Reply-To: <20200717211345.26851-9-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
x-originating-ip: [10.223.10.1]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 08/20] drm/i915: Add glk+ degamma readout
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
W1BBVENIIDA4LzIwXSBkcm0vaTkxNTogQWRkIGdsaysgZGVnYW1tYSByZWFkb3V0DQo+IA0KPiBG
cm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiAN
Cj4gUmVhZCBvdXQgdGhlIGRlZ2FtbWEgTFVUIG9uIGdsaysuIE5vIHN0YXRlIGNoZWtlciBhcyBv
ZiB5ZXQgc2luY2UgaXQgcmVxdWlyZXMNCj4gZGVhbGluZyB3aXRoIGhlIGdsayBjc2MgdnMuIGRl
Z2FtbWEgbWVzcy4NCg0Kcy9oZS90aGUNCldpdGggdGhpcywNClJldmlld2VkLWJ5OiBVbWEgU2hh
bmthciA8dW1hLnNoYW5rYXJAaW50ZWwuY29tPg0KDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBWaWxs
ZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiAtLS0NCj4gIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY29sb3IuYyB8IDQ0ICsrKysrKysrKysr
KysrKysrKysrKysNCj4gIDEgZmlsZSBjaGFuZ2VkLCA0NCBpbnNlcnRpb25zKCspDQo+IA0KPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jb2xvci5jDQo+
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jb2xvci5jDQo+IGluZGV4IDI2
MGJiYmQ1YmJmMi4uNDM3Y2M1NjkyNWFiIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2NvbG9yLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9jb2xvci5jDQo+IEBAIC0xOTU1LDEwICsxOTU1LDUxIEBAIHN0YXRpYyBz
dHJ1Y3QgZHJtX3Byb3BlcnR5X2Jsb2INCj4gKmJkd19yZWFkX2x1dF8xMChzdHJ1Y3QgaW50ZWxf
Y3J0YyAqY3J0YywNCj4gIAlyZXR1cm4gYmxvYjsNCj4gIH0NCj4gDQo+ICtzdGF0aWMgc3RydWN0
IGRybV9wcm9wZXJ0eV9ibG9iICpnbGtfcmVhZF9kZWdhbW1hX2x1dChzdHJ1Y3QgaW50ZWxfY3J0
Yw0KPiArKmNydGMpIHsNCj4gKwlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0
b19pOTE1KGNydGMtPmJhc2UuZGV2KTsNCj4gKwlpbnQgaSwgbHV0X3NpemUgPSBJTlRFTF9JTkZP
KGRldl9wcml2KS0+Y29sb3IuZGVnYW1tYV9sdXRfc2l6ZTsNCj4gKwllbnVtIHBpcGUgcGlwZSA9
IGNydGMtPnBpcGU7DQo+ICsJc3RydWN0IGRybV9wcm9wZXJ0eV9ibG9iICpibG9iOw0KPiArCXN0
cnVjdCBkcm1fY29sb3JfbHV0ICpsdXQ7DQo+ICsNCj4gKwlibG9iID0gZHJtX3Byb3BlcnR5X2Ny
ZWF0ZV9ibG9iKCZkZXZfcHJpdi0+ZHJtLA0KPiArCQkJCQlzaXplb2Yoc3RydWN0IGRybV9jb2xv
cl9sdXQpICogbHV0X3NpemUsDQo+ICsJCQkJCU5VTEwpOw0KPiArCWlmIChJU19FUlIoYmxvYikp
DQo+ICsJCXJldHVybiBOVUxMOw0KPiArDQo+ICsJbHV0ID0gYmxvYi0+ZGF0YTsNCj4gKw0KPiAr
CS8qDQo+ICsJICogV2hlbiBzZXR0aW5nIHRoZSBhdXRvLWluY3JlbWVudCBiaXQsIHRoZSBoYXJk
d2FyZSBzZWVtcyB0bw0KPiArCSAqIGlnbm9yZSB0aGUgaW5kZXggYml0cywgc28gd2UgbmVlZCB0
byByZXNldCBpdCB0byBpbmRleCAwDQo+ICsJICogc2VwYXJhdGVseS4NCj4gKwkgKi8NCj4gKwlp
bnRlbF9kZV93cml0ZShkZXZfcHJpdiwgUFJFX0NTQ19HQU1DX0lOREVYKHBpcGUpLCAwKTsNCj4g
KwlpbnRlbF9kZV93cml0ZShkZXZfcHJpdiwgUFJFX0NTQ19HQU1DX0lOREVYKHBpcGUpLA0KPiAr
CQkgICAgICAgUFJFX0NTQ19HQU1DX0FVVE9fSU5DUkVNRU5UKTsNCj4gKw0KPiArCWZvciAoaSA9
IDA7IGkgPCBsdXRfc2l6ZTsgaSsrKSB7DQo+ICsJCXUzMiB2YWwgPSBpbnRlbF9kZV9yZWFkKGRl
dl9wcml2LCBQUkVfQ1NDX0dBTUNfREFUQShwaXBlKSk7DQo+ICsNCj4gKwkJbHV0W2ldLnJlZCA9
IHZhbDsNCj4gKwkJbHV0W2ldLmdyZWVuID0gdmFsOw0KPiArCQlsdXRbaV0uYmx1ZSA9IHZhbDsN
Cj4gKwl9DQo+ICsNCj4gKwlpbnRlbF9kZV93cml0ZShkZXZfcHJpdiwgUFJFX0NTQ19HQU1DX0lO
REVYKHBpcGUpLCAwKTsNCj4gKw0KPiArCXJldHVybiBibG9iOw0KPiArfQ0KPiArDQo+ICBzdGF0
aWMgdm9pZCBnbGtfcmVhZF9sdXRzKHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRl
KSAgew0KPiAgCXN0cnVjdCBpbnRlbF9jcnRjICpjcnRjID0gdG9faW50ZWxfY3J0YyhjcnRjX3N0
YXRlLT51YXBpLmNydGMpOw0KPiANCj4gKwlpZiAoY3J0Y19zdGF0ZS0+Y3NjX2VuYWJsZSkNCj4g
KwkJY3J0Y19zdGF0ZS0+aHcuZGVnYW1tYV9sdXQgPSBnbGtfcmVhZF9kZWdhbW1hX2x1dChjcnRj
KTsNCj4gKw0KPiAgCWlmICghY3J0Y19zdGF0ZS0+Z2FtbWFfZW5hYmxlKQ0KPiAgCQlyZXR1cm47
DQo+IA0KPiBAQCAtMjAxMCw2ICsyMDUxLDkgQEAgc3RhdGljIHZvaWQgaWNsX3JlYWRfbHV0cyhz
dHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZQ0KPiAqY3J0Y19zdGF0ZSkgIHsNCj4gIAlzdHJ1Y3QgaW50
ZWxfY3J0YyAqY3J0YyA9IHRvX2ludGVsX2NydGMoY3J0Y19zdGF0ZS0+dWFwaS5jcnRjKTsNCj4g
DQo+ICsJaWYgKGNydGNfc3RhdGUtPmdhbW1hX21vZGUgJiBQUkVfQ1NDX0dBTU1BX0VOQUJMRSkN
Cj4gKwkJY3J0Y19zdGF0ZS0+aHcuZGVnYW1tYV9sdXQgPSBnbGtfcmVhZF9kZWdhbW1hX2x1dChj
cnRjKTsNCj4gKw0KPiAgCWlmICgoY3J0Y19zdGF0ZS0+Z2FtbWFfbW9kZSAmIFBPU1RfQ1NDX0dB
TU1BX0VOQUJMRSkgPT0gMCkNCj4gIAkJcmV0dXJuOw0KPiANCj4gLS0NCj4gMi4yNi4yDQo+IA0K
PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KPiBJbnRl
bC1nZnggbWFpbGluZyBsaXN0DQo+IEludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4g
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngN
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
