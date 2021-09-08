Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A5B4403FD1
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Sep 2021 21:29:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 09CF56E29D;
	Wed,  8 Sep 2021 19:29:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CB0A16E29D
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Sep 2021 19:29:09 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10101"; a="284286428"
X-IronPort-AV: E=Sophos;i="5.85,279,1624345200"; d="scan'208";a="284286428"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2021 12:29:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,279,1624345200"; d="scan'208";a="524992104"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by fmsmga004.fm.intel.com with ESMTP; 08 Sep 2021 12:29:09 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Wed, 8 Sep 2021 12:29:08 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Wed, 8 Sep 2021 12:29:08 -0700
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2242.012;
 Wed, 8 Sep 2021 12:29:08 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "Manna, Animesh" <animesh.manna@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Mun, Gwan-gyeong" <gwan-gyeong.mun@intel.com>, "Nikula, Jani"
 <jani.nikula@intel.com>, "Kahola, Mika" <mika.kahola@intel.com>, "Navare,
 Manasi D" <manasi.d.navare@intel.com>
Thread-Topic: [Intel-gfx] [RFC 2/5] drm/i915/panelreplay: Feature flag added
 for panel replay
Thread-Index: AQHXpJVJF6FA/viNNkC8a3Jnih02cqua/UKA
Date: Wed, 8 Sep 2021 19:29:07 +0000
Message-ID: <604c27c69a705a6e027033adbca81fd8dc2ce506.camel@intel.com>
References: <20210908091544.13772-1-animesh.manna@intel.com>
 <20210908091544.13772-3-animesh.manna@intel.com>
In-Reply-To: <20210908091544.13772-3-animesh.manna@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.132]
Content-Type: text/plain; charset="utf-8"
Content-ID: <B5B8AEBB12C3AC4C9BFF3E841E65ECA1@intel.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [RFC 2/5] drm/i915/panelreplay: Feature flag added
 for panel replay
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCAyMDIxLTA5LTA4IGF0IDE0OjQ1ICswNTMwLCBBbmltZXNoIE1hbm5hIHdyb3RlOg0K
PiBQbGF0Zm9ybXMgaGF2aW5nIERpc3BsYXkgMTMgYW5kIGFib3ZlIHdpbGwgc3VwcG9ydCBwYW5l
bA0KPiByZXBsYXkgZmVhdHVyZSBvZiBEUCAyLjAgbW9uaXRvci4gQWRkZWQgYSBmZWF0dXJlIGZs
YWcNCj4gZm9yIHBhbmVsIHJlcGxheS4NCg0KQXMgYWxsIGRpc3BsYXkgMTMgYW5kIG5ld2VyIHBs
YXRmb3JtcyBzdXBwb3J0cyBpdCB3b3VsZCBiZSBiZXR0ZXIgdG8gaGF2ZSAjZGVmaW5lIEhBU19Q
UihpOTE1KSAoRElTUExBWV9WRVIoaTkxNSkgPj0gMTMpIGluc3RlYWQgb2YgYWRkIG9uZSBtb3Jl
DQpwYXJhbWV0ZXIgdG8gaW50ZWxfZGV2aWNlX2luZm8uDQoNCj4gDQo+IFNpZ25lZC1vZmYtYnk6
IEFuaW1lc2ggTWFubmEgPGFuaW1lc2gubWFubmFAaW50ZWwuY29tPg0KPiAtLS0NCj4gIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmggICAgICAgICAgfCAxICsNCj4gIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfcGNpLmMgICAgICAgICAgfCAxICsNCj4gIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2ludGVsX2RldmljZV9pbmZvLmggfCAxICsNCj4gIDMgZmlsZXMgY2hhbmdlZCwgMyBpbnNl
cnRpb25zKCspDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9k
cnYuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgNCj4gaW5kZXggMWZkMzA0MGI2
NzcxLi41YjI2ZDdjMDliMmQgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfZHJ2LmgNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaA0KPiBAQCAt
MTY0NSw2ICsxNjQ1LDcgQEAgSVNfU1VCUExBVEZPUk0oY29uc3Qgc3RydWN0IGRybV9pOTE1X3By
aXZhdGUgKmk5MTUsDQo+ICAjZGVmaW5lIEhBU19EREkoZGV2X3ByaXYpCQkgKElOVEVMX0lORk8o
ZGV2X3ByaXYpLT5kaXNwbGF5Lmhhc19kZGkpDQo+ICAjZGVmaW5lIEhBU19GUEdBX0RCR19VTkNM
QUlNRUQoZGV2X3ByaXYpIChJTlRFTF9JTkZPKGRldl9wcml2KS0+ZGlzcGxheS5oYXNfZnBnYV9k
YmcpDQo+ICAjZGVmaW5lIEhBU19QU1IoZGV2X3ByaXYpCQkgKElOVEVMX0lORk8oZGV2X3ByaXYp
LT5kaXNwbGF5Lmhhc19wc3IpDQo+ICsjZGVmaW5lIEhBU19QUihkZXZfcHJpdikJCSAoSU5URUxf
SU5GTyhkZXZfcHJpdiktPmRpc3BsYXkuaGFzX3ByKQ0KPiAgI2RlZmluZSBIQVNfUFNSX0hXX1RS
QUNLSU5HKGRldl9wcml2KSBcDQo+ICAJKElOVEVMX0lORk8oZGV2X3ByaXYpLT5kaXNwbGF5Lmhh
c19wc3JfaHdfdHJhY2tpbmcpDQo+ICAjZGVmaW5lIEhBU19QU1IyX1NFTF9GRVRDSChkZXZfcHJp
dikJIChHUkFQSElDU19WRVIoZGV2X3ByaXYpID49IDEyKQ0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9wY2kuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGNp
LmMNCj4gaW5kZXggZDRhNmE5ZGNmMTgyLi5jNThiZDE5YjViZGYgMTAwNjQ0DQo+IC0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGNpLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9wY2kuYw0KPiBAQCAtOTQ2LDYgKzk0Niw3IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3Qg
aW50ZWxfZGV2aWNlX2luZm8gYWRsX3NfaW5mbyA9IHsNCj4gIAkuZGlzcGxheS5oYXNfaG90cGx1
ZyA9IDEsCQkJCQkJXA0KPiAgCS5kaXNwbGF5Lmhhc19pcGMgPSAxLAkJCQkJCQlcDQo+ICAJLmRp
c3BsYXkuaGFzX3BzciA9IDEsCQkJCQkJCVwNCj4gKwkuZGlzcGxheS5oYXNfcHIgPSAxLAkJCQkJ
CVwNCj4gIAkuZGlzcGxheS52ZXIgPSAxMywJCQkJCQkJXA0KPiAgCS5waXBlX21hc2sgPSBCSVQo
UElQRV9BKSB8IEJJVChQSVBFX0IpIHwgQklUKFBJUEVfQykgfCBCSVQoUElQRV9EKSwJXA0KPiAg
CS5waXBlX29mZnNldHMgPSB7CQkJCQkJCVwNCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2ludGVsX2RldmljZV9pbmZvLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9k
ZXZpY2VfaW5mby5oDQo+IGluZGV4IGQzMjhiYjk1YzQ5Yi4uNDU1MmExZjg4NTY4IDEwMDY0NA0K
PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kZXZpY2VfaW5mby5oDQo+ICsrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RldmljZV9pbmZvLmgNCj4gQEAgLTE2MSw2ICsx
NjEsNyBAQCBlbnVtIGludGVsX3BwZ3R0X3R5cGUgew0KPiAgCWZ1bmMoaGFzX21vZHVsYXJfZmlh
KTsgXA0KPiAgCWZ1bmMoaGFzX292ZXJsYXkpOyBcDQo+ICAJZnVuYyhoYXNfcHNyKTsgXA0KPiAr
CWZ1bmMoaGFzX3ByKTsgXA0KPiAgCWZ1bmMoaGFzX3Bzcl9od190cmFja2luZyk7IFwNCj4gIAlm
dW5jKG92ZXJsYXlfbmVlZHNfcGh5c2ljYWwpOyBcDQo+ICAJZnVuYyhzdXBwb3J0c190dik7DQoN
Cg==
