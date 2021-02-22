Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EA533219C3
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Feb 2021 15:08:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD9986E098;
	Mon, 22 Feb 2021 14:08:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CB1606E098
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Feb 2021 14:08:40 +0000 (UTC)
IronPort-SDR: Pp9lnuZEZkcssg1OUSwthAus8dGVt0BsNYRIwiFnlwIo0ZrgzNASIKVrguuLonyuBwh4YQKIUI
 n91BxOqOvoOQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9902"; a="184564239"
X-IronPort-AV: E=Sophos;i="5.81,197,1610438400"; d="scan'208";a="184564239"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2021 06:05:19 -0800
IronPort-SDR: 4h78SBOiLaS+AaIId+VeZJDKVEAfdeZyEA1XgPkxOpKGNMzwwZ48ZqqPzmPgb5W/E2mrfT3Jkg
 uPXuN5mrdekQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,197,1610438400"; d="scan'208";a="432082830"
Received: from irsmsx603.ger.corp.intel.com ([163.33.146.9])
 by fmsmga002.fm.intel.com with ESMTP; 22 Feb 2021 06:05:18 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 irsmsx603.ger.corp.intel.com (163.33.146.9) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Mon, 22 Feb 2021 14:05:17 +0000
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2106.002;
 Mon, 22 Feb 2021 06:05:15 -0800
From: "Souza, Jose" <jose.souza@intel.com>
To: "Mun, Gwan-gyeong" <gwan-gyeong.mun@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915/display: Do not allow DC3CO if PSR SF is enabled
Thread-Index: AQHXCQ0XIicTQ+DokUeYg6WpvI8Tp6pku/4A
Date: Mon, 22 Feb 2021 14:05:15 +0000
Message-ID: <6b176331f82de63ccaccddadf4e60b5dcf693542.camel@intel.com>
References: <20210222112415.1523930-1-gwan-gyeong.mun@intel.com>
In-Reply-To: <20210222112415.1523930-1-gwan-gyeong.mun@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-ID: <2C54E7E1EDBB4B4F993D6AB51B03A1B0@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Do not allow DC3CO if PSR
 SF is enabled
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

T24gTW9uLCAyMDIxLTAyLTIyIGF0IDEzOjI0ICswMjAwLCBHd2FuLWd5ZW9uZyBNdW4gd3JvdGU6
DQo+IEV2ZW4gdGhvdWdoIEdFTjEyKyBIVyBzdXBwb3J0cyBQU1IgKyBEQzNDTywgRE1DJ3MgSFcg
REMzQ08gZXhpdG1hY2hhbmlzbQ0KDQp0eXBvIGFuZCBtaXNzaW5nIHNwYWNlIGJldHdlZW4gZXhp
dCBhbmQgbWVjaGFuaXNtDQoNCj4gaGFzIGFuIGlzc3VlIHdpdGggdXNpbmcgb2YgU2VsZWN0aXZl
RmVjdGggYW5kIFBTUjIgTWFudWFsVHJhY2tpbmcuDQoNCm1hbnVhbCB0cmFja2luZy4NCg0KPiBB
bmQgYXMgbmV3IEdFTjEyKyBwbGF0Zm9ybSBsaWtlIFJLTCwgQURMLVMvUCBkb24ndCBoYXZlIFBT
UjIgSFcgdHJhY2tpbmcsDQo+IFNlbGVjdGl2ZSBGZXRjaCB3aWlsIGJlIGVuYWJsZWQgYnkgZGVm
YXVsdC4NCj4gVGhlcmVmb3JlIGlmIHRoZSBzeXN0ZW0gZW5hYmxlcyBQU1IgU2VsZWN0aXZlRmV0
Y2ggLyBQU1IgTWFudWFsVHJhY2tpbmcsDQo+IGl0IGRvZXMgbm90IGFsbG93IERDM0NPIGRjIHN0
YXRlLCBpbiB0aGF0IGNhc2UuDQo+IA0KPiBXaGVuIHRoaXMgREMzQ08gZXhpdCBpc3N1ZSBpcyBh
ZGRyZXNzZWQgd2hpbGUgUFNSIFNGIGlzIGVuYWJsZWQsDQo+IHRoaXMgcmVzdHJpY3Rpb24gc2hv
dWxkIGJlIHJlbW92ZWQuDQo+IA0KPiBDYzogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5z
b3V6YUBpbnRlbC5jb20+DQo+IENjOiBBbnNodW1hbiBHdXB0YSA8YW5zaHVtYW4uZ3VwdGFAaW50
ZWwuY29tPg0KPiBTaWduZWQtb2ZmLWJ5OiBHd2FuLWd5ZW9uZyBNdW4gPGd3YW4tZ3llb25nLm11
bkBpbnRlbC5jb20+DQo+IC0tLQ0KPiDCoC4uLi9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXlfcG93ZXIuYyAgICB8IDE5ICsrKysrKysrKysrKystLS0tLS0NCj4gwqAxIGZpbGUgY2hhbmdl
ZCwgMTMgaW5zZXJ0aW9ucygrKSwgNiBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93ZXIuYyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5jDQo+IGluZGV4IGYw
MGMxNzUwZmViZC4uYjM4NWIzZjA4MmYyIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93ZXIuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93ZXIuYw0KPiBAQCAtODA0LDEwICs4MDQs
MTIgQEAgc3RhdGljIHUzMiBnZW45X2RjX21hc2soc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRl
dl9wcml2KQ0KPiDCoA0KPiANCj4gDQo+IA0KPiANCj4gDQo+IA0KPiANCj4gDQo+IA0KPiANCj4g
DQo+IA0KPiANCj4gDQo+IA0KPiDCoAltYXNrID0gRENfU1RBVEVfRU5fVVBUT19EQzU7DQo+IMKg
DQo+IA0KPiANCj4gDQo+IA0KPiANCj4gDQo+IA0KPiANCj4gDQo+IA0KPiANCj4gDQo+IA0KPiAN
Cj4gDQo+IC0JaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0gMTIpDQo+IC0JCW1hc2sgfD0gRENf
U1RBVEVfRU5fREMzQ08gfCBEQ19TVEFURV9FTl9VUFRPX0RDNg0KPiAtCQkJCQkgIHwgRENfU1RB
VEVfRU5fREM5Ow0KPiAtCWVsc2UgaWYgKElTX0dFTihkZXZfcHJpdiwgMTEpKQ0KPiArCWlmIChJ
TlRFTF9HRU4oZGV2X3ByaXYpID49IDEyKSB7DQo+ICsJCS8qIERNQydzIERDM0NPIGV4aXQgbWFj
aGFuaXNtIGhhcyBhbiBpc3N1ZSB3aXRoIFNlbGVjdGl2ZUZlY3RoICovDQo+ICsJCWlmICghZGV2
X3ByaXYtPnBhcmFtcy5lbmFibGVfcHNyMl9zZWxfZmV0Y2gpDQo+ICsJCQltYXNrIHw9ICBEQ19T
VEFURV9FTl9EQzNDTzsNCj4gKwkJbWFzayB8PSBEQ19TVEFURV9FTl9VUFRPX0RDNiB8IERDX1NU
QVRFX0VOX0RDOTsNCj4gKwl9IGVsc2UgaWYgKElTX0dFTihkZXZfcHJpdiwgMTEpKQ0KPiDCoAkJ
bWFzayB8PSBEQ19TVEFURV9FTl9VUFRPX0RDNiB8IERDX1NUQVRFX0VOX0RDOTsNCj4gwqAJZWxz
ZSBpZiAoSVNfR0VOOV9MUChkZXZfcHJpdikpDQo+IMKgCQltYXNrIHw9IERDX1NUQVRFX0VOX0RD
OTsNCj4gQEAgLTQ1ODgsMTAgKzQ1OTAsMTUgQEAgc3RhdGljIHUzMiBnZXRfYWxsb3dlZF9kY19t
YXNrKGNvbnN0IHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwNCj4gwqANCj4gDQo+
IA0KPiANCj4gDQo+IA0KPiANCj4gDQo+IA0KPiANCj4gDQo+IA0KPiANCj4gDQo+IA0KPiANCj4g
wqAJc3dpdGNoIChyZXF1ZXN0ZWRfZGMpIHsNCj4gwqAJY2FzZSA0Og0KPiAtCQltYXNrIHw9IERD
X1NUQVRFX0VOX0RDM0NPIHwgRENfU1RBVEVfRU5fVVBUT19EQzY7DQo+ICsJCS8qIERNQydzIERD
M0NPIGV4aXQgbWFjaGFuaXNtIGhhcyBhbiBpc3N1ZSB3aXRoIFNlbGVjdGl2ZUZlY3RoICovDQo+
ICsJCWlmICghZGV2X3ByaXYtPnBhcmFtcy5lbmFibGVfcHNyMl9zZWxfZmV0Y2gpDQo+ICsJCQlt
YXNrIHw9ICBEQ19TVEFURV9FTl9EQzNDTzsNCj4gKwkJbWFzayB8PSBEQ19TVEFURV9FTl9VUFRP
X0RDNjsNCj4gwqAJCWJyZWFrOw0KPiDCoAljYXNlIDM6DQo+IC0JCW1hc2sgfD0gRENfU1RBVEVf
RU5fREMzQ08gfCBEQ19TVEFURV9FTl9VUFRPX0RDNTsNCj4gKwkJaWYgKCFkZXZfcHJpdi0+cGFy
YW1zLmVuYWJsZV9wc3IyX3NlbF9mZXRjaCkNCj4gKwkJCW1hc2sgfD0gIERDX1NUQVRFX0VOX0RD
M0NPOw0KPiArCQltYXNrIHw9IERDX1NUQVRFX0VOX1VQVE9fREM1Ow0KPiDCoAkJYnJlYWs7DQoN
CkRvaW5nIHRoaXMgaW4gdGhlIHdyb25nIHBsYWNlLCB3b3VsZCBiZSBtdWNoIGVhc2llciBkbyBp
dCBpbiB0Z2xfZGMzY29fZXhpdGxpbmVfY29tcHV0ZV9jb25maWcoKS4NCg0KPiDCoAljYXNlIDI6
DQo+IMKgCQltYXNrIHw9IERDX1NUQVRFX0VOX1VQVE9fREM2Ow0KDQpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
