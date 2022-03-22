Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 13CDA4E3F9F
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Mar 2022 14:36:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 34F4A10E664;
	Tue, 22 Mar 2022 13:36:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4BFA410E664
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Mar 2022 13:36:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647956174; x=1679492174;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=+AzObQ+L/SUTE5BPYkvSKff93QeVOsMjBnxDP5I+Nt8=;
 b=bv9toMROuQAKB3PecZRXqX86Q2vySg10znTqQcsb1f4/yd71DsXfeWG8
 KrtoyeJCHLIFEhm98cNHOpCmvjSWUOl4tY5CMMTCL4WRmxvdOkwRU3Ves
 wO2KZPxC1EV0ESqHdHmoaebqmS0bZfcyU5YOdhL2hCyVe4I72jh1kE9YD
 SxudFJdno7wKMkwWHpXOaUfmlNLcx7808qFnTj791XAYCKLTmHT4G9qUk
 IQuWxfEMbfCW8vawz2xULBb0NIeo87GzR4r7NYBb8NRyTj1GcTT3vAeo4
 794qk8BRYVlm2Rj5XOMhkqvfd1hhdQdsuwbkWxSdB1WkDKhtWqgBdODgM g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10293"; a="318525489"
X-IronPort-AV: E=Sophos;i="5.90,201,1643702400"; d="scan'208";a="318525489"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2022 06:36:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,201,1643702400"; d="scan'208";a="515345299"
Received: from irsmsx604.ger.corp.intel.com ([163.33.146.137])
 by orsmga002.jf.intel.com with ESMTP; 22 Mar 2022 06:36:13 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 IRSMSX604.ger.corp.intel.com (163.33.146.137) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Tue, 22 Mar 2022 13:36:11 +0000
Received: from fmsmsx612.amr.corp.intel.com ([10.18.126.92]) by
 fmsmsx612.amr.corp.intel.com ([10.18.126.92]) with mapi id 15.01.2308.021;
 Tue, 22 Mar 2022 06:36:10 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/adl_p: Increase CDCLK by 15% if
 PSR2 is used
Thread-Index: AQHYPRE2g0KZbOTwHUmwZbnaprhnf6zKhigAgAD324CAAGEfgA==
Date: Tue, 22 Mar 2022 13:36:10 +0000
Message-ID: <20d8519ace64eb83d9128db4832456f113adb1a4.camel@intel.com>
References: <20220321104904.12425-1-stanislav.lisovskiy@intel.com>
 <b57a419ab01f7e8881ece99d0cd3bd415942651c.camel@intel.com>
 <20220322074947.GB2113@intel.com>
In-Reply-To: <20220322074947.GB2113@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-Type: text/plain; charset="utf-8"
Content-ID: <79458E73AC97E6469302CE520E2DB46A@intel.com>
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

T24gVHVlLCAyMDIyLTAzLTIyIGF0IDA5OjQ5ICswMjAwLCBMaXNvdnNraXksIFN0YW5pc2xhdiB3
cm90ZToNCj4gT24gTW9uLCBNYXIgMjEsIDIwMjIgYXQgMDc6MDE6MjdQTSArMDIwMCwgU291emEs
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
PiANCj4gPiANCj4gPiBBbmQgcGxlYXNlIGNoZWNrIGlmIHdlIGNhbiBvbmx5IGFwcGx5IHRoaXMg
d2hlbiB0d28gb3IgbW9yZSBwaXBlcyBhcmUgZW5hYmxlZC4NCj4gPiBPdGhlcndpc2UgdGhpcyB3
aWxsIGltcGFjdCBwb3dlciBudW1iZXJzIGluIHRoZSBjYXNlIHRoYXQgaXMgbWF0dGVycyBtb3N0
Lg0KPiANCj4gVGhhdCBvbmUgSSBjYW4gY2hlY2suIFByb2JhYmx5IG5lZWQgc29tZW9uZSBhdCBv
ZmZpY2UgdG8gZGlzY29ubmVjdCBhbGwgdGhlIHBpcGVzLCBleGNlcHQgZURQIHRvIHNlZQ0KPiBp
ZiBpdHMgc3RpbGwgcmVwcm9kdWNpYmxlLCBob3dldmVyIEkgdGhpbmsgSSd2ZSBzZWVuIGl0IGFs
cmVhZHkgaGFwcGVuaW5nLg0KDQpZb3UgY2FuIGhhdmUgc29tZSBoYWNrIGNvZGUgaW4gdGhlIGZ1
bmN0aW9ucyB0aGF0IGNoZWNrIGlmIGEgcG9ydCBpcyBjb25uZWN0ZWQgYW5kIHJldHVybiBmYWxz
ZSBmb3IgYWxsIHBvcnRzIG90aGVyIHRoYW4gcG9ydCBBL2VEUC4NCg0KDQo+IA0KPiBTdGFuDQo+
IA0KPiA+IA0KPiA+ID4gKwkJc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXI7DQo+ID4gPiAr
DQo+ID4gPiArCQlmb3JfZWFjaF9pbnRlbF9lbmNvZGVyX3dpdGhfcHNyKCZkZXZfcHJpdi0+ZHJt
LCBlbmNvZGVyKSB7DQo+ID4gPiArCQkJc3RydWN0IGludGVsX2RwICppbnRlbF9kcCA9IGVuY190
b19pbnRlbF9kcChlbmNvZGVyKTsNCj4gPiA+ICsNCj4gPiA+ICsJCQlpZiAoaW50ZWxfZHAtPnBz
ci5wc3IyX2VuYWJsZWQpIHsNCj4gPiA+ICsJCQkJbWluX2NkY2xrID0gRElWX1JPVU5EX1VQKG1p
bl9jZGNsayAqIDExNSwgMTAwKTsNCj4gPiA+ICsJCQkJYnJlYWs7DQo+ID4gPiArCQkJfQ0KPiA+
ID4gKwkJfQ0KPiA+ID4gKwl9DQo+ID4gPiArDQo+ID4gPiAgCWlmIChtaW5fY2RjbGsgPiBkZXZf
cHJpdi0+bWF4X2NkY2xrX2ZyZXEpIHsNCj4gPiA+ICAJCWRybV9kYmdfa21zKCZkZXZfcHJpdi0+
ZHJtLA0KPiA+ID4gIAkJCSAgICAicmVxdWlyZWQgY2RjbGsgKCVkIGtIeikgZXhjZWVkcyBtYXgg
KCVkIGtIeilcbiIsDQo+ID4gDQoNCg==
