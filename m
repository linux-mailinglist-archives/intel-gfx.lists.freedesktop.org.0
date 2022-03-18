Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DECAD4DDBCB
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Mar 2022 15:38:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C4B510E9A2;
	Fri, 18 Mar 2022 14:38:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4175010E9A2
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Mar 2022 14:38:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647614312; x=1679150312;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=LkodlKL8gHeR5/V3TL95NiTKStOk0Vc6dcz0vNekVHI=;
 b=HWETWF4G/o5AXPIu0gUUjyP3BIs/NR+bJEkEFt7+5Tq8wPz5CCMlcuKF
 trybtILNcSRBV36hty+ojCocpBbLdnJaOJaZ5s+jPgs4btcG0K1aV+jml
 Q+k3zlfupitkXzQoj81H9pBF0tuWUum5n4muIZxQanjiFNdeCgOxbJo+g
 WEu3TalGDiItF7fRxcIl3O56TUtrCx/lLh3q0TK/8Pt6xkRPfiXQ/az2X
 NHcaJxAn/oGsLqZvvH/Ww7sgl4rkGhbkwAtPM4mnfky6kIB6/nszNXvoz
 qIHkzTbi+s8NF9SSpgeutY+tYHDO4g7c0PhtoU3gyud3yt26L+lDrd1tH w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10289"; a="239307072"
X-IronPort-AV: E=Sophos;i="5.90,192,1643702400"; d="scan'208";a="239307072"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2022 07:38:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,192,1643702400"; d="scan'208";a="715505269"
Received: from irsmsx601.ger.corp.intel.com ([163.33.146.7])
 by orsmga005.jf.intel.com with ESMTP; 18 Mar 2022 07:38:30 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 irsmsx601.ger.corp.intel.com (163.33.146.7) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Fri, 18 Mar 2022 14:38:29 +0000
Received: from fmsmsx612.amr.corp.intel.com ([10.18.126.92]) by
 fmsmsx612.amr.corp.intel.com ([10.18.126.92]) with mapi id 15.01.2308.021;
 Fri, 18 Mar 2022 07:38:27 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/adl_p: Increase CDCLK by 15% if
 PSR2 is used
Thread-Index: AQHYOqVt9C5fyYbzJ0256azdo8/uyazFhaqAgAAgwwCAAAWZAA==
Date: Fri, 18 Mar 2022 14:38:27 +0000
Message-ID: <4fd0a9ee8c4348bb4eda4c276215b675350252d2.camel@intel.com>
References: <20220318085226.7348-1-stanislav.lisovskiy@intel.com>
 <530cc6962b181ee01e9c00a38190ab27e5940215.camel@intel.com>
 <20220318141932.GA8492@intel.com>
In-Reply-To: <20220318141932.GA8492@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-Type: text/plain; charset="utf-8"
Content-ID: <C5243C716E78C343857CA545F3BF58E9@intel.com>
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

T24gRnJpLCAyMDIyLTAzLTE4IGF0IDE2OjE5ICswMjAwLCBMaXNvdnNraXksIFN0YW5pc2xhdiB3
cm90ZToNCj4gT24gRnJpLCBNYXIgMTgsIDIwMjIgYXQgMDI6MjE6MTBQTSArMDIwMCwgU291emEs
IEpvc2Ugd3JvdGU6DQo+ID4gT24gRnJpLCAyMDIyLTAzLTE4IGF0IDEwOjUyICswMjAwLCBTdGFu
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
YW5kIEFsZGVybGFrZS4NCj4gPiANCj4gPiBJdCB0aGlzIHdvcmthcm91bmQgbWVhbnQgdG8gYmUg
cGVybWFuZW50PyBJZiB5ZXMgd2Ugc2hvdWxkIGZpbGUgYSBIU0QgYW5kIGdldCBoYXJkd2FyZSBm
b2xrcyBmZWVkYmFjay4NCj4gDQo+IE5vcGUsIEkgaG9wZSB3ZSBmaWd1cmUgb3V0IHNvbWUgbW9y
ZSBlbGVnYW50IHNvbHV0aW9uIGF0IHNvbWUgcG9pbnQuDQoNClNvIHBsZWFzZSBhZGQgdGhpcyBp
bmZvcm1hdGlvbiB0byBjb21taXQgbWVzc2FnZSBhbmQgY29kZSBjb21tZW50LgkJCQ0KDQo+IA0K
PiA+IA0KPiA+ID4gDQo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBTdGFuaXNsYXYgTGlzb3Zza2l5IDxz
dGFuaXNsYXYubGlzb3Zza2l5QGludGVsLmNvbT4NCj4gPiA+IC0tLQ0KPiA+ID4gIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY2RjbGsuYyB8IDEzICsrKysrKysrKysrKysNCj4g
PiA+ICAxIGZpbGUgY2hhbmdlZCwgMTMgaW5zZXJ0aW9ucygrKQ0KPiA+ID4gDQo+ID4gPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jZGNsay5jIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jZGNsay5jDQo+ID4gPiBpbmRleCA4ODg4
ZmRhOGI3MDEuLjA5NWI3OTk1MDc4OCAxMDA2NDQNCj4gPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfY2RjbGsuYw0KPiA+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9jZGNsay5jDQo+ID4gPiBAQCAtMjMyNSw2ICsyMzI1LDE5IEBA
IGludCBpbnRlbF9jcnRjX2NvbXB1dGVfbWluX2NkY2xrKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRj
X3N0YXRlICpjcnRjX3N0YXRlKQ0KPiA+ID4gIAkJCQkJZGV2X3ByaXYtPm1heF9jZGNsa19mcmVx
KSk7DQo+ID4gPiAgCX0NCj4gPiA+ICANCj4gPiANCj4gPiBQbGVhc2UgYWRkIHNvbWUgY29tbWVu
dCBpbiB0aGUgY29kZSBhYm91dCB0aGlzIHdvcmthcm91bmQuDQo+ID4gDQo+ID4gDQo+ID4gPiAr
CWlmIChJU19BTERFUkxBS0VfUChkZXZfcHJpdikpIHsNCj4gPiA+ICsJCXN0cnVjdCBpbnRlbF9l
bmNvZGVyICplbmNvZGVyOw0KPiA+ID4gKw0KPiA+ID4gKwkJZm9yX2VhY2hfaW50ZWxfZW5jb2Rl
cl93aXRoX3BzcigmZGV2X3ByaXYtPmRybSwgZW5jb2Rlcikgew0KPiA+ID4gKwkJCXN0cnVjdCBp
bnRlbF9kcCAqaW50ZWxfZHAgPSBlbmNfdG9faW50ZWxfZHAoZW5jb2Rlcik7DQo+ID4gPiArDQo+
ID4gPiArCQkJaWYgKGludGVsX2RwLT5wc3IucHNyMl9lbmFibGVkKSB7DQo+ID4gDQo+ID4gWW91
IHNob3VsZCBjaGVjayB0aGUgaGFzX3BzcjIgaW4gdGhlIGNydGNfc3RhdGUsIFBTUjIgY291bGQg
YmUgZGlzYWJsZWQgd2hlbiB0aGlzIHN0YXRlIGlzIGNvbW1pdHRlZC4NCj4gPiANCj4gPiA+ICsJ
CQkJbWluX2NkY2xrID0gRElWX1JPVU5EX1VQKG1pbl9jZGNsayAqIDEwMCwgODUpOw0KPiA+IA0K
PiA+IFRoaXMgaXMgbm90IGluY3JlYXNpbmcgYnkgMTUlLg0KPiA+IA0KPiA+IG1pbl9jZGNsayA9
IDUwMA0KPiA+IDUwMCAqIDEwMCA9IDUwMDAwDQo+ID4gNTAwMDAgLyA4NSA9IDU4OC4yMzUyOTQx
MTgNCj4gPiANCj4gPiBXaGlsZSAxNSUgb2YgNTAwIGlzIDc1Lg0KPiA+IA0KPiA+IEFsc28gaWYg
dGhlcmUgaXMgdHdvIENSVENzIHdpdGggUFNSMiBlbmFibGVkIHlvdSB3aWxsIGJ1bXAgbWluX2Nk
Y2xrIHR3aWNlLg0KPiA+IA0KPiA+ID4gKwkJCQlicmVhazsNCj4gDQo+IE5vLCB3ZSB3b24ndCBi
dW1wIHVwIGl0IHR3aWNlLCBiZWNhdXNlIHdlIGluaXRpYWxpemUgbWluX2NkY2xrIGhlcmUgZnJv
bSBwaXhlbCByYXRlIGluaXRpYWxseQ0KPiBhbmQgb25seSB0aGVuIGFwcGx5IGFsbCB0aG9zZSBk
aXJ0eSBoYWNrcyBhbmQgb3B0aW1pemF0aW9ucy4gVGhlcmUgaXMgc2ltaWxhciBjb2RlIGFib3Zl
IGFzDQo+IHdlbGwuDQo+IEZvciBlYWNoIGNydGMgd2UgY2FsbCB0aGlzIGZ1bmN0aW9uIGJ1dCBh
cyBzdGFydGluZyBwb2ludCBhbHdheXMgaXRzIHBpeGVsIHJhdGUgaXMgdXNlZCwNCj4gdGhlbiB0
aGUgbWF4KCkgb2YgdGhvc2Ugd291bGQgYmUgdGhlIGFjdHVhbCBuZXcgY2RjbGsuDQoNCkl0IHdp
bGwgaWYgeW91IGFyZSBpdGVyYXRpbmcgd2l0aCBmb3JfZWFjaF9pbnRlbF9lbmNvZGVyX3dpdGhf
cHNyKCkgYW5kIHRoZXJlIGlzIG1vcmUgdGhhbiBvbmUgZW5jb2RlciB3aXRoIFBTUjIgZW5hYmxl
ZC4NClN3aXRjaGluZyB0byBjcnRjX3N0YXRlLT5oYXNfcHNyMiBhbmQgdGhlbiBpbmNyZWFzaW5n
IHRoZSBtaW5fY2RjbGsgb2YgdGhlIHBpcGUgd2l0aCBQU1IyIGVuYWJsZWQsIHNob3VsZCBmaXgg
aXQuDQoNCj4gDQo+IEFzIGZvciAxNSUsIGdvb2QgcG9pbnQgdG9vayB0aGlzIGZyb20gZXhwcmVz
c2lvbiBhYm92ZSBpbiB0aGF0IGZ1bmMsIGJ1dCBpbmRlZWQgdGhpcyBpcyANCj4gbm8gYSAxNSUu
DQo+IA0KPiBTdGFuDQo+IA0KPiA+ID4gKwkJCX0NCj4gPiA+ICsJCX0NCj4gPiA+ICsJfQ0KPiA+
ID4gKw0KPiA+ID4gIAlpZiAobWluX2NkY2xrID4gZGV2X3ByaXYtPm1heF9jZGNsa19mcmVxKSB7
DQo+ID4gPiAgCQlkcm1fZGJnX2ttcygmZGV2X3ByaXYtPmRybSwNCj4gPiA+ICAJCQkgICAgInJl
cXVpcmVkIGNkY2xrICglZCBrSHopIGV4Y2VlZHMgbWF4ICglZCBrSHopXG4iLA0KPiA+IA0KDQo=
