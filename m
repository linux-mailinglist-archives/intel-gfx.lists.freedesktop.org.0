Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 500298F3F2
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Aug 2019 20:51:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A68326EA44;
	Thu, 15 Aug 2019 18:51:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 569866EA44
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Aug 2019 18:51:03 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Aug 2019 11:39:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,389,1559545200"; d="scan'208";a="376468504"
Received: from orsmsx106.amr.corp.intel.com ([10.22.225.133])
 by fmsmga005.fm.intel.com with ESMTP; 15 Aug 2019 11:39:55 -0700
Received: from orsmsx110.amr.corp.intel.com ([169.254.10.211]) by
 ORSMSX106.amr.corp.intel.com ([169.254.1.52]) with mapi id 14.03.0439.000;
 Thu, 15 Aug 2019 11:39:55 -0700
From: "Tolakanahalli Pradeep, Madhumitha"
 <madhumitha.tolakanahalli.pradeep@intel.com>
To: "Navare, Manasi D" <manasi.d.navare@intel.com>
Thread-Topic: [PATCH] drm/i915/tgl: Enabling DSC on Pipe A for TGL
Thread-Index: AQHVUvsjNIoNiuyLbEqdGldW1RWWp6b8/LKAgAAEb4A=
Date: Thu, 15 Aug 2019 18:39:54 +0000
Message-ID: <2463bf0b9cdd9d5180852ececdd8d413c0e5caf2.camel@intel.com>
References: <20190814235117.11304-1-madhumitha.tolakanahalli.pradeep@intel.com>
 <20190815182420.GA22762@intel.com>
In-Reply-To: <20190815182420.GA22762@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.7.197.51]
Content-ID: <A4D92FE245DF2D4A8204E7356703A6D5@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/tgl: Enabling DSC on Pipe A for TGL
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.23
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

T24gVGh1LCAyMDE5LTA4LTE1IGF0IDExOjI0IC0wNzAwLCBNYW5hc2kgTmF2YXJlIHdyb3RlOg0K
PiBPbiBXZWQsIEF1ZyAxNCwgMjAxOSBhdCAwNDo1MToxN1BNIC0wNzAwLCBNYWRodW1pdGhhIFRv
bGFrYW5haGFsbGkNCj4gUHJhZGVlcCB3cm90ZToNCj4gPiBSZW1vdmluZyByZXN0cmljdGlvbiBv
biBQaXBlIEEgYXMgVGlnZXJMYWtlIG9ud2FyZHMsIGFsbCB0aGUgcGlwZXMNCj4gPiBzdXBwb3J0
IERTQy4NCj4gDQo+IE1heSBiZSBlbGFib3JhdGUgdGhpcyBjb21taXQgbWVzc2FnZSBhIGxpdHRs
ZSBiaXQgc29tZXRoaW5nIGxpa2U6DQo+ICJPbiBwcmV2aW91cyBwbGF0Zm9ybXMsIERTQyB3YXMg
bm90IHN1cHBvcnRlZCBvbiBQaXBlIEEgd2hpbGUNCj4gc3RhcnRpbmcgVEdMLCBpdHMgaXMgc3Vw
cG9ydGVkDQo+IG9uIGFsbCBwaXBlcy4gU28gcmVtb3ZlIHRoZSBEU0MgYW5kIEZFQyByZXN0cmlj
dGlvbiBvbiBQaXBlIEEgZm9yIFRHTA0KPiBvbndhcmRzLg0KPiANCg0KQWxyaWdodCwgd2lsbCB1
cGRhdGUgdGhhdCBmb3IgcmV2Mi4NCg0KPiA+IA0KPiA+IENjOiBNYW5hc2kgTmF2YXJlIDxtYW5h
c2kuZC5uYXZhcmVAaW50ZWwuY29tPg0KPiA+IFNpZ25lZC1vZmYtYnk6IE1hZGh1bWl0aGEgVG9s
YWthbmFoYWxsaSBQcmFkZWVwIDwNCj4gPiBtYWRodW1pdGhhLnRvbGFrYW5haGFsbGkucHJhZGVl
cEBpbnRlbC5jb20+DQo+ID4gLS0tDQo+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZHAuYyB8IDE2ICsrKysrKysrKysrKy0tLS0NCj4gPiAgMSBmaWxlIGNoYW5nZWQsIDEy
IGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pDQo+ID4gDQo+ID4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYw0KPiA+IGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jDQo+ID4gaW5kZXggNDg4NGM4N2M4ZWQ3Li5hNWI1
MGY5M2ZhYzUgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kcC5jDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
cC5jDQo+ID4gQEAgLTE3MzksOCArMTczOSwxMiBAQCBzdGF0aWMgYm9vbA0KPiA+IGludGVsX2Rw
X3NvdXJjZV9zdXBwb3J0c19mZWMoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwNCj4gPiAgew0K
PiA+ICAJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gZHBfdG9faTkxNShpbnRl
bF9kcCk7DQo+ID4gIA0KPiA+IC0JcmV0dXJuIElOVEVMX0dFTihkZXZfcHJpdikgPj0gMTEgJiYN
Cj4gPiAtCQlwaXBlX2NvbmZpZy0+Y3B1X3RyYW5zY29kZXIgIT0gVFJBTlNDT0RFUl9BOw0KPiA+
ICsJLyogT24gVEdMLCBEU0MgaXMgc3VwcG9ydGVkIG9uIGFsbCBQaXBlcyAqLw0KPiANCj4gICAg
ICAgICAgICAgICAgICAgIF5eXl4gRkVDIHN1cHBvcnRlZCBvbiBhbGwgcGlwZXMNCg0KT29wcywg
d2lsbCBjaGFuZ2UgdGhpcy4NCg0KPiA+ICsJaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0gMTIp
DQo+ID4gKwkJcmV0dXJuIHRydWU7DQo+ID4gKwllbHNlDQo+ID4gKwkJcmV0dXJuIElOVEVMX0dF
TihkZXZfcHJpdikgPT0gMTEgJiYNCj4gPiArCQkJcGlwZV9jb25maWctPmNwdV90cmFuc2NvZGVy
ICE9IFRSQU5TQ09ERVJfQTsNCj4gPiAgfQ0KPiA+ICANCj4gPiAgc3RhdGljIGJvb2wgaW50ZWxf
ZHBfc3VwcG9ydHNfZmVjKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsDQo+ID4gQEAgLTE3NTUs
OCArMTc1OSwxMiBAQCBzdGF0aWMgYm9vbA0KPiA+IGludGVsX2RwX3NvdXJjZV9zdXBwb3J0c19k
c2Moc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwNCj4gPiAgew0KPiA+ICAJc3RydWN0IGRybV9p
OTE1X3ByaXZhdGUgKmRldl9wcml2ID0gZHBfdG9faTkxNShpbnRlbF9kcCk7DQo+ID4gIA0KPiA+
IC0JcmV0dXJuIElOVEVMX0dFTihkZXZfcHJpdikgPj0gMTAgJiYNCj4gPiAtCQlwaXBlX2NvbmZp
Zy0+Y3B1X3RyYW5zY29kZXIgIT0gVFJBTlNDT0RFUl9BOw0KPiA+ICsJLyogT24gVEdMLCBEU0Mg
aXMgc3VwcG9ydGVkIG9uIGFsbCBQaXBlcyAqLw0KPiA+ICsJaWYgKElOVEVMX0dFTihkZXZfcHJp
dikgPj0gMTIpDQo+ID4gKwkJcmV0dXJuIHRydWU7DQo+ID4gKwllbHNlDQo+ID4gKwkJcmV0dXJu
IChJTlRFTF9HRU4oZGV2X3ByaXYpID09IDEwIHx8DQo+ID4gSU5URUxfR0VOKGRldl9wcml2KSA9
PSAxMSkgJiYNCj4gDQo+IFdoeSBjYW50IHlvdSBqdXN0IHVzZSBJTlRFTF9HRU4oZGV2X3ByaXYp
ID49MTAgPw0KDQpJTlRFTF9HRU4oZGV2X3ByaXYpID49IDEwIHdhcyB0aGUgZXhpc3RpbmcgY29u
ZGl0aW9uLiBXaXRoIHRoZSBuZXcNCmNvbmRpdGlvbiBhZGRlZCwgdGhlcmUgd291bGQgYmUgYW4g
b3ZlcmxhcHBpbmcgc2V0DQppZSBJTlRFTF9HRU4oZGV2X3ByaXYpID49IDEwIHdvdWxkIHN0aWxs
IGJlIFRSVUUgZm9yIEdFTiA+PSAxMi4gVGhvdWdoDQp0aGlzIHdvdWxkbid0IGFmZmVjdCB0aGUg
bG9naWMgb2YgdGhlIGNvZGUsIHRob3VnaHQgaXQgd291bGQgbWFrZSBtb3JlDQpzZW5zZSB0byBz
cGVyYXRlIGl0IG91dCB0aGlzIHdheS4gDQoNCj4gDQo+IE1hbmFzaQ0KPiANCj4gPiArCQkJcGlw
ZV9jb25maWctPmNwdV90cmFuc2NvZGVyICE9IFRSQU5TQ09ERVJfQTsNCj4gPiAgfQ0KPiA+ICAN
Cj4gPiAgc3RhdGljIGJvb2wgaW50ZWxfZHBfc3VwcG9ydHNfZHNjKHN0cnVjdCBpbnRlbF9kcCAq
aW50ZWxfZHAsDQo+ID4gLS0gDQo+ID4gMi4xNy4xDQo+ID4gDQpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
