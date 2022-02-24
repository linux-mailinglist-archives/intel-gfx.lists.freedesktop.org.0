Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 321094C33FC
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Feb 2022 18:48:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D9B2B10E9FD;
	Thu, 24 Feb 2022 17:48:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1948610EA75
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Feb 2022 17:48:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645724895; x=1677260895;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=4lArHo9xQeXvbMdxyuEDf4ldgAZdR2e7wH0swYf/yvU=;
 b=Qo7JsLX4Ju3+P/O8zSA0CEOsZQzPqYOILl/l6jZaEM6A8nEWQZKuBM3B
 pG+2gTUU0UK/Ejba3IOmvD3ToIOaiBZhvJtejeY++O0aXccjZJ8J2wwpF
 JaFe6et1C2bmexrUDAUlB4kFF1czL9QtJyFYucHmL3UmvkSI3dYjHJ7KH
 MEZpvTjBeTgkUmULQrBQDFeFL8xCYJQ11RiKzSAN0kUAgppEYxNqNk4Uu
 WEPbf3Q6LskIFTLg6OWYPuwCBsk6WnfYpn262a7+Y2MdA/vtcrm/I6oM1
 oQ9driVvo8sILxAY1BDhYTD1jae5vwLmxc2JvNBPzL8xaiSw6PFn3HYe2 w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10268"; a="315523493"
X-IronPort-AV: E=Sophos;i="5.90,134,1643702400"; d="scan'208";a="315523493"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2022 09:48:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,134,1643702400"; d="scan'208";a="777134715"
Received: from irsmsx601.ger.corp.intel.com ([163.33.146.7])
 by fmsmga006.fm.intel.com with ESMTP; 24 Feb 2022 09:48:13 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 irsmsx601.ger.corp.intel.com (163.33.146.7) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Thu, 24 Feb 2022 17:48:11 +0000
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2308.020;
 Thu, 24 Feb 2022 09:48:10 -0800
From: "Souza, Jose" <jose.souza@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Thread-Topic: [PATCH v2] drm/i915/display: Use unions per platform in
 intel_dpll_hw_state
Thread-Index: AQHYKPdwZTA6M71vkUCDakEBJ5pa1KyjBFeAgAAyPwCAAAF3AIAAB30AgAAeDQCAACSYAA==
Date: Thu, 24 Feb 2022 17:48:10 +0000
Message-ID: <9d5049fe87faf41fba7649335cecbd64fba0c77a.camel@intel.com>
References: <20220223205551.813749-1-jose.souza@intel.com>
 <Yhdb0UMM8gskEDmt@intel.com>
 <bcd7d64a3c2fcecd78efbfc4a711721fa9e32e16.camel@intel.com>
 <YheHMunjbW0z4tg2@intel.com>
 <d91dc9dc9f015a279dddfe45f88bd1ec0cbec013.camel@intel.com>
 <YhemsCLTJNyc+KLe@intel.com>
In-Reply-To: <YhemsCLTJNyc+KLe@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-Type: text/plain; charset="utf-8"
Content-ID: <B009A42E010B0A42BA682AC1F6E517B2@intel.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/display: Use unions per
 platform in intel_dpll_hw_state
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCAyMDIyLTAyLTI0IGF0IDE3OjM5ICswMjAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
DQo+IE9uIFRodSwgRmViIDI0LCAyMDIyIGF0IDAxOjQ5OjM2UE0gKzAwMDAsIFNvdXphLCBKb3Nl
IHdyb3RlOg0KPiA+IE9uIFRodSwgMjAyMi0wMi0yNCBhdCAxNToyNSArMDIwMCwgVmlsbGUgU3ly
asOkbMOkIHdyb3RlOg0KPiA+ID4gT24gVGh1LCBGZWIgMjQsIDIwMjIgYXQgMDE6MTc6MzVQTSAr
MDAwMCwgU291emEsIEpvc2Ugd3JvdGU6DQo+ID4gPiA+IE9uIFRodSwgMjAyMi0wMi0yNCBhdCAx
MjoyMCArMDIwMCwgVmlsbGUgU3lyasOkbMOkIHdyb3RlOg0KPiA+ID4gPiA+IE9uIFdlZCwgRmVi
IDIzLCAyMDIyIGF0IDEyOjU1OjUxUE0gLTA4MDAsIEpvc8OpIFJvYmVydG8gZGUgU291emEgd3Jv
dGU6DQo+ID4gPiA+ID4gPHNuaXA+DQo+ID4gPiA+ID4gPiArCXVuaW9uIHsNCj4gPiA+ID4gPiA+
ICsJCS8qIGljbCsgVEMgKi8NCj4gPiA+ID4gPiA+ICsJCXN0cnVjdCB7DQo+ID4gPiA+ID4gPiAr
CQkJdTMyIG1nX3JlZmNsa2luX2N0bDsNCj4gPiA+ID4gPiA+ICsJCQl1MzIgbWdfY2xrdG9wMl9j
b3JlY2xrY3RsMTsNCj4gPiA+ID4gPiA+ICsJCQl1MzIgbWdfY2xrdG9wMl9oc2Nsa2N0bDsNCj4g
PiA+ID4gPiA+ICsJCQl1MzIgbWdfcGxsX2RpdjA7DQo+ID4gPiA+ID4gPiArCQkJdTMyIG1nX3Bs
bF9kaXYxOw0KPiA+ID4gPiA+ID4gKwkJCXUzMiBtZ19wbGxfbGY7DQo+ID4gPiA+ID4gPiArCQkJ
dTMyIG1nX3BsbF9mcmFjX2xvY2s7DQo+ID4gPiA+ID4gPiArCQkJdTMyIG1nX3BsbF9zc2M7DQo+
ID4gPiA+ID4gPiArCQkJdTMyIG1nX3BsbF9iaWFzOw0KPiA+ID4gPiA+ID4gKwkJCXUzMiBtZ19w
bGxfdGRjX2NvbGRzdF9iaWFzOw0KPiA+ID4gPiA+ID4gKwkJCXUzMiBtZ19wbGxfYmlhc19tYXNr
Ow0KPiA+ID4gPiA+ID4gKwkJCXUzMiBtZ19wbGxfdGRjX2NvbGRzdF9iaWFzX21hc2s7DQo+ID4g
PiA+ID4gPiArCQl9Ow0KPiA+ID4gPiA+ID4gKw0KPiA+ID4gPiA+ID4gKwkJLyogYnh0ICovDQo+
ID4gPiA+ID4gPiArCQlzdHJ1Y3Qgew0KPiA+ID4gPiA+ID4gKwkJCS8qIGJ4dCAqLw0KPiA+ID4g
PiA+ID4gKwkJCXUzMiBlYmIwOw0KPiA+ID4gPiA+ID4gKwkJCXUzMiBlYmI0Ow0KPiA+ID4gPiA+
ID4gKwkJCXUzMiBwbGwwOw0KPiA+ID4gPiA+ID4gKwkJCXUzMiBwbGwxOw0KPiA+ID4gPiA+ID4g
KwkJCXUzMiBwbGwyOw0KPiA+ID4gPiA+ID4gKwkJCXUzMiBwbGwzOw0KPiA+ID4gPiA+ID4gKwkJ
CXUzMiBwbGw2Ow0KPiA+ID4gPiA+ID4gKwkJCXUzMiBwbGw4Ow0KPiA+ID4gPiA+ID4gKwkJCXUz
MiBwbGw5Ow0KPiA+ID4gPiA+ID4gKwkJCXUzMiBwbGwxMDsNCj4gPiA+ID4gPiA+ICsJCQl1MzIg
cGNzZHcxMjsNCj4gPiA+ID4gPiA+ICsJCX07DQo+ID4gPiA+ID4gDQo+ID4gPiA+ID4gV2Fzbid0
IHRoZXJlIHNvbWUgZnVubnkgY29tcGlsZXIgYnVnIGFyb3VuZCBhbm9ueW1vdXMgdW5pb25zPw0K
PiA+ID4gPiA+IGdpdCBsb2cgLS1ncmVwPSdhbm9uLip1bmlvbicgc2VlbXMgdG8gYWdyZWUuIFBs
ZWFzZSBkb3VibGUgY2hlY2sNCj4gPiA+ID4gPiB0aGF0IHN0dWZmIHRvIG1ha2Ugc3VyZSB0aGlz
IGlzIGFjdHVhbGx5IHNhZmUuDQo+ID4gPiA+IA0KPiA+ID4gPiBJIGRvbid0IHNlZSBhbnkgcGF0
Y2ggcmVmZXJyaW5nIHRvIGNvbXBpbGVyIGlzc3VlcyB3aXRoICdnaXQgbG9nIC0tZ3JlcD0nYW5v
bi4qdW5pb24nLCB3aGF0IEkgc2VlIGlzIG90aGVyIHN1YnN5c3RlbXMgbWFraW5nIHVzZSBvZiBp
dCB0b28uDQo+ID4gPiA+IENhbiB5b3Ugc2hhcmUgdGhlIGNvbW1pdCBoYXNoIHRoYXQgeW91IGFy
ZSByZWZlcnJpbmcgdG8/DQo+ID4gPiANCj4gPiA+ICQgZ2l0IGxvZyAtLWZvcm1hdD1vbmVsaW5l
IC0tZ3JlcD0nYW5vbi4qdW5pb24nIC0tIGRyaXZlcnMvZ3B1L2RybS9pOTE1DQo+ID4gPiANCj4g
PiANCj4gPiBJIHNlZSBpc3N1ZXMgd2l0aCBpbml0aWFsaXphdGlvbiBvZiBhbm9ueW1vdXMgdW5p
b24gYnV0IHdlIGRvbid0IGluaXRpYWxpemUgaW50ZWxfZHBsbF9od19zdGF0ZS4NCj4gPiBBbHNv
IGl0IHdhcyBmaXhlZCBvbiBHQ0MgNC42IHRoYXQgaXMgb2xkZXIgdGhhbiBjdXJyZW50IEdDQyBy
ZXF1aXJlbWVudCB0byBidWlsZCBrZXJuZWwoR0NDIDUuMSkuDQo+ID4gDQo+ID4gaHR0cHM6Ly9n
Y2MuZ251Lm9yZy9idWd6aWxsYS9zaG93X2J1Zy5jZ2k/aWQ9MTA2NzYNCj4gDQo+IE9LLiBIb3dl
dmVyLCBhZnRlciBwb25kZXJpbmcgdGhpcyBhIGJpdCBJIHRoaW5rIG5hbWluZyB0aGluZ3Mgd3Bp
bGQNCj4gcHJvYmFibHkgYmUgYmV0dGVyIGhlcmUuIFlvdSBoYXZlIGEgYnVuY2ggb2YgaWYgbGFk
ZGVycyBub3cgd2hlcmUgZWFjaA0KPiBicmFuY2ggb25seSBvcGVyYXRlcyBvbiBvbmUgb2YgdGhl
IHN0cnVjdHMgaW5zaWRlIHRoZSB1bmlvbi4gSU1PIHRoZQ0KPiBhbm9ueW1pdHkgaXMgbWFraW5n
IGl0IHJhdGhlciBoYXJkIHRvIHNlZSBpZiB0aGUgY29kZSBpcyBldmVuIGNvcnJlY3QuDQoNCkp1
c3QgdG8gbWFyZSBzdXJlIHdlIGFyZSBpbiB0aGUgc2FtZSBwYWdlLCB5b3Ugd2FudCB0byBoYXZl
IHRoaXM/DQoNCg0Kc3RydWN0IGljbF90YyB7DQoJdTMyIG1nX3JlZmNsa2luX2N0bDsNCgl1MzIg
bWdfY2xrdG9wMl9jb3JlY2xrY3RsMTsNCgl1MzIgbWdfY2xrdG9wMl9oc2Nsa2N0bDsNCgl1MzIg
bWdfcGxsX2RpdjA7DQoJdTMyIG1nX3BsbF9kaXYxOw0KCXUzMiBtZ19wbGxfbGY7DQoJdTMyIG1n
X3BsbF9mcmFjX2xvY2s7DQoJdTMyIG1nX3BsbF9zc2M7DQoJdTMyIG1nX3BsbF9iaWFzOw0KCXUz
MiBtZ19wbGxfdGRjX2NvbGRzdF9iaWFzOw0KCXUzMiBtZ19wbGxfYmlhc19tYXNrOw0KCXUzMiBt
Z19wbGxfdGRjX2NvbGRzdF9iaWFzX21hc2s7DQp9Ow0KDQpTbyB3ZSB3b3VsZCBuZWVkIHRvIGFj
Y2VzcyBtZW1iZXJzIHdpdGggaWNsX3RjLm1nX3JlZmNsa2luX2N0bD8NCg0KSSBjYW4gZG8gdGhh
dCBidXQgdGhlIGRpZmYgd2lsbCBiZSBodWdlLg0KQXJlIHlvdSBva2F5IHdpdGggdGhhdCB0b28g
SW1yZT8NCg0KDQo+IA0KDQo=
