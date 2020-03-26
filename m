Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DF0D21945C0
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Mar 2020 18:46:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2DDA289939;
	Thu, 26 Mar 2020 17:46:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 659A489939
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Mar 2020 17:46:01 +0000 (UTC)
IronPort-SDR: CLuyQ1HxlazymaFp/NWh+21vEfo64Mp0tmBOTMO1sJiKtteeDcIVX3ltcQ0hNdC2RDfwfgH5Xj
 M3SY3d6pvTsg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2020 10:46:00 -0700
IronPort-SDR: J7J6f+js/JVysLiopBGPRm4DKfO3Fc4G/9PDwPIYrQqfyHfYf6cElFezLzdXHFFgZ13d2PMCaa
 FqU2rsrsS27w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,309,1580803200"; d="scan'208";a="394087290"
Received: from fmsmsx107.amr.corp.intel.com ([10.18.124.205])
 by orsmga004.jf.intel.com with ESMTP; 26 Mar 2020 10:46:00 -0700
Received: from FMSMSX110.amr.corp.intel.com (10.18.116.10) by
 fmsmsx107.amr.corp.intel.com (10.18.124.205) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 26 Mar 2020 10:46:00 -0700
Received: from bgsmsx101.gar.corp.intel.com (10.223.4.170) by
 fmsmsx110.amr.corp.intel.com (10.18.116.10) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 26 Mar 2020 10:45:59 -0700
Received: from bgsmsx104.gar.corp.intel.com ([169.254.5.111]) by
 BGSMSX101.gar.corp.intel.com ([169.254.1.153]) with mapi id 14.03.0439.000;
 Thu, 26 Mar 2020 23:15:55 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: =?utf-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Thread-Topic: [PATCH] drm/i915/display: Fix mode private_flags comparison at
 atomic_check
Thread-Index: AQHWAz9GOT9ay/vT0UKyob+RMOJ90KhasUOAgABz7oA=
Date: Thu, 26 Mar 2020 17:45:55 +0000
Message-ID: <E7C9878FBA1C6D42A1CA3F62AEB6945F8243CBEC@BGSMSX104.gar.corp.intel.com>
References: <20200326074928.10395-1-uma.shankar@intel.com>
 <20200326161701.GD13686@intel.com>
In-Reply-To: <20200326161701.GD13686@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.223.10.10]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Fix mode private_flags
 comparison at atomic_check
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
Cc: "Khor, Swee Aun" <swee.aun.khor@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogVmlsbGUgU3lyasOkbMOk
IDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gU2VudDogVGh1cnNkYXksIE1hcmNo
IDI2LCAyMDIwIDk6NDcgUE0NCj4gVG86IFNoYW5rYXIsIFVtYSA8dW1hLnNoYW5rYXJAaW50ZWwu
Y29tPg0KPiBDYzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZzsgTWFhcnRlbiBMYW5r
aG9yc3QNCj4gPG1hYXJ0ZW4ubGFua2hvcnN0QGxpbnV4LmludGVsLmNvbT47IEthaSBWZWhtYW5l
bg0KPiA8a2FpLnZlaG1hbmVuQGxpbnV4LmludGVsLmNvbT47IFNvdXphOyBTb3V6YSwgSm9zZSA8
am9zZS5zb3V6YUBpbnRlbC5jb20+Ow0KPiBLaG9yLCBTd2VlIEF1biA8c3dlZS5hdW4ua2hvckBp
bnRlbC5jb20+DQo+IFN1YmplY3Q6IFJlOiBbUEFUQ0hdIGRybS9pOTE1L2Rpc3BsYXk6IEZpeCBt
b2RlIHByaXZhdGVfZmxhZ3MgY29tcGFyaXNvbiBhdA0KPiBhdG9taWNfY2hlY2sNCj4gDQo+IE9u
IFRodSwgTWFyIDI2LCAyMDIwIGF0IDAxOjE5OjI4UE0gKzA1MzAsIFVtYSBTaGFua2FyIHdyb3Rl
Og0KPiA+IFRoaXMgcGF0Y2ggZml4ZXMgdGhlIHByaXZhdGVfZmxhZ3Mgb2YgbW9kZSB0byBiZSBj
aGVja2VkIGFuZCBjb21wYXJlZA0KPiA+IGFnYWluc3QgdWFwaS5tb2RlIGFuZCBub3QgZnJvbSBo
dy5tb2RlLiBUaGlzIGhlbHBzIHByb3Blcmx5IHRyaWdnZXINCj4gPiBtb2Rlc2V0IGF0IGJvb3Qg
aWYgZGVzaXJlZCBieSBkcml2ZXIuDQo+ID4NCj4gPiBJdCBoZWxwcyByZXNvbHZlIGF1ZGlvX2Nv
ZGVjIGluaXRpYWxpemF0aW9uIGlzc3VlcyBpZiBkaXNwbGF5IGlzDQo+ID4gY29ubmVjdGVkIGF0
IGJvb3QuIEluaXRpYWwgZGlzY3Vzc2lvbiBvbiB0aGlzIGlzc3VlIGhhcyBoYXBwZW5lZCBvbg0K
PiA+IGJlbG93IHRocmVhZDoNCj4gPiBodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcv
c2VyaWVzLzc0ODI4Lw0KPiA+DQo+ID4gRml4ZXM6IGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9w
Lm9yZy9kcm0vaW50ZWwvaXNzdWVzLzEzNjMNCj4gPg0KPiA+IENjOiBWaWxsZSBTeXJqw6QgPHZp
bGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiA+IENjOiBNYWFydGVuIExhbmtob3JzdCA8
bWFhcnRlbi5sYW5raG9yc3RAbGludXguaW50ZWwuY29tPg0KPiA+IENjOiBLYWkgVmVobWFuZW4g
PGthaS52ZWhtYW5lbkBsaW51eC5pbnRlbC5jb20+DQo+ID4gQ2M6IFNvdXphLCBKb3NlIDxqb3Nl
LnNvdXphQGludGVsLmNvbT4NCj4gPiBTdWdnZXN0ZWQtYnk6IFZpbGxlIFN5cmrDpCA8dmlsbGUu
c3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+IA0KPiBObyBvbmUgYnkgdGhhdCBuYW1lIGhlcmUu
DQoNCkNvcGllZCB0aGlzIGZyb20gYW4gZXhpc3RpbmcgcmVmZXJlbmNlLCBub3Qgc3VyZSBob3cg
c29tZSBjaGFyYWN0ZXJzDQpnb3QgbWVzc2VkIHVwIOKYuQ0KDQo+ID4gU2lnbmVkLW9mZi1ieTog
VW1hIFNoYW5rYXIgPHVtYS5zaGFua2FyQGludGVsLmNvbT4NCj4gPiBTaWduZWQtb2ZmLWJ5OiBT
d2VlQXVuIEtob3IgPHN3ZWUuYXVuLmtob3JAaW50ZWwuY29tPg0KPiA+IC0tLQ0KPiA+ICBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyB8IDQgKystLQ0KPiA+ICAx
IGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQ0KPiA+DQo+ID4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5j
DQo+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0KPiA+
IGluZGV4IGZlNTVjN2M3MTNmMS4uZTYzMDQyOWFmMmMwIDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+ID4gKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4gPiBAQCAtMTQ3NDcsOCAr
MTQ3NDcsOCBAQCBzdGF0aWMgaW50IGludGVsX2F0b21pY19jaGVjayhzdHJ1Y3QgZHJtX2Rldmlj
ZSAqZGV2LA0KPiA+ICAJLyogQ2F0Y2ggSTkxNV9NT0RFX0ZMQUdfSU5IRVJJVEVEICovDQo+ID4g
IAlmb3JfZWFjaF9vbGRuZXdfaW50ZWxfY3J0Y19pbl9zdGF0ZShzdGF0ZSwgY3J0Yywgb2xkX2Ny
dGNfc3RhdGUsDQo+ID4gIAkJCQkJICAgIG5ld19jcnRjX3N0YXRlLCBpKSB7DQo+ID4gLQkJaWYg
KG5ld19jcnRjX3N0YXRlLT5ody5tb2RlLnByaXZhdGVfZmxhZ3MgIT0NCj4gPiAtCQkgICAgb2xk
X2NydGNfc3RhdGUtPmh3Lm1vZGUucHJpdmF0ZV9mbGFncykNCj4gPiArCQlpZiAobmV3X2NydGNf
c3RhdGUtPnVhcGkubW9kZS5wcml2YXRlX2ZsYWdzICE9DQo+ID4gKwkJICAgIG9sZF9jcnRjX3N0
YXRlLT51YXBpLm1vZGUucHJpdmF0ZV9mbGFncykNCj4gPiAgCQkJbmV3X2NydGNfc3RhdGUtPnVh
cGkubW9kZV9jaGFuZ2VkID0gdHJ1ZTsNCj4gPiAgCX0NCj4gPg0KPiA+IC0tDQo+ID4gMi4yMi4w
DQo+IA0KPiAtLQ0KPiBWaWxsZSBTeXJqw6Rsw6QNCj4gSW50ZWwNCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
