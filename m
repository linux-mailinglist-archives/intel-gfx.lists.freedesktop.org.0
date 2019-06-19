Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 484634C412
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Jun 2019 01:25:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B2D886E48E;
	Wed, 19 Jun 2019 23:25:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 56FE96E48E
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Jun 2019 23:25:13 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Jun 2019 16:25:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,394,1557212400"; d="scan'208";a="243458802"
Received: from fmsmsx104.amr.corp.intel.com ([10.18.124.202])
 by orsmga001.jf.intel.com with ESMTP; 19 Jun 2019 16:25:12 -0700
Received: from fmsmsx152.amr.corp.intel.com (10.18.125.5) by
 fmsmsx104.amr.corp.intel.com (10.18.124.202) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 19 Jun 2019 16:25:12 -0700
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.210]) by
 FMSMSX152.amr.corp.intel.com ([169.254.6.192]) with mapi id 14.03.0439.000;
 Wed, 19 Jun 2019 16:25:12 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "Kulkarni, Vandita" <vandita.kulkarni@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 2/2] drm/i915/ehl/dsi: Enable AFE over PPI
 strap
Thread-Index: AQHVJhB5izg3G5yXa0CZIPYcql8jLKai5kyAgAAAnACAAS7JAA==
Date: Wed, 19 Jun 2019 23:25:11 +0000
Message-ID: <6f2a22b69ad9126d0ec81adcc54ca5cb47445d37.camel@intel.com>
References: <20190618200000.15847-1-jose.souza@intel.com>
 <20190618200000.15847-2-jose.souza@intel.com>
 <57510F3E2013164E925CD03ED7512A3B7FF42CDC@BGSMSX110.gar.corp.intel.com>
 <57510F3E2013164E925CD03ED7512A3B7FF42CF4@BGSMSX110.gar.corp.intel.com>
In-Reply-To: <57510F3E2013164E925CD03ED7512A3B7FF42CF4@BGSMSX110.gar.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.8.250]
Content-ID: <5B6534D19C2E6146B157CF6D2CD8A0CC@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/ehl/dsi: Enable AFE over PPI
 strap
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.23
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCAyMDE5LTA2LTE5IGF0IDEwOjUxICswNTMwLCBLdWxrYXJuaSwgVmFuZGl0YSB3cm90
ZToNCj4gPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiA+IEZyb206IEt1bGthcm5pLCBW
YW5kaXRhDQo+ID4gU2VudDogV2VkbmVzZGF5LCBKdW5lIDE5LCAyMDE5IDEwOjQ5IEFNDQo+ID4g
VG86IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPjsgaW50ZWwt
DQo+ID4gZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiA+IENjOiBOaWt1bGEsIEphbmkgPGph
bmkubmlrdWxhQGludGVsLmNvbT4NCj4gPiBTdWJqZWN0OiBSRTogW0ludGVsLWdmeF0gW1BBVENI
IDIvMl0gZHJtL2k5MTUvZWhsL2RzaTogRW5hYmxlIEFGRQ0KPiA+IG92ZXIgUFBJIHN0cmFwDQo+
ID4gDQo+ID4gPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiA+ID4gRnJvbTogSW50ZWwt
Z2Z4IDxpbnRlbC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uDQo+ID4gPiBC
ZWhhbGYgT2YNCj4gPiA+IEpvc8OpIFJvYmVydG8gZGUgU291emENCj4gPiA+IFNlbnQ6IFdlZG5l
c2RheSwgSnVuZSAxOSwgMjAxOSAxOjMwIEFNDQo+ID4gPiBUbzogaW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZw0KPiA+ID4gQ2M6IE5pa3VsYSwgSmFuaSA8amFuaS5uaWt1bGFAaW50ZWwu
Y29tPg0KPiA+ID4gU3ViamVjdDogW0ludGVsLWdmeF0gW1BBVENIIDIvMl0gZHJtL2k5MTUvZWhs
L2RzaTogRW5hYmxlIEFGRQ0KPiA+ID4gb3ZlciBQUEkNCj4gPiA+IHN0cmFwDQo+ID4gPiANCj4g
PiA+IFRoZSBvdGhlciBhZGRpdGlvbmFsIHN0ZXAgaW4gdGhlIERTSSBzZXF1cWVuY2UgZm9yIEVI
TC4NCj4gQSBjb3JyZWN0aW9uIGluICJzZXF1ZW5jZSIgd2lsbCBiZSBuZWVkZWQgdGhvdWdoLg0K
DQpUaGFua3MsIEkgd2lsbCBmaXggdGhhdC4NCg0KPiANCj4gVGhhbmtzLA0KPiBWYW5kaXRhDQo+
ID4gPiBCU3BlYzogMjA1OTcNCj4gPiA+IENjOiBVbWEgU2hhbmthciA8dW1hLnNoYW5rYXJAaW50
ZWwuY29tPg0KPiA+ID4gQ2M6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+DQo+
ID4gPiBTaWduZWQtb2ZmLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGlu
dGVsLmNvbT4NCj4gPiA+IC0tLQ0KPiA+IExvb2tzIGdvb2QgdG8gbWUuDQo+ID4gUmV2aWV3ZWQt
Ynk6IFZhbmRpdGEgS3Vsa2FybmkgPHZhbmRpdGEua3Vsa2FybmlAaW50ZWwuY29tPg0KPiA+IA0K
PiA+IFRoYW5rcy4NCj4gPiBWYW5kaXRhDQo+ID4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pY2xfZHNpLmMgfCA4ICsrKysrKysrDQo+ID4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9yZWcuaCAgICAgICAgfCA0ICsrKysNCj4gPiA+ICAyIGZpbGVzIGNoYW5nZWQsIDEyIGlu
c2VydGlvbnMoKykNCj4gPiA+IA0KPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaWNsX2RzaS5jDQo+ID4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaWNsX2RzaS5jDQo+ID4gPiBpbmRleCBlZTg1NDI4YjMwOWYuLjNhNjAxYzczOWZjNiAxMDA2
NDQNCj4gPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaWNsX2RzaS5jDQo+
ID4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ljbF9kc2kuYw0KPiA+ID4g
QEAgLTU0Miw2ICs1NDIsMTQgQEAgc3RhdGljIHZvaWQNCj4gPiA+IGdlbjExX2RzaV9zZXR1cF9k
cGh5X3RpbWluZ3Moc3RydWN0DQo+ID4gPiBpbnRlbF9lbmNvZGVyICplbmNvZGVyKQ0KPiA+ID4g
IAkJCUk5MTVfV1JJVEUoRFNJX1RBX1RJTUlOR19QQVJBTShwb3J0KSwgdG1wKTsNCj4gPiA+ICAJ
CX0NCj4gPiA+ICAJfQ0KPiA+ID4gKw0KPiA+ID4gKwlpZiAoSVNfRUxLSEFSVExBS0UoZGV2X3By
aXYpKSB7DQo+ID4gPiArCQlmb3JfZWFjaF9kc2lfcG9ydChwb3J0LCBpbnRlbF9kc2ktPnBvcnRz
KSB7DQo+ID4gPiArCQkJdG1wID0gSTkxNV9SRUFEKElDTF9EUEhZX0NIS04ocG9ydCkpOw0KPiA+
ID4gKwkJCXRtcCB8PSBJQ0xfRFBIWV9DSEtOX0FGRV9PVkVSX1BQSV9TVFJBUDsNCj4gPiA+ICsJ
CQlJOTE1X1dSSVRFKElDTF9EUEhZX0NIS04ocG9ydCksIHRtcCk7DQo+ID4gPiArCQl9DQo+ID4g
PiArCX0NCj4gPiA+ICB9DQo+ID4gPiANCj4gPiA+ICBzdGF0aWMgdm9pZCBnZW4xMV9kc2lfZ2F0
ZV9jbG9ja3Moc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIpDQo+ID4gPiBkaWZmDQo+ID4g
PiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgNCj4gPiA+IGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCBpbmRleA0KPiA+ID4gMWYyYzNlYmRmODdiLi5kYzdi
MzRjZjhiNDIgMTAwNjQ0DQo+ID4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3Jl
Zy5oDQo+ID4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oDQo+ID4gPiBA
QCAtMTk5Myw2ICsxOTkzLDEwIEBAIGVudW0gaTkxNV9wb3dlcl93ZWxsX2lkIHsNCj4gPiA+ICAj
ZGVmaW5lICAgTl9TQ0FMQVIoeCkJCQkoKHgpIDw8IDI0KQ0KPiA+ID4gICNkZWZpbmUgICBOX1ND
QUxBUl9NQVNLCQkJKDB4N0YgPDwgMjQpDQo+ID4gPiANCj4gPiA+ICsjZGVmaW5lIF9JQ0xfRFBI
WV9DSEtOX1JFRwkJCTB4MTk0DQo+ID4gPiArI2RlZmluZSBJQ0xfRFBIWV9DSEtOKHBvcnQpDQo+
ID4gPiAJX01NSU8oX0lDTF9DT01CT1BIWShwb3J0KSArIF9JQ0xfRFBIWV9DSEtOX1JFRykNCj4g
PiA+ICsjZGVmaW5lICAgSUNMX0RQSFlfQ0hLTl9BRkVfT1ZFUl9QUElfU1RSQVAJKDEgPDwgNykN
Cj4gPiA+ICsNCj4gPiA+ICAjZGVmaW5lIE1HX1BIWV9QT1JUX0xOKGxuLCBwb3J0LCBsbjBwMSwg
bG4wcDIsIGxuMXAxKSBcDQo+ID4gPiAgCV9NTUlPKF9QT1JUKChwb3J0KSAtIFBPUlRfQywgbG4w
cDEsIGxuMHAyKSArIChsbikgKiAoKGxuMXAxKSAtDQo+ID4gPiAobG4wcDEpKSkNCj4gPiA+IA0K
PiA+ID4gLS0NCj4gPiA+IDIuMjIuMA0KPiA+ID4gDQo+ID4gPiBfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KPiA+ID4gSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dA0KPiA+ID4gSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiA+ID4gaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngNCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5n
IGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
