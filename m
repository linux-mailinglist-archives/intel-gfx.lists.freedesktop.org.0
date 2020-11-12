Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5ACD72B0657
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Nov 2020 14:22:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9F83C6E226;
	Thu, 12 Nov 2020 13:22:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 672476E226
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Nov 2020 13:22:55 +0000 (UTC)
IronPort-SDR: MJT856w4P393a7R5fj5yV0CUSH0Qg4fUPHIOI3vk4E/0QCuY6ky7JlP2mc5Fr1YW3HcxesJy8F
 Cw8jSmm5ziiA==
X-IronPort-AV: E=McAfee;i="6000,8403,9802"; a="166798926"
X-IronPort-AV: E=Sophos;i="5.77,472,1596524400"; d="scan'208";a="166798926"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2020 05:22:54 -0800
IronPort-SDR: Sh9p6Be9zP2WgXkknZCoLuuHfUsYysAg04bxjJBz/Ft1BdJ8cb3oRW6jT0Qf8AmCJz/CTFIDzC
 mJqmY0SFBO9A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,472,1596524400"; d="scan'208";a="357087200"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga004.fm.intel.com with ESMTP; 12 Nov 2020 05:22:54 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 12 Nov 2020 05:22:54 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 12 Nov 2020 05:22:53 -0800
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.1713.004;
 Thu, 12 Nov 2020 05:22:53 -0800
From: "Souza, Jose" <jose.souza@intel.com>
To: "De Marchi, Lucas" <lucas.demarchi@intel.com>
Thread-Topic: [PATCH 1/2] drm/i915/display: Group DC9 mask set
Thread-Index: AQHWuEccZQGFgOxozEeO5h1KmxIh0KnD9EsAgAEPGwA=
Date: Thu, 12 Nov 2020 13:22:53 +0000
Message-ID: <3243c71ee30de3f9d87a5e8267d5c9ab7a3bff0e.camel@intel.com>
References: <20201111162408.98002-1-jose.souza@intel.com>
 <20201111211232.btab3cuyde6elhbq@ldmartin-desk1>
In-Reply-To: <20201111211232.btab3cuyde6elhbq@ldmartin-desk1>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.132]
Content-ID: <670DDB9E086A114994C349BDFAFA15C4@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/display: Group DC9 mask set
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

T24gV2VkLCAyMDIwLTExLTExIGF0IDEzOjEyIC0wODAwLCBMdWNhcyBEZSBNYXJjaGkgd3JvdGU6
DQo+IE9uIFdlZCwgTm92IDExLCAyMDIwIGF0IDA4OjI0OjA3QU0gLTA4MDAsIEpvc2UgU291emEg
d3JvdGU6DQo+ID4gREM5IGhhcyBhIHNlcGFyYXRlIEhXIGZsb3cgZnJvbSB0aGUgcmVzdCBvZiB0
aGUgREMgc3RhdGVzIGFuZCBpdCBpcw0KPiA+IGF2YWlsYWJsZSBpbiBHRU45IExQIHBsYXRmb3Jt
cyBhbmQgb24gR0VOMTEgYW5kIG5ld2VyLCBzbyBoZXJlDQo+ID4gbW92aW5nIHRoZSBhc3NpZ25t
ZW50IG9mIHRoZSBtYXNrIHRvIGEgc2luZ2xlIGNvbmRpdGlvbmFsIGJsb2NrIHRvDQo+ID4gc2lt
cGxpZmx5IGNvZGUuDQo+ID4gDQo+ID4gQ2M6IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJj
aGlAaW50ZWwuY29tPg0KPiA+IENjOiBBbnVzaGEgU3JpdmF0c2EgPGFudXNoYS5zcml2YXRzYUBp
bnRlbC5jb20+DQo+ID4gU2lnbmVkLW9mZi1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9z
ZS5zb3V6YUBpbnRlbC5jb20+DQo+ID4gLS0tDQo+ID4gLi4uL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2Rpc3BsYXlfcG93ZXIuYyB8IDE4ICsrKysrKysrLS0tLS0tLS0tLQ0KPiA+IDEgZmls
ZSBjaGFuZ2VkLCA4IGluc2VydGlvbnMoKyksIDEwIGRlbGV0aW9ucygtKQ0KPiA+IA0KPiA+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93
ZXIuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5j
DQo+ID4gaW5kZXggNjg5OTIyNDgwNjYxLi40OGQ0MWE0M2ZiYjIgMTAwNjQ0DQo+ID4gLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmMNCj4gPiAr
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93ZXIuYw0K
PiA+IEBAIC00NDk3LDI2ICs0NDk3LDI0IEBAIHN0YXRpYyB1MzIgZ2V0X2FsbG93ZWRfZGNfbWFz
ayhjb25zdCBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsDQo+ID4gCQkJbWF4X2Rj
ID0gMzsNCj4gPiAJCWVsc2UNCj4gPiAJCQltYXhfZGMgPSA0Ow0KPiA+IC0JCS8qDQo+ID4gLQkJ
ICogREM5IGhhcyBhIHNlcGFyYXRlIEhXIGZsb3cgZnJvbSB0aGUgcmVzdCBvZiB0aGUgREMgc3Rh
dGVzLA0KPiA+IC0JCSAqIG5vdCBkZXBlbmRpbmcgb24gdGhlIERNQyBmaXJtd2FyZS4gSXQncyBu
ZWVkZWQgYnkgc3lzdGVtDQo+ID4gLQkJICogc3VzcGVuZC9yZXN1bWUsIHNvIGFsbG93IGl0IHVu
Y29uZGl0aW9uYWxseS4NCj4gPiAtCQkgKi8NCj4gPiAtCQltYXNrID0gRENfU1RBVEVfRU5fREM5
Ow0KPiA+IAl9IGVsc2UgaWYgKElTX0dFTihkZXZfcHJpdiwgMTEpKSB7DQo+ID4gCQltYXhfZGMg
PSAyOw0KPiA+IC0JCW1hc2sgPSBEQ19TVEFURV9FTl9EQzk7DQo+ID4gCX0gZWxzZSBpZiAoSVNf
R0VOKGRldl9wcml2LCAxMCkgfHwgSVNfR0VOOV9CQyhkZXZfcHJpdikpIHsNCj4gPiAJCW1heF9k
YyA9IDI7DQo+ID4gLQkJbWFzayA9IDA7DQo+ID4gCX0gZWxzZSBpZiAoSVNfR0VOOV9MUChkZXZf
cHJpdikpIHsNCj4gPiAJCW1heF9kYyA9IDE7DQo+ID4gLQkJbWFzayA9IERDX1NUQVRFX0VOX0RD
OTsNCj4gPiAJfSBlbHNlIHsNCj4gPiAJCW1heF9kYyA9IDA7DQo+ID4gLQkJbWFzayA9IDA7DQo+
ID4gCX0NCj4gPiANCj4gPiArCS8qDQo+ID4gKwkgKiBEQzkgaGFzIGEgc2VwYXJhdGUgSFcgZmxv
dyBmcm9tIHRoZSByZXN0IG9mIHRoZSBEQyBzdGF0ZXMsDQo+ID4gKwkgKiBub3QgZGVwZW5kaW5n
IG9uIHRoZSBETUMgZmlybXdhcmUuIEl0J3MgbmVlZGVkIGJ5IHN5c3RlbQ0KPiA+ICsJICogc3Vz
cGVuZC9yZXN1bWUsIHNvIGFsbG93IGl0IHVuY29uZGl0aW9uYWxseS4NCj4gPiArCSAqLw0KPiA+
ICsJbWFzayA9IElTX0dFTjlfTFAoZGV2X3ByaXYpIHx8IElOVEVMX0dFTihkZXZfcHJpdikgPj0g
MTEgPw0KPiA+ICsJICAgICAgIERDX1NUQVRFX0VOX0RDOSA6IDA7DQo+IA0KPiBodW1uLi4uIHRo
ZXNlIDIgY29uZGl0aW9ucyBoZXJlIGluIGEgdGVybmFyeSBvcGVyYXRvciBpcyBzb21ldGhpbmcg
dGhhdA0KPiB3aWxsIHByb2JhYmx5IGdldCBldmVuIGhhcmRlciB0byByZWFkIGlmIHdlIGhhdmUg
dG8gYWRkIG1vcmUgY29uZGl0aW9ucy4NCj4gTWF5YmUganVzdCBtb3ZlIHRoZSBkZWZhdWx0IHZh
bHVlIHRvIHRoZSBkZWNsYXJhdGlvbiAobWFzayA9IDApIGFuZCBoZXJlDQo+IHlvdSBkbzoNCj4g
DQo+IGlmIChJU19HRU45X0xQKGRldl9wcml2KSB8fCBJTlRFTF9HRU4oZGV2X3ByaXYpID49IDEx
KQ0KPiAJbWFzayA9IERDX1NUQVRFX0VOX0RDOTsNCj4gDQo+ID8NCj4gDQo+IFVwIHRvIHlvdS4g
Q2hhbmdlIGxvb2tzIGNvcnJlY3QNCg0KV2lsbCBrZWVwIHRoZSB3YXkgdGhpcyBwYXRjaCBpcyBh
cyBJIGJlbGlldmUgdGhhdCBhbGwgbmV3IHBsYXRmb3JtcyB3aWxsIHN1cHBvcnQgREM5IHNvIHRo
aXMgYmxvY2sgd2lsbCBub3QgY2hhbmdlIGJ1dCBpZiBpdCBoYXBwZW5zIHdlIHNob3VsZCBkbyBs
aWtlDQp5b3Ugc3VnZ2VzdGVkLg0KDQo+IA0KPiANCj4gUmV2aWV3ZWQtYnk6IEx1Y2FzIERlIE1h
cmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPg0KDQp0aGFua3MNCg0KPiANCj4gTHVjYXMg
RGUgTWFyY2hpDQo+IA0KPiA+ICsNCj4gPiAJaWYgKCFkZXZfcHJpdi0+cGFyYW1zLmRpc2FibGVf
cG93ZXJfd2VsbCkNCj4gPiAJCW1heF9kYyA9IDA7DQo+ID4gDQo+ID4gLS0gDQo+ID4gMi4yOS4y
DQo+ID4gDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
