Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E98957E763
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Aug 2019 03:07:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9772A6E850;
	Fri,  2 Aug 2019 01:07:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 432E36E850
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Aug 2019 01:07:50 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 01 Aug 2019 18:07:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,336,1559545200"; d="scan'208";a="184427988"
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
 by orsmga002.jf.intel.com with ESMTP; 01 Aug 2019 18:07:49 -0700
Received: from fmsmsx156.amr.corp.intel.com (10.18.116.74) by
 FMSMSX103.amr.corp.intel.com (10.18.124.201) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 1 Aug 2019 18:07:49 -0700
Received: from fmsmsx116.amr.corp.intel.com ([169.254.2.137]) by
 fmsmsx156.amr.corp.intel.com ([169.254.13.183]) with mapi id 14.03.0439.000;
 Thu, 1 Aug 2019 18:07:48 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "De Marchi, Lucas" <lucas.demarchi@intel.com>
Thread-Topic: [PATCH 2/2] drm/i915/tgl: Fix the read of the DDI that
 transcoder is attached to
Thread-Index: AQHVSMDPdovq0IfWbUCDPCdlLpZsbKbnfIOAgAAEuIA=
Date: Fri, 2 Aug 2019 01:07:48 +0000
Message-ID: <0f51e07caab96242ffabcfffaba18dc16dbb50bc.camel@intel.com>
References: <20190801232812.28375-1-jose.souza@intel.com>
 <20190801232812.28375-2-jose.souza@intel.com>
 <20190802005053.pnb7o4aj3hakljqq@ldmartin-desk1>
In-Reply-To: <20190802005053.pnb7o4aj3hakljqq@ldmartin-desk1>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.9.51]
Content-ID: <6B7DCCCA1A70564F8E590036C7191BA2@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/tgl: Fix the read of the DDI
 that transcoder is attached to
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCAyMDE5LTA4LTAxIGF0IDE3OjUwIC0wNzAwLCBMdWNhcyBEZSBNYXJjaGkgd3JvdGU6
DQo+IE9uIFRodSwgQXVnIDAxLCAyMDE5IGF0IDA0OjI4OjEyUE0gLTA3MDAsIEpvc2UgU291emEg
d3JvdGU6DQo+ID4gT24gVEdMIHRoaXMgcmVnaXN0ZXIgZG8gbm90IG1hcCBkaXJlY3RseSB0byBw
b3J0LCBpdCB3YXMgYWxyZWFkeQ0KPiA+IGhhbmRsZWQgd2hlbiBzZXR0aW5nIGl0KFRHTF9UUkFO
U19ERElfU0VMRUNUX1BPUlQoKSkgYnV0IG5vdCB3aGVuDQo+ID4gcmVhZGluZyBpdC4NCj4gPiAN
Cj4gPiBDYzogTHVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+DQo+ID4g
U2lnbmVkLW9mZi1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5j
b20+DQo+ID4gLS0tDQo+ID4gZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNw
bGF5LmMgfCAxMCArKysrKysrKy0tDQo+ID4gMSBmaWxlIGNoYW5nZWQsIDggaW5zZXJ0aW9ucygr
KSwgMiBkZWxldGlvbnMoLSkNCj4gPiANCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+ID4gaW5kZXggOWU0ZWUyOWZkMGZjLi5iOTUyNmFh
NDAyZjkgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kaXNwbGF5LmMNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Rpc3BsYXkuYw0KPiA+IEBAIC0xMDM1MywxMSArMTAzNTMsMTcgQEAgc3RhdGljIHZvaWQNCj4g
PiBoYXN3ZWxsX2dldF9kZGlfcG9ydF9zdGF0ZShzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YywNCj4g
PiANCj4gPiAJdG1wID0gSTkxNV9SRUFEKFRSQU5TX0RESV9GVU5DX0NUTChwaXBlX2NvbmZpZy0N
Cj4gPiA+Y3B1X3RyYW5zY29kZXIpKTsNCj4gPiANCj4gPiAtCWlmIChJTlRFTF9HRU4oZGV2X3By
aXYpID49IDEyKQ0KPiA+ICsJaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0gMTIpIHsNCj4gPiAJ
CXBvcnQgPSAodG1wICYgVEdMX1RSQU5TX0RESV9QT1JUX01BU0spID4+DQo+ID4gCQkJVEdMX1RS
QU5TX0RESV9QT1JUX1NISUZUOw0KPiA+IC0JZWxzZQ0KPiA+ICsJCS8qDQo+ID4gKwkJICogUmVn
aXN0ZXIgdmFsdWVzOiBub25lID0gMCwgRERJQSA9IDEuLi4gd2hpbGUgUE9SVF9BDQo+ID4gPSAw
Li4uDQo+ID4gKwkJICogc28gc3VidHJhY3Qgb25lDQo+ID4gKwkJICovDQo+ID4gKwkJcG9ydC0t
Ow0KPiANCj4gcG9ydCA9IFRHTF9QT1JUX1RSQU5TX0RESV9TRUxFQ1QodG1wKQ0KPiANCj4gYW5k
IHB1dCB0aGUgbWFjcm8gcmlnaHQgYmVsb3cgdGhlIFRHTF9UUkFOU19ERElfU0VMRUNUX1BPUlQo
KSBzbyB0aGUNCj4gaW50ZW50IGlzIGV4cGxpY2l0IGFuZCB3ZSBkb24ndCBmb3JnZXQgYWdhaW4u
IFRoZW4geW91IGNhbiByZW1vdmUgdGhlDQo+IGNvbW1lbnQuDQoNCkkgbGlrZWQgdGhlIGlkZWEg
b2YgYWRkIGEgbWFjcm8gYnV0IG5vdCBzdXJlIGFib3V0IHRoaXMgbmFtZSwgZ29pbmcgdG8NCnRo
aW5rIGluIGEgYmV0dGVyIG9uZS4NCg0KPiANCj4gYW55IGNoYW5jZSBvZiB0bXAgYmVpbmcgbm9u
ZSBhbmQgdGhlIC0xIHVuZGVyZmxvdz8NCg0KSSBndWVzcyB0aGUgaW50ZW50aW9uIG9mIGhhdmUg
MCA9IG5vbmUgaXMgRFAgTVNUIGJ1dCB3ZSBhcmUgcHJvZ3JhbWluZw0KdGhlIERESV9TRUxFQ1Qg
ZXZlbiBvbiBzbGF2ZXMsIGlmIHdlIHN0b3AgdG8gZG8gdGhhdCB3ZSB3b3VsZCBuZWVkIHRvDQpk
byBjaGFuZ2VzIGluIHRoaXMgZnVuY3Rpb24uDQoNCj4gDQo+IEx1Y2FzIERlIE1hcmNoaQ0KPiAN
Cj4gDQo+ID4gKwl9IGVsc2Ugew0KPiA+IAkJcG9ydCA9ICh0bXAgJiBUUkFOU19ERElfUE9SVF9N
QVNLKSA+Pg0KPiA+IFRSQU5TX0RESV9QT1JUX1NISUZUOw0KPiA+ICsJfQ0KPiA+IA0KPiA+IAlp
ZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSAxMSkNCj4gPiAJCWljZWxha2VfZ2V0X2RkaV9wbGwo
ZGV2X3ByaXYsIHBvcnQsIHBpcGVfY29uZmlnKTsNCj4gPiAtLSANCj4gPiAyLjIyLjANCj4gPiAN
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
