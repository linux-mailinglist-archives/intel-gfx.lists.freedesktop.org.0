Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D27C510650
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Apr 2022 20:09:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7970110ED09;
	Tue, 26 Apr 2022 18:09:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AC26210ED09;
 Tue, 26 Apr 2022 18:09:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1650996550; x=1682532550;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=aPisBTVUHcQ8J3E3tjhs4ldUBJ8COv0Cmr6uQ6T4lCc=;
 b=SHhJG+QUDvHqFbaovikzKmh0Z25PaF9mpsDLMWHVVNgkXHSc65klZoV0
 BxmV3H4PmNxwkZC+ch6unxsqLrWBTyXdGeDN7VCMDulz7FajDb9imku6e
 xJ/Lz3P6pJ8pUYIinsdQ/ONyxndZat7ynn+wEpItIwk0sriq02kIkJFgz
 qEAxMBhv3t+GeiFTgABF8nughDCy62n+w+g5VRJfeUeaXuD3S9p07xCaz
 Ov41a/19Y2iB5fIJg/YwdGpv7YlxI4BTu4E7NAtCO+Eli8Opo6kePIMPH
 dQT2/IKXCS8nxA2FFR/j1zkCNVYbjuYUvN13rvr2g5CZIoiPigHNPsgrh g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10329"; a="253053367"
X-IronPort-AV: E=Sophos;i="5.90,291,1643702400"; d="scan'208";a="253053367"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2022 11:09:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,291,1643702400"; d="scan'208";a="679121727"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga004.jf.intel.com with ESMTP; 26 Apr 2022 11:09:06 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 26 Apr 2022 11:09:05 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 26 Apr 2022 11:09:05 -0700
Received: from fmsmsx612.amr.corp.intel.com ([10.18.126.92]) by
 fmsmsx612.amr.corp.intel.com ([10.18.126.92]) with mapi id 15.01.2308.027;
 Tue, 26 Apr 2022 11:09:05 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH 2/3] drm/i915/display: Replace crtc_state's
 has_drrs by drrs_downclock_mode
Thread-Index: AQHYVbTiEDX6moD94E6INfD1nH82ca0BALKAgAH7LoA=
Date: Tue, 26 Apr 2022 18:09:04 +0000
Message-ID: <764940f9c71db78af2dd72c1e5186c3e0e6d4fda.camel@intel.com>
References: <20220421192205.32649-1-jose.souza@intel.com>
 <20220421192205.32649-2-jose.souza@intel.com> <87levtv0lg.fsf@intel.com>
In-Reply-To: <87levtv0lg.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-Type: text/plain; charset="utf-8"
Content-ID: <A0C2B150209FE74293149FDCBADF6CF1@intel.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915/display: Replace crtc_state's
 has_drrs by drrs_downclock_mode
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
Cc: "seanpaul@chromium.org" <seanpaul@chromium.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCAyMDIyLTA0LTI1IGF0IDE0OjU1ICswMzAwLCBKYW5pIE5pa3VsYSB3cm90ZToNCj4g
T24gVGh1LCAyMSBBcHIgMjAyMiwgSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBp
bnRlbC5jb20+IHdyb3RlOg0KPiA+IFdpbGwgYmUgYWRkaW5nIHNvbWUgYWRkaXRpb25hbCBjb250
cm9sIG9wdGlvbnMgdG8gRFJSUyB0aGF0IHdpbGwNCj4gPiByZXF1aXJlIHRvIGhhdmUgdGhlIERS
UlMgZG93bmNsb2NrIG1vZGUgc3RvcmVkIGluIHRoZSBjcnRjX3N0YXRlLg0KPiA+IA0KPiA+IFNv
IHRvIG9wdGltaXplIG1lbW9yeSB1c2FnZSBhIGJpdCBoZXJlIHVzaW5nIGl0IHRvIHJlcGxhY2Ug
aGFzX2RycnMNCj4gPiBhcyB3ZSBjYW4gY2hlY2sgaWYgdGhlIGRycnNfZG93bmNsb2NrX21vZGUg
cG9pbnRlciBpcyBkaWZmZXJlbnQgdGhhbg0KPiA+IG51bGwgdG8gaGF2ZSB0aGUgc2FtZSBiZWhh
dmlvciBoYXMgaGFzX2RycnMuDQo+ID4gDQo+ID4gQ2M6IFZpZHlhIFNyaW5pdmFzIDx2aWR5YS5z
cmluaXZhc0BpbnRlbC5jb20+DQo+ID4gQ2M6IFNlYW4gUGF1bCA8c2VhbnBhdWxAY2hyb21pdW0u
b3JnPg0KPiA+IENjOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwu
Y29tPg0KPiA+IFNpZ25lZC1vZmYtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291
emFAaW50ZWwuY29tPg0KPiA+IC0tLQ0KPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2Rpc3BsYXkuYyAgICAgICAgIHwgNCArKy0tDQo+ID4gIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9kZWJ1Z2ZzLmMgfCA0ICsrLS0NCj4gPiAgZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmggICB8IDQgKysrLQ0K
PiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMgICAgICAgICAgICAg
IHwgMiArLQ0KPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RycnMuYyAg
ICAgICAgICAgIHwgNCArKy0tDQo+ID4gIDUgZmlsZXMgY2hhbmdlZCwgMTAgaW5zZXJ0aW9ucygr
KSwgOCBkZWxldGlvbnMoLSkNCj4gPiANCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2Rpc3BsYXkuYw0KPiA+IGluZGV4IDBkZGZjZTIxYTgyOGQuLmE1ZjVjYWVjZWQ5
YTAgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
aXNwbGF5LmMNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rp
c3BsYXkuYw0KPiA+IEBAIC01MzYwLDcgKzUzNjAsNyBAQCBzdGF0aWMgdm9pZCBpbnRlbF9kdW1w
X3BpcGVfY29uZmlnKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpwaXBlX2NvbmZpZywN
Cj4gPiAgDQo+ID4gIAlkcm1fZGJnX2ttcygmZGV2X3ByaXYtPmRybSwgImlwczogJWksIGRvdWJs
ZSB3aWRlOiAlaSwgZHJyczogJWlcbiIsDQo+ID4gIAkJICAgIHBpcGVfY29uZmlnLT5pcHNfZW5h
YmxlZCwgcGlwZV9jb25maWctPmRvdWJsZV93aWRlLA0KPiA+IC0JCSAgICBwaXBlX2NvbmZpZy0+
aGFzX2RycnMpOw0KPiA+ICsJCSAgICBDUlRDX1NUQVRFX0hBU19EUlJTKHBpcGVfY29uZmlnKSk7
DQo+IA0KPiBJJ2xsIG1vc3RseSBsZXQgVmlsbGUgY29tbWVudCBvbiB0aGUgc2VyaWVzLCBidXQg
dGhhdCBtYWNybyBpcyBhbg0KPiBleWVzb3JlIGFuZCBhbHNvIGp1c3Qgb3V0IG9mIHBsYWNlIGlu
IGludGVsX2Rpc3BsYXlfdHlwZXMuaC4gUGxlYXNlIG1ha2UNCj4gaXQgYSBwcm9wZXIgZnVuY3Rp
b24gaW50ZWxfZHJyc19zb21ldGhpbmdfc29tZXRoaW5nKCkgaW4NCj4gaW50ZWxfZHJycy5bY2hd
Lg0KDQpPa2F5IGluIG1ha2luZyB0aGlzIGEgZnVuY3Rpb24gYnV0IEkgZG9uJ3QgaGF2ZSBhIGdv
b2QgbmFtZSBmb3IgaXQgbmVpdGhlci4NCmludGVsX2NydGNfc3RhdGVfaGFzX2RycnMoKSBpcyB3
b3JzdCB0aGFuIGN1cnJlbnQgbmFtZSBvZiB0aGUgbWFjcm8uDQoNCj4gDQo+IEJSLA0KPiBKYW5p
Lg0KPiANCj4gPiAgDQo+ID4gIAlpbnRlbF9kcGxsX2R1bXBfaHdfc3RhdGUoZGV2X3ByaXYsICZw
aXBlX2NvbmZpZy0+ZHBsbF9od19zdGF0ZSk7DQo+ID4gIA0KPiA+IEBAIC03MDg4LDcgKzcwODgs
NyBAQCBzdGF0aWMgdm9pZCBpbnRlbF9jcnRjX2NvcHlfZmFzdHNldChjb25zdCBzdHJ1Y3QgaW50
ZWxfY3J0Y19zdGF0ZSAqb2xkX2NydGNfc3RhdA0KPiA+ICAJbmV3X2NydGNfc3RhdGUtPmZkaV9t
X24gPSBvbGRfY3J0Y19zdGF0ZS0+ZmRpX21fbjsNCj4gPiAgCW5ld19jcnRjX3N0YXRlLT5kcF9t
X24gPSBvbGRfY3J0Y19zdGF0ZS0+ZHBfbV9uOw0KPiA+ICAJbmV3X2NydGNfc3RhdGUtPmRwX20y
X24yID0gb2xkX2NydGNfc3RhdGUtPmRwX20yX24yOw0KPiA+IC0JbmV3X2NydGNfc3RhdGUtPmhh
c19kcnJzID0gb2xkX2NydGNfc3RhdGUtPmhhc19kcnJzOw0KPiA+ICsJbmV3X2NydGNfc3RhdGUt
PmRycnNfZG93bmNsb2NrX21vZGUgPSBvbGRfY3J0Y19zdGF0ZS0+ZHJyc19kb3duY2xvY2tfbW9k
ZTsNCj4gPiAgfQ0KPiA+ICANCj4gPiAgc3RhdGljIGludCBpbnRlbF9jcnRjX2FkZF9wbGFuZXNf
dG9fc3RhdGUoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsDQo+ID4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9kZWJ1Z2ZzLmMg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfZGVidWdmcy5jDQo+
ID4gaW5kZXggNDUyZDc3M2ZkNGUzNC4uZjk3MjA1NjIzMzZkYSAxMDA2NDQNCj4gPiAtLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfZGVidWdmcy5jDQo+ID4g
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X2RlYnVnZnMu
Yw0KPiA+IEBAIC0xMDk2LDcgKzEwOTYsNyBAQCBzdGF0aWMgaW50IGk5MTVfZHJyc19zdGF0dXMo
c3RydWN0IHNlcV9maWxlICptLCB2b2lkICp1bnVzZWQpDQo+ID4gIA0KPiA+ICAJCS8qIERSUlMg
U3VwcG9ydGVkICovDQo+ID4gIAkJc2VxX3ByaW50ZihtLCAiXHREUlJTIEVuYWJsZWQ6ICVzXG4i
LA0KPiA+IC0JCQkgICBzdHJfeWVzX25vKGNydGNfc3RhdGUtPmhhc19kcnJzKSk7DQo+ID4gKwkJ
CSAgIHN0cl95ZXNfbm8oQ1JUQ19TVEFURV9IQVNfRFJSUyhjcnRjX3N0YXRlKSkpOw0KPiA+ICAN
Cj4gPiAgCQlzZXFfcHJpbnRmKG0sICJcdERSUlMgQWN0aXZlOiAlc1xuIiwNCj4gPiAgCQkJICAg
c3RyX3llc19ubyhpbnRlbF9kcnJzX2lzX2FjdGl2ZShjcnRjKSkpOw0KPiA+IEBAIC0xNzg2LDcg
KzE3ODYsNyBAQCBzdGF0aWMgaW50IGk5MTVfZHJyc19jdGxfc2V0KHZvaWQgKmRhdGEsIHU2NCB2
YWwpDQo+ID4gIAkJY3J0Y19zdGF0ZSA9IHRvX2ludGVsX2NydGNfc3RhdGUoY3J0Yy0+YmFzZS5z
dGF0ZSk7DQo+ID4gIA0KPiA+ICAJCWlmICghY3J0Y19zdGF0ZS0+aHcuYWN0aXZlIHx8DQo+ID4g
LQkJICAgICFjcnRjX3N0YXRlLT5oYXNfZHJycykNCj4gPiArCQkgICAgIUNSVENfU1RBVEVfSEFT
X0RSUlMoY3J0Y19zdGF0ZSkpDQo+ID4gIAkJCWdvdG8gb3V0Ow0KPiA+ICANCj4gPiAgCQljb21t
aXQgPSBjcnRjX3N0YXRlLT51YXBpLmNvbW1pdDsNCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmggYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaA0KPiA+IGluZGV4IGNmZDA0MjEx
N2IxMDkuLmYwYjNjZmQzMTM4Y2UgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaA0KPiA+IEBAIC0xMDU2LDcgKzEw
NTYsNyBAQCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSB7DQo+ID4gIA0KPiA+ICAJLyogbTJfbjIg
Zm9yIGVEUCBkb3duY2xvY2sgKi8NCj4gPiAgCXN0cnVjdCBpbnRlbF9saW5rX21fbiBkcF9tMl9u
MjsNCj4gPiAtCWJvb2wgaGFzX2RycnM7DQo+ID4gKwljb25zdCBzdHJ1Y3QgZHJtX2Rpc3BsYXlf
bW9kZSAqZHJyc19kb3duY2xvY2tfbW9kZTsNCj4gPiAgDQo+ID4gIAkvKiBQU1IgaXMgc3VwcG9y
dGVkIGJ1dCBtaWdodCBub3QgYmUgZW5hYmxlZCBkdWUgdGhlIGxhY2sgb2YgZW5hYmxlZCBwbGFu
ZXMgKi8NCj4gPiAgCWJvb2wgaGFzX3BzcjsNCj4gPiBAQCAtMTI2NCw2ICsxMjY0LDggQEAgZW51
bSBkcnJzX3JlZnJlc2hfcmF0ZSB7DQo+ID4gIAlEUlJTX1JFRlJFU0hfUkFURV9MT1csDQo+ID4g
IH07DQo+ID4gIA0KPiA+ICsjZGVmaW5lIENSVENfU1RBVEVfSEFTX0RSUlMoY3J0Y19zdGF0ZSkg
KCEhKChjcnRjX3N0YXRlKS0+ZHJyc19kb3duY2xvY2tfbW9kZSkpDQo+ID4gKw0KPiA+ICAjZGVm
aW5lIElOVEVMX1BJUEVfQ1JDX0VOVFJJRVNfTlIJMTI4DQo+ID4gIHN0cnVjdCBpbnRlbF9waXBl
X2NyYyB7DQo+ID4gIAlzcGlubG9ja190IGxvY2s7DQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZHAuYw0KPiA+IGluZGV4IGQ1NWFjYzRhMDI4YTguLmZlZWExNzJkZDI3NTMg
MTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5j
DQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jDQo+ID4g
QEAgLTE4ODEsNyArMTg4MSw3IEBAIGludGVsX2RwX2RycnNfY29tcHV0ZV9jb25maWcoc3RydWN0
IGludGVsX2Nvbm5lY3RvciAqY29ubmVjdG9yLA0KPiA+ICAJaWYgKElTX0lST05MQUtFKGk5MTUp
IHx8IElTX1NBTkRZQlJJREdFKGk5MTUpIHx8IElTX0lWWUJSSURHRShpOTE1KSkNCj4gPiAgCQlw
aXBlX2NvbmZpZy0+bXNhX3RpbWluZ19kZWxheSA9IGk5MTUtPnZidC5lZHAuZHJyc19tc2FfdGlt
aW5nX2RlbGF5Ow0KPiA+ICANCj4gPiAtCXBpcGVfY29uZmlnLT5oYXNfZHJycyA9IHRydWU7DQo+
ID4gKwlwaXBlX2NvbmZpZy0+ZHJyc19kb3duY2xvY2tfbW9kZSA9IGRvd25jbG9ja19tb2RlOw0K
PiA+ICANCj4gPiAgCXBpeGVsX2Nsb2NrID0gZG93bmNsb2NrX21vZGUtPmNsb2NrOw0KPiA+ICAJ
aWYgKHBpcGVfY29uZmlnLT5zcGxpdHRlci5lbmFibGUpDQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHJycy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kcnJzLmMNCj4gPiBpbmRleCAxNjZjYWYyOTNmN2JjLi5kZDUyN2Rm
YzJkMWQ1IDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZHJycy5jDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
cnJzLmMNCj4gPiBAQCAtMTQ0LDcgKzE0NCw3IEBAIHZvaWQgaW50ZWxfZHJyc19hY3RpdmF0ZShj
b25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkNCj4gPiAgew0KPiA+ICAJ
c3RydWN0IGludGVsX2NydGMgKmNydGMgPSB0b19pbnRlbF9jcnRjKGNydGNfc3RhdGUtPnVhcGku
Y3J0Yyk7DQo+ID4gIA0KPiA+IC0JaWYgKCFjcnRjX3N0YXRlLT5oYXNfZHJycykNCj4gPiArCWlm
ICghQ1JUQ19TVEFURV9IQVNfRFJSUyhjcnRjX3N0YXRlKSkNCj4gPiAgCQlyZXR1cm47DQo+ID4g
IA0KPiA+ICAJaWYgKCFjcnRjX3N0YXRlLT5ody5hY3RpdmUpDQo+ID4gQEAgLTE3Niw3ICsxNzYs
NyBAQCB2b2lkIGludGVsX2RycnNfZGVhY3RpdmF0ZShjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19z
dGF0ZSAqb2xkX2NydGNfc3RhdGUpDQo+ID4gIHsNCj4gPiAgCXN0cnVjdCBpbnRlbF9jcnRjICpj
cnRjID0gdG9faW50ZWxfY3J0YyhvbGRfY3J0Y19zdGF0ZS0+dWFwaS5jcnRjKTsNCj4gPiAgDQo+
ID4gLQlpZiAoIW9sZF9jcnRjX3N0YXRlLT5oYXNfZHJycykNCj4gPiArCWlmICghQ1JUQ19TVEFU
RV9IQVNfRFJSUyhvbGRfY3J0Y19zdGF0ZSkpDQo+ID4gIAkJcmV0dXJuOw0KPiA+ICANCj4gPiAg
CWlmICghb2xkX2NydGNfc3RhdGUtPmh3LmFjdGl2ZSkNCj4gDQoNCg==
