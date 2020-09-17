Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F9BE26E54E
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Sep 2020 21:21:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 959306E301;
	Thu, 17 Sep 2020 19:21:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 712336E301
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Sep 2020 19:21:04 +0000 (UTC)
IronPort-SDR: 4cJkIIbU1KTie5OwG7SG4Gk0jSLpw+EvRAokcjpiTmW7iB0aChI+5sT+pp565qSRlwFeWAzDyy
 6ECQBmcMIE2w==
X-IronPort-AV: E=McAfee;i="6000,8403,9747"; a="147465268"
X-IronPort-AV: E=Sophos;i="5.77,271,1596524400"; d="scan'208";a="147465268"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2020 12:21:01 -0700
IronPort-SDR: veosk6HAtw9NQh0NYc4OxcIV8m53f0dwRZ1CsbNxs0JCTcT80C9aBGe0ErWuMewmyHaZP/2RCx
 Z30HSoNtZyow==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,271,1596524400"; d="scan'208";a="346727324"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga007.jf.intel.com with ESMTP; 17 Sep 2020 12:21:01 -0700
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 17 Sep 2020 12:21:00 -0700
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 BGSMSX604.gar.corp.intel.com (10.67.234.6) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 18 Sep 2020 00:50:58 +0530
Received: from bgsmsx604.gar.corp.intel.com ([10.67.234.6]) by
 BGSMSX604.gar.corp.intel.com ([10.67.234.6]) with mapi id 15.01.1713.004;
 Fri, 18 Sep 2020 00:50:58 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 01/20] drm/i915: Fix state checker
 hw.active/hw.enable readout
Thread-Index: AQHWXH8zgswvwOiKdUWFX+QCOUuYN6ltk6qA
Date: Thu, 17 Sep 2020 19:20:57 +0000
Message-ID: <37d25f16d9334e68b661700f9c5eab40@intel.com>
References: <20200717211345.26851-1-ville.syrjala@linux.intel.com>
 <20200717211345.26851-2-ville.syrjala@linux.intel.com>
In-Reply-To: <20200717211345.26851-2-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
x-originating-ip: [10.223.10.1]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 01/20] drm/i915: Fix state checker
 hw.active/hw.enable readout
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
PiBTeXJqYWxhDQo+IFNlbnQ6IFNhdHVyZGF5LCBKdWx5IDE4LCAyMDIwIDI6NDMgQU0NCj4gVG86
IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gU3ViamVjdDogW0ludGVsLWdmeF0g
W1BBVENIIDAxLzIwXSBkcm0vaTkxNTogRml4IHN0YXRlIGNoZWNrZXINCj4gaHcuYWN0aXZlL2h3
LmVuYWJsZSByZWFkb3V0DQo+IA0KPiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmph
bGFAbGludXguaW50ZWwuY29tPg0KPiANCj4gUHJldmlvdXNseSBpbnRlbF9kdW1wX3BpcGVfY29u
ZmlnKCkgdXNlZCB0byBkdW1wIHRoZSBmdWxsIGNydGMgc3RhdGUgd2hldGhlciBvcg0KPiBub3Qg
dGhlIGNydGMgd2FzIGxvZ2ljYWxseSBlbmFibGVkIG9yIG5vdC4gQXMgdGhhdCBtZWFudCBvY2Nh
c2lvbmFsbHkgZHVtcGluZw0KPiBjb25mdXNpbmcgc3RhbGUgZ2FyYmFnZSBJIGNoYW5nZWQgaXQg
dG8gY2hlY2sgd2hldGhlciB0aGUgY3J0YyBpcyBsb2dpY2FsbHkgZW5hYmxlZA0KPiBvciBub3Qu
IEhvd2V2ZXIgSSBkaWQgbm90IHJlYWxpemUgdGhhdCB0aGUgc3RhdGUgY2hlY2tlciByZWFkb3V0
IGNvZGUgZG9lcyBub3QNCj4gcG9wdWxhdGUgY3J0Y19zdGF0ZS5ody57YWN0aXZlLGVuYWJsZWR9
LiBIZW5jZSB0aGUgc3RhdGUgY2hlY2tlciBkdW1wIHdvdWxkDQo+IG9ubHkgZ2l2ZSB1cyBhIGZ1
bGwgZHVtcCBvZiB0aGUgc3cgc3RhdGUgYnV0IG5vdCB0aGUgaHcgc3RhdGUuIEZpeCB0aGF0IGJ5
DQo+IHBvcHVsYXRpbmcgdGhvc2UgYml0cyBvZiB0aGUgaHcgc3RhdGUgYXMgd2VsbC4NCg0KTG9v
a3MgZ29vZC4NClJldmlld2VkLWJ5OiBVbWEgU2hhbmthciA8dW1hLnNoYW5rYXJAaW50ZWwuY29t
Pg0KDQo+IEZpeGVzOiAxMGQ3NWY1NDI4ZmQgKCJkcm0vaTkxNTogRml4IHBsYW5lIHN0YXRlIGR1
bXBzIikNCj4gU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxp
bnV4LmludGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2Rpc3BsYXkuYyB8IDE1ICsrKysrKysrKy0tLS0tLQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDkg
aW5zZXJ0aW9ucygrKSwgNiBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0KPiBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+IGluZGV4IDcyOWVjNmUwZDQzYS4uYWUw
YWY0NTJkNzc2IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2Rpc3BsYXkuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Rpc3BsYXkuYw0KPiBAQCAtMTQyNDQsNyArMTQyNDQsNiBAQCB2ZXJpZnlfY3J0Y19zdGF0ZShz
dHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YywNCj4gIAlzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2Rl
cjsNCj4gIAlzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqcGlwZV9jb25maWcgPSBvbGRfY3J0Y19z
dGF0ZTsNCj4gIAlzdHJ1Y3QgZHJtX2F0b21pY19zdGF0ZSAqc3RhdGUgPSBvbGRfY3J0Y19zdGF0
ZS0+dWFwaS5zdGF0ZTsNCj4gLQlib29sIGFjdGl2ZTsNCj4gDQo+ICAJX19kcm1fYXRvbWljX2hl
bHBlcl9jcnRjX2Rlc3Ryb3lfc3RhdGUoJm9sZF9jcnRjX3N0YXRlLT51YXBpKTsNCj4gIAlpbnRl
bF9jcnRjX2ZyZWVfaHdfc3RhdGUob2xkX2NydGNfc3RhdGUpOw0KPiBAQCAtMTQyNTQsMTYgKzE0
MjUzLDE5IEBAIHZlcmlmeV9jcnRjX3N0YXRlKHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjLA0KPiAg
CWRybV9kYmdfa21zKCZkZXZfcHJpdi0+ZHJtLCAiW0NSVEM6JWQ6JXNdXG4iLCBjcnRjLT5iYXNl
LmJhc2UuaWQsDQo+ICAJCSAgICBjcnRjLT5iYXNlLm5hbWUpOw0KPiANCj4gLQlhY3RpdmUgPSBk
ZXZfcHJpdi0+ZGlzcGxheS5nZXRfcGlwZV9jb25maWcoY3J0YywgcGlwZV9jb25maWcpOw0KPiAr
CXBpcGVfY29uZmlnLT5ody5lbmFibGUgPSBuZXdfY3J0Y19zdGF0ZS0+aHcuZW5hYmxlOw0KPiAr
DQo+ICsJcGlwZV9jb25maWctPmh3LmFjdGl2ZSA9DQo+ICsJCWRldl9wcml2LT5kaXNwbGF5Lmdl
dF9waXBlX2NvbmZpZyhjcnRjLCBwaXBlX2NvbmZpZyk7DQo+IA0KPiAgCS8qIHdlIGtlZXAgYm90
aCBwaXBlcyBlbmFibGVkIG9uIDgzMCAqLw0KPiAtCWlmIChJU19JODMwKGRldl9wcml2KSkNCj4g
LQkJYWN0aXZlID0gbmV3X2NydGNfc3RhdGUtPmh3LmFjdGl2ZTsNCj4gKwlpZiAoSVNfSTgzMChk
ZXZfcHJpdikgJiYgcGlwZV9jb25maWctPmh3LmFjdGl2ZSkNCj4gKwkJcGlwZV9jb25maWctPmh3
LmFjdGl2ZSA9IG5ld19jcnRjX3N0YXRlLT5ody5hY3RpdmU7DQo+IA0KPiAtCUk5MTVfU1RBVEVf
V0FSTihuZXdfY3J0Y19zdGF0ZS0+aHcuYWN0aXZlICE9IGFjdGl2ZSwNCj4gKwlJOTE1X1NUQVRF
X1dBUk4obmV3X2NydGNfc3RhdGUtPmh3LmFjdGl2ZSAhPSBwaXBlX2NvbmZpZy0+aHcuYWN0aXZl
LA0KPiAgCQkJImNydGMgYWN0aXZlIHN0YXRlIGRvZXNuJ3QgbWF0Y2ggd2l0aCBodyBzdGF0ZSAi
DQo+ICAJCQkiKGV4cGVjdGVkICVpLCBmb3VuZCAlaSlcbiIsDQo+IC0JCQluZXdfY3J0Y19zdGF0
ZS0+aHcuYWN0aXZlLCBhY3RpdmUpOw0KPiArCQkJbmV3X2NydGNfc3RhdGUtPmh3LmFjdGl2ZSwg
cGlwZV9jb25maWctPmh3LmFjdGl2ZSk7DQo+IA0KPiAgCUk5MTVfU1RBVEVfV0FSTihjcnRjLT5h
Y3RpdmUgIT0gbmV3X2NydGNfc3RhdGUtPmh3LmFjdGl2ZSwNCj4gIAkJCSJ0cmFuc2l0aW9uYWwg
YWN0aXZlIHN0YXRlIGRvZXMgbm90IG1hdGNoIGF0b21pYyBodyBzdGF0ZQ0KPiAiDQo+IEBAIC0x
NDI3Miw2ICsxNDI3NCw3IEBAIHZlcmlmeV9jcnRjX3N0YXRlKHN0cnVjdCBpbnRlbF9jcnRjICpj
cnRjLA0KPiANCj4gIAlmb3JfZWFjaF9lbmNvZGVyX29uX2NydGMoZGV2LCAmY3J0Yy0+YmFzZSwg
ZW5jb2Rlcikgew0KPiAgCQllbnVtIHBpcGUgcGlwZTsNCj4gKwkJYm9vbCBhY3RpdmU7DQo+IA0K
PiAgCQlhY3RpdmUgPSBlbmNvZGVyLT5nZXRfaHdfc3RhdGUoZW5jb2RlciwgJnBpcGUpOw0KPiAg
CQlJOTE1X1NUQVRFX1dBUk4oYWN0aXZlICE9IG5ld19jcnRjX3N0YXRlLT5ody5hY3RpdmUsDQo+
IC0tDQo+IDIuMjYuMg0KPiANCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18NCj4gSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdA0KPiBJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnDQo+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZngK
