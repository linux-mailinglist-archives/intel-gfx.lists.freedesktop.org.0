Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 89B842D9E0C
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Dec 2020 18:46:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F378F6E088;
	Mon, 14 Dec 2020 17:46:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DCDC76E088
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Dec 2020 17:46:39 +0000 (UTC)
IronPort-SDR: hISmEZRpMQMKfuDO5tJlbGYe4AceXeIQsY/58mrNHq1j6TvjtVp4ttNM+/MRhhbONaMl6IpWgg
 II4P3uqh560Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9834"; a="193110215"
X-IronPort-AV: E=Sophos;i="5.78,420,1599548400"; d="scan'208";a="193110215"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2020 09:46:39 -0800
IronPort-SDR: WkCGnatMPRTdrku457a1AqEE2ATgRFS8Bm9JNbfHiM4YV1ARag1X9KiVjeuSM/zc3zEx6zrcKT
 mDGDs+d82oTQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,420,1599548400"; d="scan'208";a="351443473"
Received: from irsmsx605.ger.corp.intel.com ([163.33.146.138])
 by orsmga002.jf.intel.com with ESMTP; 14 Dec 2020 09:46:38 -0800
Received: from irsmsx605.ger.corp.intel.com (163.33.146.138) by
 IRSMSX605.ger.corp.intel.com (163.33.146.138) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 14 Dec 2020 17:46:37 +0000
Received: from irsmsx605.ger.corp.intel.com ([163.33.146.138]) by
 IRSMSX605.ger.corp.intel.com ([163.33.146.138]) with mapi id 15.01.1713.004;
 Mon, 14 Dec 2020 17:46:37 +0000
From: "Mun, Gwan-gyeong" <gwan-gyeong.mun@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "Gupta, Anshuman"
 <anshuman.gupta@intel.com>
Thread-Topic: [PATCH v5 2/2] drm/i915/display: Support Multiple Transcoders'
 PSR status on debugfs
Thread-Index: AQHW0gxS0menU9jpdkS0Hub2eK/Ae6n2dnaAgABne4A=
Date: Mon, 14 Dec 2020 17:46:37 +0000
Message-ID: <2441c0549ee564cc29845d306e5cc13c8dedd06a.camel@intel.com>
References: <20201211171421.4048499-1-gwan-gyeong.mun@intel.com>
 <20201211171421.4048499-2-gwan-gyeong.mun@intel.com>
 <20201214111537.GG9309@intel.com> <87pn3c62na.fsf@intel.com>
In-Reply-To: <87pn3c62na.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.253.164]
Content-ID: <8C66D967A4A069409E35F4C4F04D03F2@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v5 2/2] drm/i915/display: Support Multiple
 Transcoders' PSR status on debugfs
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

T24gTW9uLCAyMDIwLTEyLTE0IGF0IDEzOjM1ICswMjAwLCBKYW5pIE5pa3VsYSB3cm90ZToNCj4g
T24gTW9uLCAxNCBEZWMgMjAyMCwgQW5zaHVtYW4gR3VwdGEgPGFuc2h1bWFuLmd1cHRhQGludGVs
LmNvbT4gd3JvdGU6DQo+ID4gT24gMjAyMC0xMi0xMSBhdCAxOToxNDoyMSArMDIwMCwgR3dhbi1n
eWVvbmcgTXVuIHdyb3RlOg0KPiA+ID4gSW4gb3JkZXIgdG8gc3VwcG9ydCB0aGUgUFNSIHN0YXRl
IG9mIGVhY2ggdHJhbnNjb2RlciwgaXQgYWRkcw0KPiA+ID4gaTkxNV9wc3Jfc3RhdHVzIHRvIHN1
Yi1kaXJlY3Rvcnkgb2YgZWFjaCB0cmFuc2NvZGVyLg0KPiA+ID4gDQo+ID4gPiB2MjogQ2hhbmdl
IHVzaW5nIG9mIFN5bWJvbGljIHBlcm1pc3Npb25zICdTX0lSVUdPJyB0byB1c2luZyBvZg0KPiA+
ID4gb2N0YWwNCj4gPiA+ICAgICBwZXJtaXNzaW9ucyAnMDQ0NCcNCj4gPiA+IHY1OiBBZGRyZXNz
ZWQgSkphbmkgTmlrdWxhJ3MgcmV2aWV3IGNvbW1lbnRzDQo+ID4gPiAgLSBSZW1vdmUgY2hlY2tp
bmcgb2YgR2VuMTIgZm9yIGk5MTVfcHNyX3N0YXR1cy4NCj4gPiA+ICAtIEFkZCBjaGVjayBvZiBI
QVNfUFNSKCkNCj4gPiA+ICAtIFJlbW92ZSBtZWFuaW5nbGVzcyBjaGVjayByb3V0aW5lLg0KPiA+
ID4gDQo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBHd2FuLWd5ZW9uZyBNdW4gPGd3YW4tZ3llb25nLm11
bkBpbnRlbC5jb20+DQo+ID4gPiBDYzogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6
YUBpbnRlbC5jb20+DQo+ID4gPiBDYzogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNv
bT4NCj4gPiA+IENjOiBBbnNodW1hbiBHdXB0YSA8YW5zaHVtYW4uZ3VwdGFAaW50ZWwuY29tPg0K
PiA+ID4gLS0tDQo+ID4gPiAgLi4uL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlf
ZGVidWdmcy5jIHwgMTYNCj4gPiA+ICsrKysrKysrKysrKysrKysNCj4gPiA+ICAxIGZpbGUgY2hh
bmdlZCwgMTYgaW5zZXJ0aW9ucygrKQ0KPiA+ID4gDQo+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X2RlYnVnZnMuYw0KPiA+ID4gYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfZGVidWdmcy5jDQo+ID4g
PiBpbmRleCAwNDEwNTMxNjdkN2YuLmQyZGQ2MWM0ZWUwYiAxMDA2NDQNCj4gPiA+IC0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9kZWJ1Z2ZzLmMNCj4gPiA+
ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9kZWJ1Z2Zz
LmMNCj4gPiA+IEBAIC0yMjI0LDYgKzIyMjQsMTYgQEAgc3RhdGljIGludA0KPiA+ID4gaTkxNV9o
ZGNwX3NpbmtfY2FwYWJpbGl0eV9zaG93KHN0cnVjdCBzZXFfZmlsZSAqbSwgdm9pZCAqZGF0YSkN
Cj4gPiA+ICB9DQo+ID4gPiAgREVGSU5FX1NIT1dfQVRUUklCVVRFKGk5MTVfaGRjcF9zaW5rX2Nh
cGFiaWxpdHkpOw0KPiA+ID4gIA0KPiA+ID4gK3N0YXRpYyBpbnQgaTkxNV9wc3Jfc3RhdHVzX3No
b3coc3RydWN0IHNlcV9maWxlICptLCB2b2lkICpkYXRhKQ0KPiA+ID4gK3sNCj4gPiA+ICsJc3Ry
dWN0IGRybV9jb25uZWN0b3IgKmNvbm5lY3RvciA9IG0tPnByaXZhdGU7DQo+ID4gPiArCXN0cnVj
dCBpbnRlbF9kcCAqaW50ZWxfZHAgPQ0KPiA+ID4gKwkJaW50ZWxfYXR0YWNoZWRfZHAodG9faW50
ZWxfY29ubmVjdG9yKGNvbm5lY3RvcikpOw0KPiA+ID4gKw0KPiA+ID4gKwlyZXR1cm4gaW50ZWxf
cHNyX3N0YXR1cyhtLCBpbnRlbF9kcCk7DQo+ID4gPiArfQ0KPiA+ID4gK0RFRklORV9TSE9XX0FU
VFJJQlVURShpOTE1X3Bzcl9zdGF0dXMpOw0KPiA+ID4gKw0KPiA+ID4gICNkZWZpbmUgTFBTUF9D
QVBBQkxFKENPTkQpIChDT05EID8gc2VxX3B1dHMobSwgIkxQU1A6DQo+ID4gPiBjYXBhYmxlXG4i
KSA6IFwNCj4gPiA+ICAJCQkJc2VxX3B1dHMobSwgIkxQU1A6IGluY2FwYWJsZVxuIikpDQo+ID4g
PiAgDQo+ID4gPiBAQCAtMjM5OSw2ICsyNDA5LDEyIEBAIGludCBpbnRlbF9jb25uZWN0b3JfZGVi
dWdmc19hZGQoc3RydWN0DQo+ID4gPiBkcm1fY29ubmVjdG9yICpjb25uZWN0b3IpDQo+ID4gPiAg
CQkJCSAgICBjb25uZWN0b3IsDQo+ID4gPiAmaTkxNV9wc3Jfc2lua19zdGF0dXNfZm9wcyk7DQo+
ID4gPiAgCX0NCj4gPiA+ICANCj4gPiA+ICsJaWYgKEhBU19QU1IoZGV2X3ByaXYpICYmDQo+ID4g
PiArCSAgICBjb25uZWN0b3ItPmNvbm5lY3Rvcl90eXBlID09IERSTV9NT0RFX0NPTk5FQ1RPUl9l
RFApIHsNCj4gPiA+ICsJCWRlYnVnZnNfY3JlYXRlX2ZpbGUoImk5MTVfcHNyX3N0YXR1cyIsIDA0
NDQsIHJvb3QsDQo+ID4gQ291bGQgd2Uga2VlcCB0aGUgZmlsZSBuYW1lIGFzIGk5MTVfZWRwX3Bz
cl9zdGF0dXMsIGFzIHdlIGhhdmUNCj4gPiB0b2RheT8NCj4gPiB3aXRoIHRoYXQgYWRkcmVzc2Vk
Lg0KPiANCj4gRGVwZW5kcyBvbiB3aGV0aGVyIHRoZSBwbGFuIGlzIHRvIHVzZSB0aGUgc2FtZSBm
aWxlIGZvciByZWd1bGFyIERQDQo+IHBhbmVsDQo+IHJlcGxheSBpbiB0aGUgZnV0dXJlLiBUaGVu
IGVkcCB3b3VsZCBiZSBtaXNsZWFkaW5nLg0KPiANCnllcywgSmFuaSBwb2ludHMgb3V0IHRoZSBy
aWdodCBwb2ludC4NClRoZSBmZWF0dXJlIGJldHdlZW4gZWRwIFBTUiBhbmQgRFAgUGFuZWxSZXBs
YXkgaXMgYWxtb3N0IHRoZSBzYW1lLA0KdGhlcmVmb3JlIHRoaXMgZGVidWcgZmlsZSBjYW4gYmUg
dXNlZCBmb3IgZWRwIFBTUiBhbmQgRFAgUFIuDQphbmQgdGhlIGZlYXR1cmUgY2FuIG5vdCBleGlz
dCBhdCB0aGUgc2FtZSB0aW1lIG9uIGJvdGggZWRwIGFuZCBkcA0KY29ubmVjdG9yLiBzbyBJIHRo
aW5rIHdlIGRvbid0IG5lZWQgdG8gYWRkIGFkZGl0aW9uYWwgZmlsZXMgZm9yIGENCnNpbWlsYXIg
ZmVhdHVyZS4NCj4gQlIsDQo+IEphbmkuDQo+IA0KPiA+IFJldmlld2VkLWJ5OiBBbnNodW1hbiBH
dXB0YSA8YW5zaHVtYW4uZ3VwdGFAaW50ZWwuY29tPg0KPiA+ID4gKwkJCQkgICAgY29ubmVjdG9y
LCAmaTkxNV9wc3Jfc3RhdHVzX2ZvcHMpOw0KPiA+ID4gKwl9DQo+ID4gPiArDQo+ID4gPiAgCWlm
IChjb25uZWN0b3ItPmNvbm5lY3Rvcl90eXBlID09IERSTV9NT0RFX0NPTk5FQ1RPUl9EaXNwbGF5
UG9ydA0KPiA+ID4gfHwNCj4gPiA+ICAJICAgIGNvbm5lY3Rvci0+Y29ubmVjdG9yX3R5cGUgPT0g
RFJNX01PREVfQ09OTkVDVE9SX0hETUlBIHx8DQo+ID4gPiAgCSAgICBjb25uZWN0b3ItPmNvbm5l
Y3Rvcl90eXBlID09IERSTV9NT0RFX0NPTk5FQ1RPUl9IRE1JQikgew0KPiA+ID4gLS0gDQo+ID4g
PiAyLjI1LjANCj4gPiA+IA0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4Cg==
