Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E3A9A26E553
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Sep 2020 21:29:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 469F06EC7E;
	Thu, 17 Sep 2020 19:29:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E8EE96EC7E
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Sep 2020 19:29:39 +0000 (UTC)
IronPort-SDR: BezonyWqnFLBATubvprjQ7/D56uJ+C66Nq9q1isaMSKBNb7EW1XH4+cETh0v6fFglY4rFGhpXJ
 Lg3V41pNaO0Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9747"; a="147527219"
X-IronPort-AV: E=Sophos;i="5.77,271,1596524400"; d="scan'208";a="147527219"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2020 12:29:39 -0700
IronPort-SDR: 8zoZqtvDwHEDqSi8Abk6EjnhE8xPck5Aq89McTncBo98vPD8cp3XnTCYpOjN81DuykVMNWrV9e
 EgT/LhPjCRuQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,271,1596524400"; d="scan'208";a="307594793"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by orsmga006.jf.intel.com with ESMTP; 17 Sep 2020 12:29:39 -0700
Received: from bgsmsx602.gar.corp.intel.com (10.109.78.81) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 17 Sep 2020 12:29:38 -0700
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 BGSMSX602.gar.corp.intel.com (10.109.78.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 18 Sep 2020 00:59:36 +0530
Received: from bgsmsx604.gar.corp.intel.com ([10.67.234.6]) by
 BGSMSX604.gar.corp.intel.com ([10.67.234.6]) with mapi id 15.01.1713.004;
 Fri, 18 Sep 2020 00:59:36 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 04/20] drm/i915:
 s/glk_read_lut_10/bdw_read_lut_10/
Thread-Index: AQHWXH81UEdrPXAxYUGUOZWQzg0mcaltmJPA
Date: Thu, 17 Sep 2020 19:29:36 +0000
Message-ID: <6dad721fc6ef41c8becf2789bb5f8c5b@intel.com>
References: <20200717211345.26851-1-ville.syrjala@linux.intel.com>
 <20200717211345.26851-5-ville.syrjala@linux.intel.com>
In-Reply-To: <20200717211345.26851-5-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
x-originating-ip: [10.223.10.1]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 04/20] drm/i915:
 s/glk_read_lut_10/bdw_read_lut_10/
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
W1BBVENIIDA0LzIwXSBkcm0vaTkxNToNCj4gcy9nbGtfcmVhZF9sdXRfMTAvYmR3X3JlYWRfbHV0
XzEwLw0KPiANCj4gRnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4Lmlu
dGVsLmNvbT4NCj4gDQo+IGdsa19yZWFkX2x1dF8xMCgpIHdvcmtzIGp1c3QgZmluZCBmb3IgYWxs
IGJkdysgcGxhdGZvcm1zLCBzbyByZW5hbWUgaXQuDQoNClJldmlld2VkLWJ5OiBVbWEgU2hhbmth
ciA8dW1hLnNoYW5rYXJAaW50ZWwuY29tPg0KDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBWaWxsZSBT
eXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiAtLS0NCj4gIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY29sb3IuYyB8IDcgKysrKy0tLQ0KPiAgMSBm
aWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NvbG9yLmMNCj4gYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NvbG9yLmMNCj4gaW5kZXggOTQ1YmIw
M2JkZDRkLi43N2MxMDNhODZhMzAgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfY29sb3IuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2NvbG9yLmMNCj4gQEAgLTE5MTksNyArMTkxOSw4IEBAIHN0YXRpYyB2b2lkIGls
a19yZWFkX2x1dHMoc3RydWN0IGludGVsX2NydGNfc3RhdGUNCj4gKmNydGNfc3RhdGUpDQo+ICAJ
CWNydGNfc3RhdGUtPmh3LmdhbW1hX2x1dCA9IGlsa19yZWFkX2x1dF8xMChjcnRjKTsgIH0NCj4g
DQo+IC1zdGF0aWMgc3RydWN0IGRybV9wcm9wZXJ0eV9ibG9iICpnbGtfcmVhZF9sdXRfMTAoc3Ry
dWN0IGludGVsX2NydGMgKmNydGMsDQo+ICsvKiBPbiBCRFcrIHRoZSBpbmRleCBhdXRvIGluY3Jl
bWVudCBtb2RlIGFjdHVhbGx5IHdvcmtzICovIHN0YXRpYw0KPiArc3RydWN0IGRybV9wcm9wZXJ0
eV9ibG9iICpiZHdfcmVhZF9sdXRfMTAoc3RydWN0IGludGVsX2NydGMgKmNydGMsDQo+ICAJCQkJ
CQkgdTMyIHByZWNfaW5kZXgpDQo+ICB7DQo+ICAJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRl
dl9wcml2ID0gdG9faTkxNShjcnRjLT5iYXNlLmRldik7IEBAIC0xOTYwLDcNCj4gKzE5NjEsNyBA
QCBzdGF0aWMgdm9pZCBnbGtfcmVhZF9sdXRzKHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRj
X3N0YXRlKQ0KPiAgCWlmIChjcnRjX3N0YXRlLT5nYW1tYV9tb2RlID09IEdBTU1BX01PREVfTU9E
RV84QklUKQ0KPiAgCQljcnRjX3N0YXRlLT5ody5nYW1tYV9sdXQgPSBpbGtfcmVhZF9sdXRfOChj
cnRjKTsNCj4gIAllbHNlDQo+IC0JCWNydGNfc3RhdGUtPmh3LmdhbW1hX2x1dCA9IGdsa19yZWFk
X2x1dF8xMChjcnRjLA0KPiBQQUxfUFJFQ19JTkRFWF9WQUxVRSgwKSk7DQo+ICsJCWNydGNfc3Rh
dGUtPmh3LmdhbW1hX2x1dCA9IGJkd19yZWFkX2x1dF8xMChjcnRjLA0KPiArUEFMX1BSRUNfSU5E
RVhfVkFMVUUoMCkpOw0KPiAgfQ0KPiANCj4gIHN0YXRpYyBzdHJ1Y3QgZHJtX3Byb3BlcnR5X2Js
b2IgKg0KPiBAQCAtMjAxNiw3ICsyMDE3LDcgQEAgc3RhdGljIHZvaWQgaWNsX3JlYWRfbHV0cyhz
dHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZQ0KPiAqY3J0Y19zdGF0ZSkNCj4gIAkJY3J0Y19zdGF0ZS0+
aHcuZ2FtbWFfbHV0ID0gaWNsX3JlYWRfbHV0X211bHRpX3NlZ21lbnQoY3J0Yyk7DQo+ICAJCWJy
ZWFrOw0KPiAgCWRlZmF1bHQ6DQo+IC0JCWNydGNfc3RhdGUtPmh3LmdhbW1hX2x1dCA9IGdsa19y
ZWFkX2x1dF8xMChjcnRjLA0KPiBQQUxfUFJFQ19JTkRFWF9WQUxVRSgwKSk7DQo+ICsJCWNydGNf
c3RhdGUtPmh3LmdhbW1hX2x1dCA9IGJkd19yZWFkX2x1dF8xMChjcnRjLA0KPiArUEFMX1BSRUNf
SU5ERVhfVkFMVUUoMCkpOw0KPiAgCX0NCj4gIH0NCj4gDQo+IC0tDQo+IDIuMjYuMg0KPiANCj4g
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18NCj4gSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdA0KPiBJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IGh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4DQpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
