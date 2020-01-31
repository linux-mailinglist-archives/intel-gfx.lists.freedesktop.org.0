Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B7FB14E695
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Jan 2020 01:26:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F10E6FA53;
	Fri, 31 Jan 2020 00:26:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DAD556FA53
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 Jan 2020 00:26:36 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Jan 2020 16:26:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,383,1574150400"; d="scan'208";a="430208383"
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
 by fmsmga006.fm.intel.com with ESMTP; 30 Jan 2020 16:26:36 -0800
Received: from fmsmsx157.amr.corp.intel.com (10.18.116.73) by
 FMSMSX103.amr.corp.intel.com (10.18.124.201) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 30 Jan 2020 16:26:36 -0800
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.3]) by
 FMSMSX157.amr.corp.intel.com ([169.254.14.117]) with mapi id 14.03.0439.000;
 Thu, 30 Jan 2020 16:26:36 -0800
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Kasireddy, Vivek" <vivek.kasireddy@intel.com>
Thread-Topic: [PATCH] drm/i915/hotplug: Use phy to get the hpd_pin instead
 of the port (v3)
Thread-Index: AQHV18yYYYRHIc0nLkKkQTDk3TYCdagEcLOA
Date: Fri, 31 Jan 2020 00:26:35 +0000
Message-ID: <d898491729a7b70e22a2bfa8c8f5d855ddc11963.camel@intel.com>
References: <0b0038baaa75ed086bf8ba27d126136f601d6bce.camel@intel.com>
 <20200131001816.32741-1-vivek.kasireddy@intel.com>
In-Reply-To: <20200131001816.32741-1-vivek.kasireddy@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.12.250]
Content-ID: <9E96DDE427C8EA41857B1F5DACAE1BFF@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/hotplug: Use phy to get the
 hpd_pin instead of the port (v3)
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

T24gVGh1LCAyMDIwLTAxLTMwIGF0IDE2OjE4IC0wODAwLCBWaXZlayBLYXNpcmVkZHkgd3JvdGU6
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
cyAoSmFuaSkNCj4gDQo+IHYzOg0KPiAtIFJlZmFjdG9yIHRoZSBmdW5jdGlvbiB0byByZWR1Y2Ug
dGhlIG51bWJlciBvZiByZXR1cm4gc3RhdGVtZW50cyBieQ0KPiAgIGx1bXBpbmcgYWxsIHRoZSBj
YXNlIHN0YXRlbWVudHMgdG9nZXRoZXIgZXhjZXB0IFBIWV9GIHdoaWNoIG5lZWRzDQo+ICAgc3Bl
Y2lhbCBoYW5kbGluZyAoSm9zZSkNCg0KVGhhbmtzDQoNClJldmlld2VkLWJ5OiBKb3PDqSBSb2Jl
cnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4NCg0KPiANCj4gQ2M6IEphbmkgTmlr
dWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+DQo+IENjOiBNYXR0IFJvcGVyIDxtYXR0aGV3LmQu
cm9wZXJAaW50ZWwuY29tPg0KPiBDYzogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6
YUBpbnRlbC5jb20+DQo+IFNpZ25lZC1vZmYtYnk6IFZpdmVrIEthc2lyZWRkeSA8dml2ZWsua2Fz
aXJlZGR5QGludGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2hvdHBsdWcuYyB8IDM3ICsrKysrKysrLS0tLS0tLS0NCj4gLS0tLQ0KPiAgMSBmaWxl
IGNoYW5nZWQsIDE1IGluc2VydGlvbnMoKyksIDIyIGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaG90cGx1Zy5jDQo+IGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9ob3RwbHVnLmMNCj4gaW5kZXggMDQy
ZDk4YmFlMWVhLi4yN2UzMDMzMjc4YTAgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfaG90cGx1Zy5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfaG90cGx1Zy5jDQo+IEBAIC04OSwyOSArODksMjIgQEANCj4gIGVudW0g
aHBkX3BpbiBpbnRlbF9ocGRfcGluX2RlZmF1bHQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUNCj4g
KmRldl9wcml2LA0KPiAgCQkJCSAgIGVudW0gcG9ydCBwb3J0KQ0KPiAgew0KPiAtCXN3aXRjaCAo
cG9ydCkgew0KPiAtCWNhc2UgUE9SVF9BOg0KPiAtCQlyZXR1cm4gSFBEX1BPUlRfQTsNCj4gLQlj
YXNlIFBPUlRfQjoNCj4gLQkJcmV0dXJuIEhQRF9QT1JUX0I7DQo+IC0JY2FzZSBQT1JUX0M6DQo+
IC0JCXJldHVybiBIUERfUE9SVF9DOw0KPiAtCWNhc2UgUE9SVF9EOg0KPiAtCQlyZXR1cm4gSFBE
X1BPUlRfRDsNCj4gLQljYXNlIFBPUlRfRToNCj4gLQkJcmV0dXJuIEhQRF9QT1JUX0U7DQo+IC0J
Y2FzZSBQT1JUX0Y6DQo+IC0JCWlmIChJU19DTkxfV0lUSF9QT1JUX0YoZGV2X3ByaXYpKQ0KPiAt
CQkJcmV0dXJuIEhQRF9QT1JUX0U7DQo+IC0JCXJldHVybiBIUERfUE9SVF9GOw0KPiAtCWNhc2Ug
UE9SVF9HOg0KPiAtCQlyZXR1cm4gSFBEX1BPUlRfRzsNCj4gLQljYXNlIFBPUlRfSDoNCj4gLQkJ
cmV0dXJuIEhQRF9QT1JUX0g7DQo+IC0JY2FzZSBQT1JUX0k6DQo+IC0JCXJldHVybiBIUERfUE9S
VF9JOw0KPiArCWVudW0gcGh5IHBoeSA9IGludGVsX3BvcnRfdG9fcGh5KGRldl9wcml2LCBwb3J0
KTsNCj4gKw0KPiArCXN3aXRjaCAocGh5KSB7DQo+ICsJY2FzZSBQSFlfRjoNCj4gKwkJcmV0dXJu
IElTX0NOTF9XSVRIX1BPUlRfRihkZXZfcHJpdikgPyBIUERfUE9SVF9FIDoNCj4gSFBEX1BPUlRf
RjsNCj4gKwljYXNlIFBIWV9BOg0KPiArCWNhc2UgUEhZX0I6DQo+ICsJY2FzZSBQSFlfQzoNCj4g
KwljYXNlIFBIWV9EOg0KPiArCWNhc2UgUEhZX0U6DQo+ICsJY2FzZSBQSFlfRzoNCj4gKwljYXNl
IFBIWV9IOg0KPiArCWNhc2UgUEhZX0k6DQo+ICsJCXJldHVybiBIUERfUE9SVF9BICsgcGh5Ow0K
PiAgCWRlZmF1bHQ6DQo+IC0JCU1JU1NJTkdfQ0FTRShwb3J0KTsNCj4gKwkJTUlTU0lOR19DQVNF
KHBoeSk7DQo+ICAJCXJldHVybiBIUERfTk9ORTsNCj4gIAl9DQo+ICB9DQpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
