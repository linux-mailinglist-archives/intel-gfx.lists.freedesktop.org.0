Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D78AE17A703
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Mar 2020 15:01:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 235BD6EBC4;
	Thu,  5 Mar 2020 14:01:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8BDB46EBC4
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Mar 2020 14:01:50 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Mar 2020 06:01:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,518,1574150400"; d="scan'208";a="232949419"
Received: from irsmsx107.ger.corp.intel.com ([163.33.3.99])
 by fmsmga007.fm.intel.com with ESMTP; 05 Mar 2020 06:01:49 -0800
Received: from irsmsx601.ger.corp.intel.com (163.33.146.7) by
 IRSMSX107.ger.corp.intel.com (163.33.3.99) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 5 Mar 2020 14:01:48 +0000
Received: from irsmsx604.ger.corp.intel.com (163.33.146.137) by
 irsmsx601.ger.corp.intel.com (163.33.146.7) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 5 Mar 2020 14:01:48 +0000
Received: from irsmsx604.ger.corp.intel.com ([163.33.146.137]) by
 IRSMSX604.ger.corp.intel.com ([163.33.146.137]) with mapi id 15.01.1713.004;
 Thu, 5 Mar 2020 14:01:48 +0000
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Thread-Topic: [PATCH v2 07/20] drm/i915: Unify the low level dbuf code
Thread-Index: AQHV6/6uiGNLB8c1mE6/dzTFurMHp6g4upAzgAATToCAAOlzAIAAVzeAgAAF6QA=
Date: Thu, 5 Mar 2020 14:01:48 +0000
Message-ID: <4f724c86dc557022546875a3a98201ca3c625ed6.camel@intel.com>
References: <20200225171125.28885-1-ville.syrjala@linux.intel.com>
 <20200225171125.28885-8-ville.syrjala@linux.intel.com>
 <f0907e9776be49c8ab171a0a0caf900a@intel.com>
 <20200304183007.GF13686@intel.com>
 <cda5db60f51d6c46b7a3a632c0f4949fc9de156d.camel@intel.com>
 <20200305133749.GK13686@intel.com>
In-Reply-To: <20200305133749.GK13686@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.237.72.89]
Content-ID: <8AA1F22F2AF5684BB202B0DB46DE2684@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2 07/20] drm/i915: Unify the low level dbuf
 code
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

T24gVGh1LCAyMDIwLTAzLTA1IGF0IDE1OjM3ICswMjAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
DQo+IE9uIFRodSwgTWFyIDA1LCAyMDIwIGF0IDA4OjI4OjMwQU0gKzAwMDAsIExpc292c2tpeSwg
U3RhbmlzbGF2IHdyb3RlOg0KPiA+IE9uIFdlZCwgMjAyMC0wMy0wNCBhdCAyMDozMCArMDIwMCwg
VmlsbGUgU3lyasOkbMOkIHdyb3RlOg0KPiA+ID4gT24gV2VkLCBNYXIgMDQsIDIwMjAgYXQgMDU6
MjM6MDVQTSArMDAwMCwgTGlzb3Zza2l5LCBTdGFuaXNsYXYNCj4gPiA+IHdyb3RlOg0KPiA+ID4g
PiANCj4gPiA+ID4gPiAtICAgICAgIC8qIElmIDJuZCBEQnVmIHNsaWNlIHJlcXVpcmVkLCBlbmFi
bGUgaXQgaGVyZSAqLw0KPiA+ID4gPiA+ICAgICAgICBpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+
PSAxMSAmJiBzbGljZXNfdW5pb24gIT0NCj4gPiA+ID4gPiBod19lbmFibGVkX3NsaWNlcykNCj4g
PiA+ID4gPiAtICAgICAgICAgICAgICAgaWNsX2RidWZfc2xpY2VzX3VwZGF0ZShkZXZfcHJpdiwN
Cj4gPiA+ID4gPiBzbGljZXNfdW5pb24pOw0KPiA+ID4gPiA+ICsgICAgICAgICAgICAgICBnZW45
X2RidWZfc2xpY2VzX3VwZGF0ZShkZXZfcHJpdiwNCj4gPiA+ID4gPiBzbGljZXNfdW5pb24pOw0K
PiA+ID4gPiA+IH0NCj4gPiA+ID4gPiBzdGF0aWMgdm9pZCBpY2xfZGJ1Zl9zbGljZV9wb3N0X3Vw
ZGF0ZShzdHJ1Y3QNCj4gPiA+ID4gPiBpbnRlbF9hdG9taWNfc3RhdGUNCj4gPiA+ID4gPiAqc3Rh
dGUpDQo+ID4gPiA+ID4gQEAgLTE1MzA3LDkgKzE1MzA2LDggQEAgc3RhdGljIHZvaWQNCj4gPiA+
ID4gPiBpY2xfZGJ1Zl9zbGljZV9wb3N0X3VwZGF0ZShzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRl
ICpzdGF0ZSkNCj4gPiA+ID4gPiAgICAgICAgdTggaHdfZW5hYmxlZF9zbGljZXMgPSBkZXZfcHJp
di0NCj4gPiA+ID4gPiA+ZW5hYmxlZF9kYnVmX3NsaWNlc19tYXNrOw0KPiA+ID4gPiA+ICAgICAg
ICB1OCByZXF1aXJlZF9zbGljZXMgPSBzdGF0ZS0+ZW5hYmxlZF9kYnVmX3NsaWNlc19tYXNrOw0K
PiA+ID4gPiA+IC0gICAgICAgLyogSWYgMm5kIERCdWYgc2xpY2UgaXMgbm8gbW9yZSByZXF1aXJl
ZCBkaXNhYmxlIGl0DQo+ID4gPiA+ID4gKi8NCj4gPiA+ID4gPiAgICAgICAgIGlmIChJTlRFTF9H
RU4oZGV2X3ByaXYpID49IDExICYmIHJlcXVpcmVkX3NsaWNlcyAhPQ0KPiA+ID4gPiA+IGh3X2Vu
YWJsZWRfc2xpY2VzKQ0KPiA+ID4gPiA+IC0gICAgICAgICAgICAgICBpY2xfZGJ1Zl9zbGljZXNf
dXBkYXRlKGRldl9wcml2LA0KPiA+ID4gPiA+IHJlcXVpcmVkX3NsaWNlcyk7DQo+ID4gPiA+ID4g
KyAgICAgICAgICAgICAgIGdlbjlfZGJ1Zl9zbGljZXNfdXBkYXRlKGRldl9wcml2LA0KPiA+ID4g
PiA+IHJlcXVpcmVkX3NsaWNlcyk7DQo+ID4gPiA+IA0KPiA+ID4gPiANCj4gPiA+ID4gRG9lc24n
dCBtYWtlIG11Y2ggc2Vuc2UuIEp1c3QgbG9vayAtIHByZXZpb3VzbHkgd2Ugd2VyZQ0KPiA+ID4g
PiBjaGVja2luZyBpZg0KPiA+ID4gPiBJTlRFTF9HRU4gaXMgPj0gdGhhbiAxMSh3aGljaCBfaXNf
IElDTCkNCj4gPiA+ID4gDQo+ID4gPiA+IGFuZCBub3cgd2Ugc3RpbGwgX2RvXyBjaGVjayBpZiBJ
TlRFTF9HRU4gaXMgPj0gMTEsIGJ1dC4uLiBjYWxsDQo+ID4gPiA+IG5vdw0KPiA+ID4gPiBmdW5j
dGlvbiByZW5hbWVkIHRvIGdlbjkNCj4gPiA+ID4gDQo+ID4gPiA+IA0KPiA+ID4gPiBJIGd1ZXNz
IHlvdSBlaXRoZXIgbmVlZCB0byBjaGFuZ2UgSU5URUxfR0VOIGNoZWNrIHRvIGJlID49OSB0bw0K
PiA+ID4gPiBhdA0KPiA+ID4gPiBsZWFzdCBsb29rIHNvbWV3aGF0IGNvbnNpc3RlbnQNCj4gPiA+
ID4gDQo+ID4gPiA+IG9yIGxlYXZlIGl0IGFzIGlzLiBPciBhdCBsZWFzdCByZW5hbWUgaWNsXyBw
cmVmaXggdG8gZ2VuMTFfDQo+ID4gPiA+IG90aGVyd2lzZSB0aGF0IGxvb2tzIGluY29uc2lzdGVu
dCwgaS5lDQo+ID4gPiA+IA0KPiA+ID4gPiB5b3UgYXJlIG5vdyBjaGVja2luZyB0aGF0IGdlbiBp
cyA+PSAxMSBhbmQgdGhlbiBPSyAtIG5vdyBsZXQncw0KPiA+ID4gPiBjYWxsDQo+ID4gPiA+IGdl
biA5ISA6KQ0KPiA+ID4gDQo+ID4gPiBUaGUgc3RhbmRhcmQgcHJhY3RpY2UgaXMgdG8gbmFtZSB0
aGluZ3MgYmFzZWQgb24gdGhlIG9sZGVzdA0KPiA+ID4gcGxhdGZvcm0NCj4gPiA+IHRoYXQgaW50
cm9kdWNlZCB0aGUgdGhpbmcuDQo+ID4gDQo+ID4gQW5kIHRoYXQgaXMgZmluZSAtIGJ1dCB0aGVu
IHlvdSBuZWVkIHRvIGNoYW5nZSB0aGUgY2hlY2sgYWJvdmUNCj4gPiBmcm9tIA0KPiA+IElOVEVM
X0dFTiA+PSAxMSB0byBJTlRFTF9HRU4gPj0gOSwgcmlnaHQgLSBpZiB5b3UgZ2VuOSBpcyB0aGUN
Cj4gPiBvbGRlc3QNCj4gPiBwbGF0Zm9ybS4gDQo+IA0KPiBObywgdGhlIGZ1bmN0aW9uIHdvcmtz
IGp1c3QgZmluZSBmb3IgYWxsIHNrbCsgYnV0IG5vIHJlYWwgcmVxdWlyZW1lbnQNCj4gdGhhdCBp
dCBnZXRzIGNhbGxlZCBvbiBhbGwgb2YgdGhlbS4gIEl0J3MganVzdCBwYXJ0IG9mIHRoZSBzdGFu
ZGFyZA0KPiBzZXQNCj4gb2YgZ2VuOV9kYnVmICh3aGljaCBzaG91bGQgcmVhbGx5IGJlIHNrbF9k
YnVmIHNpbmNlIHRoaXMgaXMgYWJvdXQNCj4gZGlzcGxheSBzdHVmZikuDQo+IA0KPiBBbnl3YXlz
LCBJSVJDIHRoaXMgY2hlY2sgaXMgZ29pbmcgYXdheSBpbiBhIGxhdGVyIHBhdGNoLCBzbyB0aGUN
Cj4gZGlzY3Vzc2lvbiBpcyBhIGJpdCBtb290Lg0KDQpBaGgsIEkgZGlkbid0IHNpbXBseSBnZXQg
dG8gdGhhdCBwYXRjaCB5ZXQgLSBubyBxdWVzdGlvbnMgdGhlbiA6KQ0KDQpXb3VsZCBqdXN0IHJl
bW92ZSBpdCBoZXJlIHJpZ2h0IGF3YXkgdGhvdWdoLCBidXQgd2hhdGV2ZXIuDQoNClJldmlld2Vk
LWJ5OiBTdGFuaXNsYXYgTGlzb3Zza2l5IDxzdGFuaXNsYXYubGlzb3Zza2l5QGludGVsLmNvbT4N
Cg0KPiANCj4gPiANCj4gPiAtICAgICAgIC8qIElmIDJuZCBEQnVmIHNsaWNlIHJlcXVpcmVkLCBl
bmFibGUgaXQgaGVyZSAqLw0KPiA+ID4gPiA+ICAgICAgICBpZiAoSU5URUxfR0VOKGRldl9wcml2
KSA+PSAxMSAmJiBzbGljZXNfdW5pb24gIT0NCj4gPiA+ID4gPiBod19lbmFibGVkX3NsaWNlcykN
Cj4gPiA+ID4gPiAtICAgICAgICAgICAgICAgaWNsX2RidWZfc2xpY2VzX3VwZGF0ZShkZXZfcHJp
diwNCj4gPiA+ID4gPiBzbGljZXNfdW5pb24pOw0KPiA+ID4gPiA+ICsgICAgICAgICAgICAgICBn
ZW45X2RidWZfc2xpY2VzX3VwZGF0ZShkZXZfcHJpdiwNCj4gPiA+ID4gPiBzbGljZXNfdW5pb24p
Ow0KPiA+ID4gPiA+IH0NCj4gPiANCj4gPiBJIG1lYW4gcHJldmlvdXNseSB3ZSB3ZXJlIGNoZWNr
aW5nIElOVEVMX0dFTiB0byBiZSBhdCBsZWFzdCAxMSBhbmQNCj4gPiBjYWxsZWQgZnVuY3Rpb24g
cHJlZml4ZWQgd2l0aCBpY2xfIC0gd2hpY2ggd2FzIGNvbnNpc3RlbnQgYW5kDQo+ID4gbG9naWNh
bC4NCj4gPiANCj4gPiBOb3cgeW91IGNoYW5nZWQgdGhpcyB0byBnZW45KG9sZGVzdCBwbGF0Zm9y
bSB3aGljaCBpbnRyb2R1Y2VkIHRoZQ0KPiA+IHRoaW5nKSwgaG93ZXZlciB0aGVuIHRoZSBjaGVj
ayBhYm92ZSBtYWtlcyBubyBzZW5zZSAtIGl0IHNob3VsZCBiZQ0KPiA+IGNoYW5nZWQgdG8gSU5U
RUxfR0VOID49IDkgYXMgd2VsbC4gT3RoZXJ3aXNlIHRoaXMNCj4gPiAiZ2VuOV9kYnVmX3NsaWNl
c191cGRhdGUiIGZ1bmN0aW9uIHdpbGwgbm90IGJlIGFjdHVhbGx5IGV2ZXIgY2FsbGVkDQo+ID4g
Zm9yDQo+ID4gZ2VuOS4NCj4gPiANCj4gPiBPciBkbyB5b3Ugd2FudCBmdW5jdGlvbiBwcmVmaXhl
ZCBhcyBnZW45XyB0byBiZSBvbmx5IGNhbGxlZCBmb3IgZ2VuDQo+ID4gMTEsDQo+ID4gd2h5IHdl
IHRoZW4gcHJlZml4IGl0Li4NCj4gPiANCj4gPiBTdGFuDQo+ID4gDQo+ID4gPiANCj4gPiA+ID4g
DQo+ID4gPiA+IA0KPiA+ID4gPiBTdGFuDQo+ID4gPiA+IA0KPiA+ID4gPiBfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXw0KPiA+ID4gPiBGcm9tOiBWaWxsZSBTeXJqYWxhIDx2aWxsZS5z
eXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gPiA+ID4gU2VudDogVHVlc2RheSwgRmVicnVhcnkg
MjUsIDIwMjAgNzoxMToxMiBQTQ0KPiA+ID4gPiBUbzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZw0KPiA+ID4gPiBDYzogTGlzb3Zza2l5LCBTdGFuaXNsYXYNCj4gPiA+ID4gU3ViamVj
dDogW1BBVENIIHYyIDA3LzIwXSBkcm0vaTkxNTogVW5pZnkgdGhlIGxvdyBsZXZlbCBkYnVmDQo+
ID4gPiA+IGNvZGUNCj4gPiA+ID4gDQo+ID4gPiA+IEZyb206IFZpbGxlIFN5cmrDpGzDpCA8dmls
bGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+ID4gPiA+IA0KPiA+ID4gPiBUaGUgbG93IGxl
dmVsIGRidWYgc2xpY2UgY29kZSBpcyByYXRoZXIgaW5jb25zaXRlbnQgd2l0aCBpdHMNCj4gPiA+
ID4gZnVuY3Rpb25hIG5hbWluZyBhbmQgb3JnYW5pemF0aW9uLiBNYWtlIGl0IG1vcmUgY29uc2lz
dGVudC4NCj4gPiA+ID4gDQo+ID4gPiA+IEFsc28gc2hhcmUgdGhlIGVuYWJsZS9kaXNhYmxlIGZ1
bmN0aW9ucyBiZXR3ZWVuIGFsbCBwbGF0Zm9ybXMNCj4gPiA+ID4gc2luY2UgdGhlIHNhbWUgY29k
ZSB3b3JrcyBqdXN0IGZpbmUgZm9yIGFsbCBvZiB0aGVtLg0KPiA+ID4gPiANCj4gPiA+ID4gQ2M6
IFN0YW5pc2xhdiBMaXNvdnNraXkgPHN0YW5pc2xhdi5saXNvdnNraXlAaW50ZWwuY29tPg0KPiA+
ID4gPiBTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXgu
aW50ZWwuY29tPg0KPiA+ID4gPiAtLS0NCj4gPiA+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGlzcGxheS5jICB8ICA2ICstLQ0KPiA+ID4gPiAgLi4uL2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5jICAgIHwgNDQgKysrKysrKystLS0NCj4gPiA+ID4g
LS0tLQ0KPiA+ID4gPiAtLS0tDQo+ID4gPiA+ICAuLi4vZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
aXNwbGF5X3Bvd2VyLmggICAgfCAgNiArLS0NCj4gPiA+ID4gIDMgZmlsZXMgY2hhbmdlZCwgMjQg
aW5zZXJ0aW9ucygrKSwgMzIgZGVsZXRpb25zKC0pDQo+ID4gPiA+IA0KPiA+ID4gPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4gPiA+
ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0KPiA+ID4g
PiBpbmRleCAzMDMxZTY0ZWU1MTguLjY5NTJjMzk4Y2M0MyAxMDA2NDQNCj4gPiA+ID4gLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4gPiA+ID4gKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4gPiA+ID4g
QEAgLTE1Mjk2LDkgKzE1Mjk2LDggQEAgc3RhdGljIHZvaWQNCj4gPiA+ID4gaWNsX2RidWZfc2xp
Y2VfcHJlX3VwZGF0ZShzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSkNCj4gPiA+ID4g
ICAgICAgICAgdTggcmVxdWlyZWRfc2xpY2VzID0gc3RhdGUtPmVuYWJsZWRfZGJ1Zl9zbGljZXNf
bWFzazsNCj4gPiA+ID4gICAgICAgICAgdTggc2xpY2VzX3VuaW9uID0gaHdfZW5hYmxlZF9zbGlj
ZXMgfCByZXF1aXJlZF9zbGljZXM7DQo+ID4gPiA+IA0KPiA+ID4gPiAtICAgICAgIC8qIElmIDJu
ZCBEQnVmIHNsaWNlIHJlcXVpcmVkLCBlbmFibGUgaXQgaGVyZSAqLw0KPiA+ID4gPiAgICAgICAg
ICBpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSAxMSAmJiBzbGljZXNfdW5pb24gIT0NCj4gPiA+
ID4gaHdfZW5hYmxlZF9zbGljZXMpDQo+ID4gPiA+IC0gICAgICAgICAgICAgICBpY2xfZGJ1Zl9z
bGljZXNfdXBkYXRlKGRldl9wcml2LCBzbGljZXNfdW5pb24pOw0KPiA+ID4gPiArICAgICAgICAg
ICAgICAgZ2VuOV9kYnVmX3NsaWNlc191cGRhdGUoZGV2X3ByaXYsDQo+ID4gPiA+IHNsaWNlc191
bmlvbik7DQo+ID4gPiA+ICB9DQo+ID4gPiA+IA0KPiA+ID4gPiAgc3RhdGljIHZvaWQgaWNsX2Ri
dWZfc2xpY2VfcG9zdF91cGRhdGUoc3RydWN0DQo+ID4gPiA+IGludGVsX2F0b21pY19zdGF0ZQ0K
PiA+ID4gPiAqc3RhdGUpDQo+ID4gPiA+IEBAIC0xNTMwNyw5ICsxNTMwNiw4IEBAIHN0YXRpYyB2
b2lkDQo+ID4gPiA+IGljbF9kYnVmX3NsaWNlX3Bvc3RfdXBkYXRlKHN0cnVjdCBpbnRlbF9hdG9t
aWNfc3RhdGUgKnN0YXRlKQ0KPiA+ID4gPiAgICAgICAgICB1OCBod19lbmFibGVkX3NsaWNlcyA9
IGRldl9wcml2LQ0KPiA+ID4gPiA+ZW5hYmxlZF9kYnVmX3NsaWNlc19tYXNrOw0KPiA+ID4gPiAg
ICAgICAgICB1OCByZXF1aXJlZF9zbGljZXMgPSBzdGF0ZS0+ZW5hYmxlZF9kYnVmX3NsaWNlc19t
YXNrOw0KPiA+ID4gPiANCj4gPiA+ID4gLSAgICAgICAvKiBJZiAybmQgREJ1ZiBzbGljZSBpcyBu
byBtb3JlIHJlcXVpcmVkIGRpc2FibGUgaXQgKi8NCj4gPiA+ID4gICAgICAgICAgaWYgKElOVEVM
X0dFTihkZXZfcHJpdikgPj0gMTEgJiYgcmVxdWlyZWRfc2xpY2VzICE9DQo+ID4gPiA+IGh3X2Vu
YWJsZWRfc2xpY2VzKQ0KPiA+ID4gPiAtICAgICAgICAgICAgICAgaWNsX2RidWZfc2xpY2VzX3Vw
ZGF0ZShkZXZfcHJpdiwNCj4gPiA+ID4gcmVxdWlyZWRfc2xpY2VzKTsNCj4gPiA+ID4gKyAgICAg
ICAgICAgICAgIGdlbjlfZGJ1Zl9zbGljZXNfdXBkYXRlKGRldl9wcml2LA0KPiA+ID4gPiByZXF1
aXJlZF9zbGljZXMpOw0KPiA+ID4gPiAgfQ0KPiA+ID4gPiANCj4gPiA+ID4gIHN0YXRpYyB2b2lk
IHNrbF9jb21taXRfbW9kZXNldF9lbmFibGVzKHN0cnVjdA0KPiA+ID4gPiBpbnRlbF9hdG9taWNf
c3RhdGUNCj4gPiA+ID4gKnN0YXRlKQ0KPiA+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmMNCj4gPiA+ID4gYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93ZXIuYw0KPiA+ID4gPiBpbmRl
eCBlODFlNTYxZThhYzAuLmNlM2JiYzRjN2EyNyAxMDA2NDQNCj4gPiA+ID4gLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmMNCj4gPiA+ID4gKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmMNCj4g
PiA+ID4gQEAgLTQ0MzMsMTUgKzQ0MzMsMTggQEAgc3RhdGljIHZvaWQNCj4gPiA+ID4gaW50ZWxf
cG93ZXJfZG9tYWluc19zeW5jX2h3KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikN
Cj4gPiA+ID4gICAgICAgICAgbXV0ZXhfdW5sb2NrKCZwb3dlcl9kb21haW5zLT5sb2NrKTsNCj4g
PiA+ID4gIH0NCj4gPiA+ID4gDQo+ID4gPiA+IC1zdGF0aWMgdm9pZCBpbnRlbF9kYnVmX3NsaWNl
X3NldChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZQ0KPiA+ID4gPiAqZGV2X3ByaXYsDQo+ID4gPiA+
IC0gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGVudW0gZGJ1Zl9zbGljZSBzbGljZSwg
Ym9vbA0KPiA+ID4gPiBlbmFibGUpDQo+ID4gPiA+ICtzdGF0aWMgdm9pZCBnZW45X2RidWZfc2xp
Y2Vfc2V0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlDQo+ID4gPiA+ICpkZXZfcHJpdiwNCj4gPiA+
ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBlbnVtIGRidWZfc2xpY2Ugc2xpY2Us
IGJvb2wNCj4gPiA+ID4gZW5hYmxlKQ0KPiA+ID4gPiAgew0KPiA+ID4gPiAgICAgICAgICBpOTE1
X3JlZ190IHJlZyA9IERCVUZfQ1RMX1Moc2xpY2UpOw0KPiA+ID4gPiAgICAgICAgICBib29sIHN0
YXRlOw0KPiA+ID4gPiAgICAgICAgICB1MzIgdmFsOw0KPiA+ID4gPiANCj4gPiA+ID4gICAgICAg
ICAgdmFsID0gaW50ZWxfZGVfcmVhZChkZXZfcHJpdiwgcmVnKTsNCj4gPiA+ID4gLSAgICAgICB2
YWwgPSBlbmFibGUgPyAodmFsIHwgREJVRl9QT1dFUl9SRVFVRVNUKSA6ICh2YWwgJg0KPiA+ID4g
PiB+REJVRl9QT1dFUl9SRVFVRVNUKTsNCj4gPiA+ID4gKyAgICAgICBpZiAoZW5hYmxlKQ0KPiA+
ID4gPiArICAgICAgICAgICAgICAgdmFsIHw9IERCVUZfUE9XRVJfUkVRVUVTVDsNCj4gPiA+ID4g
KyAgICAgICBlbHNlDQo+ID4gPiA+ICsgICAgICAgICAgICAgICB2YWwgJj0gfkRCVUZfUE9XRVJf
UkVRVUVTVDsNCj4gPiA+ID4gICAgICAgICAgaW50ZWxfZGVfd3JpdGUoZGV2X3ByaXYsIHJlZywg
dmFsKTsNCj4gPiA+ID4gICAgICAgICAgaW50ZWxfZGVfcG9zdGluZ19yZWFkKGRldl9wcml2LCBy
ZWcpOw0KPiA+ID4gPiAgICAgICAgICB1ZGVsYXkoMTApOw0KPiA+ID4gPiBAQCAtNDQ1MiwxOCAr
NDQ1NSw4IEBAIHN0YXRpYyB2b2lkIGludGVsX2RidWZfc2xpY2Vfc2V0KHN0cnVjdA0KPiA+ID4g
PiBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwNCj4gPiA+ID4gICAgICAgICAgICAgICAgICAg
c2xpY2UsIGVuYWJsZSA/ICJlbmFibGUiIDogImRpc2FibGUiKTsNCj4gPiA+ID4gIH0NCj4gPiA+
ID4gDQo+ID4gPiA+IC1zdGF0aWMgdm9pZCBnZW45X2RidWZfZW5hYmxlKHN0cnVjdCBkcm1faTkx
NV9wcml2YXRlDQo+ID4gPiA+ICpkZXZfcHJpdikNCj4gPiA+ID4gLXsNCj4gPiA+ID4gLSAgICAg
ICBpY2xfZGJ1Zl9zbGljZXNfdXBkYXRlKGRldl9wcml2LCBCSVQoREJVRl9TMSkpOw0KPiA+ID4g
PiAtfQ0KPiA+ID4gPiAtDQo+ID4gPiA+IC1zdGF0aWMgdm9pZCBnZW45X2RidWZfZGlzYWJsZShz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZQ0KPiA+ID4gPiAqZGV2X3ByaXYpDQo+ID4gPiA+IC17DQo+
ID4gPiA+IC0gICAgICAgaWNsX2RidWZfc2xpY2VzX3VwZGF0ZShkZXZfcHJpdiwgMCk7DQo+ID4g
PiA+IC19DQo+ID4gPiA+IC0NCj4gPiA+ID4gLXZvaWQgaWNsX2RidWZfc2xpY2VzX3VwZGF0ZShz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsDQo+ID4gPiA+IC0gICAgICAgICAgICAg
ICAgICAgICAgICAgICB1OCByZXFfc2xpY2VzKQ0KPiA+ID4gPiArdm9pZCBnZW45X2RidWZfc2xp
Y2VzX3VwZGF0ZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZQ0KPiA+ID4gPiAqZGV2X3ByaXYsDQo+
ID4gPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgdTggcmVxX3NsaWNlcykNCj4gPiA+
ID4gIHsNCj4gPiA+ID4gICAgICAgICAgaW50IG51bV9zbGljZXMgPSBJTlRFTF9JTkZPKGRldl9w
cml2KS0NCj4gPiA+ID4gPiBudW1fc3VwcG9ydGVkX2RidWZfc2xpY2VzOw0KPiA+ID4gPiANCj4g
PiA+ID4gICAgICAgICAgc3RydWN0IGk5MTVfcG93ZXJfZG9tYWlucyAqcG93ZXJfZG9tYWlucyA9
ICZkZXZfcHJpdi0NCj4gPiA+ID4gPiBwb3dlcl9kb21haW5zOw0KPiA+ID4gPiANCj4gPiA+ID4g
QEAgLTQ0ODYsMjggKzQ0NzksMjkgQEAgdm9pZCBpY2xfZGJ1Zl9zbGljZXNfdXBkYXRlKHN0cnVj
dA0KPiA+ID4gPiBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwNCj4gPiA+ID4gICAgICAgICAg
bXV0ZXhfbG9jaygmcG93ZXJfZG9tYWlucy0+bG9jayk7DQo+ID4gPiA+IA0KPiA+ID4gPiAgICAg
ICAgICBmb3IgKHNsaWNlID0gREJVRl9TMTsgc2xpY2UgPCBudW1fc2xpY2VzOyBzbGljZSsrKQ0K
PiA+ID4gPiAtICAgICAgICAgICAgICAgaW50ZWxfZGJ1Zl9zbGljZV9zZXQoZGV2X3ByaXYsIHNs
aWNlLA0KPiA+ID4gPiAtICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgcmVxX3Ns
aWNlcyAmIEJJVChzbGljZSkpOw0KPiA+ID4gPiArICAgICAgICAgICAgICAgZ2VuOV9kYnVmX3Ns
aWNlX3NldChkZXZfcHJpdiwgc2xpY2UsIHJlcV9zbGljZXMNCj4gPiA+ID4gJg0KPiA+ID4gPiBC
SVQoc2xpY2UpKTsNCj4gPiA+ID4gDQo+ID4gPiA+ICAgICAgICAgIGRldl9wcml2LT5lbmFibGVk
X2RidWZfc2xpY2VzX21hc2sgPSByZXFfc2xpY2VzOw0KPiA+ID4gPiANCj4gPiA+ID4gICAgICAg
ICAgbXV0ZXhfdW5sb2NrKCZwb3dlcl9kb21haW5zLT5sb2NrKTsNCj4gPiA+ID4gIH0NCj4gPiA+
ID4gDQo+ID4gPiA+IC1zdGF0aWMgdm9pZCBpY2xfZGJ1Zl9lbmFibGUoc3RydWN0IGRybV9pOTE1
X3ByaXZhdGUgKmRldl9wcml2KQ0KPiA+ID4gPiArc3RhdGljIHZvaWQgZ2VuOV9kYnVmX2VuYWJs
ZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZQ0KPiA+ID4gPiAqZGV2X3ByaXYpDQo+ID4gPiA+ICB7
DQo+ID4gPiA+IC0gICAgICAgc2tsX2RkYl9nZXRfaHdfc3RhdGUoZGV2X3ByaXYpOw0KPiA+ID4g
PiArICAgICAgIGRldl9wcml2LT5lbmFibGVkX2RidWZfc2xpY2VzX21hc2sgPQ0KPiA+ID4gPiAr
ICAgICAgICAgICAgICAgaW50ZWxfZW5hYmxlZF9kYnVmX3NsaWNlc19tYXNrKGRldl9wcml2KTsN
Cj4gPiA+ID4gKw0KPiA+ID4gPiAgICAgICAgICAvKg0KPiA+ID4gPiAgICAgICAgICAgKiBKdXN0
IHBvd2VyIHVwIGF0IGxlYXN0IDEgc2xpY2UsIHdlIHdpbGwNCj4gPiA+ID4gICAgICAgICAgICog
ZmlndXJlIG91dCBsYXRlciB3aGljaCBzbGljZXMgd2UgaGF2ZSBhbmQgd2hhdCB3ZQ0KPiA+ID4g
PiBuZWVkLg0KPiA+ID4gPiAgICAgICAgICAgKi8NCj4gPiA+ID4gLSAgICAgICBpY2xfZGJ1Zl9z
bGljZXNfdXBkYXRlKGRldl9wcml2LCBkZXZfcHJpdi0NCj4gPiA+ID4gPiBlbmFibGVkX2RidWZf
c2xpY2VzX21hc2sgfA0KPiA+ID4gPiANCj4gPiA+ID4gLSAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgIEJJVChEQlVGX1MxKSk7DQo+ID4gPiA+ICsgICAgICAgZ2VuOV9kYnVmX3NsaWNlc191
cGRhdGUoZGV2X3ByaXYsIEJJVChEQlVGX1MxKSB8DQo+ID4gPiA+ICsgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgZGV2X3ByaXYtDQo+ID4gPiA+ID4gZW5hYmxlZF9kYnVmX3NsaWNlc19t
YXNrKTsNCj4gPiA+ID4gDQo+ID4gPiA+ICB9DQo+ID4gPiA+IA0KPiA+ID4gPiAtc3RhdGljIHZv
aWQgaWNsX2RidWZfZGlzYWJsZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZQ0KPiA+ID4gPiAqZGV2
X3ByaXYpDQo+ID4gPiA+ICtzdGF0aWMgdm9pZCBnZW45X2RidWZfZGlzYWJsZShzdHJ1Y3QgZHJt
X2k5MTVfcHJpdmF0ZQ0KPiA+ID4gPiAqZGV2X3ByaXYpDQo+ID4gPiA+ICB7DQo+ID4gPiA+IC0g
ICAgICAgaWNsX2RidWZfc2xpY2VzX3VwZGF0ZShkZXZfcHJpdiwgMCk7DQo+ID4gPiA+ICsgICAg
ICAgZ2VuOV9kYnVmX3NsaWNlc191cGRhdGUoZGV2X3ByaXYsIDApOw0KPiA+ID4gPiAgfQ0KPiA+
ID4gPiANCj4gPiA+ID4gIHN0YXRpYyB2b2lkIGljbF9tYnVzX2luaXQoc3RydWN0IGRybV9pOTE1
X3ByaXZhdGUgKmRldl9wcml2KQ0KPiA+ID4gPiBAQCAtNTA2Nyw3ICs1MDYxLDcgQEAgc3RhdGlj
IHZvaWQgaWNsX2Rpc3BsYXlfY29yZV9pbml0KHN0cnVjdA0KPiA+ID4gPiBkcm1faTkxNV9wcml2
YXRlICpkZXZfcHJpdiwNCj4gPiA+ID4gICAgICAgICAgaW50ZWxfY2RjbGtfaW5pdF9odyhkZXZf
cHJpdik7DQo+ID4gPiA+IA0KPiA+ID4gPiAgICAgICAgICAvKiA1LiBFbmFibGUgREJVRi4gKi8N
Cj4gPiA+ID4gLSAgICAgICBpY2xfZGJ1Zl9lbmFibGUoZGV2X3ByaXYpOw0KPiA+ID4gPiArICAg
ICAgIGdlbjlfZGJ1Zl9lbmFibGUoZGV2X3ByaXYpOw0KPiA+ID4gPiANCj4gPiA+ID4gICAgICAg
ICAgLyogNi4gU2V0dXAgTUJVUy4gKi8NCj4gPiA+ID4gICAgICAgICAgaWNsX21idXNfaW5pdChk
ZXZfcHJpdik7DQo+ID4gPiA+IEBAIC01MDkwLDcgKzUwODQsNyBAQCBzdGF0aWMgdm9pZA0KPiA+
ID4gPiBpY2xfZGlzcGxheV9jb3JlX3VuaW5pdChzdHJ1Y3QNCj4gPiA+ID4gZHJtX2k5MTVfcHJp
dmF0ZSAqZGV2X3ByaXYpDQo+ID4gPiA+ICAgICAgICAgIC8qIDEuIERpc2FibGUgYWxsIGRpc3Bs
YXkgZW5naW5lIGZ1bmN0aW9ucyAtPiBhcmVhZHkNCj4gPiA+ID4gZG9uZQ0KPiA+ID4gPiAqLw0K
PiA+ID4gPiANCj4gPiA+ID4gICAgICAgICAgLyogMi4gRGlzYWJsZSBEQlVGICovDQo+ID4gPiA+
IC0gICAgICAgaWNsX2RidWZfZGlzYWJsZShkZXZfcHJpdik7DQo+ID4gPiA+ICsgICAgICAgZ2Vu
OV9kYnVmX2Rpc2FibGUoZGV2X3ByaXYpOw0KPiA+ID4gPiANCj4gPiA+ID4gICAgICAgICAgLyog
My4gRGlzYWJsZSBDRCBjbG9jayAqLw0KPiA+ID4gPiAgICAgICAgICBpbnRlbF9jZGNsa191bmlu
aXRfaHcoZGV2X3ByaXYpOw0KPiA+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmgNCj4gPiA+ID4gYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93ZXIuaA0KPiA+ID4gPiBpbmRleCA2MDFl
MDAwZmZkMGQuLjFhMjc1NjExMjQxZSAxMDA2NDQNCj4gPiA+ID4gLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmgNCj4gPiA+ID4gKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmgNCj4gPiA+ID4g
QEAgLTMxMiwxMyArMzEyLDEzIEBAIGVudW0gZGJ1Zl9zbGljZSB7DQo+ID4gPiA+ICAgICAgICAg
IERCVUZfUzIsDQo+ID4gPiA+ICB9Ow0KPiA+ID4gPiANCj4gPiA+ID4gK3ZvaWQgZ2VuOV9kYnVm
X3NsaWNlc191cGRhdGUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUNCj4gPiA+ID4gKmRldl9wcml2
LA0KPiA+ID4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgIHU4IHJlcV9zbGljZXMpOw0K
PiA+ID4gPiArDQo+ID4gPiA+ICAjZGVmaW5lIHdpdGhfaW50ZWxfZGlzcGxheV9wb3dlcihpOTE1
LCBkb21haW4sIHdmKSBcDQo+ID4gPiA+ICAgICAgICAgIGZvciAoKHdmKSA9IGludGVsX2Rpc3Bs
YXlfcG93ZXJfZ2V0KChpOTE1KSwgKGRvbWFpbikpOw0KPiA+ID4gPiAod2YpOyBcDQo+ID4gPiA+
ICAgICAgICAgICAgICAgaW50ZWxfZGlzcGxheV9wb3dlcl9wdXRfYXN5bmMoKGk5MTUpLCAoZG9t
YWluKSwNCj4gPiA+ID4gKHdmKSksICh3ZikgPSAwKQ0KPiA+ID4gPiANCj4gPiA+ID4gLXZvaWQg
aWNsX2RidWZfc2xpY2VzX3VwZGF0ZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYs
DQo+ID4gPiA+IC0gICAgICAgICAgICAgICAgICAgICAgICAgICB1OCByZXFfc2xpY2VzKTsNCj4g
PiA+ID4gLQ0KPiA+ID4gPiAgdm9pZCBjaHZfcGh5X3Bvd2VyZ2F0ZV9sYW5lcyhzdHJ1Y3QgaW50
ZWxfZW5jb2RlciAqZW5jb2RlciwNCj4gPiA+ID4gICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgYm9vbCBvdmVycmlkZSwgdW5zaWduZWQgaW50DQo+ID4gPiA+IG1hc2spOw0KPiA+ID4gPiAg
Ym9vbCBjaHZfcGh5X3Bvd2VyZ2F0ZV9jaChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3By
aXYsDQo+ID4gPiA+IGVudW0NCj4gPiA+ID4gZHBpb19waHkgcGh5LA0KPiA+ID4gPiAtLQ0KPiA+
ID4gPiAyLjI0LjENCj4gPiA+ID4gDQo+ID4gPiANCj4gPiA+IA0KPiANCj4gDQpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
