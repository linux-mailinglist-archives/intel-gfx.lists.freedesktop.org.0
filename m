Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 00D9D1784F6
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Mar 2020 22:34:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 460DC6E96F;
	Tue,  3 Mar 2020 21:34:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A22706E959
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Mar 2020 21:34:20 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Mar 2020 13:34:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,511,1574150400"; d="scan'208";a="319602413"
Received: from fmsmsx106.amr.corp.intel.com ([10.18.124.204])
 by orsmga001.jf.intel.com with ESMTP; 03 Mar 2020 13:34:19 -0800
Received: from fmsmsx155.amr.corp.intel.com (10.18.116.71) by
 FMSMSX106.amr.corp.intel.com (10.18.124.204) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 3 Mar 2020 13:34:19 -0800
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.129]) by
 FMSMSX155.amr.corp.intel.com ([169.254.5.43]) with mapi id 14.03.0439.000;
 Tue, 3 Mar 2020 13:34:19 -0800
From: "Souza, Jose" <jose.souza@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>
Thread-Topic: [PATCH 2/2] drm/i915/tgl: Move and restrict Wa_1408615072
Thread-Index: AQHV8OgxhTEb9YAb+UaSNlH8y25CC6g31wGAgAAUigA=
Date: Tue, 3 Mar 2020 21:34:18 +0000
Message-ID: <d5d0609ac6a81f940d91bf93a11506b0af0ce631.camel@intel.com>
References: <20200302231421.224322-1-jose.souza@intel.com>
 <20200302231421.224322-2-jose.souza@intel.com>
 <20200303202143.GP174531@mdroper-desk1.amr.corp.intel.com>
In-Reply-To: <20200303202143.GP174531@mdroper-desk1.amr.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.14.241]
Content-ID: <D8F3CAE73776494BA4B0162AF024D1B6@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/tgl: Move and restrict
 Wa_1408615072
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

T24gVHVlLCAyMDIwLTAzLTAzIGF0IDEyOjIxIC0wODAwLCBNYXR0IFJvcGVyIHdyb3RlOg0KPiBP
biBNb24sIE1hciAwMiwgMjAyMCBhdCAwMzoxNDoyMVBNIC0wODAwLCBKb3PDqSBSb2JlcnRvIGRl
IFNvdXphDQo+IHdyb3RlOg0KPiA+IEZvbGxvd2luZyB0aGUgY2hhbmdlcyBpbiB0aGUgcHJldmlv
dXMgcGF0Y2gNCj4gPiAiZHJtL2k5MTUvZ2VuMTE6IE1vdmluZyBXQXMgdG8gcmNzX2VuZ2luZV93
YV9pbml0KCkiIGFsc28gbW92aW5nDQo+ID4gVEdMDQo+ID4gV2FfMTQwODYxNTA3MiB0byByY3Nf
ZW5naW5lX3dhX2luaXQoKSB0aGlzIHdheSBhZnRlciBhIGVuZ2luZQ0KPiA+IHJlc2V0IGl0IHdp
bGwgYmUgcmVhcHBsaWVkIGFsc28gcmVzdHJpY3RpbmcgaXQgdG8gQjAgYXMgaXQgaXMgZml4ZWQN
Cj4gPiBpbg0KPiA+IEIwIHN0ZXBwaW5nLg0KPiANCj4gSSB0aGluayB5b3UgbWVhbnQgdG8gc2F5
ICJyZXN0cmljdGluZyBpdCB0byAqQTAqIGFzIGl0IGlzIGZpeGVkIGluDQo+IEIwPyINCj4gDQo+
IEFzaWRlIGZyb20gdGhhdCwNCj4gDQo+IFJldmlld2VkLWJ5OiBNYXR0IFJvcGVyIDxtYXR0aGV3
LmQucm9wZXJAaW50ZWwuY29tPg0KDQpGaXhlZCBhbmQgcHVzaGVkIHRvIGRpbnEsIHRoYW5rcy4N
Cg0KPiANCj4gPiBCU3BlYzogNTI4OTANCj4gPiBDYzogTWF0dCBSb3BlciA8bWF0dGhldy5kLnJv
cGVyQGludGVsLmNvbT4NCj4gPiBTaWduZWQtb2ZmLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXph
IDxqb3NlLnNvdXphQGludGVsLmNvbT4NCj4gPiAtLS0NCj4gPiAgZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYyB8IDQgKysrKw0KPiA+ICBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9pbnRlbF9wbS5jICAgICAgICAgICAgIHwgNCAtLS0tDQo+ID4gIDIgZmlsZXMgY2hhbmdl
ZCwgNCBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQ0KPiA+IA0KPiA+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jDQo+ID4gYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jDQo+ID4gaW5kZXggOTBlMWM0
OGRkNmJlLi5jYjdkODVjNDJmMTMgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYw0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L2ludGVsX3dvcmthcm91bmRzLmMNCj4gPiBAQCAtMTM4MCw2ICsxMzgwLDEwIEBAIHJjc19l
bmdpbmVfd2FfaW5pdChzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzDQo+ID4gKmVuZ2luZSwgc3RydWN0
IGk5MTVfd2FfbGlzdCAqd2FsKQ0KPiA+ICAJCSAqIFdhXzE0MDEwMjI5MjA2OnRnbA0KPiA+ICAJ
CSAqLw0KPiA+ICAJCXdhX21hc2tlZF9lbih3YWwsIEdFTjlfUk9XX0NISUNLRU40LA0KPiA+IEdF
TjEyX0RJU0FCTEVfVERMX1BVU0gpOw0KPiA+ICsNCj4gPiArCQkvKiBXYV8xNDA4NjE1MDcyOnRn
bCAqLw0KPiA+ICsJCXdhX21hc2tlZF9lbih3YWwsIFVOU0xJQ0VfVU5JVF9MRVZFTF9DTEtHQVRF
MiwNCj4gPiArCQkJICAgICBWU1VOSVRfQ0xLR0FURV9ESVNfVEdMKTsNCj4gPiAgCX0NCj4gPiAg
DQo+ID4gIAlpZiAoSVNfVElHRVJMQUtFKGk5MTUpKSB7DQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmMNCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2lu
dGVsX3BtLmMNCj4gPiBpbmRleCBkM2RmMDA0NDU3ODcuLmU3ZjM2ZWJjMjgyZCAxMDA2NDQNCj4g
PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jDQo+ID4gKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYw0KPiA+IEBAIC02NzkyLDEwICs2NzkyLDYgQEAgc3Rh
dGljIHZvaWQgdGdsX2luaXRfY2xvY2tfZ2F0aW5nKHN0cnVjdA0KPiA+IGRybV9pOTE1X3ByaXZh
dGUgKmRldl9wcml2KQ0KPiA+ICAJdTMyIHZkX3BnX2VuYWJsZSA9IDA7DQo+ID4gIAl1bnNpZ25l
ZCBpbnQgaTsNCj4gPiAgDQo+ID4gLQkvKiBXYV8xNDA4NjE1MDcyOnRnbCAqLw0KPiA+IC0JaW50
ZWxfdW5jb3JlX3JtdygmZGV2X3ByaXYtPnVuY29yZSwNCj4gPiBVTlNMSUNFX1VOSVRfTEVWRUxf
Q0xLR0FURTIsDQo+ID4gLQkJCSAwLCBWU1VOSVRfQ0xLR0FURV9ESVNfVEdMKTsNCj4gPiAtDQo+
ID4gIAkvKiBUaGlzIGlzIG5vdCBhIFdBLiBFbmFibGUgVkQgSENQICYgTUZYX0VOQyBwb3dlcmdh
dGUgKi8NCj4gPiAgCWZvciAoaSA9IDA7IGkgPCBJOTE1X01BWF9WQ1M7IGkrKykgew0KPiA+ICAJ
CWlmIChIQVNfRU5HSU5FKGRldl9wcml2LCBfVkNTKGkpKSkNCj4gPiAtLSANCj4gPiAyLjI1LjEN
Cj4gPiANCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
