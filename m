Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4982A308B5C
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Jan 2021 18:26:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 44F6E6EBA8;
	Fri, 29 Jan 2021 17:26:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 104F06EB95
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Jan 2021 17:26:11 +0000 (UTC)
IronPort-SDR: BigG+ZwIQkBSHJgtMhYevebsTwhjBvyadO43wQOu4e0890XuNC6SG8Xl6k3MH5UheFTGSZcWJn
 hA+0SecMgkPg==
X-IronPort-AV: E=McAfee;i="6000,8403,9879"; a="160227578"
X-IronPort-AV: E=Sophos;i="5.79,386,1602572400"; d="scan'208";a="160227578"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2021 09:26:10 -0800
IronPort-SDR: CsFaLtoX+0oglhjZdzY2TpgaR6UrEG9jeWhGEfuE89YWlBzhBBPPIwbI46fdHF9UAcZ42cwYse
 gDGsk6U696fw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,386,1602572400"; d="scan'208";a="389389650"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by orsmga008.jf.intel.com with ESMTP; 29 Jan 2021 09:26:10 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Fri, 29 Jan 2021 09:26:10 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Fri, 29 Jan 2021 09:26:09 -0800
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2106.002;
 Fri, 29 Jan 2021 09:26:09 -0800
From: "Souza, Jose" <jose.souza@intel.com>
To: "Swarup, Aditya" <aditya.swarup@intel.com>, "Roper, Matthew D"
 <matthew.d.roper@intel.com>
Thread-Topic: [Intel-gfx] [PATCH 8/9] drm/i915/adl_s: Add display WAs for ADL-S
Thread-Index: AQHW9GK6VwlQlcuPNEutV3pR+7vyaqo7dgyAgAGYTACAAlcJAA==
Date: Fri, 29 Jan 2021 17:26:09 +0000
Message-ID: <3392d28bd0b44d5e400693c581067a61269939bf.camel@intel.com>
References: <20210127041159.136409-1-aditya.swarup@intel.com>
 <20210127041159.136409-9-aditya.swarup@intel.com>
 <20210127052207.GL787460@mdroper-desk1.amr.corp.intel.com>
 <7bb0e05b-20ab-9cd4-9010-6ad1b120b459@intel.com>
In-Reply-To: <7bb0e05b-20ab-9cd4-9010-6ad1b120b459@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-ID: <FA7E925D0EBE784A95630F0CF7CECC67@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 8/9] drm/i915/adl_s: Add display WAs for
 ADL-S
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "De Marchi, Lucas" <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCAyMDIxLTAxLTI3IGF0IDIxOjQzIC0wODAwLCBBZGl0eWEgU3dhcnVwIHdyb3RlOg0K
PiBPbiAxLzI2LzIxIDk6MjIgUE0sIE1hdHQgUm9wZXIgd3JvdGU6DQo+ID4gT24gVHVlLCBKYW4g
MjYsIDIwMjEgYXQgMDg6MTE6NThQTSAtMDgwMCwgQWRpdHlhIFN3YXJ1cCB3cm90ZToNCj4gPiA+
IC0gRXh0ZW5kIHBlcm1hbmVudCBkcml2ZXIgV0EgV2FfMTQwOTc2NzEwOCwgV2FfMTQwMTA2ODUz
MzINCj4gPiA+IMKgwqBhbmQgV2FfMTQwMTEyOTQxODggdG8gYWRsLXMuDQo+ID4gPiAtIEV4dGVu
ZCBwZXJtYW5lbnQgZHJpdmVyIFdBIFdhXzE2MDYwNTQxODggdG8gYWRsLXMuDQo+ID4gPiAtIEFk
ZCBXYV8xNDAxMTc2NTI0MiBmb3IgYWRsLXMgQTAgc3RlcHBpbmcuDQo+ID4gPiANCj4gPiA+IENj
OiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPg0KPiA+ID4gQ2M6IFZpbGxlIFN5
cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+ID4gPiBDYzogSW1yZSBE
ZWFrIDxpbXJlLmRlYWtAaW50ZWwuY29tPg0KPiA+ID4gQ2M6IE1hdHQgUm9wZXIgPG1hdHRoZXcu
ZC5yb3BlckBpbnRlbC5jb20+DQo+ID4gPiBDYzogTHVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1h
cmNoaUBpbnRlbC5jb20+DQo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBBZGl0eWEgU3dhcnVwIDxhZGl0
eWEuc3dhcnVwQGludGVsLmNvbT4NCj4gPiA+IC0tLQ0KPiA+ID4gwqBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93ZXIuYyB8IDcgKysrKy0tLQ0KPiA+ID4gwqBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Nwcml0ZS5jICAgICAgICB8IDQgKyst
LQ0KPiA+ID4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kZXZpY2VfaW5mby5jICAgICAg
ICAgICB8IDYgKysrKystDQo+ID4gPiDCoDMgZmlsZXMgY2hhbmdlZCwgMTEgaW5zZXJ0aW9ucygr
KSwgNiBkZWxldGlvbnMoLSkNCj4gPiA+IA0KPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5jIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmMNCj4gPiA+IGluZGV4IGNjY2ZkNDVh
NjdjZi4uZTE3YjFjYTM1NmMzIDEwMDY0NA0KPiA+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmMNCj4gPiA+ICsrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5jDQo+ID4gPiBAQCAtNTMzOSw5
ICs1MzM5LDEwIEBAIHN0YXRpYyB2b2lkIHRnbF9id19idWRkeV9pbml0KHN0cnVjdCBkcm1faTkx
NV9wcml2YXRlICpkZXZfcHJpdikNCj4gPiA+IMKgCXVuc2lnbmVkIGxvbmcgYWJveF9tYXNrID0g
SU5URUxfSU5GTyhkZXZfcHJpdiktPmFib3hfbWFzazsNCj4gPiA+IMKgCWludCBjb25maWcsIGk7
DQo+ID4gPiDCoA0KPiA+ID4gDQo+ID4gPiANCj4gPiA+IA0KPiA+ID4gLQlpZiAoSVNfREcxX1JF
VklEKGRldl9wcml2LCBERzFfUkVWSURfQTAsIERHMV9SRVZJRF9BMCkgfHwNCj4gPiA+ICsJaWYg
KElTX0FMREVSTEFLRV9TKGRldl9wcml2KSB8fA0KPiA+ID4gKwkgICAgSVNfREcxX1JFVklEKGRl
dl9wcml2LCBERzFfUkVWSURfQTAsIERHMV9SRVZJRF9BMCkgfHwNCj4gPiA+IMKgCSAgICBJU19U
R0xfRElTUF9TVEVQUElORyhkZXZfcHJpdiwgU1RFUF9BMCwgU1RFUF9CMCkpDQo+ID4gPiAtCQkv
KiBXYV8xNDA5NzY3MTA4OnRnbCxkZzEgKi8NCj4gPiA+ICsJCS8qIFdhXzE0MDk3NjcxMDg6dGds
LGRnMSxhZGwtcyAqLw0KPiA+ID4gwqAJCXRhYmxlID0gd2FfMTQwOTc2NzEwOF9idWRkeV9wYWdl
X21hc2tzOw0KPiA+ID4gwqAJZWxzZQ0KPiA+ID4gwqAJCXRhYmxlID0gdGdsX2J1ZGR5X3BhZ2Vf
bWFza3M7DQo+ID4gPiBAQCAtNTM3OSw3ICs1MzgwLDcgQEAgc3RhdGljIHZvaWQgaWNsX2Rpc3Bs
YXlfY29yZV9pbml0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwNCj4gPiA+IMKg
DQo+ID4gPiANCj4gPiA+IA0KPiA+ID4gDQo+ID4gPiDCoAlnZW45X3NldF9kY19zdGF0ZShkZXZf
cHJpdiwgRENfU1RBVEVfRElTQUJMRSk7DQo+ID4gPiDCoA0KPiA+ID4gDQo+ID4gPiANCj4gPiA+
IA0KPiA+ID4gLQkvKiBXYV8xNDAxMTI5NDE4ODplaGwsanNsLHRnbCxya2wgKi8NCj4gPiA+ICsJ
LyogV2FfMTQwMTEyOTQxODg6ZWhsLGpzbCx0Z2wscmtsLGFkbC1zICovDQo+ID4gPiDCoAlpZiAo
SU5URUxfUENIX1RZUEUoZGV2X3ByaXYpID49IFBDSF9KU1AgJiYNCj4gPiA+IMKgCSAgICBJTlRF
TF9QQ0hfVFlQRShkZXZfcHJpdikgPCBQQ0hfREcxKQ0KPiA+ID4gwqAJCWludGVsX2RlX3Jtdyhk
ZXZfcHJpdiwgU09VVEhfRFNQQ0xLX0dBVEVfRCwgMCwNCj4gPiA+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Nwcml0ZS5jIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9zcHJpdGUuYw0KPiA+ID4gaW5kZXggNjhjZWE1Y2EyNTFjLi5h
NzA3N2JhYmQzMWMgMTAwNjQ0DQo+ID4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX3Nwcml0ZS5jDQo+ID4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX3Nwcml0ZS5jDQo+ID4gPiBAQCAtMjQxOCw4ICsyNDE4LDggQEAgc3RhdGljIGlu
dCBza2xfcGxhbmVfY2hlY2tfZmIoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNf
c3RhdGUsDQo+ID4gPiDCoAkJcmV0dXJuIC1FSU5WQUw7DQo+ID4gPiDCoAl9DQo+ID4gPiDCoA0K
PiA+ID4gDQo+ID4gPiANCj4gPiA+IA0KPiA+ID4gLQkvKiBXYV8xNjA2MDU0MTg4OnRnbCAqLw0K
PiA+ID4gLQlpZiAoSVNfVElHRVJMQUtFKGRldl9wcml2KSAmJg0KPiA+ID4gKwkvKiBXYV8xNjA2
MDU0MTg4OnRnbCxhZGwtcyAqLw0KPiA+ID4gKwlpZiAoKElTX0FMREVSTEFLRV9TKGRldl9wcml2
KSB8fCBJU19USUdFUkxBS0UoZGV2X3ByaXYpKSAmJg0KPiA+ID4gwqAJICAgIHBsYW5lX3N0YXRl
LT5ja2V5LmZsYWdzICYgSTkxNV9TRVRfQ09MT1JLRVlfU09VUkNFICYmDQo+ID4gPiDCoAkgICAg
aW50ZWxfZm9ybWF0X2lzX3AwMXgoZmItPmZvcm1hdC0+Zm9ybWF0KSkgew0KPiA+ID4gwqAJCWRy
bV9kYmdfa21zKCZkZXZfcHJpdi0+ZHJtLA0KPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2ludGVsX2RldmljZV9pbmZvLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRl
bF9kZXZpY2VfaW5mby5jDQo+ID4gPiBpbmRleCA4NWQ2ODgzNzQ1ZDguLjkyYWQzZTdkMWY2ZiAx
MDA2NDQNCj4gPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RldmljZV9pbmZv
LmMNCj4gPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RldmljZV9pbmZvLmMN
Cj4gPiA+IEBAIC0yNTAsNyArMjUwLDExIEBAIHZvaWQgaW50ZWxfZGV2aWNlX2luZm9fcnVudGlt
ZV9pbml0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikNCj4gPiA+IMKgCXN0cnVj
dCBpbnRlbF9ydW50aW1lX2luZm8gKnJ1bnRpbWUgPSBSVU5USU1FX0lORk8oZGV2X3ByaXYpOw0K
PiA+ID4gwqAJZW51bSBwaXBlIHBpcGU7DQo+ID4gPiDCoA0KPiA+ID4gDQo+ID4gPiANCj4gPiA+
IA0KPiA+ID4gLQlpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSAxMCkgew0KPiA+ID4gKwkvKiBX
YV8xNDAxMTc2NTI0MjogYWRsLXMgQTAgKi8NCj4gPiA+ICsJaWYgKElTX0FETFNfRElTUF9TVEVQ
UElORyhkZXZfcHJpdiwgU1RFUF9BMCwgU1RFUF9BMCkpDQo+ID4gDQo+ID4gSSB0aGluayB0aGlz
IHdvcmthcm91bmQgaXMgYWxzbyBuZWVkZWQgb24gQTEgc3RlcHBpbmcgbm93IGFuZCBzaG91bGQN
Cj4gPiBvbmx5IGJlIHJlbW92ZWQgb24gQTIuDQo+IA0KPiBUaGVyZSBpcyBubyBBMSBzdGVwcGlu
ZyBmb3IgQURMUy4gV2UgZGlyZWN0bHkgaGF2ZSBzdGVwcGluZyBBMiBhZnRlciBBMC4gQnV0IEkg
aGF2ZSBtYWRlIHRoZSBjaGFuZ2UNCj4gdGhhdCB5b3UgaGF2ZSBzdWdnZXN0ZWQgaW4gcmV2Mi4N
Cg0KDQpJbiBteSBvcGluaW9uICJpZiAoSVNfQURMU19ESVNQX1NURVBQSU5HKGRldl9wcml2LCBT
VEVQX0EwLCBTVEVQX0EwKSkiIGlzIHRoZSByaWdodCBhcHByb2FjaCBoZXJlLCB0aGVyZSBubyBz
dGVwcGluZyB3aXRoIGRpc3BsYXkgQTEgc28ganVzdCBjaGVja2luZw0KU1RFUF9BMCB3aWxsIGJl
IGVub3VnaC4NCg0KPiANCj4gQWRpdHlhDQo+IA0KPiA+IA0KPiA+IA0KPiA+IE1hdHQNCj4gPiAN
Cj4gPiA+ICsJCWZvcl9lYWNoX3BpcGUoZGV2X3ByaXYsIHBpcGUpDQo+ID4gPiArCQkJcnVudGlt
ZS0+bnVtX3NjYWxlcnNbcGlwZV0gPSAwOw0KPiA+ID4gKwllbHNlIGlmIChJTlRFTF9HRU4oZGV2
X3ByaXYpID49IDEwKSB7DQo+ID4gPiDCoAkJZm9yX2VhY2hfcGlwZShkZXZfcHJpdiwgcGlwZSkN
Cj4gPiA+IMKgCQkJcnVudGltZS0+bnVtX3NjYWxlcnNbcGlwZV0gPSAyOw0KPiA+ID4gwqAJfSBl
bHNlIGlmIChJU19HRU4oZGV2X3ByaXYsIDkpKSB7DQo+ID4gPiAtLSANCj4gPiA+IDIuMjcuMA0K
PiA+ID4gDQo+ID4gDQo+IA0KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXw0KPiBJbnRlbC1nZnggbWFpbGluZyBsaXN0DQo+IEludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcNCj4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZngNCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtZ2Z4Cg==
