Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 841331624C9
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Feb 2020 11:43:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 28F8589829;
	Tue, 18 Feb 2020 10:43:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 11CF389829
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Feb 2020 10:43:08 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Feb 2020 02:43:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,456,1574150400"; d="scan'208";a="239319336"
Received: from irsmsx152.ger.corp.intel.com ([163.33.192.66])
 by orsmga006.jf.intel.com with ESMTP; 18 Feb 2020 02:43:06 -0800
Received: from irsmsx601.ger.corp.intel.com (163.33.146.7) by
 IRSMSX152.ger.corp.intel.com (163.33.192.66) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 18 Feb 2020 10:43:05 +0000
Received: from irsmsx604.ger.corp.intel.com (163.33.146.137) by
 irsmsx601.ger.corp.intel.com (163.33.146.7) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 18 Feb 2020 10:43:05 +0000
Received: from irsmsx604.ger.corp.intel.com ([163.33.146.137]) by
 IRSMSX604.ger.corp.intel.com ([163.33.146.137]) with mapi id 15.01.1713.004;
 Tue, 18 Feb 2020 10:43:05 +0000
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Thread-Topic: [PATCH 1/6] drm/i915: Introduce proper dbuf state
Thread-Index: AQHV4p4nc2MvEpA/g02zHFcCh9GYS6gfF22AgABlD4CAAU3JgA==
Date: Tue, 18 Feb 2020 10:43:05 +0000
Message-ID: <2bfeca3a68c55ece09148ce758d1854c7cf3436f.camel@intel.com>
References: <20200213184800.14147-1-ville.syrjala@linux.intel.com>
 <20200213184800.14147-2-ville.syrjala@linux.intel.com>
 <eb8d4416a1f73761899953e3ff62776c7fb18dc7.camel@intel.com>
 <20200217144513.GN13686@intel.com>
In-Reply-To: <20200217144513.GN13686@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.237.72.89]
Content-ID: <824FCD8FB3DCB640880A84E832DB44F6@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/6] drm/i915: Introduce proper dbuf state
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

T24gTW9uLCAyMDIwLTAyLTE3IGF0IDE2OjQ1ICswMjAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
DQo+IE9uIE1vbiwgRmViIDE3LCAyMDIwIGF0IDA4OjQ2OjQwQU0gKzAwMDAsIExpc292c2tpeSwg
U3RhbmlzbGF2IHdyb3RlOg0KPiA+IE9uIFRodSwgMjAyMC0wMi0xMyBhdCAyMDo0NyArMDIwMCwg
VmlsbGUgU3lyamFsYSB3cm90ZToNCj4gPiA+IEZyb206IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUu
c3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+ID4gPiANCj4gPiA+IEFkZCBhIGdsb2JhbCBzdGF0
ZSB0byB0cmFjayB0aGUgZGJ1ZiBzbGljZXMuIEdldHMgcmlkIG9mIGFsbCB0aGUNCj4gPiA+IG5h
c3R5DQo+ID4gPiBjb3VwbGluZyBiZXR3ZWVuIHN0YXRlLT5tb2Rlc2V0IGFuZCBkYnVmIHJlY29t
cHVsYXRpb24uIEFsc28gd2UNCj4gPiA+IGNhbg0KPiA+ID4gbm93DQo+ID4gPiB0b3RhbGx5IG51
a2Ugc3RhdGUtPmFjdGl2ZV9waXBlX2NoYW5nZXMuDQo+ID4gPiANCj4gPiA+IGRldl9wcml2LT53
bS5kaXN0cnVzdF9iaW9zX3dtIHN0aWxsIHJlbWFpbnMsIGJ1dCBzaG91bGQgcHJvYmFibHkNCj4g
PiA+IGFsc28NCj4gPiA+IGdldCBudWtlZCBmcm9tIG9yYml0IGxhdGVyLiBKdXN0IGRpZG4ndCBz
cGVuZCBhbnkgc2lnbmlmaWNhbnQNCj4gPiA+IHRpbWUNCj4gPiA+IHBvbmRlcmluZyBob3cgdG8g
Z28gYWJvdXQuIFRoZSBvYnZpb3VzIHRoaW5nIHdvdWxkIGJlIHRvIGp1c3QNCj4gPiA+IHJlY29t
cHV0ZQ0KPiA+ID4gdGhlIHRoaW5nIGV2ZXJ5IHRpbWUuDQo+ID4gPiANCj4gPiA+IENjOiBTdGFu
aXNsYXYgTGlzb3Zza2l5IDxzdGFuaXNsYXYubGlzb3Zza2l5QGludGVsLmNvbT4NCj4gPiA+IFNp
Z25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5j
b20+DQo+ID4gPiAtLS0NCj4gPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Rpc3BsYXkuYyAgfCAgNjkgKysrKy0tLQ0KPiA+ID4gIC4uLi9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2Rpc3BsYXlfcG93ZXIuYyAgICB8ICAgNCArLQ0KPiA+ID4gIC4uLi9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaCAgICB8ICAxMyAtLQ0KPiA+ID4gIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfZHJ2LmggICAgICAgICAgICAgICB8ICAxMSArLQ0KPiA+ID4gIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmMgICAgICAgICAgICAgICB8IDE4NQ0KPiA+ID4gKysr
KysrKysrKysrLS0NCj4gPiA+IC0tLS0NCj4gPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRl
bF9wbS5oICAgICAgICAgICAgICAgfCAgMjIgKysrDQo+ID4gPiAgNiBmaWxlcyBjaGFuZ2VkLCAy
MDUgaW5zZXJ0aW9ucygrKSwgOTkgZGVsZXRpb25zKC0pDQo+ID4gPiANCj4gPiA+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0KPiA+ID4g
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0KPiA+ID4gaW5k
ZXggZTA5ZDNjOTNjNTJiLi5lMzMxYWI5MDAzMzYgMTAwNjQ0DQo+ID4gPiAtLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0KPiA+ID4gKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4gPiA+IEBAIC03NTU4LDYg
Kzc1NTgsOCBAQCBzdGF0aWMgdm9pZA0KPiA+ID4gaW50ZWxfY3J0Y19kaXNhYmxlX25vYXRvbWlj
KHN0cnVjdA0KPiA+ID4gaW50ZWxfY3J0YyAqY3J0YywNCj4gPiA+ICAJCXRvX2ludGVsX2J3X3N0
YXRlKGRldl9wcml2LT5id19vYmouc3RhdGUpOw0KPiA+ID4gIAlzdHJ1Y3QgaW50ZWxfY2RjbGtf
c3RhdGUgKmNkY2xrX3N0YXRlID0NCj4gPiA+ICAJCXRvX2ludGVsX2NkY2xrX3N0YXRlKGRldl9w
cml2LT5jZGNsay5vYmouc3RhdGUpOw0KPiA+ID4gKwlzdHJ1Y3QgaW50ZWxfZGJ1Zl9zdGF0ZSAq
ZGJ1Zl9zdGF0ZSA9DQo+ID4gPiArCQl0b19pbnRlbF9kYnVmX3N0YXRlKGRldl9wcml2LT5kYnVm
Lm9iai5zdGF0ZSk7DQo+ID4gPiAgCXN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRl
ID0NCj4gPiA+ICAJCXRvX2ludGVsX2NydGNfc3RhdGUoY3J0Yy0+YmFzZS5zdGF0ZSk7DQo+ID4g
PiAgCWVudW0gaW50ZWxfZGlzcGxheV9wb3dlcl9kb21haW4gZG9tYWluOw0KPiA+ID4gQEAgLTc2
MzAsNiArNzYzMiw4IEBAIHN0YXRpYyB2b2lkDQo+ID4gPiBpbnRlbF9jcnRjX2Rpc2FibGVfbm9h
dG9taWMoc3RydWN0DQo+ID4gPiBpbnRlbF9jcnRjICpjcnRjLA0KPiA+ID4gIAljZGNsa19zdGF0
ZS0+bWluX3ZvbHRhZ2VfbGV2ZWxbcGlwZV0gPSAwOw0KPiA+ID4gIAljZGNsa19zdGF0ZS0+YWN0
aXZlX3BpcGVzICY9IH5CSVQocGlwZSk7DQo+ID4gPiAgDQo+ID4gPiArCWRidWZfc3RhdGUtPmFj
dGl2ZV9waXBlcyAmPSB+QklUKHBpcGUpOw0KPiA+ID4gKw0KPiA+IA0KPiA+IE1heSBiZSBJJ20g
d3Jvbmcoc28gYmVpbmcgbm90IG9mZmVuc2l2ZSBoZXJlIDopICksIGJ1dCBmZWVscyBraW5kDQo+
ID4gb2YNCj4gPiByZWR1bmRhbnQgdG8gaGF2ZSBhY3RpdmVfcGlwZXMgaW4gY2RjbGtfc3RhdGUg
YW5kIGF0IHRoZSBzYW1lIHRpbWUNCj4gPiBpbg0KPiA+IGRidWZfc3RhdGUuIFdoeSBjYW4ndCBp
dCBiZSBzdGlsbCANCj4gPiBpbiBzb21lIG1vcmUgZ2VuZXJhbCBzdGF0ZSwgd2hpY2ggaXMgaW5o
ZXJpdGVkL3VzZWQvYWdncmVnYXRlZCBieQ0KPiA+IHRob3NlDQo+ID4gZGJ1ZiBhbmQgY2RjbGsg
c3RhdGVzPyBPdGhlcndpc2UgeW91IHdpbGwgaGF2ZSB0byBkbyB0aGlzIGR1cGxpY2F0ZQ0KPiA+
IGNvZGUgaW5pdGlhbGl6YXRpb25zIHdoaWNoIEkgc2VlIGhlcmUsIGZvciBleGFtcGxlIGlmIHRo
ZXJlIHdvdWxkDQo+ID4gYmUNCj4gPiBldmVuIG1vcmUgc3RhdGVzIHlvdSBoYXZlIHRoZW4gdGhy
ZWUgb3IgbW9yZSBzaW1pbGFyDQo+ID4gaW5pdGlhbGl6YXRpb25zDQo+ID4gaGVyZSwNCj4gPiBk
b2luZyB0aGUgc2FtZSB0aGluZy4gVGhpcyBwcmV0dHkgbXVjaCBpbmNyZWFzZXMgcHJvYmFiaWxp
dHkgdGhhdA0KPiA+IHNvbWV3aGVyZSBpbiB0aGUgY29kZSwgeW91IHdpbGwgZXZlbnR1YWxseSBm
b3JnZXQgdG8gZG8gYWxsDQo+ID4gaW5pdGlhbGl6YXRpb25zKHdlbGwgSSBndWVzcyB5b3UgdW5k
ZXJzdGFuZCkuDQo+ID4gT3IgaWYgeW91IHdpbGwgaGF2ZSB0byB1cGRhdGUgdGhlIGJlaGF2aW9y
LCBiYXNlZCBvbiBhY3RpdmVfcGlwZXMNCj4gPiBoZXJlDQo+ID4gc29tZWhvdywgeW91IHdpbGwg
YWxzbyBoYXZlIHRvIGNoYW5nZSB0aGUgZHVwbGljYXRlIGNvZGUgYWxsIG92ZXINCj4gPiB0aGUN
Cj4gPiBwbGFjZS4NCj4gDQo+IFRoZSBwcm9ibGVtIHdpdGggcHV0dGluZyBzdWNoIHRoaW5ncyBp
biBzb21lIGNlbnRyYWwgcGxhY2UgaXMgdGhhdA0KPiB0aGVuDQo+IHdlIGdldCBldmVyeXRoaW5n
IGNvdXBsZWQgdG9nZXRoZXIgd2l0aCBzYWlkIHN0YXRlLiBZb3UgZ2V0IGFubm95aW5nDQo+IG9y
ZGVyaW5nIHJlcXVpcmVtZW50cyBvbiB3aGljaCBvcmRlciB5b3UgY29tcHV0ZSB0aG9zZSB0aGlu
Z3MgZXRjLg0KPiBJTU8gYmV0dGVyIHRvIGp1c3QgZW5jYXBzdWxhdGUgZWFjaCB0aGluZyBhcyBt
dWNoIGFzIHBvc3NpYmxlLiBUaGlzDQo+IHdheQ0KPiB5b3UgZG9uJ3QgaGF2ZSB0byB0aGluayBh
dCBhbGwgd2hhdCB0aG9zZSBvdGhlciBzdGF0ZXMgYXJlIGRvaW5nIHdpdGgNCj4gdGhlaXIgbGl2
ZXMuDQo+IA0KPiBUaGUgcmVhZG91dCBpcyBhIGJpdCB1Z2x5IHllcywgYnV0IHdlIGNvdWxkIHBy
b3ZpZGUgYSBzbWFsbCBoZWxwZXINCj4gZm9yIHRoYXQuIEl0IHdvdWxkIHN0aWxsIHByb2JhYmx5
IGhhdmUgc29tZXdoYXQgYW5ub3lpbmcgb3JkZXJpbmcNCj4gY29uc3RyYWludHMgdGhvdWdoIHNp
bmNlIHdlIHBlcmhhcHMgZG9uJ3Qgd2FudCB0byBkbyBhY3R1YWwgcmVhZG91dA0KPiBvZiBhY3Rp
dmVfcGlwZXMgbXVsdGlwbGUgdGltZXMuDQoNCkkgYWdyZWUsIHJlZ2FyZGluZyBjZW50cmFsIHBs
YWNlIC0gY291cGxpbmcgZXZlcnl0aGluZyB0b2dldGhlciB3b3VsZA0KYmUgYSBzdGVwIGJhY2sg
dG8gd2hhdCB3ZSBoYWQgYmVmb3JlLiBBbm90aGVyIG9wdGlvbiB3aGljaCB3ZSBjb3VsZCB1c2UN
CmlzIHRvIG5vdCBoYXZlIGFueSAiY2VudHJhbCIgIHN0YXRlIGF0IGFsbCh3aGF0IHlvdSBhcmUg
YWxyZWFkeQ0KYWN0dWFsbHkgZG9pbmcpIGJ1dCBtYW55IGRlZGljYXRlZCAib3J0aG9nb25hbCIg
c3RhdGVzIHdoaWNoIGNvbnRhaW4NCm9ubHkgdGhlIHN0dWZmIHdoaWNoIGlzIHJlcXVpcmVkIGFu
ZCByZWxhdGVkIHRvIHRoZWlyIHNlbWFudGljcy4NCg0KTGlrZSB5b3UgaGF2ZSBidyBzdGF0ZSBh
bmQgYWxsIHRoZSBzdHVmZiBfb25seV8gcmVsYXRlZCB0byB0aGF0LA0KZGJ1ZiBzdGF0ZSwgc2Fn
diBzdGF0ZSwgbW9kZXNldCBzdGF0ZSwgd2hpY2ggd291bGQgaGF2ZSBhY3RpdmVfcGlwZXMgDQph
bmQgc28gb24uIEVhY2ggb2YgdGhvc2UgYXJlIGdsb2JhbCBzdGF0ZSBvYmplY3Qgd2hpY2ggeW91
IHN3YXAgDQpvbiBjb21taXQgc3RhdGUuIEFuZCBubyBjZW50cmFsIHN0YXRlLiBPZiBjb3Vyc2Ug
eW91IGFyZSBnb2luZyB0byBoYXZlDQphIGRlcGVuZGVuY2llcyAtIGJ1dCB3ZSBhbnl3YXkgaGF2
ZSB0aGVtLiBBdCBsZWFzdCB3aGVuIHlvdSBoYXZlIHRob3NlDQphcyBleHBsaWNpdCBvYmplY3Rz
LCB0aGUgZGVwZW5kZW5jaWVzIGNhbiBiZSB0aGVuIGV4cGxpY2l0bHkNCmlkZW50aWZpZWQuIA0K
Rm9yIGluc3RhbmNlIGRidWZfc3RhdGUgYW5kIHNhZ3Zfc3RhdGUgd291bGQgZGVwZW5kIG9uIG1v
ZGVzZXRfc3RhdGUNCm1pZ2h0IHJlcXVpcmUgc29tZSBpbmZvIGZyb20gbW9kZXNldF9zdGF0ZSBo
b3dldmVyIGlmIHRoZXJlIGhhc24ndCBiZWVuDQphbnkgY2hhbmdlcyB3ZSBkb24ndCBoYXZlIHRv
IHVwZGF0ZSBtb2Rlc2V0X3N0YXRlLCBidXQgb25seSBkYnVmX3N0YXRlIA0KaWYgdGhlcmUgd2Vy
ZSBzb21lIHBsYW5lIGNoYW5nZXMuIHNhZ3Ygc3RhdGUgdGhlbiB3b3VsZCBkZXBlbmQgb24gYm90
aA0KZGJ1ZiBzdGF0ZSBjaGFuZ2VzKG9idmlvdXNseSkgYW5kIGFsc28gbW9kZXNldC4gSW4gcHJh
Y3RpY2UgaXQgbW9zdGx5DQp3aWxsIG1lYW4gdGhhdCB3ZSBqdXN0IHJlYWQgbmVjZXNzYXJ5IGlu
Zm8gZnJvbSB0aG9zZSwgaG93ZXZlciBpZiB0aG9zZQ0Kd2hpY2ggd2UgZGVwZW5kIG9uIGhhZCBj
aGFuZ2VkIHRoZW4gd2UgY2VydGFpbmx5IG5lZWQgdG8gdXBkYXRlDQpkZXBlbmRlbnQgb2JqZWN0
cyBhcyB3ZWxsLiANCg0KSS5lIHdvdWxkIGJlIGNhbGwgdG8gaGF2ZSBzb21lIGV4cGxpY2l0IGhp
ZWFyY2h5IGxpa2U6DQoNCgkgICAobW9kZXNldCBzdGF0ZSBvYmplY3QgY2hhbmdlZCkNCiAgICAg
ICAgICAgICAgIHwgICAgICAgICAgICAgICAgICAgIHwNCiAgICAgICAgICAgICAgIHwgICAgICAg
ICAgICAgICAgICAgIHwNCihkYnVmL3dtIHN0YXRlIHN0YXRlIGNoYW5nZWQpIChidyBzdGF0ZSBj
aGFuZ2VkKQ0KICAgICAgICAgICAgICAgfCAgICAgICAgICAgICAgICAgICB8DQogICAgICAgICAg
ICAgICB8ICAgICAgICAgICAgICAgICAgIHwNCihzYWd2IHN0YXRlIGNoYW5nZWQpICAgICAgICAg
KHNhZ3Ygc3RhdGUgY2hhbmdlZCkNCg0KU28gd2Ugd291bGQgaGF2ZSB3ZWxsIGlkZW50aWZpZWQg
cmVsYXNoaW9uc2hpcHMgcmVnYXJkaW5nDQp3aGljaCBzdGF0ZSBuZWVkcyB3aGljaCBpbmZvcm1h
dGlvbiBmcm9tIHNvbWUgc3RhdGVzIGFuZA0KYWxzbyBjaGFuZ2VzIGluIHdoaWNoIHN0YXRlcyBy
ZXF1aXJlIHJlY2FsY3VsYXRpb24gaW4gb3RoZXINCnN0YXRlcy4NCg0KV2UgYW55d2F5IGNhbid0
IGdldCByaWQgb2YgdGhvc2UgZGVwZW5kZW5jaWVzLCB0aGV5IGV4aXN0IGV2ZW4NCm5vdyAtIGhv
d2V2ZXIgdGhlIHByb2JsZW0gaXMgdGhhdCBjdXJyZW50bHkgdGhleSBhcmUgaW1wbGljaXQNCmFu
ZCBub3Qgc29tZXRpbWVzIGNsZWFybHkgdmlzaWJsZSwgd2hpY2ggYnJpbmdzIHByb2JsZW1zLiAN
Cg0KU3Rhbg0KDQoNCj4gDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZngK
