Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F977440538
	for <lists+intel-gfx@lfdr.de>; Sat, 30 Oct 2021 00:00:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 748C76EA85;
	Fri, 29 Oct 2021 21:59:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2B1946EA85
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Oct 2021 21:59:58 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10152"; a="211531168"
X-IronPort-AV: E=Sophos;i="5.87,193,1631602800"; d="scan'208";a="211531168"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2021 14:59:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,193,1631602800"; d="scan'208";a="538861809"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by fmsmga008.fm.intel.com with ESMTP; 29 Oct 2021 14:59:57 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Fri, 29 Oct 2021 14:59:56 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Fri, 29 Oct 2021 14:59:56 -0700
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2242.012;
 Fri, 29 Oct 2021 14:59:56 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 10/16] drm/i915: Query the vswing levels
 per-lane for tgl dkl phy
Thread-Index: AQHXuvPLj5vO+mA32UyTR4pr/v4esKvrIdkA
Date: Fri, 29 Oct 2021 21:59:56 +0000
Message-ID: <38ef80458680da6ff310824baf4baf6b3e49e9ec.camel@intel.com>
References: <20211006204937.30774-1-ville.syrjala@linux.intel.com>
 <20211006204937.30774-11-ville.syrjala@linux.intel.com>
In-Reply-To: <20211006204937.30774-11-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.132]
Content-Type: text/plain; charset="utf-8"
Content-ID: <AC615ADC3E02A34C9755BE227A7C0DDD@intel.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 10/16] drm/i915: Query the vswing levels
 per-lane for tgl dkl phy
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

T24gV2VkLCAyMDIxLTEwLTA2IGF0IDIzOjQ5ICswMzAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOg0K
PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiANCj4gUHJlcGFyZSBmb3IgcGVyLWxhbmUgZHJpdmUgc2V0dGluZ3MgYnkgcXVlcnlpbmcgdGhl
IGRlc2lyZWQgdnN3aW5nDQo+IGxldmVsIHBlci1sYW5lLg0KPiANCj4gTm90ZSB0aGF0IHRoZSBj
b2RlIG9ubHkgZG9lcyB0d28gbG9vcHMsIHdpdGggZWFjaCBvbmUgd3JpdGluZyB0aGUNCj4gbGV2
ZWxzIGZvciB0d28gVFggbGFuZXMuIFRoZSByZWdpc3RlciBvZmZzZXRzIGFsc28gbG9vayBhIGJp
dCBmdW5ueQ0KPiBiZWNhdXNlIGVhY2ggdGltZSB0aHJvdWdoIHRoZSBsb29wIHdlIHdyaXRlIHRv
IHRoZSBleGFjdCBzYW1lDQo+IHJlZ2lzdGVyIG9mZnNldHMuIFRoZSBjcnVjaWFsIGJpdCBpcyB0
aGUgSElQX0lOREVYX1JFRw0KPiB3cml0ZSB0aGF0IHN0ZWVycyB0aGUgc2FtZSBtbWlvIHdpbmRv
dyBpbnRvIGRpZmZlcmVudCBwbGFjZXMuDQoNClJldmlld2VkLWJ5OiBKb3PDqSBSb2JlcnRvIGRl
IFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4NCg0KPiANCj4gU2lnbmVkLW9mZi1ieTogVmls
bGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gLS0tDQo+ICBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jIHwgMzMgKysrKysrKysrKysr
KystLS0tLS0tLS0tDQo+ICAxIGZpbGUgY2hhbmdlZCwgMTkgaW5zZXJ0aW9ucygrKSwgMTQgZGVs
ZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kZGkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMN
Cj4gaW5kZXggMTg3NGEyY2E4ZjNiLi44NTI0Nzc0NGU5ZGQgMTAwNjQ0DQo+IC0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMNCj4gKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYw0KPiBAQCAtMTI5NSw5ICsxMjk1LDcgQEAgc3Rh
dGljIHZvaWQgdGdsX2RrbF9waHlfc2V0X3NpZ25hbF9sZXZlbHMoc3RydWN0IGludGVsX2VuY29k
ZXIgKmVuY29kZXIsDQo+ICB7DQo+ICAJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2
ID0gdG9faTkxNShlbmNvZGVyLT5iYXNlLmRldik7DQo+ICAJZW51bSB0Y19wb3J0IHRjX3BvcnQg
PSBpbnRlbF9wb3J0X3RvX3RjKGRldl9wcml2LCBlbmNvZGVyLT5wb3J0KTsNCj4gLQlpbnQgbGV2
ZWwgPSBpbnRlbF9kZGlfbGV2ZWwoZW5jb2RlciwgY3J0Y19zdGF0ZSwgMCk7DQo+ICAJY29uc3Qg
c3RydWN0IGludGVsX2RkaV9idWZfdHJhbnMgKnRyYW5zOw0KPiAtCXUzMiB2YWwsIGRwY250X21h
c2ssIGRwY250X3ZhbDsNCj4gIAlpbnQgbl9lbnRyaWVzLCBsbjsNCj4gIA0KPiAgCWlmIChpbnRl
bF90Y19wb3J0X2luX3RidF9hbHRfbW9kZShlbmNfdG9fZGlnX3BvcnQoZW5jb2RlcikpKQ0KPiBA
QCAtMTMwNywyOCArMTMwNSwzNSBAQCBzdGF0aWMgdm9pZCB0Z2xfZGtsX3BoeV9zZXRfc2lnbmFs
X2xldmVscyhzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwNCj4gIAlpZiAoZHJtX1dBUk5f
T05fT05DRSgmZGV2X3ByaXYtPmRybSwgIXRyYW5zKSkNCj4gIAkJcmV0dXJuOw0KPiAgDQo+IC0J
ZHBjbnRfbWFzayA9IChES0xfVFhfUFJFU0hPT1RfQ09FRkZfTUFTSyB8DQo+IC0JCSAgICAgIERL
TF9UWF9ERV9FTVBBSFNJU19DT0VGRl9NQVNLIHwNCj4gLQkJICAgICAgREtMX1RYX1ZTV0lOR19D
T05UUk9MX01BU0spOw0KPiAtCWRwY250X3ZhbCA9IERLTF9UWF9WU1dJTkdfQ09OVFJPTCh0cmFu
cy0+ZW50cmllc1tsZXZlbF0uZGtsLnZzd2luZyk7DQo+IC0JZHBjbnRfdmFsIHw9IERLTF9UWF9E
RV9FTVBIQVNJU19DT0VGRih0cmFucy0+ZW50cmllc1tsZXZlbF0uZGtsLmRlX2VtcGhhc2lzKTsN
Cj4gLQlkcGNudF92YWwgfD0gREtMX1RYX1BSRVNIT09UX0NPRUZGKHRyYW5zLT5lbnRyaWVzW2xl
dmVsXS5ka2wucHJlc2hvb3QpOw0KPiAtDQo+ICAJZm9yIChsbiA9IDA7IGxuIDwgMjsgbG4rKykg
ew0KPiArCQlpbnQgbGV2ZWw7DQo+ICsJCXUzMiB2YWw7DQo+ICsNCj4gIAkJaW50ZWxfZGVfd3Jp
dGUoZGV2X3ByaXYsIEhJUF9JTkRFWF9SRUcodGNfcG9ydCksDQo+ICAJCQkgICAgICAgSElQX0lO
REVYX1ZBTCh0Y19wb3J0LCBsbikpOw0KPiAgDQo+ICAJCWludGVsX2RlX3dyaXRlKGRldl9wcml2
LCBES0xfVFhfUE1EX0xBTkVfU1VTKHRjX3BvcnQpLCAwKTsNCj4gIA0KPiAtCQkvKiBBbGwgdGhl
IHJlZ2lzdGVycyBhcmUgUk1XICovDQo+ICsJCWxldmVsID0gaW50ZWxfZGRpX2xldmVsKGVuY29k
ZXIsIGNydGNfc3RhdGUsIDIqbG4rMCk7DQo+ICsNCj4gIAkJdmFsID0gaW50ZWxfZGVfcmVhZChk
ZXZfcHJpdiwgREtMX1RYX0RQQ05UTDAodGNfcG9ydCkpOw0KPiAtCQl2YWwgJj0gfmRwY250X21h
c2s7DQo+IC0JCXZhbCB8PSBkcGNudF92YWw7DQo+ICsJCXZhbCAmPSB+KERLTF9UWF9QUkVTSE9P
VF9DT0VGRl9NQVNLIHwNCj4gKwkJCSBES0xfVFhfREVfRU1QQUhTSVNfQ09FRkZfTUFTSyB8DQo+
ICsJCQkgREtMX1RYX1ZTV0lOR19DT05UUk9MX01BU0spOw0KPiArCQl2YWwgfD0gREtMX1RYX1ZT
V0lOR19DT05UUk9MKHRyYW5zLT5lbnRyaWVzW2xldmVsXS5ka2wudnN3aW5nKSB8DQo+ICsJCQlE
S0xfVFhfREVfRU1QSEFTSVNfQ09FRkYodHJhbnMtPmVudHJpZXNbbGV2ZWxdLmRrbC5kZV9lbXBo
YXNpcykgfA0KPiArCQkJREtMX1RYX1BSRVNIT09UX0NPRUZGKHRyYW5zLT5lbnRyaWVzW2xldmVs
XS5ka2wucHJlc2hvb3QpOw0KPiAgCQlpbnRlbF9kZV93cml0ZShkZXZfcHJpdiwgREtMX1RYX0RQ
Q05UTDAodGNfcG9ydCksIHZhbCk7DQo+ICANCj4gKwkJbGV2ZWwgPSBpbnRlbF9kZGlfbGV2ZWwo
ZW5jb2RlciwgY3J0Y19zdGF0ZSwgMipsbisxKTsNCj4gKw0KPiAgCQl2YWwgPSBpbnRlbF9kZV9y
ZWFkKGRldl9wcml2LCBES0xfVFhfRFBDTlRMMSh0Y19wb3J0KSk7DQo+IC0JCXZhbCAmPSB+ZHBj
bnRfbWFzazsNCj4gLQkJdmFsIHw9IGRwY250X3ZhbDsNCj4gKwkJdmFsICY9IH4oREtMX1RYX1BS
RVNIT09UX0NPRUZGX01BU0sgfA0KPiArCQkJIERLTF9UWF9ERV9FTVBBSFNJU19DT0VGRl9NQVNL
IHwNCj4gKwkJCSBES0xfVFhfVlNXSU5HX0NPTlRST0xfTUFTSyk7DQo+ICsJCXZhbCB8PSBES0xf
VFhfVlNXSU5HX0NPTlRST0wodHJhbnMtPmVudHJpZXNbbGV2ZWxdLmRrbC52c3dpbmcpIHwNCj4g
KwkJCURLTF9UWF9ERV9FTVBIQVNJU19DT0VGRih0cmFucy0+ZW50cmllc1tsZXZlbF0uZGtsLmRl
X2VtcGhhc2lzKSB8DQo+ICsJCQlES0xfVFhfUFJFU0hPT1RfQ09FRkYodHJhbnMtPmVudHJpZXNb
bGV2ZWxdLmRrbC5wcmVzaG9vdCk7DQo+ICAJCWludGVsX2RlX3dyaXRlKGRldl9wcml2LCBES0xf
VFhfRFBDTlRMMSh0Y19wb3J0KSwgdmFsKTsNCj4gIA0KPiAgCQl2YWwgPSBpbnRlbF9kZV9yZWFk
KGRldl9wcml2LCBES0xfVFhfRFBDTlRMMih0Y19wb3J0KSk7DQoNCg==
