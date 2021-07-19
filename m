Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CBE0D3CEA3E
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Jul 2021 19:56:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 37B6E6E1B1;
	Mon, 19 Jul 2021 17:56:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5604D6E1B1
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 Jul 2021 17:56:00 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10050"; a="274930229"
X-IronPort-AV: E=Sophos;i="5.84,252,1620716400"; d="scan'208";a="274930229"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jul 2021 10:55:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,252,1620716400"; d="scan'208";a="631980182"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga005.jf.intel.com with ESMTP; 19 Jul 2021 10:55:59 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Mon, 19 Jul 2021 10:55:59 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Mon, 19 Jul 2021 10:55:58 -0700
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2242.010;
 Mon, 19 Jul 2021 10:55:58 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 2/7] drm/i915/icl: Drop a couple unnecessary
 workarounds
Thread-Index: AQHXesqr0feonE5qG0m7dIt6vMWNa6tLD6KA
Date: Mon, 19 Jul 2021 17:55:58 +0000
Message-ID: <b1e25edcfffe4d6c95194a9e1e0eba9abcc72418.camel@intel.com>
References: <20210717051426.4120328-1-matthew.d.roper@intel.com>
 <20210717051426.4120328-3-matthew.d.roper@intel.com>
In-Reply-To: <20210717051426.4120328-3-matthew.d.roper@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.132]
Content-ID: <C45C950D27FD4941B996500285946CD4@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 2/7] drm/i915/icl: Drop a couple unnecessary
 workarounds
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

T24gRnJpLCAyMDIxLTA3LTE2IGF0IDIyOjE0IC0wNzAwLCBNYXR0IFJvcGVyIHdyb3RlOg0KPiBX
aGlsZSBkb2luZyBhIHF1aWNrIHNhbml0eSBjaGVjayBvZiB0aGUgSUNMIHdvcmthcm91bmRzIGlu
IHRoZSBkcml2ZXIgSQ0KPiBub3RpY2VkIGEgZmV3IHRoaW5ncyB0aGF0IHNob3VsZCBiZSB1cGRh
dGVkOg0KPiANCj4gICogVGhlcmUncyBubyBtZW50aW9uIGluIHRoZSBic3BlYyB0aGF0IFdhUGlw
ZWxpbmVGbHVzaENvaGVyZW50TGluZXMNCj4gICAgaXMgbmVlZGVkIG9uIGdlbjExIChib3RoIHRo
ZSBjdXJyZW50IFdBIGRhdGFiYXNlIGFuZCB0aGUgb2xkLA0KPiAgICBkZXByZWNhdGVkIHBhZ2Ug
MjAxOTYgd2VyZSBjaGVja2VkKTsgaXQgYXBwZWFycyB0aGlzIG1pZ2h0IGhhdmUganVzdA0KPiAg
ICBiZWVuIGNvcGllZCBmcm9tIHRoZSBnZW45IGxpc3Q/ICBFdmVuIGlmIHRoaXMgd2VyZSBuZWVk
ZWQsIGl0IGRvZXNuJ3QNCj4gICAgc2VlbSBsaWtlIHRoaXMgd2FzIHRoZSBjb3JyZWN0IGltcGxl
bWVudGF0aW9uIGFueXdheSBzaW5jZSB0aGUgZ2VuOQ0KPiAgICB3b3JrYXJvdW5kIGlzIHN1cHBv
c2VkIHRvIGJlIGltcGxlbWVudGVkIGluIHRoZSBpbmRpcmVjdCBjb250ZXh0IGJiDQo+ICAgIChh
cyB3ZSBkbyBpbiBnZW44X2VtaXRfZmx1c2hfY29oZXJlbnRsM193YSgpIG9uIGdlbjgvZ2VuOSku
DQo+IA0KPiAgKiBXYUZvcndhcmRQcm9ncmVzc1NvZnRSZXNldCBkb2VzIG5vdCBhcHBlYXIgaW4g
dGhlIGN1cnJlbnQgd29ya2Fyb3VuZA0KPiAgICBkYXRhYmFzZS4gIFRoZSBvbGQgZGVwcmVjYXRl
ZCB3b3JrYXJvdW5kIGxpc3QgaGFzIGEgbm90ZSBpbmRpY2F0aW5nDQo+ICAgIHRoZSB3b3JrYXJv
dW5kIHdhcyBkcm9wcGVkIGluIDIwMTcsIHNvIHdlIHNob3VsZCBiZSBzYWZlIHRvIGRyb3AgaXQN
Cj4gICAgZnJvbSB0aGUgY29kZSB0b28uDQo+IA0KPiBXaGlsZSB3ZSdyZSBhdCBpdCwgYWRkIHRo
ZSBmb3JtYWwgd29ya2Fyb3VuZCBJRCBudW1iZXIgdG8NCj4gV2FEaXNhYmxlQmFua0hhbmdNb2Rl
IChvdXIgaGFyZHdhcmUgdGVhbSBtYWRlIGEgdHJhbnNpdGlvbiBmcm9tDQo+IHRleHQtYmFzZWQg
d29ya2Fyb3VuZCBuYW1lcyB0byBJRCBudW1iZXJzIHBhcnR3YXkgdGhyb3VnaCB0aGUNCj4gZGV2
ZWxvcG1lbnQgb2YgSUNMLCB3aGljaCBpcyB3aHkgc29tZSB3b3JrYXJvdW5kcyBvbmx5IGhhdmUg
bmFtZXMsIHNvbWUNCj4gb25seSBoYXZlIG51bWJlcnMsIGFuZCBzb21lIGhhdmUgYm90aCkuDQoN
ClJldmlld2VkLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNv
bT4NCg0KPiANCj4gQnNwZWM6IDMzNDUwDQo+IFNpZ25lZC1vZmYtYnk6IE1hdHQgUm9wZXIgPG1h
dHRoZXcuZC5yb3BlckBpbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvaW50ZWxfd29ya2Fyb3VuZHMuYyB8IDE0ICstLS0tLS0tLS0tLS0tDQo+ICAxIGZpbGUgY2hh
bmdlZCwgMSBpbnNlcnRpb24oKyksIDEzIGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jDQo+IGluZGV4IDc2YTNiNWQ1ZTlkYy4u
MzZkOTcyNDkyODgzIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRl
bF93b3JrYXJvdW5kcy5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dv
cmthcm91bmRzLmMNCj4gQEAgLTUxNyw3ICs1MTcsNyBAQCBzdGF0aWMgdm9pZCBjZmxfY3R4X3dv
cmthcm91bmRzX2luaXQoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lLA0KPiAgc3RhdGlj
IHZvaWQgaWNsX2N0eF93b3JrYXJvdW5kc19pbml0KHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVu
Z2luZSwNCj4gIAkJCQkgICAgIHN0cnVjdCBpOTE1X3dhX2xpc3QgKndhbCkNCj4gIHsNCj4gLQkv
KiBXYURpc2FibGVCYW5rSGFuZ01vZGU6aWNsICovDQo+ICsJLyogV2FfMTQwNjY5NzE0OSAoV2FE
aXNhYmxlQmFua0hhbmdNb2RlOmljbCkgKi8NCj4gIAl3YV93cml0ZSh3YWwsDQo+ICAJCSBHRU44
X0wzQ05UTFJFRywNCj4gIAkJIGludGVsX3VuY29yZV9yZWFkKGVuZ2luZS0+dW5jb3JlLCBHRU44
X0wzQ05UTFJFRykgfA0KPiBAQCAtMTU4NywxMSArMTU4Nyw2IEBAIHJjc19lbmdpbmVfd2FfaW5p
dChzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUsIHN0cnVjdCBpOTE1X3dhX2xpc3QgKndh
bCkNCj4gIAkJCSAgICAgXzNEX0NISUNLRU4zLA0KPiAgCQkJICAgICBfM0RfQ0hJQ0tFTjNfQUFf
TElORV9RVUFMSVRZX0ZJWF9FTkFCTEUpOw0KPiAgDQo+IC0JCS8qIFdhUGlwZWxpbmVGbHVzaENv
aGVyZW50TGluZXM6aWNsICovDQo+IC0JCXdhX3dyaXRlX29yKHdhbCwNCj4gLQkJCSAgICBHRU44
X0wzU1FDUkVHNCwNCj4gLQkJCSAgICBHRU44X0xRU0NfRkxVU0hfQ09IRVJFTlRfTElORVMpOw0K
PiAtDQo+ICAJCS8qDQo+ICAJCSAqIFdhXzE0MDU1NDM2MjI6aWNsDQo+ICAJCSAqIEZvcm1lcmx5
IGtub3duIGFzIFdhR0FQWlByaW9yaXR5U2NoZW1lDQo+IEBAIC0xNjIxLDEzICsxNjE2LDYgQEAg
cmNzX2VuZ2luZV93YV9pbml0KHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSwgc3RydWN0
IGk5MTVfd2FfbGlzdCAqd2FsKQ0KPiAgCQkJICAgIEdFTjhfTDNTUUNSRUc0LA0KPiAgCQkJICAg
IEdFTjExX0xRU0NfQ0xFQU5fRVZJQ1RfRElTQUJMRSk7DQo+ICANCj4gLQkJLyogV2FGb3J3YXJk
UHJvZ3Jlc3NTb2Z0UmVzZXQ6aWNsICovDQo+IC0JCXdhX3dyaXRlX29yKHdhbCwNCj4gLQkJCSAg
ICBHRU4xMF9TQ1JBVENIX0xOQ0YyLA0KPiAtCQkJICAgIFBNRkxVU0hET05FX0xOSUNSU0RST1Ag
fA0KPiAtCQkJICAgIFBNRkxVU0hfR0FQTDNVTkJMT0NLIHwNCj4gLQkJCSAgICBQTUZMVVNIRE9O
RV9MTkVCTEspOw0KPiAtDQo+ICAJCS8qIFdhXzE2MDY2ODIxNjY6aWNsICovDQo+ICAJCXdhX3dy
aXRlX29yKHdhbCwNCj4gIAkJCSAgICBHRU43X1NBUkNIS01ELA0KDQpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
