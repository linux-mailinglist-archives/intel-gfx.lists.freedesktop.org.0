Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AB5614E5D7
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Jan 2020 00:04:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A04316FA4E;
	Thu, 30 Jan 2020 23:04:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1462A6FA4E
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Jan 2020 23:04:22 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Jan 2020 15:03:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,383,1574150400"; d="scan'208";a="320495484"
Received: from fmsmsx106.amr.corp.intel.com ([10.18.124.204])
 by fmsmga001.fm.intel.com with ESMTP; 30 Jan 2020 15:03:01 -0800
Received: from fmsmsx152.amr.corp.intel.com (10.18.125.5) by
 FMSMSX106.amr.corp.intel.com (10.18.124.204) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 30 Jan 2020 15:03:01 -0800
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.3]) by
 FMSMSX152.amr.corp.intel.com ([169.254.6.241]) with mapi id 14.03.0439.000;
 Thu, 30 Jan 2020 15:03:01 -0800
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Kasireddy, Vivek" <vivek.kasireddy@intel.com>
Thread-Topic: [PATCH] drm/i915/hotplug: Use phy to get the hpd_pin instead
 of the port (v2)
Thread-Index: AQHV179ZR//jpw3cEUClk2+ozpE00KgEWXKA
Date: Thu, 30 Jan 2020 23:03:00 +0000
Message-ID: <0b0038baaa75ed086bf8ba27d126136f601d6bce.camel@intel.com>
References: <87wo999qmu.fsf@intel.com>
 <20200130224323.14434-1-vivek.kasireddy@intel.com>
In-Reply-To: <20200130224323.14434-1-vivek.kasireddy@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.12.250]
Content-ID: <3863CAF734635247AB51CF870158572D@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/hotplug: Use phy to get the
 hpd_pin instead of the port (v2)
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCAyMDIwLTAxLTMwIGF0IDE0OjQzIC0wODAwLCBWaXZlayBLYXNpcmVkZHkgd3JvdGU6
DQo+IE9uIHNvbWUgcGxhdGZvcm1zIHN1Y2ggYXMgRWxraGFydCBMYWtlLCBhbHRob3VnaCB3ZSBt
YXkgdXNlIERESSBEDQo+IHRvIGRyaXZlIGEgY29ubmVjdG9yLCB3ZSBoYXZlIHRvIHVzZSBQSFkg
QSAoQ29tYm8gUGh5IFBPUlQgQSkgdG8NCj4gZGV0ZWN0IHRoZSBob3RwbHVnIGludGVycnVwdHMg
YXMgcGVyIHRoZSBzcGVjIGJlY2F1c2UgdGhlcmUgaXMgbm8NCj4gb25lLXRvLW9uZSBtYXBwaW5n
IGJldHdlZW4gRERJcyBhbmQgUEhZcy4gVGhlcmVmb3JlLCB1c2UgdGhlDQo+IGZ1bmN0aW9uIGlu
dGVsX3BvcnRfdG9fcGh5KCkgd2hpY2ggY29udGFpbnMgdGhlIGxvZ2ljIGZvciBzdWNoDQo+IG1h
cHBpbmcocykgdG8gZmluZCB0aGUgY29ycmVjdCBocGRfcGluLg0KPiANCj4gVGhpcyBjaGFuZ2Ug
c2hvdWxkIG5vdCBhZmZlY3Qgb3RoZXIgcGxhdGZvcm1zIGFzIHRoZXJlIGlzIGFsd2F5cw0KPiBh
IG9uZS10by1vbmUgbWFwcGluZyBiZXR3ZWVuIERESXMgYW5kIFBIWXMuDQo+IA0KPiB2MjoNCj4g
LSBDb252ZXJ0IHRoZSBjYXNlIHN0YXRlbWVudHMgdG8gdXNlIFBIWXMgaW5zdGVhZCBvZiBQT1JU
cyAoSmFuaSkNCj4gDQo+IENjOiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPg0K
PiBDYzogTWF0dCBSb3BlciA8bWF0dGhldy5kLnJvcGVyQGludGVsLmNvbT4NCj4gQ2M6IEpvc8Op
IFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPg0KPiBTaWduZWQtb2ZmLWJ5
OiBWaXZlayBLYXNpcmVkZHkgPHZpdmVrLmthc2lyZWRkeUBpbnRlbC5jb20+DQo+IC0tLQ0KPiAg
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9ob3RwbHVnLmMgfCAyNCArKysrKysr
KysrKy0tLS0tLS0NCj4gLS0NCj4gIDEgZmlsZSBjaGFuZ2VkLCAxMyBpbnNlcnRpb25zKCspLCAx
MSBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2hvdHBsdWcuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfaG90cGx1Zy5jDQo+IGluZGV4IDA0MmQ5OGJhZTFlYS4uMmJjZmE0NjgyNTExIDEwMDY0
NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hvdHBsdWcuYw0K
PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hvdHBsdWcuYw0KPiBA
QCAtODksMjkgKzg5LDMxIEBADQo+ICBlbnVtIGhwZF9waW4gaW50ZWxfaHBkX3Bpbl9kZWZhdWx0
KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlDQo+ICpkZXZfcHJpdiwNCj4gIAkJCQkgICBlbnVtIHBv
cnQgcG9ydCkNCj4gIHsNCj4gLQlzd2l0Y2ggKHBvcnQpIHsNCj4gLQljYXNlIFBPUlRfQToNCj4g
KwllbnVtIHBoeSBwaHkgPSBpbnRlbF9wb3J0X3RvX3BoeShkZXZfcHJpdiwgcG9ydCk7DQo+ICsN
Cj4gKwlzd2l0Y2ggKHBoeSkgew0KPiArCWNhc2UgUEhZX0E6DQo+ICAJCXJldHVybiBIUERfUE9S
VF9BOw0KPiAtCWNhc2UgUE9SVF9COg0KPiArCWNhc2UgUEhZX0I6DQo+ICAJCXJldHVybiBIUERf
UE9SVF9COw0KPiAtCWNhc2UgUE9SVF9DOg0KPiArCWNhc2UgUEhZX0M6DQo+ICAJCXJldHVybiBI
UERfUE9SVF9DOw0KPiAtCWNhc2UgUE9SVF9EOg0KPiArCWNhc2UgUEhZX0Q6DQo+ICAJCXJldHVy
biBIUERfUE9SVF9EOw0KPiAtCWNhc2UgUE9SVF9FOg0KPiArCWNhc2UgUEhZX0U6DQo+ICAJCXJl
dHVybiBIUERfUE9SVF9FOw0KPiAtCWNhc2UgUE9SVF9GOg0KPiArCWNhc2UgUEhZX0Y6DQo+ICAJ
CWlmIChJU19DTkxfV0lUSF9QT1JUX0YoZGV2X3ByaXYpKQ0KPiAgCQkJcmV0dXJuIEhQRF9QT1JU
X0U7DQo+ICAJCXJldHVybiBIUERfUE9SVF9GOw0KPiAtCWNhc2UgUE9SVF9HOg0KPiArCWNhc2Ug
UEhZX0c6DQo+ICAJCXJldHVybiBIUERfUE9SVF9HOw0KPiAtCWNhc2UgUE9SVF9IOg0KPiArCWNh
c2UgUEhZX0g6DQo+ICAJCXJldHVybiBIUERfUE9SVF9IOw0KPiAtCWNhc2UgUE9SVF9JOg0KPiAr
CWNhc2UgUEhZX0k6DQo+ICAJCXJldHVybiBIUERfUE9SVF9JOw0KPiAgCWRlZmF1bHQ6DQo+IC0J
CU1JU1NJTkdfQ0FTRShwb3J0KTsNCj4gKwkJTUlTU0lOR19DQVNFKHBoeSk7DQo+ICAJCXJldHVy
biBIUERfTk9ORTsNCj4gIAl9DQo+ICB9DQoNCkxvb2tzIGdvb2QgYnV0IHdoaWxlIHlvdSBhcmUg
YXQgaXQgd2h5IG5vdCBvcHRpbWl6ZSB3aXRoIHNvbWV0aGluZw0KbGlrZToNCg0Kc3dpdGNoKHBo
eSkgew0KUEhZX0Y6DQoJaWYgKElTX0NOTF9XSVRIX1BPUlRfRihkZXZfcHJpdikpDQoJCXJldHVy
biBIUERfUE9SVF9FOw0KCXJldHVybiBIUERfUE9SVF9GOw0KUEhZX0E6DQpQSFlfQjoNCi4uOg0K
CXJldHVybiBIUERfUE9SVF9BICsgcGh5DQpkZWZhdWx0Og0KCS4uLg0KDQoNCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
