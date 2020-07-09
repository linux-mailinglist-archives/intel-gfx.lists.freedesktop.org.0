Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5603C2194EC
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Jul 2020 02:19:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 64E256E3C1;
	Thu,  9 Jul 2020 00:19:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 89B836E3C1
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Jul 2020 00:19:09 +0000 (UTC)
IronPort-SDR: F2DwGz+/5MvZU9ueEAzOe0SRC5fZrEHUQVeq/c9jKQWMUBmyC8/WwphFcuqbQCI4URst5Rc40V
 3hMp542PnjCg==
X-IronPort-AV: E=McAfee;i="6000,8403,9676"; a="136150867"
X-IronPort-AV: E=Sophos;i="5.75,329,1589266800"; d="scan'208";a="136150867"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2020 17:19:08 -0700
IronPort-SDR: 4ITxELA6d8hlVYell58iRWg1r5XaLjK8W9X60oXeKfIgMlZKM63Llgejw64JiJzJRydp4fM6Dc
 me0V1eofsuGQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,329,1589266800"; d="scan'208";a="268607123"
Received: from fmsmsx107.amr.corp.intel.com ([10.18.124.205])
 by fmsmga008.fm.intel.com with ESMTP; 08 Jul 2020 17:19:08 -0700
Received: from fmsmsx122.amr.corp.intel.com (10.18.125.37) by
 fmsmsx107.amr.corp.intel.com (10.18.124.205) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 8 Jul 2020 17:19:08 -0700
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.171]) by
 fmsmsx122.amr.corp.intel.com ([169.254.5.87]) with mapi id 14.03.0439.000;
 Wed, 8 Jul 2020 17:19:08 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 2/4] drm/i915: Don't do
 WaFbcTurnOffFbcWatermark for glk
Thread-Index: AQHWVSl1RbdkUOh0c02d9cZ099OLa6j+2KMA
Date: Thu, 9 Jul 2020 00:19:07 +0000
Message-ID: <5493d75083c104576c360dbba02f44f3a9d37479.camel@intel.com>
References: <20200708131223.9519-1-ville.syrjala@linux.intel.com>
 <20200708131223.9519-2-ville.syrjala@linux.intel.com>
In-Reply-To: <20200708131223.9519-2-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.14.51]
Content-ID: <7F79F4D9F2649C47B8ADE361B7C4A1B7@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 2/4] drm/i915: Don't do
 WaFbcTurnOffFbcWatermark for glk
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

T24gV2VkLCAyMDIwLTA3LTA4IGF0IDE2OjEyICswMzAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOg0K
PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiANCj4gR0xLIHN1cHBvc2VkbHkgZG9lcyBub3QgbmVlZCBXYUZiY1R1cm5PZmZGYmNXYXRlcm1h
cmssDQo+IHNvIGxldCdzIG5vdCBhcHBseSBpdC4NCg0KV0EgMDU2MiBmcm9tIEJTcGVjIDIxNjY0
IHNheXMgaXQgYXBwbGllcyB0byBhbGwgR0VOOSBidXQgaXQgaXMgcHJvYmFibHkgcmVmZXJyaW5n
IHRvIGFsbCBkaXNwbGF5IEdFTjkuDQoNClJldmlld2VkLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNv
dXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4NCg0KPiANCj4gU2lnbmVkLW9mZi1ieTogVmlsbGUg
U3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jIHwgMTggKysrKysrKysrKysrKysrKy0tDQo+ICAx
IGZpbGUgY2hhbmdlZCwgMTYgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkNCj4gDQo+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaW50ZWxfcG0uYw0KPiBpbmRleCA2M2QxYTQ4ODI3MjcuLjg3NjBlMWJhMWVlZSAx
MDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYw0KPiArKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jDQo+IEBAIC05NCwxMCArOTQsOCBAQCBzdGF0
aWMgdm9pZCBnZW45X2luaXRfY2xvY2tfZ2F0aW5nKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpk
ZXZfcHJpdikNCj4gIAlJOTE1X1dSSVRFKEdFTjhfQ0hJQ0tFTl9EQ1BSXzEsDQo+ICAJCSAgIEk5
MTVfUkVBRChHRU44X0NISUNLRU5fRENQUl8xKSB8IE1BU0tfV0FLRU1FTSk7DQo+ICANCj4gLQkv
KiBXYUZiY1R1cm5PZmZGYmNXYXRlcm1hcms6c2tsLGJ4dCxrYmwsY2ZsICovDQo+ICAJLyogV2FG
YmNXYWtlTWVtT246c2tsLGJ4dCxrYmwsZ2xrLGNmbCAqLw0KPiAgCUk5MTVfV1JJVEUoRElTUF9B
UkJfQ1RMLCBJOTE1X1JFQUQoRElTUF9BUkJfQ1RMKSB8DQo+IC0JCSAgIERJU1BfRkJDX1dNX0RJ
UyB8DQo+ICAJCSAgIERJU1BfRkJDX01FTU9SWV9XQUtFKTsNCj4gIA0KPiAgCS8qIFdhRmJjSGln
aE1lbUJ3Q29ycnVwdGlvbkF2b2lkYW5jZTpza2wsYnh0LGtibCxjZmwgKi8NCj4gQEAgLTE0MCw2
ICsxMzgsMTAgQEAgc3RhdGljIHZvaWQgYnh0X2luaXRfY2xvY2tfZ2F0aW5nKHN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlICpkZXZfcHJpdikNCj4gIAkgKiBhcHBsaWNhdGlvbiwgdXNpbmcgYmF0Y2gg
YnVmZmVycyBvciBhbnkgb3RoZXIgbWVhbnMuDQo+ICAJICovDQo+ICAJSTkxNV9XUklURShSTV9U
SU1FT1VULCBNTUlPX1RJTUVPVVRfVVMoOTUwKSk7DQo+ICsNCj4gKwkvKiBXYUZiY1R1cm5PZmZG
YmNXYXRlcm1hcms6Ynh0ICovDQo+ICsJSTkxNV9XUklURShESVNQX0FSQl9DVEwsIEk5MTVfUkVB
RChESVNQX0FSQl9DVEwpIHwNCj4gKwkJICAgRElTUF9GQkNfV01fRElTKTsNCj4gIH0NCj4gIA0K
PiAgc3RhdGljIHZvaWQgZ2xrX2luaXRfY2xvY2tfZ2F0aW5nKHN0cnVjdCBkcm1faTkxNV9wcml2
YXRlICpkZXZfcHJpdikNCj4gQEAgLTcxODksNiArNzE5MSwxMCBAQCBzdGF0aWMgdm9pZCBjZmxf
aW5pdF9jbG9ja19nYXRpbmcoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQ0KPiAg
CWNucF9pbml0X2Nsb2NrX2dhdGluZyhkZXZfcHJpdik7DQo+ICAJZ2VuOV9pbml0X2Nsb2NrX2dh
dGluZyhkZXZfcHJpdik7DQo+ICANCj4gKwkvKiBXYUZiY1R1cm5PZmZGYmNXYXRlcm1hcms6Y2Zs
ICovDQo+ICsJSTkxNV9XUklURShESVNQX0FSQl9DVEwsIEk5MTVfUkVBRChESVNQX0FSQl9DVEwp
IHwNCj4gKwkJICAgRElTUF9GQkNfV01fRElTKTsNCj4gKw0KPiAgCS8qIFdhRmJjTnVrZU9uSG9z
dE1vZGlmeTpjZmwgKi8NCj4gIAlJOTE1X1dSSVRFKElMS19EUEZDX0NISUNLRU4sIEk5MTVfUkVB
RChJTEtfRFBGQ19DSElDS0VOKSB8DQo+ICAJCSAgIElMS19EUEZDX05VS0VfT05fQU5ZX01PRElG
SUNBVElPTik7DQo+IEBAIC03MjA4LDYgKzcyMTQsMTAgQEAgc3RhdGljIHZvaWQga2JsX2luaXRf
Y2xvY2tfZ2F0aW5nKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikNCj4gIAkJSTkx
NV9XUklURShHRU42X1VDR0NUTDEsIEk5MTVfUkVBRChHRU42X1VDR0NUTDEpIHwNCj4gIAkJCSAg
IEdFTjZfR0FNVU5JVF9DTE9DS19HQVRFX0RJU0FCTEUpOw0KPiAgDQo+ICsJLyogV2FGYmNUdXJu
T2ZmRmJjV2F0ZXJtYXJrOmtibCAqLw0KPiArCUk5MTVfV1JJVEUoRElTUF9BUkJfQ1RMLCBJOTE1
X1JFQUQoRElTUF9BUkJfQ1RMKSB8DQo+ICsJCSAgIERJU1BfRkJDX1dNX0RJUyk7DQo+ICsNCj4g
IAkvKiBXYUZiY051a2VPbkhvc3RNb2RpZnk6a2JsICovDQo+ICAJSTkxNV9XUklURShJTEtfRFBG
Q19DSElDS0VOLCBJOTE1X1JFQUQoSUxLX0RQRkNfQ0hJQ0tFTikgfA0KPiAgCQkgICBJTEtfRFBG
Q19OVUtFX09OX0FOWV9NT0RJRklDQVRJT04pOw0KPiBAQCAtNzIyMSw2ICs3MjMxLDEwIEBAIHN0
YXRpYyB2b2lkIHNrbF9pbml0X2Nsb2NrX2dhdGluZyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAq
ZGV2X3ByaXYpDQo+ICAJSTkxNV9XUklURShGQkNfTExDX1JFQURfQ1RSTCwgSTkxNV9SRUFEKEZC
Q19MTENfUkVBRF9DVFJMKSB8DQo+ICAJCSAgIEZCQ19MTENfRlVMTFlfT1BFTik7DQo+ICANCj4g
KwkvKiBXYUZiY1R1cm5PZmZGYmNXYXRlcm1hcms6c2tsICovDQo+ICsJSTkxNV9XUklURShESVNQ
X0FSQl9DVEwsIEk5MTVfUkVBRChESVNQX0FSQl9DVEwpIHwNCj4gKwkJICAgRElTUF9GQkNfV01f
RElTKTsNCj4gKw0KPiAgCS8qIFdhRmJjTnVrZU9uSG9zdE1vZGlmeTpza2wgKi8NCj4gIAlJOTE1
X1dSSVRFKElMS19EUEZDX0NISUNLRU4sIEk5MTVfUkVBRChJTEtfRFBGQ19DSElDS0VOKSB8DQo+
ICAJCSAgIElMS19EUEZDX05VS0VfT05fQU5ZX01PRElGSUNBVElPTik7DQpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
