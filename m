Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 192454D6208
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Mar 2022 14:05:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 81D9D10E576;
	Fri, 11 Mar 2022 13:05:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A7C6510E576
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Mar 2022 13:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647003953; x=1678539953;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=KEoGiQnjCbAkNW7RQJy+SglZdimmzt4dZVHLhXx0ps4=;
 b=JnN18UNLPY0wFFYIPXdBBRm2WRs0EoFj+6pAEf8txJnJO8yLN3CYc8Ln
 h0BM1kE3sS20CLmvRA8p9SUuNJq7fmIH+RWA+MZDCHDZ/ZwU1Gk5e/6NC
 aBhgmxcklE1oFWkfv7bGVQVFZ0HOdScFhgo/XmPaa/ImhkpRifjWjV0Lh
 Hs1qtHtu1yTCy1XYTnr/lB7uUeYO1TTmFpGRQqKbb9pRxtK/6kxKtrsOS
 mQCczVvFQgGVEumA8lfZ2OZ1wQxtBZ9muIBPVnQqziLBQfOq9fl3+auy4
 kXFB2raJRhXPH5VLSgvCd9w1TohG+Dna26m9v0oZjukGjI7qF3WElfAmg Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10282"; a="255757136"
X-IronPort-AV: E=Sophos;i="5.90,173,1643702400"; d="scan'208";a="255757136"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2022 05:05:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,173,1643702400"; d="scan'208";a="579280386"
Received: from irsmsx604.ger.corp.intel.com ([163.33.146.137])
 by orsmga001.jf.intel.com with ESMTP; 11 Mar 2022 05:05:52 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 IRSMSX604.ger.corp.intel.com (163.33.146.137) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Fri, 11 Mar 2022 13:05:50 +0000
Received: from fmsmsx612.amr.corp.intel.com ([10.18.126.92]) by
 fmsmsx612.amr.corp.intel.com ([10.18.126.92]) with mapi id 15.01.2308.021;
 Fri, 11 Mar 2022 05:05:49 -0800
From: "Souza, Jose" <jose.souza@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Thread-Topic: [PATCH 1/2] drm/i915/display: Fix HPD short pulse handling for
 eDP
Thread-Index: AQHYNLoLHt2sAacUZ0Wp7Bf4mH9+aqy5ruCAgAD/h4A=
Date: Fri, 11 Mar 2022 13:05:49 +0000
Message-ID: <7d46f07565b6d25b1f71c16051273f76def2e838.camel@intel.com>
References: <20220310200518.247909-1-jose.souza@intel.com>
 <YipzEZQpfrjn/RN+@intel.com>
In-Reply-To: <YipzEZQpfrjn/RN+@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-Type: text/plain; charset="utf-8"
Content-ID: <B8116CCBABB38745A136F13702AE52D5@intel.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/display: Fix HPD short pulse
 handling for eDP
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCAyMDIyLTAzLTEwIGF0IDIzOjUyICswMjAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
DQo+IE9uIFRodSwgTWFyIDEwLCAyMDIyIGF0IDEyOjA1OjE3UE0gLTA4MDAsIEpvc8OpIFJvYmVy
dG8gZGUgU291emEgd3JvdGU6DQo+ID4gQ29tbWl0IDEzZWE2ZGIyY2YyNCAoImRybS9pOTE1L2Vk
cDogSWdub3JlIHNob3J0IHB1bHNlIHdoZW4gcGFuZWwNCj4gPiBwb3dlcmVkIG9mZiIpIGNvbXBs
ZXRlbHkgYnJva2Ugc2hvcnQgcHVsc2UgaGFuZGxpbmcgZm9yIGVEUCBhcyBpdCBpcw0KPiA+IHVz
dWFsbHkgZ2VuZXJhdGVkIGJ5IHNpbmsgd2hlbiBpdCBpcyBkaXNwbGF5aW5nIGltYWdlIGFuZCB0
aGVyZSBpcw0KPiA+IHNvbWUgZXJyb3Igb3Igc3RhdHVzIHRoYXQgc291cmNlIG5lZWRzIHRvIGhh
bmRsZS4NCj4gPiANCj4gPiBXaGVuIHBvd2VyIHBhbmVsIGlzIGVuYWJsZWQsIHRoaXMgc3RhdGUg
aXMgZW5vdWdoIHRvIHBvd2VyIGF1eA0KPiA+IHRyYW5zYWN0aW9ucyBhbmQgVkREIG92ZXJyaWRl
IGlzIGRpc2FibGVkLCBzbyBpbnRlbF9wcHNfaGF2ZV9wb3dlcigpDQo+ID4gaXMgYWx3YXlzIHJl
dHVybmluZyBmYWxzZSBjYXVzaW5nIHNob3J0IHB1bHNlcyB0byBiZSBpZ25vcmVkLg0KPiANCj4g
SSB0aGluayB0aGUgdGltZXMgdGhhdCB3ZSB1c2UgdGhlIHZkZCBvdmVycmlkZSBzaG91bGQgYmUN
Cj4gbGltaXRlZCB0bzoNCj4gLSBhdXggdHJhbnNmZXJzIHdoaWxlIHRoZSBkaXNwbGF5IG9mZg0K
PiAtIHBvdGVudGlhbGx5IHNob3J0IHBlcmlvZHMgb2YgdGltZSBkdXJpbmcgdGhlIG1vZGVzZXQg
c2VxdWVuY2UNCj4gDQo+IFNvIEkgZ3Vlc3Mgd2hhdCB5b3UncmUgc2F5aW5nIGhlcmUgaXMgdGhh
dCBkdXJpbmcgdGhvc2UgdGltZXMNCj4gc29tZSBwYW5lbCBpcyB0cmlnZ2VyaW5nIGFuIElSUV9I
UEQgd2hpY2gsIGlmIGlnbm9yZWQsIGNhdXNlcw0KPiBzb21lIHByb2JsZW0gZm9yIHVzPw0KDQpO
bywgbm90IGluIHRob3NlIHRpbWVzLg0KV2hlbiBwYW5lbCBpcyBvbiBzY2FubmluZyBvdXQgZnJh
bWVzLCBQUFMgaXMgZW5hYmxlZCBhbmQgVkREIGlzIGRpc2FibGVkLg0KU28gYW55IHNob3J0IHB1
bHNlIEhQRCB3YXMgYmVpbmcgaWdub3JlZCBiZWNhdXNlIChlZHBfaGF2ZV9wYW5lbF9wb3dlcigp
ICYmIGVkcF9oYXZlX3BhbmVsX3ZkZCgpKSBpcyBhbHdheXMgZmFsc2UuDQoNCj4gDQo+ID4gDQo+
ID4gU28gaGVyZSBiZXR0ZXIgbmFtaW5nIHRoaXMgZnVuY3Rpb24gdGhhdCBpbnRlbmRzIHRvIGNo
ZWNrIGlmIGF1eA0KPiA+IGxpbmVzIGFyZSBwb3dlcmVkIHRvIGF2b2lkIHRoZSBlbmRsZXNzIGN5
Y2xlIG1lbnRpb25lZCBpbiB0aGUgY29tbWl0DQo+ID4gYmVpbmcgZml4ZWQgYW5kIGZpeGluZyB0
aGUgY2hlY2sgZm9yIHdoYXQgaXQgaXMgaW50ZW5kZWQuDQo+ID4gDQo+ID4gRml4ZXM6IDEzZWE2
ZGIyY2YyNCAoImRybS9pOTE1L2VkcDogSWdub3JlIHNob3J0IHB1bHNlIHdoZW4gcGFuZWwgcG93
ZXJlZCBvZmYiKQ0KPiA+IENjOiBBbnNodW1hbiBHdXB0YSA8YW5zaHVtYW4uZ3VwdGFAaW50ZWwu
Y29tPg0KPiA+IENjOiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPg0KPiA+IENj
OiBVbWEgU2hhbmthciA8dW1hLnNoYW5rYXJAaW50ZWwuY29tPg0KPiA+IENjOiBWaWxsZSBTeXJq
w6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiA+IFNpZ25lZC1vZmYtYnk6
IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPg0KPiA+IC0tLQ0K
PiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMgIHwgMiArLQ0KPiA+
ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bwcy5jIHwgNCArKy0tDQo+ID4g
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHBzLmggfCAyICstDQo+ID4gIDMg
ZmlsZXMgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQ0KPiA+IA0KPiA+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMNCj4gPiBpbmRleCA2MTk1NDY0
NDFlYWU1Li5iMDI5YjA2NDAwMGQ2IDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZHAuYw0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZHAuYw0KPiA+IEBAIC00ODY3LDcgKzQ4NjcsNyBAQCBpbnRlbF9kcF9ocGRf
cHVsc2Uoc3RydWN0IGludGVsX2RpZ2l0YWxfcG9ydCAqZGlnX3BvcnQsIGJvb2wgbG9uZ19ocGQp
DQo+ID4gIAlzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwID0gJmRpZ19wb3J0LT5kcDsNCj4gPiAg
DQo+ID4gIAlpZiAoZGlnX3BvcnQtPmJhc2UudHlwZSA9PSBJTlRFTF9PVVRQVVRfRURQICYmDQo+
ID4gLQkgICAgKGxvbmdfaHBkIHx8ICFpbnRlbF9wcHNfaGF2ZV9wb3dlcihpbnRlbF9kcCkpKSB7
DQo+ID4gKwkgICAgKGxvbmdfaHBkIHx8ICFpbnRlbF9wcHNfaGF2ZV92ZGRfcG93ZXIoaW50ZWxf
ZHApKSkgew0KPiA+ICAJCS8qDQo+ID4gIAkJICogdmRkIG9mZiBjYW4gZ2VuZXJhdGUgYSBsb25n
L3Nob3J0IHB1bHNlIG9uIGVEUCB3aGljaA0KPiA+ICAJCSAqIHdvdWxkIHJlcXVpcmUgdmRkIG9u
IHRvIGhhbmRsZSBpdCwgYW5kIHRodXMgd2UNCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wcHMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfcHBzLmMNCj4gPiBpbmRleCA5Yzk4NmU4OTMyZjg3Li5kM2U2MDgzYWQ1Yjc5IDEw
MDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHBzLmMN
Cj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bwcy5jDQo+ID4g
QEAgLTEwNzUsMTMgKzEwNzUsMTMgQEAgc3RhdGljIHZvaWQgaW50ZWxfcHBzX3ZkZF9zYW5pdGl6
ZShzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKQ0KPiA+ICAJZWRwX3BhbmVsX3ZkZF9zY2hlZHVs
ZV9vZmYoaW50ZWxfZHApOw0KPiA+ICB9DQo+ID4gIA0KPiA+IC1ib29sIGludGVsX3Bwc19oYXZl
X3Bvd2VyKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApDQo+ID4gK2Jvb2wgaW50ZWxfcHBzX2hh
dmVfdmRkX3Bvd2VyKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApDQo+ID4gIHsNCj4gPiAgCWlu
dGVsX3dha2VyZWZfdCB3YWtlcmVmOw0KPiA+ICAJYm9vbCBoYXZlX3Bvd2VyID0gZmFsc2U7DQo+
ID4gIA0KPiA+ICAJd2l0aF9pbnRlbF9wcHNfbG9jayhpbnRlbF9kcCwgd2FrZXJlZikgew0KPiA+
IC0JCWhhdmVfcG93ZXIgPSBlZHBfaGF2ZV9wYW5lbF9wb3dlcihpbnRlbF9kcCkgJiYNCj4gPiAr
CQloYXZlX3Bvd2VyID0gZWRwX2hhdmVfcGFuZWxfcG93ZXIoaW50ZWxfZHApIHx8DQo+ID4gIAkJ
CQkJCSAgZWRwX2hhdmVfcGFuZWxfdmRkKGludGVsX2RwKTsNCj4gPiAgCX0NCj4gPiAgDQo+ID4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHBzLmggYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bwcy5oDQo+ID4gaW5kZXggZmJiNDdm
NmY0NTNlNC4uOTQ4NTIzY2UzMjQxNyAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX3Bwcy5oDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9wcHMuaA0KPiA+IEBAIC0zNyw3ICszNyw3IEBAIHZvaWQgaW50ZWxfcHBz
X3ZkZF9vbihzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKTsNCj4gPiAgdm9pZCBpbnRlbF9wcHNf
b24oc3RydWN0IGludGVsX2RwICppbnRlbF9kcCk7DQo+ID4gIHZvaWQgaW50ZWxfcHBzX29mZihz
dHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKTsNCj4gPiAgdm9pZCBpbnRlbF9wcHNfdmRkX29mZl9z
eW5jKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApOw0KPiA+IC1ib29sIGludGVsX3Bwc19oYXZl
X3Bvd2VyKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApOw0KPiA+ICtib29sIGludGVsX3Bwc19o
YXZlX3ZkZF9wb3dlcihzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKTsNCj4gPiAgdm9pZCBpbnRl
bF9wcHNfd2FpdF9wb3dlcl9jeWNsZShzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKTsNCj4gPiAg
DQo+ID4gIHZvaWQgaW50ZWxfcHBzX2luaXQoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCk7DQo+
ID4gLS0gDQo+ID4gMi4zNS4xDQo+IA0KDQo=
