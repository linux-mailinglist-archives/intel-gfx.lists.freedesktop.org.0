Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 388671743A2
	for <lists+intel-gfx@lfdr.de>; Sat, 29 Feb 2020 01:04:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2EB666E03C;
	Sat, 29 Feb 2020 00:04:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DB77E6E03C
 for <intel-gfx@lists.freedesktop.org>; Sat, 29 Feb 2020 00:04:24 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Feb 2020 16:04:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,497,1574150400"; d="scan'208";a="257286068"
Received: from fmsmsx108.amr.corp.intel.com ([10.18.124.206])
 by orsmga002.jf.intel.com with ESMTP; 28 Feb 2020 16:04:23 -0800
Received: from FMSMSX110.amr.corp.intel.com (10.18.116.10) by
 FMSMSX108.amr.corp.intel.com (10.18.124.206) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 28 Feb 2020 16:04:18 -0800
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.129]) by
 FMSMSX110.amr.corp.intel.com ([169.254.14.133]) with mapi id 14.03.0439.000;
 Fri, 28 Feb 2020 16:04:18 -0800
From: "Souza, Jose" <jose.souza@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>
Thread-Topic: [Intel-gfx] [PATCH v3 09/11] drm/i915/tgl: Restrict
 Wa_1408615072 to A0 stepping
Thread-Index: AQHV7blbQuVoCVTblkOo88w6bvJvyagxpcaAgAAssoA=
Date: Sat, 29 Feb 2020 00:04:17 +0000
Message-ID: <d92a0232b0c7df363fc37cdfcccf48a39c5f4d0c.camel@intel.com>
References: <20200227220101.321671-1-jose.souza@intel.com>
 <20200227220101.321671-9-jose.souza@intel.com>
 <20200228212511.GD174531@mdroper-desk1.amr.corp.intel.com>
In-Reply-To: <20200228212511.GD174531@mdroper-desk1.amr.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.14.234]
Content-ID: <12D3E582552AE441BAB14234CA3EB55D@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v3 09/11] drm/i915/tgl: Restrict
 Wa_1408615072 to A0 stepping
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

T24gRnJpLCAyMDIwLTAyLTI4IGF0IDEzOjI1IC0wODAwLCBNYXR0IFJvcGVyIHdyb3RlOg0KPiBP
biBUaHUsIEZlYiAyNywgMjAyMCBhdCAwMjowMDo1OVBNIC0wODAwLCBKb3PDqSBSb2JlcnRvIGRl
IFNvdXphDQo+IHdyb3RlOg0KPiA+IEl0IGlzIGZpeGVkIGluIEIwIHN0ZXBwaW5nLg0KPiA+IA0K
PiA+IFNpZ25lZC1vZmYtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50
ZWwuY29tPg0KPiA+IC0tLQ0KPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jIHwg
NSArKystLQ0KPiA+ICAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9u
cygtKQ0KPiA+IA0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9w
bS5jDQo+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jDQo+ID4gaW5kZXggMjJh
YTIwNTc5M2U1Li5hMTAxZDgwNzJiNWIgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaW50ZWxfcG0uYw0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3Bt
LmMNCj4gPiBAQCAtNjgzOCw4ICs2ODM4LDkgQEAgc3RhdGljIHZvaWQgdGdsX2luaXRfY2xvY2tf
Z2F0aW5nKHN0cnVjdA0KPiA+IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQ0KPiA+ICAJdW5z
aWduZWQgaW50IGk7DQo+ID4gIA0KPiA+ICAJLyogV2FfMTQwODYxNTA3Mjp0Z2wgKi8NCj4gPiAt
CWludGVsX3VuY29yZV9ybXcoJmRldl9wcml2LT51bmNvcmUsDQo+ID4gVU5TTElDRV9VTklUX0xF
VkVMX0NMS0dBVEUyLA0KPiA+IC0JCQkgMCwgVlNVTklUX0NMS0dBVEVfRElTX1RHTCk7DQo+ID4g
KwlpZiAoSVNfVEdMX1JFVklEKGRldl9wcml2LCBUR0xfUkVWSURfQTAsIFRHTF9SRVZJRF9BMCkp
DQo+ID4gKwkJaW50ZWxfdW5jb3JlX3JtdygmZGV2X3ByaXYtPnVuY29yZSwNCj4gPiBVTlNMSUNF
X1VOSVRfTEVWRUxfQ0xLR0FURTIsDQo+ID4gKwkJCQkgMCwgVlNVTklUX0NMS0dBVEVfRElTX1RH
TCk7DQo+IA0KPiBJIHRoaW5rIHRoaXMgd29ya2Fyb3VuZCBpcyBhbHNvIGltcGxlbWVudGVkIGlu
IHRoZSB3cm9uZw0KPiBsb2NhdGlvbi4gIFRoaXMNCj4gaXMgYSByZW5kZXIgZW5naW5lIHJlZ2lz
dGVyIChwYXJ0IG9mIHRoZSA5NEQwLTk1MUMgcmVuZGVyIGZvcmNld2FrZQ0KPiByYW5nZSBvbiBi
c3BlYyA1MjA3OCkgYW5kIHBhcnQgb2YgdGhlIE1DUiByYW5nZSAoYnNwZWMgNTIwNzkpLCBzbyB3
ZQ0KPiBzaG91bGQgcHJvZ3JhbSB0aGlzIGluIHRoZSBlbmdpbmVfd2FfaW5pdCByYXRoZXIgdGhh
biB0aGUgY2xvY2sNCj4gZ2F0aW5nDQo+IGZ1bmN0aW9uLg0KPiANCj4gVGhlIElDTC9FSEwgdmVy
c2lvbiAod2hpY2ggd2UgYmFzZWQgdGhlIFRHTCBXQSBvbikgaXMgYWxzbyBpbiB0aGUNCj4gd3Jv
bmcNCj4gcGxhY2UgZm9yIHRoZSBzYW1lIHJlYXNvbnMuDQo+IA0KPiBBdCBzb21lIHBvaW50IHdl
IHNob3VsZCBwcm9iYWJseSBhdWRpdCBhbGwgdGhlIG90aGVyIEdUL2VuZ2luZS9NQ1INCj4gcmVn
aXN0ZXJzIHdlJ3JlIGRlYWxpbmcgd2l0aCBpbiB0aGUgaW5pdF9jbG9ja19nYXRpbmcgZnVuY3Rp
b25zIGFuZA0KPiBtb3ZlDQo+IHRoZW0gb3V0IHRvIG1vcmUgYXBwcm9wcmlhdGUgcGxhY2VzLg0K
DQpXaGF0IGFib3V0IHRoaXMgbm90ZSBpbiBCU3BlYyA1MjA3ODoNCiogTm90ZTogU29tZSBDUCBy
ZWdpc3RlcnMgKDB4OTQwMC0weDk3RkYpIGFyZSByZXBsaWNhdGVkIGluIGFsbA0KZG9tYWlucywg
dGh1cyBib3RoIHJlbmRlciBhbmQgbWVkaWEgZG9tYWlucyBtdXN0IGJlIGF3YWtlLg0KDQpPdGhl
cndpc2Ugd2UgaGF2ZSBhIGh1Z2UgcHJvYmxlbSwgZG9pbmcganVzdCBhIHF1aWNrIHNlYXJjaCBJ
IGZvdW5kDQp0aGlzIDIgcmVnaXN0ZXJzIGJlbGxvdyB0aGF0IHdlIGFyZSBwcm9ncmFtaW5nIGZy
b20gaW5pdF9jbG9ja19nYXRpbmcoKQ0KaW4gdGhlIHNhbWUgcmFuZ2UuDQoNCiNkZWZpbmUgR0VO
OF9VQ0dDVEw2CQkJCV9NTUlPKDB4OTQzMCkNCiNkZWZpbmUgR0VON19NSVNDQ1BDVEwJCQkJX01N
SU8oMHg5NDI0KQ0KDQo+IA0KPiANCj4gTWF0dA0KPiANCj4gPiAgDQo+ID4gIAkvKiBUaGlzIGlz
IG5vdCBhIFdBLiBFbmFibGUgVkQgSENQICYgTUZYX0VOQyBwb3dlcmdhdGUgKi8NCj4gPiAgCWZv
ciAoaSA9IDA7IGkgPCBJOTE1X01BWF9WQ1M7IGkrKykgew0KPiA+IC0tIA0KPiA+IDIuMjUuMQ0K
PiA+IA0KPiA+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
DQo+ID4gSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdA0KPiA+IEludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcNCj4gPiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeA0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4Cg==
