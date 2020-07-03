Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B6F3B213913
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Jul 2020 13:05:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 747446EB56;
	Fri,  3 Jul 2020 11:05:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B5B656EB56
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Jul 2020 11:05:27 +0000 (UTC)
IronPort-SDR: EDgBaJX+jy2ILsRFVb5+1yQVDPuBw5umk1i9gnUJ4XvXJ95sk4IqISobopg56BYtP+d76BJvfW
 J2hGQOtoTp0A==
X-IronPort-AV: E=McAfee;i="6000,8403,9670"; a="208645088"
X-IronPort-AV: E=Sophos;i="5.75,308,1589266800"; d="scan'208";a="208645088"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jul 2020 04:05:27 -0700
IronPort-SDR: DC39yHGa4dTNPf2TmUstTE87+kVXZ+GwOrJb4iey+c8woQTH71ahuDPqKatqUL+PL4Vby3pEH3
 VjMli4sTRBaQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,308,1589266800"; d="scan'208";a="296183758"
Received: from orsmsx109.amr.corp.intel.com ([10.22.240.7])
 by orsmga002.jf.intel.com with ESMTP; 03 Jul 2020 04:05:27 -0700
Received: from orsmsx107.amr.corp.intel.com ([169.254.1.92]) by
 ORSMSX109.amr.corp.intel.com ([169.254.11.7]) with mapi id 14.03.0439.000;
 Fri, 3 Jul 2020 04:05:26 -0700
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: "Souza, Jose" <jose.souza@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v3 1/3] drm/i915/bios: Parse HOBL parameter
Thread-Index: AQHWSoeDdSVxMdKoFUqBl7jsI/BhzKj1vjQw
Date: Fri, 3 Jul 2020 11:05:26 +0000
Message-ID: <83F5C7385F545743AD4FB2A62F75B0734C6BDF26@ORSMSX107.amr.corp.intel.com>
References: <20200625002906.116594-1-jose.souza@intel.com>
In-Reply-To: <20200625002906.116594-1-jose.souza@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v3 1/3] drm/i915/bios: Parse HOBL parameter
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
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBKb3PDqQ0K
PiBSb2JlcnRvIGRlIFNvdXphDQo+IFNlbnQ6IFRodXJzZGF5LCBKdW5lIDI1LCAyMDIwIDU6NTkg
QU0NCj4gVG86IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gU3ViamVjdDogW0lu
dGVsLWdmeF0gW1BBVENIIHYzIDEvM10gZHJtL2k5MTUvYmlvczogUGFyc2UgSE9CTCBwYXJhbWV0
ZXINCj4gDQo+IEhPQkwgbWVhbnMgaG91cnMgb2YgYmF0dGVyeSBsaWZlLCBpdCBpcyBhIHBvd2Vy
LXNhdmluZyBmZWF0dXJlIHdlcmUNCj4gc3VwcG9ydGVkIG1vdGhlcmJvYXJkcyBjYW4gdXNlIGEg
c3BlY2lhbCB2b2x0YWdlIHN3aW5nIHRhYmxlIHRoYXQgdXNlcw0KPiBsZXNzIHBvd2VyLg0KPiAN
Cj4gU28gaGVyZSBwYXJzaW5nIHRoZSBWQlQgdG8gY2hlY2sgaWYgdGhpcyBmZWF0dXJlIGlzIHN1
cHBvcnRlZC4NCj4gDQo+IEJTcGVjOiAyMDE1MA0KPiBTaWduZWQtb2ZmLWJ5OiBKb3PDqSBSb2Jl
cnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4NCg0KUmV2aWV3ZWQtYnk6IEFudXNo
YSBTcml2YXRzYSA8YW51c2hhLnNyaXZhdHNhQGludGVsLmNvbT4NCg0KPiAtLS0NCj4gIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5jICAgICB8IDMgKysrDQo+ICBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3ZidF9kZWZzLmggfCAxICsNCj4gIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmggICAgICAgICAgICAgICB8IDEgKw0KPiAgMyBmaWxl
cyBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKykNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfYmlvcy5jDQo+IGluZGV4IDY1OTNlMmMzODA0My4uYzUzYzg1ZDM4ZmE1
IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3Mu
Yw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuYw0KPiBA
QCAtNzIyLDYgKzcyMiw5IEBAIHBhcnNlX3Bvd2VyX2NvbnNlcnZhdGlvbl9mZWF0dXJlcyhzdHJ1
Y3QNCj4gZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsDQo+ICAJICovDQo+ICAJaWYgKCEocG93
ZXItPmRycnMgJiBCSVQocGFuZWxfdHlwZSkpKQ0KPiAgCQlkZXZfcHJpdi0+dmJ0LmRycnNfdHlw
ZSA9IERSUlNfTk9UX1NVUFBPUlRFRDsNCj4gKw0KPiArCWlmIChiZGItPnZlcnNpb24gPj0gMjMy
KQ0KPiArCQlkZXZfcHJpdi0+dmJ0LmVkcC5ob2JsID0gcG93ZXItPmhvYmwgJiBCSVQocGFuZWxf
dHlwZSk7DQo+ICB9DQo+IA0KPiAgc3RhdGljIHZvaWQNCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdmJ0X2RlZnMuaA0KPiBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfdmJ0X2RlZnMuaA0KPiBpbmRleCBhZWY3ZmU5MzJkMWEuLjZm
YWFiZDRmNmQ0OSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF92YnRfZGVmcy5oDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfdmJ0X2RlZnMuaA0KPiBAQCAtODIwLDYgKzgyMCw3IEBAIHN0cnVjdCBiZGJfbGZwX3Bvd2Vy
IHsNCj4gIAl1MTYgYWRiOw0KPiAgCXUxNiBsYWNlX2VuYWJsZWRfc3RhdHVzOw0KPiAgCXN0cnVj
dCBhZ3Jlc3NpdmVuZXNzX3Byb2ZpbGVfZW50cnkgYWdncmVzc2l2ZW5lc1sxNl07DQo+ICsJdTE2
IGhvYmw7IC8qIDIzMisgKi8NCj4gIH0gX19wYWNrZWQ7DQo+IA0KPiAgLyoNCj4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgNCj4gYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X2Rydi5oIGluZGV4IDlhYWQzZWM5NzliZC4uMTY2OTJjOTQzNTFhDQo+IDEwMDY0
NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oDQo+ICsrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgNCj4gQEAgLTY5MCw2ICs2OTAsNyBAQCBzdHJ1Y3Qg
aW50ZWxfdmJ0X2RhdGEgew0KPiAgCQlib29sIGluaXRpYWxpemVkOw0KPiAgCQlpbnQgYnBwOw0K
PiAgCQlzdHJ1Y3QgZWRwX3Bvd2VyX3NlcSBwcHM7DQo+ICsJCWJvb2wgaG9ibDsNCj4gIAl9IGVk
cDsNCj4gDQo+ICAJc3RydWN0IHsNCj4gLS0NCj4gMi4yNy4wDQo+IA0KPiBfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KPiBJbnRlbC1nZnggbWFpbGluZyBs
aXN0DQo+IEludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngNCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
