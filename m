Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 62A464143C0
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Sep 2021 10:28:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 74E786EB08;
	Wed, 22 Sep 2021 08:28:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 48D4D6EB08
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Sep 2021 08:28:46 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10114"; a="210782864"
X-IronPort-AV: E=Sophos;i="5.85,313,1624345200"; d="scan'208";a="210782864"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2021 01:28:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,313,1624345200"; d="scan'208";a="454666544"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by orsmga002.jf.intel.com with ESMTP; 22 Sep 2021 01:28:45 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Wed, 22 Sep 2021 01:28:45 -0700
Received: from bgsmsx606.gar.corp.intel.com (10.67.234.8) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Wed, 22 Sep 2021 01:28:43 -0700
Received: from bgsmsx606.gar.corp.intel.com ([10.67.234.8]) by
 BGSMSX606.gar.corp.intel.com ([10.67.234.8]) with mapi id 15.01.2242.012;
 Wed, 22 Sep 2021 13:58:41 +0530
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Souza, Jose" <jose.souza@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "Mun, Gwan-gyeong" <gwan-gyeong.mun@intel.com>, "Souza, Jose"
 <jose.souza@intel.com>
Thread-Topic: [Intel-gfx] [PATCH v3 3/3] drm/i915/display/psr: Do full fetch
 when handling biplanar formats
Thread-Index: AQHXroCvLLX4hDxVlUiptTASVFV24KuvoQxw
Date: Wed, 22 Sep 2021 08:28:41 +0000
Message-ID: <d2f5eeeb999341f482518d9d2e0657d4@intel.com>
References: <20210921004113.261827-1-jose.souza@intel.com>
 <20210921004113.261827-3-jose.souza@intel.com>
In-Reply-To: <20210921004113.261827-3-jose.souza@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.200.16
dlp-product: dlpe-windows
dlp-reaction: no-action
x-originating-ip: [10.223.10.1]
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v3 3/3] drm/i915/display/psr: Do full fetch
 when handling biplanar formats
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtZ2Z4IDxpbnRl
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBKb3PDqQ0K
PiBSb2JlcnRvIGRlIFNvdXphDQo+IFNlbnQ6IFR1ZXNkYXksIFNlcHRlbWJlciAyMSwgMjAyMSA2
OjExIEFNDQo+IFRvOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENjOiBNdW4s
IEd3YW4tZ3llb25nIDxnd2FuLWd5ZW9uZy5tdW5AaW50ZWwuY29tPjsgU291emEsIEpvc2UNCj4g
PGpvc2Uuc291emFAaW50ZWwuY29tPg0KPiBTdWJqZWN0OiBbSW50ZWwtZ2Z4XSBbUEFUQ0ggdjMg
My8zXSBkcm0vaTkxNS9kaXNwbGF5L3BzcjogRG8gZnVsbCBmZXRjaCB3aGVuDQo+IGhhbmRsaW5n
IGJpcGxhbmFyIGZvcm1hdHMNCj4gDQo+IEZyb206IEd3YW4tZ3llb25nIE11biA8Z3dhbi1neWVv
bmcubXVuQGludGVsLmNvbT4NCj4gDQo+IFdlIGFyZSBzdGlsbCBtaXNzaW5nIHRoZSBQU1IyIHNl
bGVjdGl2ZSBmZXRjaCBoYW5kbGluZyBvZiBiaXBsYW5hciBmb3JtYXRzIGJ1dA0KPiB1bnRpbCBw
cm9wZXIgaGFuZGxlIGlzIGFkZGVkIHdlIGNhbiB3b3JrYXJvdW5kIGl0IGJ5IGRvaW5nIGZ1bGwg
ZnJhbWVzIGZldGNoDQo+IHdoZW4gc3RhdGUgaGFzIGJpcGxhbmFyIGZvcm1hdHMuDQo+IA0KPiBX
ZSBuZWVkIHRoZSBzZWNvbmQgY2hlY2sgYmVjYXVzZSBhbiB1cGRhdGUgaW4gYSByZWd1bGFyIGZv
cm1hdCBjb3VsZA0KPiBpbnRlcnNlY3Qgd2l0aCBhIGJpcGxhbmFyIHBsYW5lIHRoYXQgd2FzIG5v
dCBpbml0aWFseSBwYXJ0IG9mIHRoZSBhdG9taWMgY29tbWl0Lg0KPiANCj4gU2lnbmVkLW9mZi1i
eTogR3dhbi1neWVvbmcgTXVuIDxnd2FuLWd5ZW9uZy5tdW5AaW50ZWwuY29tPg0KPiBTaWduZWQt
b2ZmLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4NCj4g
LS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jIHwgMTEgKysr
KysrKysrKy0NCj4gIDEgZmlsZSBjaGFuZ2VkLCAxMCBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9u
KC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9wc3IuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4g
aW5kZXggOGNlYjIyYzVhMWE2Yi4uZTZhNGMyNzk3NWQ4YyAxMDA2NDQNCj4gLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+IEBAIC0xNjAxLDkgKzE2MDEsMTMgQEAgaW50
IGludGVsX3BzcjJfc2VsX2ZldGNoX3VwZGF0ZShzdHJ1Y3QNCj4gaW50ZWxfYXRvbWljX3N0YXRl
ICpzdGF0ZSwNCj4gIAkJICogVE9ETzogTm90IGNsZWFyIGhvdyB0byBoYW5kbGUgcGxhbmVzIHdp
dGggbmVnYXRpdmUNCj4gcG9zaXRpb24sDQo+ICAJCSAqIGFsc28gcGxhbmVzIGFyZSBub3QgdXBk
YXRlZCBpZiB0aGV5IGhhdmUgYSBuZWdhdGl2ZSBYDQo+ICAJCSAqIHBvc2l0aW9uIHNvIGZvciBu
b3cgZG9pbmcgYSBmdWxsIHVwZGF0ZSBpbiB0aGlzIGNhc2VzDQo+ICsJCSAqDQo+ICsJCSAqIFRP
RE86IFdlIGFyZSBtaXNzaW5nIGJpcGxhbmFyIGZvcm1hdHMgaGFuZGxpbmcsIHVudGlsIGl0IGlz
DQo+ICsJCSAqIGltcGxlbWVudGVkIGl0IHdpbGwgc2VuZCBmdWxsIGZyYW1lIHVwZGF0ZXMuDQo+
ICAJCSAqLw0KPiAgCQlpZiAobmV3X3BsYW5lX3N0YXRlLT51YXBpLmRzdC55MSA8IDAgfHwNCj4g
LQkJICAgIG5ld19wbGFuZV9zdGF0ZS0+dWFwaS5kc3QueDEgPCAwKSB7DQo+ICsJCSAgICBuZXdf
cGxhbmVfc3RhdGUtPnVhcGkuZHN0LngxIDwgMCB8fA0KPiArCQkgICAgbmV3X3BsYW5lX3N0YXRl
LT5ody5mYi0+Zm9ybWF0LT5pc195dXYpIHsNCj4gIAkJCWZ1bGxfdXBkYXRlID0gdHJ1ZTsNCj4g
IAkJCWJyZWFrOw0KPiAgCQl9DQo+IEBAIC0xNjgyLDYgKzE2ODYsMTEgQEAgaW50IGludGVsX3Bz
cjJfc2VsX2ZldGNoX3VwZGF0ZShzdHJ1Y3QNCj4gaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwN
Cj4gIAkJaWYgKCFkcm1fcmVjdF9pbnRlcnNlY3QoJmludGVyLCAmbmV3X3BsYW5lX3N0YXRlLT51
YXBpLmRzdCkpDQo+ICAJCQljb250aW51ZTsNCj4gDQoNCkNvZGUgY29tbWVudCBjYW4gYmUgYWRk
ZWQgaGVyZSB3aHkgd2UgbmVlZCB0aGlzIGNoZWNrIGFnYWluIGluIHNhbWUgZnVuY3Rpb24uDQpF
bmFibGluZyBmdWxsIGZyYW1lIHVwZGF0ZSBpcyBmaW5lIGZvciBtZSBmb3IgcGxhbmFyIGZvcm1h
dCBidXQgbm90IHN1cmUgd2UgbmVlZCB0aGUgMm5kIGNoZWNrLg0KDQpSZWdhcmRzLA0KQW5pbWVz
aA0KDQo+ICsJCWlmIChuZXdfcGxhbmVfc3RhdGUtPmh3LmZiLT5mb3JtYXQtPmlzX3l1dikgew0K
PiArCQkJZnVsbF91cGRhdGUgPSB0cnVlOw0KPiArCQkJYnJlYWs7DQo+ICsJCX0NCj4gKw0KPiAg
CQlzZWxfZmV0Y2hfYXJlYSA9ICZuZXdfcGxhbmVfc3RhdGUtPnBzcjJfc2VsX2ZldGNoX2FyZWE7
DQo+ICAJCXNlbF9mZXRjaF9hcmVhLT55MSA9IGludGVyLnkxIC0gbmV3X3BsYW5lX3N0YXRlLT51
YXBpLmRzdC55MTsNCj4gIAkJc2VsX2ZldGNoX2FyZWEtPnkyID0gaW50ZXIueTIgLSBuZXdfcGxh
bmVfc3RhdGUtPnVhcGkuZHN0LnkxOw0KPiAtLQ0KPiAyLjMzLjANCg0K
