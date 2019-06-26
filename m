Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 413B75735A
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Jun 2019 23:11:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B8CCE6E50E;
	Wed, 26 Jun 2019 21:11:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A68E56E50E
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Jun 2019 21:11:51 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Jun 2019 14:11:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,421,1557212400"; d="scan'208";a="164088566"
Received: from fmsmsx106.amr.corp.intel.com ([10.18.124.204])
 by fmsmga007.fm.intel.com with ESMTP; 26 Jun 2019 14:11:50 -0700
Received: from fmsmsx113.amr.corp.intel.com (10.18.116.7) by
 FMSMSX106.amr.corp.intel.com (10.18.124.204) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 26 Jun 2019 14:11:51 -0700
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.210]) by
 FMSMSX113.amr.corp.intel.com ([169.254.13.157]) with mapi id 14.03.0439.000;
 Wed, 26 Jun 2019 14:11:50 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>
Thread-Topic: [PATCH 5/5] drm/i915/ehl: Enable DDI-D
Thread-Index: AQHVJ9Vavvt3eUlB7k2Yyw4drzNCWqanDBeAgAZhnACAAX+FAA==
Date: Wed, 26 Jun 2019 21:11:50 +0000
Message-ID: <d8db24f30f88cec8ff29d99aff271e030f8f4674.camel@intel.com>
References: <20190621020132.1164-1-matthew.d.roper@intel.com>
 <20190621020132.1164-6-matthew.d.roper@intel.com>
 <07f22ed3e9c2e555ec6472f1dfc72788fe64a700.camel@intel.com>
 <20190625221910.GI24125@mdroper-desk.amr.corp.intel.com>
In-Reply-To: <20190625221910.GI24125@mdroper-desk.amr.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.8.250]
Content-ID: <D4F592E637A6CC4D883991A44747DC2E@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 5/5] drm/i915/ehl: Enable DDI-D
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.23
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCAyMDE5LTA2LTI1IGF0IDE1OjE5IC0wNzAwLCBNYXR0IFJvcGVyIHdyb3RlOg0KPiBP
biBGcmksIEp1biAyMSwgMjAxOSBhdCAwMTo1MjoxNlBNIC0wNzAwLCBTb3V6YSwgSm9zZSB3cm90
ZToNCj4gPiBPbiBUaHUsIDIwMTktMDYtMjAgYXQgMTk6MDEgLTA3MDAsIE1hdHQgUm9wZXIgd3Jv
dGU6DQo+ID4gPiBFSEwgaGFzIGZvdXIgRERJJ3MgKERESS1BIGFuZCBEREktRCBzaGFyZSBjb21i
byBQSFkgQSkuDQo+ID4gPiANCj4gPiA+IENjOiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3Nl
LnNvdXphQGludGVsLmNvbT4NCj4gPiA+IFNpZ25lZC1vZmYtYnk6IE1hdHQgUm9wZXIgPG1hdHRo
ZXcuZC5yb3BlckBpbnRlbC5jb20+DQo+ID4gPiAtLS0NCj4gPiA+ICBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyB8IDEgKw0KPiA+ID4gIDEgZmlsZSBjaGFuZ2Vk
LCAxIGluc2VydGlvbigrKQ0KPiA+ID4gDQo+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4gPiA+IGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4gPiA+IGluZGV4IGU3MmFjZTQyMzI3Yy4u
NzRjZDE4MDM2MGY0IDEwMDY0NA0KPiA+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kaXNwbGF5LmMNCj4gPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+ID4gPiBAQCAtMTUxMjgsNiArMTUxMjgsNyBAQCBzdGF0
aWMgdm9pZCBpbnRlbF9zZXR1cF9vdXRwdXRzKHN0cnVjdA0KPiA+ID4gZHJtX2k5MTVfcHJpdmF0
ZSAqZGV2X3ByaXYpDQo+ID4gPiAgCQlpbnRlbF9kZGlfaW5pdChkZXZfcHJpdiwgUE9SVF9BKTsN
Cj4gPiA+ICAJCWludGVsX2RkaV9pbml0KGRldl9wcml2LCBQT1JUX0IpOw0KPiA+ID4gIAkJaW50
ZWxfZGRpX2luaXQoZGV2X3ByaXYsIFBPUlRfQyk7DQo+ID4gPiArCQlpbnRlbF9kZGlfaW5pdChk
ZXZfcHJpdiwgUE9SVF9EKTsNCj4gPiANCj4gPiBIZXJlIHdlIHNob3VsZCBvbmx5IGluaXRpYWxp
emUgb25seSB0aGUgb25lIHRoYXQgaXMgZ29pbmcgdG8gYmUNCj4gPiB1c2VkIEENCj4gPiBvciBE
IGF0IHRoaXMgcG9pbnQgd2UgYWxyZWFkeSBoYXZlIHRoYXQgaW5mb3JtYXRpb24gYW5kIHRoZSBt
dXgNCj4gPiBzZXQuDQo+IA0KPiBEb2Vzbid0IGludGVsX2RkaV9pbml0KCkgYWxyZWFkeSB0YWtl
IGNhcmUgb2YgdGhpcyBmb3IgdXM/ICBJLmUuLA0KPiBpbml0X2hkbWkgYW5kIGluaXRfZHAgd2ls
bCBib3RoIGJlIGZhbHNlIGZvciB3aGljaGV2ZXIgRERJIGlzbid0IGluDQo+IHVzZQ0KPiBzbyB0
aGUgZnVuY3Rpb24gc2hvdWxkIGp1c3QgYmFpbCBvdXQgd2l0aCBhIERSTV9ERUJVR19LTVMoKSBt
ZXNzYWdlDQo+IGFuZA0KPiBub3QgcmVhbGx5IGRvIGFueXRoaW5nIGlmIEknbSB1bmRlcnN0YW5k
aW5nIGNvcnJlY3RseS4NCg0KR29vZCBwb2ludCwgbGV0cyBob3BlIHRoYXQgVkJUIGlzIHNldCB0
aGlzIGNsZWFuLg0KDQo+IA0KPiANCj4gTWF0dA0KPiANCj4gPiA+ICAJCWljbF9kc2lfaW5pdChk
ZXZfcHJpdik7DQo+ID4gPiAgCX0gZWxzZSBpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSAxMSkg
ew0KPiA+ID4gIAkJaW50ZWxfZGRpX2luaXQoZGV2X3ByaXYsIFBPUlRfQSk7DQpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
