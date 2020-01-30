Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 77A4114D515
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Jan 2020 03:02:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB1916E087;
	Thu, 30 Jan 2020 02:02:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4F9D86E087
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Jan 2020 02:02:01 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Jan 2020 18:02:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,380,1574150400"; d="scan'208";a="376920095"
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
 by orsmga004.jf.intel.com with ESMTP; 29 Jan 2020 18:02:00 -0800
Received: from fmsmsx116.amr.corp.intel.com (10.18.116.20) by
 FMSMSX103.amr.corp.intel.com (10.18.124.201) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 29 Jan 2020 18:02:00 -0800
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.3]) by
 fmsmsx116.amr.corp.intel.com ([169.254.2.207]) with mapi id 14.03.0439.000;
 Wed, 29 Jan 2020 18:01:59 -0800
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "chris@chris-wilson.co.uk" <chris@chris-wilson.co.uk>
Thread-Topic: [PATCH] drm/i915: Fix preallocated barrier list append
Thread-Index: AQHV1vsqBhqwYhkSM0yyjo+WRsh7NqgC0TEAgAAFhgCAAAGVAIAAIlsA
Date: Thu, 30 Jan 2020 02:01:59 +0000
Message-ID: <74440170edcb17e6adbe0431f08710974764c83a.camel@intel.com>
References: <20200129232345.84512-1-jose.souza@intel.com>
 <158034081430.14720.1142522476870394698@skylake-alporthouse-com>
 <90fcddaaa6ad112eb4790616b39c8ac4b743460e.camel@intel.com>
 <158034234049.14720.16465394057765431137@skylake-alporthouse-com>
In-Reply-To: <158034234049.14720.16465394057765431137@skylake-alporthouse-com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.13.17]
Content-ID: <2CC4C096F7C2D8468C4478CEB9A926DF@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix preallocated barrier list
 append
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

T24gV2VkLCAyMDIwLTAxLTI5IGF0IDIzOjU5ICswMDAwLCBDaHJpcyBXaWxzb24gd3JvdGU6DQo+
IFF1b3RpbmcgU291emEsIEpvc2UgKDIwMjAtMDEtMjkgMjM6NTM6MjEpDQo+ID4gT24gV2VkLCAy
MDIwLTAxLTI5IGF0IDIzOjMzICswMDAwLCBDaHJpcyBXaWxzb24gd3JvdGU6DQo+ID4gPiBRdW90
aW5nIEpvc8OpIFJvYmVydG8gZGUgU291emEgKDIwMjAtMDEtMjkgMjM6MjM6NDUpDQo+ID4gPiA+
IE9ubHkgdGhlIGZpcnN0IGFuZCB0aGUgbGFzdCBub2RlcyB3ZXJlIGJlaW5nIGFkZGVkIHRvDQo+
ID4gPiA+IHJlZi0+cHJlYWxsb2NhdGVkX2JhcnJpZXJzLg0KPiA+ID4gPiANCj4gPiA+ID4gSSdt
IG5vdCBmYW1pbGlhciB3aXRoIHRoaXMgcGFydCBvZiB0aGUgY29kZSBidXQgaWYgdGhhdCBpcyB0
aGUNCj4gPiA+ID4gZXhwZWN0ZWQgYmVoYXZpb3IgaXQgaXMgbGVha2luZyB0aGUgbm9kZXMgaW4g
YmV0d2Vlbi4NCj4gPiA+ID4gDQo+ID4gPiA+IFJlbmFtaW5nIHZhcmlhYmxlcyB0byBtYWtlIGl0
IG1vcmUgZWFzeSB0byByZWFkLg0KPiA+ID4gPiANCj4gPiA+ID4gRml4ZXM6IDg0MTM1MDIyMzgx
NiAoImRybS9pOTE1L2d0OiBEcm9wIG11dGV4IHNlcmlhbGlzYXRpb24NCj4gPiA+ID4gYmV0d2Vl
bg0KPiA+ID4gPiBjb250ZXh0IHBpbi91bnBpbiIpDQo+ID4gPiA+IENjOiBDaHJpcyBXaWxzb24g
PGNocmlzQGNocmlzLXdpbHNvbi5jby51az4NCj4gPiA+ID4gQ2M6IE1hYXJ0ZW4gTGFua2hvcnN0
IDxtYWFydGVuLmxhbmtob3JzdEBsaW51eC5pbnRlbC5jb20+DQo+ID4gPiA+IFNpZ25lZC1vZmYt
Ynk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPg0KPiA+ID4g
PiAtLS0NCj4gPiA+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfYWN0aXZlLmMgfCAxOSAr
KysrKysrKysrLS0tLS0tLS0tDQo+ID4gPiA+ICAxIGZpbGUgY2hhbmdlZCwgMTAgaW5zZXJ0aW9u
cygrKSwgOSBkZWxldGlvbnMoLSkNCj4gPiA+ID4gDQo+ID4gPiA+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2FjdGl2ZS5jDQo+ID4gPiA+IGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9hY3RpdmUuYw0KPiA+ID4gPiBpbmRleCA5ZDY4MzA4ODVkMmUuLjNkMmU3Y2Y1
NWU1MiAxMDA2NDQNCj4gPiA+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9hY3Rp
dmUuYw0KPiA+ID4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2FjdGl2ZS5jDQo+
ID4gPiA+IEBAIC02MDcsNyArNjA3LDcgQEAgaW50DQo+ID4gPiA+IGk5MTVfYWN0aXZlX2FjcXVp
cmVfcHJlYWxsb2NhdGVfYmFycmllcihzdHJ1Y3QgaTkxNV9hY3RpdmUNCj4gPiA+ID4gKnJlZiwN
Cj4gPiA+ID4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBzdHJ1
Y3QNCj4gPiA+ID4gaW50ZWxfZW5naW5lX2NzDQo+ID4gPiA+ICplbmdpbmUpDQo+ID4gPiA+ICB7
DQo+ID4gPiA+ICAgICAgICAgaW50ZWxfZW5naW5lX21hc2tfdCB0bXAsIG1hc2sgPSBlbmdpbmUt
Pm1hc2s7DQo+ID4gPiA+IC0gICAgICAgc3RydWN0IGxsaXN0X25vZGUgKnBvcyA9IE5VTEwsICpu
ZXh0Ow0KPiA+ID4gPiArICAgICAgIHN0cnVjdCBsbGlzdF9ub2RlICpmaXJzdCA9IE5VTEwsICps
YXN0ID0gTlVMTDsNCj4gPiA+IA0KPiA+ID4gbGFzdCBjYW5ub3QgYmUgTlVMTCBhdCB0aGUgZW5k
Lg0KPiA+IA0KPiA+IGxhc3Qgd2lsbCBiZSBzZXQgaW4gdGhlIGZpcnN0IGl0ZXJhdGlvbiBhbmQg
aXQgd2lsbCBhbHdheXMgaW50ZXJhdGUNCj4gPiBhdA0KPiA+IGxlYXN0IG9uY2UgYmVjYXVzZSB0
aGUgbWFzayB3aWxsIGF0IGxlYXN0IG1hdGNoIHdpdGggdGhlIGVuZ2luZSBpbg0KPiA+IGk5MTVf
YWN0aXZlX2FjcXVpcmVfcHJlYWxsb2NhdGVfYmFycmllcigpIHBhcmFtZXRlci4NCj4gDQo+IEkg
bWVhbnQgdG8gc2F5IGxhc3QgY2Fubm90IGJlIHVuc2V0IGF0IHRoZSBlbmQsIHNvIGluaXRpYWxp
c2luZyBpdCBpcw0KPiBzaWxseS4NCg0KSXQgbmVlZCB0byBiZSBpbml0aWFsaXplZCBzbyBpdCBp
cyBzZXQgaW4gdGhlIGZpcnN0IGl0ZXJhdGlvbiB0byBwb2ludA0KdG8gdGhlIGxhc3Qgbm9kZS4N
Cg0KPiAtQ2hyaXMNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eAo=
