Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 29FA6F9511
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Nov 2019 17:05:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1DE526E4A1;
	Tue, 12 Nov 2019 16:04:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DAE796E4A1
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Nov 2019 16:04:56 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Nov 2019 08:04:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,297,1569308400"; d="scan'208";a="202456603"
Received: from irsmsx105.ger.corp.intel.com ([163.33.3.28])
 by fmsmga008.fm.intel.com with ESMTP; 12 Nov 2019 08:04:55 -0800
Received: from irsmsx106.ger.corp.intel.com ([169.254.8.185]) by
 irsmsx105.ger.corp.intel.com ([169.254.7.210]) with mapi id 14.03.0439.000;
 Tue, 12 Nov 2019 16:04:54 +0000
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>
Thread-Topic: [Intel-gfx] [PATCH v10 1/2] drm/i915: Refactor
 intel_can_enable_sagv
Thread-Index: AQHVlYC4yFozoOUZBEqRQJ9E4oCKN6eGsY2AgAEIjoA=
Date: Tue, 12 Nov 2019 16:04:53 +0000
Message-ID: <f97dc6e46e21010c53d121f4494c22c02888223f.camel@intel.com>
References: <20191107153037.17640-1-stanislav.lisovskiy@intel.com>
 <20191107153037.17640-2-stanislav.lisovskiy@intel.com>
 <20191112001525.GB2262@mdroper-desk1.amr.corp.intel.com>
In-Reply-To: <20191112001525.GB2262@mdroper-desk1.amr.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.237.72.89]
Content-ID: <5E98B8ED994E9141B32A57563C611938@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v10 1/2] drm/i915: Refactor
 intel_can_enable_sagv
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

T24gTW9uLCAyMDE5LTExLTExIGF0IDE2OjE1IC0wODAwLCBNYXR0IFJvcGVyIHdyb3RlOg0KPiBP
biBUaHUsIE5vdiAwNywgMjAxOSBhdCAwNTozMDozNlBNICswMjAwLCBTdGFuaXNsYXYgTGlzb3Zz
a2l5IHdyb3RlOg0KPiA+IEN1cnJlbnRseSBpbnRlbF9jYW5fZW5hYmxlX3NhZ3YgZnVuY3Rpb24g
Y29udGFpbnMNCj4gPiBhIG1peCBvZiB3b3JrYXJvdW5kcyBmb3IgZGlmZmVyZW50IHBsYXRmb3Jt
cw0KPiA+IHNvbWUgb2YgdGhlbSBhcmUgbm90IHZhbGlkIGZvciBnZW5zID49IDExIGFscmVhZHks
DQo+ID4gc28gbGV0cyBzcGxpdCBpdCBpbnRvIHNlcGFyYXRlIGZ1bmN0aW9ucy4NCj4gPiANCj4g
PiB2MjoNCj4gPiAgICAgLSBSZXdvcmsgd2F0ZXJtYXJrIGNhbGN1bGF0aW9uIGFsZ29yaXRobSB0
bw0KPiA+ICAgICAgIGF0dGVtcHQgdG8gY2FsY3VsYXRlIExldmVsIDAgd2F0ZXJtYXJrDQo+ID4g
ICAgICAgd2l0aCBhZGRlZCBzYWd2IGJsb2NrIHRpbWUgbGF0ZW5jeSBhbmQNCj4gPiAgICAgICBj
aGVjayBpZiBpdCBmaXRzIGluIERCdWYgaW4gb3JkZXIgdG8NCj4gPiAgICAgICBkZXRlcm1pbmUg
aWYgU0FHViBjYW4gYmUgZW5hYmxlZCBhbHJlYWR5DQo+ID4gICAgICAgYXQgdGhpcyBzdGFnZSwg
anVzdCBhcyBCU3BlYyA0OTMyNSBzdGF0ZXMuDQo+ID4gICAgICAgaWYgdGhhdCBmYWlscyByb2xs
YmFjayB0byB1c3VhbCBMZXZlbCAwDQo+ID4gICAgICAgbGF0ZW5jeSBhbmQgZGlzYWJsZSBTQUdW
Lg0KPiA+ICAgICAtIFJlbW92ZSB1bm5lZWRlZCB0YWJzKEphbWVzIEF1c211cykNCj4gPiANCj4g
PiB2MzogUmViYXNlZCB0aGUgcGF0Y2gNCj4gPiANCj4gPiB2NDogLSBBZGRlZCBiYWNrIGludGVy
bGFjZWQgY2hlY2sgZm9yIEdlbjEyIGFuZA0KPiA+ICAgICAgIGFkZGVkIHNlcGFyYXRlIGZ1bmN0
aW9uIGZvciBUR0wgU0FHViBjaGVjaw0KPiA+ICAgICAgICh0aGFua3MgdG8gSmFtZXMgQXVzbXVz
IGZvciBzcG90dGluZykNCj4gPiAgICAgLSBSZW1vdmVkIHVubmVlZGVkIGdlbiBjaGVjaw0KPiA+
ICAgICAtIEV4dHJhY3RlZCBHZW4xMiBTQUdWIGRlY2lzaW9uIG1ha2luZyBjb2RlDQo+ID4gICAg
ICAgdG8gYSBzZXBhcmF0ZSBmdW5jdGlvbiBmcm9tIHNrbF9jb21wdXRlX3dtDQo+ID4gDQo+ID4g
djU6IC0gQWRkZWQgU0FHViBnbG9iYWwgc3RhdGUgdG8gZGV2X3ByaXYsIGJlY2F1c2UNCj4gPiAg
ICAgICB3ZSBuZWVkIHRvIHRyYWNrIGFsbCBwaXBlcywgbm90IG9ubHkgdGhvc2UNCj4gPiAgICAg
ICBpbiBhdG9taWMgc3RhdGUuIEVhY2ggcGlwZSBoYXMgbm93IGNvcnJlc3BvbmRlbnQNCj4gPiAg
ICAgICBiaXQgbWFzayByZWZsZWN0aW5nLCB3aGV0aGVyIGl0IGNhbiB0b2xlcmF0ZQ0KPiA+ICAg
ICAgIFNBR1Ygb3Igbm90KHRoYW5rcyB0byBWaWxsZSBTeXJqYWxhIGZvciBzdWdnZXN0aW9ucyku
DQo+ID4gICAgIC0gTm93IHVzaW5nIGFjdGl2ZSBmbGFnIGluc3RlYWQgb2YgZW5hYmxlIGluIGNy
Yw0KPiA+ICAgICAgIHVzYWdlIGNoZWNrLg0KPiA+IA0KPiA+IHY2OiAtIEZpeGVkIHJlYmFzZSBj
b25mbGljdHMNCj4gPiANCj4gPiBTaWduZWQtb2ZmLWJ5OiBTdGFuaXNsYXYgTGlzb3Zza2l5IDxz
dGFuaXNsYXYubGlzb3Zza2l5QGludGVsLmNvbT4NCj4gPiBDYzogVmlsbGUgU3lyasOkbMOkIDx2
aWxsZS5zeXJqYWxhQGludGVsLmNvbT4NCj4gPiBDYzogSmFtZXMgQXVzbXVzIDxqYW1lcy5hdXNt
dXNAaW50ZWwuY29tPg0KPiA+IC0tLQ0KPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2Rpc3BsYXkuYyAgfCAgIDQgKw0KPiA+ICAuLi4vZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kaXNwbGF5X3R5cGVzLmggICAgfCAgIDkgKw0KPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X2Rydi5oICAgICAgICAgICAgICAgfCAgIDYgKw0KPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9pbnRlbF9wbS5jICAgICAgICAgICAgICAgfCAyOTYNCj4gPiArKysrKysrKysrKysrKysrKy0N
Cj4gPiAgNCBmaWxlcyBjaGFuZ2VkLCAzMDMgaW5zZXJ0aW9ucygrKSwgMTIgZGVsZXRpb25zKC0p
DQo+ID4gDQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGlzcGxheS5jDQo+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rp
c3BsYXkuYw0KPiA+IGluZGV4IDg3NmZjMjU5NjhiZi4uN2VhMWU3NTE4YWI2IDEwMDY0NA0KPiA+
IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+ID4g
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4gPiBA
QCAtMTQ4NTUsNiArMTQ4NTUsMTAgQEAgc3RhdGljIHZvaWQNCj4gPiBpbnRlbF9hdG9taWNfY29t
bWl0X3RhaWwoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUpDQo+ID4gIAkJaWYgKGRl
dl9wcml2LT5kaXNwbGF5Lm9wdGltaXplX3dhdGVybWFya3MpDQo+ID4gIAkJCWRldl9wcml2LT5k
aXNwbGF5Lm9wdGltaXplX3dhdGVybWFya3Moc3RhdGUsDQo+ID4gIAkJCQkJCQkgICAgICBuZXdf
Y3J0Y18NCj4gPiBzdGF0ZSk7DQo+ID4gKwkJaWYgKHN0YXRlLT5jcnRjX3NhZ3ZfbWFzayAmIEJJ
VChjcnRjLT5waXBlKSkNCj4gPiArCQkJZGV2X3ByaXYtPmNydGNfc2Fndl9tYXNrIHw9IEJJVChj
cnRjLT5waXBlKTsNCj4gPiArCQllbHNlDQo+ID4gKwkJCWRldl9wcml2LT5jcnRjX3NhZ3ZfbWFz
ayAmPSB+QklUKGNydGMtPnBpcGUpOw0KPiA+ICAJfQ0KPiA+ICANCj4gPiAgCWZvcl9lYWNoX29s
ZG5ld19pbnRlbF9jcnRjX2luX3N0YXRlKHN0YXRlLCBjcnRjLA0KPiA+IG9sZF9jcnRjX3N0YXRl
LCBuZXdfY3J0Y19zdGF0ZSwgaSkgew0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaA0KPiA+IGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgNCj4gPiBpbmRleCBmYWRkOTg1M2Y5
NjYuLmZiMjc0NTM4YWYyMyAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaA0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oDQo+ID4gQEAgLTQ5MCw2ICs0OTAsMTQg
QEAgc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSB7DQo+ID4gIAkgKi8NCj4gPiAgCXU4IGFjdGl2
ZV9waXBlX2NoYW5nZXM7DQo+ID4gIA0KPiA+ICsJLyoNCj4gPiArCSAqIENvbnRhaW5zIGEgbWFz
ayB3aGljaCByZWZsZWN0cyB3aGV0aGVyIGNvcnJlc3BvbmRlbnQgcGlwZQ0KPiA+ICsJICogY2Fu
IHRvbGVyYXRlIFNBR1Ygb3Igbm90LCBzbyB0aGF0IHdlIGNhbiBtYWtlIGEgZGVjaXNpb24NCj4g
PiArCSAqIGF0IGF0b21pY19jb21taXRfdGFpbCBzdGFnZSwgd2hldGhlciB3ZSBlbmFibGUgaXQg
b3Igbm90DQo+ID4gKwkgKiBiYXNlZCBvbiBnbG9iYWwgc3RhdGUgaW4gZGV2X3ByaXYuDQo+ID4g
KwkgKi8NCj4gPiArCXUzMiBjcnRjX3NhZ3ZfbWFzazsNCj4gPiArDQo+ID4gIAl1OCBhY3RpdmVf
cGlwZXM7DQo+ID4gIAkvKiBtaW5pbXVtIGFjY2VwdGFibGUgY2RjbGsgZm9yIGVhY2ggcGlwZSAq
Lw0KPiA+ICAJaW50IG1pbl9jZGNsa1tJOTE1X01BWF9QSVBFU107DQo+ID4gQEAgLTY3MCw2ICs2
NzgsNyBAQCBzdHJ1Y3Qgc2tsX3BsYW5lX3dtIHsNCj4gPiAgCXN0cnVjdCBza2xfd21fbGV2ZWwg
d21bOF07DQo+ID4gIAlzdHJ1Y3Qgc2tsX3dtX2xldmVsIHV2X3dtWzhdOw0KPiA+ICAJc3RydWN0
IHNrbF93bV9sZXZlbCB0cmFuc193bTsNCj4gPiArCXN0cnVjdCBza2xfd21fbGV2ZWwgc2Fndl93
bTA7DQo+ID4gIAlib29sIGlzX3BsYW5hcjsNCj4gPiAgfTsNCj4gPiAgDQo+ID4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgNCj4gPiBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfZHJ2LmgNCj4gPiBpbmRleCA3ZTBmNjdiYWJlMjAuLjRmNGUyZTgzOTUxMyAx
MDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oDQo+ID4gKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaA0KPiA+IEBAIC0xMTc2LDYgKzExNzYs
MTIgQEAgc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgew0KPiA+ICANCj4gPiAgCXUzMiBzYWd2X2Js
b2NrX3RpbWVfdXM7DQo+ID4gIA0KPiA+ICsJLyoNCj4gPiArCSAqIENvbnRhaW5zIGEgYml0IG1h
c2ssIHdoZXRoZXIgY29ycmVzcG9uZGVudA0KPiA+ICsJICogcGlwZSBhbGxvd3MgU0FHViBvciBu
b3QuDQo+ID4gKwkgKi8NCj4gPiArCXUzMiBjcnRjX3NhZ3ZfbWFzazsNCj4gPiArDQo+ID4gIAlz
dHJ1Y3Qgew0KPiA+ICAJCS8qDQo+ID4gIAkJICogUmF3IHdhdGVybWFyayBsYXRlbmN5IHZhbHVl
czoNCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYw0KPiA+
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYw0KPiA+IGluZGV4IDJkMzg5ZTQzN2U4
Ny4uYzc5MmRkMTY4NzQyIDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2lu
dGVsX3BtLmMNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jDQo+ID4g
QEAgLTM3NDAsNyArMzc0MCw3IEBAIGludGVsX2Rpc2FibGVfc2FndihzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZQ0KPiA+ICpkZXZfcHJpdikNCj4gPiAgCXJldHVybiAwOw0KPiA+ICB9DQo+ID4gIA0K
PiA+IC1ib29sIGludGVsX2Nhbl9lbmFibGVfc2FndihzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRl
ICpzdGF0ZSkNCj4gPiArc3RhdGljIHZvaWQgc2tsX3NldF9zYWd2X21hc2soc3RydWN0IGludGVs
X2F0b21pY19zdGF0ZSAqc3RhdGUpDQo+ID4gIHsNCj4gPiAgCXN0cnVjdCBkcm1fZGV2aWNlICpk
ZXYgPSBzdGF0ZS0+YmFzZS5kZXY7DQo+ID4gIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2
X3ByaXYgPSB0b19pOTE1KGRldik7DQo+ID4gQEAgLTM3NTAsMjEgKzM3NTAsMjMgQEAgYm9vbCBp
bnRlbF9jYW5fZW5hYmxlX3NhZ3Yoc3RydWN0DQo+ID4gaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0
ZSkNCj4gPiAgCWVudW0gcGlwZSBwaXBlOw0KPiA+ICAJaW50IGxldmVsLCBsYXRlbmN5Ow0KPiA+
ICANCj4gPiArCXN0YXRlLT5jcnRjX3NhZ3ZfbWFzayA9IDA7DQo+ID4gKw0KPiA+ICAJaWYgKCFp
bnRlbF9oYXNfc2FndihkZXZfcHJpdikpDQo+ID4gLQkJcmV0dXJuIGZhbHNlOw0KPiA+ICsJCXJl
dHVybjsNCj4gPiAgDQo+ID4gIAkvKg0KPiA+ICAJICogSWYgdGhlcmUgYXJlIG5vIGFjdGl2ZSBD
UlRDcywgbm8gYWRkaXRpb25hbCBjaGVja3MgbmVlZCBiZQ0KPiA+IHBlcmZvcm1lZA0KPiA+ICAJ
ICovDQo+ID4gIAlpZiAoaHdlaWdodDgoc3RhdGUtPmFjdGl2ZV9waXBlcykgPT0gMCkNCj4gPiAt
CQlyZXR1cm4gdHJ1ZTsNCj4gPiArCQlyZXR1cm47DQo+ID4gIA0KPiA+ICAJLyoNCj4gPiAgCSAq
IFNLTCsgd29ya2Fyb3VuZDogYnNwZWMgcmVjb21tZW5kcyB3ZSBkaXNhYmxlIFNBR1Ygd2hlbiB3
ZQ0KPiA+IGhhdmUNCj4gPiAgCSAqIG1vcmUgdGhlbiBvbmUgcGlwZSBlbmFibGVkDQo+ID4gIAkg
Ki8NCj4gPiAgCWlmIChod2VpZ2h0OChzdGF0ZS0+YWN0aXZlX3BpcGVzKSA+IDEpDQo+ID4gLQkJ
cmV0dXJuIGZhbHNlOw0KPiA+ICsJCXJldHVybjsNCj4gPiAgDQo+ID4gIAkvKiBTaW5jZSB3ZSdy
ZSBub3cgZ3VhcmFudGVlZCB0byBvbmx5IGhhdmUgb25lIGFjdGl2ZSBDUlRDLi4uDQo+ID4gKi8N
Cj4gPiAgCXBpcGUgPSBmZnMoc3RhdGUtPmFjdGl2ZV9waXBlcykgLSAxOw0KPiA+IEBAIC0zNzcy
LDcgKzM3NzQsNyBAQCBib29sIGludGVsX2Nhbl9lbmFibGVfc2FndihzdHJ1Y3QNCj4gPiBpbnRl
bF9hdG9taWNfc3RhdGUgKnN0YXRlKQ0KPiA+ICAJY3J0Y19zdGF0ZSA9IHRvX2ludGVsX2NydGNf
c3RhdGUoY3J0Yy0+YmFzZS5zdGF0ZSk7DQo+ID4gIA0KPiA+ICAJaWYgKGNydGNfc3RhdGUtPmh3
LmFkanVzdGVkX21vZGUuZmxhZ3MgJg0KPiA+IERSTV9NT0RFX0ZMQUdfSU5URVJMQUNFKQ0KPiA+
IC0JCXJldHVybiBmYWxzZTsNCj4gPiArCQlyZXR1cm47DQo+ID4gIA0KPiA+ICAJZm9yX2VhY2hf
aW50ZWxfcGxhbmVfb25fY3J0YyhkZXYsIGNydGMsIHBsYW5lKSB7DQo+ID4gIAkJc3RydWN0IHNr
bF9wbGFuZV93bSAqd20gPQ0KPiA+IEBAIC0zODAwLDkgKzM4MDIsMTI3IEBAIGJvb2wgaW50ZWxf
Y2FuX2VuYWJsZV9zYWd2KHN0cnVjdA0KPiA+IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUpDQo+
ID4gIAkJICogY2FuJ3QgZW5hYmxlIFNBR1YuDQo+ID4gIAkJICovDQo+ID4gIAkJaWYgKGxhdGVu
Y3kgPCBkZXZfcHJpdi0+c2Fndl9ibG9ja190aW1lX3VzKQ0KPiA+IC0JCQlyZXR1cm4gZmFsc2U7
DQo+ID4gKwkJCXJldHVybjsNCj4gPiAgCX0NCj4gPiAgDQo+ID4gKwlzdGF0ZS0+Y3J0Y19zYWd2
X21hc2sgfD0gQklUKGNydGMtPnBpcGUpOw0KPiA+ICt9DQo+ID4gKw0KPiA+ICtzdGF0aWMgdm9p
ZCB0Z2xfc2V0X3NhZ3ZfbWFzayhzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSk7DQo+
ID4gKw0KPiA+ICtzdGF0aWMgdm9pZCBpY2xfc2V0X3NhZ3ZfbWFzayhzdHJ1Y3QgaW50ZWxfYXRv
bWljX3N0YXRlICpzdGF0ZSkNCj4gPiArew0KPiA+ICsJc3RydWN0IGRybV9kZXZpY2UgKmRldiA9
IHN0YXRlLT5iYXNlLmRldjsNCj4gPiArCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJp
diA9IHRvX2k5MTUoZGV2KTsNCj4gPiArCXN0cnVjdCBpbnRlbF9jcnRjICpjcnRjOw0KPiA+ICsJ
c3RydWN0IGludGVsX2NydGNfc3RhdGUgKm5ld19jcnRjX3N0YXRlOw0KPiA+ICsJaW50IGxldmVs
LCBsYXRlbmN5Ow0KPiA+ICsJaW50IGk7DQo+ID4gKwlpbnQgcGxhbmVfaWQ7DQo+ID4gKw0KPiA+
ICsJc3RhdGUtPmNydGNfc2Fndl9tYXNrID0gMDsNCj4gPiArDQo+ID4gKwlpZiAoIWludGVsX2hh
c19zYWd2KGRldl9wcml2KSkNCj4gPiArCQlyZXR1cm47DQo+ID4gKw0KPiA+ICsJLyoNCj4gPiAr
CSAqIElmIHRoZXJlIGFyZSBubyBhY3RpdmUgQ1JUQ3MsIG5vIGFkZGl0aW9uYWwgY2hlY2tzIG5l
ZWQgYmUNCj4gPiBwZXJmb3JtZWQNCj4gPiArCSAqLw0KPiA+ICsJaWYgKGh3ZWlnaHQ4KHN0YXRl
LT5hY3RpdmVfcGlwZXMpID09IDApDQo+ID4gKwkJcmV0dXJuOw0KPiA+ICsNCj4gPiArCWZvcl9l
YWNoX25ld19pbnRlbF9jcnRjX2luX3N0YXRlKHN0YXRlLCBjcnRjLA0KPiA+ICsJCQkJCSAgICAg
bmV3X2NydGNfc3RhdGUsIGkpIHsNCj4gPiArCQl1bnNpZ25lZCBpbnQgZmxhZ3MgPSBjcnRjLT5i
YXNlLnN0YXRlLQ0KPiA+ID5hZGp1c3RlZF9tb2RlLmZsYWdzOw0KPiA+ICsJCWJvb2wgY2FuX3Nh
Z3Y7DQo+ID4gKw0KPiA+ICsJCWlmIChmbGFncyAmIERSTV9NT0RFX0ZMQUdfSU5URVJMQUNFKQ0K
PiA+ICsJCQljb250aW51ZTsNCj4gPiArDQo+ID4gKwkJaWYgKCFuZXdfY3J0Y19zdGF0ZS0+YmFz
ZS5hY3RpdmUpDQo+ID4gKwkJCWNvbnRpbnVlOw0KPiA+ICsNCj4gPiArCQljYW5fc2FndiA9IHRy
dWU7DQo+ID4gKwkJZm9yX2VhY2hfcGxhbmVfaWRfb25fY3J0YyhjcnRjLCBwbGFuZV9pZCkgew0K
PiA+ICsJCQlzdHJ1Y3Qgc2tsX3BsYW5lX3dtICp3bSA9DQo+ID4gKwkJCQkmbmV3X2NydGNfc3Rh
dGUtDQo+ID4gPndtLnNrbC5vcHRpbWFsLnBsYW5lc1twbGFuZV9pZF07DQo+ID4gKw0KPiA+ICsJ
CQkvKiBTa2lwIHRoaXMgcGxhbmUgaWYgaXQncyBub3QgZW5hYmxlZCAqLw0KPiA+ICsJCQlpZiAo
IXdtLT53bVswXS5wbGFuZV9lbikNCj4gPiArCQkJCWNvbnRpbnVlOw0KPiA+ICsNCj4gPiArCQkJ
LyogRmluZCB0aGUgaGlnaGVzdCBlbmFibGVkIHdtIGxldmVsIGZvciB0aGlzDQo+ID4gcGxhbmUg
Ki8NCj4gPiArCQkJZm9yIChsZXZlbCA9IGlsa193bV9tYXhfbGV2ZWwoZGV2X3ByaXYpOw0KPiA+
ICsJCQkgICAgICF3bS0+d21bbGV2ZWxdLnBsYW5lX2VuOyAtLWxldmVsKSB7DQo+ID4gKwkJCX0N
Cj4gPiArDQo+ID4gKwkJCWxhdGVuY3kgPSBkZXZfcHJpdi0+d20uc2tsX2xhdGVuY3lbbGV2ZWxd
Ow0KPiA+ICsNCj4gPiArCQkJLyoNCj4gPiArCQkJICogSWYgYW55IG9mIHRoZSBwbGFuZXMgb24g
dGhpcyBwaXBlIGRvbid0DQo+ID4gZW5hYmxlDQo+ID4gKwkJCSAqIHdtIGxldmVscyB0aGF0IGlu
Y3VyIG1lbW9yeSBsYXRlbmNpZXMgaGlnaGVyDQo+ID4gdGhhbg0KPiA+ICsJCQkgKiBzYWd2X2Js
b2NrX3RpbWVfdXMgd2UgY2FuJ3QgZW5hYmxlIFNBR1YuDQo+ID4gKwkJCSAqLw0KPiA+ICsJCQlp
ZiAobGF0ZW5jeSA8IGRldl9wcml2LT5zYWd2X2Jsb2NrX3RpbWVfdXMpIHsNCj4gPiArCQkJCWNh
bl9zYWd2ID0gZmFsc2U7DQo+ID4gKwkJCQlicmVhazsNCj4gPiArCQkJfQ0KPiANCj4gSSBmaW5k
IHRoZSB3b3JkaW5nIG9mIHRoZSBic3BlYyAoImlmIGFueSBlbmFibGVkIHBsYW5lIHdpbGwgbm90
IGJlDQo+IGFibGUNCj4gdG8gZW5hYmxlIHdhdGVybWFya3MgZm9yIG1lbW9yeSBsYXRlbmN5ID49
IFNBR1YgYmxvY2sgdGltZSIpIGluIHRoaXMNCj4gYXJlYSBzb21ld2hhdCBhbWJpZ3VvdXMuICBU
byBtZSB0aGF0IHdvcmRpbmcgc291bmRzIGxpa2UgdGhleSB3YW50IHVzDQo+IHRvDQo+IGNhbGN1
bGF0ZSB0aGUgd2F0ZXJtYXJrcyBvbmUgbW9yZSB0aW1lLCBidXQgdXNpbmcgdGhlIFNBR1YgYmxv
Y2tpbmcNCj4gdGltZQ0KPiByYXRoZXIgdGhhbiBhbnkgb2YgdGhlIDggbGF0ZW5jeSB2YWx1ZXMg
d2UgcmVjZWl2ZWQgZnJvbSB0aGUgcGNvZGUgLS0NCj4gLQ0KPiBpZiB0aGUgY2FsY3VsYXRlZCB3
YXRlcm1hcmsgdmFsdWUgZm9yIHRoYXQgInNhZ3YgbGV2ZWwiIGZpdHMgd2l0aGluDQo+IHRoZQ0K
PiBEREIgYWxsb2NhdGlvbiB0aGVuIHdlIGNhbiBlbmFibGUgU0FHViwgb3RoZXJ3aXNlIHdlIGNh
bid0Lg0KPiANCj4gWW91ciBhcHByb2FjaCBoZXJlIHNvbWV3aGF0IGFwcHJveGltYXRlcyB0aGF0
LiAgSWYgdGhlIGhpZ2hlc3QNCj4gd2F0ZXJtYXJrDQo+IGxldmVsIHdlIGVuYWJsZWQgaGFkIGEg
bGF0ZW5jeSBoaWdoZXIgdGhhbiB0aGUgU0FHViBibG9ja2luZyB0aW1lLA0KPiB0aGVuDQo+IHdl
IGF1dG9tYXRpY2FsbHkga25vdyB3ZSBhbHNvIHdvdWxkIGhhdmUgaGFkIGEgdmFsaWQgd2F0ZXJt
YXJrIHZhbHVlDQo+IGZvcg0KPiBhIGxvd2VyIHNhZ3YgbGF0ZW5jeS4gIEJ1dCBpZiB0aGUgaGln
aGVzdCBsYXRlbmN5IHdlIGVuYWJsZWQgaGFzIGENCj4gbG93ZXINCj4gbGF0ZW5jeSwgd2UgY2Fu
J3Qgc2F5IGZvciBjZXJ0YWluIHdoZXRoZXIgdGhlIFNBR1YncyBibG9ja2luZyB0aW1lDQo+IHdv
dWxkDQo+IGhhdmUgbGVkIHRvIHZhbGlkIG9yIGludmFsaWQgd2F0ZXJtYXJrcy4gIElmIHRoZSBm
aXJzdCB3YXRlcm1hcmsNCj4gbGV2ZWwNCj4gd2UgZmFpbGVkIG9uIGFsc28gaGFkIGEgbG93ZXIg
bGF0ZW5jeSB0aGFuIHRoZSBTQUdWIHRpbWUgdGhlbiB3ZSBjYW4NCj4gY29uY2x1ZGUgdGhhdCB0
aGUgU0FHViBjYW4ndCBiZSBlbmFibGVkLiAgQnV0IGlmIHRoZSBuZXh0IGxldmVsIHVwDQo+IGhh
ZCBhDQo+IGxhdGVuY3kgaGlnaGVyIHRoYW4gdGhlIGJsb2NraW5nIHRpbWUgKGkuZS4sIGdvb2Qg
PCBTQUdWIDwgYmFkKSwgd2UNCj4gY2FuJ3QgcmVhbGx5IHRlbGwgd2hldGhlciBTQUdWIHdhcyBw
b3NzaWJsZSB3aXRob3V0IGFjdHVhbGx5IGRvaW5nDQo+IHRoZQ0KPiBleHRyYSB3YXRlcm1hcmsg
Y2FsY3VsYXRpb24uDQo+IA0KPiBCdXQgZXZlbiBnaXZlbiB0aGUgYWJvdmUsIHRoZSBic3BlYyBz
dWdnZXN0aW9uIHNlZW1zIHNvbWV3aGF0DQo+IHN1cnByaXNpbmcNCj4gdG8gbWUuICBJbnR1aXRp
dmVseSBpdCBzZWVtcyBsaWtlIFNBR1Ygd291bGQgYmUgaW50cm9kdWNpbmcgYW4NCj4gYWRkaXRp
b25hbCBkZWxheSBvbiB0b3Agb2YgdGhlIGV4aXN0aW5nIG1lbW9yeSBmZXRjaCBsYXRlbmN5LCBu
b3QNCj4gcmVwbGFjaW5nIHRoZSBsYXRlbmN5IGVudGlyZWx5LiAgSW50dWl0aXZlbHkgdGhlIGFs
Z29yaXRobSBzdWdnZXN0ZWQNCj4gZm9yDQo+IFRHTCBtYWtlcyBzZW5zZSB0byBtZSAoaS5lLiwg
YWRkIHRoZSBTQUdWJ3MgZXh0cmEgZGVsYXkgdG8gdGhlIFdNMA0KPiBsYXRlbmN5IHRvIGVuc3Vy
ZSB0aGF0IHJlZ3VsYXIgbGF0ZW5jeSBwbHVzIGFuIGV4dHJhIFNBR1YgZGVsYXkNCj4gZG9lc24n
dA0KPiBsZWFkIHVzIHRvIHJ1biBkcnkpLCBidXQgdGhhdCdzIG5vdCB3aGF0IHRoZSBic3BlYyBj
YWxscyBmb3Igb24gSUNMLg0KPiBJJ20gbm90IHJlYWxseSBzdXJlIHdoZXRoZXIgdGhhdCdzIHRy
dWx5IGFuIGludGVudGlvbmFsIGJlaGF2aW9yDQo+IGNoYW5nZQ0KPiBiZXR3ZWVuIHBsYXRmb3Jt
cyBvciB3aGV0aGVyIHRoZSBUR0wgYnNwZWMgc2VjdGlvbiBkb2VzIGp1c3QgYSBiZXR0ZXINCj4g
am9iIG9mIGV4cGxhaW5pbmcgd2hhdCB3YXMgc3VwcG9zZWQgdG8gYmUgZG9uZSBhbmQgY2xhcmlm
eWluZyB0aGUNCj4gbGFuZ3VhZ2UuDQo+IA0KPiBBbnl3YXksIHdlIHNob3VsZCBwcm9iYWJseSB0
cnVzdCB0aGUgYnNwZWMgZm9yIG5vdywgc28gaXQgc2VlbXMgdG8gbWUNCj4gbGlrZSB3ZSBzaG91
bGQgYWRkIGEgImZha2UiIHdhdGVybWFyayBsZXZlbCBhc3NvY2lhdGVkIHdpdGggdGhlIFNBR1YN
Cj4gYmxvY2sgdGltZSBhbmQgZXhwbGljaXRseSBjYWxjdWxhdGUgdGhhdCBhcyBlbmFibGVkL2Rp
c2FibGVkIGFueXRpbWUNCj4gd2UNCj4gaGF2ZSBhIGdvb2QgPCBTQUdWIDwgYmFkIHNpdHVhdGlv
bi4NCg0KSSB0b3RhbGx5IGFncmVlLCBoYWQgc2FtZSBxdWVzdGlvbnMgZHVyaW5nIGltcGxlbWVu
dGF0aW9uLCBob3dldmVyDQpzdGlsbCBJIHNpbXBseSBzdGljayB0byB3aGF0IGhhcyBiZWVuIGRl
ZmluZWQgaW4gYSBzcGVjIGFuZCBhbHNvIGRvbmUNCmZvciBwcmV2aW91cyBwbGF0Zm9ybXMsIGFz
IHRoaXMgaXMgYmFzaWNhbGx5IHRoZSBzYW1lIGhvdyBpdCdzIGRvbmUNCm5vdy4gV2hhdCBJIGRp
ZCBpcyBtb3N0bHkganVzdCBzcGxpdHRpbmcgdGhlIGNvZGUgdG8gZ2V0IHJpZCBvZiBzb21lDQpz
a2wgc3BlY2lmaWMgdWdseSB3b3JrYXJvdW5kIHRoZXJlLg0KUmVnYXJkaW5nICJmYWtlIiB3YXRl
cm1hcmsgbGV2ZWwsIGFzIHlvdSBtaWdodCBub3RpY2VkIG5vdyBJIHdvdWxkIGJlDQpzdG9yaW5n
IGJvdGggc2Fndl93bSBhbmQgIm5vcm1hbCIgd20gbGV2ZWwgdG8gbGV0IGludGVsX2Nhbl9lbmFi
bGVfc2Fndg0KdG8gbWFrZSBkZWNpc2lvbiBsYXRlciBiYXNlZCBvbiB0aGF0KG1vc3RseSBkZWNp
c2lvbiBub3cgaXMgc2ltcGx5DQpkaWN0YXRlZCBieSB3aGV0aGVyIHdlIGNvdWxkIGZpdCB0aGlz
IGludG8gZGJ1ZiBvciBub3QpLg0KUmVnYXJkaW5nIGludGVsX2Nhbl9lbmFibGVfc2FndiBpbXBs
ZW1lbnRhdGlvbiBJIHdpbGwgcmVwbHkgaW5saW5lDQphbHNvIGJlbG93Lg0KDQo+IA0KPiA+ICsJ
CX0NCj4gPiArCQlpZiAoY2FuX3NhZ3YpDQo+ID4gKwkJCXN0YXRlLT5jcnRjX3NhZ3ZfbWFzayB8
PSBCSVQoY3J0Yy0+cGlwZSk7DQo+ID4gKwl9DQo+ID4gK30NCj4gPiArDQo+ID4gK2Jvb2wgaW50
ZWxfY2FuX2VuYWJsZV9zYWd2KHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlKQ0KPiA+
ICt7DQo+ID4gKwlzdHJ1Y3QgZHJtX2RldmljZSAqZGV2ID0gc3RhdGUtPmJhc2UuZGV2Ow0KPiA+
ICsJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShkZXYpOw0KPiA+
ICsJZW51bSBwaXBlIHBpcGU7DQo+ID4gKw0KPiA+ICsJaWYgKElOVEVMX0dFTihkZXZfcHJpdikg
Pj0gMTIpDQo+ID4gKwkJdGdsX3NldF9zYWd2X21hc2soc3RhdGUpOw0KPiA+ICsJZWxzZSBpZiAo
SU5URUxfR0VOKGRldl9wcml2KSA9PSAxMSkNCj4gPiArCQlpY2xfc2V0X3NhZ3ZfbWFzayhzdGF0
ZSk7DQo+ID4gKwllbHNlDQo+ID4gKwkJc2tsX3NldF9zYWd2X21hc2soc3RhdGUpOw0KPiA+ICsN
Cj4gPiArCS8qDQo+ID4gKwkgKiBGb3IgU0FHViB3ZSBuZWVkIHRvIGFjY291bnQgYWxsIHRoZSBw
aXBlcywNCj4gPiArCSAqIG5vdCBvbmx5IHRoZSBvbmVzIHdoaWNoIGFyZSBpbiBzdGF0ZSBjdXJy
ZW50bHkuDQo+ID4gKwkgKi8NCj4gPiArCWZvcl9lYWNoX3BpcGUoZGV2X3ByaXYsIHBpcGUpIHsN
Cj4gPiArCQl1bnNpZ25lZCBpbnQgYWN0aXZlX3BpcGVzOw0KPiA+ICsJCS8qDQo+ID4gKwkJICog
RmlndXJlIG91dCBpZiB3ZSBhcmUgY2hhbmdpbmcgYWN0aXZlIHBpcGVzIGhlcmUNCj4gPiArCQkg
KiB0aGVuIGFmdGVyIGNvbW1pdCBkZXZfcHJpdi0+YWN0aXZlX3BpcGVzIHdpbGwNCj4gPiArCQkg
KiBhbnl3YXkgYmUgYXNzaWduZWQgdG8gc3RhdGUtPmFjdGl2ZV9waXBlcy4NCj4gPiArCQkgKi8N
Cj4gPiArCQlpZiAoc3RhdGUtPmFjdGl2ZV9waXBlX2NoYW5nZXMpDQo+ID4gKwkJCWFjdGl2ZV9w
aXBlcyA9IHN0YXRlLT5hY3RpdmVfcGlwZXM7DQo+ID4gKwkJZWxzZQ0KPiA+ICsJCQlhY3RpdmVf
cGlwZXMgPSBkZXZfcHJpdi0+YWN0aXZlX3BpcGVzOw0KPiA+ICsNCj4gPiArCQkvKiBTa2lwIGlm
IHBpcGUgaXMgaW5hY3RpdmUgKi8NCj4gPiArCQlpZiAoIShCSVQocGlwZSkgJiBhY3RpdmVfcGlw
ZXMpKQ0KPiA+ICsJCQljb250aW51ZTsNCj4gPiArDQo+ID4gKwkJLyoNCj4gPiArCQkgKiBQaXBl
IGNhbiBiZSBhY3RpdmUgaW4gdGhpcyBzdGF0ZSBvciBpbiBkZXZfcHJpdg0KPiA+ICsJCSAqIGFz
IHdlIGhhdmVuJ3QgY29tbWl0dGVkIHRoaXNlIGNoYW5nZXMgeWV0KGFuZCB3ZQ0KPiA+IHNob3Vs
ZG4ndCkNCj4gPiArCQkgKiAtIHdlIG5lZWQgdG8gY2hlY2sgYm90aC4NCj4gPiArCQkgKi8NCj4g
PiArCQlpZiAoc3RhdGUtPmFjdGl2ZV9waXBlX2NoYW5nZXMgJiBCSVQocGlwZSkpIHsNCj4gPiAr
CQkJYm9vbCBzdGF0ZV9zYWd2X21hc2tlZCA9IFwNCj4gPiArCQkJCShCSVQocGlwZSkgJiBzdGF0
ZS0+Y3J0Y19zYWd2X21hc2spID09DQo+ID4gMDsNCj4gPiArCQkJaWYgKHN0YXRlX3NhZ3ZfbWFz
a2VkKQ0KPiA+ICsJCQkJcmV0dXJuIGZhbHNlOw0KPiA+ICsJCX0gZWxzZSB7DQo+ID4gKwkJCWJv
b2wgc2Fndl9tYXNrZWQgPSBcDQo+ID4gKwkJCQkoQklUKHBpcGUpICYgZGV2X3ByaXYtPmNydGNf
c2Fndl9tYXNrKQ0KPiA+ID09IDA7DQo+IA0KPiBJZiB3ZSdyZSBub3QgY2hhbmdpbmcgd2hpY2gg
cGlwZXMgYXJlIGFjdGl2ZSwgdGhlbiB3ZSBkaWRuJ3QgZ2xvYmFsbHkNCj4gbG9jayBldmVyeXRo
aW5nIGF0IHRoZSBiZWdpbm5pbmcgb2YgdGhpcyBhdG9taWMgdHJhbnNhY3Rpb247IHdlIGNhbg0K
PiBoYXZlDQo+IHJhY2luZyBjb21taXRzIGFnYWluc3QgZGlmZmVyZW50IENSVEMncy4gIFNvIHdo
ZW4geW91IGxvb2sgYXQNCj4gZGV2X3ByaXYtPmNydGNfc2Fndl9tYXNrIGhlcmUsIHRoZSB2YWx1
ZSBtaWdodCBjaGFuZ2UgaW1tZWRpYXRlbHkNCj4gYWZ0ZXJ3YXJkIGlmIGEgY29tbWl0IG9uIGEg
ZGlmZmVyZW50IENSVEMgY29tcGxldGVkIGluIHRoZSBtZWFudGltZS4NCj4gDQo+IEkgZG9uJ3Qg
dGhpbmsgd2Ugd2FudCB0byBsb29rIGF0IG90aGVyIENSVEMncyBvdXRzaWRlIG91ciBjdXJyZW50
DQo+IHRyYW5zYWN0aW9uIGhlcmUuICBXZSBzaG91bGQganVzdCBmaWd1cmUgb3V0IHdoZXRoZXIg
b3VyIG93biBDUlRDJ3MNCj4gYXJlDQo+IG9rYXkgd2l0aCBTQUdWIG9yIG5vdC4gIFRoZW4gaW4g
dGhlIGNvbW1pdCBwaGFzZSB3ZSdkIG5lZWQgdG8gZ3JhYg0KPiBzb21lDQo+IGtpbmQgb2YgU0FH
ViBsb2NrLCBjb21iaW5lIG91ciBsb2NhbCAiU0FHViBva2F5IiB3aXRoIHRoZSBnbG9iYWwNCj4g
IlNBR1YNCj4gb2theSIgYW5kIGVuYWJsZS9kaXNhYmxlIGFzIG5lY2Vzc2FyeS4NCj4gDQo+IFNv
bWUga2luZCBvZiByZWZlcmVuY2UtY291bnRpbmcgbWVjaGFuaXNtIG1pZ2h0IG1ha2UgdGhpcw0K
PiBzaW1wbGVyLi4uaXMNCj4gdGhlcmUgYW55IHdheSB3ZSBjb3VsZCB0aWUgdGhpcyBpbiB3aXRo
IHBvd2VyIGRvbWFpbnMgKGUuZy4sIGFkZGluZyBhDQo+ICJTQUdWIG9mZiIgcG93ZXIgZG9tYWlu
IGFuZCBwb3dlciB3ZWxsIHRoYXQgd2UgZ3JhYiBkdXJpbmcgY29tbWl0DQo+IHdoZW4NCj4gd2Un
dmUgY2FsY3VsYXRlZCB0aGF0IG91ciBvd24gY3J0Y3MgY2FuJ3QgY29wZSB3aXRoIFNBR1YgbGF0
ZW5jeSk/DQo+IA0KDQpZZXMsIGhvd2V2ZXIgdGhlIHByb2JsZW0gaXMgdGhhdCB3ZSBuZWVkIHRv
IGtub3cgd2hldGhlciB3ZSBjYW4gZW5hYmxlDQpTQUdWIG9yIG5vdCBhbHJlYWR5IG9uIGNhbGN1
bGF0aW9uIHN0YWdlKGkuZSBkdXJpbmcNCmludGVsX2F0b21pY19jaGVjaykuIEJhbmR3aWR0aCBj
aGVja2luZyBjb2RlIGNhbGxzIHRoaXMgYXMgYWNjb3JkaW5nIHRvDQpCU3BlYyBpZiBTQUdWIGNh
bid0IGJlIGVuYWJsZWQgLSBpdCBzaG91bGQgc3RpY2sgdG8gdGhlIGhpZ2hlc3QNCmJhbmR3aWR0
aCBwb2ludCBvbmx5LiBBbHNvIGR1cmluZyBkZGIvd20gY2FsY3VsYXRpb24gd2UgY2FsbCB0aGlz
IGNoZWNrDQp0byB1bmRlcnN0YW5kIHdoaWNoIHdtIGxldmVsIHdlIHNob3VsZCBmaXQgaW50byBk
YnVmLg0KQW5kIHdlIGNhbid0IG1ha2UgdGhpcyBkZWNpc2lvbiBiYXNlZCBvbiB0aGlzIHN0YXRl
IG9ubHkgYXMgaXQgbWlnaHQNCm5vdCBjb250YWluIGFsbCB0aGUgY3J0Y3MgLSBob3dldmVyIGlm
IGFueSBvZiB0aGUgcGlwZXMsIGV2ZW4gdGhvc2UNCndoaWNoIGFyZSBub3QgaW4gdGhpcyBzdGF0
ZSBjYW4ndCB0b2xlcmF0ZSBTQUdWIC0gdGhlbiB3ZSBjYW4ndCBlbmFibGUNCml0IGFueXdheSwg
ZXZlbiBpZiB0aG9zZSBjcnRjIGluIHRoaXMgc3RhdGUgY2FuLg0KVGhhdCBpcyB3aHkgSSBoYXZl
IHRvIGl0ZXJhdGUgdGhyb3VnaCBhbGwgb2YgdGhlIGNydGNzLiBIb3dldmVyIGl0IGlzDQpnb29k
IHRoYXQgeW91IHBvaW50ZWQgb3V0IHRoYXQgdGhvc2UgbWlnaHQgY2hhbmdlIG9uIHRoZSBmbHks
IEkgZ3Vlc3MNCndlIG5lZWQgdG8gcHJvdGVjdCB0aG9zZSBmcm9tIGJlaW5nIGNoYW5nZWQgYnkg
b3RoZXIgY29tbWl0cy4NCldlIGFscmVhZHkgZG8gc29tZXRoaW5nIHNpbWlsYXIgYnkgdXNpbmcg
c2VyaWFsaXppbmcgZ2xvYmFsIHN0YXRlIGZyb20NClZpbGxlLCBpLmUgb25jZSB3ZSBhZGQgZGV0
ZWN0IHRoYXQgd2UgYXJlIGNoYW5naW5nIHNvbWUgZGV2X3ByaXYgZ2xvYmFsDQpzdGF0ZSB2YXJp
YWJsZXMgd2UgbWFyayB0aGF0IHRoaXMgY29tbWl0IHNob3VsZCBiZSBzZXJpYWxpemVkIGJ5IGFk
ZGluZw0KYWxsIHRoZSBjcnRjcyB0byB0aGUgc3RhdGUuIA0KDQo+IA0KPiA+ICsJCQlpZiAoc2Fn
dl9tYXNrZWQpDQo+ID4gKwkJCQlyZXR1cm4gZmFsc2U7DQo+ID4gKwkJfQ0KPiA+ICsJfQ0KPiA+
ICAJcmV0dXJuIHRydWU7DQo+ID4gIH0NCj4gPiAgDQo+ID4gQEAgLTM5MjUsNiArNDA0NSw3IEBA
IHN0YXRpYyBpbnQgc2tsX2NvbXB1dGVfd21fcGFyYW1zKGNvbnN0IHN0cnVjdA0KPiA+IGludGVs
X2NydGNfc3RhdGUgKmNydGNfc3RhdGUsDQo+ID4gIAkJCQkgaW50IGNvbG9yX3BsYW5lKTsNCj4g
PiAgc3RhdGljIHZvaWQgc2tsX2NvbXB1dGVfcGxhbmVfd20oY29uc3Qgc3RydWN0IGludGVsX2Ny
dGNfc3RhdGUNCj4gPiAqY3J0Y19zdGF0ZSwNCj4gPiAgCQkJCSBpbnQgbGV2ZWwsDQo+ID4gKwkJ
CQkgdTMyIGxhdGVuY3ksDQo+ID4gIAkJCQkgY29uc3Qgc3RydWN0IHNrbF93bV9wYXJhbXMgKndw
LA0KPiA+ICAJCQkJIGNvbnN0IHN0cnVjdCBza2xfd21fbGV2ZWwNCj4gPiAqcmVzdWx0X3ByZXYs
DQo+ID4gIAkJCQkgc3RydWN0IHNrbF93bV9sZXZlbCAqcmVzdWx0IC8qIG91dA0KPiA+ICovKTsN
Cj4gPiBAQCAtMzk0Nyw3ICs0MDY4LDEwIEBAIHNrbF9jdXJzb3JfYWxsb2NhdGlvbihjb25zdCBz
dHJ1Y3QNCj4gPiBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlLA0KPiA+ICAJV0FSTl9PTihy
ZXQpOw0KPiA+ICANCj4gPiAgCWZvciAobGV2ZWwgPSAwOyBsZXZlbCA8PSBtYXhfbGV2ZWw7IGxl
dmVsKyspIHsNCj4gPiAtCQlza2xfY29tcHV0ZV9wbGFuZV93bShjcnRjX3N0YXRlLCBsZXZlbCwg
JndwLCAmd20sICZ3bSk7DQo+ID4gKwkJdTMyIGxhdGVuY3kgPSBkZXZfcHJpdi0+d20uc2tsX2xh
dGVuY3lbbGV2ZWxdOw0KPiA+ICsNCj4gPiArCQlza2xfY29tcHV0ZV9wbGFuZV93bShjcnRjX3N0
YXRlLCBsZXZlbCwgbGF0ZW5jeSwgJndwLA0KPiA+ICZ3bSwgJndtKTsNCj4gPiArDQo+ID4gIAkJ
aWYgKHdtLm1pbl9kZGJfYWxsb2MgPT0gVTE2X01BWCkNCj4gPiAgCQkJYnJlYWs7DQo+ID4gIA0K
PiA+IEBAIC00MjEyLDYgKzQzMzYsNjggQEAgaWNsX2dldF90b3RhbF9yZWxhdGl2ZV9kYXRhX3Jh
dGUoc3RydWN0DQo+ID4gaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwNCj4gPiAgCXJldHVy
biB0b3RhbF9kYXRhX3JhdGU7DQo+ID4gIH0NCj4gPiAgDQo+ID4gK3N0YXRpYyBpbnQNCj4gPiAr
dGdsX2NoZWNrX3BpcGVfZml0c19zYWd2X3dtKHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRj
X3N0YXRlLA0KPiA+ICsJCSAgICAgIHN0cnVjdCBza2xfZGRiX2FsbG9jYXRpb24gKmRkYiAvKiBv
dXQgKi8pDQo+ID4gK3sNCj4gPiArCXN0cnVjdCBkcm1fY3J0YyAqY3J0YyA9IGNydGNfc3RhdGUt
PmJhc2UuY3J0YzsNCj4gPiArCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRv
X2k5MTUoY3J0Yy0+ZGV2KTsNCj4gPiArCXN0cnVjdCBpbnRlbF9jcnRjICppbnRlbF9jcnRjID0g
dG9faW50ZWxfY3J0YyhjcnRjKTsNCj4gPiArCXN0cnVjdCBza2xfZGRiX2VudHJ5ICphbGxvYyA9
ICZjcnRjX3N0YXRlLT53bS5za2wuZGRiOw0KPiA+ICsJdTE2IGFsbG9jX3NpemU7DQo+ID4gKwl1
MTYgdG90YWxbSTkxNV9NQVhfUExBTkVTXSA9IHt9Ow0KPiA+ICsJdTY0IHRvdGFsX2RhdGFfcmF0
ZTsNCj4gPiArCWVudW0gcGxhbmVfaWQgcGxhbmVfaWQ7DQo+ID4gKwlpbnQgbnVtX2FjdGl2ZTsN
Cj4gPiArCXU2NCBwbGFuZV9kYXRhX3JhdGVbSTkxNV9NQVhfUExBTkVTXSA9IHt9Ow0KPiA+ICsJ
dTMyIGJsb2NrczsNCj4gPiArDQo+ID4gKwkvKg0KPiA+ICsJICogTm8gbmVlZCB0byBjaGVjayBn
ZW4gaGVyZSwgd2UgY2FsbCB0aGlzIG9ubHkgZm9yIGdlbjEyDQo+ID4gKwkgKi8NCj4gPiArCXRv
dGFsX2RhdGFfcmF0ZSA9DQo+ID4gKwkJaWNsX2dldF90b3RhbF9yZWxhdGl2ZV9kYXRhX3JhdGUo
Y3J0Y19zdGF0ZSwNCj4gPiArCQkJCQkJIHBsYW5lX2RhdGFfcmF0ZSk7DQo+ID4gKw0KPiA+ICsJ
c2tsX2RkYl9nZXRfcGlwZV9hbGxvY2F0aW9uX2xpbWl0cyhkZXZfcHJpdiwgY3J0Y19zdGF0ZSwN
Cj4gPiArCQkJCQkgICB0b3RhbF9kYXRhX3JhdGUsDQo+ID4gKwkJCQkJICAgZGRiLCBhbGxvYywg
Jm51bV9hY3RpdmUpOw0KPiA+ICsJYWxsb2Nfc2l6ZSA9IHNrbF9kZGJfZW50cnlfc2l6ZShhbGxv
Yyk7DQo+ID4gKwlpZiAoYWxsb2Nfc2l6ZSA9PSAwKQ0KPiA+ICsJCXJldHVybiAtRU5PU1BDOw0K
PiA+ICsNCj4gPiArCS8qIEFsbG9jYXRlIGZpeGVkIG51bWJlciBvZiBibG9ja3MgZm9yIGN1cnNv
ci4gKi8NCj4gPiArCXRvdGFsW1BMQU5FX0NVUlNPUl0gPSBza2xfY3Vyc29yX2FsbG9jYXRpb24o
Y3J0Y19zdGF0ZSwNCj4gPiBudW1fYWN0aXZlKTsNCj4gPiArCWFsbG9jX3NpemUgLT0gdG90YWxb
UExBTkVfQ1VSU09SXTsNCj4gPiArCWNydGNfc3RhdGUtPndtLnNrbC5wbGFuZV9kZGJfeVtQTEFO
RV9DVVJTT1JdLnN0YXJ0ID0NCj4gPiArCQlhbGxvYy0+ZW5kIC0gdG90YWxbUExBTkVfQ1VSU09S
XTsNCj4gPiArCWNydGNfc3RhdGUtPndtLnNrbC5wbGFuZV9kZGJfeVtQTEFORV9DVVJTT1JdLmVu
ZCA9IGFsbG9jLT5lbmQ7DQo+ID4gKw0KPiA+ICsJLyoNCj4gPiArCSAqIERvIGNoZWNrIGlmIHdl
IGNhbiBmaXQgTDAgKyBzYWd2X2Jsb2NrX3RpbWUgYW5kDQo+ID4gKwkgKiBkaXNhYmxlIFNBR1Yg
aWYgd2UgY2FuJ3QuDQo+ID4gKwkgKi8NCj4gPiArCWJsb2NrcyA9IDA7DQo+ID4gKwlmb3JfZWFj
aF9wbGFuZV9pZF9vbl9jcnRjKGludGVsX2NydGMsIHBsYW5lX2lkKSB7DQo+ID4gKwkJY29uc3Qg
c3RydWN0IHNrbF9wbGFuZV93bSAqd20gPQ0KPiA+ICsJCQkmY3J0Y19zdGF0ZS0+d20uc2tsLm9w
dGltYWwucGxhbmVzW3BsYW5lX2lkXTsNCj4gPiArDQo+ID4gKwkJaWYgKHBsYW5lX2lkID09IFBM
QU5FX0NVUlNPUikgew0KPiA+ICsJCQlpZiAoV0FSTl9PTih3bS0+c2Fndl93bTAubWluX2RkYl9h
bGxvYyA+DQo+ID4gKwkJCQkgICAgdG90YWxbUExBTkVfQ1VSU09SXSkpIHsNCj4gPiArCQkJCWJs
b2NrcyA9IFUzMl9NQVg7DQo+ID4gKwkJCQlicmVhazsNCj4gPiArCQkJfQ0KPiA+ICsJCQljb250
aW51ZTsNCj4gPiArCQl9DQo+ID4gKw0KPiA+ICsJCWJsb2NrcyArPSB3bS0+c2Fndl93bTAubWlu
X2RkYl9hbGxvYzsNCj4gPiArCQlpZiAoYmxvY2tzID4gYWxsb2Nfc2l6ZSkNCj4gPiArCQkJcmV0
dXJuIC1FTk9TUEM7DQo+ID4gKwl9DQo+ID4gKwlyZXR1cm4gMDsNCj4gPiArfQ0KPiA+ICsNCj4g
PiAgc3RhdGljIGludA0KPiA+ICBza2xfYWxsb2NhdGVfcGlwZV9kZGIoc3RydWN0IGludGVsX2Ny
dGNfc3RhdGUgKmNydGNfc3RhdGUsDQo+ID4gIAkJICAgICAgc3RydWN0IHNrbF9kZGJfYWxsb2Nh
dGlvbiAqZGRiIC8qIG91dCAqLykNCj4gPiBAQCAtNDY0MSw2ICs0ODI3LDcgQEAgc3RhdGljIGJv
b2wgc2tsX3dtX2hhc19saW5lcyhzdHJ1Y3QNCj4gPiBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJp
diwgaW50IGxldmVsKQ0KPiA+ICANCj4gPiAgc3RhdGljIHZvaWQgc2tsX2NvbXB1dGVfcGxhbmVf
d20oY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUNCj4gPiAqY3J0Y19zdGF0ZSwNCj4gPiAg
CQkJCSBpbnQgbGV2ZWwsDQo+ID4gKwkJCQkgdTMyIGxhdGVuY3ksDQo+ID4gIAkJCQkgY29uc3Qg
c3RydWN0IHNrbF93bV9wYXJhbXMgKndwLA0KPiA+ICAJCQkJIGNvbnN0IHN0cnVjdCBza2xfd21f
bGV2ZWwNCj4gPiAqcmVzdWx0X3ByZXYsDQo+ID4gIAkJCQkgc3RydWN0IHNrbF93bV9sZXZlbCAq
cmVzdWx0IC8qIG91dCAqLykNCj4gDQo+IEl0IGRvZXNuJ3QgbG9vayBsaWtlIHRoaXMgbGF0ZW5j
eSBwYXJhbWV0ZXIgZ2V0cyB1c2VkIChpdCBnZXRzIG1hc2tlZA0KPiBieQ0KPiBhIGxvY2FsIGxh
dGVuY3kgdmFyaWFibGUgc3RpbGwuDQoNCkFjdHVhbGx5IG5vLCB0aGVyZSBhcmUgbm8gb3RoZXIg
bGF0ZW5jeSB2YXJpYWJsZXMgZGVjbGFyZWQgaW4NCnNrbF9jb21wdXRlX3BsYW5lX3dtKGRpZCBJ
IGFjY2lkZW50YWxseSBmaXggdGhpcyBzb21lIGhvdz8pIGFzIEkgc2VlLg0KQW55d2F5IHRoYW5r
IHlvdSBmb3IgYSByZWFsbHkgcHJlY2lzZSByZXZpZXcuDQoNCj4gDQo+IA0KPiA+IEBAIC00NzY3
LDIwICs0OTU0LDQ1IEBAIHN0YXRpYyB2b2lkIHNrbF9jb21wdXRlX3BsYW5lX3dtKGNvbnN0DQo+
ID4gc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUsDQo+ID4gIHN0YXRpYyB2b2lk
DQo+ID4gIHNrbF9jb21wdXRlX3dtX2xldmVscyhjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0
ZSAqY3J0Y19zdGF0ZSwNCj4gPiAgCQkgICAgICBjb25zdCBzdHJ1Y3Qgc2tsX3dtX3BhcmFtcyAq
d21fcGFyYW1zLA0KPiA+IC0JCSAgICAgIHN0cnVjdCBza2xfd21fbGV2ZWwgKmxldmVscykNCj4g
PiArCQkgICAgICBzdHJ1Y3Qgc2tsX3BsYW5lX3dtICpwbGFuZV93bSwNCj4gPiArCQkgICAgICBi
b29sIHl1dikNCj4gPiAgew0KPiA+ICAJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2
ID0gdG9faTkxNShjcnRjX3N0YXRlLQ0KPiA+ID51YXBpLmNydGMtPmRldik7DQo+ID4gIAlpbnQg
bGV2ZWwsIG1heF9sZXZlbCA9IGlsa193bV9tYXhfbGV2ZWwoZGV2X3ByaXYpOw0KPiA+ICsJLyoN
Cj4gPiArCSAqIENoZWNrIHdoaWNoIGtpbmQgb2YgcGxhbmUgaXMgaXQgYW5kIGJhc2VkIG9uIHRo
YXQgY2FsY3VsYXRlDQo+ID4gKwkgKiBjb3JyZXNwb25kZW50IFdNIGxldmVscy4NCj4gPiArCSAq
Lw0KPiA+ICsJc3RydWN0IHNrbF93bV9sZXZlbCAqbGV2ZWxzID0geXV2ID8gcGxhbmVfd20tPnV2
X3dtIDogcGxhbmVfd20tDQo+ID4gPndtOw0KPiA+ICAJc3RydWN0IHNrbF93bV9sZXZlbCAqcmVz
dWx0X3ByZXYgPSAmbGV2ZWxzWzBdOw0KPiA+ICANCj4gPiAgCWZvciAobGV2ZWwgPSAwOyBsZXZl
bCA8PSBtYXhfbGV2ZWw7IGxldmVsKyspIHsNCj4gPiAgCQlzdHJ1Y3Qgc2tsX3dtX2xldmVsICpy
ZXN1bHQgPSAmbGV2ZWxzW2xldmVsXTsNCj4gPiArCQl1MzIgbGF0ZW5jeSA9IGRldl9wcml2LT53
bS5za2xfbGF0ZW5jeVtsZXZlbF07DQo+ID4gIA0KPiA+IC0JCXNrbF9jb21wdXRlX3BsYW5lX3dt
KGNydGNfc3RhdGUsIGxldmVsLCB3bV9wYXJhbXMsDQo+ID4gLQkJCQkgICAgIHJlc3VsdF9wcmV2
LCByZXN1bHQpOw0KPiA+ICsJCXNrbF9jb21wdXRlX3BsYW5lX3dtKGNydGNfc3RhdGUsIGxldmVs
LCBsYXRlbmN5LA0KPiA+ICsJCQkJICAgICB3bV9wYXJhbXMsIHJlc3VsdF9wcmV2LCByZXN1bHQp
Ow0KPiA+ICANCj4gPiAgCQlyZXN1bHRfcHJldiA9IHJlc3VsdDsNCj4gPiAgCX0NCj4gPiArCS8q
DQo+ID4gKwkgKiBGb3IgR2VuMTIgaWYgaXQgaXMgYW4gTDAgd2UgbmVlZCB0byBhbHNvDQo+ID4g
KwkgKiBjb25zaWRlciBzYWd2X2Jsb2NrX3RpbWUgd2hlbiBjYWxjdWxhdGluZw0KPiA+ICsJICog
TDAgd2F0ZXJtYXJrIC0gd2Ugd2lsbCBuZWVkIHRoYXQgd2hlbiBtYWtpbmcNCj4gPiArCSAqIGEg
ZGVjaXNpb24gd2hldGhlciBlbmFibGUgU0FHViBvciBub3QuDQo+ID4gKwkgKiBGb3Igb2xkZXIg
Z2VucyB3ZSBhZ3JlZWQgdG8gY29weSBMMCB2YWx1ZSBmb3INCj4gPiArCSAqIGNvbXBhdGliaWxp
dHkuDQo+ID4gKwkgKi8NCj4gPiArCWlmICgoSU5URUxfR0VOKGRldl9wcml2KSA+PSAxMikpIHsN
Cj4gPiArCQl1MzIgbGF0ZW5jeSA9IGRldl9wcml2LT53bS5za2xfbGF0ZW5jeVswXTsNCj4gPiAr
DQo+ID4gKwkJbGF0ZW5jeSArPSBkZXZfcHJpdi0+c2Fndl9ibG9ja190aW1lX3VzOw0KPiA+ICsJ
CXNrbF9jb21wdXRlX3BsYW5lX3dtKGNydGNfc3RhdGUsIDAsIGxhdGVuY3ksDQo+ID4gKwkJICAg
ICB3bV9wYXJhbXMsICZsZXZlbHNbMF0sDQo+ID4gKwkJICAgICZwbGFuZV93bS0+c2Fndl93bTAp
Ow0KPiA+ICsJfSBlbHNlDQo+ID4gKwkJbWVtY3B5KCZwbGFuZV93bS0+c2Fndl93bTAsICZsZXZl
bHNbMF0sDQo+ID4gKwkJCXNpemVvZihzdHJ1Y3Qgc2tsX3dtX2xldmVsKSk7DQo+ID4gIH0NCj4g
PiAgDQo+ID4gIHN0YXRpYyB1MzINCj4gPiBAQCAtNDg3Myw3ICs1MDg1LDcgQEAgc3RhdGljIGlu
dCBza2xfYnVpbGRfcGxhbmVfd21fc2luZ2xlKHN0cnVjdA0KPiA+IGludGVsX2NydGNfc3RhdGUg
KmNydGNfc3RhdGUsDQo+ID4gIAlpZiAocmV0KQ0KPiA+ICAJCXJldHVybiByZXQ7DQo+ID4gIA0K
PiA+IC0Jc2tsX2NvbXB1dGVfd21fbGV2ZWxzKGNydGNfc3RhdGUsICZ3bV9wYXJhbXMsIHdtLT53
bSk7DQo+ID4gKwlza2xfY29tcHV0ZV93bV9sZXZlbHMoY3J0Y19zdGF0ZSwgJndtX3BhcmFtcywg
d20sIGZhbHNlKTsNCj4gPiAgCXNrbF9jb21wdXRlX3RyYW5zaXRpb25fd20oY3J0Y19zdGF0ZSwg
JndtX3BhcmFtcywgd20pOw0KPiA+ICANCj4gPiAgCXJldHVybiAwOw0KPiA+IEBAIC00ODk1LDcg
KzUxMDcsNyBAQCBzdGF0aWMgaW50IHNrbF9idWlsZF9wbGFuZV93bV91dihzdHJ1Y3QNCj4gPiBp
bnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlLA0KPiA+ICAJaWYgKHJldCkNCj4gPiAgCQlyZXR1
cm4gcmV0Ow0KPiA+ICANCj4gPiAtCXNrbF9jb21wdXRlX3dtX2xldmVscyhjcnRjX3N0YXRlLCAm
d21fcGFyYW1zLCB3bS0+dXZfd20pOw0KPiA+ICsJc2tsX2NvbXB1dGVfd21fbGV2ZWxzKGNydGNf
c3RhdGUsICZ3bV9wYXJhbXMsIHdtLCB0cnVlKTsNCj4gPiAgDQo+ID4gIAlyZXR1cm4gMDsNCj4g
PiAgfQ0KPiA+IEBAIC01MTY3LDYgKzUzNzksOCBAQCBza2xfZGRiX2FkZF9hZmZlY3RlZF9wbGFu
ZXMoY29uc3Qgc3RydWN0DQo+ID4gaW50ZWxfY3J0Y19zdGF0ZSAqb2xkX2NydGNfc3RhdGUsDQo+
ID4gIAlyZXR1cm4gMDsNCj4gPiAgfQ0KPiA+ICANCj4gPiArc3RhdGljIHZvaWQgdGdsX3NldF9z
YWd2X3dtMChzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSk7DQo+ID4gKw0KPiA+ICBz
dGF0aWMgaW50DQo+ID4gIHNrbF9jb21wdXRlX2RkYihzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRl
ICpzdGF0ZSkNCj4gPiAgew0KPiA+IEBAIC01MTc3LDYgKzUzOTEsMTEgQEAgc2tsX2NvbXB1dGVf
ZGRiKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUNCj4gPiAqc3RhdGUpDQo+ID4gIAlzdHJ1Y3Qg
aW50ZWxfY3J0YyAqY3J0YzsNCj4gPiAgCWludCByZXQsIGk7DQo+ID4gIA0KPiA+ICsJLyogRm9y
IEdlbjEyKyBmb3IgU0FHViB3ZSBoYXZlIGEgc3BlY2lhbCBMMCB3bSB2YWx1ZXMgKi8NCj4gPiAr
CWlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDEyKQ0KPiA+ICsJCWlmIChpbnRlbF9jYW5fZW5h
YmxlX3NhZ3Yoc3RhdGUpKQ0KPiA+ICsJCQl0Z2xfc2V0X3NhZ3Zfd20wKHN0YXRlKTsNCj4gPiAr
DQo+ID4gIAltZW1jcHkoZGRiLCAmZGV2X3ByaXYtPndtLnNrbF9ody5kZGIsIHNpemVvZigqZGRi
KSk7DQo+ID4gIA0KPiA+ICAJZm9yX2VhY2hfb2xkbmV3X2ludGVsX2NydGNfaW5fc3RhdGUoc3Rh
dGUsIGNydGMsDQo+ID4gb2xkX2NydGNfc3RhdGUsDQo+ID4gQEAgLTU0NDMsNiArNTY2Miw1NiBA
QCBzdGF0aWMgaW50IHNrbF93bV9hZGRfYWZmZWN0ZWRfcGxhbmVzKHN0cnVjdA0KPiA+IGludGVs
X2F0b21pY19zdGF0ZSAqc3RhdGUsDQo+ID4gIAlyZXR1cm4gMDsNCj4gPiAgfQ0KPiA+ICANCj4g
PiArdm9pZCB0Z2xfc2V0X3NhZ3Zfd20wKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRl
KQ0KPiA+ICt7DQo+ID4gKwlzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YzsNCj4gPiArCXN0cnVjdCBp
bnRlbF9jcnRjX3N0YXRlICpuZXdfY3J0Y19zdGF0ZTsNCj4gPiArCXN0cnVjdCBpbnRlbF9jcnRj
X3N0YXRlICpvbGRfY3J0Y19zdGF0ZTsNCj4gPiArCXN0cnVjdCBkcm1fZGV2aWNlICpkZXYgPSBz
dGF0ZS0+YmFzZS5kZXY7DQo+ID4gKwljb25zdCBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2
X3ByaXYgPSB0b19pOTE1KGRldik7DQo+ID4gKwlpbnQgaTsNCj4gPiArDQo+ID4gKwkvKg0KPiA+
ICsJICogSWYgd2UgZGV0ZXJtaW5lZCB0aGF0IHdlIGNhbiBhY3R1YWxseSBlbmFibGUgU0FHViwg
dGhlbg0KPiA+ICsJICogYWN0dWFsbHkgdXNlIHRob3NlIGxldmVscyB0Z2xfY2hlY2tfcGlwZV9m
aXRzX3NhZ3Zfd20NCj4gPiArCSAqIGhhcyBhbHJlYWR5IHRha2VuIGNhcmUgb2YgY2hlY2tpbmcg
aWYgTDAgKyBzYWd2IGJsb2NrIHRpbWUNCj4gPiArCSAqIGZpdHMgaW50byBkZGIuDQo+ID4gKwkg
Ki8NCj4gPiArCWZvcl9lYWNoX29sZG5ld19pbnRlbF9jcnRjX2luX3N0YXRlKHN0YXRlLCBjcnRj
LA0KPiA+IG9sZF9jcnRjX3N0YXRlLA0KPiA+ICsJCQkJICAgIG5ld19jcnRjX3N0YXRlLCBpKSB7
DQo+ID4gKwkJc3RydWN0IGludGVsX3BsYW5lICpwbGFuZTsNCj4gPiArDQo+ID4gKwkJZm9yX2Vh
Y2hfaW50ZWxfcGxhbmVfb25fY3J0YygmZGV2X3ByaXYtPmRybSwgY3J0YywNCj4gPiBwbGFuZSkg
ew0KPiA+ICsJCQllbnVtIHBsYW5lX2lkIHBsYW5lX2lkID0gcGxhbmUtPmlkOw0KPiA+ICsNCj4g
PiArCQkJc3RydWN0IHNrbF9wbGFuZV93bSAqcGxhbmVfd20gPSBcDQo+ID4gKwkJCSAgICAmbmV3
X2NydGNfc3RhdGUtDQo+ID4gPndtLnNrbC5vcHRpbWFsLnBsYW5lc1twbGFuZV9pZF07DQo+ID4g
KwkJCXN0cnVjdCBza2xfd21fbGV2ZWwgKnNhZ3Zfd20wID0gJnBsYW5lX3dtLQ0KPiA+ID5zYWd2
X3dtMDsNCj4gPiArCQkJc3RydWN0IHNrbF93bV9sZXZlbCAqbDBfd20wID0gJnBsYW5lX3dtLT53
bVswXTsNCj4gPiArDQo+ID4gKwkJCW1lbWNweShsMF93bTAsIHNhZ3Zfd20wLCBzaXplb2Yoc3Ry
dWN0DQo+ID4gc2tsX3dtX2xldmVsKSk7DQo+ID4gKwkJfQ0KPiA+ICsJfQ0KPiA+ICt9DQo+ID4g
Kw0KPiA+ICtzdGF0aWMgdm9pZCB0Z2xfc2V0X3NhZ3ZfbWFzayhzdHJ1Y3QgaW50ZWxfYXRvbWlj
X3N0YXRlICpzdGF0ZSkNCj4gPiArew0KPiA+ICsJc3RydWN0IGludGVsX2NydGMgKmNydGM7DQo+
ID4gKwlzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqbmV3X2NydGNfc3RhdGU7DQo+ID4gKwlzdHJ1
Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqb2xkX2NydGNfc3RhdGU7DQo+ID4gKwlzdHJ1Y3Qgc2tsX2Rk
Yl9hbGxvY2F0aW9uICpkZGIgPSAmc3RhdGUtPndtX3Jlc3VsdHMuZGRiOw0KPiA+ICsJaW50IHJl
dCwgaTsNCj4gPiArDQo+ID4gKwlmb3JfZWFjaF9vbGRuZXdfaW50ZWxfY3J0Y19pbl9zdGF0ZShz
dGF0ZSwgY3J0YywNCj4gPiBvbGRfY3J0Y19zdGF0ZSwNCj4gPiArCQkJCQkgICAgbmV3X2NydGNf
c3RhdGUsIGkpIHsNCj4gPiArCQlyZXQgPSB0Z2xfY2hlY2tfcGlwZV9maXRzX3NhZ3Zfd20obmV3
X2NydGNfc3RhdGUsIGRkYik7DQo+ID4gKwkJaWYgKCFyZXQpIHsNCj4gPiArCQkJaW50IHBpcGVf
Yml0ID0gQklUKGNydGMtPnBpcGUpOw0KPiA+ICsJCQlzdGF0ZS0+Y3J0Y19zYWd2X21hc2sgfD0g
cGlwZV9iaXQ7DQo+ID4gKwkJfQ0KPiA+ICsJfQ0KPiA+ICt9DQo+ID4gKw0KPiA+ICBzdGF0aWMg
aW50DQo+ID4gIHNrbF9jb21wdXRlX3dtKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRl
KQ0KPiA+ICB7DQo+ID4gQEAgLTU0NTUsNiArNTcyNCw5IEBAIHNrbF9jb21wdXRlX3dtKHN0cnVj
dCBpbnRlbF9hdG9taWNfc3RhdGUNCj4gPiAqc3RhdGUpDQo+ID4gIAkvKiBDbGVhciBhbGwgZGly
dHkgZmxhZ3MgKi8NCj4gPiAgCXJlc3VsdHMtPmRpcnR5X3BpcGVzID0gMDsNCj4gPiAgDQo+ID4g
KwkvKiBJZiB3ZSBleGl0IGJlZm9yZSBjaGVjayBpcyBkb25lICovDQo+ID4gKwlzdGF0ZS0+Y3J0
Y19zYWd2X21hc2sgPSAwOw0KPiA+ICsNCj4gPiAgCXJldCA9IHNrbF9kZGJfYWRkX2FmZmVjdGVk
X3BpcGVzKHN0YXRlKTsNCj4gPiAgCWlmIChyZXQpDQo+ID4gIAkJcmV0dXJuIHJldDsNCj4gPiAt
LSANCj4gPiAyLjE3LjENCj4gPiANCj4gPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXw0KPiA+IEludGVsLWdmeCBtYWlsaW5nIGxpc3QNCj4gPiBJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+ID4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngNCj4gDQo+IA0KX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
