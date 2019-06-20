Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A25F4C48E
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Jun 2019 02:37:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C1B3E6E49B;
	Thu, 20 Jun 2019 00:37:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0ECB26E49B
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Jun 2019 00:37:46 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Jun 2019 17:37:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,394,1557212400"; d="scan'208";a="160513756"
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
 by fmsmga008.fm.intel.com with ESMTP; 19 Jun 2019 17:37:45 -0700
Received: from fmsmsx121.amr.corp.intel.com (10.18.125.36) by
 FMSMSX103.amr.corp.intel.com (10.18.124.201) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 19 Jun 2019 17:37:45 -0700
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.210]) by
 fmsmsx121.amr.corp.intel.com ([169.254.6.8]) with mapi id 14.03.0439.000;
 Wed, 19 Jun 2019 17:37:45 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH 2/3] drm/i915/ehl: Remove unsupported cd
 clocks
Thread-Index: AQHVJihD1WwDb4y2TE++vRLhxiZsz6ajUL2AgADZCwA=
Date: Thu, 20 Jun 2019 00:37:44 +0000
Message-ID: <a3fb1a9c2095fc9b97f7fc046fcc0686e452551e.camel@intel.com>
References: <20190618225035.31816-1-jose.souza@intel.com>
 <20190618225035.31816-2-jose.souza@intel.com>
 <20190619114055.GV5942@intel.com>
In-Reply-To: <20190619114055.GV5942@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.8.250]
Content-ID: <4AA209F22806F3428BB700231637DDF7@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915/ehl: Remove unsupported cd
 clocks
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

T24gV2VkLCAyMDE5LTA2LTE5IGF0IDE0OjQwICswMzAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
DQo+IE9uIFR1ZSwgSnVuIDE4LCAyMDE5IGF0IDAzOjUwOjM0UE0gLTA3MDAsIEpvc8OpIFJvYmVy
dG8gZGUgU291emENCj4gd3JvdGU6DQo+ID4gRUhMIGRvIG5vdCBzdXBwb3J0IDY0OCBhbmQgNjUy
LjggTUh6Lg0KPiANCj4gWW91IHNob3VsZCBtb2RpZnkgdGhlIG1heF9jZGNsaygpIGZ1bmN0aW9u
IGluc3RlYWQuIEkgdGhpbmsgdGhhdA0KPiBhbG9uZw0KPiBzaG91bGQgYmUgc3VmZmljaWVudC4N
Cg0KT2theSBhbmQgaXQgbWFrZXMgdGhlIHBhdGNoIHNtYWxsZXIsIHRoYW5rcw0KDQo+IA0KPiA+
IEJTcGVjOiAyMDU5OA0KPiA+IENjOiBDbGludCBUYXlsb3IgPENsaW50b24uQS5UYXlsb3JAaW50
ZWwuY29tPg0KPiA+IENjOiBNYXR0IFJvcGVyIDxtYXR0aGV3LmQucm9wZXJAaW50ZWwuY29tPg0K
PiA+IFNpZ25lZC1vZmYtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50
ZWwuY29tPg0KPiA+IC0tLQ0KPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2NkY2xrLmMgfCAxNyArKysrKysrKysrKysrLS0tLQ0KPiA+ICAxIGZpbGUgY2hhbmdlZCwgMTMg
aW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkNCj4gPiANCj4gPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jZGNsay5jDQo+ID4gYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NkY2xrLmMNCj4gPiBpbmRleCBkNTYwZTI1ZDNmYjUu
LjI2YzE3ZWNmMjA4MyAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2NkY2xrLmMNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2NkY2xrLmMNCj4gPiBAQCAtMTc1NCw3ICsxNzU0LDggQEAgc3RhdGljIHZvaWQgY25s
X3Nhbml0aXplX2NkY2xrKHN0cnVjdA0KPiA+IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQ0K
PiA+ICAJZGV2X3ByaXYtPmNkY2xrLmh3LnZjbyA9IC0xOw0KPiA+ICB9DQo+ID4gIA0KPiA+IC1z
dGF0aWMgaW50IGljbF9jYWxjX2NkY2xrKGludCBtaW5fY2RjbGssIHVuc2lnbmVkIGludCByZWYp
DQo+ID4gK3N0YXRpYyBpbnQgaWNsX2NhbGNfY2RjbGsoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUg
KmRldl9wcml2LCBpbnQNCj4gPiBtaW5fY2RjbGssDQo+ID4gKwkJCSAgdW5zaWduZWQgaW50IHJl
ZikNCj4gPiAgew0KPiA+ICAJY29uc3QgaW50IHJhbmdlc18yNFtdID0geyAxODAwMDAsIDE5MjAw
MCwgMzEyMDAwLCA1NTIwMDAsDQo+ID4gNjQ4MDAwIH07DQo+ID4gIAljb25zdCBpbnQgcmFuZ2Vz
XzE5XzM4W10gPSB7IDE3MjgwMCwgMTkyMDAwLCAzMDcyMDAsIDU1NjgwMCwNCj4gPiA2NTI4MDAg
fTsNCj4gPiBAQCAtMTc3Niw2ICsxNzc3LDEyIEBAIHN0YXRpYyBpbnQgaWNsX2NhbGNfY2RjbGso
aW50IG1pbl9jZGNsaywNCj4gPiB1bnNpZ25lZCBpbnQgcmVmKQ0KPiA+ICAJCWJyZWFrOw0KPiA+
ICAJfQ0KPiA+ICANCj4gPiArCS8qDQo+ID4gKwkgKiBFSEwgZG8gbm90IHN1cHBvcnQgNjQ4IGFu
ZCA2NTIuOCBNSHosIHNvIGp1c3QgZGVjcmVtZW50IHRoZQ0KPiA+IGxlbg0KPiA+ICsJICovDQo+
ID4gKwlpZiAoSVNfRUxLSEFSVExBS0UoZGV2X3ByaXYpKQ0KPiA+ICsJCWxlbi0tOw0KPiA+ICsN
Cj4gPiAgCWZvciAoaSA9IDA7IGkgPCBsZW47IGkrKykgew0KPiA+ICAJCWlmIChtaW5fY2RjbGsg
PD0gcmFuZ2VzW2ldKQ0KPiA+ICAJCQlyZXR1cm4gcmFuZ2VzW2ldOw0KPiA+IEBAIC0xOTU0LDcg
KzE5NjEsOCBAQCBzdGF0aWMgdm9pZCBpY2xfaW5pdF9jZGNsayhzdHJ1Y3QNCj4gPiBkcm1faTkx
NV9wcml2YXRlICpkZXZfcHJpdikNCj4gPiAgCURSTV9ERUJVR19LTVMoIlNhbml0aXppbmcgY2Rj
bGsgcHJvZ3JhbW1lZCBieSBwcmUtb3NcbiIpOw0KPiA+ICANCj4gPiAgCXNhbml0aXplZF9zdGF0
ZS5yZWYgPSBkZXZfcHJpdi0+Y2RjbGsuaHcucmVmOw0KPiA+IC0Jc2FuaXRpemVkX3N0YXRlLmNk
Y2xrID0gaWNsX2NhbGNfY2RjbGsoMCwgc2FuaXRpemVkX3N0YXRlLnJlZik7DQo+ID4gKwlzYW5p
dGl6ZWRfc3RhdGUuY2RjbGsgPSBpY2xfY2FsY19jZGNsayhkZXZfcHJpdiwgMCwNCj4gPiArCQkJ
CQkgICAgICAgc2FuaXRpemVkX3N0YXRlLnJlZik7DQo+ID4gIAlzYW5pdGl6ZWRfc3RhdGUudmNv
ID0gaWNsX2NhbGNfY2RjbGtfcGxsX3ZjbyhkZXZfcHJpdiwNCj4gPiAgCQkJCQkJICAgICBzYW5p
dGl6ZWRfc3RhdGUuY2QNCj4gPiBjbGspOw0KPiA+ICAJc2FuaXRpemVkX3N0YXRlLnZvbHRhZ2Vf
bGV2ZWwgPQ0KPiA+IEBAIC0yNTU0LDcgKzI1NjIsNyBAQCBzdGF0aWMgaW50IGljbF9tb2Rlc2V0
X2NhbGNfY2RjbGsoc3RydWN0DQo+ID4gaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSkNCj4gPiAg
CWlmIChtaW5fY2RjbGsgPCAwKQ0KPiA+ICAJCXJldHVybiBtaW5fY2RjbGs7DQo+ID4gIA0KPiA+
IC0JY2RjbGsgPSBpY2xfY2FsY19jZGNsayhtaW5fY2RjbGssIHJlZik7DQo+ID4gKwljZGNsayA9
IGljbF9jYWxjX2NkY2xrKGRldl9wcml2LCBtaW5fY2RjbGssIHJlZik7DQo+ID4gIAl2Y28gPSBp
Y2xfY2FsY19jZGNsa19wbGxfdmNvKGRldl9wcml2LCBjZGNsayk7DQo+ID4gIA0KPiA+ICAJc3Rh
dGUtPmNkY2xrLmxvZ2ljYWwudmNvID0gdmNvOw0KPiA+IEBAIC0yNTY0LDcgKzI1NzIsOCBAQCBz
dGF0aWMgaW50IGljbF9tb2Rlc2V0X2NhbGNfY2RjbGsoc3RydWN0DQo+ID4gaW50ZWxfYXRvbWlj
X3N0YXRlICpzdGF0ZSkNCj4gPiAgCQkgICAgY25sX2NvbXB1dGVfbWluX3ZvbHRhZ2VfbGV2ZWwo
c3RhdGUpKTsNCj4gPiAgDQo+ID4gIAlpZiAoIXN0YXRlLT5hY3RpdmVfY3J0Y3MpIHsNCj4gPiAt
CQljZGNsayA9IGljbF9jYWxjX2NkY2xrKHN0YXRlLT5jZGNsay5mb3JjZV9taW5fY2RjbGssDQo+
ID4gcmVmKTsNCj4gPiArCQljZGNsayA9IGljbF9jYWxjX2NkY2xrKGRldl9wcml2LCBzdGF0ZS0N
Cj4gPiA+Y2RjbGsuZm9yY2VfbWluX2NkY2xrLA0KPiA+ICsJCQkJICAgICAgIHJlZik7DQo+ID4g
IAkJdmNvID0gaWNsX2NhbGNfY2RjbGtfcGxsX3ZjbyhkZXZfcHJpdiwgY2RjbGspOw0KPiA+ICAN
Cj4gPiAgCQlzdGF0ZS0+Y2RjbGsuYWN0dWFsLnZjbyA9IHZjbzsNCj4gPiAtLSANCj4gPiAyLjIy
LjANCj4gPiANCj4gPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXw0KPiA+IEludGVsLWdmeCBtYWlsaW5nIGxpc3QNCj4gPiBJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnDQo+ID4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZngNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeA==
