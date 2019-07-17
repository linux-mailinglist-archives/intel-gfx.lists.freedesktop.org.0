Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D6006BFC0
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jul 2019 18:41:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 94C546E20F;
	Wed, 17 Jul 2019 16:41:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4B1E76E20F
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Jul 2019 16:41:15 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Jul 2019 09:41:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,275,1559545200"; d="scan'208";a="178953945"
Received: from fmsmsx106.amr.corp.intel.com ([10.18.124.204])
 by orsmga002.jf.intel.com with ESMTP; 17 Jul 2019 09:41:14 -0700
Received: from fmsmsx112.amr.corp.intel.com (10.18.116.6) by
 FMSMSX106.amr.corp.intel.com (10.18.124.204) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 17 Jul 2019 09:41:14 -0700
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.206]) by
 FMSMSX112.amr.corp.intel.com ([169.254.5.121]) with mapi id 14.03.0439.000;
 Wed, 17 Jul 2019 09:41:13 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Pandiyan, Dhinakaran" <dhinakaran.pandiyan@intel.com>
Thread-Topic: [PATCH] drm/i915/vbt: Fix VBT parsing for the PSR section
Thread-Index: AQHVPCKtG8EeTEWpC0ygmYQ17ARw+qbOQ7AAgAE2QwA=
Date: Wed, 17 Jul 2019 16:41:13 +0000
Message-ID: <d4f264e726553842912fc007272aa61486d6994a.camel@intel.com>
References: <20190716220321.32192-1-dhinakaran.pandiyan@intel.com>
 <df5f95a4c2a7e7bf9fd076f43e4e65bfb10375d1.camel@intel.com>
In-Reply-To: <df5f95a4c2a7e7bf9fd076f43e4e65bfb10375d1.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.121.162.142]
Content-ID: <288BA46C382CC84EAF4D6E7C2DABC5EC@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/vbt: Fix VBT parsing for the PSR
 section
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCAyMDE5LTA3LTE2IGF0IDE1OjEwIC0wNzAwLCBQYW5kaXlhbiwgRGhpbmFrYXJhbiB3
cm90ZToNCj4gT24gVHVlLCAyMDE5LTA3LTE2IGF0IDE1OjAzIC0wNzAwLCBEaGluYWthcmFuIFBh
bmRpeWFuIHdyb3RlOg0KPiA+IEEgc2luZ2xlIDMyLWJpdCBQU1IyIHRyYWluaW5nIHBhdHRlcm4g
ZmllbGQgZm9sbG93cyB0aGUgc2l4dGVlbg0KPiA+IGVsZW1lbnQNCj4gPiBhcnJheSBvZiBQU1Ig
dGFibGUgZW50cmllcyBpbiB0aGUgVkJUIHNwZWMuIEJ1dCwgd2UgaW5jb3JyZWN0bHkNCj4gPiBk
ZWZpbmUNCj4gPiB0aGlzIFBTUjIgZmllbGQgZm9yIGVhY2ggb2YgdGhlIFBTUiB0YWJsZSBlbnRy
aWVzLiBBcyBhIHJlc3VsdCwgdGhlDQo+ID4gUFNSMQ0KPiA+IHRyYWluaW5nIHBhdHRlcm4gZHVy
YXRpb24gZm9yIGFueSBwYW5lbF90eXBlICE9IDAgd2lsbCBiZSBwYXJzZWQNCj4gPiBpbmNvcnJl
Y3RseS4gU2Vjb25kbHksIFBTUjIgdHJhaW5pbmcgcGF0dGVybiBkdXJhdGlvbnMgZm9yIFZCVHMN
Cj4gPiB3aXRoIGJkYg0KPiA+IHZlcnNpb24gPj0gMjI2IHdpbGwgYWxzbyBiZSB3cm9uZy4NCj4g
DQo+IFRoaXMgd2FzIHJlcG9ydGVkIGFuZCBiaXNlY3RlZCBieSANCj4gQWxpYWtzZWkgVXJiYW5z
a2kgaGVyZSAtIA0KPiBodHRwczovL2J1Z3ppbGxhLmtlcm5lbC5vcmcvc2hvd19idWcuY2dpP2lk
PTIwNDE4Mw0KPiANCj4gSSdsbCBhZGQgQnVnemlsbGEgYWZ0ZXIgdGhlIGZpeCBpcyBjb25maXJt
ZWQuDQo+IA0KDQpPb2hoIGl0IG1ha2VzIHNlbnNlLCB0aGFua3MgZm9yIHNwb3R0aW5nIGl0Lg0K
DQpBbmQgMiB1c2VycyByZXBvcnRlZCB0aGF0IGl0IHdvcmtzOg0KaHR0cHM6Ly9idWd6aWxsYS5r
ZXJuZWwub3JnL3Nob3dfYnVnLmNnaT9pZD0yMDQxODMNCmh0dHBzOi8vYnVncy5mcmVlZGVza3Rv
cC5vcmcvc2hvd19idWcuY2dpP2lkPTExMTA4OA0KDQpDYW4geW91IGFsc28gQ0Mga2VybmVsIHN0
YWJsZSBzbyB0aGUgZml4IGlzIGNoZXJyeS1waWNrZWQ/DQoNClJldmlld2VkLWJ5OiBKb3PDqSBS
b2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4NCg0KDQo+IENjOiBSb2RyaWdv
IFZpdmkgPHJvZHJpZ28udml2aUBpbnRlbC5jb20+DQo+IENjOiBKb3PDqSBSb2JlcnRvIGRlIFNv
dXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4NCj4gRml4ZXM6IDg4YTBkOTYwNmFmZiAoImRybS9p
OTE1L3ZidDogUGFyc2UgYW5kIHVzZSB0aGUgbmV3IGZpZWxkIHdpdGgNCj4gUFNSMiBUUDIvMyB3
YWtldXAgdGltZSIpeg0KPiBTaWduZWQtb2ZmLWJ5OiBEaGluYWthcmFuIFBhbmRpeWFuIDxkaGlu
YWthcmFuLnBhbmRpeWFuQGludGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Jpb3MuYyAgICAgfCAyICstDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX3ZidF9kZWZzLmggfCA2ICsrKy0tLQ0KPiAgMiBmaWxlcyBjaGFuZ2Vk
LCA0IGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9zLmMNCj4gYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuYw0KPiBpbmRleCAyMTUwMWQ1NjUzMjcuLmI0MTZi
Mzk0YjY0MSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9iaW9zLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9z
LmMNCj4gQEAgLTc2Niw3ICs3NjYsNyBAQCBwYXJzZV9wc3Ioc3RydWN0IGRybV9pOTE1X3ByaXZh
dGUgKmRldl9wcml2LA0KPiBjb25zdCBzdHJ1Y3QgYmRiX2hlYWRlciAqYmRiKQ0KPiAgCX0NCj4g
IA0KPiAgCWlmIChiZGItPnZlcnNpb24gPj0gMjI2KSB7DQo+IC0JCXUzMiB3YWtldXBfdGltZSA9
IHBzcl90YWJsZS0+cHNyMl90cDJfdHAzX3dha2V1cF90aW1lOw0KPiArCQl1MzIgd2FrZXVwX3Rp
bWUgPSBwc3ItPnBzcjJfdHAyX3RwM193YWtldXBfdGltZTsNCj4gIA0KPiAgCQl3YWtldXBfdGlt
ZSA9ICh3YWtldXBfdGltZSA+PiAoMiAqIHBhbmVsX3R5cGUpKSAmIDB4MzsNCj4gIAkJc3dpdGNo
ICh3YWtldXBfdGltZSkgew0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF92YnRfZGVmcy5oDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF92YnRfZGVmcy5oDQo+IGluZGV4IDkzZjVjOWQyMDRkNi4uMDljZDM3ZmIwYjFjIDEwMDY0
NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3ZidF9kZWZzLmgN
Cj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92YnRfZGVmcy5oDQo+
IEBAIC00ODEsMTMgKzQ4MSwxMyBAQCBzdHJ1Y3QgcHNyX3RhYmxlIHsNCj4gIAkvKiBUUCB3YWtl
IHVwIHRpbWUgaW4gbXVsdGlwbGUgb2YgMTAwICovDQo+ICAJdTE2IHRwMV93YWtldXBfdGltZTsN
Cj4gIAl1MTYgdHAyX3RwM193YWtldXBfdGltZTsNCj4gLQ0KPiAtCS8qIFBTUjIgVFAyL1RQMyB3
YWtldXAgdGltZSBmb3IgMTYgcGFuZWxzICovDQo+IC0JdTMyIHBzcjJfdHAyX3RwM193YWtldXBf
dGltZTsNCj4gIH0gX19wYWNrZWQ7DQo+ICANCj4gIHN0cnVjdCBiZGJfcHNyIHsNCj4gIAlzdHJ1
Y3QgcHNyX3RhYmxlIHBzcl90YWJsZVsxNl07DQo+ICsNCj4gKwkvKiBQU1IyIFRQMi9UUDMgd2Fr
ZXVwIHRpbWUgZm9yIDE2IHBhbmVscyAqLw0KPiArCXUzMiBwc3IyX3RwMl90cDNfd2FrZXVwX3Rp
bWU7DQo+ICB9IF9fcGFja2VkOw0KPiAgDQo+ICAvKg0KX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4
