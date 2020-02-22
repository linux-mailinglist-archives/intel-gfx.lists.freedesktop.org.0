Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D1B6168B11
	for <lists+intel-gfx@lfdr.de>; Sat, 22 Feb 2020 01:36:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F39E06E4B0;
	Sat, 22 Feb 2020 00:36:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D5BAD6E4B0
 for <intel-gfx@lists.freedesktop.org>; Sat, 22 Feb 2020 00:36:55 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 Feb 2020 16:36:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,470,1574150400"; d="scan'208";a="349491324"
Received: from fmsmsx107.amr.corp.intel.com ([10.18.124.205])
 by fmsmga001.fm.intel.com with ESMTP; 21 Feb 2020 16:36:55 -0800
Received: from fmsmsx111.amr.corp.intel.com (10.18.116.5) by
 fmsmsx107.amr.corp.intel.com (10.18.124.205) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 21 Feb 2020 16:36:55 -0800
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.129]) by
 fmsmsx111.amr.corp.intel.com ([169.254.12.89]) with mapi id 14.03.0439.000;
 Fri, 21 Feb 2020 16:36:54 -0800
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "De
 Marchi, Lucas" <lucas.demarchi@intel.com>
Thread-Topic: [PATCH] drm/i915/tgl: Add Wa_1608008084
Thread-Index: AQHV6RcQEcUX28yrVUKqpOfKjh8y1qgm5H4A
Date: Sat, 22 Feb 2020 00:36:53 +0000
Message-ID: <4a1fc6a341c803943cd79c9a1961bd37ec5e5cb8.camel@intel.com>
References: <20200222002824.17103-1-lucas.demarchi@intel.com>
In-Reply-To: <20200222002824.17103-1-lucas.demarchi@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.14.221]
Content-ID: <62FF8E95172F0B4AA40087CA11D6BDD2@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/tgl: Add Wa_1608008084
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
Cc: "michel.thierry@intel.com" <michel.thierry@intel.com>,
 "ramlingam.c@intel.com" <ramlingam.c@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

KyBDQ2luZyBwZW9wbGUgaW52b2x2ZWQgaW4gdGhlIHBhdGNoIGZpeGVkLg0KDQpPbiBGcmksIDIw
MjAtMDItMjEgYXQgMTY6MjggLTA4MDAsIEx1Y2FzIERlIE1hcmNoaSB3cm90ZToNCj4gV2FfMTYw
ODAwODA4NCBpcyBhbiBhZGRpdGlvbmFsIFdBIHRoYXQgYXBwbGllcyB0byB3cml0ZXMgb24gRkZf
TU9ERTINCj4gcmVnaXN0ZXIuIFdlIGNhbid0IHJlYWQgaXQgYmFjayBlaXRoZXIgZnJvbSBDUFUg
b3IgR1BVLiBTaW5jZSB0aGUNCj4gb3RoZXINCj4gYml0cyBzaG91bGQgYmUgMCwgcmVjb21tZW5k
YXRpb24gdG8gaGFuZGxlIFdhXzE2MDQ1NTU2MDcgaXMgdG8NCj4gYWN0dWFsbHkNCj4ganVzdCB3
cml0ZSB0aGUgdGltZXIgdmFsdWUuDQo+IA0KPiBEbyBhIHdyaXRlIG9ubHkgYW5kIGRvbid0IHRy
eSB0byByZWFkIGl0LCBuZWl0aGVyIGJlZm9yZSBvciBhZnRlcg0KPiB0aGUgV0EgaXMgYXBwbGll
ZC4NCj4gDQo+IEZpeGVzOiBmZjY5MGIyMTExYmEgKCJkcm0vaTkxNS90Z2w6IEltcGxlbWVudCBX
YV8xNjA0NTU1NjA3IikNCj4gU2lnbmVkLW9mZi1ieTogTHVjYXMgRGUgTWFyY2hpIDxsdWNhcy5k
ZW1hcmNoaUBpbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50
ZWxfd29ya2Fyb3VuZHMuYyB8IDIyICsrKysrKysrKystLS0tLS0tLS0NCj4gLS0NCj4gIDEgZmls
ZSBjaGFuZ2VkLCAxMCBpbnNlcnRpb25zKCspLCAxMiBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jDQo+IGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYw0KPiBpbmRleCA4ODdl
MGRjNzAxZjcuLjBkNzZlMWQ2ZWM4NyAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC9pbnRlbF93b3JrYXJvdW5kcy5jDQo+IEBAIC01ODAsMjQgKzU4MCwyMiBAQCBzdGF0aWMgdm9p
ZCBpY2xfY3R4X3dvcmthcm91bmRzX2luaXQoc3RydWN0DQo+IGludGVsX2VuZ2luZV9jcyAqZW5n
aW5lLA0KPiAgc3RhdGljIHZvaWQgdGdsX2N0eF93b3JrYXJvdW5kc19pbml0KHN0cnVjdCBpbnRl
bF9lbmdpbmVfY3MgKmVuZ2luZSwNCj4gIAkJCQkgICAgIHN0cnVjdCBpOTE1X3dhX2xpc3QgKndh
bCkNCj4gIHsNCj4gLQl1MzIgdmFsOw0KPiAtDQo+ICAJLyogV2FfMTQwOTE0MjI1OTp0Z2wgKi8N
Cj4gIAlXQV9TRVRfQklUX01BU0tFRChHRU4xMV9DT01NT05fU0xJQ0VfQ0hJQ0tFTjMsDQo+ICAJ
CQkgIEdFTjEyX0RJU0FCTEVfQ1BTX0FXQVJFX0NPTE9SX1BJUEUpOw0KPiAgDQo+IC0JLyogV2Ff
MTYwNDU1NTYwNzp0Z2wgKi8NCj4gLQl2YWwgPSBpbnRlbF91bmNvcmVfcmVhZChlbmdpbmUtPnVu
Y29yZSwgRkZfTU9ERTIpOw0KPiAtCXZhbCAmPSB+RkZfTU9ERTJfVERTX1RJTUVSX01BU0s7DQo+
IC0JdmFsIHw9IEZGX01PREUyX1REU19USU1FUl8xMjg7DQo+ICAJLyoNCj4gLQkgKiBGSVhNRTog
RkZfTU9ERTIgcmVnaXN0ZXIgaXMgbm90IHJlYWRhYmxlIHRpbGwgVEdMIEIwLiBXZSBjYW4NCj4g
LQkgKiBlbmFibGUgdmVyaWZpY2F0aW9uIG9mIFdBIGZyb20gdGhlIGxhdGVyIHN0ZXBwaW5ncywg
d2hpY2gNCj4gZW5hYmxlcw0KPiAtCSAqIHRoZSByZWFkIG9mIEZGX01PREUyLg0KPiArCSAqIFdh
XzE2MDQ1NTU2MDc6Z2VuMTINCj4gKwkgKiBGRl9NT0RFMiByZWdpc3RlciBpcyBub3QgcmVhZGFi
bGUgdGlsbCBUR0wgQjAsIGVpdGhlciBieSBDUFUNCj4gb3IgR1BVLg0KDQpUaGUgbGluZSBhYm92
ZSBjb3VsZCBiZSByZW1vdmVkIGFzIHRoZSBjb21tZW50cyBhYm92ZSBleHBsYWluIGl0DQpiZXR0
ZXIsIGFsc28gQlNwZWMgZG9uJ3Qgc2F5IHRoYXQgaXQgd2lsbCBiZSBmaXhlZCBpbiBCMC4NCg0K
V2l0aCB0aGF0Og0KUmV2aWV3ZWQtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291
emFAaW50ZWwuY29tPg0KDQo+ICsJICoNCj4gKwkgKiBXYV8xNjA4MDA4MDg0OmdlbjEyDQo+ICsJ
ICogRkZfTU9ERTIgcmVnaXN0ZXIgd2lsbCByZXR1cm4gdGhlIHdyb25nIHZhbHVlIHdoZW4gcmVh
ZC4gVGhlDQo+IGRlZmF1bHQNCj4gKwkgKiB2YWx1ZSBmb3IgdGhpcyByZWdpc3RlciBpcyB6ZXJv
IGZvciBhbGwgZmllbGRzIGFuZCB0aGVyZSBhcmUNCj4gbm8gYml0DQo+ICsJICogbWFza3MuIFNv
IGluc3RlYWQgb2YgZG9pbmcgYSBSTVcgd2Ugc2hvdWxkIGp1c3Qgd3JpdGUgdGhlDQo+IFREUyB0
aW1lcg0KPiArCSAqIHZhbHVlIGZvciBXYV8xNjA0NTU1NjA3Lg0KPiAgCSAqLw0KPiAtCXdhX2Fk
ZCh3YWwsIEZGX01PREUyLCBGRl9NT0RFMl9URFNfVElNRVJfTUFTSywgdmFsLA0KPiAtCSAgICAg
ICBJU19UR0xfUkVWSUQoZW5naW5lLT5pOTE1LCBUR0xfUkVWSURfQTAsIFRHTF9SRVZJRF9BMCkg
Pw0KPiAwIDoNCj4gLQkJCSAgICBGRl9NT0RFMl9URFNfVElNRVJfTUFTSyk7DQo+ICsJd2FfYWRk
KHdhbCwgRkZfTU9ERTIsIEZGX01PREUyX1REU19USU1FUl9NQVNLLA0KPiArCSAgICAgICBGRl9N
T0RFMl9URFNfVElNRVJfMTI4LCAwKTsNCj4gIH0NCj4gIA0KPiAgc3RhdGljIHZvaWQNCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWls
aW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
