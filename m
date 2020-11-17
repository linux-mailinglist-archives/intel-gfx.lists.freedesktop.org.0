Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B7D82B6B8F
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Nov 2020 18:19:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7DBD589CB5;
	Tue, 17 Nov 2020 17:19:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1E5228870A
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Nov 2020 17:19:23 +0000 (UTC)
IronPort-SDR: YRgfUQ13VZXqvAWiazy3/vw9uFbhFnqAdunmfE9JYYEqJWWxizCSMnf56PS4YFY3cgWEqd8f6s
 tvbZQLV/cOZg==
X-IronPort-AV: E=McAfee;i="6000,8403,9808"; a="232584265"
X-IronPort-AV: E=Sophos;i="5.77,486,1596524400"; d="scan'208";a="232584265"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2020 09:19:21 -0800
IronPort-SDR: vvyXMdlHGY3gInGEMyrtnz4pg/AvJTEQH7XnucjqBfUe8uuVXivxrIc/kTfpQyMLnNz+h4UcD5
 3rfd9tgsztpg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,486,1596524400"; d="scan'208";a="367954123"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by FMSMGA003.fm.intel.com with ESMTP; 17 Nov 2020 09:19:20 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 17 Nov 2020 09:19:20 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 17 Nov 2020 09:19:19 -0800
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.1713.004;
 Tue, 17 Nov 2020 09:19:19 -0800
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "chris@chris-wilson.co.uk" <chris@chris-wilson.co.uk>
Thread-Topic: [PATCH] drm/i915/phy: Quieten state loss across suspend
Thread-Index: AQHWvQUaYWyvor82iE6kAV3BGYGAE6nNF6YA
Date: Tue, 17 Nov 2020 17:19:19 +0000
Message-ID: <9701765a7a5bff8551859384e15eb1c8a19b4cc5.camel@intel.com>
References: <20201117171411.10030-1-chris@chris-wilson.co.uk>
In-Reply-To: <20201117171411.10030-1-chris@chris-wilson.co.uk>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.132]
Content-ID: <5632EEDF6FA3774BA01C1550371891C9@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/phy: Quieten state loss across
 suspend
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
Cc: "De Marchi, Lucas" <lucas.demarchi@intel.com>,
 "stable@vger.kernel.org" <stable@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCAyMDIwLTExLTE3IGF0IDE3OjE0ICswMDAwLCBDaHJpcyBXaWxzb24gd3JvdGU6DQo+
IFdoZW4gdGhlIEhXIGlzIHBvd2VyZWQgZG93biwgdGhlIHJlZ2lzdGVyIHN0YXRlIGFuZCBsaW5r
cyBhcmUgbG9zdC4gVGhpcw0KPiBtYXkgYmUgYW4gaXNzdWUgaW4gdGhlIGZpcm13YXJlLCBvciBp
biB0aGUgY29kZSBleHBlY3RhdGlvbnM7IHdoYXRldmVyDQo+IGl0IGlzLCBpdCBpcyBleHBlY3Rl
ZCBiZWhhdmlvdXIgbm93IGZvciBUaWdlcmxha2U7IHN0b3Agd2FybmluZyENCj4gDQo+IFJlZmVy
ZW5jZXM6IGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9kcm0vaW50ZWwvLS9pc3N1ZXMv
MjQxMQ0KDQpXZSBhcmUgbWlzc2luZyBhIElGV0kvZmlybXdhcmUgdXBkYXRlIHRvIGZpeCB0aGlz
IGlzc3VlLCBhbHJlYWR5IGFza2VkIENJIHRlYW0gdG8gdXBkYXRlIGJ1dCBubyBsdWNrIHNvIGZh
ci4NCg0KRHVyaW5nIGljbF9jb21ib19waHlzX3VuaW5pdCgpIGlzIGV4cGVjdGVkIHRvIGhhdmUg
dGhlIHJlZ2lzdGVycyBzZXQgd2l0aCBleHBlY3RlZCB2YWx1ZXMgYXMgaXQgd2FzIG5vdCBwb3dl
cmVkIGRvd24geWV0Lg0KDQo+IEZpeGVzOiAyMzliZWY2NzZkOGUgKCJkcm0vaTkxNS9kaXNwbGF5
OiBJbXBsZW1lbnQgbmV3IGNvbWJvIHBoeSBpbml0aWFsaXphdGlvbiBzdGVwIikNCj4gU2lnbmVk
LW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+DQo+IENjOiBD
bGludG9uIEEgVGF5bG9yIDxjbGludG9uLmEudGF5bG9yQGludGVsLmNvbT4NCj4gQ2M6IEx1Y2Fz
IERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPg0KPiBDYzogTWF0dCBSb3BlciA8
bWF0dGhldy5kLnJvcGVyQGludGVsLmNvbT4NCj4gQ2M6IEpvc8OpIFJvYmVydG8gZGUgU291emEg
PGpvc2Uuc291emFAaW50ZWwuY29tPg0KPiBDYzogPHN0YWJsZUB2Z2VyLmtlcm5lbC5vcmc+ICMg
djUuOSsNCj4gLS0tDQo+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jb21i
b19waHkuYyB8IDYgKysrLS0tDQo+IMKgMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwg
MyBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2NvbWJvX3BoeS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9jb21ib19waHkuYw0KPiBpbmRleCBkNWFkNjFlNDA4M2UuLjlhODdkZjk4MmFmOCAxMDA2
NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jb21ib19waHku
Yw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NvbWJvX3BoeS5j
DQo+IEBAIC00MjgsOSArNDI4LDkgQEAgc3RhdGljIHZvaWQgaWNsX2NvbWJvX3BoeXNfdW5pbml0
KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikNCj4gwqANCj4gDQo+IA0KPiANCj4g
wqAJCWlmIChwaHkgPT0gUEhZX0EgJiYNCj4gwqAJCSAgICAhaWNsX2NvbWJvX3BoeV92ZXJpZnlf
c3RhdGUoZGV2X3ByaXYsIHBoeSkpDQo+IC0JCQlkcm1fd2FybigmZGV2X3ByaXYtPmRybSwNCj4g
LQkJCQkgIkNvbWJvIFBIWSAlYyBIVyBzdGF0ZSBjaGFuZ2VkIHVuZXhwZWN0ZWRseVxuIiwNCj4g
LQkJCQkgcGh5X25hbWUocGh5KSk7DQo+ICsJCQlkcm1fZGJnX2ttcygmZGV2X3ByaXYtPmRybSwN
Cj4gKwkJCQkgICAgIkNvbWJvIFBIWSAlYyBIVyBzdGF0ZSBjaGFuZ2VkIHVuZXhwZWN0ZWRseVxu
IiwNCj4gKwkJCQkgICAgcGh5X25hbWUocGh5KSk7DQo+IMKgDQo+IA0KPiANCj4gDQo+IMKgCQlp
ZiAoIWhhc19waHlfbWlzYyhkZXZfcHJpdiwgcGh5KSkNCj4gwqAJCQlnb3RvIHNraXBfcGh5X21p
c2M7DQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
