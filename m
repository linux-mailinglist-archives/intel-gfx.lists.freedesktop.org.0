Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F06213E594B
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Aug 2021 13:42:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8DA0C898C8;
	Tue, 10 Aug 2021 11:42:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2C33F898C8
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Aug 2021 11:42:02 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10070"; a="278631004"
X-IronPort-AV: E=Sophos;i="5.84,310,1620716400"; d="scan'208";a="278631004"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2021 04:42:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,310,1620716400"; d="scan'208";a="503093147"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga001.jf.intel.com with ESMTP; 10 Aug 2021 04:42:01 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Tue, 10 Aug 2021 04:42:00 -0700
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Tue, 10 Aug 2021 04:41:59 -0700
Received: from bgsmsx604.gar.corp.intel.com ([10.67.234.6]) by
 BGSMSX604.gar.corp.intel.com ([10.67.234.6]) with mapi id 15.01.2242.010;
 Tue, 10 Aug 2021 17:11:57 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Zanoni, Paulo R" <paulo.r.zanoni@intel.com>,
 "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "daniel.vetter@ffwll.ch" <daniel.vetter@ffwll.ch>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>,
 "joonas.lahtinen@linux.intel.com" <joonas.lahtinen@linux.intel.com>, "Vivi,
 Rodrigo" <rodrigo.vivi@intel.com>, "stable@vger.kernel.org"
 <stable@vger.kernel.org>
Thread-Topic: [PATCH v2] drm/i915/display: Fix the 12 BPC bits for PIPE_MISC
 reg
Thread-Index: AQHXh6HO8iXi7QpLAkasFNuHwzlb3qtsptow
Date: Tue, 10 Aug 2021 11:41:57 +0000
Message-ID: <8e03166cf37749329f5f92ca025c61c6@intel.com>
References: <1627908997-32236-1-git-send-email-ankit.k.nautiyal@intel.com>
In-Reply-To: <1627908997-32236-1-git-send-email-ankit.k.nautiyal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
x-originating-ip: [10.223.10.1]
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/display: Fix the 12 BPC bits
 for PIPE_MISC reg
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogTmF1dGl5YWwsIEFua2l0
IEsgPGFua2l0LmsubmF1dGl5YWxAaW50ZWwuY29tPg0KPiBTZW50OiBNb25kYXksIEF1Z3VzdCAy
LCAyMDIxIDY6MjcgUE0NCj4gVG86IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4g
Q2M6IFNoYW5rYXIsIFVtYSA8dW1hLnNoYW5rYXJAaW50ZWwuY29tPjsgWmFub25pLCBQYXVsbyBS
DQo+IDxwYXVsby5yLnphbm9uaUBpbnRlbC5jb20+OyB2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVs
LmNvbTsgZGFuaWVsLnZldHRlckBmZndsbC5jaDsNCj4gamFuaS5uaWt1bGFAbGludXguaW50ZWwu
Y29tOyBqb29uYXMubGFodGluZW5AbGludXguaW50ZWwuY29tOyBWaXZpLCBSb2RyaWdvDQo+IDxy
b2RyaWdvLnZpdmlAaW50ZWwuY29tPjsgc3RhYmxlQHZnZXIua2VybmVsLm9yZw0KPiBTdWJqZWN0
OiBbUEFUQ0ggdjJdIGRybS9pOTE1L2Rpc3BsYXk6IEZpeCB0aGUgMTIgQlBDIGJpdHMgZm9yIFBJ
UEVfTUlTQyByZWcNCj4gDQo+IEZyb206IEFua2l0IE5hdXRpeWFsIDxhbmtpdC5rLm5hdXRpeWFs
QGludGVsLmNvbT4NCj4gDQo+IFRpbGwgRElTUExBWTEyIHRoZSBQSVBFX01JU0MgYml0cyA1LTcg
YXJlIHVzZWQgdG8gc2V0IHRoZSBEaXRoZXJpbmcgQlBDLCB3aXRoIHZhbGlkDQo+IHZhbHVlcyBv
ZiA2LCA4LCAxMCBCUEMsIHdpdGggRGl0aGVyaW5nIGJpdCBlbmFibGVkLg0KPiBBbHNvLCB0aGVz
ZSBiaXRzIGFyZSB1c2VkIGluIGNhc2Ugb2YgSFcgcmVhZG91dCBmb3IgcGlwZV9icHAgaW4gY2Fz
ZSBvZiBEU0kuDQo+IEZvciBBRExQKyB0aGVzZSBiaXRzIGFyZSB1c2VkIHRvIHNldCB0aGUgUE9S
VCBPVVRQVVQgQlBDLCB3aXRoIHZhbGlkIHZhbHVlcyBvZjogNiwNCj4gOCwgMTAsIDEyIEJQQywg
YW5kIG5lZWQgdG8gYmUgcHJvZ3JhbW1lZCB3aGV0aGVyIGRpdGhlcmluZyBpcyBlbmFibGVkIG9y
IG5vdC4NCj4gDQo+IFRoaXMgcGF0Y2g6DQo+IC1jb3JyZWN0cyB0aGUgYml0cyA1LTcgZm9yIFBJ
UEUgTUlTQyByZWdpc3RlciBmb3IgMTIgQlBDLg0KPiAtcmVuYW1lcyB0aGUgYml0cyBhbmQgbWFz
ayB0byBoYXZlIGdlbmVyaWMgbmFtZXMgZm9yIHRoZXNlIGJpdHMgZm9yIGRpdGhlcmluZyBicGMN
Cj4gYW5kIHBvcnQgb3V0cHV0IGJwYy4NCj4gDQo+IHYyOiBBZGRyZXNzZWQgdGhlIGNvbW1lbnRz
IGFuZCBzdWdnZXN0aW9ucyBmcm9tIFVtYSBTaGFua2FyOg0KPiAtQWRkICdkaXNwbGF5JyBpbiBz
dWJqZWN0DQo+IC1BZGQgRml4ZXMgdGFnIGluIHRoZSBjb21taXQgbWVzc2FnZS4NCj4gLVRha2Ug
Y2FyZSBvZiBEU0kgY2FzZSB3aGljaCB1c2VzIHRoZSBiaXRzIGZvciBnZXR0aW5nIHBpcGVfYnBw
Lg0KPiANCj4gRml4ZXM6IDc1NmY4NWNmZmVmMiAoImRybS9pOTE1L2JkdzogQnJvYWR3ZWxsIGhh
cyBQSVBFTUlTQyIpDQo+IENjOiBQYXVsbyBaYW5vbmkgPHBhdWxvLnIuemFub25pQGludGVsLmNv
bT4gKHYxKQ0KPiBDYzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVs
LmNvbT4NCj4gQ2M6IERhbmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJAZmZ3bGwuY2g+DQo+IENj
OiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAbGludXguaW50ZWwuY29tPg0KPiBDYzogSm9vbmFz
IExhaHRpbmVuIDxqb29uYXMubGFodGluZW5AbGludXguaW50ZWwuY29tPg0KPiBDYzogUm9kcmln
byBWaXZpIDxyb2RyaWdvLnZpdmlAaW50ZWwuY29tPg0KPiBDYzogaW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZw0KPiBDYzogPHN0YWJsZUB2Z2VyLmtlcm5lbC5vcmc+ICMgdjMuMTMrDQo+
IA0KPiBTaWduZWQtb2ZmLWJ5OiBBbmtpdCBOYXV0aXlhbCA8YW5raXQuay5uYXV0aXlhbEBpbnRl
bC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNw
bGF5LmMgfCAxOCArKysrKysrKystLS0tLS0tLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfcmVnLmggICAgICAgICAgICAgIHwgMTUgKysrKysrKysrKy0tLS0tDQo+ICAyIGZpbGVzIGNo
YW5nZWQsIDE5IGluc2VydGlvbnMoKyksIDE0IGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+IGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4gaW5kZXggNjVkZGI2
Yy4uOTc2NmIzNiAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kaXNwbGF5LmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kaXNwbGF5LmMNCj4gQEAgLTU3NjAsMTYgKzU3NjAsMTYgQEAgc3RhdGljIHZvaWQgYmR3X3Nl
dF9waXBlbWlzYyhjb25zdCBzdHJ1Y3QNCj4gaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkN
Cj4gDQo+ICAJc3dpdGNoIChjcnRjX3N0YXRlLT5waXBlX2JwcCkgew0KPiAgCWNhc2UgMTg6DQo+
IC0JCXZhbCB8PSBQSVBFTUlTQ19ESVRIRVJfNl9CUEM7DQo+ICsJCXZhbCB8PSBQSVBFTUlTQ182
X0JQQzsNCj4gIAkJYnJlYWs7DQo+ICAJY2FzZSAyNDoNCj4gLQkJdmFsIHw9IFBJUEVNSVNDX0RJ
VEhFUl84X0JQQzsNCj4gKwkJdmFsIHw9IFBJUEVNSVNDXzhfQlBDOw0KPiAgCQlicmVhazsNCj4g
IAljYXNlIDMwOg0KPiAtCQl2YWwgfD0gUElQRU1JU0NfRElUSEVSXzEwX0JQQzsNCj4gKwkJdmFs
IHw9IFBJUEVNSVNDXzEwX0JQQzsNCj4gIAkJYnJlYWs7DQo+ICAJY2FzZSAzNjoNCj4gLQkJdmFs
IHw9IFBJUEVNSVNDX0RJVEhFUl8xMl9CUEM7DQo+ICsJCXZhbCB8PSBQSVBFTUlTQ18xMl9CUEM7
DQoNCklzbid0IHRoaXMgYml0IG5vdCBzdXBwb3J0ZWQgb24gcHJpb3IgdG8gR2VuMTMgcGxhdGZv
cm1zLCBzbyBmcm9tIHRoYXQgcGVyc3BlY3RpdmUgaXQncyBhbg0KSW52YWxpZCBvcGVyYXRpb24u
IENhbiB5b3UgY29uZmlybS4NCg0KPiAgCQlicmVhazsNCj4gIAlkZWZhdWx0Og0KPiAgCQlNSVNT
SU5HX0NBU0UoY3J0Y19zdGF0ZS0+cGlwZV9icHApOw0KPiBAQCAtNTgyMiwxNCArNTgyMiwxNCBA
QCBpbnQgYmR3X2dldF9waXBlbWlzY19icHAoc3RydWN0IGludGVsX2NydGMgKmNydGMpDQo+IA0K
PiAgCXRtcCA9IGludGVsX2RlX3JlYWQoZGV2X3ByaXYsIFBJUEVNSVNDKGNydGMtPnBpcGUpKTsN
Cj4gDQo+IC0Jc3dpdGNoICh0bXAgJiBQSVBFTUlTQ19ESVRIRVJfQlBDX01BU0spIHsNCj4gLQlj
YXNlIFBJUEVNSVNDX0RJVEhFUl82X0JQQzoNCj4gKwlzd2l0Y2ggKHRtcCAmIFBJUEVNSVNDX0JQ
Q19NQVNLKSB7DQo+ICsJY2FzZSBQSVBFTUlTQ182X0JQQzoNCj4gIAkJcmV0dXJuIDE4Ow0KPiAt
CWNhc2UgUElQRU1JU0NfRElUSEVSXzhfQlBDOg0KPiArCWNhc2UgUElQRU1JU0NfOF9CUEM6DQo+
ICAJCXJldHVybiAyNDsNCj4gLQljYXNlIFBJUEVNSVNDX0RJVEhFUl8xMF9CUEM6DQo+ICsJY2Fz
ZSBQSVBFTUlTQ18xMF9CUEM6DQo+ICAJCXJldHVybiAzMDsNCj4gLQljYXNlIFBJUEVNSVNDX0RJ
VEhFUl8xMl9CUEM6DQo+ICsJY2FzZSBQSVBFTUlTQ18xMl9CUEM6DQo+ICAJCXJldHVybiAzNjsN
Cg0KU2FtZSBoZXJlLg0KDQo+ICAJZGVmYXVsdDoNCj4gIAkJTUlTU0lOR19DQVNFKHRtcCk7DQo+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9yZWcuaA0KPiBpbmRleCA5NDNmZTQ4Li5iYmZlNGY0IDEwMDY0NA0K
PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oDQo+ICsrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfcmVnLmgNCj4gQEAgLTYxNjYsMTEgKzYxNjYsMTYgQEAgZW51bSB7
DQo+ICAjZGVmaW5lICAgUElQRU1JU0NfSERSX01PREVfUFJFQ0lTSU9OCSgxIDw8IDIzKSAvKiBp
Y2wrICovDQo+ICAjZGVmaW5lICAgUElQRU1JU0NfT1VUUFVUX0NPTE9SU1BBQ0VfWVVWICAoMSA8
PCAxMSkNCj4gICNkZWZpbmUgICBQSVBFTUlTQ19QSVhFTF9ST1VORElOR19UUlVOQwlSRUdfQklU
KDgpIC8qIHRnbCsgKi8NCj4gLSNkZWZpbmUgICBQSVBFTUlTQ19ESVRIRVJfQlBDX01BU0sJKDcg
PDwgNSkNCj4gLSNkZWZpbmUgICBQSVBFTUlTQ19ESVRIRVJfOF9CUEMJCSgwIDw8IDUpDQo+IC0j
ZGVmaW5lICAgUElQRU1JU0NfRElUSEVSXzEwX0JQQwkoMSA8PCA1KQ0KPiAtI2RlZmluZSAgIFBJ
UEVNSVNDX0RJVEhFUl82X0JQQwkJKDIgPDwgNSkNCj4gLSNkZWZpbmUgICBQSVBFTUlTQ19ESVRI
RVJfMTJfQlBDCSgzIDw8IDUpDQo+ICsvKg0KPiArICogRm9yIERpc3BsYXkgPCAxMywgQml0cyA1
LTcgb2YgUElQRSBNSVNDIHJlcHJlc2VudCBESVRIRVIgQlBDLg0KPiArICogQURMUCssIHRoZSBi
aXRzIDUtNyByZXByZXNlbnQgUE9SVCBPVVRQVVQgQlBDIHdpdGggdmFsaWQgdmFsdWVzIG9mOg0K
PiArICogNiwgOCwgMTAsIDEyIEJQQy4NCj4gKyAqLw0KPiArI2RlZmluZSAgIFBJUEVNSVNDX0JQ
Q19NQVNLCQkoNyA8PCA1KQ0KPiArI2RlZmluZSAgIFBJUEVNSVNDXzhfQlBDCQkoMCA8PCA1KQ0K
PiArI2RlZmluZSAgIFBJUEVNSVNDXzEwX0JQQwkJKDEgPDwgNSkNCj4gKyNkZWZpbmUgICBQSVBF
TUlTQ182X0JQQwkJKDIgPDwgNSkNCj4gKyNkZWZpbmUgICBQSVBFTUlTQ18xMl9CUEMJCSg0IDw8
IDUpIC8qIGFkbHArICovDQo+ICAjZGVmaW5lICAgUElQRU1JU0NfRElUSEVSX0VOQUJMRQkoMSA8
PCA0KQ0KPiAgI2RlZmluZSAgIFBJUEVNSVNDX0RJVEhFUl9UWVBFX01BU0sJKDMgPDwgMikNCj4g
ICNkZWZpbmUgICBQSVBFTUlTQ19ESVRIRVJfVFlQRV9TUAkoMCA8PCAyKQ0KPiAtLQ0KPiAyLjgu
MQ0KDQo=
