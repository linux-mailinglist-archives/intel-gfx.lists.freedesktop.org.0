Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D0B02386CA3
	for <lists+intel-gfx@lfdr.de>; Mon, 17 May 2021 23:51:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A72326E43C;
	Mon, 17 May 2021 21:51:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 726A86E43C
 for <intel-gfx@lists.freedesktop.org>; Mon, 17 May 2021 21:51:25 +0000 (UTC)
IronPort-SDR: 6af0XGqzwfUNcQdc5xUFnYwjEzGDffcqYJEtTcOUEdsYOT6d4q73BNuGdxvtEt7H29Km19dA3a
 zYe/VRPpLNVQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9987"; a="286104250"
X-IronPort-AV: E=Sophos;i="5.82,307,1613462400"; d="scan'208";a="286104250"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2021 14:51:24 -0700
IronPort-SDR: ygrQPz7bOaa6eWx2IFBcrkVfOSeEJyJ4vv3qyXU5bhVRj54PNisANeCDuE583fd21sHpdC/f6S
 hRq345mgw2pg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,307,1613462400"; d="scan'208";a="439111166"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by orsmga008.jf.intel.com with ESMTP; 17 May 2021 14:51:24 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Mon, 17 May 2021 14:51:23 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Mon, 17 May 2021 14:51:23 -0700
Received: from fmsmsx610.amr.corp.intel.com ([10.18.126.90]) by
 fmsmsx610.amr.corp.intel.com ([10.18.126.90]) with mapi id 15.01.2242.008;
 Mon, 17 May 2021 14:51:23 -0700
From: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "Souza, Jose" <jose.souza@intel.com>
Thread-Topic: [Intel-gfx] [PATCH CI] drm/i915: Initialize err in remap_io_sg()
Thread-Index: AQHXS1oFub/HfVMf1E6mA7FjY1SY76rolb0AgAAWdAA=
Date: Mon, 17 May 2021 21:51:23 +0000
Message-ID: <1f6d9ab532ed5ef647e99599424301e8305f1da0.camel@intel.com>
References: <20210517202117.179303-1-jose.souza@intel.com>
 <d2977a3b9dfe650aa1600b507c3902c884afc2d9.camel@intel.com>
 <87o8d9f6gr.fsf@intel.com>
In-Reply-To: <87o8d9f6gr.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.38.4 (3.38.4-1.fc33) 
x-originating-ip: [10.1.200.100]
Content-ID: <890644494EF6C544BA0E470C2C4AA0CC@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH CI] drm/i915: Initialize err in remap_io_sg()
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

T24gTW9uLCAyMDIxLTA1LTE3IGF0IDIzOjMxICswMzAwLCBKYW5pIE5pa3VsYSB3cm90ZToNCj4g
T24gTW9uLCAxNyBNYXkgMjAyMSwgIlNvdXphLCBKb3NlIiA8am9zZS5zb3V6YUBpbnRlbC5jb20+
IHdyb3RlOg0KPiA+IFJvZHJpZ28sIEphbmk6IFNvICJpOTE1OiBmaXggcmVtYXBfaW9fc2cgdG8g
dmVyaWZ5IHRoZSBwZ3Byb3QiIHdhcw0KPiA+IG5vdCBtZXJnZWQgaW50byBhbnkgZHJtLWludGVs
IGJyYW5jaCwgaG93IHNob3VsZCBJIG1lcmdlIHRoaXMgYWZ0ZXINCj4gPiBnZXQgQ0kgZ3JlZW4N
Cj4gPiBsaWdodD8NCj4gDQo+IEkgdGhpbmsgUm9kcmlnbyBzaG91bGQgZG8gYSBiYWNrbWVyZ2Uu
DQoNCmRvbmUuLi4gcHVzaGluZyByaWdodCBub3cuLi4gc29ycnkgZm9yIHRoZSBkZWxheQ0KDQo+
IA0KPiBCUiwNCj4gSmFuaS4NCj4gDQo+IA0KPiA+IA0KPiA+IE9uIE1vbiwgMjAyMS0wNS0xNyBh
dCAxMzoyMSAtMDcwMCwgSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSB3cm90ZToNCj4gPiA+IElmIHRo
ZSBkbyB3aGlsZSBsb29wIGJyZWFrcyBpbiAnaWYgKCFzZ19kbWFfbGVuKHNnbCkpJyBpbiB0aGUN
Cj4gPiA+IGZpcnN0DQo+ID4gPiBpdGVyYXRpb24sIGVyciBpcyB1bmluaXRpYWxpemVkIGNhdXNp
bmcgYSB3cm9uZyBjYWxsIHRvDQo+ID4gPiB6YXBfdm1hX3B0ZXMoKS4NCj4gPiA+IA0KPiA+ID4g
QnV0IHRoYXQgaXMgaW1wb3NzaWJsZSB0byBoYXBwZW4gYXMgYSBzY2F0dGVybGlzdCBtdXN0IGhh
dmUgYXQNCj4gPiA+IGxlYXN0DQo+ID4gPiBvbmUgdmFsaWQgc2VnbWVudC4NCj4gPiA+IEFueXdh
eXMgdG8gYXZvaWQgbW9yZSByZXBvcnRzIGZyb20gc3RhdGljIGNoZWNrZXJzIGluaXRpYWxpemlu
Zw0KPiA+ID4gcmV0DQo+ID4gPiBoZXJlLg0KPiA+ID4gDQo+ID4gPiBGaXhlczogYjEyZDY5MWVh
NWUwICgiaTkxNTogZml4IHJlbWFwX2lvX3NnIHRvIHZlcmlmeSB0aGUNCj4gPiA+IHBncHJvdCIp
DQo+ID4gPiBSZXZpZXdlZC1ieTogQ2hyaXN0b3BoIEhlbGx3aWcgPGhjaEBsc3QuZGU+DQo+ID4g
PiBDYzogQ2hyaXN0b3BoIEhlbGx3aWcgPGhjaEBsc3QuZGU+DQo+ID4gPiBTaWduZWQtb2ZmLWJ5
OiBKYW1lcyBBdXNtdXMgPGphbWVzLmF1c211c0BpbnRlbC5jb20+DQo+ID4gPiBTaWduZWQtb2Zm
LWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4NCj4gPiA+
IC0tLQ0KPiA+ID4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X21tLmMgfCAyICstDQo+ID4g
PiDCoDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQ0KPiA+ID4g
DQo+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9tbS5jDQo+ID4g
PiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfbW0uYw0KPiA+ID4gaW5kZXggNGM4Y2QwOGM2
NzJkLi4yNTU3NmZhNzNmZjAgMTAwNjQ0DQo+ID4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X21tLmMNCj4gPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfbW0uYw0K
PiA+ID4gQEAgLTQ3LDcgKzQ3LDcgQEAgaW50IHJlbWFwX2lvX3NnKHN0cnVjdCB2bV9hcmVhX3N0
cnVjdCAqdm1hLA0KPiA+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBzdHJ1Y3Qg
c2NhdHRlcmxpc3QgKnNnbCwgcmVzb3VyY2Vfc2l6ZV90IGlvYmFzZSkNCj4gPiA+IMKgew0KPiA+
ID4gwqDCoMKgwqDCoMKgwqDCoHVuc2lnbmVkIGxvbmcgcGZuLCBsZW4sIHJlbWFwcGVkID0gMDsN
Cj4gPiA+IC3CoMKgwqDCoMKgwqDCoGludCBlcnI7DQo+ID4gPiArwqDCoMKgwqDCoMKgwqBpbnQg
ZXJyID0gMDsNCj4gPiA+IMKgDQo+ID4gPiDCoMKgwqDCoMKgwqDCoMKgLyogV2UgcmVseSBvbiBw
cmV2YWxpZGF0aW9uIG9mIHRoZSBpby1tYXBwaW5nIHRvIHNraXANCj4gPiA+IHRyYWNrX3Bmbigp
LiAqLw0KPiA+ID4gwqDCoMKgwqDCoMKgwqDCoEdFTV9CVUdfT04oKHZtYS0+dm1fZmxhZ3MgJiBF
WFBFQ1RFRF9GTEFHUykgIT0NCj4gPiA+IEVYUEVDVEVEX0ZMQUdTKTsNCj4gPiANCj4gPiBfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KPiA+IEludGVsLWdm
eCBtYWlsaW5nIGxpc3QNCj4gPiBJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+ID4g
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngN
Cj4gDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
