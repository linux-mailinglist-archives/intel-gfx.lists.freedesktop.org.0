Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 79AF94EE864
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Apr 2022 08:38:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6304710FAEB;
	Fri,  1 Apr 2022 06:38:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 570D810FAEA
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Apr 2022 06:38:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648795088; x=1680331088;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=Anqp46QrJ7WXC8J/MtJzbZedl3M4cJpWKN8ryq9LaHM=;
 b=OxhUwpVNkozW0Eeqc/550/W0DWgVyRt0SzEH9zT7peHadeiKwJYDTjqY
 KSsorFk+kqXX6jydZf6vjNPuktNEOk7Vp+57rf4f2IfLsWj27IFNTbqiV
 6l/YxMPCvjZCqovf0ZI3VTqTJxQVeKN1tqVlUjVUMpoiSk6/LoQ6qGK2O
 /uqYVmhC7BiF1N+k3VOhQ/1QonUd2h9ravS55JdYK7kpRpxLGDfyxMszd
 Z7cISq7iznlDrFXp9ou3fsvadRrWorCd8v5z+ibDQ8JQnMuphLCs8m211
 gBvflPvmVgmjuraHV5tiihMk0PwhuW6TJESp2bd8kVJmInREzINWfnMTH w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10303"; a="260234228"
X-IronPort-AV: E=Sophos;i="5.90,226,1643702400"; d="scan'208";a="260234228"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2022 23:38:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,226,1643702400"; d="scan'208";a="547674286"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga007.jf.intel.com with ESMTP; 31 Mar 2022 23:38:07 -0700
Received: from bgsmsx601.gar.corp.intel.com (10.109.78.80) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Thu, 31 Mar 2022 23:38:06 -0700
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 BGSMSX601.gar.corp.intel.com (10.109.78.80) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Fri, 1 Apr 2022 12:08:04 +0530
Received: from bgsmsx604.gar.corp.intel.com ([10.67.234.6]) by
 BGSMSX604.gar.corp.intel.com ([10.67.234.6]) with mapi id 15.01.2308.027;
 Fri, 1 Apr 2022 12:08:04 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v2 08/12] drm/i915/dp: Rework HDMI DFP TMDS
 clock handling
Thread-Index: AQHYPeSPiWXh8k1dBkaLgS8+iZN+aazaqhdw
Date: Fri, 1 Apr 2022 06:38:04 +0000
Message-ID: <60e86754aa5c4fd49447a76be2903fe0@intel.com>
References: <20220322120015.28074-1-ville.syrjala@linux.intel.com>
 <20220322120015.28074-9-ville.syrjala@linux.intel.com>
In-Reply-To: <20220322120015.28074-9-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.401.20
x-originating-ip: [10.223.10.1]
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2 08/12] drm/i915/dp: Rework HDMI DFP TMDS
 clock handling
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
eXJqYWxhDQo+IFNlbnQ6IFR1ZXNkYXksIE1hcmNoIDIyLCAyMDIyIDU6MzAgUE0NCj4gVG86IGlu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gU3ViamVjdDogW0ludGVsLWdmeF0gW1BB
VENIIHYyIDA4LzEyXSBkcm0vaTkxNS9kcDogUmV3b3JrIEhETUkgREZQIFRNRFMgY2xvY2sNCj4g
aGFuZGxpbmcNCj4gDQo+IEZyb206IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51
eC5pbnRlbC5jb20+DQo+IA0KPiBSZXdvcmsgdGhlIEhETUkgREZQIFRNRFMgY2xvY2sgY2hlY2tz
IHRvIGFsc28gY2hlY2sgYXQgOGJwYy4NCj4gUHJldmlvdXNseSB3ZSBvbmx5IGNoZWNrZWQgdGhl
IGRlZXAgY29sb3IgY2FzZXMuIEJ1dCBJIHN1cHBvc2UgYSBzaW5rIGNvdWxkDQo+IHBvdGVudGlh
bGx5IGRlY2xhcmUgIjQ6MjowIGFsc28iIG1vZGVzIHRoYXQgb25seSBhY3R1YWxseSBmaXQgd2l0
aGluIGl0cyBvd24gbGltaXRzDQo+IHdoZW4gdXNpbmcgNDoyOjAuIEV2ZW4gaWYgdGhhdCBpcyB0
b28gbnV0cyB0byBiZSByZWFsIHRoZXJlIGlzIG5vIHJlYWwgaGFybSBpbiBydW5uaW5nDQo+IHRo
cm91Z2ggdGhlIGZ1bGwgY2hlY2tzIGZvciBldmVyeXRoaW5nLg0KDQpZZWFoIHRoaXMgc2hvdWxk
IGJlIG9rLiBDaGFuZ2VzIGxvb2sgR29vZCB0byBtZS4NClJldmlld2VkLWJ5OiBVbWEgU2hhbmth
ciA8dW1hLnNoYW5rYXJAaW50ZWwuY29tPg0KDQo+IFNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrD
pGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jIHwgMzUgKysrKysrKysrKysrKysrKysrLS0t
LS0tLQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDI1IGluc2VydGlvbnMoKyksIDEwIGRlbGV0aW9ucygt
KQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZHAuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYw0KPiBpbmRl
eCBhNzg1MjJkYzliM2MuLjQzNmQwYjBmMGI3NiAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZHAuYw0KPiBAQCAtMTE2MywxNiArMTE2MywyOCBAQCBzdGF0aWMgYm9v
bCBpbnRlbF9kcF9pc195Y2JjcjQyMChzdHJ1Y3QgaW50ZWxfZHANCj4gKmludGVsX2RwLA0KPiAg
CQkgaW50ZWxfZHAtPmRmcC55Y2Jjcl80NDRfdG9fNDIwKTsNCj4gIH0NCj4gDQo+IC1zdGF0aWMg
Ym9vbCBpbnRlbF9kcF9oZG1pX2JwY19wb3NzaWJsZShzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2Rw
LA0KPiAtCQkJCSAgICAgICBjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0
ZSwNCj4gLQkJCQkgICAgICAgaW50IGJwYykNCj4gK3N0YXRpYyBpbnQgaW50ZWxfZHBfaGRtaV9j
b21wdXRlX2JwYyhzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLA0KPiArCQkJCSAgICAgY29uc3Qg
c3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUsDQo+ICsJCQkJICAgICBpbnQgYnBj
KQ0KPiAgew0KPiAgCWJvb2wgeWNiY3I0MjBfb3V0cHV0ID0gaW50ZWxfZHBfaXNfeWNiY3I0MjAo
aW50ZWxfZHAsIGNydGNfc3RhdGUpOw0KPiAgCWludCBjbG9jayA9IGNydGNfc3RhdGUtPmh3LmFk
anVzdGVkX21vZGUuY3J0Y19jbG9jazsNCj4gDQo+IC0JcmV0dXJuIGludGVsX2hkbWlfYnBjX3Bv
c3NpYmxlKGNydGNfc3RhdGUsIGJwYywNCj4gLQkJCQkgICAgICAgaW50ZWxfZHAtPmhhc19oZG1p
X3NpbmssIHljYmNyNDIwX291dHB1dCkgJiYNCj4gLQkJaW50ZWxfZHBfdG1kc19jbG9ja192YWxp
ZChpbnRlbF9kcCwgY2xvY2ssIGJwYywgeWNiY3I0MjBfb3V0cHV0KQ0KPiA9PSBNT0RFX09LOw0K
PiArCS8qDQo+ICsJICogQ3VycmVudCBicGMgY291bGQgYWxyZWFkeSBiZSBiZWxvdyA4YnBjIGR1
ZSB0bw0KPiArCSAqIEZESSBiYW5kd2lkdGggY29uc3RyYWludHMgb3Igb3RoZXIgbGltaXRzLg0K
PiArCSAqIEhETUkgbWluaW11bSBpcyA4YnBjIGhvd2V2ZXIuDQo+ICsJICovDQo+ICsJYnBjID0g
bWF4KGJwYywgOCk7DQo+ICsNCj4gKwlmb3IgKDsgYnBjID49IDg7IGJwYyAtPSAyKSB7DQo+ICsJ
CWlmIChpbnRlbF9oZG1pX2JwY19wb3NzaWJsZShjcnRjX3N0YXRlLCBicGMsDQo+ICsJCQkJCSAg
ICBpbnRlbF9kcC0+aGFzX2hkbWlfc2luaywNCj4geWNiY3I0MjBfb3V0cHV0KSAmJg0KPiArCQkg
ICAgaW50ZWxfZHBfdG1kc19jbG9ja192YWxpZChpbnRlbF9kcCwgY2xvY2ssIGJwYywgeWNiY3I0
MjBfb3V0cHV0KQ0KPiA9PSBNT0RFX09LKQ0KPiArCQkJcmV0dXJuIGJwYzsNCj4gKwl9DQo+ICsN
Cj4gKwlyZXR1cm4gLUVJTlZBTDsNCj4gIH0NCj4gDQo+ICBzdGF0aWMgaW50IGludGVsX2RwX21h
eF9icHAoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwgQEAgLTExODgsMTAgKzEyMDAsMTMgQEAN
Cj4gc3RhdGljIGludCBpbnRlbF9kcF9tYXhfYnBwKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAs
DQo+ICAJCWJwYyA9IG1pbl90KGludCwgYnBjLCBpbnRlbF9kcC0+ZGZwLm1heF9icGMpOw0KPiAN
Cj4gIAlpZiAoaW50ZWxfZHAtPmRmcC5taW5fdG1kc19jbG9jaykgew0KPiAtCQlmb3IgKDsgYnBj
ID49IDEwOyBicGMgLT0gMikgew0KPiAtCQkJaWYgKGludGVsX2RwX2hkbWlfYnBjX3Bvc3NpYmxl
KGludGVsX2RwLCBjcnRjX3N0YXRlLCBicGMpKQ0KPiAtCQkJCWJyZWFrOw0KPiAtCQl9DQo+ICsJ
CWludCBtYXhfaGRtaV9icGM7DQo+ICsNCj4gKwkJbWF4X2hkbWlfYnBjID0gaW50ZWxfZHBfaGRt
aV9jb21wdXRlX2JwYyhpbnRlbF9kcCwgY3J0Y19zdGF0ZSwNCj4gYnBjKTsNCj4gKwkJaWYgKG1h
eF9oZG1pX2JwYyA8IDApDQo+ICsJCQlyZXR1cm4gMDsNCj4gKw0KPiArCQlicGMgPSBtaW4oYnBj
LCBtYXhfaGRtaV9icGMpOw0KPiAgCX0NCj4gDQo+ICAJYnBwID0gYnBjICogMzsNCj4gLS0NCj4g
Mi4zNC4xDQoNCg==
