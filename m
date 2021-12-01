Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9014F4653D2
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Dec 2021 18:21:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 81A786E8BE;
	Wed,  1 Dec 2021 17:21:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 70AE66E8BA
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Dec 2021 17:21:35 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10185"; a="297307206"
X-IronPort-AV: E=Sophos;i="5.87,279,1631602800"; d="scan'208";a="297307206"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2021 09:18:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,279,1631602800"; d="scan'208";a="459321338"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga003.jf.intel.com with ESMTP; 01 Dec 2021 09:18:56 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Wed, 1 Dec 2021 09:18:55 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Wed, 1 Dec 2021 09:18:55 -0800
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2308.020;
 Wed, 1 Dec 2021 09:18:55 -0800
From: "Souza, Jose" <jose.souza@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 03/14] drm/i915: Get rid of the "sizes are 0
 based" stuff
Thread-Index: AQHX5sfeG/MsrmNBuUGccH5LUqKKtaweZ9GA
Date: Wed, 1 Dec 2021 17:18:54 +0000
Message-ID: <be4aff86415959904384e811f0f9e894c52b84fb.camel@intel.com>
References: <20211201152552.7821-1-ville.syrjala@linux.intel.com>
 <20211201152552.7821-4-ville.syrjala@linux.intel.com>
In-Reply-To: <20211201152552.7821-4-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-Type: text/plain; charset="utf-8"
Content-ID: <8D061F2000CECE40AF7842B9D74A1F33@intel.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 03/14] drm/i915: Get rid of the "sizes are 0
 based" stuff
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

T24gV2VkLCAyMDIxLTEyLTAxIGF0IDE3OjI1ICswMjAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOg0K
PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiANCj4gUmVwbGFjZSB0aGUgInNpemVzIGFyZSAwIGJhc2VkIiBzdHVmZiB3aXRoIGp1c3Qgc3Ry
YWlnaHQNCj4gdXAgLTEgd2hlcmUgbmVlZGVkLiBMZXNzIGNvbmZ1c2luZyBhbGwgYXJvdW5kLg0K
PiANCj4gU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4
LmludGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X3Nwcml0ZS5jICAgfCAyNiArKysrLS0tLS0tLS0tLS0tLS0tDQo+ICAuLi4vZHJtL2k5MTUvZGlz
cGxheS9za2xfdW5pdmVyc2FsX3BsYW5lLmMgICAgfCAgNiArLS0tLQ0KPiAgMiBmaWxlcyBjaGFu
Z2VkLCA2IGluc2VydGlvbnMoKyksIDI2IGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfc3ByaXRlLmMgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Nwcml0ZS5jDQo+IGluZGV4IDFiOTlhOTUwMWE0NS4u
MjA2N2E3YmNhNGE4IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX3Nwcml0ZS5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfc3ByaXRlLmMNCj4gQEAgLTQzMSwxMCArNDMxLDYgQEAgdmx2X3Nwcml0ZV91cGRhdGVfbm9h
cm0oc3RydWN0IGludGVsX3BsYW5lICpwbGFuZSwNCj4gIAl1MzIgY3J0Y19oID0gZHJtX3JlY3Rf
aGVpZ2h0KCZwbGFuZV9zdGF0ZS0+dWFwaS5kc3QpOw0KPiAgCXVuc2lnbmVkIGxvbmcgaXJxZmxh
Z3M7DQo+ICANCj4gLQkvKiBTaXplcyBhcmUgMCBiYXNlZCAqLw0KDQpJbiBteSBvcGluaW9uIGF0
IGxlYXN0IHRoaXMgY29tbWVudCBzaG91bGQgc3RheSwgaGVscHMgdW5kZXJzdGFuZCB3aHkgdGhl
IC0xLiANCg0KPiAtCWNydGNfdy0tOw0KPiAtCWNydGNfaC0tOw0KPiAtDQo+ICAJc3Bpbl9sb2Nr
X2lycXNhdmUoJmRldl9wcml2LT51bmNvcmUubG9jaywgaXJxZmxhZ3MpOw0KPiAgDQo+ICAJaW50
ZWxfZGVfd3JpdGVfZncoZGV2X3ByaXYsIFNQU1RSSURFKHBpcGUsIHBsYW5lX2lkKSwNCj4gQEAg
LTQ0Miw3ICs0MzgsNyBAQCB2bHZfc3ByaXRlX3VwZGF0ZV9ub2FybShzdHJ1Y3QgaW50ZWxfcGxh
bmUgKnBsYW5lLA0KPiAgCWludGVsX2RlX3dyaXRlX2Z3KGRldl9wcml2LCBTUFBPUyhwaXBlLCBw
bGFuZV9pZCksDQo+ICAJCQkgIChjcnRjX3kgPDwgMTYpIHwgY3J0Y194KTsNCj4gIAlpbnRlbF9k
ZV93cml0ZV9mdyhkZXZfcHJpdiwgU1BTSVpFKHBpcGUsIHBsYW5lX2lkKSwNCj4gLQkJCSAgKGNy
dGNfaCA8PCAxNikgfCBjcnRjX3cpOw0KPiArCQkJICAoKGNydGNfaCAtIDEpIDw8IDE2KSB8IChj
cnRjX3cgLSAxKSk7DQo+ICANCj4gIAlzcGluX3VubG9ja19pcnFyZXN0b3JlKCZkZXZfcHJpdi0+
dW5jb3JlLmxvY2ssIGlycWZsYWdzKTsNCj4gIH0NCj4gQEAgLTg2NiwyMSArODYyLDE1IEBAIGl2
Yl9zcHJpdGVfdXBkYXRlX25vYXJtKHN0cnVjdCBpbnRlbF9wbGFuZSAqcGxhbmUsDQo+ICAJdTMy
IHNwcnNjYWxlID0gMDsNCj4gIAl1bnNpZ25lZCBsb25nIGlycWZsYWdzOw0KPiAgDQo+IC0JLyog
U2l6ZXMgYXJlIDAgYmFzZWQgKi8NCj4gLQlzcmNfdy0tOw0KPiAtCXNyY19oLS07DQo+IC0JY3J0
Y193LS07DQo+IC0JY3J0Y19oLS07DQo+IC0NCj4gIAlpZiAoY3J0Y193ICE9IHNyY193IHx8IGNy
dGNfaCAhPSBzcmNfaCkNCj4gLQkJc3Byc2NhbGUgPSBTUFJJVEVfU0NBTEVfRU5BQkxFIHwgKHNy
Y193IDw8IDE2KSB8IHNyY19oOw0KPiArCQlzcHJzY2FsZSA9IFNQUklURV9TQ0FMRV9FTkFCTEUg
fCAoKHNyY193IC0gMSkgPDwgMTYpIHwgKHNyY19oIC0gMSk7DQo+ICANCj4gIAlzcGluX2xvY2tf
aXJxc2F2ZSgmZGV2X3ByaXYtPnVuY29yZS5sb2NrLCBpcnFmbGFncyk7DQo+ICANCj4gIAlpbnRl
bF9kZV93cml0ZV9mdyhkZXZfcHJpdiwgU1BSU1RSSURFKHBpcGUpLA0KPiAgCQkJICBwbGFuZV9z
dGF0ZS0+dmlldy5jb2xvcl9wbGFuZVswXS5tYXBwaW5nX3N0cmlkZSk7DQo+ICAJaW50ZWxfZGVf
d3JpdGVfZncoZGV2X3ByaXYsIFNQUlBPUyhwaXBlKSwgKGNydGNfeSA8PCAxNikgfCBjcnRjX3gp
Ow0KPiAtCWludGVsX2RlX3dyaXRlX2Z3KGRldl9wcml2LCBTUFJTSVpFKHBpcGUpLCAoY3J0Y19o
IDw8IDE2KSB8IGNydGNfdyk7DQo+ICsJaW50ZWxfZGVfd3JpdGVfZncoZGV2X3ByaXYsIFNQUlNJ
WkUocGlwZSksICgoY3J0Y19oIC0gMSkgPDwgMTYpIHwgKGNydGNfdyAtIDEpKTsNCj4gIAlpZiAo
SVNfSVZZQlJJREdFKGRldl9wcml2KSkNCj4gIAkJaW50ZWxfZGVfd3JpdGVfZncoZGV2X3ByaXYs
IFNQUlNDQUxFKHBpcGUpLCBzcHJzY2FsZSk7DQo+ICANCj4gQEAgLTEyMDgsMjEgKzExOTgsMTUg
QEAgZzR4X3Nwcml0ZV91cGRhdGVfbm9hcm0oc3RydWN0IGludGVsX3BsYW5lICpwbGFuZSwNCj4g
IAl1MzIgZHZzc2NhbGUgPSAwOw0KPiAgCXVuc2lnbmVkIGxvbmcgaXJxZmxhZ3M7DQo+ICANCj4g
LQkvKiBTaXplcyBhcmUgMCBiYXNlZCAqLw0KPiAtCXNyY193LS07DQo+IC0Jc3JjX2gtLTsNCj4g
LQljcnRjX3ctLTsNCj4gLQljcnRjX2gtLTsNCj4gLQ0KPiAgCWlmIChjcnRjX3cgIT0gc3JjX3cg
fHwgY3J0Y19oICE9IHNyY19oKQ0KPiAtCQlkdnNzY2FsZSA9IERWU19TQ0FMRV9FTkFCTEUgfCAo
c3JjX3cgPDwgMTYpIHwgc3JjX2g7DQo+ICsJCWR2c3NjYWxlID0gRFZTX1NDQUxFX0VOQUJMRSB8
ICgoc3JjX3cgLSAxKSA8PCAxNikgfCAoc3JjX2ggLSAxKTsNCj4gIA0KPiAgCXNwaW5fbG9ja19p
cnFzYXZlKCZkZXZfcHJpdi0+dW5jb3JlLmxvY2ssIGlycWZsYWdzKTsNCj4gIA0KPiAgCWludGVs
X2RlX3dyaXRlX2Z3KGRldl9wcml2LCBEVlNTVFJJREUocGlwZSksDQo+ICAJCQkgIHBsYW5lX3N0
YXRlLT52aWV3LmNvbG9yX3BsYW5lWzBdLm1hcHBpbmdfc3RyaWRlKTsNCj4gIAlpbnRlbF9kZV93
cml0ZV9mdyhkZXZfcHJpdiwgRFZTUE9TKHBpcGUpLCAoY3J0Y195IDw8IDE2KSB8IGNydGNfeCk7
DQo+IC0JaW50ZWxfZGVfd3JpdGVfZncoZGV2X3ByaXYsIERWU1NJWkUocGlwZSksIChjcnRjX2gg
PDwgMTYpIHwgY3J0Y193KTsNCj4gKwlpbnRlbF9kZV93cml0ZV9mdyhkZXZfcHJpdiwgRFZTU0la
RShwaXBlKSwgKChjcnRjX2ggLSAxKSA8PCAxNikgfCAoY3J0Y193IC0gMSkpOw0KPiAgCWludGVs
X2RlX3dyaXRlX2Z3KGRldl9wcml2LCBEVlNTQ0FMRShwaXBlKSwgZHZzc2NhbGUpOw0KPiAgDQo+
ICAJc3Bpbl91bmxvY2tfaXJxcmVzdG9yZSgmZGV2X3ByaXYtPnVuY29yZS5sb2NrLCBpcnFmbGFn
cyk7DQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L3NrbF91bml2
ZXJzYWxfcGxhbmUuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvc2tsX3VuaXZlcnNh
bF9wbGFuZS5jDQo+IGluZGV4IDlmZjI0YTBlNzliNC4uMDk5NDg5MjIwMTZiIDEwMDY0NA0KPiAt
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L3NrbF91bml2ZXJzYWxfcGxhbmUuYw0K
PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L3NrbF91bml2ZXJzYWxfcGxhbmUu
Yw0KPiBAQCAtMTAyMiwxMCArMTAyMiw2IEBAIHNrbF9wcm9ncmFtX3BsYW5lX25vYXJtKHN0cnVj
dCBpbnRlbF9wbGFuZSAqcGxhbmUsDQo+ICAJdTMyIHNyY19oID0gZHJtX3JlY3RfaGVpZ2h0KCZw
bGFuZV9zdGF0ZS0+dWFwaS5zcmMpID4+IDE2Ow0KPiAgCXVuc2lnbmVkIGxvbmcgaXJxZmxhZ3M7
DQo+ICANCj4gLQkvKiBTaXplcyBhcmUgMCBiYXNlZCAqLw0KPiAtCXNyY193LS07DQo+IC0Jc3Jj
X2gtLTsNCj4gLQ0KPiAgCS8qIFRoZSBzY2FsZXIgd2lsbCBoYW5kbGUgdGhlIG91dHB1dCBwb3Np
dGlvbiAqLw0KPiAgCWlmIChwbGFuZV9zdGF0ZS0+c2NhbGVyX2lkID49IDApIHsNCj4gIAkJY3J0
Y194ID0gMDsNCj4gQEAgLTEwNDUsNyArMTA0MSw3IEBAIHNrbF9wcm9ncmFtX3BsYW5lX25vYXJt
KHN0cnVjdCBpbnRlbF9wbGFuZSAqcGxhbmUsDQo+ICAJaW50ZWxfZGVfd3JpdGVfZncoZGV2X3By
aXYsIFBMQU5FX1BPUyhwaXBlLCBwbGFuZV9pZCksDQo+ICAJCQkgIChjcnRjX3kgPDwgMTYpIHwg
Y3J0Y194KTsNCj4gIAlpbnRlbF9kZV93cml0ZV9mdyhkZXZfcHJpdiwgUExBTkVfU0laRShwaXBl
LCBwbGFuZV9pZCksDQo+IC0JCQkgIChzcmNfaCA8PCAxNikgfCBzcmNfdyk7DQo+ICsJCQkgICgo
c3JjX2ggLSAxKSA8PCAxNikgfCAoc3JjX3cgLSAxKSk7DQo+ICANCj4gIAlpZiAoaW50ZWxfZmJf
aXNfcmNfY2NzX2NjX21vZGlmaWVyKGZiLT5tb2RpZmllcikpIHsNCj4gIAkJaW50ZWxfZGVfd3Jp
dGVfZncoZGV2X3ByaXYsIFBMQU5FX0NDX1ZBTChwaXBlLCBwbGFuZV9pZCwgMCksDQoNCg==
