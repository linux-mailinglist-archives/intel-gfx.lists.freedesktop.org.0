Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CF2C397CD
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Jun 2019 23:32:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B700C89129;
	Fri,  7 Jun 2019 21:32:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6463A89129
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Jun 2019 21:32:09 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Jun 2019 14:32:08 -0700
X-ExtLoop1: 1
Received: from fmsmsx104.amr.corp.intel.com ([10.18.124.202])
 by orsmga001.jf.intel.com with ESMTP; 07 Jun 2019 14:32:08 -0700
Received: from fmsmsx114.amr.corp.intel.com (10.18.116.8) by
 fmsmsx104.amr.corp.intel.com (10.18.124.202) with Microsoft SMTP Server (TLS)
 id 14.3.408.0; Fri, 7 Jun 2019 14:32:08 -0700
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.248]) by
 FMSMSX114.amr.corp.intel.com ([10.18.116.8]) with mapi id 14.03.0415.000;
 Fri, 7 Jun 2019 14:32:08 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Deak, Imre" <imre.deak@intel.com>
Thread-Topic: [PATCH 10/23] drm/i915: Wait for TypeC PHY complete flag to
 clear in safe mode
Thread-Index: AQHVGuYdFcQlXvtmXES5VYvFovAfBKaRMHQA
Date: Fri, 7 Jun 2019 21:32:07 +0000
Message-ID: <39a0736b103d38049de04f82b2520cef8e5d6eb2.camel@intel.com>
References: <20190604145826.16424-1-imre.deak@intel.com>
 <20190604145826.16424-11-imre.deak@intel.com>
In-Reply-To: <20190604145826.16424-11-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.8.212]
Content-ID: <59923D73DF78D54C980DB8EB0F0CF329@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 10/23] drm/i915: Wait for TypeC PHY complete
 flag to clear in safe mode
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

T24gVHVlLCAyMDE5LTA2LTA0IGF0IDE3OjU4ICswMzAwLCBJbXJlIERlYWsgd3JvdGU6DQo+IFRo
ZSBQSFkgc2F0dXMgY29tcGxldGUgZmxhZyBub3JtYWxseSBjbGVhcnMgd2hlbiBkaXNjb25uZWN0
aW5nIHRoZSANCg0Kcy9zYXR1cy9zdGF0dXMNCg0KPiBQSFkNCj4gaW4gRFAtYWx0IG1vZGUgKGFj
aGlldmVkIGJ5IHN3aXRjaGluZyB0byBzYWZlIG1vZGUpLCBzbyB3YWl0IGZvciB0aGUNCj4gZmxh
ZyB0byBjbGVhci4NCj4gDQo+IENjOiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXph
QGludGVsLmNvbT4NCj4gQ2M6IFJvZHJpZ28gVml2aSA8cm9kcmlnby52aXZpQGludGVsLmNvbT4N
Cj4gU2lnbmVkLW9mZi1ieTogSW1yZSBEZWFrIDxpbXJlLmRlYWtAaW50ZWwuY29tPg0KPiAtLS0N
Cj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3RjLmMgfCA0ICsrKysNCj4gIDEgZmlsZSBj
aGFuZ2VkLCA0IGluc2VydGlvbnMoKykNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pbnRlbF90Yy5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfdGMuYw0K
PiBpbmRleCAzZmRjZmEyYmJhZWUuLjg0ZTBjMDY4NzdlYyAxMDA2NDQNCj4gLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaW50ZWxfdGMuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
bnRlbF90Yy5jDQo+IEBAIC0xNDMsNiArMTQzLDEwIEBAIHN0YXRpYyB2b2lkIGljbF90Y19waHlf
c2V0X3NhZmVfbW9kZShzdHJ1Y3QNCj4gaW50ZWxfZGlnaXRhbF9wb3J0ICpkaWdfcG9ydCwNCj4g
IAkJdmFsIHw9IERQX1BIWV9NT0RFX1NUQVRVU19OT1RfU0FGRSh0Y19wb3J0KTsNCj4gIA0KPiAg
CUk5MTVfV1JJVEUoUE9SVF9UWF9ERkxFWERQQ1NTUywgdmFsKTsNCj4gKw0KPiArCWlmIChlbmFi
bGUgJiYgd2FpdF9mb3IoIWljbF90Y19waHlfc3RhdHVzX2NvbXBsZXRlKGRpZ19wb3J0KSwNCj4g
MTApKQ0KPiArCQlEUk1fREVCVUdfRFJJVkVSKCJQb3J0ICVzOiBQSFkgY29tcGxldGUgY2xlYXIg
dGltZWQNCj4gb3V0XG4iLA0KPiArCQkJCSB0Y19wb3J0X25hbWUoZGV2X3ByaXYsIHRjX3BvcnQp
KTsNCg0KTm8gbWVudGlvbiBpbiBzcGVjIHRoYXQgd2UgbmVlZCB0byBkbyB0aGF0IGJ1dCBpdCBz
aG91bGQgbm90IGhhcm0uDQoNClJldmlld2VkLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxq
b3NlLnNvdXphQGludGVsLmNvbT4NCg0KPiAgfQ0KPiAgDQo+ICAvKg0KX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
