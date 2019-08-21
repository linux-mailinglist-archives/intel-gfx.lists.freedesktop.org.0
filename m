Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CE4E97D5A
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Aug 2019 16:43:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 62B966E440;
	Wed, 21 Aug 2019 14:43:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 050056E440
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Aug 2019 14:43:06 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 Aug 2019 07:43:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,412,1559545200"; d="scan'208";a="181047128"
Received: from irsmsx107.ger.corp.intel.com ([163.33.3.99])
 by orsmga003.jf.intel.com with ESMTP; 21 Aug 2019 07:43:05 -0700
Received: from irsmsx105.ger.corp.intel.com ([169.254.7.73]) by
 IRSMSX107.ger.corp.intel.com ([169.254.10.55]) with mapi id 14.03.0439.000;
 Wed, 21 Aug 2019 15:43:04 +0100
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "De
 Marchi, Lucas" <lucas.demarchi@intel.com>
Thread-Topic: [Intel-gfx] [PATCH v2 28/40] drm/i915/tgl: add
 GEN12_MAX_CONTEXT_HW_ID
Thread-Index: AQHVVN/HuT119Q7OL0CIdt8ytTU4IacFomaA
Date: Wed, 21 Aug 2019 14:43:03 +0000
Message-ID: <34a838ea9789f72eb2eb749675ee6f976451487a.camel@intel.com>
References: <20190817093902.2171-1-lucas.demarchi@intel.com>
 <20190817093902.2171-29-lucas.demarchi@intel.com>
In-Reply-To: <20190817093902.2171-29-lucas.demarchi@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.237.66.154]
Content-ID: <EE77D8C6D8B2D740B3ED55CD855C69C4@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2 28/40] drm/i915/tgl: add
 GEN12_MAX_CONTEXT_HW_ID
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

T24gU2F0LCAyMDE5LTA4LTE3IGF0IDAyOjM4IC0wNzAwLCBMdWNhcyBEZSBNYXJjaGkgd3JvdGU6
DQo+IEZyb206IERhbmllbGUgQ2VyYW9sbyBTcHVyaW8gPGRhbmllbGUuY2VyYW9sb3NwdXJpb0Bp
bnRlbC5jb20+DQo+IA0KPiBMaWtlIEdlbjExLCBHZW4xMiBoYXMgMTEgYXZhaWxhYmxlIGJpdHMg
Zm9yIHRoZSBjdHggaWQgZmllbGQuDQo+IEhvd2V2ZXIsDQo+IHRoZSBsYXN0IHZhbHVlICgweDdG
RikgaXMgcmVzZXJ2ZWQgdG8gaW5kaWNhdGUgZW5naW5lIGlkbGUsIHNvIHdlDQo+IG5lZWQgdG8g
cmVkdWNlIHRoZSBtYXhpbXVtIG51bWJlciBvZiBjb250ZXh0cyBieSAxIGNvbXBhcmVkIHRvIEdl
bjExLg0KPiANCj4gQ2M6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPg0K
PiBTaWduZWQtb2ZmLWJ5OiBEYW5pZWxlIENlcmFvbG8gU3B1cmlvIDwNCj4gZGFuaWVsZS5jZXJh
b2xvc3B1cmlvQGludGVsLmNvbT4NCj4gU2lnbmVkLW9mZi1ieTogTHVjYXMgRGUgTWFyY2hpIDxs
dWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z2VtL2k5MTVfZ2VtX2NvbnRleHQuYyB8IDQgKysrLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9kcnYuaCAgICAgICAgICAgICB8IDIgKysNCj4gIDIgZmlsZXMgY2hhbmdlZCwgNSBpbnNl
cnRpb25zKCspLCAxIGRlbGV0aW9uKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2NvbnRleHQuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2dlbS9pOTE1X2dlbV9jb250ZXh0LmMNCj4gaW5kZXggY2QxZmQyZTU0MjNhLi4xY2RmZTA1NTE0
YzMgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9jb250
ZXh0LmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2NvbnRleHQu
Yw0KPiBAQCAtMTczLDcgKzE3Myw5IEBAIHN0YXRpYyBpbmxpbmUgaW50IG5ld19od19pZChzdHJ1
Y3QNCj4gZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwgZ2ZwX3QgZ2ZwKQ0KPiAgDQo+ICAJbG9ja2Rl
cF9hc3NlcnRfaGVsZCgmaTkxNS0+Y29udGV4dHMubXV0ZXgpOw0KPiAgDQo+IC0JaWYgKElOVEVM
X0dFTihpOTE1KSA+PSAxMSkNCj4gKwlpZiAoSU5URUxfR0VOKGk5MTUpID49IDEyKQ0KPiArCQlt
YXggPSBHRU4xMl9NQVhfQ09OVEVYVF9IV19JRDsNCj4gKwllbHNlIGlmIChJTlRFTF9HRU4oaTkx
NSkgPj0gMTEpDQo+ICAJCW1heCA9IEdFTjExX01BWF9DT05URVhUX0hXX0lEOw0KPiAgCWVsc2Ug
aWYgKFVTRVNfR1VDX1NVQk1JU1NJT04oaTkxNSkpDQo+ICAJCS8qDQo+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9kcnYuaA0KPiBpbmRleCBkNmM4ZWZjYmE2MTIuLmM5YjFiOTRhNjIwZiAxMDA2NDQNCj4g
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaA0KPiArKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X2Rydi5oDQo+IEBAIC0xNjA1LDYgKzE2MDUsOCBAQCBzdHJ1Y3QgZHJt
X2k5MTVfcHJpdmF0ZSB7DQo+ICAjZGVmaW5lIE1BWF9DT05URVhUX0hXX0lEICgxPDwyMSkgLyog
ZXhjbHVzaXZlICovDQo+ICAjZGVmaW5lIE1BWF9HVUNfQ09OVEVYVF9IV19JRCAoMSA8PCAyMCkg
LyogZXhjbHVzaXZlICovDQo+ICAjZGVmaW5lIEdFTjExX01BWF9DT05URVhUX0hXX0lEICgxPDwx
MSkgLyogZXhjbHVzaXZlICovDQo+ICsvKiBpbiBHZW4xMiBJRCAweDdGRiBpcyByZXNlcnZlZCB0
byBpbmRpY2F0ZSBpZGxlICovDQo+ICsjZGVmaW5lIEdFTjEyX01BWF9DT05URVhUX0hXX0lECShH
RU4xMV9NQVhfQ09OVEVYVF9IV19JRCAtIDEpDQo+ICAJCXN0cnVjdCBsaXN0X2hlYWQgaHdfaWRf
bGlzdDsNCj4gIAl9IGNvbnRleHRzOw0KPiAgDQoNClJldmlld2VkLWJ5OiBTdGFuaXNsYXYgTGlz
b3Zza2l5IDxzdGFuaXNsYXYubGlzb3Zza2l5QGludGVsLmNvbT4NCg0KDQpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
