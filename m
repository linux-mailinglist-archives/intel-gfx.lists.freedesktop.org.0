Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DE7B84C2D90
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Feb 2022 14:49:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4771910E11D;
	Thu, 24 Feb 2022 13:49:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7872E10E156
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Feb 2022 13:49:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645710580; x=1677246580;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=4SQmYfNC6GiWhVRQvFph9gwbQ4PZ7G7e3aIC+E2VRkU=;
 b=EEsrZ/Ynt4gwYuRGRbbFhngqWkpyp7GUyycG+yfcSnW3i6kw2+1xk6pX
 WfNBLpU5eDgpaCfj33feuY9UGKJ8jUTIP0oCbnYOVGLRlwvhM741QiMe9
 s1+r+2llYpE8Z+ubd46UNRkppppmwpRhH56AexVIwLSVKMQ0v0/gGf1hC
 P5RuUaXQ9IxCZpyZ++EQQEI4RbC0LkjVOX/K732AWXFvBRuA0FYvK8HOQ
 W9QrZyrhEMj53C0WXRcyecxxzLaNca2Y6+Pt2N0dk4Ij+UC0hGPHLfgEJ
 sIPQv9oWDpNfqUlMv+6yvyEv4/F2kGynGoh5P5FlYQKddT88mgrQVlNlh A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10267"; a="239631957"
X-IronPort-AV: E=Sophos;i="5.90,134,1643702400"; d="scan'208";a="239631957"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2022 05:49:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,134,1643702400"; d="scan'208";a="548753015"
Received: from irsmsx602.ger.corp.intel.com ([163.33.146.8])
 by orsmga008.jf.intel.com with ESMTP; 24 Feb 2022 05:49:39 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 irsmsx602.ger.corp.intel.com (163.33.146.8) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Thu, 24 Feb 2022 13:49:37 +0000
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2308.020;
 Thu, 24 Feb 2022 05:49:36 -0800
From: "Souza, Jose" <jose.souza@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Thread-Topic: [PATCH v2] drm/i915/display: Use unions per platform in
 intel_dpll_hw_state
Thread-Index: AQHYKPdwZTA6M71vkUCDakEBJ5pa1KyjBFeAgAAyPwCAAAF3AIAAB30A
Date: Thu, 24 Feb 2022 13:49:36 +0000
Message-ID: <d91dc9dc9f015a279dddfe45f88bd1ec0cbec013.camel@intel.com>
References: <20220223205551.813749-1-jose.souza@intel.com>
 <Yhdb0UMM8gskEDmt@intel.com>
 <bcd7d64a3c2fcecd78efbfc4a711721fa9e32e16.camel@intel.com>
 <YheHMunjbW0z4tg2@intel.com>
In-Reply-To: <YheHMunjbW0z4tg2@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-Type: text/plain; charset="utf-8"
Content-ID: <0E7011D4D5651A4CBD3D0F0BA92B5B72@intel.com>
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

T24gVGh1LCAyMDIyLTAyLTI0IGF0IDE1OjI1ICswMjAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
DQo+IE9uIFRodSwgRmViIDI0LCAyMDIyIGF0IDAxOjE3OjM1UE0gKzAwMDAsIFNvdXphLCBKb3Nl
IHdyb3RlOg0KPiA+IE9uIFRodSwgMjAyMi0wMi0yNCBhdCAxMjoyMCArMDIwMCwgVmlsbGUgU3ly
asOkbMOkIHdyb3RlOg0KPiA+ID4gT24gV2VkLCBGZWIgMjMsIDIwMjIgYXQgMTI6NTU6NTFQTSAt
MDgwMCwgSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSB3cm90ZToNCj4gPiA+IDxzbmlwPg0KPiA+ID4g
PiArCXVuaW9uIHsNCj4gPiA+ID4gKwkJLyogaWNsKyBUQyAqLw0KPiA+ID4gPiArCQlzdHJ1Y3Qg
ew0KPiA+ID4gPiArCQkJdTMyIG1nX3JlZmNsa2luX2N0bDsNCj4gPiA+ID4gKwkJCXUzMiBtZ19j
bGt0b3AyX2NvcmVjbGtjdGwxOw0KPiA+ID4gPiArCQkJdTMyIG1nX2Nsa3RvcDJfaHNjbGtjdGw7
DQo+ID4gPiA+ICsJCQl1MzIgbWdfcGxsX2RpdjA7DQo+ID4gPiA+ICsJCQl1MzIgbWdfcGxsX2Rp
djE7DQo+ID4gPiA+ICsJCQl1MzIgbWdfcGxsX2xmOw0KPiA+ID4gPiArCQkJdTMyIG1nX3BsbF9m
cmFjX2xvY2s7DQo+ID4gPiA+ICsJCQl1MzIgbWdfcGxsX3NzYzsNCj4gPiA+ID4gKwkJCXUzMiBt
Z19wbGxfYmlhczsNCj4gPiA+ID4gKwkJCXUzMiBtZ19wbGxfdGRjX2NvbGRzdF9iaWFzOw0KPiA+
ID4gPiArCQkJdTMyIG1nX3BsbF9iaWFzX21hc2s7DQo+ID4gPiA+ICsJCQl1MzIgbWdfcGxsX3Rk
Y19jb2xkc3RfYmlhc19tYXNrOw0KPiA+ID4gPiArCQl9Ow0KPiA+ID4gPiArDQo+ID4gPiA+ICsJ
CS8qIGJ4dCAqLw0KPiA+ID4gPiArCQlzdHJ1Y3Qgew0KPiA+ID4gPiArCQkJLyogYnh0ICovDQo+
ID4gPiA+ICsJCQl1MzIgZWJiMDsNCj4gPiA+ID4gKwkJCXUzMiBlYmI0Ow0KPiA+ID4gPiArCQkJ
dTMyIHBsbDA7DQo+ID4gPiA+ICsJCQl1MzIgcGxsMTsNCj4gPiA+ID4gKwkJCXUzMiBwbGwyOw0K
PiA+ID4gPiArCQkJdTMyIHBsbDM7DQo+ID4gPiA+ICsJCQl1MzIgcGxsNjsNCj4gPiA+ID4gKwkJ
CXUzMiBwbGw4Ow0KPiA+ID4gPiArCQkJdTMyIHBsbDk7DQo+ID4gPiA+ICsJCQl1MzIgcGxsMTA7
DQo+ID4gPiA+ICsJCQl1MzIgcGNzZHcxMjsNCj4gPiA+ID4gKwkJfTsNCj4gPiA+IA0KPiA+ID4g
V2Fzbid0IHRoZXJlIHNvbWUgZnVubnkgY29tcGlsZXIgYnVnIGFyb3VuZCBhbm9ueW1vdXMgdW5p
b25zPw0KPiA+ID4gZ2l0IGxvZyAtLWdyZXA9J2Fub24uKnVuaW9uJyBzZWVtcyB0byBhZ3JlZS4g
UGxlYXNlIGRvdWJsZSBjaGVjaw0KPiA+ID4gdGhhdCBzdHVmZiB0byBtYWtlIHN1cmUgdGhpcyBp
cyBhY3R1YWxseSBzYWZlLg0KPiA+IA0KPiA+IEkgZG9uJ3Qgc2VlIGFueSBwYXRjaCByZWZlcnJp
bmcgdG8gY29tcGlsZXIgaXNzdWVzIHdpdGggJ2dpdCBsb2cgLS1ncmVwPSdhbm9uLip1bmlvbics
IHdoYXQgSSBzZWUgaXMgb3RoZXIgc3Vic3lzdGVtcyBtYWtpbmcgdXNlIG9mIGl0IHRvby4NCj4g
PiBDYW4geW91IHNoYXJlIHRoZSBjb21taXQgaGFzaCB0aGF0IHlvdSBhcmUgcmVmZXJyaW5nIHRv
Pw0KPiANCj4gJCBnaXQgbG9nIC0tZm9ybWF0PW9uZWxpbmUgLS1ncmVwPSdhbm9uLip1bmlvbicg
LS0gZHJpdmVycy9ncHUvZHJtL2k5MTUNCj4gDQoNCkkgc2VlIGlzc3VlcyB3aXRoIGluaXRpYWxp
emF0aW9uIG9mIGFub255bW91cyB1bmlvbiBidXQgd2UgZG9uJ3QgaW5pdGlhbGl6ZSBpbnRlbF9k
cGxsX2h3X3N0YXRlLg0KQWxzbyBpdCB3YXMgZml4ZWQgb24gR0NDIDQuNiB0aGF0IGlzIG9sZGVy
IHRoYW4gY3VycmVudCBHQ0MgcmVxdWlyZW1lbnQgdG8gYnVpbGQga2VybmVsKEdDQyA1LjEpLg0K
DQpodHRwczovL2djYy5nbnUub3JnL2J1Z3ppbGxhL3Nob3dfYnVnLmNnaT9pZD0xMDY3Ng0K
