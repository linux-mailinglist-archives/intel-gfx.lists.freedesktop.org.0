Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E87B04C401
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Jun 2019 01:15:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B8596E48E;
	Wed, 19 Jun 2019 23:15:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B74726E48E
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Jun 2019 23:15:53 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Jun 2019 16:15:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,394,1557212400"; d="scan'208";a="160498931"
Received: from fmsmsx108.amr.corp.intel.com ([10.18.124.206])
 by fmsmga008.fm.intel.com with ESMTP; 19 Jun 2019 16:15:52 -0700
Received: from fmsmsx154.amr.corp.intel.com (10.18.116.70) by
 FMSMSX108.amr.corp.intel.com (10.18.124.206) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 19 Jun 2019 16:15:52 -0700
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.210]) by
 FMSMSX154.amr.corp.intel.com ([169.254.6.141]) with mapi id 14.03.0439.000;
 Wed, 19 Jun 2019 16:15:52 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>
Thread-Topic: [Intel-gfx] [PATCH 1/2] drm/i915/ehl/dsi: Set lane latency
 optimization for DW1
Thread-Index: AQHVJhB22R7XqhmQukmcTYoOaTwLbKakCIgAgAAKjoA=
Date: Wed, 19 Jun 2019 23:15:52 +0000
Message-ID: <483f71eeda257e14059936e491535e7920f33a86.camel@intel.com>
References: <20190618200000.15847-1-jose.souza@intel.com>
 <20190619223804.GJ14321@mdroper-desk.amr.corp.intel.com>
In-Reply-To: <20190619223804.GJ14321@mdroper-desk.amr.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.8.250]
Content-ID: <014B082BB1C829478D4ADD5B3905CDBE@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/ehl/dsi: Set lane latency
 optimization for DW1
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCAyMDE5LTA2LTE5IGF0IDE1OjM4IC0wNzAwLCBNYXR0IFJvcGVyIHdyb3RlOg0KPiBP
biBUdWUsIEp1biAxOCwgMjAxOSBhdCAxMjo1OTo1OVBNIC0wNzAwLCBKb3PDqSBSb2JlcnRvIGRl
IFNvdXphDQo+IHdyb3RlOg0KPiA+IEZyb206IFZhbmRpdGEgS3Vsa2FybmkgPHZhbmRpdGEua3Vs
a2FybmlAaW50ZWwuY29tPg0KPiA+IA0KPiA+IEVITCBoYXMgMiBhZGRpdGlvbmFsIHN0ZXBzIGlu
IHRoZSBEU0kgc2VxdWVuY2UsIHRoaXMgaXMgb25lIG9mIHRoZW4NCj4gPiB0aGUgbGFuZSBsYXRl
bmN5IG9wdGltaXphdGlvbiBmb3IgRFcxLg0KPiA+IA0KPiA+IEJTcGVjOiAyMDU5Nw0KPiA+IENj
OiBVbWEgU2hhbmthciA8dW1hLnNoYW5rYXJAaW50ZWwuY29tPg0KPiA+IENjOiBSb2RyaWdvIFZp
dmkgPHJvZHJpZ28udml2aUBpbnRlbC5jb20+DQo+ID4gQ2M6IEphbmkgTmlrdWxhIDxqYW5pLm5p
a3VsYUBpbnRlbC5jb20+DQo+ID4gU2lnbmVkLW9mZi1ieTogVmFuZGl0YSBLdWxrYXJuaSA8dmFu
ZGl0YS5rdWxrYXJuaUBpbnRlbC5jb20+DQo+ID4gLS0tDQo+ID4gIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaWNsX2RzaS5jIHwgMTEgKysrKysrKysrKysNCj4gPiAgZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9yZWcuaCAgICAgICAgfCAgMiArKw0KPiA+ICAyIGZpbGVzIGNoYW5nZWQs
IDEzIGluc2VydGlvbnMoKykNCj4gPiANCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pY2xfZHNpLmMNCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaWNsX2RzaS5jDQo+ID4gaW5kZXggNzQ0NDhlNmJmNzQ5Li5lZTg1NDI4YjMwOWYgMTAwNjQ0
DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pY2xfZHNpLmMNCj4gPiAr
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ljbF9kc2kuYw0KPiA+IEBAIC00MDMs
NiArNDAzLDE3IEBAIHN0YXRpYyB2b2lkDQo+ID4gZ2VuMTFfZHNpX2NvbmZpZ19waHlfbGFuZXNf
c2VxdWVuY2Uoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIpDQo+ID4gIAkJdG1wICY9IH5G
UkNfTEFURU5DWV9PUFRJTV9NQVNLOw0KPiA+ICAJCXRtcCB8PSBGUkNfTEFURU5DWV9PUFRJTV9W
QUwoMHg1KTsNCj4gPiAgCQlJOTE1X1dSSVRFKElDTF9QT1JUX1RYX0RXMl9HUlAocG9ydCksIHRt
cCk7DQo+ID4gKwkJLyogRm9yIEVITCBzZXQgbGF0ZW5jeSBvcHRpbWl6YXRpb24gZm9yIFBDU19E
VzEgbGFuZXMNCj4gPiAqLw0KPiA+ICsJCWlmIChJU19FTEtIQVJUTEFLRShkZXZfcHJpdikpIHsN
Cj4gPiArCQkJdG1wID0gSTkxNV9SRUFEKElDTF9QT1JUX1BDU19EVzFfQVVYKHBvcnQpKTsNCj4g
PiArCQkJdG1wICY9IH5MQVRFTkNZX09QVElNX01BU0s7DQo+ID4gKwkJCXRtcCB8PSBMQVRFTkNZ
X09QVElNX1ZBTCgwKTsNCj4gPiArCQkJSTkxNV9XUklURShJQ0xfUE9SVF9QQ1NfRFcxX0FVWChw
b3J0KSwgdG1wKTsNCj4gPiArCQkJdG1wID0gSTkxNV9SRUFEKElDTF9QT1JUX1BDU19EVzFfTE4w
KHBvcnQpKTsNCj4gPiArCQkJdG1wICY9IH5MQVRFTkNZX09QVElNX01BU0s7DQo+ID4gKwkJCXRt
cCB8PSBMQVRFTkNZX09QVElNX1ZBTCgweDEpOw0KPiA+ICsJCQlJOTE1X1dSSVRFKElDTF9QT1JU
X1BDU19EVzFfR1JQKHBvcnQpLCB0bXApOw0KPiA+ICsJCX0NCj4gDQo+IE1pbm9yIG5pdHBpY2ss
IGJ1dCB0aGVzZSBzZXF1ZW5jZXMgbWlnaHQgYmUgc2xpZ2h0bHkgZWFzaWVyIHRvIHJlYWQNCj4g
aWYNCj4gdGhlcmUgd2FzIGEgYmxhbmsgbGluZSBzZXBhcmF0aW5nIGVhY2ggUi9NL1cgY2h1bmsu
DQoNCkFncmVlZCwgSSB3YXMgYXZvaWRpbmcgY2hhbmdlIHRoZSBwYXRjaCBiZWNhdXNlIGl0IGlz
IG5vdCBtaW5lIGJ1dCB0aGlzDQp3aWxsIG5vdCBodXJ0IGFueW9uZS4NCg0KPiANCj4gVGhlIGNo
YW5nZXMgaGVyZSBsb29rIGNvcnJlY3QgYWNjb3JkaW5nIHRvIHRoZSBkZXNjcmlwdGlvbiBvbiBi
c3BlYw0KPiBwYWdlDQo+IDIwNTk3IGFsdGhvdWdoIGl0IGxvb2tzIGxpa2UgdGhlIGJzcGVjIGF1
dGhvcnMgZm9yZ290IHRvIHVwZGF0ZSB0aGUNCj4gJ1ZhbGlkIFZhbHVlcycgc2VjdGlvbiBmb3Ig
dGhlc2UgYml0cyBvbiBwYWdlIDIwMzk4OyBub3Qgc3VyZSBpZiB5b3UNCj4gd2FudCB0byBmaWxl
IGEgYnNwZWMgZGVmZWN0IGFib3V0IHRoYXQgb3Igbm90Lg0KDQpXZWxsIHRoZSBtaXNzaW5nIHZh
bHVlIGlzIDAsIHRoYXQgaXMgdGhlIGRlZmF1bHQgYWZ0ZXIgcmVzZXQgc28gd2UgYXJlDQpzYWZl
IGhlcmUuDQoNCj4gDQo+ID4gIAl9DQo+ID4gIA0KPiA+ICB9DQo+ID4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgNCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfcmVnLmgNCj4gPiBpbmRleCBkNjQ4M2I1ZGM4ZTUuLjFmMmMzZWJkZjg3YiAxMDA2NDQN
Cj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oDQo+ID4gKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaA0KPiA+IEBAIC0xODk2LDYgKzE4OTYsOCBAQCBl
bnVtIGk5MTVfcG93ZXJfd2VsbF9pZCB7DQo+ID4gICNkZWZpbmUgSUNMX1BPUlRfUENTX0RXMV9H
UlAocG9ydCkJX01NSU8oX0lDTF9QT1JUX1BDU19EV19HUlAoMSwNCj4gPiBwb3J0KSkNCj4gPiAg
I2RlZmluZSBJQ0xfUE9SVF9QQ1NfRFcxX0xOMChwb3J0KQlfTU1JTyhfSUNMX1BPUlRfUENTX0RX
X0xOKDEsIDAsDQo+ID4gcG9ydCkpDQo+ID4gICNkZWZpbmUgICBDT01NT05fS0VFUEVSX0VOCQko
MSA8PCAyNikNCj4gPiArI2RlZmluZSAgIExBVEVOQ1lfT1BUSU1fTUFTSwkJKDB4MyA8PCAyKQ0K
PiA+ICsjZGVmaW5lICAgTEFURU5DWV9PUFRJTV9WQUwoeCkJCSgoeCkgPDwgMikNCj4gDQo+IFNo
b3VsZCB3ZSB0cnkgdG8gaW5jbHVkZSBwYXJ0IG9mIHRoZSBuYW1lIG9mIHRoZSByZWdpc3RlciBp
biB0aGVzZQ0KPiBkZWZpbml0aW9ucyAoZS5nLiwgRFcxX0xBVEVOQ1lfT1BUSU0pPyAgSSdtIG5v
dCBzdXJlIGlmIHdlIHNob3VsZA0KPiB3b3JyeQ0KPiBhYm91dCBwZW9wbGUgbWl4aW5nIHVwIHRo
ZXNlIHZzIHRoZSBGUkNfTEFURU5DWV9PUFRJTSBkZWZpbmVzIGZhcnRoZXINCj4gZG93biBmb3Ig
dGhlIFRYX0RXMiByZWdpc3Rlci4NCg0KSSBhbHNvIHByZWZlciB0byBpbmNsdWRlIHRoZSByZWdp
c3RlciBuYW1lIHRvIHRoZSBiaXRzIGJ1dCB0aGUgZ2VuZXJhbA0KcnVsZSBpcyBrZWVwIGNvbnNp
c3RlbnQgd2l0aCBhcm91bmQgY29kZSBvciBmaXggZXZlcnl0aGluZywgYXMgdGhpcyBpcw0Kbm90
IG1pbmUgcGF0Y2ggSSBsZWZ0IHRoaXMgd2F5Lg0KDQo+IA0KPiBVcCB0byB5b3Ugb24gd2hldGhl
ciB5b3UgdGhpbmsgaXQncyB3b3J0aCBjbGFyaWZ5aW5nIHRoZQ0KPiBuYW1pbmcuICBFaXRoZXIN
Cj4gd2F5LA0KPiANCj4gUmV2aWV3ZWQtYnk6IE1hdHQgUm9wZXIgPG1hdHRoZXcuZC5yb3BlckBp
bnRlbC5jb20+DQoNClRoYW5rcw0KDQo+IA0KPiA+ICANCj4gPiAgLyogQ05ML0lDTCBQb3J0IFRY
IHJlZ2lzdGVycyAqLw0KPiA+ICAjZGVmaW5lIF9DTkxfUE9SVF9UWF9BRV9HUlBfT0ZGU0VUCQkw
eDE2MjM0MA0KPiA+IC0tIA0KPiA+IDIuMjIuMA0KPiA+IA0KPiA+IF9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQo+ID4gSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dA0KPiA+IEludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gPiBodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA0KX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
