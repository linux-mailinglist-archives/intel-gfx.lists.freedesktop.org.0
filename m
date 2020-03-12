Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 904F7183C82
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Mar 2020 23:30:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 790166EB4A;
	Thu, 12 Mar 2020 22:30:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4174E6EB4A
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Mar 2020 22:30:24 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Mar 2020 15:30:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,546,1574150400"; d="scan'208";a="261692823"
Received: from fmsmsx108.amr.corp.intel.com ([10.18.124.206])
 by orsmga002.jf.intel.com with ESMTP; 12 Mar 2020 15:30:23 -0700
Received: from fmsmsx118.amr.corp.intel.com (10.18.116.18) by
 FMSMSX108.amr.corp.intel.com (10.18.124.206) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 12 Mar 2020 15:30:23 -0700
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.253]) by
 fmsmsx118.amr.corp.intel.com ([169.254.1.221]) with mapi id 14.03.0439.000;
 Thu, 12 Mar 2020 15:30:22 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v2 4/6] drm/i915: Add Wa_1406306137:icl,ehl
Thread-Index: AQHV98Fk8bd/1PqAtU6KPRuLlsTXKqhF+28AgAAGWgA=
Date: Thu, 12 Mar 2020 22:30:21 +0000
Message-ID: <dcb527e06d97c0ca29407768aebb374d7b17d591.camel@intel.com>
References: <20200311162300.1838847-1-matthew.d.roper@intel.com>
 <20200311162300.1838847-5-matthew.d.roper@intel.com>
 <0d02038c35e6bf5bbccccc56f2d000151f6f952e.camel@intel.com>
In-Reply-To: <0d02038c35e6bf5bbccccc56f2d000151f6f952e.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.15.8]
Content-ID: <82A1B4642ECAE24189792A44C18342C9@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2 4/6] drm/i915: Add Wa_1406306137:icl,ehl
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

T24gVGh1LCAyMDIwLTAzLTEyIGF0IDE1OjA4IC0wNzAwLCBKb3PDqSBSb2JlcnRvIGRlIFNvdXph
IHdyb3RlOg0KPiBPbiBXZWQsIDIwMjAtMDMtMTEgYXQgMDk6MjIgLTA3MDAsIE1hdHQgUm9wZXIg
d3JvdGU6DQo+ID4gdjI6DQo+ID4gIC0gTW92ZSB0byBjb250ZXh0IHdvcmthcm91bmRzLiAgUk9X
X0NISUNLRU40IGlzIHBhcnQgb2YgdGhlDQo+ID4gY29udGV4dA0KPiA+ICAgIGltYWdlIG9uIGdl
bjExIChhbHRob3VnaCBpdCBpc24ndCBvbiBnZW4xMikuDQo+ID4gDQo+ID4gU2lnbmVkLW9mZi1i
eTogTWF0dCBSb3BlciA8bWF0dGhldy5kLnJvcGVyQGludGVsLmNvbT4NCj4gPiAtLS0NCj4gPiAg
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYyB8IDMgKysrDQo+ID4g
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggICAgICAgICAgICAgfCAxICsNCj4gPiAg
MiBmaWxlcyBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKykNCj4gPiANCj4gPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYw0KPiA+IGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYw0KPiA+IGluZGV4IDNiYmQ4OTI5
NDI3OS4uMjMxOGI1NWI5NzIyIDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L2ludGVsX3dvcmthcm91bmRzLmMNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC9pbnRlbF93b3JrYXJvdW5kcy5jDQo+ID4gQEAgLTU4MSw2ICs1ODEsOSBAQCBzdGF0aWMgdm9p
ZCBpY2xfY3R4X3dvcmthcm91bmRzX2luaXQoc3RydWN0DQo+ID4gaW50ZWxfZW5naW5lX2NzICpl
bmdpbmUsDQo+ID4gIAl3YV93cml0ZV9tYXNrZWRfb3Iod2FsLCBJVkJfRkJDX1JUX0JBU0VfVVBQ
RVIsDQo+ID4gIAkJCSAgIDAsIC8qIHdyaXRlLW9ubHkgcmVnaXN0ZXI7IHNraXAgdmFsaWRhdGlv
bg0KPiA+ICovDQo+ID4gIAkJCSAgIDB4RkZGRkZGRkYpOw0KPiA+ICsNCj4gPiArCS8qIFdhXzE0
MDYzMDYxMzc6aWNsLGVobCAqLw0KPiA+ICsJd2FfbWFza2VkX2VuKHdhbCwgR0VOOV9ST1dfQ0hJ
Q0tFTjQsIEdFTjExX0RJU19QSUNLXzJORF9FVSk7DQo+IA0KPiBUaGUgcHJlLWdlbjEyIGRlZmlu
aXRpb24gb2YgdGhpcyByZWdpc3RlcnMgZG9uJ3QgaGF2ZSBhIG1hc2tlZCBhY2Nlc3MNCj4gYXQg
bGVhc3QgaGVyZSBvbiB0aGlzIG9uIEJTcGVjIDExNDkyDQoNCk15IGJhZCwgaXQganVzdCBkb24n
dCBoYXZlIGl0IGluIHRoZSBoZWFkZXIuDQoNClJldmlld2VkLWJ5OiBKb3PDqSBSb2JlcnRvIGRl
IFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4NCg0KDQo+IA0KPiA+ICB9DQo+ID4gIA0KPiA+
ICBzdGF0aWMgdm9pZCB0Z2xfY3R4X3dvcmthcm91bmRzX2luaXQoc3RydWN0IGludGVsX2VuZ2lu
ZV9jcw0KPiA+ICplbmdpbmUsDQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfcmVnLmgNCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgNCj4gPiBp
bmRleCA5MmFlOTZjZjViNjQuLmI2OTQxZGEzYjU4OCAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9yZWcuaA0KPiA+IEBAIC05MTUxLDYgKzkxNTEsNyBAQCBlbnVtIHsNCj4gPiAgDQo+ID4g
ICNkZWZpbmUgR0VOOV9ST1dfQ0hJQ0tFTjQJCV9NTUlPKDB4ZTQ4YykNCj4gPiAgI2RlZmluZSAg
IEdFTjEyX0RJU0FCTEVfVERMX1BVU0gJUkVHX0JJVCg5KQ0KPiA+ICsjZGVmaW5lICAgR0VOMTFf
RElTX1BJQ0tfMk5EX0VVCQlSRUdfQklUKDcpDQo+ID4gIA0KPiA+ICAjZGVmaW5lIEhTV19ST1df
Q0hJQ0tFTjMJCV9NTUlPKDB4ZTQ5YykNCj4gPiAgI2RlZmluZSAgSFNXX1JPV19DSElDS0VOM19M
M19HTE9CQUxfQVRPTUlDU19ESVNBQkxFICAgICgxIDw8IDYpDQpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
