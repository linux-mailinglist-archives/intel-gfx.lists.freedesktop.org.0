Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8437426E6F6
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Sep 2020 22:56:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E0D416E321;
	Thu, 17 Sep 2020 20:56:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CFD166E043
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Sep 2020 20:56:51 +0000 (UTC)
IronPort-SDR: nDfKGYPhbThHe1NTEdqmg8ymEM0Y/aSyjHFadfhNuZiD07WyVTRGfA88o6RAvUka5WXNUsQoPp
 q4qiSgZJ1NDQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9747"; a="159099424"
X-IronPort-AV: E=Sophos;i="5.77,272,1596524400"; d="scan'208";a="159099424"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2020 13:56:49 -0700
IronPort-SDR: cLMb+i5FYMDhwW2CeEYprBXVQ6dxbocBRlB6Dm4cSXSRLkMS0LwhGg1U0N1t9bww0xn6T7EwRe
 p1CJMs8PbF4w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,272,1596524400"; d="scan'208";a="307618991"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by orsmga006.jf.intel.com with ESMTP; 17 Sep 2020 13:56:49 -0700
Received: from bgsmsx601.gar.corp.intel.com (10.109.78.80) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 17 Sep 2020 13:56:47 -0700
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 BGSMSX601.gar.corp.intel.com (10.109.78.80) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 18 Sep 2020 02:26:39 +0530
Received: from bgsmsx604.gar.corp.intel.com ([10.67.234.6]) by
 BGSMSX604.gar.corp.intel.com ([10.67.234.6]) with mapi id 15.01.1713.004;
 Fri, 18 Sep 2020 02:26:39 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 15/20] drm/i915: Make ilk_load_luts() deal
 with degamma
Thread-Index: AQHWXH9Kl3lHrxq5HU2qAxNIo243sqltsJnA
Date: Thu, 17 Sep 2020 20:56:39 +0000
Message-ID: <9e8d93767a6940cbbfe7a1b4967adcd2@intel.com>
References: <20200717211345.26851-1-ville.syrjala@linux.intel.com>
 <20200717211345.26851-16-ville.syrjala@linux.intel.com>
In-Reply-To: <20200717211345.26851-16-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
x-originating-ip: [10.223.10.1]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 15/20] drm/i915: Make ilk_load_luts() deal
 with degamma
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
PiBTeXJqYWxhDQo+IFNlbnQ6IFNhdHVyZGF5LCBKdWx5IDE4LCAyMDIwIDI6NDQgQU0NCj4gVG86
IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gU3ViamVjdDogW0ludGVsLWdmeF0g
W1BBVENIIDE1LzIwXSBkcm0vaTkxNTogTWFrZSBpbGtfbG9hZF9sdXRzKCkgZGVhbCB3aXRoDQo+
IGRlZ2FtbWENCj4gDQo+IEZyb206IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51
eC5pbnRlbC5jb20+DQo+IA0KPiBNYWtlIGlsa19sb2FkX2x1dHMoKSByZWFkeSBmb3IgYSBkZWdh
bW1hIGx1dC4gQ3VycmVudGx5IHdlIG5ldmVyIGhhdmUgb25lLCBidXQNCj4gc29vbiB3ZSBtYXkg
Z2V0IG9uZSBmcm9tIHJlYWRvdXQsIGFuZCBJIHRoaW5rIHdlIG1heSB3YW50IHRvIGNoYW5nZSB0
aGUgc3RhdGUNCj4gY29tcHV0YXRpb24gc3VjaCB0aGF0IHdlIG1heSBlbmQgdXAgd2l0aCBvbmUg
ZXZlbiB3aGVuIHVzZXJzcGFjZSBoYXMgc2ltcGx5DQo+IHN1cHBsaWVkIGEgZ2FtbWEgbHV0Lg0K
PiANCj4gQXQgbGVhc3QgdGhlIGNvZGUgbm93IGZvbGxvd3MgdGhlIHBhdGggbGFpZCBvdXQgYnkg
dGhlIGl2Yi9iZHcgY291bnRlcnBhcnMuDQoNClNvdW5kcyBnb29kLg0KUmV2aWV3ZWQtYnk6IFVt
YSBTaGFua2FyIDx1bWEuc2hhbmthckBpbnRlbC5jb20+DQoNCj4gU2lnbmVkLW9mZi1ieTogVmls
bGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gLS0tDQo+ICBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NvbG9yLmMgfCA2ICsrKystLQ0KPiAg
MSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkNCj4gDQo+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NvbG9yLmMNCj4g
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NvbG9yLmMNCj4gaW5kZXggZDVj
ZTU4YzNiYzExLi4xMmE0MWZiNGE5OGMgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfY29sb3IuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2NvbG9yLmMNCj4gQEAgLTYzNywxMyArNjM3LDE1IEBAIHN0YXRpYyB2b2lk
IGlsa19sb2FkX2x1dHMoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUNCj4gKmNydGNfc3Rh
dGUpICB7DQo+ICAJc3RydWN0IGludGVsX2NydGMgKmNydGMgPSB0b19pbnRlbF9jcnRjKGNydGNf
c3RhdGUtPnVhcGkuY3J0Yyk7DQo+ICAJY29uc3Qgc3RydWN0IGRybV9wcm9wZXJ0eV9ibG9iICpn
YW1tYV9sdXQgPSBjcnRjX3N0YXRlLQ0KPiA+aHcuZ2FtbWFfbHV0Ow0KPiArCWNvbnN0IHN0cnVj
dCBkcm1fcHJvcGVydHlfYmxvYiAqZGVnYW1tYV9sdXQgPSBjcnRjX3N0YXRlLQ0KPiA+aHcuZGVn
YW1tYV9sdXQ7DQo+ICsJY29uc3Qgc3RydWN0IGRybV9wcm9wZXJ0eV9ibG9iICpibG9iID0gZ2Ft
bWFfbHV0ID86IGRlZ2FtbWFfbHV0Ow0KPiANCj4gIAlzd2l0Y2ggKGNydGNfc3RhdGUtPmdhbW1h
X21vZGUpIHsNCj4gIAljYXNlIEdBTU1BX01PREVfTU9ERV84QklUOg0KPiAtCQlpbGtfbG9hZF9s
dXRfOChjcnRjLCBnYW1tYV9sdXQpOw0KPiArCQlpbGtfbG9hZF9sdXRfOChjcnRjLCBibG9iKTsN
Cj4gIAkJYnJlYWs7DQo+ICAJY2FzZSBHQU1NQV9NT0RFX01PREVfMTBCSVQ6DQo+IC0JCWlsa19s
b2FkX2x1dF8xMChjcnRjLCBnYW1tYV9sdXQpOw0KPiArCQlpbGtfbG9hZF9sdXRfMTAoY3J0Yywg
YmxvYik7DQo+ICAJCWJyZWFrOw0KPiAgCWRlZmF1bHQ6DQo+ICAJCU1JU1NJTkdfQ0FTRShjcnRj
X3N0YXRlLT5nYW1tYV9tb2RlKTsNCj4gLS0NCj4gMi4yNi4yDQo+IA0KPiBfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KPiBJbnRlbC1nZnggbWFpbGluZyBs
aXN0DQo+IEludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngNCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
