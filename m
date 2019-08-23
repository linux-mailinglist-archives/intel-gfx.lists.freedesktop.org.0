Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DF10E9B5B5
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Aug 2019 19:48:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 527DD6ED08;
	Fri, 23 Aug 2019 17:48:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 237086ED08
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Aug 2019 17:47:59 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Aug 2019 10:47:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,422,1559545200"; d="scan'208";a="378934827"
Received: from fmsmsx106.amr.corp.intel.com ([10.18.124.204])
 by fmsmga005.fm.intel.com with ESMTP; 23 Aug 2019 10:47:58 -0700
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.69]) by
 FMSMSX106.amr.corp.intel.com ([169.254.5.251]) with mapi id 14.03.0439.000;
 Fri, 23 Aug 2019 10:47:58 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915: Add 324mhz and 326.4mhz cdclks for gen11+
Thread-Index: AQHVWQcebQo4WYd2LEKDs7/OOw/M/qcJeRaA
Date: Fri, 23 Aug 2019 17:47:58 +0000
Message-ID: <15eb5dcc645d4a1003b930f71bfa660eaa355c14.camel@intel.com>
References: <20190822163133.27587-1-matthew.d.roper@intel.com>
In-Reply-To: <20190822163133.27587-1-matthew.d.roper@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.9.135]
Content-ID: <1F109F09F61BF6499F302043F14E4C9D@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Add 324mhz and 326.4mhz cdclks
 for gen11+
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
Cc: "De Marchi, Lucas" <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCAyMDE5LTA4LTIyIGF0IDA5OjMxIC0wNzAwLCBNYXR0IFJvcGVyIHdyb3RlOg0KPiBU
aGUgYnNwZWMgd2FzIHJlY2VudGx5IHVwZGF0ZWQgd2l0aCB0aGVzZSBuZXcgY2RjbGsgdmFsdWVz
IGZvciBJQ0wsDQo+IEVITCwNCj4gYW5kIFRHTC4NCj4gDQo+IEJzcGVjOiAyMDU5OA0KPiBCc3Bl
YzogNDkyMDENCg0KUmV2aWV3ZWQtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291
emFAaW50ZWwuY29tPg0KDQo+IENjOiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXph
QGludGVsLmNvbT4NCj4gQ2M6IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwu
Y29tPg0KPiBTaWduZWQtb2ZmLWJ5OiBNYXR0IFJvcGVyIDxtYXR0aGV3LmQucm9wZXJAaW50ZWwu
Y29tPg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY2RjbGsu
YyB8IDggKysrKysrLS0NCj4gIDEgZmlsZSBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKyksIDIgZGVs
ZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9jZGNsay5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9j
ZGNsay5jDQo+IGluZGV4IGQwYmM0MmU1MDM5Yy4uMGJlMTM3YTkxMjlhIDEwMDY0NA0KPiAtLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NkY2xrLmMNCj4gKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jZGNsay5jDQo+IEBAIC0xNzQ4LDggKzE3
NDgsMTAgQEAgc3RhdGljIHZvaWQgY25sX3Nhbml0aXplX2NkY2xrKHN0cnVjdA0KPiBkcm1faTkx
NV9wcml2YXRlICpkZXZfcHJpdikNCj4gIA0KPiAgc3RhdGljIGludCBpY2xfY2FsY19jZGNsayhp
bnQgbWluX2NkY2xrLCB1bnNpZ25lZCBpbnQgcmVmKQ0KPiAgew0KPiAtCXN0YXRpYyBjb25zdCBp
bnQgcmFuZ2VzXzI0W10gPSB7IDE4MDAwMCwgMTkyMDAwLCAzMTIwMDAsDQo+IDU1MjAwMCwgNjQ4
MDAwIH07DQo+IC0Jc3RhdGljIGNvbnN0IGludCByYW5nZXNfMTlfMzhbXSA9IHsgMTcyODAwLCAx
OTIwMDAsIDMwNzIwMCwNCj4gNTU2ODAwLCA2NTI4MDAgfTsNCj4gKwlzdGF0aWMgY29uc3QgaW50
IHJhbmdlc18yNFtdID0geyAxODAwMDAsIDE5MjAwMCwgMzEyMDAwLA0KPiAzMjQwMDAsDQo+ICsJ
CQkJCSA1NTIwMDAsIDY0ODAwMCB9Ow0KPiArCXN0YXRpYyBjb25zdCBpbnQgcmFuZ2VzXzE5XzM4
W10gPSB7IDE3MjgwMCwgMTkyMDAwLCAzMDcyMDAsDQo+IDMyNjQwMCwNCj4gKwkJCQkJICAgIDU1
NjgwMCwgNjUyODAwIH07DQo+ICAJY29uc3QgaW50ICpyYW5nZXM7DQo+ICAJaW50IGxlbiwgaTsN
Cj4gIA0KPiBAQCAtMTc5MCw2ICsxNzkyLDcgQEAgc3RhdGljIGludCBpY2xfY2FsY19jZGNsa19w
bGxfdmNvKHN0cnVjdA0KPiBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwgaW50IGNkY2xrKQ0K
PiAgCQkvKiBmYWxsIHRocm91Z2ggKi8NCj4gIAljYXNlIDE3MjgwMDoNCj4gIAljYXNlIDMwNzIw
MDoNCj4gKwljYXNlIDMyNjQwMDoNCj4gIAljYXNlIDU1NjgwMDoNCj4gIAljYXNlIDY1MjgwMDoN
Cj4gIAkJV0FSTl9PTihkZXZfcHJpdi0+Y2RjbGsuaHcucmVmICE9IDE5MjAwICYmDQo+IEBAIC0x
Nzk3LDYgKzE4MDAsNyBAQCBzdGF0aWMgaW50IGljbF9jYWxjX2NkY2xrX3BsbF92Y28oc3RydWN0
DQo+IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LCBpbnQgY2RjbGspDQo+ICAJCWJyZWFrOw0K
PiAgCWNhc2UgMTgwMDAwOg0KPiAgCWNhc2UgMzEyMDAwOg0KPiArCWNhc2UgMzI0MDAwOg0KPiAg
CWNhc2UgNTUyMDAwOg0KPiAgCWNhc2UgNjQ4MDAwOg0KPiAgCQlXQVJOX09OKGRldl9wcml2LT5j
ZGNsay5ody5yZWYgIT0gMjQwMDApOw0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4
