Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A49A26E674
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Sep 2020 22:15:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5CE176E328;
	Thu, 17 Sep 2020 20:15:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BC46F6E328
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Sep 2020 20:15:29 +0000 (UTC)
IronPort-SDR: IJ8+jktELgyBUdIY3LJxql9e9AjW7l2U9fNz6nHvGJWE5e/0YHaQOYOtZUTcifsVixd24hGCmi
 vA7HxdTKElzw==
X-IronPort-AV: E=McAfee;i="6000,8403,9747"; a="159093714"
X-IronPort-AV: E=Sophos;i="5.77,272,1596524400"; d="scan'208";a="159093714"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2020 13:15:24 -0700
IronPort-SDR: M9DH4g2mg3QNDIrb434NvZ2JM/lveVyhTAFINJRJtEL2n+lohrjpadd6OnjAu69y1eJQllfU1B
 di692VIF0K8w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,272,1596524400"; d="scan'208";a="336545758"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by orsmga008.jf.intel.com with ESMTP; 17 Sep 2020 13:15:23 -0700
Received: from bgsmsx605.gar.corp.intel.com (10.67.234.7) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 17 Sep 2020 13:15:22 -0700
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 BGSMSX605.gar.corp.intel.com (10.67.234.7) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 18 Sep 2020 01:45:20 +0530
Received: from bgsmsx604.gar.corp.intel.com ([10.67.234.6]) by
 BGSMSX604.gar.corp.intel.com ([10.67.234.6]) with mapi id 15.01.1713.004;
 Fri, 18 Sep 2020 01:45:20 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 10/20] drm/i915: Add gamma/degamma readout
 for bdw+
Thread-Index: AQHWXH9EWi1Qeucxi0W5uoLdJJxdZqltpMzg
Date: Thu, 17 Sep 2020 20:15:20 +0000
Message-ID: <4af5606d8f3f4e088a1a88c0908de875@intel.com>
References: <20200717211345.26851-1-ville.syrjala@linux.intel.com>
 <20200717211345.26851-11-ville.syrjala@linux.intel.com>
In-Reply-To: <20200717211345.26851-11-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
x-originating-ip: [10.223.10.1]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 10/20] drm/i915: Add gamma/degamma readout
 for bdw+
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
W1BBVENIIDEwLzIwXSBkcm0vaTkxNTogQWRkIGdhbW1hL2RlZ2FtbWEgcmVhZG91dCBmb3INCj4g
YmR3Kw0KPiANCj4gRnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4Lmlu
dGVsLmNvbT4NCj4gDQo+IFJlYWQgb3V0IHRoZSBnYW1tZS9kZWdhbW1hIExVVCBvbiBiZHcrLiBO
b3QgZW50aXJlbHkgY29tcGxldGUgYXMgd2UgbmVlZA0KDQpzL2dhbW1lL2dhbW1hDQpXaXRoIHRo
aXMsDQpSZXZpZXdlZC1ieTogVW1hIFNoYW5rYXIgPHVtYS5zaGFua2FyQGludGVsLmNvbT4NCg0K
PiBhIGJpdCBtb3JlIHNwZWNpYWwgc2F1Y2UgdG8gaGFuZGxlIHRoZSBzcGxpdCBnYW1tYSBtb2Rl
Lg0KPiANCj4gU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxp
bnV4LmludGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2NvbG9yLmMgfCAyNyArKysrKysrKysrKysrKysrKysrKysrDQo+ICAxIGZpbGUgY2hhbmdl
ZCwgMjcgaW5zZXJ0aW9ucygrKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfY29sb3IuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfY29sb3IuYw0KPiBpbmRleCA2ODQyZjVjMDM1NmQuLjU3NDJhYzFhZjg2MiAxMDA2
NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jb2xvci5jDQo+
ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY29sb3IuYw0KPiBAQCAt
MTk5MSw2ICsxOTkxLDMyIEBAIHN0YXRpYyBzdHJ1Y3QgZHJtX3Byb3BlcnR5X2Jsb2INCj4gKmJk
d19yZWFkX2x1dF8xMChzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YywNCj4gIAlyZXR1cm4gYmxvYjsN
Cj4gIH0NCj4gDQo+ICtzdGF0aWMgdm9pZCBiZHdfcmVhZF9sdXRzKHN0cnVjdCBpbnRlbF9jcnRj
X3N0YXRlICpjcnRjX3N0YXRlKSB7DQo+ICsJc3RydWN0IGludGVsX2NydGMgKmNydGMgPSB0b19p
bnRlbF9jcnRjKGNydGNfc3RhdGUtPnVhcGkuY3J0Yyk7DQo+ICsJc3RydWN0IGRybV9wcm9wZXJ0
eV9ibG9iICoqYmxvYiA9DQo+ICsJCWNydGNfc3RhdGUtPmNzY19tb2RlICYgQ1NDX1BPU0lUSU9O
X0JFRk9SRV9HQU1NQSA/DQo+ICsJCSZjcnRjX3N0YXRlLT5ody5nYW1tYV9sdXQgOiAmY3J0Y19z
dGF0ZS0+aHcuZGVnYW1tYV9sdXQ7DQo+ICsNCj4gKwlpZiAoIWNydGNfc3RhdGUtPmdhbW1hX2Vu
YWJsZSkNCj4gKwkJcmV0dXJuOw0KPiArDQo+ICsJc3dpdGNoIChjcnRjX3N0YXRlLT5nYW1tYV9t
b2RlKSB7DQo+ICsJY2FzZSBHQU1NQV9NT0RFX01PREVfOEJJVDoNCj4gKwkJKmJsb2IgPSBpbGtf
cmVhZF9sdXRfOChjcnRjKTsNCj4gKwkJYnJlYWs7DQo+ICsJY2FzZSBHQU1NQV9NT0RFX01PREVf
U1BMSVQ6DQo+ICsJCS8qIEZJWE1FICovDQo+ICsJCWJyZWFrOw0KPiArCWNhc2UgR0FNTUFfTU9E
RV9NT0RFXzEwQklUOg0KPiArCQkqYmxvYiA9IGJkd19yZWFkX2x1dF8xMChjcnRjLCBQQUxfUFJF
Q19JTkRFWF9WQUxVRSgwKSk7DQo+ICsJCWJyZWFrOw0KPiArCWRlZmF1bHQ6DQo+ICsJCU1JU1NJ
TkdfQ0FTRShjcnRjX3N0YXRlLT5nYW1tYV9tb2RlKTsNCj4gKwkJYnJlYWs7DQo+ICsJfQ0KPiAr
fQ0KPiArDQo+ICBzdGF0aWMgc3RydWN0IGRybV9wcm9wZXJ0eV9ibG9iICpnbGtfcmVhZF9kZWdh
bW1hX2x1dChzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YykNCj4gew0KPiAgCXN0cnVjdCBkcm1faTkx
NV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoY3J0Yy0+YmFzZS5kZXYpOyBAQCAtMjE1NCw2
DQo+ICsyMTgwLDcgQEAgdm9pZCBpbnRlbF9jb2xvcl9pbml0KHN0cnVjdCBpbnRlbF9jcnRjICpj
cnRjKQ0KPiAgCQkJZGV2X3ByaXYtPmRpc3BsYXkucmVhZF9sdXRzID0gZ2xrX3JlYWRfbHV0czsN
Cj4gIAkJfSBlbHNlIGlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDgpIHsNCj4gIAkJCWRldl9w
cml2LT5kaXNwbGF5LmxvYWRfbHV0cyA9IGJkd19sb2FkX2x1dHM7DQo+ICsJCQlkZXZfcHJpdi0+
ZGlzcGxheS5yZWFkX2x1dHMgPSBiZHdfcmVhZF9sdXRzOw0KPiAgCQl9IGVsc2UgaWYgKElOVEVM
X0dFTihkZXZfcHJpdikgPj0gNykgew0KPiAgCQkJZGV2X3ByaXYtPmRpc3BsYXkubG9hZF9sdXRz
ID0gaXZiX2xvYWRfbHV0czsNCj4gIAkJfSBlbHNlIHsNCj4gLS0NCj4gMi4yNi4yDQo+IA0KPiBf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KPiBJbnRlbC1n
ZnggbWFpbGluZyBsaXN0DQo+IEludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngNCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
