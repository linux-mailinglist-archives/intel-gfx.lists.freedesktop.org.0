Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D0982C6CCD
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Nov 2020 22:05:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 03B9D6F41E;
	Fri, 27 Nov 2020 21:05:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B82746EEAB
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Nov 2020 21:05:03 +0000 (UTC)
IronPort-SDR: RSmDttMp7GjOlnryrrWRmMaNrF5N4vYTIHFHDuz5XIcZCvs2fWmc4gRngGQj5VFYbVvlXQFbFa
 70eOJt0C1KXA==
X-IronPort-AV: E=McAfee;i="6000,8403,9818"; a="171652440"
X-IronPort-AV: E=Sophos;i="5.78,375,1599548400"; d="scan'208";a="171652440"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2020 13:05:00 -0800
IronPort-SDR: 5FsR4cpRgXoufjLn1LRR2qZhDSOp0Cmfk6ORjTI8XgF1ETaDzgnP9IbZV6m3AonFsYTZh+Mw9l
 kCRa6Uu9w7Qw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,375,1599548400"; d="scan'208";a="314393058"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga007.fm.intel.com with ESMTP; 27 Nov 2020 13:04:58 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 27 Nov 2020 13:04:57 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 27 Nov 2020 13:04:57 -0800
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.1713.004;
 Fri, 27 Nov 2020 13:04:57 -0800
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "chris@chris-wilson.co.uk" <chris@chris-wilson.co.uk>
Thread-Topic: [PATCH] drm/i915/display: Suppress "Combo PHY A HW state changed
 unexpectedly"
Thread-Index: AQHWxQB2dtfhWJlr+0iONSmDVCLDZanc/hYA
Date: Fri, 27 Nov 2020 21:04:56 +0000
Message-ID: <981e6c8131c95e6b50dbd84374fc7ff2bce73429.camel@intel.com>
References: <20201127210059.10702-1-chris@chris-wilson.co.uk>
In-Reply-To: <20201127210059.10702-1-chris@chris-wilson.co.uk>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-ID: <0706595674AA684C9C4AF14C0C39769C@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Suppress "Combo PHY A HW
 state changed unexpectedly"
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
Cc: "gitlab@gitlab.freedesktop.org" <gitlab@gitlab.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCAyMDIwLTExLTI3IGF0IDIxOjAwICswMDAwLCBDaHJpcyBXaWxzb24gd3JvdGU6DQo+
IFdlIGtub3cgYSBwcm9ibGVtIGV4aXN0cyBpbiB0aGUgaWZ3aSBzaGlwcGVkIHdpdGggdGhlIGVh
cmx5DQo+IHByZS1wcm9kdWN0aW9uIFRpZ2VybGFrZSBhbmQgREcxIHByb3RvdHlwZXMsIGxhdGVy
IHJldmlzaW9ucyBhcmUgZmluZS4NCj4gSG93ZXZlciwgQ0kgc3RpbGwgcmVsaWVzIG9uIHRoZSBl
YXJsaWVyIGlmd2kgYW5kIHdlIGdyb3cgdGlyZWQgb2YNCj4gdGhlIHZvbHVtZSBvZiB3YXJuaW5n
cyBhcyB3ZSB3YWl0IGZvciByZXBsYWNlbWVudHMuDQo+IA0KPiBTaW5jZSB0aGUgd2FybmluZyBp
cyBhIGJ1Zywgd2UgZG8gbm90IHdhbnQgdG8gbG9zZSB0aGUgd2FybmluZyBpbiBpdHMNCj4gZW50
aXJldHksIHNvIG9ubHkgc3VwcHJlc3MgdGhlIHdhcm5pbmcgZm9yIHRoZSBwbGF0Zm9ybXMgY3Vy
cmVudGx5DQo+IGV4aGliaXRpbmcgdGhlIGlzc3VlLg0KPiANCg0KUmV2aWV3ZWQtYnk6IEpvc8Op
IFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPg0KDQo+IFN1Z2dlc3RlZC1i
eTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8Z2l0bGFiQGdpdGxhYi5mcmVlZGVza3RvcC5vcmc+
DQo+IENsb3NlczogaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pbnRlbC8tL2lz
c3Vlcy8yNDExDQo+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2ls
c29uLmNvLnVrPg0KPiBDYzogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRl
bC5jb20+DQo+IC0tLQ0KPiDCoC4uLi9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jb21ib19w
aHkuYyAgICB8IDIwICsrKysrKysrKysrKysrKy0tLS0NCj4gwqAxIGZpbGUgY2hhbmdlZCwgMTYg
aW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NvbWJvX3BoeS5jIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9jb21ib19waHkuYw0KPiBpbmRleCBkNWFkNjFlNDA4M2UuLjk5
NmFlMDYwOGE2MiAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9jb21ib19waHkuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2NvbWJvX3BoeS5jDQo+IEBAIC00MjcsMTAgKzQyNywyMiBAQCBzdGF0aWMgdm9pZCBpY2xf
Y29tYm9fcGh5c191bmluaXQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQ0KPiDC
oAkJdTMyIHZhbDsNCj4gwqANCj4gDQo+IA0KPiANCj4gwqAJCWlmIChwaHkgPT0gUEhZX0EgJiYN
Cj4gLQkJICAgICFpY2xfY29tYm9fcGh5X3ZlcmlmeV9zdGF0ZShkZXZfcHJpdiwgcGh5KSkNCj4g
LQkJCWRybV93YXJuKCZkZXZfcHJpdi0+ZHJtLA0KPiAtCQkJCSAiQ29tYm8gUEhZICVjIEhXIHN0
YXRlIGNoYW5nZWQgdW5leHBlY3RlZGx5XG4iLA0KPiAtCQkJCSBwaHlfbmFtZShwaHkpKTsNCj4g
KwkJICAgICFpY2xfY29tYm9fcGh5X3ZlcmlmeV9zdGF0ZShkZXZfcHJpdiwgcGh5KSkgew0KPiAr
CQkJaWYgKElTX1RJR0VSTEFLRShkZXZfcHJpdikgfHwgSVNfREcxKGRldl9wcml2KSkgew0KPiAr
CQkJCS8qDQo+ICsJCQkJICogQSBrbm93biBwcm9ibGVtIHdpdGggb2xkIGlmd2k6DQo+ICsJCQkJ
ICogaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pbnRlbC8tL2lzc3Vlcy8yNDEx
DQo+ICsJCQkJICogU3VwcHJlc3MgdGhlIHdhcm5pbmcgZm9yIENJLiBSZW1vdmUgQVNBUCENCj4g
KwkJCQkgKi8NCj4gKwkJCQlkcm1fZGJnX2ttcygmZGV2X3ByaXYtPmRybSwNCj4gKwkJCQkJICAg
ICJDb21ibyBQSFkgJWMgSFcgc3RhdGUgY2hhbmdlZCB1bmV4cGVjdGVkbHlcbiIsDQo+ICsJCQkJ
CSAgICBwaHlfbmFtZShwaHkpKTsNCj4gKwkJCX0gZWxzZSB7DQo+ICsJCQkJZHJtX3dhcm4oJmRl
dl9wcml2LT5kcm0sDQo+ICsJCQkJCSAiQ29tYm8gUEhZICVjIEhXIHN0YXRlIGNoYW5nZWQgdW5l
eHBlY3RlZGx5XG4iLA0KPiArCQkJCQkgcGh5X25hbWUocGh5KSk7DQo+ICsJCQl9DQo+ICsJCX0N
Cj4gwqANCj4gDQo+IA0KPiANCj4gwqAJCWlmICghaGFzX3BoeV9taXNjKGRldl9wcml2LCBwaHkp
KQ0KPiDCoAkJCWdvdG8gc2tpcF9waHlfbWlzYzsNCg0KX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
