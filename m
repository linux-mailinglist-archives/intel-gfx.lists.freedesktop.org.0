Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B83526BA4C
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Sep 2020 04:44:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 45CD56E96E;
	Wed, 16 Sep 2020 02:44:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 337506E96E
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Sep 2020 02:44:12 +0000 (UTC)
IronPort-SDR: xvRfkie//OASyzKMNlQpND01gfSGluDqQvZSikIn5apibAhJtQY/e6n0fPJEGGTJx0RBXTD7zV
 ouBvEDbpQSXQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9745"; a="158667758"
X-IronPort-AV: E=Sophos;i="5.76,430,1592895600"; d="scan'208";a="158667758"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2020 19:44:12 -0700
IronPort-SDR: 1L0EiCVCl2s84IXKlUMfBEdpuHujl7MGfpYXH5CtMDaDO6uY+NuL3KPU6zAmJh8nbxA+106oCu
 8DWUnHQM07dg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,430,1592895600"; d="scan'208";a="288217203"
Received: from irsmsx602.ger.corp.intel.com ([163.33.146.8])
 by fmsmga008.fm.intel.com with ESMTP; 15 Sep 2020 19:44:11 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 irsmsx602.ger.corp.intel.com (163.33.146.8) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 16 Sep 2020 03:44:10 +0100
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.1713.004;
 Tue, 15 Sep 2020 19:44:09 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Thread-Topic: [PATCH 2/4] drm/i915/display: Fix state of PSR2 sub features
Thread-Index: AQHWf/wnTN9lVOsUzkuuAq9065gTaalousgAgABeBACAAAhmAIAAB/wAgAD5HgCAAPpvAA==
Date: Wed, 16 Sep 2020 02:44:09 +0000
Message-ID: <1fde7721d49b0dcbea0b5ad4dfef0698201a6a8b.camel@intel.com>
References: <20200901010924.235808-1-jose.souza@intel.com>
 <20200901010924.235808-2-jose.souza@intel.com>
 <20200914142406.GN6112@intel.com>
 <f0b80d8f63f2b69ff6694b5a6bf55b7f7fd032b2.camel@intel.com>
 <20200914203040.GD6112@intel.com>
 <60200aa55b5abfae8a12c32fa3377d6782d2bc44.camel@intel.com>
 <20200915115052.GF6112@intel.com>
In-Reply-To: <20200915115052.GF6112@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-ID: <CF16029F95464E4CA647A8D53E6F0F5B@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 2/4] drm/i915/display: Fix state of PSR2 sub
 features
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCAyMDIwLTA5LTE1IGF0IDE0OjUwICswMzAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
DQo+IE9uIE1vbiwgU2VwIDE0LCAyMDIwIGF0IDA4OjU2OjEyUE0gKzAwMDAsIFNvdXphLCBKb3Nl
IHdyb3RlOg0KPiA+IE9uIE1vbiwgMjAyMC0wOS0xNCBhdCAyMzozMCArMDMwMCwgVmlsbGUgU3ly
asOkbMOkIHdyb3RlOg0KPiA+ID4gT24gTW9uLCBTZXAgMTQsIDIwMjAgYXQgMDc6NTc6MzRQTSAr
MDAwMCwgU291emEsIEpvc2Ugd3JvdGU6DQo+ID4gPiA+IE9uIE1vbiwgMjAyMC0wOS0xNCBhdCAx
NzoyNCArMDMwMCwgVmlsbGUgU3lyasOkbMOkIHdyb3RlOg0KPiA+ID4gPiA+IE9uIE1vbiwgQXVn
IDMxLCAyMDIwIGF0IDA2OjA5OjIyUE0gLTA3MDAsIEpvc8OpIFJvYmVydG8gZGUgU291emEgd3Jv
dGU6DQo+ID4gPiA+ID4gPiBJbiBjYXNlIFBTUjIgaXMgZGlzYWJsZWQgYnkgZGVidWdmcyBkYzNj
b19lbmFibGVkIGFuZA0KPiA+ID4gPiA+ID4gcHNyMl9zZWxfZmV0Y2hfZW5hYmxlZCB3ZXJlIHN0
aWxsIGJlaW5nIHNldCBjYXVzaW5nIHNvbWUgY29kZSBwYXRocw0KPiA+ID4gPiA+ID4gdG8gYmUg
ZXhlY3V0ZWQgd2VyZSBpdCBzaG91bGQgbm90Lg0KPiA+ID4gPiA+ID4gV2UgaGF2ZSB0ZXN0cyBm
b3IgUFNSMSBhbmQgUFNSMiBzbyBrZWVwIHRob3NlIGZlYXR1cmVzIGRpc2FibGVkIHdoZW4NCj4g
PiA+ID4gPiA+IFBTUjEgaXMgYWN0aXZlIGJ1dCBQU1IyIGlzIHN1cHBvcnRlZCBpcyBpbXBvcnRh
bnQuDQo+ID4gPiA+ID4gPiANCj4gPiA+ID4gPiA+IENjOiBHd2FuLWd5ZW9uZyBNdW4gPA0KPiA+
ID4gPiA+ID4gZ3dhbi1neWVvbmcubXVuQGludGVsLmNvbQ0KPiA+ID4gPiA+ID4gDQo+ID4gPiA+
ID4gPiANCj4gPiA+ID4gPiA+IA0KPiA+ID4gPiA+ID4gQ2M6IFZpbGxlIFN5cmrDpGzDpCA8DQo+
ID4gPiA+ID4gPiB2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbQ0KPiA+ID4gPiA+ID4gDQo+
ID4gPiA+ID4gPiANCj4gPiA+ID4gPiA+IA0KPiA+ID4gPiA+ID4gU2lnbmVkLW9mZi1ieTogSm9z
w6kgUm9iZXJ0byBkZSBTb3V6YSA8DQo+ID4gPiA+ID4gPiBqb3NlLnNvdXphQGludGVsLmNvbQ0K
PiA+ID4gPiA+ID4gDQo+ID4gPiA+ID4gPiANCj4gPiA+ID4gPiA+IA0KPiA+ID4gPiA+ID4gLS0t
DQo+ID4gPiA+ID4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYyB8
IDExICsrKysrKystLS0tDQo+ID4gPiA+ID4gPiAgMSBmaWxlIGNoYW5nZWQsIDcgaW5zZXJ0aW9u
cygrKSwgNCBkZWxldGlvbnMoLSkNCj4gPiA+ID4gPiA+IA0KPiA+ID4gPiA+ID4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ID4gPiA+ID4gPiBpbmRleCA0ZTA5YWU2
MWQ0YWEuLjY2OThkMDIwOTg3OSAxMDA2NDQNCj4gPiA+ID4gPiA+IC0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gPiA+ID4gPiA+ICsrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gPiA+ID4gPiA+IEBAIC05NjIsMTIg
Kzk2MiwxNCBAQCBzdGF0aWMgdm9pZCBpbnRlbF9wc3JfZW5hYmxlX2xvY2tlZChzdHJ1Y3QgZHJt
X2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsDQo+ID4gPiA+ID4gPiAgCWRldl9wcml2LT5wc3IucHNy
Ml9lbmFibGVkID0gaW50ZWxfcHNyMl9lbmFibGVkKGRldl9wcml2LCBjcnRjX3N0YXRlKTsNCj4g
PiA+ID4gPiA+ICAJZGV2X3ByaXYtPnBzci5idXN5X2Zyb250YnVmZmVyX2JpdHMgPSAwOw0KPiA+
ID4gPiA+ID4gIAlkZXZfcHJpdi0+cHNyLnBpcGUgPSB0b19pbnRlbF9jcnRjKGNydGNfc3RhdGUt
PnVhcGkuY3J0YyktPnBpcGU7DQo+ID4gPiA+ID4gPiAtCWRldl9wcml2LT5wc3IuZGMzY29fZW5h
YmxlZCA9ICEhY3J0Y19zdGF0ZS0+ZGMzY29fZXhpdGxpbmU7DQo+ID4gPiA+ID4gPiArCWRldl9w
cml2LT5wc3IuZGMzY29fZW5hYmxlZCA9ICEhY3J0Y19zdGF0ZS0+ZGMzY29fZXhpdGxpbmUgJiYN
Cj4gPiA+ID4gPiA+ICsJCQkJICAgICAgZGV2X3ByaXYtPnBzci5wc3IyX2VuYWJsZWQ7DQo+ID4g
PiA+ID4gPiAgCWRldl9wcml2LT5wc3IudHJhbnNjb2RlciA9IGNydGNfc3RhdGUtPmNwdV90cmFu
c2NvZGVyOw0KPiA+ID4gPiA+ID4gIAkvKiBEQzUvREM2IHJlcXVpcmVzIGF0IGxlYXN0IDYgaWRs
ZSBmcmFtZXMgKi8NCj4gPiA+ID4gPiA+ICAJdmFsID0gdXNlY3NfdG9famlmZmllcyhpbnRlbF9n
ZXRfZnJhbWVfdGltZV91cyhjcnRjX3N0YXRlKSAqIDYpOw0KPiA+ID4gPiA+ID4gIAlkZXZfcHJp
di0+cHNyLmRjM2NvX2V4aXRfZGVsYXkgPSB2YWw7DQo+ID4gPiA+ID4gPiAtCWRldl9wcml2LT5w
c3IucHNyMl9zZWxfZmV0Y2hfZW5hYmxlZCA9IGNydGNfc3RhdGUtPmVuYWJsZV9wc3IyX3NlbF9m
ZXRjaDsNCj4gPiA+ID4gPiA+ICsJZGV2X3ByaXYtPnBzci5wc3IyX3NlbF9mZXRjaF9lbmFibGVk
ID0gY3J0Y19zdGF0ZS0+ZW5hYmxlX3BzcjJfc2VsX2ZldGNoICYmDQo+ID4gPiA+ID4gPiArCQkJ
CQkgICAgICAgZGV2X3ByaXYtPnBzci5wc3IyX2VuYWJsZWQ7DQo+ID4gPiA+ID4gPiAgDQo+ID4g
PiA+ID4gPiAgCS8qDQo+ID4gPiA+ID4gPiAgCSAqIElmIGEgUFNSIGVycm9yIGhhcHBlbmVkIGFu
ZCB0aGUgZHJpdmVyIGlzIHJlbG9hZGVkLCB0aGUgRURQX1BTUl9JSVINCj4gPiA+ID4gPiA+IEBA
IC0xMTc4LDcgKzExODAsNyBAQCB2b2lkIGludGVsX3BzcjJfcHJvZ3JhbV90cmFuc19tYW5fdHJr
X2N0bChjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdA0KPiA+ID4gPiA+ID4g
IAlzdHJ1Y3QgaTkxNV9wc3IgKnBzciA9ICZkZXZfcHJpdi0+cHNyOw0KPiA+ID4gPiA+ID4gIA0K
PiA+ID4gPiA+ID4gIAlpZiAoIUhBU19QU1IyX1NFTF9GRVRDSChkZXZfcHJpdikgfHwNCj4gPiA+
ID4gPiA+IC0JICAgICFjcnRjX3N0YXRlLT5lbmFibGVfcHNyMl9zZWxfZmV0Y2gpDQo+ID4gPiA+
ID4gPiArCSAgICAhZGV2X3ByaXYtPnBzci5wc3IyX3NlbF9mZXRjaF9lbmFibGVkKQ0KPiA+ID4g
PiA+ID4gIAkJcmV0dXJuOw0KPiA+ID4gPiA+ID4gIA0KPiA+ID4gPiA+ID4gIAlpbnRlbF9kZV93
cml0ZShkZXZfcHJpdiwgUFNSMl9NQU5fVFJLX0NUTChwc3ItPnRyYW5zY29kZXIpLA0KPiA+ID4g
PiA+ID4gQEAgLTExODksOCArMTE5MSw5IEBAIHZvaWQgaW50ZWxfcHNyMl9zZWxfZmV0Y2hfdXBk
YXRlKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLA0KPiA+ID4gPiA+ID4gIAkJCQkg
c3RydWN0IGludGVsX2NydGMgKmNydGMpDQo+ID4gPiA+ID4gPiAgew0KPiA+ID4gPiA+ID4gIAlz
dHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSA9IGludGVsX2F0b21pY19nZXRfbmV3
X2NydGNfc3RhdGUoc3RhdGUsIGNydGMpOw0KPiA+ID4gPiA+ID4gKwlzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGNydGMtPmJhc2UuZGV2KTsNCj4gPiA+ID4gPiA+
ICANCj4gPiA+ID4gPiA+IC0JaWYgKCFjcnRjX3N0YXRlLT5lbmFibGVfcHNyMl9zZWxfZmV0Y2gp
DQo+ID4gPiA+ID4gPiArCWlmICghZGV2X3ByaXYtPnBzci5wc3IyX3NlbF9mZXRjaF9lbmFibGVk
KQ0KPiA+ID4gPiA+IA0KPiA+ID4gPiA+IFRoaXMgbG9va3MgcmF0aGVyIHNrZXRjaHkuIEFGQUlD
UyB0aGlzIGdldHMgY2FsbGVkIGR1cmluZyBhdG9taWNfY2hlY2soKQ0KPiA+ID4gPiA+IHNvIGxv
b2tpbmcgYXQgc3R1ZmYgb3V0c2lkZSB0aGUgY3J0YyBzdGF0ZSBpcyB2ZXJ5IHN1c3BpY2lvdXMu
DQo+ID4gPiA+IA0KPiA+ID4gPiBUaGlzIGlzIGNhbGxlZCBhZnRlciB0aGUgZnVuY3Rpb25zIHRo
YXQgY2hhbmdlIHRoZSBQU1Igc3RhdGUgc28gbm8gaXNzdWVzLCBhbHNvIHdlIGNhbid0IHJlYWxs
eSBvbiBpbmZvcm1hdGlvbiBpbiBDUlRDIHN0YXRlLCBhcyBQU1IgaXMgb25seSBlbmFibGVkDQo+
ID4gPiA+IGlmIHN1cHBvcnRlZCBieSBzdGF0ZSwgaTkxNSBQU1IgcGFyYW1ldGVyIGFuZCBQU1Ig
ZGVidWcgZnMgdmFsdWUuDQo+ID4gPiANCj4gPiA+IEkgc2VlIGl0IGdldHRpbmcgY2FsbGVkIGZy
b20gaW50ZWxfY3J0Y19hdG9taWNfY2hlY2soKS4gQ29uZnVzZWQuDQo+ID4gPiBBbSBJIG1pc3Np
bmcgc29tZSBvdGhlciBwYXRjaGVzPw0KPiA+IA0KPiA+IEl0IGlzIHNldCBmcm9tIGludGVsX3Bz
cl9kaXNhYmxlKCksIGludGVsX3Bzcl9lbmFibGUoKSBhbmQgaW50ZWxfcHNyX3VwZGF0ZSgpIGFs
bCBleGVjdXRlZCBiZWZvcmUgaW50ZWxfcHNyMl9zZWxfZmV0Y2hfdXBkYXRlKCkNCj4gPiANCj4g
PiBpbnRlbF9lbmFibGVfZGRpKCkNCj4gPiAJaW50ZWxfZW5hYmxlX2RkaV9kcCgpDQo+ID4gCQlp
bnRlbF9wc3JfZW5hYmxlKCkNCj4gPiANCj4gPiBpbnRlbF91cGRhdGVfY3J0YygpIHsNCj4gPiAJ
aWYgKCFtb2Rlc2V0KSB7DQo+ID4gCQlpbnRlbF9lbmNvZGVyc191cGRhdGVfcGlwZSgpDQo+ID4g
CQkJZW5jb2Rlci0+dXBkYXRlX3BpcGUoKSAvIGludGVsX2RkaV91cGRhdGVfcGlwZSgpDQo+ID4g
CQkJCWludGVsX2RkaV91cGRhdGVfcGlwZV9kcCgpDQo+ID4gCQkJCQlpbnRlbF9wc3JfdXBkYXRl
KCkNCj4gPiAJfQ0KPiA+IA0KPiA+IAkuLi4NCj4gPiAJCQ0KPiA+IAlza2xfdXBkYXRlX3BsYW5l
c19vbl9jcnRjKHN0YXRlLCBjcnRjKTsNCj4gPiAJCWludGVsX3VwZGF0ZV9wbGFuZSgpDQo+ID4g
CQkJcGxhbmUtPnVwZGF0ZV9wbGFuZSgpIC8gc2tsX3VwZGF0ZV9wbGFuZSgpDQo+ID4gCQkJCXNr
bF9wcm9ncmFtX3BsYW5lKCkNCj4gPiAJCQkJCWludGVsX3BzcjJfc2VsX2ZldGNoX3VwZGF0ZSgp
DQo+IA0KPiBUaGF0J3Mgbm90IHdoYXQgSSBzZWUgYXQgYWxsLiBUaGUgb25seSBjYWxsZXIgSSBz
ZWUgaXMNCj4gaW50ZWxfY3J0Y19hdG9taWNfY2hlY2soKS4NCg0KTWVzc2VkIGl0IHdpdGggcHJv
Z3JhbSBmdW5jdGlvbi4NClllYWggdGhpcyB3aWxsIG5vdCB3b3JrLCBzbyBqdXN0IGZpeGVkIHRo
ZSBoYXNfcHNyIGFuZCBoYXNfcHNyMiB0byBtYXRjaCByZWFsIHN0YXRlLCBqdXN0IHNlbnQgdGhl
IG5ldyBwYXRjaC4NCg0KVGhhbmtzIGZvciB0aGUgY29tbWVudHMuDQoNCj4gDQo+IA0KPiA+IH0N
Cj4gPiANCj4gPiANCj4gPiA+ID4gPiA+ICAJCXJldHVybjsNCj4gPiA+ID4gPiA+ICANCj4gPiA+
ID4gPiA+ICAJY3J0Y19zdGF0ZS0+cHNyMl9tYW5fdHJhY2tfY3RsID0gUFNSMl9NQU5fVFJLX0NU
TF9FTkFCTEUgfA0KPiANCj4gQW5kIGlmIGl0IHdvdWxkIGJlIGNhbGxlZCBmcm9tIHRoZXJlIHRo
ZW4gdGhpcyBwYXJ0IHdvdWxkIGJlDQo+IGtpbmRhIGJhZC4gV2Ugc2hvdWxkIG5vdCBtdXRhdGUg
dGhlIHN0YXRlIGR1cmluZyB0aGUgY29tbWl0IHBoYXNlLg0KPiANCj4gPiA+ID4gPiA+IC0tIA0K
PiA+ID4gPiA+ID4gMi4yOC4wDQo+ID4gPiA+ID4gDQo+ID4gPiA+ID4gDQo+ID4gPiANCj4gPiA+
IA0KPiANCj4gDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
