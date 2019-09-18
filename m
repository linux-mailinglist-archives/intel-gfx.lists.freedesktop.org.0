Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B6F5FB6F84
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Sep 2019 01:05:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF3357A29F;
	Wed, 18 Sep 2019 23:05:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D59673B36
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Sep 2019 23:05:09 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Sep 2019 16:05:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,522,1559545200"; d="scan'208";a="388092354"
Received: from orsmsx105.amr.corp.intel.com ([10.22.225.132])
 by fmsmga006.fm.intel.com with ESMTP; 18 Sep 2019 16:05:08 -0700
Received: from orsmsx161.amr.corp.intel.com (10.22.240.84) by
 ORSMSX105.amr.corp.intel.com (10.22.225.132) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 18 Sep 2019 16:05:08 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.204]) by
 ORSMSX161.amr.corp.intel.com ([169.254.4.111]) with mapi id 14.03.0439.000;
 Wed, 18 Sep 2019 16:05:08 -0700
From: "Sripada, Radhakrishna" <radhakrishna.sripada@intel.com>
To: "Ceraolo Spurio, Daniele" <daniele.ceraolospurio@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v2] drm/i915/tgl: Implement Wa_1409142259
Thread-Index: AQHVZ2Qp8+yFHhX18Uqq0fCAVQQF8KcnP0UAgArcsVA=
Date: Wed, 18 Sep 2019 23:05:06 +0000
Message-ID: <8C2593290C2B3E488D763E819AF1F02E15F4CACF@ORSMSX101.amr.corp.intel.com>
References: <20190909231445.23815-1-radhakrishna.sripada@intel.com>
 <ee561b9f-ffa4-db0f-51da-42c298171dd7@intel.com>
In-Reply-To: <ee561b9f-ffa4-db0f-51da-42c298171dd7@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiMGI0MmEzZTgtMzk1Zi00NWZhLThhODktMDYyODliNjg4ZGFlIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiSXp5clJua0dYUVkyMkxKVG1lb3kwdFY0cDh2UUMzMHc1Tm9PM3R4RkduWUxHU29laGZ1RHpDd3RoTFRvTUtYWSJ9
dlp-product: dlpe-windows
dlp-version: 11.0.400.15
dlp-reaction: no-action
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/tgl: Implement Wa_1409142259
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGkgRGFuaWVsZSwNCg0KVGhhbmtzIGZvciB0aGUgcmV2aWV3LiBDYW4geW91IGhlbHAgbWUgbWVy
Z2UgdGhpcyBwYXRoYz8NCg0KVGhhbmtzLA0KUmFkaGFrcmlzaG5hKFJLKSBTcmlwYWRhDQoNCj4g
LS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogQ2VyYW9sbyBTcHVyaW8sIERhbmll
bGUNCj4gU2VudDogV2VkbmVzZGF5LCBTZXB0ZW1iZXIgMTEsIDIwMTkgMTE6MTIgQU0NCj4gVG86
IFNyaXBhZGEsIFJhZGhha3Jpc2huYSA8cmFkaGFrcmlzaG5hLnNyaXBhZGFAaW50ZWwuY29tPjsg
aW50ZWwtDQo+IGdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gQ2M6IFN1bW1lcnMsIFN0dWFy
dCA8c3R1YXJ0LnN1bW1lcnNAaW50ZWwuY29tPjsgUm9wZXIsIE1hdHRoZXcgRA0KPiA8bWF0dGhl
dy5kLnJvcGVyQGludGVsLmNvbT4NCj4gU3ViamVjdDogUmU6IFtQQVRDSCB2Ml0gZHJtL2k5MTUv
dGdsOiBJbXBsZW1lbnQgV2FfMTQwOTE0MjI1OQ0KPiANCj4gDQo+IA0KPiBPbiA5LzkvMTkgNDox
NCBQTSwgUmFkaGFrcmlzaG5hIFNyaXBhZGEgd3JvdGU6DQo+ID4gRGlzYWJsZSBDUFMgYXdhcmUg
Y29sb3IgcGlwZSBieSBzZXR0aW5nIGNoaWNrZW4gYml0Lg0KPiA+DQo+ID4gQlNwZWM6IDUyODkw
DQo+ID4gSFNERVM6IDE0MDkxNDIyNTkNCj4gPg0KPiA+IHYyOiBNb3ZlIFdBIHRvIGN0eCBXQSdz
KERhbmllbGUpDQo+ID4NCj4gPiBDYzogRGFuaWVsZSBDZXJhb2xvIFNwdXJpbyA8ZGFuaWVsZS5j
ZXJhb2xvc3B1cmlvQGludGVsLmNvbT4NCj4gPiBDYzogU3R1YXJ0IFN1bW1lcnMgPHN0dWFydC5z
dW1tZXJzQGludGVsLmNvbT4NCj4gPiBDYzogTWF0dCBSb3BlciA8bWF0dGhldy5kLnJvcGVyQGlu
dGVsLmNvbT4NCj4gPiBTaWduZWQtb2ZmLWJ5OiBSYWRoYWtyaXNobmEgU3JpcGFkYSA8cmFkaGFr
cmlzaG5hLnNyaXBhZGFAaW50ZWwuY29tPg0KPiANCj4gUmV2aWV3ZWQtYnk6IERhbmllbGUgQ2Vy
YW9sbyBTcHVyaW8gPGRhbmllbGUuY2VyYW9sb3NwdXJpb0BpbnRlbC5jb20+DQo+IA0KPiBEYW5p
ZWxlDQo+IA0KPiA+IC0tLQ0KPiA+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29y
a2Fyb3VuZHMuYyB8IDMgKysrDQo+ID4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5o
ICAgICAgICAgICAgIHwgMSArDQo+ID4gICAyIGZpbGVzIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygr
KQ0KPiA+DQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dv
cmthcm91bmRzLmMNCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91
bmRzLmMNCj4gPiBpbmRleCAyNDNkM2Y3N2JlMTMuLjk1ZWYyZjFkZmRiYiAxMDA2NDQNCj4gPiAt
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jDQo+ID4gKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYw0KPiA+IEBAIC01
NjcsNiArNTY3LDkgQEAgc3RhdGljIHZvaWQgaWNsX2N0eF93b3JrYXJvdW5kc19pbml0KHN0cnVj
dA0KPiBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSwNCj4gPiAgIHN0YXRpYyB2b2lkIHRnbF9jdHhf
d29ya2Fyb3VuZHNfaW5pdChzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUsDQo+ID4gICAJ
CQkJICAgICBzdHJ1Y3QgaTkxNV93YV9saXN0ICp3YWwpDQo+ID4gICB7DQo+ID4gKwkvKiBXYV8x
NDA5MTQyMjU5ICovDQo+ID4gKwlXQV9TRVRfQklUX01BU0tFRChHRU4xMV9DT01NT05fU0xJQ0Vf
Q0hJQ0tFTjMsDQo+ID4gKwkJCSAgR0VOMTJfRElTQUJMRV9DUFNfQVdBUkVfQ09MT1JfUElQRSk7
DQo+ID4gICB9DQo+ID4NCj4gPiAgIHN0YXRpYyB2b2lkDQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgNCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfcmVnLmggaW5kZXggMDA2Y2ZmZDU2YmUyLi41M2UwNzg4MmVmYjcNCj4gPiAxMDA2NDQNCj4g
PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oDQo+ID4gKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaA0KPiA+IEBAIC03NjY4LDYgKzc2NjgsNyBAQCBlbnVt
IHsNCj4gPg0KPiA+ICAgI2RlZmluZSBHRU4xMV9DT01NT05fU0xJQ0VfQ0hJQ0tFTjMNCj4gCV9N
TUlPKDB4NzMwNCkNCj4gPiAgICAgI2RlZmluZSBHRU4xMV9CTEVORF9FTUJfRklYX0RJU0FCTEVf
SU5fUkNDCSgxIDw8IDExKQ0KPiA+ICsgICNkZWZpbmUgR0VOMTJfRElTQUJMRV9DUFNfQVdBUkVf
Q09MT1JfUElQRQkoMSA8PCA5KQ0KPiA+DQo+ID4gICAjZGVmaW5lIEhJWl9DSElDS0VODQo+IAlf
TU1JTygweDcwMTgpDQo+ID4gICAjIGRlZmluZSBDSFZfSFpfOFg4X01PREVfSU5fMVgJCQkJKDEg
PDwNCj4gMTUpDQo+ID4NCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LWdmeA==
