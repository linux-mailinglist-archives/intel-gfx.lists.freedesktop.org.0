Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9466141A13C
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Sep 2021 23:16:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A9C9189CC9;
	Mon, 27 Sep 2021 21:16:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DBAD589CC9
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Sep 2021 21:16:49 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10120"; a="310115148"
X-IronPort-AV: E=Sophos;i="5.85,327,1624345200"; d="scan'208";a="310115148"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2021 14:16:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,327,1624345200"; d="scan'208";a="518735386"
Received: from irsmsx603.ger.corp.intel.com ([163.33.146.9])
 by fmsmga008.fm.intel.com with ESMTP; 27 Sep 2021 14:16:48 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 irsmsx603.ger.corp.intel.com (163.33.146.9) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Mon, 27 Sep 2021 22:16:46 +0100
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2242.012;
 Mon, 27 Sep 2021 14:16:45 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Deak, Imre" <imre.deak@intel.com>
Thread-Topic: [PATCH 07/13] drm/i915/tc: Add a mode for the TypeC PHY's
 disconnected state
Thread-Index: AQHXrn7mjM9prFOKd0GJlbH3sAKATKu44+kA
Date: Mon, 27 Sep 2021 21:16:45 +0000
Message-ID: <689f485c910ca7cce9793fecaa53778950242892.camel@intel.com>
References: <20210921002313.1132357-1-imre.deak@intel.com>
 <20210921002313.1132357-8-imre.deak@intel.com>
In-Reply-To: <20210921002313.1132357-8-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.132]
Content-Type: text/plain; charset="utf-8"
Content-ID: <6622481535FF7F4B82D761C9612175FE@intel.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 07/13] drm/i915/tc: Add a mode for the TypeC
 PHY's disconnected state
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCAyMDIxLTA5LTIxIGF0IDAzOjIzICswMzAwLCBJbXJlIERlYWsgd3JvdGU6DQo+IEEg
Zm9sbG93LXVwIGNoYW5nZSB3aWxsIHN0YXJ0IHRvIGRpc2Nvbm5lY3QvcmUtY29ubmVjdCBQSFlz
IGFyb3VuZCBBVVgNCj4gdHJhbnNmZXJzIGFuZCBtb2Rlc2V0IGVuYWJsZS9kaXNhYmxlcy4gVG8g
cHJlcGFyZSBmb3IgdGhhdCBhZGQgYSBuZXcNCj4gVHlwZUMgUEhZIGRpc2Nvbm5lY3RlZCBtb2Rl
LCB0byBoZWxwIHRyYWNraW5nIHRoZSBUQy1jb2xkIGJsb2NraW5nIHBvd2VyDQo+IGRvbWFpbiBz
dGF0dXMgKG5vIHBvd2VyIGRvbWFpbiBpbiBkaXNjb25uZWN0ZWQgc3RhdGUsIG1vZGUgZGVwZW5k
ZW50DQo+IHBvd2VyIGRvbWFpbiBpbiBjb25uZWN0ZWQgc3RhdGUpLg0KPiANCj4gQ2M6IEpvc8Op
IFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPg0KPiBTaWduZWQtb2ZmLWJ5
OiBJbXJlIERlYWsgPGltcmUuZGVha0BpbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmggfCAgMSArDQo+ICBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX3RjLmMgICAgICB8IDI2ICsrKysrKysrKysrKysrLS0tLS0t
DQo+ICAyIGZpbGVzIGNoYW5nZWQsIDE5IGluc2VydGlvbnMoKyksIDggZGVsZXRpb25zKC0pDQo+
IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNw
bGF5LmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuaA0KPiBp
bmRleCBkNDI1ZWU3N2FhZDcxLi44N2I5NmZlZDVlMGJhIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuaA0KPiArKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuaA0KPiBAQCAtMjcwLDYgKzI3MCw3IEBA
IGVudW0gdGNfcG9ydCB7DQo+ICB9Ow0KPiAgDQo+ICBlbnVtIHRjX3BvcnRfbW9kZSB7DQo+ICsJ
VENfUE9SVF9ESVNDT05ORUNURUQsDQo+ICAJVENfUE9SVF9UQlRfQUxULA0KPiAgCVRDX1BPUlRf
RFBfQUxULA0KPiAgCVRDX1BPUlRfTEVHQUNZLA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF90Yy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF90Yy5jDQo+IGluZGV4IGFhNGMxZTVlMGMwMDIuLjc3YjE2YTdjNDM0NjYgMTAwNjQ0
DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdGMuYw0KPiArKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3RjLmMNCj4gQEAgLTEyLDEzICsx
MiwxNCBAQA0KPiAgc3RhdGljIGNvbnN0IGNoYXIgKnRjX3BvcnRfbW9kZV9uYW1lKGVudW0gdGNf
cG9ydF9tb2RlIG1vZGUpDQo+ICB7DQo+ICAJc3RhdGljIGNvbnN0IGNoYXIgKiBjb25zdCBuYW1l
c1tdID0gew0KPiArCQlbVENfUE9SVF9ESVNDT05ORUNURURdID0gImRpc2Nvbm5lY3RlZCIsDQo+
ICAJCVtUQ19QT1JUX1RCVF9BTFRdID0gInRidC1hbHQiLA0KPiAgCQlbVENfUE9SVF9EUF9BTFRd
ID0gImRwLWFsdCIsDQo+ICAJCVtUQ19QT1JUX0xFR0FDWV0gPSAibGVnYWN5IiwNCj4gIAl9Ow0K
PiAgDQo+ICAJaWYgKFdBUk5fT04obW9kZSA+PSBBUlJBWV9TSVpFKG5hbWVzKSkpDQo+IC0JCW1v
ZGUgPSBUQ19QT1JUX1RCVF9BTFQ7DQo+ICsJCW1vZGUgPSBUQ19QT1JUX0RJU0NPTk5FQ1RFRDsN
Cj4gIA0KPiAgCXJldHVybiBuYW1lc1ttb2RlXTsNCj4gIH0NCj4gQEAgLTUxMywxMCArNTE0LDEx
IEBAIHN0YXRpYyB2b2lkIGljbF90Y19waHlfZGlzY29ubmVjdChzdHJ1Y3QgaW50ZWxfZGlnaXRh
bF9wb3J0ICpkaWdfcG9ydCkNCj4gIAljYXNlIFRDX1BPUlRfTEVHQUNZOg0KPiAgCWNhc2UgVENf
UE9SVF9EUF9BTFQ6DQo+ICAJCXRjX3BoeV90YWtlX293bmVyc2hpcChkaWdfcG9ydCwgZmFsc2Up
Ow0KPiAtCQlkaWdfcG9ydC0+dGNfbW9kZSA9IFRDX1BPUlRfVEJUX0FMVDsNCj4gLQkJYnJlYWs7
DQo+ICsJCWZhbGx0aHJvdWdoOw0KPiAgCWNhc2UgVENfUE9SVF9UQlRfQUxUOg0KPiAtCQkvKiBO
b3RoaW5nIHRvIGRvLCB3ZSBzdGF5IGluIFRCVC1hbHQgbW9kZSAqLw0KPiArCQlkaWdfcG9ydC0+
dGNfbW9kZSA9IFRDX1BPUlRfRElTQ09OTkVDVEVEOw0KPiArCQlmYWxsdGhyb3VnaDsNCj4gKwlj
YXNlIFRDX1BPUlRfRElTQ09OTkVDVEVEOg0KPiAgCQlicmVhazsNCj4gIAlkZWZhdWx0Og0KPiAg
CQlNSVNTSU5HX0NBU0UoZGlnX3BvcnQtPnRjX21vZGUpOw0KPiBAQCAtNjIxLDMxICs2MjMsMzQg
QEAgdm9pZCBpbnRlbF90Y19wb3J0X3Nhbml0aXplKHN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQg
KmRpZ19wb3J0KQ0KPiAgew0KPiAgCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0gdG9f
aTkxNShkaWdfcG9ydC0+YmFzZS5iYXNlLmRldik7DQo+ICAJc3RydWN0IGludGVsX2VuY29kZXIg
KmVuY29kZXIgPSAmZGlnX3BvcnQtPmJhc2U7DQo+IC0JaW50ZWxfd2FrZXJlZl90IHRjX2NvbGRf
d3JlZjsNCj4gIAlpbnQgYWN0aXZlX2xpbmtzID0gMDsNCj4gIA0KPiAgCW11dGV4X2xvY2soJmRp
Z19wb3J0LT50Y19sb2NrKTsNCj4gLQl0Y19jb2xkX3dyZWYgPSB0Y19jb2xkX2Jsb2NrKGRpZ19w
b3J0KTsNCj4gIA0KPiAtCWRpZ19wb3J0LT50Y19tb2RlID0gaW50ZWxfdGNfcG9ydF9nZXRfY3Vy
cmVudF9tb2RlKGRpZ19wb3J0KTsNCj4gIAlpZiAoZGlnX3BvcnQtPmRwLmlzX21zdCkNCj4gIAkJ
YWN0aXZlX2xpbmtzID0gaW50ZWxfZHBfbXN0X2VuY29kZXJfYWN0aXZlX2xpbmtzKGRpZ19wb3J0
KTsNCj4gIAllbHNlIGlmIChlbmNvZGVyLT5iYXNlLmNydGMpDQo+ICAJCWFjdGl2ZV9saW5rcyA9
IHRvX2ludGVsX2NydGMoZW5jb2Rlci0+YmFzZS5jcnRjKS0+YWN0aXZlOw0KPiAgDQo+ICsJZHJt
X1dBUk5fT04oJmk5MTUtPmRybSwgZGlnX3BvcnQtPnRjX21vZGUgIT0gVENfUE9SVF9ESVNDT05O
RUNURUQpOw0KPiAgCWlmIChhY3RpdmVfbGlua3MpIHsNCj4gKwkJaW50ZWxfd2FrZXJlZl90IHRj
X2NvbGRfd3JlZiA9IHRjX2NvbGRfYmxvY2soZGlnX3BvcnQpOw0KPiArDQo+ICsJCWRpZ19wb3J0
LT50Y19tb2RlID0gaW50ZWxfdGNfcG9ydF9nZXRfY3VycmVudF9tb2RlKGRpZ19wb3J0KTsNCj4g
Kw0KPiAgCQlpZiAoIWljbF90Y19waHlfaXNfY29ubmVjdGVkKGRpZ19wb3J0KSkNCj4gIAkJCWRy
bV9kYmdfa21zKCZpOTE1LT5kcm0sDQo+ICAJCQkJICAgICJQb3J0ICVzOiBQSFkgZGlzY29ubmVj
dGVkIHdpdGggJWQgYWN0aXZlIGxpbmsocylcbiIsDQo+ICAJCQkJICAgIGRpZ19wb3J0LT50Y19w
b3J0X25hbWUsIGFjdGl2ZV9saW5rcyk7DQo+ICAJCWludGVsX3RjX3BvcnRfbGlua19pbml0X3Jl
ZmNvdW50KGRpZ19wb3J0LCBhY3RpdmVfbGlua3MpOw0KPiArDQo+ICsJCXRjX2NvbGRfdW5ibG9j
ayhkaWdfcG9ydCwgdGNfY29sZF93cmVmKTsNCj4gIAl9DQo+ICANCj4gIAlkcm1fZGJnX2ttcygm
aTkxNS0+ZHJtLCAiUG9ydCAlczogc2FuaXRpemUgbW9kZSAoJXMpXG4iLA0KPiAgCQkgICAgZGln
X3BvcnQtPnRjX3BvcnRfbmFtZSwNCj4gIAkJICAgIHRjX3BvcnRfbW9kZV9uYW1lKGRpZ19wb3J0
LT50Y19tb2RlKSk7DQo+ICANCj4gLQl0Y19jb2xkX3VuYmxvY2soZGlnX3BvcnQsIHRjX2NvbGRf
d3JlZik7DQo+ICAJbXV0ZXhfdW5sb2NrKCZkaWdfcG9ydC0+dGNfbG9jayk7DQo+ICB9DQo+ICAN
Cj4gQEAgLTcwNCw2ICs3MDksMTAgQEAgc3RhdGljIHZvaWQgX19pbnRlbF90Y19wb3J0X2xvY2so
c3RydWN0IGludGVsX2RpZ2l0YWxfcG9ydCAqZGlnX3BvcnQsDQo+ICAJCXRjX2NvbGRfdW5ibG9j
ayhkaWdfcG9ydCwgdGNfY29sZF93cmVmKTsNCj4gIAl9DQo+ICANCj4gKwlkcm1fV0FSTl9PTigm
aTkxNS0+ZHJtLCBkaWdfcG9ydC0+dGNfbW9kZSA9PSBUQ19QT1JUX0RJU0NPTk5FQ1RFRCk7DQoN
ClRoaXMgd2FybmluZyB3aWxsIGJlIHByaW50ZWQgZXZlcnl0aW1lIGl0IGdvZXMgdG8gc3VzcGVu
ZCwgb3RoZXIgdGhhbiB0aGF0IGxndG0uDQoNCj4gKwlkcm1fV0FSTl9PTigmaTkxNS0+ZHJtLCBk
aWdfcG9ydC0+dGNfbW9kZSAhPSBUQ19QT1JUX1RCVF9BTFQgJiYNCj4gKwkJCQkhdGNfcGh5X2lz
X293bmVkKGRpZ19wb3J0KSk7DQo+ICsNCj4gIAlkcm1fV0FSTl9PTigmaTkxNS0+ZHJtLCBkaWdf
cG9ydC0+dGNfbG9ja193YWtlcmVmKTsNCj4gIAlkaWdfcG9ydC0+dGNfbG9ja193YWtlcmVmID0g
d2FrZXJlZjsNCj4gIH0NCj4gQEAgLTgxNiw2ICs4MjUsNyBAQCB2b2lkIGludGVsX3RjX3BvcnRf
aW5pdChzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9wb3J0ICpkaWdfcG9ydCwgYm9vbCBpc19sZWdhY3kp
DQo+ICANCj4gIAltdXRleF9pbml0KCZkaWdfcG9ydC0+dGNfbG9jayk7DQo+ICAJZGlnX3BvcnQt
PnRjX2xlZ2FjeV9wb3J0ID0gaXNfbGVnYWN5Ow0KPiArCWRpZ19wb3J0LT50Y19tb2RlID0gVENf
UE9SVF9ESVNDT05ORUNURUQ7DQo+ICAJZGlnX3BvcnQtPnRjX2xpbmtfcmVmY291bnQgPSAwOw0K
PiAgCXRjX3BvcnRfbG9hZF9maWFfcGFyYW1zKGk5MTUsIGRpZ19wb3J0KTsNCj4gIH0NCg0K
