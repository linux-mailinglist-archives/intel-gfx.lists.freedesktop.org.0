Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0412826DD86
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Sep 2020 16:07:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 335056EC1E;
	Thu, 17 Sep 2020 14:07:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DC6A06EC1E
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Sep 2020 14:07:35 +0000 (UTC)
IronPort-SDR: z9ca/GAqGryv+Rvr1Y+QDKm+CEV9t5AMMk+3zIqkmhKWSFPKBYhKbU/BhLkXYzHWilBy7VXaIE
 NiWcmjiLfiyg==
X-IronPort-AV: E=McAfee;i="6000,8403,9746"; a="139205131"
X-IronPort-AV: E=Sophos;i="5.76,437,1592895600"; d="scan'208";a="139205131"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2020 07:05:39 -0700
IronPort-SDR: WVceWzv9EQQbREsd64f7IPDIW1CzC+FyzL12AVWEDxeg5W3z8GLinnmRUpLKFUOq0tqTEeGETt
 u7XkAzF1Hl/w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,437,1592895600"; d="scan'208";a="344367914"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by FMSMGA003.fm.intel.com with ESMTP; 17 Sep 2020 07:05:37 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 17 Sep 2020 07:05:35 -0700
Received: from irsmsx605.ger.corp.intel.com (163.33.146.138) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 17 Sep 2020 07:05:34 -0700
Received: from irsmsx605.ger.corp.intel.com ([163.33.146.138]) by
 IRSMSX605.ger.corp.intel.com ([163.33.146.138]) with mapi id 15.01.1713.004;
 Thu, 17 Sep 2020 15:05:33 +0100
From: "Mun, Gwan-gyeong" <gwan-gyeong.mun@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>, "Souza,
 Jose" <jose.souza@intel.com>
Thread-Topic: [PATCH 3/4] drm/i915/display: Program PSR2 selective fetch
 registers
Thread-Index: AQHWf/wou+ViHV3eN0iA9gLtveIezaloNeWAgABg8gCAAYVgAIAAB+YAgALCaoA=
Date: Thu, 17 Sep 2020 14:05:33 +0000
Message-ID: <98c767f013e44b0897fd118f674cd0e3a793f33a.camel@intel.com>
References: <20200901010924.235808-1-jose.souza@intel.com>
 <20200901010924.235808-3-jose.souza@intel.com>
 <20200914142829.GO6112@intel.com>
 <0e70ac0cdf94c645184fc4f7e724a1d554cd4163.camel@intel.com>
 <3ec11a2bb3fa0a4ce7ab9c7e7bfa585759963040.camel@intel.com>
 <376a07eb444b3ba813df68b8a07acd5c2fca0b2a.camel@intel.com>
In-Reply-To: <376a07eb444b3ba813df68b8a07acd5c2fca0b2a.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.253.164]
Content-ID: <94274A474FA4ED44A3F7EDB7DFD12E46@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 3/4] drm/i915/display: Program PSR2
 selective fetch registers
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

T24gVHVlLCAyMDIwLTA5LTE1IGF0IDEyOjU3IC0wNzAwLCBTb3V6YSwgSm9zZSB3cm90ZToNCj4g
T24gVHVlLCAyMDIwLTA5LTE1IGF0IDIwOjI4ICswMTAwLCBNdW4sIEd3YW4tZ3llb25nIHdyb3Rl
Og0KPiA+IE9uIE1vbiwgMjAyMC0wOS0xNCBhdCAxMzoxNSAtMDcwMCwgU291emEsIEpvc2Ugd3Jv
dGU6DQo+ID4gPiBPbiBNb24sIDIwMjAtMDktMTQgYXQgMTc6MjggKzAzMDAsIFZpbGxlIFN5cmrD
pGzDpCB3cm90ZToNCj4gPiA+ID4gT24gTW9uLCBBdWcgMzEsIDIwMjAgYXQgMDY6MDk6MjNQTSAt
MDcwMCwgSm9zw6kgUm9iZXJ0byBkZSBTb3V6YQ0KPiA+ID4gPiB3cm90ZToNCj4gPiA+ID4gPiBB
bm90aGVyIHN0ZXAgdG93YXJkcyBQU1IyIHNlbGVjdGl2ZSBmZXRjaCwgaGVyZSBwcm9ncmFtbWlu
Zw0KPiA+ID4gPiA+IHBsYW5lDQo+ID4gPiA+ID4gc2VsZWN0aXZlIGZldGNoIHJlZ2lzdGVycyBh
bmQgTUFOX1RSS19DVEwgZW5hYmxpbmcgc2VsZWN0aXZlDQo+ID4gPiA+ID4gZmV0Y2ggYnV0DQo+
ID4gPiA+ID4gZm9yIG5vdyBpdCBpcyBmZXRjaGluZyB0aGUgd2hvbGUgYXJlYSBvZiB0aGUgcGxh
bmVzLg0KPiA+ID4gPiA+IFRoZSBkYW1hZ2VkIGFyZWEgY2FsY3VsYXRpb24gd2lsbCBjb21lIGFz
IG5leHQgYW5kIGZpbmFsDQo+ID4gPiA+ID4gc3RlcC4NCj4gPiA+ID4gPiANCj4gPiA+ID4gPiBC
U3BlYzogNTUyMjkNCj4gPiA+ID4gPiBDYzogR3dhbi1neWVvbmcgTXVuIDwNCj4gPiA+ID4gPiBn
d2FuLWd5ZW9uZy5tdW5AaW50ZWwuY29tDQo+ID4gPiA+ID4gDQo+ID4gPiA+ID4gQ2M6IFZpbGxl
IFN5cmrDpGzDpCA8DQo+ID4gPiA+ID4gdmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20NCj4g
PiA+ID4gPiANCj4gPiA+ID4gPiBTaWduZWQtb2ZmLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXph
IDwNCj4gPiA+ID4gPiBqb3NlLnNvdXphQGludGVsLmNvbQ0KPiA+ID4gPiA+IA0KPiA+ID4gPiA+
IC0tLQ0KPiA+ID4gPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXkuYyAgfCAgMTAgKy0NCj4gPiA+ID4gPiAgLi4uL2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlz
cGxheV90eXBlcy5oICAgIHwgICAyICsNCj4gPiA+ID4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9wc3IuYyAgICAgIHwgMTI5DQo+ID4gPiA+ID4gKysrKysrKysrKysrKysr
KystDQo+ID4gPiA+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmgg
ICAgICB8ICAxMCArLQ0KPiA+ID4gPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX3Nwcml0ZS5jICAgfCAgIDMgKw0KPiA+ID4gPiA+ICA1IGZpbGVzIGNoYW5nZWQsIDE0NSBp
bnNlcnRpb25zKCspLCA5IGRlbGV0aW9ucygtKQ0KPiA+ID4gPiA+IA0KPiA+ID4gPiA+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0KPiA+
ID4gPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4g
PiA+ID4gPiBpbmRleCBjOGIxZGQxYTllNDYuLjg2NTQ4NmU4OTkxNSAxMDA2NDQNCj4gPiA+ID4g
PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0KPiA+
ID4gPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5j
DQo+ID4gPiA+ID4gQEAgLTExNzk5LDYgKzExNzk5LDkgQEAgc3RhdGljIHZvaWQgaTl4eF91cGRh
dGVfY3Vyc29yKHN0cnVjdA0KPiA+ID4gPiA+IGludGVsX3BsYW5lICpwbGFuZSwNCj4gPiA+ID4g
PiAgCWlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDkpDQo+ID4gPiA+ID4gIAkJc2tsX3dyaXRl
X2N1cnNvcl93bShwbGFuZSwgY3J0Y19zdGF0ZSk7DQo+ID4gPiA+ID4gIA0KPiA+ID4gPiA+ICsJ
aWYgKCFuZWVkc19tb2Rlc2V0KGNydGNfc3RhdGUpKQ0KPiA+ID4gPiA+ICsJCWludGVsX3BzcjJf
cHJvZ3JhbV9wbGFuZV9zZWxfZmV0Y2gocGxhbmUsDQo+ID4gPiA+ID4gY3J0Y19zdGF0ZSwNCj4g
PiA+ID4gPiBwbGFuZV9zdGF0ZSwgMCk7DQo+ID4gPiA+ID4gKw0KPiA+ID4gPiA+ICAJaWYgKHBs
YW5lLT5jdXJzb3IuYmFzZSAhPSBiYXNlIHx8DQo+ID4gPiA+ID4gIAkgICAgcGxhbmUtPmN1cnNv
ci5zaXplICE9IGZiY19jdGwgfHwNCj4gPiA+ID4gPiAgCSAgICBwbGFuZS0+Y3Vyc29yLmNudGwg
IT0gY250bCkgew0KPiA+ID4gPiA+IEBAIC0xMjgxMCw4ICsxMjgxMywxMSBAQCBzdGF0aWMgaW50
DQo+ID4gPiA+ID4gaW50ZWxfY3J0Y19hdG9taWNfY2hlY2soc3RydWN0IGludGVsX2F0b21pY19z
dGF0ZSAqc3RhdGUsDQo+ID4gPiA+ID4gIA0KPiA+ID4gPiA+ICAJfQ0KPiA+ID4gPiA+ICANCj4g
PiA+ID4gPiAtCWlmICghbW9kZV9jaGFuZ2VkKQ0KPiA+ID4gPiA+IC0JCWludGVsX3BzcjJfc2Vs
X2ZldGNoX3VwZGF0ZShzdGF0ZSwgY3J0Yyk7DQo+ID4gPiA+ID4gKwlpZiAoIW1vZGVfY2hhbmdl
ZCkgew0KPiA+ID4gPiA+ICsJCXJldCA9IGludGVsX3BzcjJfc2VsX2ZldGNoX3VwZGF0ZShzdGF0
ZSwgY3J0Yyk7DQo+ID4gPiA+ID4gKwkJaWYgKHJldCkNCj4gPiA+ID4gPiArCQkJcmV0dXJuIHJl
dDsNCj4gPiA+ID4gPiArCX0NCj4gPiA+ID4gPiAgDQo+ID4gPiA+ID4gIAlyZXR1cm4gMDsNCj4g
PiA+ID4gPiAgfQ0KPiA+ID4gPiA+IGRpZmYgLS1naXQNCj4gPiA+ID4gPiBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oDQo+ID4gPiA+ID4gYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaA0KPiA+ID4gPiA+
IGluZGV4IDkzNDliMTVhZmZmNi4uMjEzOGJiMGYxNTg3IDEwMDY0NA0KPiA+ID4gPiA+IC0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oDQo+ID4g
PiA+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5
cGVzLmgNCj4gPiA+ID4gPiBAQCAtNTg2LDYgKzU4Niw4IEBAIHN0cnVjdCBpbnRlbF9wbGFuZV9z
dGF0ZSB7DQo+ID4gPiA+ID4gIAl1MzIgcGxhbmFyX3NsYXZlOw0KPiA+ID4gPiA+ICANCj4gPiA+
ID4gPiAgCXN0cnVjdCBkcm1faW50ZWxfc3ByaXRlX2NvbG9ya2V5IGNrZXk7DQo+ID4gPiA+ID4g
Kw0KPiA+ID4gPiA+ICsJc3RydWN0IGRybV9yZWN0IHBzcjJfc2VsX2ZldGNoX2FyZWE7DQo+ID4g
PiA+ID4gIH07DQo+ID4gPiA+ID4gIA0KPiA+ID4gPiA+ICBzdHJ1Y3QgaW50ZWxfaW5pdGlhbF9w
bGFuZV9jb25maWcgew0KPiA+ID4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ID4gPiA+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX3Bzci5jDQo+ID4gPiA+ID4gaW5kZXggNjY5OGQwMjA5ODc5Li5iNjBlYTEz
M2E1MjcgMTAwNjQ0DQo+ID4gPiA+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9wc3IuYw0KPiA+ID4gPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfcHNyLmMNCj4gPiA+ID4gPiBAQCAtMTE3Myw2ICsxMTczLDQ2IEBAIHN0YXRpYyB2
b2lkDQo+ID4gPiA+ID4gcHNyX2ZvcmNlX2h3X3RyYWNraW5nX2V4aXQoc3RydWN0IGRybV9pOTE1
X3ByaXZhdGUgKmRldl9wcml2KQ0KPiA+ID4gPiA+ICAJCWludGVsX3Bzcl9leGl0KGRldl9wcml2
KTsNCj4gPiA+ID4gPiAgfQ0KPiA+ID4gPiA+ICANCj4gPiA+ID4gPiArdm9pZCBpbnRlbF9wc3Iy
X3Byb2dyYW1fcGxhbmVfc2VsX2ZldGNoKHN0cnVjdCBpbnRlbF9wbGFuZQ0KPiA+ID4gPiA+ICpw
bGFuZSwNCj4gPiA+ID4gPiArCQkJCQljb25zdCBzdHJ1Y3QNCj4gPiA+ID4gPiBpbnRlbF9jcnRj
X3N0YXRlDQo+ID4gPiA+ID4gKmNydGNfc3RhdGUsDQo+ID4gPiA+ID4gKwkJCQkJY29uc3Qgc3Ry
dWN0DQo+ID4gPiA+ID4gaW50ZWxfcGxhbmVfc3RhdGUNCj4gPiA+ID4gPiAqcGxhbmVfc3RhdGUs
DQo+ID4gPiA+ID4gKwkJCQkJaW50IGNvbG9yX3BsYW5lKQ0KPiA+ID4gPiA+ICt7DQo+ID4gPiA+
ID4gKwlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KHBsYW5lLQ0K
PiA+ID4gPiA+ID5iYXNlLmRldik7DQo+ID4gPiA+ID4gKwljb25zdCBzdHJ1Y3QgZHJtX3JlY3Qg
KmNsaXA7DQo+ID4gPiA+ID4gKwllbnVtIHBpcGUgcGlwZSA9IHBsYW5lLT5waXBlOw0KPiA+ID4g
PiA+ICsJdTMyIHZhbDsNCj4gPiA+ID4gPiArDQo+ID4gPiA+ID4gKwlpZiAoIXBsYW5lX3N0YXRl
IHx8ICFkZXZfcHJpdi0NCj4gPiA+ID4gPiA+cHNyLnBzcjJfc2VsX2ZldGNoX2VuYWJsZWQpDQo+
ID4gPiA+ID4gKwkJcmV0dXJuOw0KPiA+ID4gPiA+ICsNCj4gPiA+ID4gPiArCS8qDQo+ID4gPiA+
ID4gKwkgKiBza2xfcGxhbmVfY3RsX2NydGMoKS9pOXh4X2N1cnNvcl9jdGxfY3J0YygpIHJldHVy
biAwDQo+ID4gPiA+ID4gZm9yDQo+ID4gPiA+ID4gZ2VuMTErLCBzbw0KPiA+ID4gPiA+ICsJICog
cGxhbmVfc3RhdGUtPmN0bCBpcyB0aGUgcmlnaHQgdmFsdWUNCj4gPiA+ID4gPiArCSAqLw0KPiA+
IA0KPiA+IEFzIHBlciBCc3BlYyA1MDQyMCwgICJTRUxfRkVUQ0hfUExBTkVfQ1RMWzMxXTogU2Vs
ZWN0aXZlIEZldGNoDQo+ID4gUGxhbmUNCj4gPiBFbmFibGUgYml0IiBzaG91bGQgYmUgc2V0Lg0K
PiA+IEFuZCB3aGVuICJQU1IyX01BTl9UUktfQ1RMWzFdIDogU0YgUGFydGlhbCBGcmFtZSBFbmFi
bGUgYml0IiBpcw0KPiA+IGVuYWJsZWQNCj4gPiBzZWxlY3RpdmUgZmV0Y2ggd2lsbCBiZSBhcHBs
aWVkLg0KPiANCj4gQml0IDMxIGZyb20gUExBTkVfQ1RMIGlzIHRoZSBlbmFibGVkIGJpdCBhbGwg
dGhlIG90aGVyIGZpZWxkcyBhcmUNCj4gc3BhcmUgc28gd2UgY2FuIHByb2dyYW0gaXQgd2l0aG91
dCBpc3N1ZXMuDQo+IA0KPiA+ID4gPiA+ICsJaW50ZWxfZGVfd3JpdGVfZncoZGV2X3ByaXYsIFBM
QU5FX1NFTF9GRVRDSF9DVEwocGlwZSwNCj4gPiA+ID4gPiBwbGFuZS0NCj4gPiA+ID4gPiA+IGlk
KSwgcGxhbmVfc3RhdGUtPmN0bCk7DQo+ID4gDQo+ID4gQXMgcGVyIA0KPiA+ID4gPiA+ICsJaWYg
KCFwbGFuZV9zdGF0ZS0+Y3RsIHx8IHBsYW5lLT5pZCA9PSBQTEFORV9DVVJTT1IpDQo+ID4gPiA+
ID4gKwkJcmV0dXJuOw0KPiA+ID4gPiA+ICsNCj4gPiA+ID4gPiArCWNsaXAgPSAmcGxhbmVfc3Rh
dGUtPnBzcjJfc2VsX2ZldGNoX2FyZWE7DQo+ID4gPiA+ID4gKw0KPiA+ID4gPiA+ICsJdmFsID0g
KGNsaXAtPnkxICsgcGxhbmVfc3RhdGUtPnVhcGkuY3J0Y195KSA8PCAxNjsNCj4gPiA+ID4gDQo+
ID4gPiA+IGNydGNfeC95IGFyZSB0aGUgcmF3IHZhbHVlcyB1c3JzcGFjZSBnYXZlIHVzLiBUaGF0
IGlzDQo+ID4gPiA+IGRlZmluaXRlbHkNCj4gPiA+ID4gbm90DQo+ID4gPiA+IHdoYXQgd2Ugc2hv
dWxkIGJlIGxvb2tpbmcgYXQuDQo+ID4gPiANCj4gPiA+IHBsYW5lX3N0YXRlLT51YXBpLmRzdCB0
aGVuPyBidXQgZm9yIHdoYXQgSSBmb3VuZCBjcnRjX3gveSBpcyBzZXQNCj4gPiA+IGZyb20NCj4g
PiA+IGRzdC4NCj4gPiA+IA0KPiA+ID4gcGxhbmVfc3RhdGUtPnVhcGkuZHN0IGlzIHVzZWQgaW4g
c2tsX3Byb2dyYW1fcGxhbmUoKQ0KPiA+ID4gDQo+ID4gPiBza2xfcHJvZ3JhbV9wbGFuZSgpDQo+
ID4gPiAJaW50IGNydGNfeCA9IHBsYW5lX3N0YXRlLT51YXBpLmRzdC54MTsNCj4gPiA+IAlpbnQg
Y3J0Y195ID0gcGxhbmVfc3RhdGUtPnVhcGkuZHN0LnkxOw0KPiA+ID4gCS4uLg0KPiA+ID4gCWlu
dGVsX2RlX3dyaXRlX2Z3KGRldl9wcml2LCBQTEFORV9QT1MocGlwZSwgcGxhbmVfaWQpLCAoY3J0
Y195DQo+ID4gPiA8PCAxNikgfCBjcnRjX3gpOw0KPiA+ID4gDQo+ID4gPiANCj4gPiA+ID4gQXMg
dGhlIGZpcnN0IHN0ZXAgSSB0aGluayB0aGVzZSBmdW5jdGlvbnMgc2hvdWxkIGp1c3QgcHJvZ3Jh
bQ0KPiA+ID4gPiB0aGUNCj4gPiA+ID4gcmVnaXN0ZXJzIHdpdGggKmV4YWN0bHkqIHRoZSBzYW1l
IHZhbHVlcyBhcyB3ZSBwcm9ncmFtIGludG8gdGhlDQo+ID4gPiA+IG5vcm1hbCBwbGFuZSByZWdp
c3Rlci4gVGhhdCBnZXRzIHVzIHRvIHRoZSBwb2ludCB3aGVyZSB3ZSdyZQ0KPiA+ID4gPiBhY3R1
YWxseSBwcm9ncmFtbWluZyBzb21ldGhpbmcgaW50byB0aGUgcmVnaXN0ZXIgd2l0aG91dCBoYXZp
bmcNCj4gPiA+ID4gdG8NCj4gPiA+ID4gY29tcGxpY2F0ZSB0aGluZ3Mgd2l0aCBjYWxjdWxhdGlu
ZyB0aGUgc2VsZWN0aXZlIGZldGNoIGFyZWEuDQo+ID4gPiANCj4gPiA+IE9rYXksIEkgY2FuIG1v
dmUgdGhpcyB0byBvdGhlciBwYXRjaCBidXQgcGxlYXNlIGNoZWNrIHRoZSBjb21tZW50DQo+ID4g
PiBhYm92ZSBzbyB3ZSBoYXZlIHRoaXMgYWdyZWVkIGZvciBmaXJzdCB2ZXJzaW9uIG9mIHRoZSBm
dXR1cmUNCj4gPiA+IHBhdGNoLg0KPiA+ID4gDQo+ID4gPiA+ID4gKwl2YWwgfD0gcGxhbmVfc3Rh
dGUtPnVhcGkuY3J0Y194Ow0KPiA+ID4gPiA+ICsJaW50ZWxfZGVfd3JpdGVfZncoZGV2X3ByaXYs
IFBMQU5FX1NFTF9GRVRDSF9QT1MocGlwZSwNCj4gPiA+ID4gPiBwbGFuZS0NCj4gPiA+ID4gPiA+
IGlkKSwNCj4gPiA+ID4gPiANCj4gPiA+ID4gPiArCQkJICB2YWwpOw0KPiA+ID4gPiA+ICsNCj4g
PiA+ID4gPiArCXZhbCA9IChjbGlwLT55MSArIHBsYW5lX3N0YXRlLQ0KPiA+ID4gPiA+ID5jb2xv
cl9wbGFuZVtjb2xvcl9wbGFuZV0ueSkgPDwNCj4gPiA+ID4gPiAxNjsNCj4gPiA+ID4gPiArCXZh
bCB8PSBwbGFuZV9zdGF0ZS0+Y29sb3JfcGxhbmVbY29sb3JfcGxhbmVdLng7DQo+ID4gPiA+ID4g
KwlpbnRlbF9kZV93cml0ZV9mdyhkZXZfcHJpdiwNCj4gPiA+ID4gPiBQTEFORV9TRUxfRkVUQ0hf
T0ZGU0VUKHBpcGUsIHBsYW5lLQ0KPiA+ID4gPiA+ID4gaWQpLA0KPiA+ID4gPiA+IA0KPiA+ID4g
PiA+ICsJCQkgIHZhbCk7DQo+ID4gPiA+ID4gKw0KPiA+IA0KPiA+IFBMQU5FX1NFTF9GRVRDSF9P
RkZTRVQgdmFsdWVzIHNob3VsZCBiZSBjb25zaWRlcmVkIHRpbGluZw0KPiA+IGluZm9ybWF0aW9u
Lg0KPiA+IHRoaXMgY29kZSBkb2VzIG5vdCBjb25zaWRlciBhdXggc3VyZmFjZXMgYW5kIGZiIG9m
ZnNldHMuDQo+IA0KPiBOb3QgZmFtaWxpYXIgd2l0aCB0aGlzLCBjb3VsZCBleHBsYWluIG1vcmU/
DQpBcyBwZXIgQnNwZWM6IDU1MjI5LCANClNlbF9GZXRjaCBQbGFuZSBZIE9mZnNldCA9IFBsYW5l
IFkgb2Zmc2V0ICsgVXBkYXRlIG9mZnNldA0KdGhlIFBsYW5lIFkgb2Zmc2V0IGlzIGNhbGN1bGF0
ZWQgd2l0aCB0aWxpbmcgaW5mb3JtYXRpb24gZm9yIG5vbiBsaW5lYXINCnN1cmZhY2UuIChsaW5l
YXIgc3VyZmFjZSBhbHNvIG5lZWRzIHRvIGNhbGN1bGF0ZSB3aXRoIHRoZSBwaXRjaCAuLi4pDQp0
aGVyZWZvcmUgaXQgc2VlbXMgdGhhdCB3ZSBuZWVkIHRvIHNlcGFyYXRlbHkgY2FsY3VsYXRlIGZv
ciBTZWxfRmV0Y2gNClBsYW5lIFkgT2Zmc2V0IA0KcmVmZXIuIGludGVsX2FkanVzdF9hbGlnbmVk
X29mZnNldCgpDQo+IHBsYW5lX3N0YXRlLT5jb2xvcl9wbGFuZVtjb2xvcl9wbGFuZV0ueC95IGFy
ZSB0aGUgb25lcyB1c2VkIHRvDQo+IHByb2dyYW0gcGxhbmVfb2Zmc2V0LCBzbyBzb21lIGNhbGN1
bGF0aW9uIHdpbGwgYmUgbmVlZGVkIGJlZm9yZSBzdW0NCj4gcGxhbmVfc3RhdGUtDQo+ID4gY29s
b3JfcGxhbmVbY29sb3JfcGxhbmVdLnkgdG8gY2xpcC0+eTE/DQoNCj4gPiA+ID4gPiArCS8qIFNp
emVzIGFyZSAwIGJhc2VkICovDQo+ID4gPiA+ID4gKwl2YWwgPSAoZHJtX3JlY3RfaGVpZ2h0KGNs
aXApIC0gMSkgPDwgMTY7DQo+ID4gPiA+ID4gKwl2YWwgfD0gKGRybV9yZWN0X3dpZHRoKCZwbGFu
ZV9zdGF0ZS0+dWFwaS5zcmMpID4+IDE2KSAtDQo+ID4gPiA+ID4gMTsNCj4gPiA+ID4gPiArCWlu
dGVsX2RlX3dyaXRlX2Z3KGRldl9wcml2LCBQTEFORV9TRUxfRkVUQ0hfU0laRShwaXBlLA0KPiA+
ID4gPiA+IHBsYW5lLQ0KPiA+ID4gPiA+ID4gaWQpLA0KPiA+ID4gPiA+IA0KPiA+ID4gPiA+ICsJ
CQkgIHZhbCk7DQo+ID4gPiA+ID4gK30NCj4gPiA+ID4gPiArDQo+ID4gPiA+ID4gIHZvaWQgaW50
ZWxfcHNyMl9wcm9ncmFtX3RyYW5zX21hbl90cmtfY3RsKGNvbnN0IHN0cnVjdA0KPiA+ID4gPiA+
IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpDQo+ID4gPiA+ID4gIHsNCj4gPiA+ID4gPiAg
CXN0cnVjdCBpbnRlbF9jcnRjICpjcnRjID0gdG9faW50ZWxfY3J0YyhjcnRjX3N0YXRlLQ0KPiA+
ID4gPiA+ID51YXBpLmNydGMpOw0KPiA+ID4gPiA+IEBAIC0xMTg3LDE3ICsxMjI3LDk2IEBAIHZv
aWQNCj4gPiA+ID4gPiBpbnRlbF9wc3IyX3Byb2dyYW1fdHJhbnNfbWFuX3Rya19jdGwoY29uc3Qg
c3RydWN0DQo+ID4gPiA+ID4gaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdA0KPiA+ID4gPiA+ICAJ
CSAgICAgICBjcnRjX3N0YXRlLT5wc3IyX21hbl90cmFja19jdGwpOw0KPiA+ID4gPiA+ICB9DQo+
ID4gPiA+ID4gIA0KPiA+ID4gPiA+IC12b2lkIGludGVsX3BzcjJfc2VsX2ZldGNoX3VwZGF0ZShz
dHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlDQo+ID4gPiA+ID4gKnN0YXRlLA0KPiA+ID4gPiA+IC0J
CQkJIHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjKQ0KPiA+ID4gPiA+ICtzdGF0aWMgdm9pZCBwc3Iy
X21hbl90cmtfY3RsX2NhbGMoc3RydWN0IGludGVsX2NydGNfc3RhdGUNCj4gPiA+ID4gPiAqY3J0
Y19zdGF0ZSwNCj4gPiA+ID4gPiArCQkJCSAgc3RydWN0IGRybV9yZWN0ICpjbGlwLCBib29sDQo+
ID4gPiA+ID4gZnVsbF91cGRhdGUpDQo+ID4gPiA+ID4gK3sNCj4gPiA+ID4gPiArCXUzMiB2YWwg
PSBQU1IyX01BTl9UUktfQ1RMX0VOQUJMRTsNCj4gPiA+ID4gPiArDQo+ID4gPiA+ID4gKwlpZiAo
ZnVsbF91cGRhdGUpIHsNCj4gPiA+ID4gPiArCQl2YWwgfD0gUFNSMl9NQU5fVFJLX0NUTF9TRl9T
SU5HTEVfRlVMTF9GUkFNRTsNCj4gPiA+ID4gPiArCQlnb3RvIGV4aXQ7DQo+ID4gPiA+ID4gKwl9
DQo+ID4gPiA+ID4gKw0KPiA+ID4gPiA+ICsJZHJtX1dBUk5fT05fT05DRShjcnRjX3N0YXRlLT51
YXBpLmNydGMtPmRldiwgY2xpcC0+eTENCj4gPiA+ID4gPiA9PSAtMSk7DQo+ID4gPiA+ID4gKw0K
PiA+ID4gPiA+ICsJdmFsIHw9IFBTUjJfTUFOX1RSS19DVExfU0ZfUEFSVElBTF9GUkFNRV9VUERB
VEU7DQo+ID4gPiA+ID4gKwl2YWwgfD0gUFNSMl9NQU5fVFJLX0NUTF9TVV9SRUdJT05fU1RBUlRf
QUREUihjbGlwLT55MSAvDQo+ID4gPiA+ID4gNCArIDEpOw0KPiA+ID4gPiA+ICsJdmFsIHw9DQo+
ID4gPiA+ID4gUFNSMl9NQU5fVFJLX0NUTF9TVV9SRUdJT05fRU5EX0FERFIoRElWX1JPVU5EX1VQ
KGNsaXAtDQo+ID4gPiA+ID4gPiB5MiwgNCkgKyAxKTsNCj4gPiANCj4gPiBBcyBwZXIgQnNwZWMg
NTA0MjQsICIgVGhlIGZyYW1lIGlzIGRpdmlkZWQgaW50byBibG9ja3Mgb2YgZm91ciBzY2FuDQo+
ID4gbGluZXMgZWFjaC4gVGhlIGJsb2NrcyBhcmUgYWRkcmVzc2VkIHN0YXJ0aW5nIGZyb20gMSBm
b3IgdGhlIGZpcnN0DQo+ID4gYmxvY2sgb2YgdGhlIGZyYW1lIGFuZCBlbmRpbmcgd2l0aCBST1VO
RFVQWyhUUkFOU19WVE9UQUwgVmVydGljYWwNCj4gPiBBY3RpdmUgKyAxKSAvIDRdZm9yIHRoZSBs
YXN0IGJsb2NrIG9mIHRoZSBmcmFtZS4gU29mdHdhcmUgbXVzdA0KPiA+IHByb3ZpZGUNCj4gPiB0
aGUgc3RhcnRpbmcgYW5kIGVuZGluZyBibG9jayBhZGRyZXNzIG9mIHRoZSBzZWxlY3RpdmUgdXBk
YXRlDQo+ID4gcmVnaW9uLg0KPiA+IFRoZSBTVSBSZWdpb24gU3RhcnQgQWRkcmVzcyBpcyBwcm9n
cmFtbWVkIHRvIHRoZSBmaXJzdCBibG9jayBvZiB0aGUNCj4gPiBzZWxlY3RpdmUgdXBkYXRlIHJl
Z2lvbi4gVGhlIFNVIFJlZ2lvbiBFbmQgQWRkcmVzcyBpcyBwcm9ncmFtbWVkIHRvDQo+ID4gdGhl
DQo+ID4gZmluYWwgYmxvY2sgb2YgdGhlIHNlbGVjdGl2ZSB1cGRhdGUgcmVnaW9uICsgMS4iDQo+
ID4gSSB0aGluayBpdCBzaG91bGQgYmUgbGlrZSwgdmFsIHw9DQo+ID4gUFNSMl9NQU5fVFJLX0NU
TF9TVV9SRUdJT05fRU5EX0FERFIoRElWX1JPVU5EX1VQKGNsaXAtPnkyICsxLCA0KSArDQo+ID4g
MSk7DQo+IA0KPiBESVZfUk9VTkRfVVAoY2xpcC0+eTIgKzEsIDQpICsgMSBkbyBub3Qgd29yayBm
b3IgbnVtYmVycyB0aGF0IGRpdmlkZQ0KPiBieSA0Lg0KPiBjbGlwLT55MiA9IDEwNzksIHdpbGwg
cmVzdWx0IGluIDI3MQ0KPiBjbGlwLT55MiA9IDEwODAsIHdpbGwgcmVzdWx0IGluIDI3Miwgb25l
IG1vcmUgYmxvY2sgdGhhbiBhIDEwODAgZnJhbWUNCj4gaGF2ZQ0KPiANCj4gPiA+ID4gPiArZXhp
dDoNCj4gPiA+ID4gPiArCWNydGNfc3RhdGUtPnBzcjJfbWFuX3RyYWNrX2N0bCA9IHZhbDsNCj4g
PiA+ID4gPiArfQ0KPiA+ID4gPiA+ICsNCj4gPiA+ID4gPiArc3RhdGljIHZvaWQgY2xpcF9hcmVh
X3VwZGF0ZShzdHJ1Y3QgZHJtX3JlY3QNCj4gPiA+ID4gPiAqb3ZlcmxhcF9kYW1hZ2VfYXJlYSwN
Cj4gPiA+ID4gPiArCQkJICAgICBzdHJ1Y3QgZHJtX3JlY3QgKmRhbWFnZV9hcmVhKQ0KPiA+ID4g
PiA+ICt7DQo+ID4gPiA+ID4gKwlpZiAob3ZlcmxhcF9kYW1hZ2VfYXJlYS0+eTEgPT0gLTEpIHsN
Cj4gPiA+ID4gPiArCQlvdmVybGFwX2RhbWFnZV9hcmVhLT55MSA9IGRhbWFnZV9hcmVhLT55MTsN
Cj4gPiA+ID4gPiArCQlvdmVybGFwX2RhbWFnZV9hcmVhLT55MiA9IGRhbWFnZV9hcmVhLT55MjsN
Cj4gPiA+ID4gPiArCQlyZXR1cm47DQo+ID4gPiA+ID4gKwl9DQo+ID4gPiA+ID4gKw0KPiA+ID4g
PiA+ICsJaWYgKGRhbWFnZV9hcmVhLT55MSA8IG92ZXJsYXBfZGFtYWdlX2FyZWEtPnkxKQ0KPiA+
ID4gPiA+ICsJCW92ZXJsYXBfZGFtYWdlX2FyZWEtPnkxID0gZGFtYWdlX2FyZWEtPnkxOw0KPiA+
ID4gPiA+ICsNCj4gPiA+ID4gPiArCWlmIChkYW1hZ2VfYXJlYS0+eTIgPiBvdmVybGFwX2RhbWFn
ZV9hcmVhLT55MikNCj4gPiA+ID4gPiArCQlvdmVybGFwX2RhbWFnZV9hcmVhLT55MiA9IGRhbWFn
ZV9hcmVhLT55MjsNCj4gPiA+ID4gPiArfQ0KPiA+ID4gPiA+ICsNCj4gPiA+ID4gPiAraW50IGlu
dGVsX3BzcjJfc2VsX2ZldGNoX3VwZGF0ZShzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlDQo+ID4g
PiA+ID4gKnN0YXRlLA0KPiA+ID4gPiA+ICsJCQkJc3RydWN0IGludGVsX2NydGMgKmNydGMpDQo+
ID4gPiA+ID4gIHsNCj4gPiA+ID4gPiAgCXN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0
YXRlID0NCj4gPiA+ID4gPiBpbnRlbF9hdG9taWNfZ2V0X25ld19jcnRjX3N0YXRlKHN0YXRlLCBj
cnRjKTsNCj4gPiA+ID4gPiAgCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRv
X2k5MTUoY3J0Yy0NCj4gPiA+ID4gPiA+YmFzZS5kZXYpOw0KPiA+ID4gPiA+ICsJc3RydWN0IGlu
dGVsX3BsYW5lX3N0YXRlICpuZXdfcGxhbmVfc3RhdGUsDQo+ID4gPiA+ID4gKm9sZF9wbGFuZV9z
dGF0ZTsNCj4gPiA+ID4gPiArCXN0cnVjdCBkcm1fcmVjdCBwaXBlX2NsaXAgPSB7IC55MSA9IC0x
IH07DQo+ID4gPiA+ID4gKwlzdHJ1Y3QgaW50ZWxfcGxhbmUgKnBsYW5lOw0KPiA+ID4gPiA+ICsJ
Ym9vbCBmdWxsX3VwZGF0ZSA9IGZhbHNlOw0KPiA+ID4gPiA+ICsJaW50IGksIHJldDsNCj4gPiA+
ID4gPiAgDQo+ID4gPiA+ID4gIAlpZiAoIWRldl9wcml2LT5wc3IucHNyMl9zZWxfZmV0Y2hfZW5h
YmxlZCkNCj4gPiA+ID4gPiAtCQlyZXR1cm47DQo+ID4gPiA+ID4gKwkJcmV0dXJuIDA7DQo+ID4g
PiA+ID4gKw0KPiA+ID4gPiA+ICsJcmV0ID0gZHJtX2F0b21pY19hZGRfYWZmZWN0ZWRfcGxhbmVz
KCZzdGF0ZS0+YmFzZSwNCj4gPiA+ID4gPiAmY3J0Yy0NCj4gPiA+ID4gPiA+IGJhc2UpOw0KPiA+
ID4gPiA+IA0KPiA+ID4gPiA+ICsJaWYgKHJldCkNCj4gPiA+ID4gPiArCQlyZXR1cm4gcmV0Ow0K
PiA+ID4gPiA+ICsNCj4gPiA+ID4gPiArCWZvcl9lYWNoX29sZG5ld19pbnRlbF9wbGFuZV9pbl9z
dGF0ZShzdGF0ZSwgcGxhbmUsDQo+ID4gPiA+ID4gb2xkX3BsYW5lX3N0YXRlLA0KPiA+ID4gPiA+
ICsJCQkJCSAgICAgbmV3X3BsYW5lX3N0YXRlLA0KPiA+ID4gPiA+IGkpIHsNCj4gPiA+ID4gPiAr
CQlzdHJ1Y3QgZHJtX3JlY3QgKnBsYW5lX3NlbF9mZXRjaF9hcmVhLCB0ZW1wOw0KPiA+ID4gPiA+
ICANCj4gPiA+ID4gPiAtCWNydGNfc3RhdGUtPnBzcjJfbWFuX3RyYWNrX2N0bCA9DQo+ID4gPiA+
ID4gUFNSMl9NQU5fVFJLX0NUTF9FTkFCTEUgfA0KPiA+ID4gPiA+IC0JCQkJCSBQU1IyX01BTl9U
UktfQ1RMX1NGX1NJDQo+ID4gPiA+ID4gTkdMRV9GVUwNCj4gPiA+ID4gPiBMX0ZSQU1FOw0KPiA+
ID4gPiA+ICsJCWlmIChuZXdfcGxhbmVfc3RhdGUtPnVhcGkuY3J0YyAhPSBjcnRjX3N0YXRlLQ0K
PiA+ID4gPiA+ID4gdWFwaS5jcnRjKQ0KPiA+ID4gPiA+IA0KPiA+ID4gPiA+ICsJCQljb250aW51
ZTsNCj4gPiA+ID4gPiArDQo+ID4gPiA+ID4gKwkJLyoNCj4gPiA+ID4gPiArCQkgKiBUT0RPOiBO
b3QgY2xlYXIgaG93IHRvIGhhbmRsZSBwbGFuZXMgd2l0aA0KPiA+ID4gPiA+IG5lZ2F0aXZlDQo+
ID4gPiA+ID4gcG9zaXRpb24sDQo+ID4gPiA+ID4gKwkJICogYWxzbyBwbGFuZXMgYXJlIG5vdCB1
cGRhdGVkIGlmIHRoZXkgaGF2ZSBhDQo+ID4gPiA+ID4gbmVnYXRpdmUNCj4gPiA+ID4gPiBYDQo+
ID4gPiA+ID4gKwkJICogcG9zaXRpb24gc28gZm9yIG5vdyBkb2luZyBhIGZ1bGwgdXBkYXRlIGlu
DQo+ID4gPiA+ID4gdGhpcw0KPiA+ID4gPiA+IGNhc2VzDQo+ID4gPiA+ID4gKwkJICovDQo+ID4g
PiA+ID4gKwkJaWYgKG5ld19wbGFuZV9zdGF0ZS0+dWFwaS5jcnRjX3kgPCAwIHx8DQo+ID4gPiA+
ID4gKwkJICAgIG5ld19wbGFuZV9zdGF0ZS0+dWFwaS5jcnRjX3ggPCAwKSB7DQo+ID4gPiA+ID4g
KwkJCWZ1bGxfdXBkYXRlID0gdHJ1ZTsNCj4gPiA+ID4gPiArCQkJYnJlYWs7DQo+ID4gPiA+ID4g
KwkJfQ0KPiA+ID4gPiA+ICsNCj4gPiA+ID4gPiArCQlpZiAoIW5ld19wbGFuZV9zdGF0ZS0+dWFw
aS52aXNpYmxlKQ0KPiA+ID4gPiA+ICsJCQljb250aW51ZTsNCj4gPiA+ID4gPiArDQo+ID4gPiA+
ID4gKwkJLyoNCj4gPiA+ID4gPiArCQkgKiBGb3Igbm93IGRvaW5nIGEgc2VsZWN0aXZlIGZldGNo
IGluIHRoZSB3aG9sZQ0KPiA+ID4gPiA+IHBsYW5lDQo+ID4gPiA+ID4gYXJlYSwNCj4gPiA+ID4g
PiArCQkgKiBvcHRpbWl6YXRpb25zIHdpbGwgY29tZSBpbiB0aGUgZnV0dXJlLg0KPiA+ID4gPiA+
ICsJCSAqLw0KPiA+ID4gPiA+ICsJCXBsYW5lX3NlbF9mZXRjaF9hcmVhID0gJm5ld19wbGFuZV9z
dGF0ZS0NCj4gPiA+ID4gPiA+IHBzcjJfc2VsX2ZldGNoX2FyZWE7DQo+ID4gPiA+ID4gDQo+ID4g
PiA+ID4gKwkJcGxhbmVfc2VsX2ZldGNoX2FyZWEtPnkxID0gbmV3X3BsYW5lX3N0YXRlLQ0KPiA+
ID4gPiA+ID51YXBpLnNyYy55MSANCj4gPiA+ID4gPiA+ID4gMTY7DQo+ID4gPiA+ID4gDQo+ID4g
PiA+ID4gKwkJcGxhbmVfc2VsX2ZldGNoX2FyZWEtPnkyID0gbmV3X3BsYW5lX3N0YXRlLQ0KPiA+
ID4gPiA+ID51YXBpLnNyYy55MiANCj4gPiA+ID4gPiA+ID4gMTY7DQo+ID4gPiA+ID4gDQo+ID4g
PiA+ID4gKw0KPiA+ID4gPiA+ICsJCXRlbXAgPSAqcGxhbmVfc2VsX2ZldGNoX2FyZWE7DQo+ID4g
PiA+ID4gKwkJdGVtcC55MSArPSBuZXdfcGxhbmVfc3RhdGUtPnVhcGkuY3J0Y195Ow0KPiA+ID4g
PiA+ICsJCXRlbXAueTIgKz0gbmV3X3BsYW5lX3N0YXRlLT51YXBpLmNydGNfeTsNCj4gPiA+ID4g
PiArCQljbGlwX2FyZWFfdXBkYXRlKCZwaXBlX2NsaXAsICZ0ZW1wKTsNCj4gPiA+ID4gPiArCX0N
Cj4gPiA+ID4gPiArDQo+ID4gPiA+ID4gKwlwc3IyX21hbl90cmtfY3RsX2NhbGMoY3J0Y19zdGF0
ZSwgJnBpcGVfY2xpcCwNCj4gPiA+ID4gPiBmdWxsX3VwZGF0ZSk7DQo+ID4gPiA+ID4gKwlyZXR1
cm4gMDsNCj4gPiA+ID4gPiAgfQ0KPiA+ID4gPiA+ICANCj4gPiA+ID4gPiAgLyoqDQo+ID4gPiA+
ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmgN
Cj4gPiA+ID4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmgNCj4g
PiA+ID4gPiBpbmRleCA2YTgzYzhlNjgyZTYuLjNlY2E5ZGNlYzNjMCAxMDA2NDQNCj4gPiA+ID4g
PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5oDQo+ID4gPiA+
ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuaA0KPiA+ID4g
PiA+IEBAIC0xNSw2ICsxNSw4IEBAIHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlOw0KPiA+ID4gPiA+
ICBzdHJ1Y3QgaW50ZWxfZHA7DQo+ID4gPiA+ID4gIHN0cnVjdCBpbnRlbF9jcnRjOw0KPiA+ID4g
PiA+ICBzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlOw0KPiA+ID4gPiA+ICtzdHJ1Y3QgaW50ZWxf
cGxhbmVfc3RhdGU7DQo+ID4gPiA+ID4gK3N0cnVjdCBpbnRlbF9wbGFuZTsNCj4gPiA+ID4gPiAg
DQo+ID4gPiA+ID4gICNkZWZpbmUgQ0FOX1BTUihkZXZfcHJpdikgKEhBU19QU1IoZGV2X3ByaXYp
ICYmIGRldl9wcml2LQ0KPiA+ID4gPiA+ID4gcHNyLnNpbmtfc3VwcG9ydCkNCj4gPiA+ID4gPiAN
Cj4gPiA+ID4gPiAgdm9pZCBpbnRlbF9wc3JfaW5pdF9kcGNkKHN0cnVjdCBpbnRlbF9kcCAqaW50
ZWxfZHApOw0KPiA+ID4gPiA+IEBAIC00NSw4ICs0NywxMiBAQCB2b2lkIGludGVsX3Bzcl9hdG9t
aWNfY2hlY2soc3RydWN0DQo+ID4gPiA+ID4gZHJtX2Nvbm5lY3RvciAqY29ubmVjdG9yLA0KPiA+
ID4gPiA+ICAJCQkgICAgc3RydWN0IGRybV9jb25uZWN0b3Jfc3RhdGUNCj4gPiA+ID4gPiAqb2xk
X3N0YXRlLA0KPiA+ID4gPiA+ICAJCQkgICAgc3RydWN0IGRybV9jb25uZWN0b3Jfc3RhdGUNCj4g
PiA+ID4gPiAqbmV3X3N0YXRlKTsNCj4gPiA+ID4gPiAgdm9pZCBpbnRlbF9wc3Jfc2V0X2ZvcmNl
X21vZGVfY2hhbmdlZChzdHJ1Y3QgaW50ZWxfZHANCj4gPiA+ID4gPiAqaW50ZWxfZHApOw0KPiA+
ID4gPiA+IC12b2lkIGludGVsX3BzcjJfc2VsX2ZldGNoX3VwZGF0ZShzdHJ1Y3QgaW50ZWxfYXRv
bWljX3N0YXRlDQo+ID4gPiA+ID4gKnN0YXRlLA0KPiA+ID4gPiA+IC0JCQkJIHN0cnVjdCBpbnRl
bF9jcnRjICpjcnRjKTsNCj4gPiA+ID4gPiAraW50IGludGVsX3BzcjJfc2VsX2ZldGNoX3VwZGF0
ZShzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlDQo+ID4gPiA+ID4gKnN0YXRlLA0KPiA+ID4gPiA+
ICsJCQkJc3RydWN0IGludGVsX2NydGMgKmNydGMpOw0KPiA+ID4gPiA+ICB2b2lkIGludGVsX3Bz
cjJfcHJvZ3JhbV90cmFuc19tYW5fdHJrX2N0bChjb25zdCBzdHJ1Y3QNCj4gPiA+ID4gPiBpbnRl
bF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKTsNCj4gPiA+ID4gPiArdm9pZCBpbnRlbF9wc3IyX3By
b2dyYW1fcGxhbmVfc2VsX2ZldGNoKHN0cnVjdCBpbnRlbF9wbGFuZQ0KPiA+ID4gPiA+ICpwbGFu
ZSwNCj4gPiA+ID4gPiArCQkJCQljb25zdCBzdHJ1Y3QNCj4gPiA+ID4gPiBpbnRlbF9jcnRjX3N0
YXRlDQo+ID4gPiA+ID4gKmNydGNfc3RhdGUsDQo+ID4gPiA+ID4gKwkJCQkJY29uc3Qgc3RydWN0
DQo+ID4gPiA+ID4gaW50ZWxfcGxhbmVfc3RhdGUNCj4gPiA+ID4gPiAqcGxhbmVfc3RhdGUsDQo+
ID4gPiA+ID4gKwkJCQkJaW50IGNvbG9yX3BsYW5lKTsNCj4gPiA+ID4gPiAgDQo+ID4gPiA+ID4g
ICNlbmRpZiAvKiBfX0lOVEVMX1BTUl9IX18gKi8NCj4gPiA+ID4gPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9zcHJpdGUuYw0KPiA+ID4gPiA+IGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9zcHJpdGUuYw0KPiA+ID4gPiA+IGluZGV4
IDE3OTdhMDZjZmQ2MC4uMjRlZTliMDhlYzRhIDEwMDY0NA0KPiA+ID4gPiA+IC0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfc3ByaXRlLmMNCj4gPiA+ID4gPiArKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Nwcml0ZS5jDQo+ID4gPiA+ID4gQEAg
LTY5MCw2ICs2OTAsOSBAQCBza2xfcHJvZ3JhbV9wbGFuZShzdHJ1Y3QgaW50ZWxfcGxhbmUNCj4g
PiA+ID4gPiAqcGxhbmUsDQo+ID4gPiA+ID4gIAkJaW50ZWxfZGVfd3JpdGVfZncoZGV2X3ByaXYs
DQo+ID4gPiA+ID4gUExBTkVfQVVYX09GRlNFVChwaXBlLA0KPiA+ID4gPiA+IHBsYW5lX2lkKSwN
Cj4gPiA+ID4gPiAgCQkJCSAgKHBsYW5lX3N0YXRlLQ0KPiA+ID4gPiA+ID5jb2xvcl9wbGFuZVsx
XS55IDw8IDE2KQ0KPiA+ID4gPiA+ID4gcGxhbmVfc3RhdGUtPmNvbG9yX3BsYW5lWzFdLngpOw0K
PiA+ID4gPiA+IA0KPiA+ID4gPiA+ICANCj4gPiA+ID4gPiArCWlmICghZHJtX2F0b21pY19jcnRj
X25lZWRzX21vZGVzZXQoJmNydGNfc3RhdGUtPnVhcGkpKQ0KPiA+ID4gPiA+ICsJCWludGVsX3Bz
cjJfcHJvZ3JhbV9wbGFuZV9zZWxfZmV0Y2gocGxhbmUsDQo+ID4gPiA+ID4gY3J0Y19zdGF0ZSwN
Cj4gPiA+ID4gPiBwbGFuZV9zdGF0ZSwgY29sb3JfcGxhbmUpOw0KPiA+ID4gPiA+ICsNCj4gPiA+
ID4gPiAgCS8qDQo+ID4gPiA+ID4gIAkgKiBUaGUgY29udHJvbCByZWdpc3RlciBzZWxmLWFybXMg
aWYgdGhlIHBsYW5lIHdhcw0KPiA+ID4gPiA+IHByZXZpb3VzbHkNCj4gPiA+ID4gPiAgCSAqIGRp
c2FibGVkLiBUcnkgdG8gbWFrZSB0aGUgcGxhbmUgZW5hYmxlIGF0b21pYyBieQ0KPiA+ID4gPiA+
IHdyaXRpbmcNCj4gPiA+ID4gPiAtLSANCj4gPiA+ID4gPiAyLjI4LjANCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
