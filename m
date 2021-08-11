Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 70B193E9A1E
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Aug 2021 22:55:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E4B96E1B8;
	Wed, 11 Aug 2021 20:55:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 190666E1B8
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Aug 2021 20:55:50 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10073"; a="214952364"
X-IronPort-AV: E=Sophos;i="5.84,313,1620716400"; d="scan'208";a="214952364"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2021 13:55:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,313,1620716400"; d="scan'208";a="639287215"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by orsmga005.jf.intel.com with ESMTP; 11 Aug 2021 13:55:50 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Wed, 11 Aug 2021 13:55:49 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Wed, 11 Aug 2021 13:55:48 -0700
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2242.010;
 Wed, 11 Aug 2021 13:55:48 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "mika.kuoppala@linux.intel.com" <mika.kuoppala@linux.intel.com>, "Ceraolo
 Spurio, Daniele" <daniele.ceraolospurio@intel.com>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915: Only access SFC_DONE when media
 domain is not fused off
Thread-Index: AQHXiupgXcFTGV8GgUuLLBoZ/juhhatvR2KA
Date: Wed, 11 Aug 2021 20:55:48 +0000
Message-ID: <c53a507f96eadee5178062305c999ff1250999c9.camel@intel.com>
References: <20210806174130.1058960-1-matthew.d.roper@intel.com>
In-Reply-To: <20210806174130.1058960-1-matthew.d.roper@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.132]
Content-Type: text/plain; charset="utf-8"
Content-ID: <8DF7C75F0E41204F805DDC7D4FF86C7F@intel.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Only access SFC_DONE when media
 domain is not fused off
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

T24gRnJpLCAyMDIxLTA4LTA2IGF0IDEwOjQxIC0wNzAwLCBNYXR0IFJvcGVyIHdyb3RlOg0KPiBU
aGUgU0ZDX0RPTkUgcmVnaXN0ZXIgbGl2ZXMgd2l0aGluIHRoZSBjb3JyZXNwb25kaW5nIFZEMC9W
RDIvVkQ0L1ZENg0KPiBmb3JjZXdha2UgZG9tYWluIGFuZCBpcyBub3QgYWNjZXNzaWJsZSBpZiB0
aGUgdmRib3ggaW4gdGhhdCBkb21haW4gaXMNCj4gZnVzZWQgb2ZmIGFuZCB0aGUgZm9yY2V3YWtl
IGlzIG5vdCBpbml0aWFsaXplZC4NCj4gDQo+IFRoaXMgbWlzdGFrZSB3ZW50IHVubm90aWNlZCBi
ZWNhdXNlIHVudGlsIHJlY2VudGx5IHdlIHdlcmUgdXNpbmcgdGhlDQo+IHdyb25nIHJlZ2lzdGVy
IG9mZnNldCBmb3IgdGhlIFNGQ19ET05FIHJlZ2lzdGVyOyBvbmNlIHRoZSByZWdpc3Rlcg0KPiBv
ZmZzZXQgd2FzIGNvcnJlY3RlZCwgd2Ugc3RhcnRlZCBoaXR0aW5nIGVycm9ycyBsaWtlDQo+IA0K
PiAgIDw0PiBbNTQ0Ljk4OTA2NV0gaTkxNSAwMDAwOmNjOjAwLjA6IFVuaW5pdGlhbGl6ZWQgZm9y
Y2V3YWtlIGRvbWFpbihzKSAweDgwIGFjY2Vzc2VkIGF0IDB4MWNlMDAwDQo+IA0KPiBvbiBwYXJ0
cyB3aXRoIGZ1c2VkLW9mZiB2ZGJveCBlbmdpbmVzLg0KDQpSZXZpZXdlZC1ieTogSm9zw6kgUm9i
ZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+DQoNCj4gDQo+IEZpeGVzOiBlNTBk
YmRiZmQ5ZmIgKCJkcm0vaTkxNS90Z2w6IEFkZCBTRkMgaW5zdGRvbmUgdG8gZXJyb3Igc3RhdGUi
KQ0KPiBGaXhlczogODI5MjlhMjE0MGViICgiZHJtL2k5MTU6IENvcnJlY3QgU0ZDX0RPTkUgcmVn
aXN0ZXIgb2Zmc2V0IikNCj4gQ2M6IERhbmllbGUgQ2VyYW9sbyBTcHVyaW8gPGRhbmllbGUuY2Vy
YW9sb3NwdXJpb0BpbnRlbC5jb20+DQo+IENjOiBNaWthIEt1b3BwYWxhIDxtaWthLmt1b3BwYWxh
QGxpbnV4LmludGVsLmNvbT4NCj4gU2lnbmVkLW9mZi1ieTogTWF0dCBSb3BlciA8bWF0dGhldy5k
LnJvcGVyQGludGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dw
dV9lcnJvci5jIHwgMTkgKysrKysrKysrKysrKysrKysrLQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDE4
IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X2dwdV9lcnJvci5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9ncHVfZXJyb3IuYw0KPiBpbmRleCAwZjA4YmNmYmU5NjQuLjljZjZhYzU3NWRlMSAxMDA2NDQN
Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9ncHVfZXJyb3IuYw0KPiArKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dwdV9lcnJvci5jDQo+IEBAIC03MjcsOSArNzI3LDE4
IEBAIHN0YXRpYyB2b2lkIGVycl9wcmludF9ndChzdHJ1Y3QgZHJtX2k5MTVfZXJyb3Jfc3RhdGVf
YnVmICptLA0KPiAgCWlmIChHUkFQSElDU19WRVIobS0+aTkxNSkgPj0gMTIpIHsNCj4gIAkJaW50
IGk7DQo+ICANCj4gLQkJZm9yIChpID0gMDsgaSA8IEdFTjEyX1NGQ19ET05FX01BWDsgaSsrKQ0K
PiArCQlmb3IgKGkgPSAwOyBpIDwgR0VOMTJfU0ZDX0RPTkVfTUFYOyBpKyspIHsNCj4gKwkJCS8q
DQo+ICsJCQkgKiBTRkNfRE9ORSByZXNpZGVzIGluIHRoZSBWRCBmb3JjZXdha2UgZG9tYWluLCBz
byBpdA0KPiArCQkJICogb25seSBleGlzdHMgaWYgdGhlIGNvcnJlc3BvbmRpbmcgVkNTIGVuZ2lu
ZSBpcw0KPiArCQkJICogcHJlc2VudC4NCj4gKwkJCSAqLw0KPiArCQkJaWYgKCFIQVNfRU5HSU5F
KGd0LT5fZ3QsIF9WQ1MoaSAqIDIpKSkNCj4gKwkJCQljb250aW51ZTsNCj4gKw0KPiAgCQkJZXJy
X3ByaW50ZihtLCAiICBTRkNfRE9ORVslZF06IDB4JTA4eFxuIiwgaSwNCj4gIAkJCQkgICBndC0+
c2ZjX2RvbmVbaV0pOw0KPiArCQl9DQo+ICANCj4gIAkJZXJyX3ByaW50ZihtLCAiICBHQU1fRE9O
RTogMHglMDh4XG4iLCBndC0+Z2FtX2RvbmUpOw0KPiAgCX0NCj4gQEAgLTE1OTgsNiArMTYwNywx
NCBAQCBzdGF0aWMgdm9pZCBndF9yZWNvcmRfcmVncyhzdHJ1Y3QgaW50ZWxfZ3RfY29yZWR1bXAg
Kmd0KQ0KPiAgDQo+ICAJaWYgKEdSQVBISUNTX1ZFUihpOTE1KSA+PSAxMikgew0KPiAgCQlmb3Ig
KGkgPSAwOyBpIDwgR0VOMTJfU0ZDX0RPTkVfTUFYOyBpKyspIHsNCj4gKwkJCS8qDQo+ICsJCQkg
KiBTRkNfRE9ORSByZXNpZGVzIGluIHRoZSBWRCBmb3JjZXdha2UgZG9tYWluLCBzbyBpdA0KPiAr
CQkJICogb25seSBleGlzdHMgaWYgdGhlIGNvcnJlc3BvbmRpbmcgVkNTIGVuZ2luZSBpcw0KPiAr
CQkJICogcHJlc2VudC4NCj4gKwkJCSAqLw0KPiArCQkJaWYgKCFIQVNfRU5HSU5FKGd0LT5fZ3Qs
IF9WQ1MoaSAqIDIpKSkNCj4gKwkJCQljb250aW51ZTsNCj4gKw0KPiAgCQkJZ3QtPnNmY19kb25l
W2ldID0NCj4gIAkJCQlpbnRlbF91bmNvcmVfcmVhZCh1bmNvcmUsIEdFTjEyX1NGQ19ET05FKGkp
KTsNCj4gIAkJfQ0KDQo=
