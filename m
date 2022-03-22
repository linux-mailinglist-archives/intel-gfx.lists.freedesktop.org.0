Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 50DC84E3F46
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Mar 2022 14:16:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9B35C10E58F;
	Tue, 22 Mar 2022 13:16:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8CF1910E5B3
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Mar 2022 13:16:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647955006; x=1679491006;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=Q4GxejnhW0DmmVOd6nwcgua/AOKzkh32/BvFqRzN1mA=;
 b=cHR/C7LSuPlr2CRzP1AsCCeMWUOHjRn5RooCtQ1EyuwqXmWWi4iuqU57
 ynotZZMBewC0A63rCccZ8azpYHFuTbmGhVtMXxGZ06wVuti0//Bseukax
 KJxpv17p2Q2mXC0tiHGWL/UcgJaGqrjjDhf6flbf8FOrNyTXmxLSdpPr5
 MPyj7HQApQF96LiXTbj1h8tP2ro096RDgRjtQksybUbv11E2NxbazOy1t
 oYCR3ffKAinVroIis0lBd052vGvvnYlfiiv/vUm9j2ZmOVefr1z3Ru5cF
 A3PFpIr9ZhgN4Se8hHYOk402v5HR+cphEIUlLxzeuwtjfdkb1M4/hGjOa Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10293"; a="238418308"
X-IronPort-AV: E=Sophos;i="5.90,201,1643702400"; d="scan'208";a="238418308"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2022 06:16:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,201,1643702400"; d="scan'208";a="560380460"
Received: from irsmsx606.ger.corp.intel.com ([163.33.146.139])
 by orsmga008.jf.intel.com with ESMTP; 22 Mar 2022 06:16:44 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 IRSMSX606.ger.corp.intel.com (163.33.146.139) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Tue, 22 Mar 2022 13:16:42 +0000
Received: from fmsmsx612.amr.corp.intel.com ([10.18.126.92]) by
 fmsmsx612.amr.corp.intel.com ([10.18.126.92]) with mapi id 15.01.2308.021;
 Tue, 22 Mar 2022 06:16:41 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/adl_p: Increase CDCLK by 15% if
 PSR2 is used
Thread-Index: AQHYPRE2g0KZbOTwHUmwZbnaprhnf6zKhWAAgAD4MgCAAFweAA==
Date: Tue, 22 Mar 2022 13:16:41 +0000
Message-ID: <76162c4c04cfd85b26963beaa8c6313e10d6c64e.camel@intel.com>
References: <20220321104904.12425-1-stanislav.lisovskiy@intel.com>
 <8b9377677dcc1b18cd9dc95757f49f8da7beb94c.camel@intel.com>
 <20220322074812.GA2113@intel.com>
In-Reply-To: <20220322074812.GA2113@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-Type: text/plain; charset="utf-8"
Content-ID: <73B6DA4472D64245AD209093B884F951@intel.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/adl_p: Increase CDCLK by 15% if
 PSR2 is used
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

T24gVHVlLCAyMDIyLTAzLTIyIGF0IDA5OjQ4ICswMjAwLCBMaXNvdnNraXksIFN0YW5pc2xhdiB3
cm90ZToNCj4gT24gTW9uLCBNYXIgMjEsIDIwMjIgYXQgMDY6NTg6MzlQTSArMDIwMCwgU291emEs
IEpvc2Ugd3JvdGU6DQo+ID4gT24gTW9uLCAyMDIyLTAzLTIxIGF0IDEyOjQ5ICswMjAwLCBTdGFu
aXNsYXYgTGlzb3Zza2l5IHdyb3RlOg0KPiA+ID4gV2UgYXJlIGN1cnJlbnRseSBnZXR0aW5nIEZJ
Rk8gdW5kZXJydW5zLCBpbiBwYXJ0aWN1bGFyDQo+ID4gPiB3aGVuIFBTUjIgaXMgZW5hYmxlZC4g
VGhlcmUgc2VlbSB0byBiZSBubyBleGlzdGluZyB3b3JrYXJvdW5kDQo+ID4gPiBvciBwYXRjaGVz
LCB3aGljaCBjYW4gZml4IHRoYXQgaXNzdWUod2VyZSBleHBlY3Rpbmcgc29tZSByZWNlbnQNCj4g
PiA+IHNlbGVjdGl2ZSBmZXRjaCB1cGRhdGUgYW5kIERCdWYgYncvU0FHViBmaXhlcyB0byBoZWxw
LA0KPiA+ID4gd2hpY2ggdW5mb3J0dW5hdGVseSBkaWRuJ3QpLg0KPiA+ID4gQ3VycmVudCBpZGVh
IGlzIHRoYXQgaXQgbG9va3MgbGlrZSBmb3Igc29tZSByZWFzb24gdGhlDQo+ID4gPiBEQnVmIHBy
ZWZpbGwgdGltZSBpc24ndCBlbm91Z2ggb25jZSB3ZSBleGl0IFBTUjIsIGRlc3BpdGUgaXRzDQo+
ID4gPiB0aGVvcmV0aWNhbGx5IGNvcnJlY3QuDQo+ID4gPiBTbyBidW1wIGl0IHVwIGEgYml0IGJ5
IDE1JShtaW5pbXVtIGV4cGVyaW1lbnRhbCBhbW91bnQgcmVxdWlyZWQNCj4gPiA+IHRvIGdldCBp
dCB3b3JraW5nKSwgaWYgUFNSMiBpcyBlbmFibGVkLg0KPiA+ID4gRm9yIFBTUjEgdGhlcmUgaXMg
bm8gbmVlZCBpbiB0aGlzIGhhY2ssIHNvIHdlIGxpbWl0IGl0IG9ubHkNCj4gPiA+IHRvIFBTUjIg
YW5kIEFsZGVybGFrZS4NCj4gPiA+IA0KPiA+ID4gdjI6IC0gQWRkZWQgY29tbWVudChKb3NlIFNv
dXphKQ0KPiA+ID4gICAgIC0gRml4ZWQgMTUlIGNhbGN1bGF0aW9uKEpvc2UgU291emEpDQo+ID4g
PiANCj4gPiA+IFNpZ25lZC1vZmYtYnk6IFN0YW5pc2xhdiBMaXNvdnNraXkgPHN0YW5pc2xhdi5s
aXNvdnNraXlAaW50ZWwuY29tPg0KPiA+ID4gLS0tDQo+ID4gPiAgZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9jZGNsay5jIHwgMjYgKysrKysrKysrKysrKysrKysrKysrKw0KPiA+
ID4gIDEgZmlsZSBjaGFuZ2VkLCAyNiBpbnNlcnRpb25zKCspDQo+ID4gPiANCj4gPiA+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NkY2xrLmMgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NkY2xrLmMNCj4gPiA+IGluZGV4IDg4ODhm
ZGE4YjcwMS4uOTJkNTc4Njk5ODNhIDEwMDY0NA0KPiA+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9jZGNsay5jDQo+ID4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2NkY2xrLmMNCj4gPiA+IEBAIC0yMzI1LDYgKzIzMjUsMzIgQEAg
aW50IGludGVsX2NydGNfY29tcHV0ZV9taW5fY2RjbGsoY29uc3Qgc3RydWN0IGludGVsX2NydGNf
c3RhdGUgKmNydGNfc3RhdGUpDQo+ID4gPiAgCQkJCQlkZXZfcHJpdi0+bWF4X2NkY2xrX2ZyZXEp
KTsNCj4gPiA+ICAJfQ0KPiA+ID4gIA0KPiA+ID4gKw0KPiA+ID4gKwkvKg0KPiA+ID4gKwkgKiBI
QUNLLiAgV2UgYXJlIGdldHRpbmcgRklGTyB1bmRlcnJ1bnMsIGluIHBhcnRpY3VsYXINCj4gPiA+
ICsJICogd2hlbiBQU1IyIGlzIGVuYWJsZWQuIFRoZXJlIHNlZW0gdG8gYmUgbm8gZXhpc3Rpbmcg
d29ya2Fyb3VuZA0KPiA+ID4gKwkgKiBvciBwYXRjaGVzIGFzIG9mIG5vdy4NCj4gPiA+ICsJICog
Q3VycmVudCBpZGVhIGlzIHRoYXQgaXQgbG9va3MgbGlrZSBmb3Igc29tZSByZWFzb24gdGhlDQo+
ID4gPiArCSAqIERCdWYgcHJlZmlsbCB0aW1lIGlzbid0IGVub3VnaCBvbmNlIHdlIGV4aXQgUFNS
MiwgZGVzcGl0ZSBpdHMNCj4gPiA+ICsJICogdGhlb3JldGljYWxseSBjb3JyZWN0Lg0KPiA+ID4g
KwkgKiBTbyBidW1wIGl0IHVwIGEgYml0IGJ5IDE1JShtaW5pbXVtIGV4cGVyaW1lbnRhbCBhbW91
bnQgcmVxdWlyZWQNCj4gPiA+ICsJICogdG8gZ2V0IGl0IHdvcmtpbmcpLCBpZiBQU1IyIGlzIGVu
YWJsZWQuDQo+ID4gPiArCSAqIEZvciBQU1IxIHRoZXJlIGlzIG5vIG5lZWQgaW4gdGhpcyBoYWNr
LCBzbyB3ZSBsaW1pdCBpdCBvbmx5DQo+ID4gPiArCSAqIHRvIFBTUjIgYW5kIEFsZGVybGFrZS4N
Cj4gPiA+ICsJICovDQo+ID4gPiArCWlmIChJU19BTERFUkxBS0VfUChkZXZfcHJpdikpIHsNCj4g
PiA+ICsJCXN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyOw0KPiA+ID4gKw0KPiA+ID4gKwkJ
Zm9yX2VhY2hfaW50ZWxfZW5jb2Rlcl93aXRoX3BzcigmZGV2X3ByaXYtPmRybSwgZW5jb2Rlcikg
ew0KPiA+ID4gKwkJCXN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAgPSBlbmNfdG9faW50ZWxfZHAo
ZW5jb2Rlcik7DQo+ID4gPiArDQo+ID4gPiArCQkJaWYgKGludGVsX2RwLT5wc3IucHNyMl9lbmFi
bGVkKSB7DQo+ID4gDQo+ID4gQWdhaW4sIHlvdSBjYW4ndCB1c2UgdGhpcywgUFNSIGNvdWxkIGVu
ZCB1cCBkaXNhYmxlZCB3aGVuIHRoaXMgYXRvbWljIGNvbW1pdCBpdCBhcHBsaWVkLg0KPiA+IFBs
ZWFzZSB1c2UgaW50ZWxfY3J0Y19zdGF0ZS5oYXNfcHNyMi4NCj4gDQo+IFllcywgYnV0IGlmIFBT
UjIgaXMgZGlzYWJsZWQgLSB3ZSBkb24ndCBuZWVkIHRoaXMgaGFjaywgd2UgY2FuIGxpdmUgd2l0
aCBsb3dlcg0KPiBDRENMSyB0aGVuLCB0aHVzIHNhdmluZyBwb3dlci4gQW5kIG9uY2UgUFNSMiBp
cyBlbmFibGVkIHdlJ2xsIGhhdmUgdG8gc3dpdGNoIGl0DQo+IG9uLiBJIGludGVudGlvbmFsbHkg
ZGlkbid0IHdhbnQgdG8gZW5hYmxlIGl0IGFsd2F5cywgaWYgUFNSMiBpcyBzdXBwb3J0ZWQgaW4g
cHJpbmNpcGxlIC0gd2UgY2FyZSBvbmx5IGlmIGl0cyBpbmRlZWQgZW5hYmxlZC4NCg0KVGhlIHBy
b2JsZW0gaXMgdGhhdCB0aGlzIGNvZGUgZG9uJ3QgaGFuZGxlIHRoaXMgY2FzZXMuDQppbnRlbF9k
cC0+cHNyLnBzcjJfZW5hYmxlZCBoYXMgdGhlIGN1cnJlbnQgUFNSMiBzdGF0ZSwgd2hpbGUgY3J0
Y19zdGF0ZSBoYXZlIHRoZSBmdXR1cmUoYXMgc29vbiBhcyB0aGlzIHN0YXRlIGlzIGFwcGxpZWQp
IFBTUjIgc3RhdGUuDQpZb3Ugc2hvdWxkIGF2b2lkIGFjY2VzcyBnbG9iYWwgc3RhdGUgYXMgbXVj
aCBhcyBwb3NzaWJsZSBkdXJpbmcgdGhlIGF0b21pYyBjaGVjayBwaGFzZS4NCg0KSW4gYSBjYXNl
IGxpa2UsIFBTUjIgZGlzYWJsZWQgZ29pbmcgdG8gdG8gYSBzdGF0ZSB3aXRoIFBTUjIgZW5hYmxl
ZCB3aWxsIGNhdXNlIHRoaXMgd29ya2Fyb3VuZCB0byBub3QgYmUgYXBwbGllZC4NCg0KPiBBbHNv
IENEQ0xLIGlzIHRoZSBsYXN0IHRoaW5nLCB3aGljaCBpcyBiZWluZyBjYWxjdWxhdGVkLCB0aGF0
cyBob3cgYXJjaGl0ZWN0dXJlDQo+IGlzIGRlc2lnbmVkLCBzbyB3ZSBjYW4gcmVseSBvbiBhbGwg
dGhlIHN0YXRlcyBoZXJlLCBpZiB5b3UgbWVhbiB0aGF0Lg0KPiANCj4gRXZlbiBpZiB0aGlzIHdv
dWxkIGJlIG5vdCB3b3JraW5nKG5vdCBhd2FyZSB3aHkgYnV0IHN0aWxsKSwgd291bGQgYW55d2F5
IHByZWZlcg0KPiB0byBmaW5kIHNvbWV3YXkgdG8gZW5hYmxlIHRoaXMgb25seSwgd2hlbiBQU1Iy
IGlzIGluZGVlZCBlbmFibGVkLCBvdGhlcndpc2UNCj4gd2Ugd291bGQgYmUga2luZCBvZiB3YXN0
aW5nIHBvd2VyLi4NCj4gDQo+IA0KPiBTdGFuDQo+IA0KPiA+IA0KPiA+IA0KPiA+ID4gKwkJCQlt
aW5fY2RjbGsgPSBESVZfUk9VTkRfVVAobWluX2NkY2xrICogMTE1LCAxMDApOw0KPiA+ID4gKwkJ
CQlicmVhazsNCj4gPiA+ICsJCQl9DQo+ID4gPiArCQl9DQo+ID4gPiArCX0NCj4gPiA+ICsNCj4g
PiA+ICAJaWYgKG1pbl9jZGNsayA+IGRldl9wcml2LT5tYXhfY2RjbGtfZnJlcSkgew0KPiA+ID4g
IAkJZHJtX2RiZ19rbXMoJmRldl9wcml2LT5kcm0sDQo+ID4gPiAgCQkJICAgICJyZXF1aXJlZCBj
ZGNsayAoJWQga0h6KSBleGNlZWRzIG1heCAoJWQga0h6KVxuIiwNCj4gPiANCg0K
