Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 03B5116AFDA
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Feb 2020 19:59:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A21B36E8C3;
	Mon, 24 Feb 2020 18:59:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3BF5E6E8C3
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Feb 2020 18:59:39 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Feb 2020 10:59:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,481,1574150400"; d="scan'208";a="229923329"
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
 by fmsmga007.fm.intel.com with ESMTP; 24 Feb 2020 10:59:38 -0800
Received: from fmsmsx155.amr.corp.intel.com (10.18.116.71) by
 FMSMSX103.amr.corp.intel.com (10.18.124.201) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 24 Feb 2020 10:59:38 -0800
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.129]) by
 FMSMSX155.amr.corp.intel.com ([169.254.5.199]) with mapi id 14.03.0439.000;
 Mon, 24 Feb 2020 10:59:38 -0800
From: "Souza, Jose" <jose.souza@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>
Thread-Topic: [Intel-gfx] [PATCH 1/8] drm/i915/tgl: Extend Wa_1409825376
 stepping
Thread-Index: AQHV6STZlFhQxzevb0SoKOWh9pvPhKgrDTsAgAAv74A=
Date: Mon, 24 Feb 2020 18:59:37 +0000
Message-ID: <6db75c9ac0592e4b058593a4390f99b52a1a8d04.camel@intel.com>
References: <20200222020815.50599-1-jose.souza@intel.com>
 <20200224160852.GH3112363@mdroper-desk1.amr.corp.intel.com>
In-Reply-To: <20200224160852.GH3112363@mdroper-desk1.amr.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.14.234]
Content-ID: <7FCD7ADBBAF1024B9F705F11AA73960B@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/8] drm/i915/tgl: Extend Wa_1409825376
 stepping
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCAyMDIwLTAyLTI0IGF0IDA4OjA4IC0wODAwLCBNYXR0IFJvcGVyIHdyb3RlOg0KPiBP
biBGcmksIEZlYiAyMSwgMjAyMCBhdCAwNjowODowOFBNIC0wODAwLCBKb3PDqSBSb2JlcnRvIGRl
IFNvdXphDQo+IHdyb3RlOg0KPiA+IFRoaXMgd29ya2Fyb3VuZCBpcyBvbmx5IGZpeGVkIGluIEMw
IHN0ZXBwaW5nIHRvIGV4dGVuZCBpdCB0byBCMA0KPiA+IHRvby4NCj4gPiANCj4gPiBCU3BlYzog
NTI4OTANCj4gPiBDYzogUmFkaGFrcmlzaG5hIFNyaXBhZGEgPHJhZGhha3Jpc2huYS5zcmlwYWRh
QGludGVsLmNvbT4NCj4gPiBTaWduZWQtb2ZmLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxq
b3NlLnNvdXphQGludGVsLmNvbT4NCj4gPiAtLS0NCj4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9kcnYuaCB8IDEgKw0KPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jIHwg
MiArLQ0KPiA+ICAyIGZpbGVzIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigt
KQ0KPiA+IA0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5o
DQo+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oDQo+ID4gaW5kZXggNDMwNWNj
YzRjNjgzLi41NzI4MmI3MTllY2UgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9kcnYuaA0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgN
Cj4gPiBAQCAtMTU3NSw2ICsxNTc1LDcgQEAgSVNfU1VCUExBVEZPUk0oY29uc3Qgc3RydWN0IGRy
bV9pOTE1X3ByaXZhdGUNCj4gPiAqaTkxNSwNCj4gPiAgCShJU19JQ0VMQUtFKHApICYmIElTX1JF
VklEKHAsIHNpbmNlLCB1bnRpbCkpDQo+ID4gIA0KPiA+ICAjZGVmaW5lIFRHTF9SRVZJRF9BMAkJ
MHgwDQo+ID4gKyNkZWZpbmUgVEdMX1JFVklEX0IwCQkweDENCj4gDQo+IHJldmlkIDEgaXMgQ1BV
ICsgR1QgQjAsIGJ1dCBhbHJlYWR5IGhhcyBkaXNwbGF5IEMwIHN0ZXBwaW5nDQo+IGluY29ycG9y
YXRlZC4gIEkgZm9yZ2V0Li4uZG8gdGhlIGRpc3BsYXkgd29ya2Fyb3VuZCBsaW1pdHMgaW4gdGhl
DQo+IGJzcGVjDQo+IHJlZmVyIHRvIGRpc3BsYXkgc3RlcHBpbmcgb3IgQ1BVL0dUIHN0ZXBwaW5n
Pw0KDQpNb3N0IG9mIHBsYXRmb3JtcyBkb24ndCBoYXZlIHRoZSBkaXNwbGF5IHN0ZXBwaW5nIGNv
bHVtbiBzbyBJIGFsd2F5cw0KY29tcGFyZSB0byBHVCBvbmUuDQoNCj4gDQo+IEZvciByZWZlcmVu
Y2UsIGJzcGVjIDQ0NDU1Lg0KPiANCj4gDQo+IE1hdHQNCj4gDQo+ID4gIA0KPiA+ICAjZGVmaW5l
IElTX1RHTF9SRVZJRChwLCBzaW5jZSwgdW50aWwpIFwNCj4gPiAgCShJU19USUdFUkxBS0UocCkg
JiYgSVNfUkVWSUQocCwgc2luY2UsIHVudGlsKSkNCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaW50ZWxfcG0uYw0KPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxf
cG0uYw0KPiA+IGluZGV4IGZmYWMwYjg2MmNhNS4uMzMxNDliY2NkMTE3IDEwMDY0NA0KPiA+IC0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmMNCj4gPiArKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pbnRlbF9wbS5jDQo+ID4gQEAgLTY4NTIsNyArNjg1Miw3IEBAIHN0YXRpYyB2
b2lkIHRnbF9pbml0X2Nsb2NrX2dhdGluZyhzdHJ1Y3QNCj4gPiBkcm1faTkxNV9wcml2YXRlICpk
ZXZfcHJpdikNCj4gPiAgCQkgICBJOTE1X1JFQUQoUE9XRVJHQVRFX0VOQUJMRSkgfCB2ZF9wZ19l
bmFibGUpOw0KPiA+ICANCj4gPiAgCS8qIFdhXzE0MDk4MjUzNzY6dGdsIChwcmUtcHJvZCkqLw0K
PiA+IC0JaWYgKElTX1RHTF9SRVZJRChkZXZfcHJpdiwgVEdMX1JFVklEX0EwLCBUR0xfUkVWSURf
QTApKQ0KPiA+ICsJaWYgKElTX1RHTF9SRVZJRChkZXZfcHJpdiwgVEdMX1JFVklEX0EwLCBUR0xf
UkVWSURfQjApKQ0KPiA+ICAJCUk5MTVfV1JJVEUoR0VOOV9DTEtHQVRFX0RJU18zLA0KPiA+IEk5
MTVfUkVBRChHRU45X0NMS0dBVEVfRElTXzMpIHwNCj4gPiAgCQkJICAgVEdMX1ZSSF9HQVRJTkdf
RElTKTsNCj4gPiAgfQ0KPiA+IC0tIA0KPiA+IDIuMjUuMQ0KPiA+IA0KPiA+IF9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQo+ID4gSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdA0KPiA+IEludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gPiBodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA0KX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
