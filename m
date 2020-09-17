Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 643AA26E551
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Sep 2020 21:24:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A98C6EC7A;
	Thu, 17 Sep 2020 19:24:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 368066EC7A
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Sep 2020 19:24:38 +0000 (UTC)
IronPort-SDR: 5OnbPnjchRyAYZjY7P9bWh2tkKQJnngQseA58g8uN4hBaiHCzJ+QNdAY0exoqTfCaYv390orOZ
 rB17F2rpubeA==
X-IronPort-AV: E=McAfee;i="6000,8403,9747"; a="157163653"
X-IronPort-AV: E=Sophos;i="5.77,271,1596524400"; d="scan'208";a="157163653"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2020 12:24:36 -0700
IronPort-SDR: YXe/dGnI2UYzfLVz6jP0vo3NsUhvyLrPdw2MVRCbyRNsrvLDFzufSIQUJWOxcOyXFRXd44aPg5
 dREARsWd60Pw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,271,1596524400"; d="scan'208";a="483877441"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga005.jf.intel.com with ESMTP; 17 Sep 2020 12:24:35 -0700
Received: from bgsmsx601.gar.corp.intel.com (10.109.78.80) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 17 Sep 2020 12:24:16 -0700
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 BGSMSX601.gar.corp.intel.com (10.109.78.80) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 18 Sep 2020 00:54:14 +0530
Received: from bgsmsx604.gar.corp.intel.com ([10.67.234.6]) by
 BGSMSX604.gar.corp.intel.com ([10.67.234.6]) with mapi id 15.01.1713.004;
 Fri, 18 Sep 2020 00:54:14 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 02/20] drm/i915: Move MST master transcoder
 dump earlier
Thread-Index: AQHWXH8zf0s94EaX00i+oOXS0t9UNKltlw9g
Date: Thu, 17 Sep 2020 19:24:14 +0000
Message-ID: <e347213f0f174195a7d1ff16444e72d2@intel.com>
References: <20200717211345.26851-1-ville.syrjala@linux.intel.com>
 <20200717211345.26851-3-ville.syrjala@linux.intel.com>
In-Reply-To: <20200717211345.26851-3-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
x-originating-ip: [10.223.10.1]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 02/20] drm/i915: Move MST master transcoder
 dump earlier
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
W1BBVENIIDAyLzIwXSBkcm0vaTkxNTogTW92ZSBNU1QgbWFzdGVyIHRyYW5zY29kZXIgZHVtcA0K
PiBlYXJsaWVyDQo+IA0KPiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGlu
dXguaW50ZWwuY29tPg0KPiANCj4gTW92ZSB0aGUgTVNUIG1hc3RlciB0cmFuc2NvZGVyIGR1bXAg
bmV4dCB0byB0aGUgb3RoZXIgdHJhbnNjb2RlciBiaXRzLg0KDQpSZXZpZXdlZC1ieTogVW1hIFNo
YW5rYXIgPHVtYS5zaGFua2FyQGludGVsLmNvbT4NCg0KPiBTaWduZWQtb2ZmLWJ5OiBWaWxsZSBT
eXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiAtLS0NCj4gIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIHwgNiArKystLS0NCj4gIDEg
ZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4g
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0KPiBpbmRleCBh
ZTBhZjQ1MmQ3NzYuLmMzNjM3OWNmMDdmYyAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4gQEAgLTEzMDMxLDYgKzEzMDMxLDkgQEAgc3Rh
dGljIHZvaWQgaW50ZWxfZHVtcF9waXBlX2NvbmZpZyhjb25zdCBzdHJ1Y3QNCj4gaW50ZWxfY3J0
Y19zdGF0ZSAqcGlwZV9jb25maWcsDQo+ICAJCSAgICB0cmFuc2NvZGVyX25hbWUocGlwZV9jb25m
aWctPmNwdV90cmFuc2NvZGVyKSwNCj4gIAkJICAgIHBpcGVfY29uZmlnLT5waXBlX2JwcCwgcGlw
ZV9jb25maWctPmRpdGhlcik7DQo+IA0KPiArCWRybV9kYmdfa21zKCZkZXZfcHJpdi0+ZHJtLCAi
TVNUIG1hc3RlciB0cmFuc2NvZGVyOiAlc1xuIiwNCj4gKwkJICAgIHRyYW5zY29kZXJfbmFtZShw
aXBlX2NvbmZpZy0+bXN0X21hc3Rlcl90cmFuc2NvZGVyKSk7DQo+ICsNCj4gIAlkcm1fZGJnX2tt
cygmZGV2X3ByaXYtPmRybSwNCj4gIAkJICAgICJwb3J0IHN5bmM6IG1hc3RlciB0cmFuc2NvZGVy
OiAlcywgc2xhdmUgdHJhbnNjb2RlciBiaXRtYXNrID0NCj4gMHgleFxuIiwNCj4gIAkJICAgIHRy
YW5zY29kZXJfbmFtZShwaXBlX2NvbmZpZy0+bWFzdGVyX3RyYW5zY29kZXIpLA0KPiBAQCAtMTMx
MjgsOSArMTMxMzEsNiBAQCBzdGF0aWMgdm9pZCBpbnRlbF9kdW1wX3BpcGVfY29uZmlnKGNvbnN0
IHN0cnVjdA0KPiBpbnRlbF9jcnRjX3N0YXRlICpwaXBlX2NvbmZpZywNCj4gIAkJCSAgICBwaXBl
X2NvbmZpZy0+Y3NjX21vZGUsIHBpcGVfY29uZmlnLT5nYW1tYV9tb2RlLA0KPiAgCQkJICAgIHBp
cGVfY29uZmlnLT5nYW1tYV9lbmFibGUsIHBpcGVfY29uZmlnLQ0KPiA+Y3NjX2VuYWJsZSk7DQo+
IA0KPiAtCWRybV9kYmdfa21zKCZkZXZfcHJpdi0+ZHJtLCAiTVNUIG1hc3RlciB0cmFuc2NvZGVy
OiAlc1xuIiwNCj4gLQkJICAgIHRyYW5zY29kZXJfbmFtZShwaXBlX2NvbmZpZy0+bXN0X21hc3Rl
cl90cmFuc2NvZGVyKSk7DQo+IC0NCj4gIGR1bXBfcGxhbmVzOg0KPiAgCWlmICghc3RhdGUpDQo+
ICAJCXJldHVybjsNCj4gLS0NCj4gMi4yNi4yDQo+IA0KPiBfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXw0KPiBJbnRlbC1nZnggbWFpbGluZyBsaXN0DQo+IElu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngNCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
