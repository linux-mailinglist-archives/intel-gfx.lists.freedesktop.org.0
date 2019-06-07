Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D3F73991E
	for <lists+intel-gfx@lfdr.de>; Sat,  8 Jun 2019 00:49:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5F4808919F;
	Fri,  7 Jun 2019 22:49:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 453EA8919F
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Jun 2019 22:49:32 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Jun 2019 15:49:31 -0700
X-ExtLoop1: 1
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
 by orsmga006.jf.intel.com with ESMTP; 07 Jun 2019 15:49:31 -0700
Received: from fmsmsx157.amr.corp.intel.com (10.18.116.73) by
 FMSMSX103.amr.corp.intel.com (10.18.124.201) with Microsoft SMTP Server (TLS)
 id 14.3.408.0; Fri, 7 Jun 2019 15:49:22 -0700
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.248]) by
 FMSMSX157.amr.corp.intel.com ([169.254.14.229]) with mapi id 14.03.0415.000;
 Fri, 7 Jun 2019 15:49:22 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Deak, Imre" <imre.deak@intel.com>
Thread-Topic: [Intel-gfx] [PATCH 15/23] drm/i915: Sanitize the TypeC FIA
 lane configuration decoding
Thread-Index: AQHVGuYtYT5TfSuHCk+HZZY4FG5Id6aRRgqA
Date: Fri, 7 Jun 2019 22:49:21 +0000
Message-ID: <9a8f7c00b00bfcdd8deef74a364407ee8cebf97a.camel@intel.com>
References: <20190604145826.16424-1-imre.deak@intel.com>
 <20190604145826.16424-16-imre.deak@intel.com>
In-Reply-To: <20190604145826.16424-16-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.8.212]
Content-ID: <3E3F83F92B353946A40DACDD917D3121@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 15/23] drm/i915: Sanitize the TypeC FIA lane
 configuration decoding
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

T24gVHVlLCAyMDE5LTA2LTA0IGF0IDE3OjU4ICswMzAwLCBJbXJlIERlYWsgd3JvdGU6DQo+IFVz
ZSBoZXggbnVtYmVycywgc2luY2UgdGhhdCBtYWtlcyBtb3JlIHNlbnNlIHdoZW4gZGVjb2Rpbmcg
YSBiaXQNCj4gcGF0dGVybi4NCj4gDQo+IE5vIGZ1bmN0aW9uYWwgY2hhbmdlLg0KDQpSZXZpZXdl
ZC1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+DQoNCj4g
DQo+IFN1Z2dlc3RlZC1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4Lmlu
dGVsLmNvbT4NCj4gQ2M6IEFuaW1lc2ggTWFubmEgPGFuaW1lc2gubWFubmFAaW50ZWwuY29tPg0K
PiBDYzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4g
U2lnbmVkLW9mZi1ieTogSW1yZSBEZWFrIDxpbXJlLmRlYWtAaW50ZWwuY29tPg0KPiAtLS0NCj4g
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3RjLmMgfCAxNSArKysrKysrKy0tLS0tLS0NCj4g
IDEgZmlsZSBjaGFuZ2VkLCA4IGluc2VydGlvbnMoKyksIDcgZGVsZXRpb25zKC0pDQo+IA0KPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfdGMuYw0KPiBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2ludGVsX3RjLmMNCj4gaW5kZXggZmMwMzQxZGM1MGM1Li40YjJmNTI1YmMy
YTYgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3RjLmMNCj4gKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfdGMuYw0KPiBAQCAtNzIsMTUgKzcyLDE2IEBA
IGludCBpbnRlbF90Y19wb3J0X2ZpYV9tYXhfbGFuZV9jb3VudChzdHJ1Y3QNCj4gaW50ZWxfZGln
aXRhbF9wb3J0ICpkaWdfcG9ydCkNCj4gIAlzd2l0Y2ggKGxhbmVfaW5mbykgew0KPiAgCWRlZmF1
bHQ6DQo+ICAJCU1JU1NJTkdfQ0FTRShsYW5lX2luZm8pOw0KPiAtCWNhc2UgMToNCj4gLQljYXNl
IDI6DQo+IC0JY2FzZSA0Og0KPiAtCWNhc2UgODoNCj4gKwkJLyogZmFsbC10aHJvdWdoICovDQo+
ICsJY2FzZSAweDE6DQo+ICsJY2FzZSAweDI6DQo+ICsJY2FzZSAweDQ6DQo+ICsJY2FzZSAweDg6
DQo+ICAJCXJldHVybiAxOw0KPiAtCWNhc2UgMzoNCj4gLQljYXNlIDEyOg0KPiArCWNhc2UgMHgz
Og0KPiArCWNhc2UgMHhjOg0KPiAgCQlyZXR1cm4gMjsNCj4gLQljYXNlIDE1Og0KPiArCWNhc2Ug
MHhmOg0KPiAgCQlyZXR1cm4gNDsNCj4gIAl9DQo+ICB9DQpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZng=
