Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EE835AB71A
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Sep 2019 13:26:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5385F6E24E;
	Fri,  6 Sep 2019 11:26:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4B3146E24E
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Sep 2019 11:26:36 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Sep 2019 04:26:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,472,1559545200"; d="scan'208";a="384184098"
Received: from irsmsx108.ger.corp.intel.com ([163.33.3.3])
 by fmsmga006.fm.intel.com with ESMTP; 06 Sep 2019 04:26:34 -0700
Received: from irsmsx155.ger.corp.intel.com (163.33.192.3) by
 IRSMSX108.ger.corp.intel.com (163.33.3.3) with Microsoft SMTP Server (TLS) id
 14.3.439.0; Fri, 6 Sep 2019 12:26:34 +0100
Received: from irsmsx106.ger.corp.intel.com ([169.254.8.187]) by
 irsmsx155.ger.corp.intel.com ([169.254.14.248]) with mapi id 14.03.0439.000;
 Fri, 6 Sep 2019 12:26:33 +0100
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Landwerlin, Lionel G" <lionel.g.landwerlin@intel.com>
Thread-Topic: [Intel-gfx] [PATCH v1] drm/i915: List modes, regardless of
 encoder presence
Thread-Index: AQHVZKSGZAf+ubia+EKSF+5/lHA21qcecPeAgAAAQ4A=
Date: Fri, 6 Sep 2019 11:26:33 +0000
Message-ID: <a95b8979e36f2f88425c38235701fb865d4f7fbd.camel@intel.com>
References: <20190906111413.7738-1-stanislav.lisovskiy@intel.com>
 <b550721c-5303-0f07-4126-9d3adfa968c8@intel.com>
In-Reply-To: <b550721c-5303-0f07-4126-9d3adfa968c8@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.237.72.89]
Content-ID: <D8A215D8DB686A43A2A230C2562CAE6E@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v1] drm/i915: List modes,
 regardless of encoder presence
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
Cc: "Peres, Martin" <martin.peres@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCAyMDE5LTA5LTA2IGF0IDE0OjIzICswMzAwLCBMaW9uZWwgTGFuZHdlcmxpbiB3cm90
ZToNCj4gT24gMDYvMDkvMjAxOSAxNDoxNCwgU3RhbmlzbGF2IExpc292c2tpeSB3cm90ZToNCj4g
PiBJbiBjZXJ0YWluIHNpdHVhdGlvbnMgZW5jb2RlciBtaWdodCBiZSBub3QgcHJlc2VudCBmb3Ig
Y29ubmVjdG9yLA0KPiA+IGhvd2V2ZXIgbWlnaHQgYmUgdXNlZnVsIHRvIGRpc3BsYXQgcHJvYmVk
IG1vZGVzIGZvciB0aGUgY29ubmVjdG9yLA0KPiANCj4gcy9kaXNwbGF0L2Rpc3BsYXkvDQoNClRo
YW5rcyEgOikNCg0KLSBTdGFuaXNsYXYNCj4gDQo+IA0KPiA+IGlmIGFueS4NCj4gPiANCj4gPiBT
aWduZWQtb2ZmLWJ5OiBTdGFuaXNsYXYgTGlzb3Zza2l5IDxzdGFuaXNsYXYubGlzb3Zza2l5QGlu
dGVsLmNvbT4NCj4gDQo+IFRlc3RlZC1ieTogTGlvbmVsIExhbmR3ZXJsaW4gPGxpb25lbC5nLmxh
bmR3ZXJsaW5AaW50ZWwuY29tPg0KPiA+IC0tLQ0KPiA+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9kZWJ1Z2ZzLmMgfCA4ICsrKystLS0tDQo+ID4gICAxIGZpbGUgY2hhbmdlZCwgNCBpbnNl
cnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQ0KPiA+IA0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X2RlYnVnZnMuYw0KPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9kZWJ1Z2ZzLmMNCj4gPiBpbmRleCA5Nzk4ZjI3YTY5N2EuLjhmYTA1MTBlODk3ZiAxMDA2
NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RlYnVnZnMuYw0KPiA+ICsr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZGVidWdmcy5jDQo+ID4gQEAgLTI1NzQsNiAr
MjU3NCwxMCBAQCBzdGF0aWMgdm9pZCBpbnRlbF9jb25uZWN0b3JfaW5mbyhzdHJ1Y3QNCj4gPiBz
ZXFfZmlsZSAqbSwNCj4gPiAgIAkJICAgZHJtX2dldF9zdWJwaXhlbF9vcmRlcl9uYW1lKGNvbm5l
Y3Rvci0NCj4gPiA+ZGlzcGxheV9pbmZvLnN1YnBpeGVsX29yZGVyKSk7DQo+ID4gICAJc2VxX3By
aW50ZihtLCAiXHRDRUEgcmV2OiAlZFxuIiwgY29ubmVjdG9yLQ0KPiA+ID5kaXNwbGF5X2luZm8u
Y2VhX3Jldik7DQo+ID4gICANCj4gPiArCXNlcV9wcmludGYobSwgIlx0bW9kZXM6XG4iKTsNCj4g
PiArCWxpc3RfZm9yX2VhY2hfZW50cnkobW9kZSwgJmNvbm5lY3Rvci0+bW9kZXMsIGhlYWQpDQo+
ID4gKwkJaW50ZWxfc2VxX3ByaW50X21vZGUobSwgMiwgbW9kZSk7DQo+ID4gKw0KPiA+ICAgCWlm
ICghaW50ZWxfZW5jb2RlcikNCj4gPiAgIAkJcmV0dXJuOw0KPiA+ICAgDQo+ID4gQEAgLTI1OTcs
MTAgKzI2MDEsNiBAQCBzdGF0aWMgdm9pZCBpbnRlbF9jb25uZWN0b3JfaW5mbyhzdHJ1Y3QNCj4g
PiBzZXFfZmlsZSAqbSwNCj4gPiAgIAlkZWZhdWx0Og0KPiA+ICAgCQlicmVhazsNCj4gPiAgIAl9
DQo+ID4gLQ0KPiA+IC0Jc2VxX3ByaW50ZihtLCAiXHRtb2RlczpcbiIpOw0KPiA+IC0JbGlzdF9m
b3JfZWFjaF9lbnRyeShtb2RlLCAmY29ubmVjdG9yLT5tb2RlcywgaGVhZCkNCj4gPiAtCQlpbnRl
bF9zZXFfcHJpbnRfbW9kZShtLCAyLCBtb2RlKTsNCj4gPiAgIH0NCj4gPiAgIA0KPiA+ICAgc3Rh
dGljIGNvbnN0IGNoYXIgKnBsYW5lX3R5cGUoZW51bSBkcm1fcGxhbmVfdHlwZSB0eXBlKQ0KPiAN
Cj4gDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
