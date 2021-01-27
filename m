Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 744C330613C
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Jan 2021 17:48:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4719E6E857;
	Wed, 27 Jan 2021 16:48:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CB9C86E857
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Jan 2021 16:48:36 +0000 (UTC)
IronPort-SDR: VAmXgFmREgHxS9i51XoQECxDzOT2eyYwb79j73cu2090rPdlZBA/XwS8WqFsjGphbGt8tVINhV
 Zl4+KGVYji/g==
X-IronPort-AV: E=McAfee;i="6000,8403,9877"; a="244174317"
X-IronPort-AV: E=Sophos;i="5.79,380,1602572400"; d="scan'208";a="244174317"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2021 08:48:35 -0800
IronPort-SDR: WqTkQTsAANWPMQgOQs5ig/l5FA2VaqgPG3/u+dEHM//Erwvn3iYSelQcq6YVyekYd127xnHTv7
 ORF6BJIHmVOA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,380,1602572400"; d="scan'208";a="573323692"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by orsmga005.jf.intel.com with ESMTP; 27 Jan 2021 08:48:35 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Wed, 27 Jan 2021 08:48:35 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 27 Jan 2021 08:48:34 -0800
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.1713.004;
 Wed, 27 Jan 2021 08:48:34 -0800
From: "Souza, Jose" <jose.souza@intel.com>
To: "Swarup, Aditya" <aditya.swarup@intel.com>, "De Marchi, Lucas"
 <lucas.demarchi@intel.com>
Thread-Topic: [Intel-gfx] [PATCH 2/9] drm/i915/adl_s: MCHBAR memory info
 registers are moved
Thread-Index: AQHW9GK7fhPzRvS2IkuPDa91zTTz+Ko8GZ2AgAAcmIA=
Date: Wed, 27 Jan 2021 16:48:34 +0000
Message-ID: <df70fa3d1af8bf8479b7baedf6b904d8ad59ff9b.camel@intel.com>
References: <20210127041159.136409-1-aditya.swarup@intel.com>
 <20210127041159.136409-3-aditya.swarup@intel.com>
 <20210127150733.ntbtt2vrhw5aqpxx@ldmartin-desk1>
In-Reply-To: <20210127150733.ntbtt2vrhw5aqpxx@ldmartin-desk1>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-ID: <AF344DDF747B56479C90608D144E3C57@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 2/9] drm/i915/adl_s: MCHBAR memory info
 registers are moved
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCAyMDIxLTAxLTI3IGF0IDA3OjA3IC0wODAwLCBMdWNhcyBEZSBNYXJjaGkgd3JvdGU6
DQo+IE9uIFR1ZSwgSmFuIDI2LCAyMDIxIGF0IDA4OjExOjUyUE0gLTA4MDAsIEFkaXR5YSBTd2Fy
dXAgd3JvdGU6DQo+ID4gRnJvbTogQ2F6IFlva295YW1hIDxjYXoueW9rb3lhbWFAaW50ZWwuY29t
Pg0KPiA+IA0KPiA+IFRoZSBjcndlYnZpZXcgaW5kaWNhdGVzIG9uIEFETC1TIHRoYXQgc29tZSBv
ZiBvdXIgTUNIQkFSDQo+ID4gcmVnaXN0ZXJzIGhhdmUgbW92ZWQgZnJvbSB0aGVpciB0cmFkaXRp
b25hbCAweDUwWFggb2Zmc2V0cyB0bw0KPiA+IG5ldyBsb2NhdGlvbnMuIFRoZSBtZWFuaW5nIGFu
ZCBiaXQgbGF5b3V0IG9mIHRoZSByZWdpc3RlcnMNCj4gPiByZW1haW4gc2FtZS4NCj4gPiANCj4g
PiB2MjogU2ltcGxpZnkgbG9naWMgdG8gYSBzaW5nbGUgaWYgZWxzZSBjaGFpbiBhbmQgZml4IGlu
ZGVudHMuKEx1Y2FzKQ0KPiA+IA0KPiA+IENjOiBMdWNhcyBEZSBNYXJjaGkgPGx1Y2FzLmRlbWFy
Y2hpQGludGVsLmNvbT4NCj4gPiBDYzogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNv
bT4NCj4gPiBDYzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNv
bT4NCj4gPiBDYzogSW1yZSBEZWFrIDxpbXJlLmRlYWtAaW50ZWwuY29tPg0KPiA+IENjOiBNYXR0
IFJvcGVyIDxtYXR0aGV3LmQucm9wZXJAaW50ZWwuY29tPg0KPiA+IFNpZ25lZC1vZmYtYnk6IENh
eiBZb2tveWFtYSA8Y2F6Lnlva295YW1hQGludGVsLmNvbT4NCj4gPiBTaWduZWQtb2ZmLWJ5OiBB
ZGl0eWEgU3dhcnVwIDxhZGl0eWEuc3dhcnVwQGludGVsLmNvbT4NCj4gPiAtLS0NCj4gPiBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oICAgfCAgNSArKysrKw0KPiA+IGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2ludGVsX2RyYW0uYyB8IDI0ICsrKysrKysrKysrKysrKysrKy0tLS0tLQ0KPiA+
IDIgZmlsZXMgY2hhbmdlZCwgMjMgaW5zZXJ0aW9ucygrKSwgNiBkZWxldGlvbnMoLSkNCj4gPiAN
Cj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgNCj4gPiBpbmRleCBhYTg3MjQ0NjMzN2IuLjMwMzE4
OTcyMzlhMCAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5o
DQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaA0KPiA+IEBAIC0xMDkx
Niw2ICsxMDkxNiw4IEBAIGVudW0gc2tsX3Bvd2VyX2dhdGUgew0KPiA+ICNkZWZpbmUgIFNLTF9E
UkFNX0REUl9UWVBFX0xQRERSMwkJKDIgPDwgMCkNCj4gPiAjZGVmaW5lICBTS0xfRFJBTV9ERFJf
VFlQRV9MUEREUjQJCSgzIDw8IDApDQo+ID4gDQo+ID4gKyNkZWZpbmUgQURMU19NQURfSU5URVJf
Q0hBTk5FTF8wXzBfMF9NQ0hCQVIgX01NSU8oTUNIQkFSX01JUlJPUl9CQVNFX1NOQiArIDB4NjA0
OCkNCj4gPiArDQo+ID4gI2RlZmluZSBTS0xfTUFEX0RJTU1fQ0gwXzBfMF8wX01DSEJBUl9NQ01B
SU4JX01NSU8oTUNIQkFSX01JUlJPUl9CQVNFX1NOQiArIDB4NTAwQykNCj4gPiAjZGVmaW5lIFNL
TF9NQURfRElNTV9DSDFfMF8wXzBfTUNIQkFSX01DTUFJTglfTU1JTyhNQ0hCQVJfTUlSUk9SX0JB
U0VfU05CICsgMHg1MDEwKQ0KPiA+ICNkZWZpbmUgIFNLTF9EUkFNX1NfU0hJRlQJCQkxNg0KPiA+
IEBAIC0xMDk0Myw2ICsxMDk0NSw5IEBAIGVudW0gc2tsX3Bvd2VyX2dhdGUgew0KPiA+ICNkZWZp
bmUgIENOTF9EUkFNX1JBTktfMwkJCSgweDIgPDwgOSkNCj4gPiAjZGVmaW5lICBDTkxfRFJBTV9S
QU5LXzQJCQkoMHgzIDw8IDkpDQo+ID4gDQo+ID4gKyNkZWZpbmUgQURMU19NQURfRElNTV9DSDBf
MF8wXzBfTUNIQkFSCQlfTU1JTyhNQ0hCQVJfTUlSUk9SX0JBU0VfU05CICsgMHg2MDU0KQ0KPiA+
ICsjZGVmaW5lIEFETFNfTUFEX0RJTU1fQ0gxXzBfMF8wX01DSEJBUgkJX01NSU8oTUNIQkFSX01J
UlJPUl9CQVNFX1NOQiArIDB4NjA1OCkNCj4gPiArDQo+ID4gLyoNCj4gPiDCoCogUGxlYXNlIHNl
ZSBoc3dfcmVhZF9kY29tcCgpIGFuZCBoc3dfd3JpdGVfZGNvbXAoKSBiZWZvcmUgdXNpbmcgdGhp
cyByZWdpc3RlciwNCj4gPiDCoCogc2luY2Ugb24gSFNXIHdlIGNhbid0IHdyaXRlIHRvIGl0IHVz
aW5nIGludGVsX3VuY29yZV93cml0ZS4NCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaW50ZWxfZHJhbS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZHJhbS5jDQo+
ID4gaW5kZXggNDc1NDI5NmEyNTBlLi44NGY4NGUxMTg1MzEgMTAwNjQ0DQo+ID4gLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZHJhbS5jDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaW50ZWxfZHJhbS5jDQo+ID4gQEAgLTE4MSwxNyArMTgxLDI0IEBAIHNrbF9kcmFtX2dl
dF9jaGFubmVsc19pbmZvKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQ0KPiA+IHsNCj4g
PiAJc3RydWN0IGRyYW1faW5mbyAqZHJhbV9pbmZvID0gJmk5MTUtPmRyYW1faW5mbzsNCj4gPiAJ
c3RydWN0IGRyYW1fY2hhbm5lbF9pbmZvIGNoMCA9IHt9LCBjaDEgPSB7fTsNCj4gPiArCWk5MTVf
cmVnX3QgY2gwX3JlZywgY2gxX3JlZzsNCj4gPiAJdTMyIHZhbDsNCj4gPiAJaW50IHJldDsNCj4g
PiANCj4gPiAtCXZhbCA9IGludGVsX3VuY29yZV9yZWFkKCZpOTE1LT51bmNvcmUsDQo+ID4gLQkJ
CQlTS0xfTUFEX0RJTU1fQ0gwXzBfMF8wX01DSEJBUl9NQ01BSU4pOw0KPiA+ICsJaWYgKElTX0FM
REVSTEFLRV9TKGk5MTUpKSB7DQo+ID4gKwkJY2gwX3JlZyA9IEFETFNfTUFEX0RJTU1fQ0gwXzBf
MF8wX01DSEJBUjsNCj4gPiArCQljaDFfcmVnID0gQURMU19NQURfRElNTV9DSDFfMF8wXzBfTUNI
QkFSOw0KPiA+ICsJfSBlbHNlIHsNCj4gPiArCQljaDBfcmVnID0gQURMU19NQURfRElNTV9DSDBf
MF8wXzBfTUNIQkFSOw0KPiA+ICsJCWNoMV9yZWcgPSBBRExTX01BRF9ESU1NX0NIMV8wXzBfMF9N
Q0hCQVI7DQo+IA0KPiBJIGNvbW1lbnRlZCBvbiB0aGUgd3JvbmcgdmVyc2lvbiBvZiB0aGUgcGF0
Y2gsIGJ1dCB0aGUgYnVnIGlzIHN0aWxsDQo+IGhlcmUuIEFuZCB0aGlzIHBhdGNoIGNvbmZsaWN0
IHdpdGggSm9zZSdzIHBhdGNoLg0KDQpZZXAsIGZvciBHRU4xMisgd2Ugc2hvdWxkIHVzZSBQQ09E
RSB0byByZWFkIERSQU0gaW5mb3JtYXRpb24uDQpMdWNhcyBsZWZ0IHNvbWUgY29tbWVudHMsIHdv
cmtpbmcgaW4gdGhlIGZpeGVzIGFuZCBzb29uIGFub3RoZXIgdmVyc2lvbiB3aWxsIGJlIHNlbmQu
DQpJdCBhbHJlYWR5IHRha2VzIGNhcmUgb2YgYWxsIEdFTjEyIHBsYXRmb3Jtcy4NCg0KaHR0cHM6
Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy84NjA5Mi8NCg0KPiANCj4gTHVjYXMg
RGUgTWFyY2hpDQo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fDQo+IEludGVsLWdmeCBtYWlsaW5nIGxpc3QNCj4gSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZw0KPiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeA0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
ZngK
