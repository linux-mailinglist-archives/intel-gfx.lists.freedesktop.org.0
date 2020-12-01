Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 982272CA892
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Dec 2020 17:48:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E10276E82F;
	Tue,  1 Dec 2020 16:48:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A191E6E82F
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Dec 2020 16:48:35 +0000 (UTC)
IronPort-SDR: uEYYNAFEFZC/UQxY9s8HtADtbqmJxYdjjEnO2AeAsGiHUL/yyJxCcFg/ZAKAEt1jUU+vuVuwjq
 4+zjPb0DV9SA==
X-IronPort-AV: E=McAfee;i="6000,8403,9822"; a="234467904"
X-IronPort-AV: E=Sophos;i="5.78,384,1599548400"; d="scan'208";a="234467904"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2020 08:48:32 -0800
IronPort-SDR: Ajdv2y7BvU1pmg6FdyugryZY6khOZRZhIMazyUKG3H0I8iz94VyCRUKLC30fuuP9+LU0vSfhtR
 TJTCvZioer8A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,384,1599548400"; d="scan'208";a="373007441"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by FMSMGA003.fm.intel.com with ESMTP; 01 Dec 2020 08:48:32 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 1 Dec 2020 08:48:31 -0800
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 1 Dec 2020 08:48:30 -0800
Received: from bgsmsx604.gar.corp.intel.com ([10.67.234.6]) by
 BGSMSX604.gar.corp.intel.com ([10.67.234.6]) with mapi id 15.01.1713.004;
 Tue, 1 Dec 2020 22:18:28 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Souza, Jose" <jose.souza@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [v5 1/2] drm/i915/display/tgl: Disable FBC with PSR2
Thread-Index: AQHWx/0E+envFgrOxkuDKjCHSz2J2qniFfCAgABdSmA=
Date: Tue, 1 Dec 2020 16:48:28 +0000
Message-ID: <f8a6fe44c59a499193ed7be480514247@intel.com>
References: <20201201164749.32702-1-uma.shankar@intel.com>
 <20201201164749.32702-2-uma.shankar@intel.com>
 <91b9b8a64eec22179d5522cbc6570e737ed5139f.camel@intel.com>
In-Reply-To: <91b9b8a64eec22179d5522cbc6570e737ed5139f.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
x-originating-ip: [10.223.10.1]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [v5 1/2] drm/i915/display/tgl: Disable FBC with PSR2
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogU291emEsIEpvc2UgPGpv
c2Uuc291emFAaW50ZWwuY29tPg0KPiBTZW50OiBUdWVzZGF5LCBEZWNlbWJlciAxLCAyMDIwIDEw
OjEzIFBNDQo+IFRvOiBTaGFua2FyLCBVbWEgPHVtYS5zaGFua2FyQGludGVsLmNvbT47IGludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gQ2M6IHZpbGxlLnN5cmphbGFAbGludXguaW50
ZWwuY29tDQo+IFN1YmplY3Q6IFJlOiBbdjUgMS8yXSBkcm0vaTkxNS9kaXNwbGF5L3RnbDogRGlz
YWJsZSBGQkMgd2l0aCBQU1IyDQo+IA0KPiBPbiBUdWUsIDIwMjAtMTItMDEgYXQgMjI6MTcgKzA1
MzAsIFVtYSBTaGFua2FyIHdyb3RlOg0KPiA+IFRoZXJlIGFyZSBzb21lIGNvcm5lciBjYXNlcyB3
cnQgdW5kZXJydW4gd2hlbiB3ZSBlbmFibGUgRkJDIHdpdGggUFNSMg0KPiA+IG9uIFRHTC4gUmVj
b21tZW5kYXRpb24gZnJvbSBoYXJkd2FyZSBpcyB0byBrZWVwIHRoaXMgY29tYmluYXRpb24NCj4g
PiBkaXNhYmxlZC4NCj4gPg0KPiA+IEJzcGVjOiA1MDQyMiBIU0Q6IDE0MDEwMjYwMDAyDQo+ID4N
Cj4gPiB2MjogQWRkZWQgcHNyMiBlbmFibGVkIGNoZWNrIGZyb20gY3J0Y19zdGF0ZSAoQW5zaHVt
YW4pIEFkZGVkIEJzcGVjDQo+ID4gbGluayBhbmQgSFNEIHJlZmVybmVjZXMgKEpvc2UpDQo+ID4N
Cj4gPiB2MzogTW92ZWQgdGhlIGxvZ2ljIHRvIGRpc2FibGUgZmJjIHRvIGludGVsX2ZiY191cGRh
dGVfc3RhdGVfY2FjaGUgYW5kDQo+ID4gcmVtb3ZlZCB0aGUgY3J0Yy0+Y29uZmlnIHVzYWdlcywg
YXMgcGVyIFZpbGxlJ3MgcmVjb21tZW5kYXRpb24uDQo+ID4NCj4gPiB2NDogSW50cm9kdWNlZCBh
IHZhcmlhYmxlIGluIGZiYyBzdGF0ZV9jYWNoZSBpbnN0ZWFkIG9mIHRoZSBlYXJsaWVyDQo+ID4g
cGxhbmUudmlzaWJsZSBXQSwgYXMgc3VnZ2VzdGVkIGJ5IEpvc2UuDQo+ID4NCj4gPiB2NTogRHJv
cHBlZCBhbiBleHRyYSBjaGVjayBmb3IgZmJjIGluIGludGVsX2ZiY19lbmFibGUgYW5kIGFkZHJl
c3NlZA0KPiA+IHJldmlldyBjb21tZW50cyBieSBKb3NlLg0KPiA+DQo+ID4gU2lnbmVkLW9mZi1i
eTogVW1hIFNoYW5rYXIgPHVtYS5zaGFua2FyQGludGVsLmNvbT4NCj4gPiAtLS0NCj4gPiDCoGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMgfCAxMiArKysrKysrKysrKysN
Cj4gPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmggICAgICAgICAgfCAgMSArDQo+
ID4gwqAyIGZpbGVzIGNoYW5nZWQsIDEzIGluc2VydGlvbnMoKykNCj4gPg0KPiA+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5jDQo+ID4gYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5jDQo+ID4gaW5kZXggYTViMDcyODE2
YTdiLi42MTFjYWRjNWM3MGEgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9mYmMuYw0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZmJjLmMNCj4gPiBAQCAtNzQyLDYgKzc0Miw4IEBAIHN0YXRpYyB2b2lkIGludGVs
X2ZiY191cGRhdGVfc3RhdGVfY2FjaGUoc3RydWN0DQo+IGludGVsX2NydGMgKmNydGMsDQo+ID4g
wqAJCWNhY2hlLT5mZW5jZV9pZCA9IHBsYW5lX3N0YXRlLT52bWEtPmZlbmNlLT5pZDsNCj4gPiDC
oAllbHNlDQo+ID4gwqAJCWNhY2hlLT5mZW5jZV9pZCA9IC0xOw0KPiA+ICsNCj4gPiArCWNhY2hl
LT5wc3IyX2FjdGl2ZSA9IGNydGNfc3RhdGUtPmhhc19wc3IyOw0KPiA+IMKgfQ0KPiA+DQo+ID4N
Cj4gPg0KPiA+DQo+ID4gwqBzdGF0aWMgYm9vbCBpbnRlbF9mYmNfY2ZiX3NpemVfY2hhbmdlZChz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZQ0KPiA+ICpkZXZfcHJpdikgQEAgLTc5OSw2ICs4MDEsMTYg
QEAgc3RhdGljIGJvb2wgaW50ZWxfZmJjX2Nhbl9hY3RpdmF0ZShzdHJ1Y3QNCj4gaW50ZWxfY3J0
YyAqY3J0YykNCj4gPiDCoAlzdHJ1Y3QgaW50ZWxfZmJjICpmYmMgPSAmZGV2X3ByaXYtPmZiYzsN
Cj4gPiDCoAlzdHJ1Y3QgaW50ZWxfZmJjX3N0YXRlX2NhY2hlICpjYWNoZSA9ICZmYmMtPnN0YXRl
X2NhY2hlOw0KPiA+DQo+ID4NCj4gPg0KPiA+DQo+ID4gKwkvKg0KPiA+ICsJICogVGlnZXJsYWtl
IGlzIG5vdCBzdXBwb3J0aW5nIEZCQyB3aXRoIFBTUjIuDQo+ID4gKwkgKiBSZWNvbW1lbmRhdGlv
biBpcyB0byBrZWVwIHRoaXMgY29tYmluYXRpb24gZGlzYWJsZWQNCj4gPiArCSAqIEJzcGVjOiA1
MDQyMiBIU0Q6IDE0MDEwMjYwMDAyDQo+ID4gKwkgKi8NCj4gPiArCWlmIChmYmMtPnN0YXRlX2Nh
Y2hlLnBzcjJfYWN0aXZlICYmIElTX1RJR0VSTEFLRShkZXZfcHJpdikpIHsNCj4gPiArCQlmYmMt
Pm5vX2ZiY19yZWFzb24gPSAibm90IHN1cHBvcnRlZCB3aXRoIFBTUjIiOw0KPiA+ICsJCXJldHVy
biBmYWxzZTsNCj4gPiArCX0NCj4gDQo+IE5pdHBpY2s6IGFsbCBuZXcgcmVzdHJpY3Rpb25zIGFy
ZSBhZGRlZCBhdCB0aGUgYm90dG9tIGxldHMgZm9sbG93IGl0Lg0KDQpTdXJlLCB3aWxsIHVwZGF0
ZSB0aGF0Lg0KDQo+IFdpdGggdGhpcyBjaGFuZ2UgeW91IGNhbiBhZGQgbXkgcnZiIGluIGJvdGgg
cGF0Y2hlcy4NCj4gUmV2aWV3ZWQtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291
emFAaW50ZWwuY29tPg0KDQpUaGFua3MgSm9zZSBmb3IgdGhlIHJldmlldy4NCg0KUmVnYXJkcywN
ClVtYSBTaGFua2FyDQo+IA0KPiANCj4gPiArDQo+ID4gwqAJaWYgKCFpbnRlbF9mYmNfY2FuX2Vu
YWJsZShkZXZfcHJpdikpDQo+ID4gwqAJCXJldHVybiBmYWxzZTsNCj4gPg0KPiA+DQo+ID4NCj4g
Pg0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oDQo+ID4g
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oIGluZGV4IDE1YmU4ZGViYWU1NC4uZjRl
MDhjMWE1ODY3DQo+ID4gMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9kcnYuaA0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgNCj4gPiBA
QCAtNDE2LDYgKzQxNiw3IEBAIHN0cnVjdCBpbnRlbF9mYmMgew0KPiA+IMKgCQl1MTYgZ2VuOV93
YV9jZmJfc3RyaWRlOw0KPiA+IMKgCQl1MTYgaW50ZXJ2YWw7DQo+ID4gwqAJCXM4IGZlbmNlX2lk
Ow0KPiA+ICsJCWJvb2wgcHNyMl9hY3RpdmU7DQo+ID4gwqAJfSBzdGF0ZV9jYWNoZTsNCj4gPg0K
PiA+DQo+ID4NCj4gPg0KPiA+IMKgCS8qDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLWdmeAo=
