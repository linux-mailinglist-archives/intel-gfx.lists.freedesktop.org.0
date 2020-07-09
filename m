Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F73D21950E
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Jul 2020 02:27:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0AEE66E992;
	Thu,  9 Jul 2020 00:27:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 674D56E992
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Jul 2020 00:27:30 +0000 (UTC)
IronPort-SDR: a8FmlWuB1s5Fk/RnpAQYhNSM+LaKWplQbZAJM0cshsXNpF14rXS6Gf9C1V/620qy35wmiWCWD4
 FOJt5UzGZD2g==
X-IronPort-AV: E=McAfee;i="6000,8403,9676"; a="127988976"
X-IronPort-AV: E=Sophos;i="5.75,329,1589266800"; d="scan'208";a="127988976"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2020 17:27:29 -0700
IronPort-SDR: y4n3Jw/wbY5n46UwqKTnfzS7l7EZqTS5+YeGXXYTGBAPE6llsOSuhOHxainnp5Ih+I0AW9CWsa
 cB+vNrZn7t2w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,329,1589266800"; d="scan'208";a="297887961"
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
 by orsmga002.jf.intel.com with ESMTP; 08 Jul 2020 17:27:29 -0700
Received: from fmsmsx152.amr.corp.intel.com (10.18.125.5) by
 FMSMSX103.amr.corp.intel.com (10.18.124.201) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 8 Jul 2020 17:27:29 -0700
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.171]) by
 FMSMSX152.amr.corp.intel.com ([169.254.6.60]) with mapi id 14.03.0439.000;
 Wed, 8 Jul 2020 17:27:29 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 4/4] drm/i915: Document FBC related w/as
 more thoroughly
Thread-Index: AQHWVSl5qMrAQ27PM0mp82uMxTou+qj+2viA
Date: Thu, 9 Jul 2020 00:27:28 +0000
Message-ID: <f79ebf7b6732a4c73c968b277707fd1bb55336d2.camel@intel.com>
References: <20200708131223.9519-1-ville.syrjala@linux.intel.com>
 <20200708131223.9519-4-ville.syrjala@linux.intel.com>
In-Reply-To: <20200708131223.9519-4-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.14.51]
Content-ID: <DB9B848895DA104D855E267EC992F7BB@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 4/4] drm/i915: Document FBC related w/as
 more thoroughly
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
PiANCj4gUGltcCB0aGUgY29tbWVudHMgZm9yIHRoZSBGQkMgcmVsYXRlZCB3b3JrYXJvdW5kcy4N
Cj4gDQoNClJldmlld2VkLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGlu
dGVsLmNvbT4NCg0KPiBTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmph
bGFAbGludXguaW50ZWwuY29tPg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVs
X3BtLmMgfCA1NSArKysrKysrKysrKysrKysrKysrKysrKysrKy0tLS0tLS0NCj4gIDEgZmlsZSBj
aGFuZ2VkLCA0NCBpbnNlcnRpb25zKCspLCAxMSBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaW50ZWxfcG0uYw0KPiBpbmRleCA3Yjk4ZDBlYjg1OTcuLmRhMWQzYWMwOWFlNCAxMDA2NDQN
Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYw0KPiArKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jDQo+IEBAIC05NCw3ICs5NCwxMCBAQCBzdGF0aWMgdm9p
ZCBnZW45X2luaXRfY2xvY2tfZ2F0aW5nKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJp
dikNCj4gIAlJOTE1X1dSSVRFKEdFTjhfQ0hJQ0tFTl9EQ1BSXzEsDQo+ICAJCSAgIEk5MTVfUkVB
RChHRU44X0NISUNLRU5fRENQUl8xKSB8IE1BU0tfV0FLRU1FTSk7DQo+ICANCj4gLQkvKiBXYUZi
Y1dha2VNZW1Pbjpza2wsYnh0LGtibCxnbGssY2ZsICovDQo+ICsJLyoNCj4gKwkgKiBXYUZiY1dh
a2VNZW1Pbjpza2wsYnh0LGtibCxnbGssY2ZsDQo+ICsJICogRGlzcGxheSBXQSAjMDg1OTogc2ts
LGJ4dCxrYmwsZ2xrLGNmbA0KPiArCSAqLw0KPiAgCUk5MTVfV1JJVEUoRElTUF9BUkJfQ1RMLCBJ
OTE1X1JFQUQoRElTUF9BUkJfQ1RMKSB8DQo+ICAJCSAgIERJU1BfRkJDX01FTU9SWV9XQUtFKTsN
Cj4gIA0KPiBAQCAtMTM1LDExICsxMzgsMTcgQEAgc3RhdGljIHZvaWQgYnh0X2luaXRfY2xvY2tf
Z2F0aW5nKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikNCj4gIAkgKi8NCj4gIAlJ
OTE1X1dSSVRFKFJNX1RJTUVPVVQsIE1NSU9fVElNRU9VVF9VUyg5NTApKTsNCj4gIA0KPiAtCS8q
IFdhRmJjVHVybk9mZkZiY1dhdGVybWFyazpieHQgKi8NCj4gKwkvKg0KPiArCSAqIFdhRmJjVHVy
bk9mZkZiY1dhdGVybWFyazpieHQNCj4gKwkgKiBEaXNwbGF5IFdBICMwNTYyOiBieHQNCj4gKwkg
Ki8NCj4gIAlJOTE1X1dSSVRFKERJU1BfQVJCX0NUTCwgSTkxNV9SRUFEKERJU1BfQVJCX0NUTCkg
fA0KPiAgCQkgICBESVNQX0ZCQ19XTV9ESVMpOw0KPiAgDQo+IC0JLyogV2FGYmNIaWdoTWVtQndD
b3JydXB0aW9uQXZvaWRhbmNlOmJ4dCAqLw0KPiArCS8qDQo+ICsJICogV2FGYmNIaWdoTWVtQndD
b3JydXB0aW9uQXZvaWRhbmNlOmJ4dA0KPiArCSAqIERpc3BsYXkgV0EgIzA4ODM6IGJ4dA0KPiAr
CSAqLw0KPiAgCUk5MTVfV1JJVEUoSUxLX0RQRkNfQ0hJQ0tFTiwgSTkxNV9SRUFEKElMS19EUEZD
X0NISUNLRU4pIHwNCj4gIAkJICAgSUxLX0RQRkNfRElTQUJMRV9EVU1NWTApOw0KPiAgfQ0KPiBA
QCAtNzE2NSw3ICs3MTc0LDEwIEBAIHN0YXRpYyB2b2lkIGNubF9pbml0X2Nsb2NrX2dhdGluZyhz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpDQo+ICAJSTkxNV9XUklURShHRU44X0NI
SUNLRU5fRENQUl8xLA0KPiAgCQkgICBJOTE1X1JFQUQoR0VOOF9DSElDS0VOX0RDUFJfMSkgfCBN
QVNLX1dBS0VNRU0pOw0KPiAgDQo+IC0JLyogV2FGYmNXYWtlTWVtT246Y25sICovDQo+ICsJLyoN
Cj4gKwkgKiBXYUZiY1dha2VNZW1PbjpjbmwNCj4gKwkgKiBEaXNwbGF5IFdBICMwODU5OiBjbmwN
Cj4gKwkgKi8NCj4gIAlJOTE1X1dSSVRFKERJU1BfQVJCX0NUTCwgSTkxNV9SRUFEKERJU1BfQVJC
X0NUTCkgfA0KPiAgCQkgICBESVNQX0ZCQ19NRU1PUllfV0FLRSk7DQo+ICANCj4gQEAgLTcxOTEs
MTEgKzcyMDMsMTcgQEAgc3RhdGljIHZvaWQgY2ZsX2luaXRfY2xvY2tfZ2F0aW5nKHN0cnVjdCBk
cm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikNCj4gIAljbnBfaW5pdF9jbG9ja19nYXRpbmcoZGV2
X3ByaXYpOw0KPiAgCWdlbjlfaW5pdF9jbG9ja19nYXRpbmcoZGV2X3ByaXYpOw0KPiAgDQo+IC0J
LyogV2FGYmNUdXJuT2ZmRmJjV2F0ZXJtYXJrOmNmbCAqLw0KPiArCS8qDQo+ICsJICogV2FGYmNU
dXJuT2ZmRmJjV2F0ZXJtYXJrOmNmbA0KPiArCSAqIERpc3BsYXkgV0EgIzA1NjI6IGNmbA0KPiAr
CSAqLw0KPiAgCUk5MTVfV1JJVEUoRElTUF9BUkJfQ1RMLCBJOTE1X1JFQUQoRElTUF9BUkJfQ1RM
KSB8DQo+ICAJCSAgIERJU1BfRkJDX1dNX0RJUyk7DQo+ICANCj4gLQkvKiBXYUZiY051a2VPbkhv
c3RNb2RpZnk6Y2ZsICovDQo+ICsJLyoNCj4gKwkgKiBXYUZiY051a2VPbkhvc3RNb2RpZnk6Y2Zs
DQo+ICsJICogRGlzcGxheSBXQSAjMDg3MzogY2ZsDQo+ICsJICovDQo+ICAJSTkxNV9XUklURShJ
TEtfRFBGQ19DSElDS0VOLCBJOTE1X1JFQUQoSUxLX0RQRkNfQ0hJQ0tFTikgfA0KPiAgCQkgICBJ
TEtfRFBGQ19OVUtFX09OX0FOWV9NT0RJRklDQVRJT04pOw0KPiAgfQ0KPiBAQCAtNzIxNCwxMSAr
NzIzMiwxNyBAQCBzdGF0aWMgdm9pZCBrYmxfaW5pdF9jbG9ja19nYXRpbmcoc3RydWN0IGRybV9p
OTE1X3ByaXZhdGUgKmRldl9wcml2KQ0KPiAgCQlJOTE1X1dSSVRFKEdFTjZfVUNHQ1RMMSwgSTkx
NV9SRUFEKEdFTjZfVUNHQ1RMMSkgfA0KPiAgCQkJICAgR0VONl9HQU1VTklUX0NMT0NLX0dBVEVf
RElTQUJMRSk7DQo+ICANCj4gLQkvKiBXYUZiY1R1cm5PZmZGYmNXYXRlcm1hcms6a2JsICovDQo+
ICsJLyoNCj4gKwkgKiBXYUZiY1R1cm5PZmZGYmNXYXRlcm1hcms6a2JsDQo+ICsJICogRGlzcGxh
eSBXQSAjMDU2Mjoga2JsDQo+ICsJICovDQo+ICAJSTkxNV9XUklURShESVNQX0FSQl9DVEwsIEk5
MTVfUkVBRChESVNQX0FSQl9DVEwpIHwNCj4gIAkJICAgRElTUF9GQkNfV01fRElTKTsNCj4gIA0K
PiAtCS8qIFdhRmJjTnVrZU9uSG9zdE1vZGlmeTprYmwgKi8NCj4gKwkvKg0KPiArCSAqIFdhRmJj
TnVrZU9uSG9zdE1vZGlmeTprYmwNCj4gKwkgKiBEaXNwbGF5IFdBICMwODczOiBrYmwNCj4gKwkg
Ki8NCj4gIAlJOTE1X1dSSVRFKElMS19EUEZDX0NISUNLRU4sIEk5MTVfUkVBRChJTEtfRFBGQ19D
SElDS0VOKSB8DQo+ICAJCSAgIElMS19EUEZDX05VS0VfT05fQU5ZX01PRElGSUNBVElPTik7DQo+
ICB9DQo+IEBAIC03MjMxLDE1ICs3MjU1LDI0IEBAIHN0YXRpYyB2b2lkIHNrbF9pbml0X2Nsb2Nr
X2dhdGluZyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpDQo+ICAJSTkxNV9XUklU
RShGQkNfTExDX1JFQURfQ1RSTCwgSTkxNV9SRUFEKEZCQ19MTENfUkVBRF9DVFJMKSB8DQo+ICAJ
CSAgIEZCQ19MTENfRlVMTFlfT1BFTik7DQo+ICANCj4gLQkvKiBXYUZiY1R1cm5PZmZGYmNXYXRl
cm1hcms6c2tsICovDQo+ICsJLyoNCj4gKwkgKiBXYUZiY1R1cm5PZmZGYmNXYXRlcm1hcms6c2ts
DQo+ICsJICogRGlzcGxheSBXQSAjMDU2Mjogc2tsDQo+ICsJICovDQo+ICAJSTkxNV9XUklURShE
SVNQX0FSQl9DVEwsIEk5MTVfUkVBRChESVNQX0FSQl9DVEwpIHwNCj4gIAkJICAgRElTUF9GQkNf
V01fRElTKTsNCj4gIA0KPiAtCS8qIFdhRmJjTnVrZU9uSG9zdE1vZGlmeTpza2wgKi8NCj4gKwkv
Kg0KPiArCSAqIFdhRmJjTnVrZU9uSG9zdE1vZGlmeTpza2wNCj4gKwkgKiBEaXNwbGF5IFdBICMw
ODczOiBza2wNCj4gKwkgKi8NCj4gIAlJOTE1X1dSSVRFKElMS19EUEZDX0NISUNLRU4sIEk5MTVf
UkVBRChJTEtfRFBGQ19DSElDS0VOKSB8DQo+ICAJCSAgIElMS19EUEZDX05VS0VfT05fQU5ZX01P
RElGSUNBVElPTik7DQo+ICANCj4gLQkvKiBXYUZiY0hpZ2hNZW1Cd0NvcnJ1cHRpb25Bdm9pZGFu
Y2U6c2tsICovDQo+ICsJLyoNCj4gKwkgKiBXYUZiY0hpZ2hNZW1Cd0NvcnJ1cHRpb25Bdm9pZGFu
Y2U6c2tsDQo+ICsJICogRGlzcGxheSBXQSAjMDg4Mzogc2tsDQo+ICsJICovDQo+ICAJSTkxNV9X
UklURShJTEtfRFBGQ19DSElDS0VOLCBJOTE1X1JFQUQoSUxLX0RQRkNfQ0hJQ0tFTikgfA0KPiAg
CQkgICBJTEtfRFBGQ19ESVNBQkxFX0RVTU1ZMCk7DQo+ICB9DQpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
