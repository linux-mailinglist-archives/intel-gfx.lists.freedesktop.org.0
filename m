Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B2FE26E552
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Sep 2020 21:27:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 916EF6EC78;
	Thu, 17 Sep 2020 19:27:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EE2B26EC78
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Sep 2020 19:27:44 +0000 (UTC)
IronPort-SDR: R1+8kTBo74grg+bUrrCtsKaneHB4goTeMbbn7FpzXa2Uae+W2Q7pMuYn4syPG0B/E7q5nfvCgP
 HqJO0cUHGl7Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9747"; a="223951247"
X-IronPort-AV: E=Sophos;i="5.77,271,1596524400"; d="scan'208";a="223951247"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2020 12:27:32 -0700
IronPort-SDR: eqxJ7jMVX+PjsmLxd2hLZAfr8DMRIENbj0WUZ+7JbA23jTAH/EXRmvUpuRTtXvR0RkXQJcxJH6
 uca/+OQ2oelw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,271,1596524400"; d="scan'208";a="287697408"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by fmsmga007.fm.intel.com with ESMTP; 17 Sep 2020 12:27:32 -0700
Received: from bgsmsx603.gar.corp.intel.com (10.109.78.82) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 17 Sep 2020 12:27:30 -0700
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 BGSMSX603.gar.corp.intel.com (10.109.78.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 18 Sep 2020 00:57:28 +0530
Received: from bgsmsx604.gar.corp.intel.com ([10.67.234.6]) by
 BGSMSX604.gar.corp.intel.com ([10.67.234.6]) with mapi id 15.01.1713.004;
 Fri, 18 Sep 2020 00:57:28 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 03/20] drm/i915: Include the LUT sizes in the
 state dump
Thread-Index: AQHWXH81cGRAyGTXu0CsNQ9QABSR/qltl6eA
Date: Thu, 17 Sep 2020 19:27:28 +0000
Message-ID: <1688e3e0588d4964b6c655cc3cf96280@intel.com>
References: <20200717211345.26851-1-ville.syrjala@linux.intel.com>
 <20200717211345.26851-4-ville.syrjala@linux.intel.com>
In-Reply-To: <20200717211345.26851-4-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
x-originating-ip: [10.223.10.1]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 03/20] drm/i915: Include the LUT sizes in
 the state dump
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
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBWaWxsZQ0K
PiBTeXJqYWxhDQo+IFNlbnQ6IFNhdHVyZGF5LCBKdWx5IDE4LCAyMDIwIDI6NDMgQU0NCj4gVG86
IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gU3ViamVjdDogW0ludGVsLWdmeF0g
W1BBVENIIDAzLzIwXSBkcm0vaTkxNTogSW5jbHVkZSB0aGUgTFVUIHNpemVzIGluIHRoZSBzdGF0
ZQ0KPiBkdW1wDQo+IA0KPiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGlu
dXguaW50ZWwuY29tPg0KPiANCj4gRHVtcCB0aGUgc2l6ZXMgb2YgdGhlIHNvZnR3YXJlIExVVHMg
aW4gdGhlIHN0YXRlIGR1bXAuIE1ha2VzIGl0IGEgYml0IGVhc2llciB0bw0KPiBzZWUgd2hpY2gg
aXMgaXMgcHJlc2VudCB3aXRob3V0IGhhdmluZyB0byBkZWNvZGUgaXQgZnJvbSB0aGUgZ2FtbWFf
bW9kZSBhbmQNCg0KTml0cGljazogRHJvcCBhbiBleHRyYSAiaXMiDQpXaXRoIHRoaXMsDQpSZXZp
ZXdlZC1ieTogVW1hIFNoYW5rYXIgPHVtYS5zaGFua2FyQGludGVsLmNvbT4NCg0KPiBvdGhlciBi
aXRzIG9mIHN0YXRlLg0KPiANCj4gU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxs
ZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyB8IDYgKysrKysrDQo+ICAxIGZpbGUgY2hhbmdlZCwg
NiBpbnNlcnRpb25zKCspDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2Rpc3BsYXkuYw0KPiBpbmRleCBjMzYzNzljZjA3ZmMuLjkyNzlkZjc3NTdmYyAxMDA2
NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMN
Cj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4g
QEAgLTEzMTMxLDYgKzEzMTMxLDEyIEBAIHN0YXRpYyB2b2lkIGludGVsX2R1bXBfcGlwZV9jb25m
aWcoY29uc3Qgc3RydWN0DQo+IGludGVsX2NydGNfc3RhdGUgKnBpcGVfY29uZmlnLA0KPiAgCQkJ
ICAgIHBpcGVfY29uZmlnLT5jc2NfbW9kZSwgcGlwZV9jb25maWctPmdhbW1hX21vZGUsDQo+ICAJ
CQkgICAgcGlwZV9jb25maWctPmdhbW1hX2VuYWJsZSwgcGlwZV9jb25maWctDQo+ID5jc2NfZW5h
YmxlKTsNCj4gDQo+ICsJZHJtX2RiZ19rbXMoJmRldl9wcml2LT5kcm0sICJkZWdhbW1hIGx1dDog
JWQgZW50cmllcywgZ2FtbWEgbHV0Og0KPiAlZCBlbnRyaWVzXG4iLA0KPiArCQkgICAgcGlwZV9j
b25maWctPmh3LmRlZ2FtbWFfbHV0ID8NCj4gKwkJICAgIGRybV9jb2xvcl9sdXRfc2l6ZShwaXBl
X2NvbmZpZy0+aHcuZGVnYW1tYV9sdXQpIDogMCwNCj4gKwkJICAgIHBpcGVfY29uZmlnLT5ody5n
YW1tYV9sdXQgPw0KPiArCQkgICAgZHJtX2NvbG9yX2x1dF9zaXplKHBpcGVfY29uZmlnLT5ody5n
YW1tYV9sdXQpIDogMCk7DQo+ICsNCj4gIGR1bXBfcGxhbmVzOg0KPiAgCWlmICghc3RhdGUpDQo+
ICAJCXJldHVybjsNCj4gLS0NCj4gMi4yNi4yDQo+IA0KPiBfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXw0KPiBJbnRlbC1nZnggbWFpbGluZyBsaXN0DQo+IElu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngNCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
