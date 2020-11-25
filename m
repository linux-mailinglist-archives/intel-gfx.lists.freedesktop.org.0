Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D09462C4BAA
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Nov 2020 00:39:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 10ED56E062;
	Wed, 25 Nov 2020 23:39:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E4CC56E062
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Nov 2020 23:38:59 +0000 (UTC)
IronPort-SDR: NskHCUDPPB3Naa7GBFbQ+V59TTMqlE1hH7oPu0Bh6DM+kjO+4Az01jWIInX9Z1+QivCIiflwPB
 58iWbeviyhbA==
X-IronPort-AV: E=McAfee;i="6000,8403,9816"; a="159982373"
X-IronPort-AV: E=Sophos;i="5.78,370,1599548400"; d="scan'208";a="159982373"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2020 15:38:59 -0800
IronPort-SDR: AhrGuc+TVYIUHPNpBrB+G8ud9gv6Q8BtKLEO6tC28DoOWRX+EOt2PqVEExytK5eFIVf4poONzB
 yNR2uOGgp4wQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,370,1599548400"; d="scan'208";a="313835517"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by fmsmga007.fm.intel.com with ESMTP; 25 Nov 2020 15:38:58 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 25 Nov 2020 15:38:58 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 25 Nov 2020 15:38:58 -0800
Received: from fmsmsx611.amr.corp.intel.com ([10.18.126.91]) by
 fmsmsx611.amr.corp.intel.com ([10.18.126.91]) with mapi id 15.01.1713.004;
 Wed, 25 Nov 2020 15:38:58 -0800
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: "Swarup, Aditya" <aditya.swarup@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 13/21] drm/i915/adl_s: Update combo PHY
 master/slave relationships
Thread-Index: AQHWvRLzgZToPERrGkWFAwBRlt8YJanZjfRw
Date: Wed, 25 Nov 2020 23:38:57 +0000
Message-ID: <c505373b2d674312b6773e09f93e5e3f@intel.com>
References: <20201117185029.22078-1-aditya.swarup@intel.com>
 <20201117185029.22078-14-aditya.swarup@intel.com>
In-Reply-To: <20201117185029.22078-14-aditya.swarup@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
x-originating-ip: [10.22.254.132]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 13/21] drm/i915/adl_s: Update combo PHY
 master/slave relationships
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>, "De Marchi,
 Lucas" <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtZ2Z4IDxpbnRl
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZg0KPiBBZGl0
eWEgU3dhcnVwDQo+IFNlbnQ6IFR1ZXNkYXksIE5vdmVtYmVyIDE3LCAyMDIwIDEwOjUwIEFNDQo+
IFRvOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENjOiBOaWt1bGEsIEphbmkg
PGphbmkubmlrdWxhQGludGVsLmNvbT47IERlIE1hcmNoaSwgTHVjYXMNCj4gPGx1Y2FzLmRlbWFy
Y2hpQGludGVsLmNvbT4NCj4gU3ViamVjdDogW0ludGVsLWdmeF0gW1BBVENIIDEzLzIxXSBkcm0v
aTkxNS9hZGxfczogVXBkYXRlIGNvbWJvIFBIWQ0KPiBtYXN0ZXIvc2xhdmUgcmVsYXRpb25zaGlw
cw0KPiANCj4gRnJvbTogTWF0dCBSb3BlciA8bWF0dGhldy5kLnJvcGVyQGludGVsLmNvbT4NCj4g
DQo+IEFETC1TIHN3aXRjaGVzIHVwIHdoaWNoIFBIWXMgYXJlIGNvbnNpZGVyZWQgYSBtYXN0ZXIg
dG8gb3RoZXIgUEhZczsgUEhZLUMNCj4gaXMgbm8gbG9uZ2VyIGEgbWFzdGVyLCBidXQgUEhZLUQg
aXMgbm93Lg0KPiANCj4gQnNwZWM6IDQ5MjkxDQo+IENjOiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1
bGFAaW50ZWwuY29tPg0KPiBDYzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4
LmludGVsLmNvbT4NCj4gQ2M6IEltcmUgRGVhayA8aW1yZS5kZWFrQGludGVsLmNvbT4NCj4gQ2M6
IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPg0KPiBTaWduZWQtb2Zm
LWJ5OiBNYXR0IFJvcGVyIDxtYXR0aGV3LmQucm9wZXJAaW50ZWwuY29tPg0KPiBTaWduZWQtb2Zm
LWJ5OiBBZGl0eWEgU3dhcnVwIDxhZGl0eWEuc3dhcnVwQGludGVsLmNvbT4NCg0KUmV2aWV3ZWQt
Ynk6IEFudXNoYSBTcml2YXRzYSA8YW51c2hhLnNyaXZhdHNhQGludGVsLmNvbT4NCg0KPiAtLS0N
Cj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY29tYm9fcGh5LmMgfCAxMSAr
KysrKysrKystLQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDkgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlv
bnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2NvbWJvX3BoeS5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9j
b21ib19waHkuYw0KPiBpbmRleCBkNWFkNjFlNDA4M2UuLjU1ZDJkMmQ5ZWZiYiAxMDA2NDQNCj4g
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jb21ib19waHkuYw0KPiAr
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NvbWJvX3BoeS5jDQo+IEBA
IC0yNDYsMTQgKzI0NiwyMSBAQCBzdGF0aWMgYm9vbCBwaHlfaXNfbWFzdGVyKHN0cnVjdA0KPiBk
cm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwgZW51bSBwaHkgcGh5KQ0KPiAgCSAqIFJLTCxERzE6
DQo+ICAJICogICBBKG1hc3RlcikgLT4gQihzbGF2ZSkNCj4gIAkgKiAgIEMobWFzdGVyKSAtPiBE
KHNsYXZlKQ0KPiArCSAqIEFETC1TOg0KPiArCSAqICAgQShtYXN0ZXIpIC0+IEIoc2xhdmUpLCBD
KHNsYXZlKQ0KPiArCSAqICAgRChtYXN0ZXIpIC0+IEUoc2xhdmUpDQo+ICAJICoNCj4gIAkgKiBX
ZSBtdXN0IHNldCB0aGUgSVJFRkdFTiBiaXQgZm9yIGFueSBQSFkgYWN0aW5nIGFzIGEgbWFzdGVy
DQo+ICAJICogdG8gYW5vdGhlciBQSFkuDQo+ICAJICovDQo+IC0JaWYgKChJU19ERzEoZGV2X3By
aXYpIHx8IElTX1JPQ0tFVExBS0UoZGV2X3ByaXYpKSAmJiBwaHkgPT0NCj4gUEhZX0MpDQo+ICsJ
aWYgKHBoeSA9PSBQSFlfQSkNCj4gIAkJcmV0dXJuIHRydWU7DQo+ICsJZWxzZSBpZiAoSVNfQUxE
RVJMQUtFX1MoZGV2X3ByaXYpKQ0KPiArCQlyZXR1cm4gcGh5ID09IFBIWV9EOw0KPiArCWVsc2Ug
aWYgKElTX0RHMShkZXZfcHJpdikgfHwgSVNfUk9DS0VUTEFLRShkZXZfcHJpdikpDQo+ICsJCXJl
dHVybiBwaHkgPT0gUEhZX0M7DQo+IA0KPiAtCXJldHVybiBwaHkgPT0gUEhZX0E7DQo+ICsJcmV0
dXJuIGZhbHNlOw0KPiAgfQ0KPiANCj4gIHN0YXRpYyBib29sIGljbF9jb21ib19waHlfdmVyaWZ5
X3N0YXRlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwNCj4gLS0NCj4gMi4yNy4w
DQo+IA0KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0K
PiBJbnRlbC1nZnggbWFpbGluZyBsaXN0DQo+IEludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcNCj4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZngNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
