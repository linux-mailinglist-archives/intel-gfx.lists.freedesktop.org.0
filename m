Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D9DC826E713
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Sep 2020 23:06:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D9B346E3B7;
	Thu, 17 Sep 2020 21:06:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7EE686E3B7
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Sep 2020 21:06:11 +0000 (UTC)
IronPort-SDR: zNwwdwfAZoQ3N+VudTWzFJKTaqYKXxp4+88ItSG9zW5vWgjXQpXVhNKh4S9dWWFIWUlOqmZN98
 MQTwg+J0210w==
X-IronPort-AV: E=McAfee;i="6000,8403,9747"; a="244625588"
X-IronPort-AV: E=Sophos;i="5.77,272,1596524400"; d="scan'208";a="244625588"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2020 14:06:07 -0700
IronPort-SDR: tw47UzNvcIDwOTAHK31IP+m4G8/7fYYOSF4V1uoCnMSbf6hADu8bwZ/hqjy1yaBkpdwTQLwK0V
 O7bmZ5iqlF4w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,272,1596524400"; d="scan'208";a="287724880"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga007.fm.intel.com with ESMTP; 17 Sep 2020 14:06:07 -0700
Received: from bgsmsx603.gar.corp.intel.com (10.109.78.82) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 17 Sep 2020 13:46:57 -0700
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 BGSMSX603.gar.corp.intel.com (10.109.78.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 18 Sep 2020 02:16:55 +0530
Received: from bgsmsx604.gar.corp.intel.com ([10.67.234.6]) by
 BGSMSX604.gar.corp.intel.com ([10.67.234.6]) with mapi id 15.01.1713.004;
 Fri, 18 Sep 2020 02:16:55 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 13/20] drm/i915: Add gamma/degamm readout for
 ivb/hsw
Thread-Index: AQHWXH9ILH/EO7b4jUOk1ogDXByzEKltrgaw
Date: Thu, 17 Sep 2020 20:46:55 +0000
Message-ID: <ccb406801517436e92d59d1ff496af13@intel.com>
References: <20200717211345.26851-1-ville.syrjala@linux.intel.com>
 <20200717211345.26851-14-ville.syrjala@linux.intel.com>
In-Reply-To: <20200717211345.26851-14-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
x-originating-ip: [10.223.10.1]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 13/20] drm/i915: Add gamma/degamm readout
 for ivb/hsw
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
W1BBVENIIDEzLzIwXSBkcm0vaTkxNTogQWRkIGdhbW1hL2RlZ2FtbSByZWFkb3V0IGZvcg0KDQpU
eXBvIGluIGRlZ2FtbWEuDQpXaXRoIHRoaXMgZml4ZWQsDQpSZXZpZXdlZC1ieTogVW1hIFNoYW5r
YXIgPHVtYS5zaGFua2FyQGludGVsLmNvbT4NCg0KPiBpdmIvaHN3DQo+IA0KPiBGcm9tOiBWaWxs
ZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiANCj4gV2Ugbm93
IGhhdmUgYWxsIHRoZSBjb2RlIG5lY2Vzc2FyeSBmb3IgZ2FtbWEvZGVnYW1tYSByZWFkb3V0IG9u
IGl2Yi9oc3cuDQo+IFBsdWcgaXQgYWxsIGluLg0KPiANCj4gU2lnbmVkLW9mZi1ieTogVmlsbGUg
U3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NvbG9yLmMgfCAzMiArKysrKysrKysrKysr
KysrKysrKysrDQo+ICAxIGZpbGUgY2hhbmdlZCwgMzIgaW5zZXJ0aW9ucygrKQ0KPiANCj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY29sb3IuYw0KPiBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY29sb3IuYw0KPiBpbmRleCA5ZjAx
ZmIzMTZlZmEuLjg4NmYzZjBkODczYSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9jb2xvci5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfY29sb3IuYw0KPiBAQCAtMTk5OSw2ICsxOTk5LDM3IEBAIHN0YXRpYyBzdHJ1
Y3QgZHJtX3Byb3BlcnR5X2Jsb2INCj4gKml2Yl9yZWFkX2x1dF8xMChzdHJ1Y3QgaW50ZWxfY3J0
YyAqY3J0YywNCj4gIAlyZXR1cm4gYmxvYjsNCj4gIH0NCj4gDQo+ICtzdGF0aWMgdm9pZCBpdmJf
cmVhZF9sdXRzKHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKSB7DQo+ICsJc3Ry
dWN0IGludGVsX2NydGMgKmNydGMgPSB0b19pbnRlbF9jcnRjKGNydGNfc3RhdGUtPnVhcGkuY3J0
Yyk7DQo+ICsJc3RydWN0IGRybV9wcm9wZXJ0eV9ibG9iICoqYmxvYiA9DQo+ICsJCWNydGNfc3Rh
dGUtPmNzY19tb2RlICYgQ1NDX1BPU0lUSU9OX0JFRk9SRV9HQU1NQSA/DQo+ICsJCSZjcnRjX3N0
YXRlLT5ody5nYW1tYV9sdXQgOiAmY3J0Y19zdGF0ZS0+aHcuZGVnYW1tYV9sdXQ7DQo+ICsNCj4g
KwlpZiAoIWNydGNfc3RhdGUtPmdhbW1hX2VuYWJsZSkNCj4gKwkJcmV0dXJuOw0KPiArDQo+ICsJ
c3dpdGNoIChjcnRjX3N0YXRlLT5nYW1tYV9tb2RlKSB7DQo+ICsJY2FzZSBHQU1NQV9NT0RFX01P
REVfOEJJVDoNCj4gKwkJKmJsb2IgPSBpbGtfcmVhZF9sdXRfOChjcnRjKTsNCj4gKwkJYnJlYWs7
DQo+ICsJY2FzZSBHQU1NQV9NT0RFX01PREVfU1BMSVQ6DQo+ICsJCWNydGNfc3RhdGUtPmh3LmRl
Z2FtbWFfbHV0ID0NCj4gKwkJCWl2Yl9yZWFkX2x1dF8xMChjcnRjLCBQQUxfUFJFQ19TUExJVF9N
T0RFIHwNCj4gKwkJCQkJUEFMX1BSRUNfSU5ERVhfVkFMVUUoMCkpOw0KPiArCQljcnRjX3N0YXRl
LT5ody5nYW1tYV9sdXQgPQ0KPiArCQkJaXZiX3JlYWRfbHV0XzEwKGNydGMsIFBBTF9QUkVDX1NQ
TElUX01PREUgfA0KPiArCQkJCQlQQUxfUFJFQ19JTkRFWF9WQUxVRSg1MTIpKTsNCj4gKwkJYnJl
YWs7DQo+ICsJY2FzZSBHQU1NQV9NT0RFX01PREVfMTBCSVQ6DQo+ICsJCSpibG9iID0gaXZiX3Jl
YWRfbHV0XzEwKGNydGMsIFBBTF9QUkVDX0lOREVYX1ZBTFVFKDApKTsNCj4gKwkJYnJlYWs7DQo+
ICsJZGVmYXVsdDoNCj4gKwkJTUlTU0lOR19DQVNFKGNydGNfc3RhdGUtPmdhbW1hX21vZGUpOw0K
PiArCQlicmVhazsNCj4gKwl9DQo+ICt9DQo+ICsNCj4gIC8qIE9uIEJEVysgdGhlIGluZGV4IGF1
dG8gaW5jcmVtZW50IG1vZGUgYWN0dWFsbHkgd29ya3MgKi8gIHN0YXRpYyBzdHJ1Y3QNCj4gZHJt
X3Byb3BlcnR5X2Jsb2IgKmJkd19yZWFkX2x1dF8xMChzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YywN
Cj4gIAkJCQkJCSB1MzIgcHJlY19pbmRleCkNCj4gQEAgLTIyMzYsNiArMjI2Nyw3IEBAIHZvaWQg
aW50ZWxfY29sb3JfaW5pdChzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YykNCj4gIAkJCWRldl9wcml2
LT5kaXNwbGF5LnJlYWRfbHV0cyA9IGJkd19yZWFkX2x1dHM7DQo+ICAJCX0gZWxzZSBpZiAoSU5U
RUxfR0VOKGRldl9wcml2KSA+PSA3KSB7DQo+ICAJCQlkZXZfcHJpdi0+ZGlzcGxheS5sb2FkX2x1
dHMgPSBpdmJfbG9hZF9sdXRzOw0KPiArCQkJZGV2X3ByaXYtPmRpc3BsYXkucmVhZF9sdXRzID0g
aXZiX3JlYWRfbHV0czsNCj4gIAkJfSBlbHNlIHsNCj4gIAkJCWRldl9wcml2LT5kaXNwbGF5Lmxv
YWRfbHV0cyA9IGlsa19sb2FkX2x1dHM7DQo+ICAJCQlkZXZfcHJpdi0+ZGlzcGxheS5yZWFkX2x1
dHMgPSBpbGtfcmVhZF9sdXRzOw0KPiAtLQ0KPiAyLjI2LjINCj4gDQo+IF9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQo+IEludGVsLWdmeCBtYWlsaW5nIGxp
c3QNCj4gSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA0KX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
