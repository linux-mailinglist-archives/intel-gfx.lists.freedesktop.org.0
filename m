Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D6F3397C7F
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Jun 2021 00:41:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C8226E0FE;
	Tue,  1 Jun 2021 22:41:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 586096E0F3
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Jun 2021 22:41:38 +0000 (UTC)
IronPort-SDR: YMWYxFvZbi5K9j3v4MNypIunvC8GmLRgXb6V6gPwfU9Ktob/0fqQDqclfk9uF1TEyjMHSrX9v3
 LfVC6DoMjnCg==
X-IronPort-AV: E=McAfee;i="6200,9189,10002"; a="190767576"
X-IronPort-AV: E=Sophos;i="5.83,241,1616482800"; d="scan'208";a="190767576"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2021 15:41:36 -0700
IronPort-SDR: sObh0yRohtBE1W3fST3/tYXsvA9PgUno6m5apPkfMiqnWBNVuqF4ADXtM5jKtI8Pc9pkXs2vM7
 xkGgUoliuw2A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,241,1616482800"; d="scan'208";a="399763530"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by orsmga006.jf.intel.com with ESMTP; 01 Jun 2021 15:41:35 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Tue, 1 Jun 2021 15:41:34 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Tue, 1 Jun 2021 15:41:34 -0700
Received: from orsmsx611.amr.corp.intel.com ([10.22.229.24]) by
 ORSMSX611.amr.corp.intel.com ([10.22.229.24]) with mapi id 15.01.2242.008;
 Tue, 1 Jun 2021 15:41:34 -0700
From: "Sripada, Radhakrishna" <radhakrishna.sripada@intel.com>
To: "Souza, Jose" <jose.souza@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v2 4/4] drm/i915/display: Drop FIXME about
 turn off infoframes
Thread-Index: AQHXSRepwYKFsv4nwUuR+wUPdq3RJKr/3CVQ
Date: Tue, 1 Jun 2021 22:41:34 +0000
Message-ID: <95ed888b364042a99a63b57fe338d515@intel.com>
References: <20210514232247.144542-1-jose.souza@intel.com>
 <20210514232247.144542-4-jose.souza@intel.com>
In-Reply-To: <20210514232247.144542-4-jose.souza@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.0.76
dlp-reaction: no-action
x-originating-ip: [10.22.254.132]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2 4/4] drm/i915/display: Drop FIXME about
 turn off infoframes
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtZ2Z4IDxpbnRl
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBKb3PDqQ0K
PiBSb2JlcnRvIGRlIFNvdXphDQo+IFNlbnQ6IEZyaWRheSwgTWF5IDE0LCAyMDIxIDQ6MjMgUE0N
Cj4gVG86IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gU3ViamVjdDogW0ludGVs
LWdmeF0gW1BBVENIIHYyIDQvNF0gZHJtL2k5MTUvZGlzcGxheTogRHJvcCBGSVhNRSBhYm91dCB0
dXJuDQo+IG9mZiBpbmZvZnJhbWVzDQo+IA0KPiBpbnRlbF9kcF9zZXRfaW5mb2ZyYW1lcygpIGNh
bGwgaW4gaW50ZWxfZGRpX3Bvc3RfZGlzYWJsZV9kcCgpIHdpbGwgdGFrZSBjYXJlIHRvDQo+IGRp
c2FibGUgYWxsIGVuYWJsZWQgaW5mb2ZyYW1lcy4NCj4gDQo+IENjOiBWaWxsZSBTeXJqw6Rsw6Qg
PHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KUmV2aWV3ZWQtYnk6IFJhZGhha3Jpc2hu
YSBTcmlwYWRhIDxyYWRoYWtyaXNobmEuc3JpcGFkYUBpbnRlbC5jb20+DQo+IFNpZ25lZC1vZmYt
Ynk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPg0KPiAtLS0N
Cj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMgfCAxIC0NCj4gIDEg
ZmlsZSBjaGFuZ2VkLCAxIGRlbGV0aW9uKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZGRpLmMNCj4gaW5kZXggNWJjNTUyOGYzMDkxLi5kM2JjNWExYTkzNmEg
MTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMN
Cj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYw0KPiBAQCAt
Mjc2Miw3ICsyNzYyLDYgQEAgc3RhdGljIHZvaWQgaW50ZWxfZGRpX3ByZV9lbmFibGUoc3RydWN0
DQo+IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsDQo+ICAJCQkJCWNvbm5fc3RhdGUpOw0KPiAN
Cj4gIAkJLyogRklYTUUgcHJlY29tcHV0ZSBldmVyeXRoaW5nIHByb3Blcmx5ICovDQo+IC0JCS8q
IEZJWE1FIGhvdyBkbyB3ZSB0dXJuIGluZm9mcmFtZXMgb2ZmIGFnYWluPyAqLw0KPiAgCQlpZiAo
ZGlnX3BvcnQtPmxzcGNvbi5hY3RpdmUgJiYgZGlnX3BvcnQtPmRwLmhhc19oZG1pX3NpbmspDQo+
ICAJCQlkaWdfcG9ydC0+c2V0X2luZm9mcmFtZXMoZW5jb2RlciwgdHJ1ZSwgY3J0Y19zdGF0ZSwN
Cj4gIAkJCQkJCSBjb25uX3N0YXRlKTsNCj4gLS0NCj4gMi4zMS4xDQo+IA0KPiBfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KPiBJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0DQo+IEludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngNCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
