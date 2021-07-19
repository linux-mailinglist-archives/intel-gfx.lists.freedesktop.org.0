Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 67E5E3CEAEB
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Jul 2021 20:19:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AFFFC89D56;
	Mon, 19 Jul 2021 18:19:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA50B89D56
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 Jul 2021 18:19:30 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10050"; a="198380402"
X-IronPort-AV: E=Sophos;i="5.84,252,1620716400"; d="scan'208";a="198380402"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jul 2021 11:19:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,252,1620716400"; d="scan'208";a="564103469"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by orsmga004.jf.intel.com with ESMTP; 19 Jul 2021 11:19:29 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Mon, 19 Jul 2021 11:19:28 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Mon, 19 Jul 2021 11:19:28 -0700
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2242.010;
 Mon, 19 Jul 2021 11:19:28 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v2 10/50] drm/i915/xehp: Define multicast register ranges
Thread-Index: AQHXeF6OgJYz0LRJi0eNnjiSwURE9atLGwuA
Date: Mon, 19 Jul 2021 18:19:28 +0000
Message-ID: <32a999cfc9a1c3312a7e4467105109845060e3a5.camel@intel.com>
References: <20210714031540.3539704-1-matthew.d.roper@intel.com>
 <20210714031540.3539704-11-matthew.d.roper@intel.com>
In-Reply-To: <20210714031540.3539704-11-matthew.d.roper@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.132]
Content-ID: <FE79624D0646B846AB72598F0C8F7FA9@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2 10/50] drm/i915/xehp: Define multicast
 register ranges
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

T24gVHVlLCAyMDIxLTA3LTEzIGF0IDIwOjE1IC0wNzAwLCBNYXR0IFJvcGVyIHdyb3RlOg0KPiBT
aW5jZSB3ZSBjYW4ndCBzdGVlciBtdWx0aWNhc3QgcmVnaXN0ZXIgcmVhZHMgZHVyaW5nIHJpbmct
YmFzZWQNCj4gd29ya2Fyb3VuZCB2ZXJpZmljYXRpb24sIHdlIG5lZWQgdG8gZGVmaW5lIHRoZSBt
dWx0aWNhc3QgcmFuZ2VzIHdoZXJlDQo+IGZhaWx1cmUgdG8gc3RlZXIgY291bGQgcG90ZW50aWFs
bHkgY2F1c2UgdXMgdG8gcmVhZCBiYWNrIGZyb20gYQ0KPiBmdXNlZC1vZmYgcmVnaXN0ZXIgaW5z
dGFuY2UuDQo+IA0KPiBBcyB3aXRoIGdlbjEyLCB3ZSBjYW4gaWdub3JlIHRoZSBtdWx0aWNhc3Qg
cmFuZ2VzIHRoYXQgdGhlIGJzcGVjDQo+IGRlc2NyaWJlcyBhcyAnU1FJREknIHNpbmNlIGFsbCBp
bnN0YW5jZXMgb2YgdGhvc2UgcmVnaXN0ZXJzIHdpbGwgYWx3YXlzDQo+IGJlIHByZXNlbnQgYW5k
IHdlJ2xsIGFsd2F5cyBiZSBhYmxlIHRvIHJlYWQgYmFjayBhIHdvcmthcm91bmQgdmFsdWUgdGhh
dA0KPiB3YXMgd3JpdHRlbiB3aXRoIG11bHRpY2FzdC4NCj4gDQoNClJldmlld2VkLWJ5OiBKb3PD
qSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4NCg0KPiBCc3BlYzogNjY1
MzQNCj4gQ2M6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPg0K
PiBTaWduZWQtb2ZmLWJ5OiBNYXR0IFJvcGVyIDxtYXR0aGV3LmQucm9wZXJAaW50ZWwuY29tPg0K
PiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMgfCAy
MCArKysrKysrKysrKysrKysrKysrLQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDE5IGluc2VydGlvbnMo
KyksIDEgZGVsZXRpb24oLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxf
d29ya2Fyb3VuZHMuYw0KPiBpbmRleCA3MjU2MmMyMzNhZDIuLjNhYmU0MjRlZjljOSAxMDA2NDQN
Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYw0KPiAr
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jDQo+IEBAIC0y
MDk3LDEyICsyMDk3LDMwIEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgbWNyX3JhbmdlIG1jcl9yYW5n
ZXNfZ2VuMTJbXSA9IHsNCj4gIAl7fSwNCj4gIH07DQo+ICANCj4gK3N0YXRpYyBjb25zdCBzdHJ1
Y3QgbWNyX3JhbmdlIG1jcl9yYW5nZXNfeGVocFtdID0gew0KPiArCXsgLnN0YXJ0ID0gIDB4NDAw
MCwgLmVuZCA9ICAweDRhZmYgfSwNCj4gKwl7IC5zdGFydCA9ICAweDUyMDAsIC5lbmQgPSAgMHg1
MmZmIH0sDQo+ICsJeyAuc3RhcnQgPSAgMHg1NDAwLCAuZW5kID0gIDB4N2ZmZiB9LA0KPiArCXsg
LnN0YXJ0ID0gIDB4ODE0MCwgLmVuZCA9ICAweDgxNWYgfSwNCj4gKwl7IC5zdGFydCA9ICAweDhj
ODAsIC5lbmQgPSAgMHg4ZGZmIH0sDQo+ICsJeyAuc3RhcnQgPSAgMHg5NGQwLCAuZW5kID0gIDB4
OTU1ZiB9LA0KPiArCXsgLnN0YXJ0ID0gIDB4OTY4MCwgLmVuZCA9ICAweDk2ZmYgfSwNCj4gKwl7
IC5zdGFydCA9ICAweGIwMDAsIC5lbmQgPSAgMHhiM2ZmIH0sDQo+ICsJeyAuc3RhcnQgPSAgMHhj
ODAwLCAuZW5kID0gIDB4Y2ZmZiB9LA0KPiArCXsgLnN0YXJ0ID0gIDB4ZDgwMCwgLmVuZCA9ICAw
eGQ4ZmYgfSwNCj4gKwl7IC5zdGFydCA9ICAweGRjMDAsIC5lbmQgPSAgMHhmZmZmIH0sDQo+ICsJ
eyAuc3RhcnQgPSAweDE3MDAwLCAuZW5kID0gMHgxN2ZmZiB9LA0KPiArCXsgLnN0YXJ0ID0gMHgy
NGEwMCwgLmVuZCA9IDB4MjRhN2YgfSwNCj4gK307DQo+ICsNCj4gIHN0YXRpYyBib29sIG1jcl9y
YW5nZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwgdTMyIG9mZnNldCkNCj4gIHsNCj4g
IAljb25zdCBzdHJ1Y3QgbWNyX3JhbmdlICptY3JfcmFuZ2VzOw0KPiAgCWludCBpOw0KPiAgDQo+
IC0JaWYgKEdSQVBISUNTX1ZFUihpOTE1KSA+PSAxMikNCj4gKwlpZiAoR1JBUEhJQ1NfVkVSX0ZV
TEwoaTkxNSkgPj0gSVBfVkVSKDEyLCA1MCkpDQo+ICsJCW1jcl9yYW5nZXMgPSBtY3JfcmFuZ2Vz
X3hlaHA7DQo+ICsJZWxzZSBpZiAoR1JBUEhJQ1NfVkVSKGk5MTUpID49IDEyKQ0KPiAgCQltY3Jf
cmFuZ2VzID0gbWNyX3Jhbmdlc19nZW4xMjsNCj4gIAllbHNlIGlmIChHUkFQSElDU19WRVIoaTkx
NSkgPj0gOCkNCj4gIAkJbWNyX3JhbmdlcyA9IG1jcl9yYW5nZXNfZ2VuODsNCg0KX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcg
bGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
