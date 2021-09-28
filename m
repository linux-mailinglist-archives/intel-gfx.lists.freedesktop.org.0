Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 01FBB41B8AB
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Sep 2021 22:50:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E602A6E99E;
	Tue, 28 Sep 2021 20:50:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 13E5F6E99D
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Sep 2021 20:50:48 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10121"; a="204290878"
X-IronPort-AV: E=Sophos;i="5.85,330,1624345200"; d="scan'208";a="204290878"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Sep 2021 13:50:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,330,1624345200"; d="scan'208";a="562634149"
Received: from irsmsx601.ger.corp.intel.com ([163.33.146.7])
 by fmsmga002.fm.intel.com with ESMTP; 28 Sep 2021 13:50:43 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 irsmsx601.ger.corp.intel.com (163.33.146.7) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Tue, 28 Sep 2021 21:50:41 +0100
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2242.012;
 Tue, 28 Sep 2021 13:50:40 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 10/13] drm/i915/icl/tc: Remove the ICL special casing
 during TC-cold blocking
Thread-Index: AQHXrn7oll9ZhsADzkC1Bzo3FR3uEau48KYAgADVqYCAAKimAA==
Date: Tue, 28 Sep 2021 20:50:39 +0000
Message-ID: <ab2091d8dbb73e4f816e2b1f240573959bdce268.camel@intel.com>
References: <20210921002313.1132357-1-imre.deak@intel.com>
 <20210921002313.1132357-11-imre.deak@intel.com>
 <63811f47b365ba59c118ee855af7043ce55eb4ad.camel@intel.com>
 <20210928105249.GA2069823@ideak-desk.fi.intel.com>
In-Reply-To: <20210928105249.GA2069823@ideak-desk.fi.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.132]
Content-Type: text/plain; charset="utf-8"
Content-ID: <DD197A5CEB287D4BBE80B97B599E8CEA@intel.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 10/13] drm/i915/icl/tc: Remove the ICL
 special casing during TC-cold blocking
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

T24gVHVlLCAyMDIxLTA5LTI4IGF0IDEzOjUyICswMzAwLCBJbXJlIERlYWsgd3JvdGU6DQo+IE9u
IFR1ZSwgU2VwIDI4LCAyMDIxIGF0IDAxOjAyOjIxQU0gKzAzMDAsIFNvdXphLCBKb3NlIHdyb3Rl
Og0KPiA+IE9uIFR1ZSwgMjAyMS0wOS0yMSBhdCAwMzoyMyArMDMwMCwgSW1yZSBEZWFrIHdyb3Rl
Og0KPiA+ID4gV2hpbGUgYSBUeXBlQyBwb3J0IG1vZGUgaXMgbG9ja2VkIGEgRElTUExBWV9DT1JF
IHBvd2VyIGRvbWFpbiByZWZlcmVuY2UNCj4gPiA+IGlzIGhlbGQsIHdoaWNoIGltcGxpZXMgYSBy
dW50aW1lIFBNIHJlZi4gQnkgcmVtb3ZpbmcgdGhlIElDTCAhbGVnYWN5DQo+ID4gPiBwb3J0IHNw
ZWNpYWwgY2FzaW5nLCBhIFRDX0NPTERfT0ZGIHBvd2VyIGRvbWFpbiByZWZlcmVuY2Ugd2lsbCBi
ZSB0YWtlbg0KPiA+ID4gZm9yIHN1Y2ggcG9ydHMsIHdoaWNoIGFsc28gdHJhbnNsYXRlcyB0byBh
IHJ1bnRpbWUgUE0gcmVmIG9uIHRoYXQNCj4gPiA+IHBsYXRmb3JtLiBBIGZvbGxvdy11cCBjaGFu
Z2Ugd2lsbCBzdG9wIGhvbGRpbmcgdGhlIERJU1BMQVlfQ09SRSBwb3dlcg0KPiA+ID4gZG9tYWlu
IHdoaWxlIHRoZSBwb3J0IGlzIGxvY2tlZC4NCj4gPiANCj4gPiBUaGlzIHNob3VsZCBiZSBzcXVh
c2hlZCB0byAnZHJtL2k5MTUvdGM6IFJlZmFjdG9yIFRDLWNvbGQNCj4gPiBibG9jay91bmJsb2Nr
IGhlbHBlcnMnIG90aGVyd2lzZSBkb21haW4gaXMgbm90IGluaXRpYWxpemVkIGZvciB0aGlzDQo+
ID4gY2FzZS4NCj4gDQo+IGRvbWFpbiBpcyBhbHdheXMgb25seSB2YWxpZCB3aXRoIGEgbm9uLXpl
cm8gd2FrZXJlZiwgc28gbm8gbmVlZCB0byBpbml0DQo+IGRvbWFpbiBpZiB0aGUgcmV0dXJuZWQg
d2FrZXJlZiBpcyB6ZXJvLg0KDQpSZXZpZXdlZC1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8
am9zZS5zb3V6YUBpbnRlbC5jb20+DQoNCj4gDQo+ID4gPiBDYzogSm9zw6kgUm9iZXJ0byBkZSBT
b3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+DQo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBJbXJlIERl
YWsgPGltcmUuZGVha0BpbnRlbC5jb20+DQo+ID4gPiAtLS0NCj4gPiA+ICBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX3RjLmMgfCA2IC0tLS0tLQ0KPiA+ID4gIDEgZmlsZSBjaGFu
Z2VkLCA2IGRlbGV0aW9ucygtKQ0KPiA+ID4gDQo+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF90Yy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF90Yy5jDQo+ID4gPiBpbmRleCBiMmEzZDI5N2JmYzE5Li44ZDc5OWNmN2NjZWZk
IDEwMDY0NA0KPiA+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF90
Yy5jDQo+ID4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3RjLmMN
Cj4gPiA+IEBAIC03MSw5ICs3MSw2IEBAIHRjX2NvbGRfYmxvY2tfaW5fbW9kZShzdHJ1Y3QgaW50
ZWxfZGlnaXRhbF9wb3J0ICpkaWdfcG9ydCwgZW51bSB0Y19wb3J0X21vZGUgbW9kDQo+ID4gPiAg
ew0KPiA+ID4gIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IHRvX2k5MTUoZGlnX3Bv
cnQtPmJhc2UuYmFzZS5kZXYpOw0KPiA+ID4gIA0KPiA+ID4gLQlpZiAoRElTUExBWV9WRVIoaTkx
NSkgPT0gMTEgJiYgIWRpZ19wb3J0LT50Y19sZWdhY3lfcG9ydCkNCj4gPiA+IC0JCXJldHVybiAw
Ow0KPiA+ID4gLQ0KPiA+ID4gIAkqZG9tYWluID0gdGNfY29sZF9nZXRfcG93ZXJfZG9tYWluKGRp
Z19wb3J0LCBtb2RlKTsNCj4gPiA+ICANCj4gPiA+ICAJcmV0dXJuIGludGVsX2Rpc3BsYXlfcG93
ZXJfZ2V0KGk5MTUsICpkb21haW4pOw0KPiA+ID4gQEAgLTEwOCw5ICsxMDUsNiBAQCBhc3NlcnRf
dGNfY29sZF9ibG9ja2VkKHN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgKmRpZ19wb3J0KQ0KPiA+
ID4gIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IHRvX2k5MTUoZGlnX3BvcnQtPmJh
c2UuYmFzZS5kZXYpOw0KPiA+ID4gIAlib29sIGVuYWJsZWQ7DQo+ID4gPiAgDQo+ID4gPiAtCWlm
IChESVNQTEFZX1ZFUihpOTE1KSA9PSAxMSAmJiAhZGlnX3BvcnQtPnRjX2xlZ2FjeV9wb3J0KQ0K
PiA+ID4gLQkJcmV0dXJuOw0KPiA+ID4gLQ0KPiA+ID4gIAllbmFibGVkID0gaW50ZWxfZGlzcGxh
eV9wb3dlcl9pc19lbmFibGVkKGk5MTUsDQo+ID4gPiAgCQkJCQkJIHRjX2NvbGRfZ2V0X3Bvd2Vy
X2RvbWFpbihkaWdfcG9ydCwNCj4gPiA+ICAJCQkJCQkJCQkgIGRpZ19wb3J0LT50Y19tb2RlKSk7
DQo+ID4gDQoNCg==
