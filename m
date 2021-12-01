Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 89872464C4C
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Dec 2021 12:03:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0D25B6E97B;
	Wed,  1 Dec 2021 11:03:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B4F836E97B
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Dec 2021 11:03:23 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10184"; a="223665692"
X-IronPort-AV: E=Sophos;i="5.87,278,1631602800"; d="scan'208";a="223665692"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2021 03:03:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,278,1631602800"; d="scan'208";a="459209251"
Received: from irsmsx602.ger.corp.intel.com ([163.33.146.8])
 by orsmga003.jf.intel.com with ESMTP; 01 Dec 2021 03:03:22 -0800
Received: from irsmsx605.ger.corp.intel.com (163.33.146.138) by
 irsmsx602.ger.corp.intel.com (163.33.146.8) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Wed, 1 Dec 2021 11:03:21 +0000
Received: from irsmsx605.ger.corp.intel.com ([163.33.146.138]) by
 IRSMSX605.ger.corp.intel.com ([163.33.146.138]) with mapi id 15.01.2308.020;
 Wed, 1 Dec 2021 11:03:21 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 14/20] drm/i915/fbc: Move stuff from
 intel_fbc_can_enable() into intel_fbc_check_plane()
Thread-Index: AQHX4Se429vEmRmzVkioB+YwFjzeoqwdg7Qg
Date: Wed, 1 Dec 2021 11:03:21 +0000
Message-ID: <ea04d1679f2144d8b1d6eccbeb2ff6b6@intel.com>
References: <20211124113652.22090-1-ville.syrjala@linux.intel.com>
 <20211124113652.22090-15-ville.syrjala@linux.intel.com>
In-Reply-To: <20211124113652.22090-15-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.253.164]
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 14/20] drm/i915/fbc: Move stuff from
 intel_fbc_can_enable() into intel_fbc_check_plane()
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC1nZnggPGludGVsLWdm
eC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mIFZpbGxlDQo+IFN5
cmphbGENCj4gU2VudDogV2VkbmVzZGF5LCBOb3ZlbWJlciAyNCwgMjAyMSAxOjM3IFBNDQo+IFRv
OiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IFN1YmplY3Q6IFtJbnRlbC1nZnhd
IFtQQVRDSCAxNC8yMF0gZHJtL2k5MTUvZmJjOiBNb3ZlIHN0dWZmIGZyb20NCj4gaW50ZWxfZmJj
X2Nhbl9lbmFibGUoKSBpbnRvIGludGVsX2ZiY19jaGVja19wbGFuZSgpDQo+IA0KPiBGcm9tOiBW
aWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiANCj4gRG9u
J3QgcmVhbGx5IHNlZSBhIGdvb2QgcmVhc29uIHdoeSB3ZSBjYW4ndCBqdXN0IGRvIHRoZSB2Z3B1
IGFuZCBtb2RwYXJhbQ0KPiBjaGVja3MgYWxyZWFkeSBpbiBpbnRlbF9mYmNfY2hlY2tfcGxhbmUo
KS4NCj4gDQo+IFNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBs
aW51eC5pbnRlbC5jb20+DQoNClJldmlld2VkLWJ5OiBNaWthIEthaG9sYSA8bWlrYS5rYWhvbGFA
aW50ZWwuY29tPg0KDQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9mYmMuYyB8IDIyICsrKysrKysrKystLS0tLS0tLS0tLS0NCj4gIDEgZmlsZSBjaGFuZ2VkLCAx
MCBpbnNlcnRpb25zKCspLCAxMiBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5jDQo+IGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9mYmMuYw0KPiBpbmRleCAxZGFmNGY3YjVkODAuLjYxNmFiOTU3
NjZiMiAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9m
YmMuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5jDQo+
IEBAIC05OTYsMTggKzk5Niw2IEBAIHN0YXRpYyBib29sIGludGVsX2ZiY19jZmJfc2l6ZV9jaGFu
Z2VkKHN0cnVjdCBpbnRlbF9mYmMNCj4gKmZiYykNCj4gDQo+ICBzdGF0aWMgYm9vbCBpbnRlbF9m
YmNfY2FuX2VuYWJsZShzdHJ1Y3QgaW50ZWxfZmJjICpmYmMpICB7DQo+IC0Jc3RydWN0IGRybV9p
OTE1X3ByaXZhdGUgKmk5MTUgPSBmYmMtPmk5MTU7DQo+IC0NCj4gLQlpZiAoaW50ZWxfdmdwdV9h
Y3RpdmUoaTkxNSkpIHsNCj4gLQkJZmJjLT5ub19mYmNfcmVhc29uID0gIlZHUFUgaXMgYWN0aXZl
IjsNCj4gLQkJcmV0dXJuIGZhbHNlOw0KPiAtCX0NCj4gLQ0KPiAtCWlmICghaTkxNS0+cGFyYW1z
LmVuYWJsZV9mYmMpIHsNCj4gLQkJZmJjLT5ub19mYmNfcmVhc29uID0gImRpc2FibGVkIHBlciBt
b2R1bGUgcGFyYW0gb3IgYnkNCj4gZGVmYXVsdCI7DQo+IC0JCXJldHVybiBmYWxzZTsNCj4gLQl9
DQo+IC0NCj4gIAlpZiAoZmJjLT51bmRlcnJ1bl9kZXRlY3RlZCkgew0KPiAgCQlmYmMtPm5vX2Zi
Y19yZWFzb24gPSAidW5kZXJydW4gZGV0ZWN0ZWQiOw0KPiAgCQlyZXR1cm4gZmFsc2U7DQo+IEBA
IC0xMDMwLDYgKzEwMTgsMTYgQEAgc3RhdGljIGludCBpbnRlbF9mYmNfY2hlY2tfcGxhbmUoc3Ry
dWN0DQo+IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsDQo+ICAJaWYgKCFmYmMpDQo+ICAJCXJl
dHVybiAwOw0KPiANCj4gKwlpZiAoaW50ZWxfdmdwdV9hY3RpdmUoaTkxNSkpIHsNCj4gKwkJcGxh
bmVfc3RhdGUtPm5vX2ZiY19yZWFzb24gPSAiVkdQVSBhY3RpdmUiOw0KPiArCQlyZXR1cm4gMDsN
Cj4gKwl9DQo+ICsNCj4gKwlpZiAoIWk5MTUtPnBhcmFtcy5lbmFibGVfZmJjKSB7DQo+ICsJCXBs
YW5lX3N0YXRlLT5ub19mYmNfcmVhc29uID0gImRpc2FibGVkIHBlciBtb2R1bGUgcGFyYW0gb3IN
Cj4gYnkgZGVmYXVsdCI7DQo+ICsJCXJldHVybiAwOw0KPiArCX0NCj4gKw0KPiAgCWlmICghcGxh
bmVfc3RhdGUtPnVhcGkudmlzaWJsZSkgew0KPiAgCQlwbGFuZV9zdGF0ZS0+bm9fZmJjX3JlYXNv
biA9ICJwbGFuZSBub3QgdmlzaWJsZSI7DQo+ICAJCXJldHVybiAwOw0KPiAtLQ0KPiAyLjMyLjAN
Cg0K
