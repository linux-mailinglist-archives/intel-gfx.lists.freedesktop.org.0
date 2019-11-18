Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 553A3100BED
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Nov 2019 20:02:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F40DE6E030;
	Mon, 18 Nov 2019 19:02:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5329C6E030
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Nov 2019 19:02:02 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Nov 2019 11:02:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,321,1569308400"; d="scan'208";a="380750535"
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
 by orsmga005.jf.intel.com with ESMTP; 18 Nov 2019 11:02:01 -0800
Received: from fmsmsx122.amr.corp.intel.com (10.18.125.37) by
 FMSMSX103.amr.corp.intel.com (10.18.124.201) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 18 Nov 2019 11:02:01 -0800
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.27]) by
 fmsmsx122.amr.corp.intel.com ([169.254.5.215]) with mapi id 14.03.0439.000;
 Mon, 18 Nov 2019 11:02:01 -0800
From: "Souza, Jose" <jose.souza@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915/ehl: Update voltage level checks
Thread-Index: AQHVni8+BIprTyQuqUOUfYifxCTAPKeRqlGAgAAkvAA=
Date: Mon, 18 Nov 2019 19:02:00 +0000
Message-ID: <94676308963503dd23ce1bbadafa5df8b869caeb.camel@intel.com>
References: <20191118164412.26216-1-matthew.d.roper@intel.com>
 <20191118165031.GF21445@mdroper-desk1.amr.corp.intel.com>
In-Reply-To: <20191118165031.GF21445@mdroper-desk1.amr.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.9.135]
Content-ID: <5B705B2375F19643B9EEA3D5DCC9A14D@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/ehl: Update voltage level checks
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

T24gTW9uLCAyMDE5LTExLTE4IGF0IDA4OjUwIC0wODAwLCBNYXR0IFJvcGVyIHdyb3RlOg0KPiBP
biBNb24sIE5vdiAxOCwgMjAxOSBhdCAwODo0NDoxMkFNIC0wODAwLCBNYXR0IFJvcGVyIHdyb3Rl
Og0KPiA+IFRoZSBic3BlYyB3YXMgcmVjZW50bHkgdXBkYXRlZCB3aXRoIG5ldyBjZGNsayAtPiB2
b2x0YWdlIGxldmVsDQo+ID4gdGFibGVzIHRvDQo+ID4gYWNjb21vZGF0ZSB0aGUgbmV3IDMyNC8z
MjYuNCBjZGNsayB2YWx1ZXMuDQo+ID4gDQo+ID4gQnNwZWM6IDIxODA5DQo+ID4gQ2M6IEpvc8Op
IFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPg0KPiA+IENjOiBWaXZlayBL
YXNpcmVkZHkgPHZpdmVrLmthc2lyZWRkeUBpbnRlbC5jb20+DQo+ID4gQ2M6IEJvYiBQYWF1d2Ug
PGJvYi5qLnBhYXV3ZUBpbnRlbC5jb20+DQo+ID4gU2lnbmVkLW9mZi1ieTogTWF0dCBSb3BlciA8
bWF0dGhldy5kLnJvcGVyQGludGVsLmNvbT4NCj4gDQo+IEFuZA0KPiANCj4gRml4ZXM6IDYzYzlk
YWU3MWRjNSAoImRybS9pOTE1L2VobDogQWRkIHZvbHRhZ2UgbGV2ZWwgcmVxdWlyZW1lbnQNCj4g
dGFibGUiKQ0KPiANCj4gc2luY2UgdXNpbmcgdGhlIG9sZCB0YWJsZSBjb3VsZCByZXN1bHQgaW4g
dXMgcmVxdWVzdGluZyB0b28gbG93IGENCj4gdm9sdGFnZSBsZXZlbCBmb3IgdGhlIGhpZ2hlc3Qg
Y2RjbGsgdmFsdWVzLg0KDQoNClJldmlld2VkLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxq
b3NlLnNvdXphQGludGVsLmNvbT4NCg0KDQo+IA0KPiANCj4gTWF0dA0KPiANCj4gPiAtLS0NCj4g
PiBUaGVyZSBhcmUgc29tZSBwbGF0Zm9ybSB0YWdnaW5nIGlzc3VlcyBvbiB0aGlzIGJzcGVjIHBh
Z2UgYW5kDQo+ID4gbXVsdGlwbGUNCj4gPiB0YWJsZXMgYXJlIGFjdHVhbGx5IHRhZ2dlZCB3aXRo
IHRoZSBFSEwgbGFiZWwsIGJ1dCB0aGUgYnNwZWMNCj4gPiBjaGFuZ2Vsb2cNCj4gPiBtYWtlcyBp
dCBwcmV0dHkgY2xlYXIgd2hpY2ggdGFibGUgd2UncmUgc3VwcG9zZWQgdG8gYmUgdXNpbmcgKHBs
dXMNCj4gPiB0aGUNCj4gPiBvdGhlciB0YWJsZXMgZG9uJ3QgbWF0Y2ggdGhlIHNldCBvZiBjZGNs
a3Mgc3VwcG9ydGVkIGJ5IHRoZQ0KPiA+IHBsYXRmb3JtKS4NCj4gPiANCj4gPiAgZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jZGNsay5jIHwgNCArKystDQo+ID4gIDEgZmlsZSBj
aGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkNCj4gPiANCj4gPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jZGNsay5jDQo+ID4gYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NkY2xrLmMNCj4gPiBpbmRleCA4Yjcw
MjMxNzU1N2UuLjdkMWFiMWU1YjdjMyAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2NkY2xrLmMNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2NkY2xrLmMNCj4gPiBAQCAtMTI3Myw3ICsxMjczLDkgQEAgc3RhdGlj
IHU4IGljbF9jYWxjX3ZvbHRhZ2VfbGV2ZWwoaW50IGNkY2xrKQ0KPiA+ICANCj4gPiAgc3RhdGlj
IHU4IGVobF9jYWxjX3ZvbHRhZ2VfbGV2ZWwoaW50IGNkY2xrKQ0KPiA+ICB7DQo+ID4gLQlpZiAo
Y2RjbGsgPiAzMTIwMDApDQo+ID4gKwlpZiAoY2RjbGsgPiAzMjY0MDApDQo+ID4gKwkJcmV0dXJu
IDM7DQo+ID4gKwllbHNlIGlmIChjZGNsayA+IDMxMjAwMCkNCj4gPiAgCQlyZXR1cm4gMjsNCj4g
PiAgCWVsc2UgaWYgKGNkY2xrID4gMTgwMDAwKQ0KPiA+ICAJCXJldHVybiAxOw0KPiA+IC0tIA0K
PiA+IDIuMjEuMA0KPiA+IA0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4
