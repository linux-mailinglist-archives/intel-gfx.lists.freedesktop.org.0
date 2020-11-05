Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 11B602A8638
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Nov 2020 19:41:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DB8F46EDDE;
	Thu,  5 Nov 2020 18:40:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0AEFC6E138
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Nov 2020 18:40:58 +0000 (UTC)
IronPort-SDR: 48g6lQ6PRL3f8j1ayLFwb4/c2uhFwNpxCE/M0ZZemTxn5wGwKAuLh9nLNTplwxyYCwygxaBwfW
 wx9SysEShLnQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9796"; a="187350009"
X-IronPort-AV: E=Sophos;i="5.77,454,1596524400"; d="scan'208";a="187350009"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2020 10:40:57 -0800
IronPort-SDR: XLpUV/9cmXEX33nPPGC2YmiARZ2+zanA1HlnqAcyLZL6vc6zzT+k/gBgl6dJZugWQ6sOZRC3wq
 AVItp4MXF/eA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,454,1596524400"; d="scan'208";a="321318666"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by orsmga003.jf.intel.com with ESMTP; 05 Nov 2020 10:40:56 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 5 Nov 2020 10:40:56 -0800
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 5 Nov 2020 10:40:55 -0800
Received: from bgsmsx604.gar.corp.intel.com ([10.67.234.6]) by
 BGSMSX604.gar.corp.intel.com ([10.67.234.6]) with mapi id 15.01.1713.004;
 Fri, 6 Nov 2020 00:10:52 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Souza, Jose" <jose.souza@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 1/2] drm/i915/display/tgl: Disable FBC with
 PSR2
Thread-Index: AQHWst+8uNvzKg5dCEma6k3N1EMOxKm5WaKAgABg54D//7h9gIAAbOdQ
Date: Thu, 5 Nov 2020 18:40:52 +0000
Message-ID: <2d731ca39bfa4ddeaf20a04e92250bef@intel.com>
References: <20201104195604.3334-1-uma.shankar@intel.com>
 <20201104195604.3334-2-uma.shankar@intel.com>
 <e878e9da4dc6ff8cd139d661ac5ba7d2469f7745.camel@intel.com>
 <515ba1d3643b4c299022d52630fe73ba@intel.com>
 <3d3e70f2fbeb653b96f3e2755a3eaf8d70cf0c3c.camel@intel.com>
In-Reply-To: <3d3e70f2fbeb653b96f3e2755a3eaf8d70cf0c3c.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
x-originating-ip: [10.223.10.1]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/display/tgl: Disable FBC with
 PSR2
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
c2Uuc291emFAaW50ZWwuY29tPg0KPiBTZW50OiBUaHVyc2RheSwgTm92ZW1iZXIgNSwgMjAyMCAx
MTowOSBQTQ0KPiBUbzogU2hhbmthciwgVW1hIDx1bWEuc2hhbmthckBpbnRlbC5jb20+OyBpbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IFN1YmplY3Q6IFJlOiBbSW50ZWwtZ2Z4XSBb
UEFUQ0ggMS8yXSBkcm0vaTkxNS9kaXNwbGF5L3RnbDogRGlzYWJsZSBGQkMgd2l0aCBQU1IyDQo+
IA0KPiBPbiBUaHUsIDIwMjAtMTEtMDUgYXQgMjE6NTcgKzA1MzAsIFNoYW5rYXIsIFVtYSB3cm90
ZToNCj4gPg0KPiA+ID4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gPiA+IEZyb206IFNv
dXphLCBKb3NlIDxqb3NlLnNvdXphQGludGVsLmNvbT4NCj4gPiA+IFNlbnQ6IFRodXJzZGF5LCBO
b3ZlbWJlciA1LCAyMDIwIDk6MzggUE0NCj4gPiA+IFRvOiBTaGFua2FyLCBVbWEgPHVtYS5zaGFu
a2FyQGludGVsLmNvbT47DQo+ID4gPiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+
ID4gPiBTdWJqZWN0OiBSZTogW0ludGVsLWdmeF0gW1BBVENIIDEvMl0gZHJtL2k5MTUvZGlzcGxh
eS90Z2w6IERpc2FibGUNCj4gPiA+IEZCQyB3aXRoIFBTUjINCj4gPiA+DQo+ID4gPiBPbiBUaHUs
IDIwMjAtMTEtMDUgYXQgMDE6MjYgKzA1MzAsIFVtYSBTaGFua2FyIHdyb3RlOg0KPiA+ID4gPiBU
aGVyZSBhcmUgc29tZSBjb3JuZXIgY2FzZXMgd3J0IHVuZGVycnVuIHdoZW4gd2UgZW5hYmxlIEZC
QyB3aXRoDQo+ID4gPiA+IFBTUjIgb24gVEdMLiBSZWNvbW1lbmRhdGlvbiBmcm9tIGhhcmR3YXJl
IGlzIHRvIGtlZXAgdGhpcw0KPiA+ID4gPiBjb21iaW5hdGlvbiBkaXNhYmxlZC4NCj4gPiA+DQo+
ID4gPiBEbyB5b3UgaGF2ZSBhbnkgcmVmZXJlbmNlcyB0byB0aGlzPyBIU0Q/IEJTcGVjPw0KPiA+
DQo+ID4gSGkgSm9zZSwNCj4gPiBCZWxvdyBpcyB0aGUgSFNEIGZvciB0aGUgc2FtZToNCj4gPiBo
dHRwczovL2hzZGVzLmludGVsLmNvbS9hcHBzdG9yZS9hcnRpY2xlLyMvMTQwMTAyNjAwMDINCj4g
Pg0KPiA+IFdpbGwgYWRkIHRoZSBsaW5rIGluIHBhdGNoIGFzIHdlbGwuDQo+IA0KPiBJIGhhdmUg
Y29tbWVudGVkIGluIHRoYXQgSFNEIGluIHRoZSBwYXN0LCBpdCBsb29rZWQgdG8gbWUgdGhhdCB3
ZSB3ZXJlIG5vdA0KPiBhZmZlY3RlZCBieSB0aGF0IGFzIHRoYXQgSFNEIHJlZmVycyB0byBHRU4x
MSsuIEFsc28gdGhhdCBIU0QgbG9va3Mgb2RkIHRoZXJlIGlzDQo+IG5vIHJlYWwgcmVwb3J0IG9m
IGlzc3VlIHRoZXJlLg0KPiANCj4gQXJlIHlvdSBzdXJlIHRoYXQgdGhlIEZCQyB1bmRlcnJ1bnMg
YXJlIGJlY2F1c2Ugb2YgUFNSMj8gTm90IGFsbCBUR0wgc3lzdGVtcyBpbg0KPiBDSSBoYXZlIGEg
UFNSMiBwYW5lbCwgcGxlYXNlIG1ha2Ugc3VyZSB3ZSBhcmUgbm90IGRpc2FibGluZyBGQkMgaW4g
dmFpbi4NCg0KWWVhaCB3ZSBoYWQgc2ltaWxhciBjb25jZXJuIGFuZCByYWlzZWQgaXQgdXAgd2l0
aCBoYXJkd2FyZSBkZXNpZ24gdGVhbS4gVGhleSBhcmUgdGFraW5nIGl0DQpmb3J3YXJkIHRvIGdl
dCB0aGlzIG9mZmljaWFsbHkgZG9jdW1lbnRlZCBpbiBzcGVjLiBGb3J3YXJkZWQgeW91IGFuIG9m
ZmxpbmUgaW50ZXJuYWwgbWFpbCByZWdhcmRpbmcgdGhpcy4NCg0KPiA+DQo+ID4gUmVnYXJkcywN
Cj4gPiBVbWEgU2hhbmthcg0KPiA+ID4NCj4gPiA+ID4NCj4gPiA+ID4gU2lnbmVkLW9mZi1ieTog
VW1hIFNoYW5rYXIgPHVtYS5zaGFua2FyQGludGVsLmNvbT4NCj4gPiA+ID4gLS0tDQo+ID4gPiA+
IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmMuYyB8IDYgKysrKysrDQo+
ID4gPiA+IMKgMSBmaWxlIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKQ0KPiA+ID4gPg0KPiA+ID4g
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmMuYw0K
PiA+ID4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMNCj4gPiA+
ID4gaW5kZXggYTViMDcyODE2YTdiLi4zMmM0MTE0MTQ5MDggMTAwNjQ0DQo+ID4gPiA+IC0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMNCj4gPiA+ID4gKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmMuYw0KPiA+ID4gPiBAQCAtNzk5
LDYgKzc5OSwxMiBAQCBzdGF0aWMgYm9vbCBpbnRlbF9mYmNfY2FuX2FjdGl2YXRlKHN0cnVjdA0K
PiA+ID4gPiBpbnRlbF9jcnRjDQo+ID4gPiAqY3J0YykNCj4gPiA+ID4gwqAJc3RydWN0IGludGVs
X2ZiYyAqZmJjID0gJmRldl9wcml2LT5mYmM7DQo+ID4gPiA+IMKgCXN0cnVjdCBpbnRlbF9mYmNf
c3RhdGVfY2FjaGUgKmNhY2hlID0gJmZiYy0+c3RhdGVfY2FjaGU7DQo+ID4gPiA+DQo+ID4gPiA+
DQo+ID4gPiA+DQo+ID4gPiA+DQo+ID4gPiA+ICsJaWYgKGRldl9wcml2LT5wc3Iuc2lua19wc3Iy
X3N1cHBvcnQgJiYNCj4gPiA+ID4gKwkgICAgSVNfVElHRVJMQUtFKGRldl9wcml2KSkgew0KPiA+
ID4gPiArCQlmYmMtPm5vX2ZiY19yZWFzb24gPSAibm90IHN1cHBvcnRlZCB3aXRoIFBTUjIiOw0K
PiA+ID4gPiArCQlyZXR1cm4gZmFsc2U7DQo+ID4gPiA+ICsJfQ0KPiA+ID4gPiArDQo+ID4gPiA+
IMKgCWlmICghaW50ZWxfZmJjX2Nhbl9lbmFibGUoZGV2X3ByaXYpKQ0KPiA+ID4gPiDCoAkJcmV0
dXJuIGZhbHNlOw0KPiA+ID4gPg0KPiA+ID4gPg0KPiA+ID4gPg0KPiA+ID4gPg0KPiA+DQoNCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
