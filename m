Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C36D83B33C3
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Jun 2021 18:19:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2973D6EC5D;
	Thu, 24 Jun 2021 16:19:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EE7516EC5F
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Jun 2021 16:19:14 +0000 (UTC)
IronPort-SDR: BBkk1De16oHizouZmMgoGhO3NTUDgWMzfJbb+cdGLzSWwdS1goJNweEiMvYW6IUoaWkBgh5tMG
 oMEpciSmasmw==
X-IronPort-AV: E=McAfee;i="6200,9189,10025"; a="194803895"
X-IronPort-AV: E=Sophos;i="5.83,296,1616482800"; d="scan'208";a="194803895"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2021 09:19:12 -0700
IronPort-SDR: Xglml1ngi5faYAKWNcNXPLqJ9sdBMDKp7z+GIOXasIc1ubig3nEYe2ZECpev/dYAY4Ol5/Ibxn
 uPdjrREN0vng==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,296,1616482800"; d="scan'208";a="455122769"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga008.fm.intel.com with ESMTP; 24 Jun 2021 09:19:08 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Thu, 24 Jun 2021 09:19:08 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Thu, 24 Jun 2021 09:19:07 -0700
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2242.008;
 Thu, 24 Jun 2021 09:19:07 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "Mun, Gwan-gyeong" <gwan-gyeong.mun@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 6/6] drm/i915/display/adl_p: Implement PSR changes
Thread-Index: AQHXYu4mZoCDqwVfHUStaopgDDgGPasidT4AgAFko4A=
Date: Thu, 24 Jun 2021 16:19:06 +0000
Message-ID: <737fb12e83a7ce61c9e58d5e416f7b7a478dcfa1.camel@intel.com>
References: <20210616203158.118111-1-jose.souza@intel.com>
 <20210616203158.118111-6-jose.souza@intel.com>
 <9116be8e-606c-ff50-426a-e965c8b7edde@intel.com>
In-Reply-To: <9116be8e-606c-ff50-426a-e965c8b7edde@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-ID: <E7A8624EF43D264683DFEFDDA3601A1E@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 6/6] drm/i915/display/adl_p: Implement PSR
 changes
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

T24gV2VkLCAyMDIxLTA2LTIzIGF0IDIyOjA2ICswMzAwLCBHd2FuLWd5ZW9uZyBNdW4gd3JvdGU6
DQo+IE9uIDYvMTYvMjEgMTE6MzEgUE0sIEpvc8OpIFJvYmVydG8gZGUgU291emEgd3JvdGU6DQo+
ID4gSW1wbGVtZW50cyBjaGFuZ2VzIGFyb3VuZCBQU1IgZm9yIGFsZGVybGFrZS1QOg0KPiA+IA0K
PiA+IC0gRURQX1NVX1RSQUNLX0VOQUJMRSB3YXMgcmVtb3ZlZCBhbmQgYml0IDMwIG5vdyBoYXMg
b3RoZXIgZnVuY3Rpb24NCj4gPiAtIFNvbWUgYml0cyBvZiBQU1IyX01BTl9UUktfQ1RMIG1vdmVk
IGFuZCBTRl9QQVJUSUFMX0ZSQU1FX1VQREFURSB3YXMNCj4gPiAgICByZW1vdmVkIHNldHRpbmcg
U1VfUkVHSU9OX1NUQVJUL0VORF9BRERSIHdpbGwgZG8gdGhpcyBqb2INCj4gPiAtIFNVX1JFR0lP
Tl9TVEFSVC9FTkRfQUREUiBoYXZlIG5vdyBsaW5lIGdyYW51bGFyaXR5IGJ1dCB3aWxsIG5lZWQg
dG8NCj4gPiAgICBiZSBhbGlnbmVkIHdpdGggRFNDIHdoZW4gdGhlIFBTUlMgKyBEU0Mgc3VwcG9y
dCBsYW5kcw0KPiA+IA0KPiA+IEJTcGVjOiA1MDQyMg0KPiA+IEJTcGVjOiA1MDQyNA0KPiA+IENj
OiBHd2FuLWd5ZW9uZyBNdW4gPGd3YW4tZ3llb25nLm11bkBpbnRlbC5jb20+DQo+ID4gQ2M6IEFu
dXNoYSBTcml2YXRzYSA8YW51c2hhLnNyaXZhdHNhQGludGVsLmNvbT4NCj4gPiBTaWduZWQtb2Zm
LWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4NCj4gPiBT
aWduZWQtb2ZmLWJ5OiBHd2FuLWd5ZW9uZyBNdW4gPGd3YW4tZ3llb25nLm11bkBpbnRlbC5jb20+
DQo+ID4gLS0tDQo+ID4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5j
IHwgNDMgKysrKysrKysrKysrKysrKysrLS0tLS0tDQo+ID4gICBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X3JlZy5oICAgICAgICAgIHwgMjYgKysrKysrKystLS0tLS0NCj4gPiAgIDIgZmlsZXMg
Y2hhbmdlZCwgNDggaW5zZXJ0aW9ucygrKSwgMjEgZGVsZXRpb25zKC0pDQo+ID4gDQo+ID4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ID4gaW5kZXggOTY0MzYyNGZl
MTYwZC4uNDZiYjE5YzRiNjNhNCAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9wc3IuYw0KPiA+IEBAIC01MzQsMTEgKzUzNCwxMyBAQCBzdGF0aWMgdTMyIGlu
dGVsX3BzcjJfZ2V0X3RwX3RpbWUoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCkNCj4gPiAgIHN0
YXRpYyB2b2lkIGhzd19hY3RpdmF0ZV9wc3IyKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApDQo+
ID4gICB7DQo+ID4gICAJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gZHBfdG9f
aTkxNShpbnRlbF9kcCk7DQo+ID4gLQl1MzIgdmFsOw0KPiA+ICsJdTMyIHZhbCA9IEVEUF9QU1Iy
X0VOQUJMRTsNCj4gPiArDQo+ID4gKwl2YWwgfD0gcHNyX2NvbXB1dGVfaWRsZV9mcmFtZXMoaW50
ZWxfZHApIDw8IEVEUF9QU1IyX0lETEVfRlJBTUVfU0hJRlQ7DQo+ID4gICANCj4gPiAtCXZhbCA9
IHBzcl9jb21wdXRlX2lkbGVfZnJhbWVzKGludGVsX2RwKSA8PCBFRFBfUFNSMl9JRExFX0ZSQU1F
X1NISUZUOw0KPiA+ICsJaWYgKCFJU19BTERFUkxBS0VfUChkZXZfcHJpdikpDQo+ID4gKwkJdmFs
IHw9IEVEUF9TVV9UUkFDS19FTkFCTEU7DQo+ID4gICANCj4gPiAtCXZhbCB8PSBFRFBfUFNSMl9F
TkFCTEUgfCBFRFBfU1VfVFJBQ0tfRU5BQkxFOw0KPiA+ICAgCWlmIChESVNQTEFZX1ZFUihkZXZf
cHJpdikgPj0gMTAgJiYgRElTUExBWV9WRVIoZGV2X3ByaXYpIDw9IDEyKQ0KPiA+ICAgCQl2YWwg
fD0gRURQX1lfQ09PUkRJTkFURV9FTkFCTEU7DQo+ID4gICANCj4gPiBAQCAtNzkzLDYgKzc5NSw3
IEBAIHN0YXRpYyBib29sIGludGVsX3BzcjJfc2VsX2ZldGNoX2NvbmZpZ192YWxpZChzdHJ1Y3Qg
aW50ZWxfZHAgKmludGVsX2RwLA0KPiA+ICAgc3RhdGljIGJvb2wgcHNyMl9ncmFudWxhcml0eV9j
aGVjayhzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLA0KPiA+ICAgCQkJCSAgIHN0cnVjdCBpbnRl
bF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQ0KPiA+ICAgew0KPiA+ICsJc3RydWN0IGRybV9pOTE1
X3ByaXZhdGUgKmRldl9wcml2ID0gZHBfdG9faTkxNShpbnRlbF9kcCk7DQo+ID4gICAJY29uc3Qg
aW50IGNydGNfaGRpc3BsYXkgPSBjcnRjX3N0YXRlLT5ody5hZGp1c3RlZF9tb2RlLmNydGNfaGRp
c3BsYXk7DQo+ID4gICAJY29uc3QgaW50IGNydGNfdmRpc3BsYXkgPSBjcnRjX3N0YXRlLT5ody5h
ZGp1c3RlZF9tb2RlLmNydGNfdmRpc3BsYXk7DQo+ID4gICAJdTE2IHlfZ3JhbnVsYXJpdHkgPSAw
Ow0KPiA+IEBAIC04MDksMTAgKzgxMiwxMyBAQCBzdGF0aWMgYm9vbCBwc3IyX2dyYW51bGFyaXR5
X2NoZWNrKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsDQo+ID4gICAJCXJldHVybiBpbnRlbF9k
cC0+cHNyLnN1X3lfZ3JhbnVsYXJpdHkgPT0gNDsNCj4gPiAgIA0KPiA+ICAgCS8qDQo+ID4gLQkg
KiBGb3IgU1cgdHJhY2tpbmcgd2UgY2FuIGFkanVzdCB0aGUgeSB0byBtYXRjaCBzaW5rIHJlcXVp
cmVtZW50IGlmDQo+ID4gLQkgKiBtdWx0aXBsZSBvZiA0DQo+ID4gKwkgKiBhZGxfcCBoYXMgMSBs
aW5lIGdyYW51bGFyaXR5IGZvciBvdGhlciBwbGF0Zm9ybXMgd2l0aCBTVyB0cmFja2luZyB3ZQ0K
PiA+ICsJICogY2FuIGFkanVzdCB0aGUgeSBjb29yZGluYXRlIHRvIG1hdGNoIHNpbmsgcmVxdWly
ZW1lbnQgaWYgbXVsdGlwbGUgb2YNCj4gPiArCSAqIDQNCj4gPiAgIAkgKi8NCj4gPiAtCWlmIChp
bnRlbF9kcC0+cHNyLnN1X3lfZ3JhbnVsYXJpdHkgPD0gMikNCj4gPiArCWlmIChJU19BTERFUkxB
S0VfUChkZXZfcHJpdikpDQo+ID4gKwkJeV9ncmFudWxhcml0eSA9IGludGVsX2RwLT5wc3Iuc3Vf
eV9ncmFudWxhcml0eTsNCj4gPiArCWVsc2UgaWYgKGludGVsX2RwLT5wc3Iuc3VfeV9ncmFudWxh
cml0eSA8PSAyKQ0KPiA+ICAgCQl5X2dyYW51bGFyaXR5ID0gNDsNCj4gPiAgIAllbHNlIGlmICgo
aW50ZWxfZHAtPnBzci5zdV95X2dyYW51bGFyaXR5ICUgNCkgPT0gMCkNCj4gPiAgIAkJeV9ncmFu
dWxhcml0eSA9IGludGVsX2RwLT5wc3Iuc3VfeV9ncmFudWxhcml0eTsNCj4gPiBAQCAtMTUyNSwy
MSArMTUzMSwzMiBAQCB2b2lkIGludGVsX3BzcjJfcHJvZ3JhbV90cmFuc19tYW5fdHJrX2N0bChj
b25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdA0KPiA+ICAgc3RhdGljIHZvaWQg
cHNyMl9tYW5fdHJrX2N0bF9jYWxjKHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRl
LA0KPiA+ICAgCQkJCSAgc3RydWN0IGRybV9yZWN0ICpjbGlwLCBib29sIGZ1bGxfdXBkYXRlKQ0K
PiA+ICAgew0KPiA+ICsJc3RydWN0IGludGVsX2NydGMgKmNydGMgPSB0b19pbnRlbF9jcnRjKGNy
dGNfc3RhdGUtPnVhcGkuY3J0Yyk7DQo+ID4gKwlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2
X3ByaXYgPSB0b19pOTE1KGNydGMtPmJhc2UuZGV2KTsNCj4gPiAgIAl1MzIgdmFsID0gUFNSMl9N
QU5fVFJLX0NUTF9FTkFCTEU7DQo+IFRoZSBsb2dpYyBpcyBub3Qgd3JvbmcsIGJ1dCB0aGUgbWVh
bmluZyBvZiB0aGUgcmVnaXN0ZXIgYml0IGhhcyBjaGFuZ2VkLg0KPiBUaGUgMzFzdCBiaXQgaW4g
QURMLVAgbWVhbnMgIlNGIHBhcnRpYWwgZnJhbWUgZW5hYmxlIi4NCj4gSXQgaXMgcmVjb21tZW5k
ZWQgdG8gYWRkIGEgbWFjcm8gc3VjaCBhcyANCj4gQURMUF9QU1IyX01BTl9UUktfQ1RMX1NGX1BB
UlRJQUxfRlJBTUVfRU5BQkxFIHRvIHRoZSBjb2RlIHRvIGNsYXJpZnkgdGhlIA0KPiByb2xlIG9m
IHRoZSBjaGFuZ2VkIHJlZ2lzdGVyLg0KDQpJbiBteSBvcGluaW9uIHRoZSBtZWFuaW5nIGlzIHRo
ZSBzYW1lLCBlbmFibGUgbWFudWFsL3NvZnR3YXJlIHRyYWNraW5nLg0KSXQgd2FzIGp1c3QgYSBy
ZWdpc3RlciByZW5hbWUgZG9uZSBhcyBwYXJ0IG9mIGNoYW5nZXMgb2YgdGhlIG90aGVyIGJpdHMu
IA0KDQpCdXQgaWYgeW91IHJlYWxseSB0aGluayBpcyBuZWNlc3NhcnkgSSBjYW4gZG8gdGhhdCwg
cGxlYXNlIGxldCBtZSBrbm93Lg0KDQo+ID4gICANCj4gPiAgIAlpZiAoZnVsbF91cGRhdGUpIHsN
Cj4gPiAtCQl2YWwgfD0gUFNSMl9NQU5fVFJLX0NUTF9TRl9TSU5HTEVfRlVMTF9GUkFNRTsNCj4g
PiArCQlpZiAoSVNfQUxERVJMQUtFX1AoZGV2X3ByaXYpKQ0KPiA+ICsJCQl2YWwgfD0gQURMUF9Q
U1IyX01BTl9UUktfQ1RMX1NGX1NJTkdMRV9GVUxMX0ZSQU1FOw0KPiA+ICsJCWVsc2UNCj4gPiAr
CQkJdmFsIHw9IFBTUjJfTUFOX1RSS19DVExfU0ZfU0lOR0xFX0ZVTExfRlJBTUU7DQo+ID4gKw0K
PiA+ICAgCQlnb3RvIGV4aXQ7DQo+ID4gICAJfQ0KPiA+ICAgDQo+ID4gICAJaWYgKGNsaXAtPnkx
ID09IC0xKQ0KPiA+ICAgCQlnb3RvIGV4aXQ7DQo+ID4gICANCj4gPiAtCWRybV9XQVJOX09OKGNy
dGNfc3RhdGUtPnVhcGkuY3J0Yy0+ZGV2LCBjbGlwLT55MSAlIDQgfHwgY2xpcC0+eTIgJSA0KTsN
Cj4gPiArCWlmIChJU19BTERFUkxBS0VfUChkZXZfcHJpdikpIHsNCj4gPiArCQl2YWwgfD0gQURM
UF9QU1IyX01BTl9UUktfQ1RMX1NVX1JFR0lPTl9TVEFSVF9BRERSKGNsaXAtPnkxKTsNCj4gPiAr
CQl2YWwgfD0gQURMUF9QU1IyX01BTl9UUktfQ1RMX1NVX1JFR0lPTl9FTkRfQUREUihjbGlwLT55
Mik7DQo+ID4gKwl9IGVsc2Ugew0KPiA+ICsJCWRybV9XQVJOX09OKGNydGNfc3RhdGUtPnVhcGku
Y3J0Yy0+ZGV2LCBjbGlwLT55MSAlIDQgfHwgY2xpcC0+eTIgJSA0KTsNCj4gPiAgIA0KPiA+IC0J
dmFsIHw9IFBTUjJfTUFOX1RSS19DVExfU0ZfUEFSVElBTF9GUkFNRV9VUERBVEU7DQo+ID4gLQl2
YWwgfD0gUFNSMl9NQU5fVFJLX0NUTF9TVV9SRUdJT05fU1RBUlRfQUREUihjbGlwLT55MSAvIDQg
KyAxKTsNCj4gPiAtCXZhbCB8PSBQU1IyX01BTl9UUktfQ1RMX1NVX1JFR0lPTl9FTkRfQUREUihj
bGlwLT55MiAvIDQgKyAxKTsNCj4gPiArCQl2YWwgfD0gUFNSMl9NQU5fVFJLX0NUTF9TRl9QQVJU
SUFMX0ZSQU1FX1VQREFURTsNCj4gPiArCQl2YWwgfD0gUFNSMl9NQU5fVFJLX0NUTF9TVV9SRUdJ
T05fU1RBUlRfQUREUihjbGlwLT55MSAvIDQgKyAxKTsNCj4gPiArCQl2YWwgfD0gUFNSMl9NQU5f
VFJLX0NUTF9TVV9SRUdJT05fRU5EX0FERFIoY2xpcC0+eTIgLyA0ICsgMSk7DQo+ID4gKwl9DQo+
ID4gICBleGl0Og0KPiA+ICAgCWNydGNfc3RhdGUtPnBzcjJfbWFuX3RyYWNrX2N0bCA9IHZhbDsN
Cj4gPiAgIH0NCj4gPiBAQCAtMTU2MywxMSArMTU4MCwxNSBAQCBzdGF0aWMgdm9pZCBjbGlwX2Fy
ZWFfdXBkYXRlKHN0cnVjdCBkcm1fcmVjdCAqb3ZlcmxhcF9kYW1hZ2VfYXJlYSwNCj4gPiAgIHN0
YXRpYyB2b2lkIGludGVsX3BzcjJfc2VsX2ZldGNoX3BpcGVfYWxpZ25tZW50KGNvbnN0IHN0cnVj
dCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlLA0KPiA+ICAgCQkJCQkJc3RydWN0IGRybV9y
ZWN0ICpwaXBlX2NsaXApDQo+ID4gICB7DQo+ID4gKwlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAq
ZGV2X3ByaXYgPSB0b19pOTE1KGNydGNfc3RhdGUtPnVhcGkuY3J0Yy0+ZGV2KTsNCj4gPiAgIAlj
b25zdCB1MTYgeV9hbGlnbm1lbnQgPSBjcnRjX3N0YXRlLT5zdV95X2dyYW51bGFyaXR5Ow0KPiA+
ICAgDQo+ID4gICAJcGlwZV9jbGlwLT55MSAtPSBwaXBlX2NsaXAtPnkxICUgeV9hbGlnbm1lbnQ7
DQo+ID4gICAJaWYgKHBpcGVfY2xpcC0+eTIgJSB5X2FsaWdubWVudCkNCj4gPiAgIAkJcGlwZV9j
bGlwLT55MiA9ICgocGlwZV9jbGlwLT55MiAvIHlfYWxpZ25tZW50KSArIDEpICogeV9hbGlnbm1l
bnQ7DQo+ID4gKw0KPiA+ICsJaWYgKElTX0FMREVSTEFLRV9QKGRldl9wcml2KSAmJiBjcnRjX3N0
YXRlLT5kc2MuY29tcHJlc3Npb25fZW5hYmxlKQ0KPiA+ICsJCWRybV93YXJuKCZkZXZfcHJpdi0+
ZHJtLCAiTWlzc2luZyBQU1IyIHNlbCBmZXRjaCBhbGlnbm1lbnQgd2l0aCBEU0NcbiIpOw0KPiA+
ICAgfQ0KPiA+ICAgDQo+ID4gICBpbnQgaW50ZWxfcHNyMl9zZWxfZmV0Y2hfdXBkYXRlKHN0cnVj
dCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLA0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X3JlZy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaA0K
PiA+IGluZGV4IGUwYmQ2MGZlN2ExOTAuLjc0ZGM1ZWJjZTYwZTcgMTAwNjQ0DQo+ID4gLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaA0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfcmVnLmgNCj4gPiBAQCAtNDU4Niw3ICs0NTg2LDcgQEAgZW51bSB7DQo+ID4g
ICAjZGVmaW5lIF9QU1IyX0NUTF9FRFAJCQkJMHg2ZjkwMA0KPiA+ICAgI2RlZmluZSBFRFBfUFNS
Ml9DVEwodHJhbikJCQlfTU1JT19UUkFOUzIodHJhbiwgX1BTUjJfQ1RMX0EpDQo+ID4gICAjZGVm
aW5lICAgRURQX1BTUjJfRU5BQkxFCQkJKDEgPDwgMzEpDQo+ID4gLSNkZWZpbmUgICBFRFBfU1Vf
VFJBQ0tfRU5BQkxFCQkJKDEgPDwgMzApDQo+ID4gKyNkZWZpbmUgICBFRFBfU1VfVFJBQ0tfRU5B
QkxFCQkJKDEgPDwgMzApIC8qIHVwIHRvIGFkbC1wICovDQo+ID4gICAjZGVmaW5lICAgVEdMX0VE
UF9QU1IyX0JMT0NLX0NPVU5UX05VTV8yCSgwIDw8IDI4KQ0KPiA+ICAgI2RlZmluZSAgIFRHTF9F
RFBfUFNSMl9CTE9DS19DT1VOVF9OVU1fMwkoMSA8PCAyOCkNCj4gPiAgICNkZWZpbmUgICBFRFBf
WV9DT09SRElOQVRFX0VOQUJMRQkJUkVHX0JJVCgyNSkgLyogZGlzcGxheSAxMCwgMTEgYW5kIDEy
ICovDQo+ID4gQEAgLTQ2NTUsMTcgKzQ2NTUsMjMgQEAgZW51bSB7DQo+ID4gICAjZGVmaW5lIFBT
UjJfU1VfU1RBVFVTX01BU0soZnJhbWUpCSgweDNmZiA8PCBQU1IyX1NVX1NUQVRVU19TSElGVChm
cmFtZSkpDQo+ID4gICAjZGVmaW5lIFBTUjJfU1VfU1RBVFVTX0ZSQU1FUwkJOA0KPiA+ICAgDQo+
ID4gLSNkZWZpbmUgX1BTUjJfTUFOX1RSS19DVExfQQkJCQkweDYwOTEwDQo+ID4gLSNkZWZpbmUg
X1BTUjJfTUFOX1RSS19DVExfRURQCQkJCTB4NmY5MTANCj4gPiAtI2RlZmluZSBQU1IyX01BTl9U
UktfQ1RMKHRyYW4pCQkJCV9NTUlPX1RSQU5TMih0cmFuLCBfUFNSMl9NQU5fVFJLX0NUTF9BKQ0K
PiA+IC0jZGVmaW5lICBQU1IyX01BTl9UUktfQ1RMX0VOQUJMRQkJCVJFR19CSVQoMzEpDQo+ID4g
LSNkZWZpbmUgIFBTUjJfTUFOX1RSS19DVExfU1VfUkVHSU9OX1NUQVJUX0FERFJfTUFTSwlSRUdf
R0VOTUFTSygzMCwgMjEpDQo+ID4gLSNkZWZpbmUgIFBTUjJfTUFOX1RSS19DVExfU1VfUkVHSU9O
X1NUQVJUX0FERFIodmFsKQlSRUdfRklFTERfUFJFUChQU1IyX01BTl9UUktfQ1RMX1NVX1JFR0lP
Tl9TVEFSVF9BRERSX01BU0ssIHZhbCkNCj4gPiArI2RlZmluZSBfUFNSMl9NQU5fVFJLX0NUTF9B
CQkJCQkweDYwOTEwDQo+ID4gKyNkZWZpbmUgX1BTUjJfTUFOX1RSS19DVExfRURQCQkJCQkweDZm
OTEwDQo+ID4gKyNkZWZpbmUgUFNSMl9NQU5fVFJLX0NUTCh0cmFuKQkJCQkJX01NSU9fVFJBTlMy
KHRyYW4sIF9QU1IyX01BTl9UUktfQ1RMX0EpDQo+ID4gKyNkZWZpbmUgIFBTUjJfTUFOX1RSS19D
VExfRU5BQkxFCQkJCVJFR19CSVQoMzEpDQo+ID4gKyNkZWZpbmUgIFBTUjJfTUFOX1RSS19DVExf
U1VfUkVHSU9OX1NUQVJUX0FERFJfTUFTSwkJUkVHX0dFTk1BU0soMzAsIDIxKQ0KPiA+ICsjZGVm
aW5lICBQU1IyX01BTl9UUktfQ1RMX1NVX1JFR0lPTl9TVEFSVF9BRERSKHZhbCkJCVJFR19GSUVM
RF9QUkVQKFBTUjJfTUFOX1RSS19DVExfU1VfUkVHSU9OX1NUQVJUX0FERFJfTUFTSywgdmFsKQ0K
PiA+ICAgI2RlZmluZSAgUFNSMl9NQU5fVFJLX0NUTF9TVV9SRUdJT05fRU5EX0FERFJfTUFTSwkJ
UkVHX0dFTk1BU0soMjAsIDExKQ0KPiA+ICAgI2RlZmluZSAgUFNSMl9NQU5fVFJLX0NUTF9TVV9S
RUdJT05fRU5EX0FERFIodmFsKQkJUkVHX0ZJRUxEX1BSRVAoUFNSMl9NQU5fVFJLX0NUTF9TVV9S
RUdJT05fRU5EX0FERFJfTUFTSywgdmFsKQ0KPiA+IC0jZGVmaW5lICBQU1IyX01BTl9UUktfQ1RM
X1NGX1NJTkdMRV9GVUxMX0ZSQU1FCQlSRUdfQklUKDMpDQo+ID4gLSNkZWZpbmUgIFBTUjJfTUFO
X1RSS19DVExfU0ZfQ09OVElOVU9TX0ZVTExfRlJBTUUJUkVHX0JJVCgyKQ0KPiA+IC0jZGVmaW5l
ICBQU1IyX01BTl9UUktfQ1RMX1NGX1BBUlRJQUxfRlJBTUVfVVBEQVRFCVJFR19CSVQoMSkNCj4g
PiArI2RlZmluZSAgUFNSMl9NQU5fVFJLX0NUTF9TRl9TSU5HTEVfRlVMTF9GUkFNRQkJCVJFR19C
SVQoMykNCj4gPiArI2RlZmluZSAgUFNSMl9NQU5fVFJLX0NUTF9TRl9DT05USU5VT1NfRlVMTF9G
UkFNRQkJUkVHX0JJVCgyKQ0KPiA+ICsjZGVmaW5lICBQU1IyX01BTl9UUktfQ1RMX1NGX1BBUlRJ
QUxfRlJBTUVfVVBEQVRFCQlSRUdfQklUKDEpDQo+ID4gKyNkZWZpbmUgIEFETFBfUFNSMl9NQU5f
VFJLX0NUTF9TVV9SRUdJT05fU1RBUlRfQUREUl9NQVNLCVJFR19HRU5NQVNLKDI4LCAxNikNCj4g
PiArI2RlZmluZSAgQURMUF9QU1IyX01BTl9UUktfQ1RMX1NVX1JFR0lPTl9TVEFSVF9BRERSKHZh
bCkJUkVHX0ZJRUxEX1BSRVAoQURMUF9QU1IyX01BTl9UUktfQ1RMX1NVX1JFR0lPTl9TVEFSVF9B
RERSX01BU0ssIHZhbCkNCj4gPiArI2RlZmluZSAgQURMUF9QU1IyX01BTl9UUktfQ1RMX1NVX1JF
R0lPTl9FTkRfQUREUl9NQVNLCQlSRUdfR0VOTUFTSygxMiwgMCkNCj4gPiArI2RlZmluZSAgQURM
UF9QU1IyX01BTl9UUktfQ1RMX1NVX1JFR0lPTl9FTkRfQUREUih2YWwpCQlSRUdfRklFTERfUFJF
UChBRExQX1BTUjJfTUFOX1RSS19DVExfU1VfUkVHSU9OX0VORF9BRERSX01BU0ssIHZhbCkNCj4g
PiArI2RlZmluZSAgQURMUF9QU1IyX01BTl9UUktfQ1RMX1NGX1NJTkdMRV9GVUxMX0ZSQU1FCQlS
RUdfQklUKDE0KQ0KPiA+ICsjZGVmaW5lICBBRExQX1BTUjJfTUFOX1RSS19DVExfU0ZfQ09OVElO
VU9TX0ZVTExfRlJBTUUJCVJFR19CSVQoMTMpDQo+ID4gICANCj4gPiAgIC8qIEljZWxha2UgRFND
IFJhdGUgQ29udHJvbCBSYW5nZSBQYXJhbWV0ZXIgUmVnaXN0ZXJzICovDQo+ID4gICAjZGVmaW5l
IERTQ0FfUkNfUkFOR0VfUEFSQU1FVEVSU18wCQlfTU1JTygweDZCMjQwKQ0KPiA+IA0KDQpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
