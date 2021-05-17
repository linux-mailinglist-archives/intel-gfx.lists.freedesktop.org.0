Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A9DD0383AA9
	for <lists+intel-gfx@lfdr.de>; Mon, 17 May 2021 19:01:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F18846E98C;
	Mon, 17 May 2021 17:01:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A8A596E98C
 for <intel-gfx@lists.freedesktop.org>; Mon, 17 May 2021 17:01:48 +0000 (UTC)
IronPort-SDR: o1dNkMB3HrrPB6UMEbF/JW2rAc07PttcMjlorKJPXceEn8fI5MSlYloZhtfj03XNj0jOPx2lpm
 GxQHogoTROHA==
X-IronPort-AV: E=McAfee;i="6200,9189,9987"; a="187918670"
X-IronPort-AV: E=Sophos;i="5.82,307,1613462400"; d="scan'208";a="187918670"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2021 10:01:46 -0700
IronPort-SDR: zksXgyuaqkyvo4LoTlKBuvHLpeThiPCW5C22oTC+RJTWiV7hxTms6HwxsPK6QoAQ+8VmKSoByb
 0EJ1/NN7EATw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,307,1613462400"; d="scan'208";a="472489705"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga001.jf.intel.com with ESMTP; 17 May 2021 10:01:46 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Mon, 17 May 2021 10:01:45 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Mon, 17 May 2021 10:01:44 -0700
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2242.008;
 Mon, 17 May 2021 10:01:44 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v4 21/23] drm/i915/adl_p: Program DP/HDMI link rate to
 DDI_BUF_CTL
Thread-Index: AQHXSTfkib4Icjtym0qIKKI/L6PUhqroYHEA
Date: Mon, 17 May 2021 17:01:44 +0000
Message-ID: <5da601013d96fddee174c1b203bce923a44dbb4a.camel@intel.com>
References: <20210515031035.2561658-1-matthew.d.roper@intel.com>
 <20210515031035.2561658-22-matthew.d.roper@intel.com>
In-Reply-To: <20210515031035.2561658-22-matthew.d.roper@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-ID: <E0039BA4F86EA440B6F5BF7312A2AB1B@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v4 21/23] drm/i915/adl_p: Program DP/HDMI
 link rate to DDI_BUF_CTL
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

T24gRnJpLCAyMDIxLTA1LTE0IGF0IDIwOjEwIC0wNzAwLCBNYXR0IFJvcGVyIHdyb3RlOg0KPiBG
cm9tOiBJbXJlIERlYWsgPGltcmUuZGVha0BpbnRlbC5jb20+DQo+IA0KPiBPbiBBRExfUCBiZXNp
ZGVzIHByb2dyYW1taW5nIHRoZSBQTEwgYWNjb3JkaW5nbHkgdGhlIERQL0hETUkgbGluayByYXRl
DQo+IHNob3VsZCBiZSBhbHNvIHByb2dyYW1tZWQgdG8gdGhlIERESV9CVUZfQ1RMIHJlZ2lzdGVy
LCBkbyB0aGF0Lg0KDQpSZXZpZXdlZC1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5z
b3V6YUBpbnRlbC5jb20+DQoNCj4gDQo+IENjOiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3Nl
LnNvdXphQGludGVsLmNvbT4NCj4gU2lnbmVkLW9mZi1ieTogSW1yZSBEZWFrIDxpbXJlLmRlYWtA
aW50ZWwuY29tPg0KPiBTaWduZWQtb2ZmLWJ5OiBNYXR0IFJvcGVyIDxtYXR0aGV3LmQucm9wZXJA
aW50ZWwuY29tPg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGRpLmMgfCAzNiArKysrKysrKysrKysrKysrKysrKysrLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfcmVnLmggICAgICAgICAgfCAgMSArDQo+ICAyIGZpbGVzIGNoYW5nZWQsIDM0IGlu
c2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGRpLmMNCj4gaW5kZXggZTBhZGIxNGVjZDBkLi4zZDg5MTg2NzQxNTMgMTAw
NjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMNCj4g
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYw0KPiBAQCAtMjQ5
LDYgKzI0OSwzMSBAQCBzdGF0aWMgdTMyIGljbF9wbGxfdG9fZGRpX2Nsa19zZWwoc3RydWN0IGlu
dGVsX2VuY29kZXIgKmVuY29kZXIsDQo+ICAJfQ0KPiAgfQ0KPiAgDQo+ICtzdGF0aWMgdTMyIGRk
aV9idWZfcGh5X2xpbmtfcmF0ZShpbnQgcG9ydF9jbG9jaykNCj4gK3sNCj4gKwlzd2l0Y2ggKHBv
cnRfY2xvY2spIHsNCj4gKwljYXNlIDE2MjAwMDoNCj4gKwkJcmV0dXJuIERESV9CVUZfUEhZX0xJ
TktfUkFURSgwKTsNCj4gKwljYXNlIDIxNjAwMDoNCj4gKwkJcmV0dXJuIERESV9CVUZfUEhZX0xJ
TktfUkFURSg0KTsNCj4gKwljYXNlIDI0MzAwMDoNCj4gKwkJcmV0dXJuIERESV9CVUZfUEhZX0xJ
TktfUkFURSg1KTsNCj4gKwljYXNlIDI3MDAwMDoNCj4gKwkJcmV0dXJuIERESV9CVUZfUEhZX0xJ
TktfUkFURSgxKTsNCj4gKwljYXNlIDMyNDAwMDoNCj4gKwkJcmV0dXJuIERESV9CVUZfUEhZX0xJ
TktfUkFURSg2KTsNCj4gKwljYXNlIDQzMjAwMDoNCj4gKwkJcmV0dXJuIERESV9CVUZfUEhZX0xJ
TktfUkFURSg3KTsNCj4gKwljYXNlIDU0MDAwMDoNCj4gKwkJcmV0dXJuIERESV9CVUZfUEhZX0xJ
TktfUkFURSgyKTsNCj4gKwljYXNlIDgxMDAwMDoNCj4gKwkJcmV0dXJuIERESV9CVUZfUEhZX0xJ
TktfUkFURSgzKTsNCj4gKwlkZWZhdWx0Og0KPiArCQlNSVNTSU5HX0NBU0UocG9ydF9jbG9jayk7
DQo+ICsJCXJldHVybiBERElfQlVGX1BIWV9MSU5LX1JBVEUoMCk7DQo+ICsJfQ0KPiArfQ0KPiAr
DQo+ICBzdGF0aWMgdm9pZCBpbnRlbF9kZGlfaW5pdF9kcF9idWZfcmVnKHN0cnVjdCBpbnRlbF9l
bmNvZGVyICplbmNvZGVyLA0KPiAgCQkJCSAgICAgIGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0
YXRlICpjcnRjX3N0YXRlKQ0KPiAgew0KPiBAQCAtMjYxLDkgKzI4NiwxMSBAQCBzdGF0aWMgdm9p
ZCBpbnRlbF9kZGlfaW5pdF9kcF9idWZfcmVnKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVy
LA0KPiAgCQlERElfQlVGX0NUTF9FTkFCTEUgfCBERElfQlVGX1RSQU5TX1NFTEVDVCgwKTsNCj4g
IAlpbnRlbF9kcC0+RFAgfD0gRERJX1BPUlRfV0lEVEgoY3J0Y19zdGF0ZS0+bGFuZV9jb3VudCk7
DQo+ICANCj4gLQlpZiAoSVNfQUxERVJMQUtFX1AoaTkxNSkgJiYNCj4gLQkgICAgaW50ZWxfcGh5
X2lzX3RjKGk5MTUsIHBoeSkgJiYgZGlnX3BvcnQtPnRjX21vZGUgIT0gVENfUE9SVF9UQlRfQUxU
KQ0KPiAtCQlpbnRlbF9kcC0+RFAgfD0gRERJX0JVRl9DVExfVENfUEhZX09XTkVSU0hJUDsNCj4g
KwlpZiAoSVNfQUxERVJMQUtFX1AoaTkxNSkgJiYgaW50ZWxfcGh5X2lzX3RjKGk5MTUsIHBoeSkp
IHsNCj4gKwkJaW50ZWxfZHAtPkRQIHw9IGRkaV9idWZfcGh5X2xpbmtfcmF0ZShjcnRjX3N0YXRl
LT5wb3J0X2Nsb2NrKTsNCj4gKwkJaWYgKGRpZ19wb3J0LT50Y19tb2RlICE9IFRDX1BPUlRfVEJU
X0FMVCkNCj4gKwkJCWludGVsX2RwLT5EUCB8PSBERElfQlVGX0NUTF9UQ19QSFlfT1dORVJTSElQ
Ow0KPiArCX0NCj4gIH0NCj4gIA0KPiAgc3RhdGljIGludCBpY2xfY2FsY190YnRfcGxsX2xpbmso
c3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LA0KPiBAQCAtMzE2OCw2ICszMTk1LDkg
QEAgc3RhdGljIHZvaWQgaW50ZWxfZW5hYmxlX2RkaV9oZG1pKHN0cnVjdCBpbnRlbF9hdG9taWNf
c3RhdGUgKnN0YXRlLA0KPiAgCS8qIEluIEhETUkvRFZJIG1vZGUsIHRoZSBwb3J0IHdpZHRoLCBh
bmQgc3dpbmcvZW1waGFzaXMgdmFsdWVzDQo+ICAJICogYXJlIGlnbm9yZWQgc28gbm90aGluZyBz
cGVjaWFsIG5lZWRzIHRvIGJlIGRvbmUgYmVzaWRlcw0KPiAgCSAqIGVuYWJsaW5nIHRoZSBwb3J0
Lg0KPiArCSAqDQo+ICsJICogT24gQURMX1AgdGhlIFBIWSBsaW5rIHJhdGUgYW5kIGxhbmUgY291
bnQgbXVzdCBiZSBwcm9ncmFtbWVkIGJ1dA0KPiArCSAqIHRoZXNlIGFyZSBib3RoIDAgZm9yIEhE
TUkuDQo+ICAJICovDQo+ICAJaW50ZWxfZGVfd3JpdGUoZGV2X3ByaXYsIERESV9CVUZfQ1RMKHBv
cnQpLA0KPiAgCQkgICAgICAgZGlnX3BvcnQtPnNhdmVkX3BvcnRfYml0cyB8IERESV9CVUZfQ1RM
X0VOQUJMRSk7DQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5o
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaA0KPiBpbmRleCAwNjNmNTZhMzAxZmIu
LjliOGRhNGE2YTBhZSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9y
ZWcuaA0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oDQo+IEBAIC0xMDE4
Myw2ICsxMDE4Myw3IEBAIGVudW0gc2tsX3Bvd2VyX2dhdGUgew0KPiAgI2RlZmluZSAgRERJX0JV
Rl9DVExfRU5BQkxFCQkJKDEgPDwgMzEpDQo+ICAjZGVmaW5lICBERElfQlVGX1RSQU5TX1NFTEVD
VChuKQkoKG4pIDw8IDI0KQ0KPiAgI2RlZmluZSAgRERJX0JVRl9FTVBfTUFTSwkJCSgweGYgPDwg
MjQpDQo+ICsjZGVmaW5lICBERElfQlVGX1BIWV9MSU5LX1JBVEUocikJCSgocikgPDwgMjApDQo+
ICAjZGVmaW5lICBERElfQlVGX1BPUlRfUkVWRVJTQUwJCQkoMSA8PCAxNikNCj4gICNkZWZpbmUg
IERESV9CVUZfSVNfSURMRQkJCSgxIDw8IDcpDQo+ICAjZGVmaW5lICBERElfQlVGX0NUTF9UQ19Q
SFlfT1dORVJTSElQCQlSRUdfQklUKDYpDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLWdmeAo=
