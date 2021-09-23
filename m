Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F4B2416859
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Sep 2021 01:10:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7C37A6E123;
	Thu, 23 Sep 2021 23:10:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B6136E123
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Sep 2021 23:10:07 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10116"; a="224006328"
X-IronPort-AV: E=Sophos;i="5.85,318,1624345200"; d="scan'208";a="224006328"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2021 16:10:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,318,1624345200"; d="scan'208";a="614208944"
Received: from irsmsx603.ger.corp.intel.com ([163.33.146.9])
 by fmsmga001.fm.intel.com with ESMTP; 23 Sep 2021 16:10:05 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 irsmsx603.ger.corp.intel.com (163.33.146.9) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Fri, 24 Sep 2021 00:10:03 +0100
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2242.012;
 Thu, 23 Sep 2021 16:10:02 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Deak, Imre" <imre.deak@intel.com>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Thread-Topic: [PATCH 01/13] drm/i915/tc: Fix TypeC port init/resume time
 sanitization
Thread-Index: AQHXrn7hB4J9iykpUUa1ba1jjBQIuauyujQA
Date: Thu, 23 Sep 2021 23:10:01 +0000
Message-ID: <02862d794f0ad9981b2750e8d4549193f72937bb.camel@intel.com>
References: <20210921002313.1132357-1-imre.deak@intel.com>
 <20210921002313.1132357-2-imre.deak@intel.com>
In-Reply-To: <20210921002313.1132357-2-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.132]
Content-Type: text/plain; charset="utf-8"
Content-ID: <FFB7B323A13DBC4D82BFC6FBDC39B477@intel.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 01/13] drm/i915/tc: Fix TypeC port
 init/resume time sanitization
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

T24gVHVlLCAyMDIxLTA5LTIxIGF0IDAzOjIzICswMzAwLCBJbXJlIERlYWsgd3JvdGU6DQo+IEF0
bSBkdXJpbmcgZHJpdmVyIGxvYWRpbmcgYW5kIHN5c3RlbSByZXN1bWUgVHlwZUMgcG9ydHMgYXJl
IGFjY2Vzc2VkDQo+IGJlZm9yZSB0aGVpciBIVy9TVyBzdGF0ZSBpcyBzeW5jZWQuIE1vdmUgdGhl
IFR5cGVDIHBvcnQgc2FuaXRpemF0aW9uIHRvDQo+IHRoZSBlbmNvZGVyJ3Mgc3luY19zdGF0ZSBo
b29rIHRvIGZpeCB0aGlzLg0KPiANCj4gRml4ZXM6IGY5ZTc2YTZlNjhkMyAoImRybS9pOTE1OiBB
ZGQgYW4gZW5jb2RlciBob29rIHRvIHNhbml0aXplIGl0cyBzdGF0ZSBkdXJpbmcgaW5pdC9yZXN1
bWUiKQ0KPiBDYzogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+
DQo+IENjOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiBTaWduZWQtb2ZmLWJ5OiBJbXJlIERlYWsgPGltcmUuZGVha0BpbnRlbC5jb20+DQo+IC0tLQ0K
PiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYyAgICAgfCAgOCArKysr
KysrLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgfCAy
MCArKysrKy0tLS0tLS0tLS0tLS0tLQ0KPiAgMiBmaWxlcyBjaGFuZ2VkLCAxMiBpbnNlcnRpb25z
KCspLCAxNiBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kZGkuYw0KPiBpbmRleCBiYmEwYWI5OTgzNmIxLi5jNGVkNDY3NWY1NzkxIDEwMDY0NA0K
PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jDQo+ICsrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMNCj4gQEAgLTM4NDAsNyAr
Mzg0MCwxMyBAQCB2b2lkIGhzd19kZGlfZ2V0X2NvbmZpZyhzdHJ1Y3QgaW50ZWxfZW5jb2RlciAq
ZW5jb2RlciwNCj4gIHN0YXRpYyB2b2lkIGludGVsX2RkaV9zeW5jX3N0YXRlKHN0cnVjdCBpbnRl
bF9lbmNvZGVyICplbmNvZGVyLA0KPiAgCQkJCSBjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0
ZSAqY3J0Y19zdGF0ZSkNCj4gIHsNCj4gLQlpZiAoaW50ZWxfY3J0Y19oYXNfZHBfZW5jb2Rlcihj
cnRjX3N0YXRlKSkNCj4gKwlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IHRvX2k5MTUo
ZW5jb2Rlci0+YmFzZS5kZXYpOw0KPiArCWVudW0gcGh5IHBoeSA9IGludGVsX3BvcnRfdG9fcGh5
KGk5MTUsIGVuY29kZXItPnBvcnQpOw0KPiArDQo+ICsJaWYgKGludGVsX3BoeV9pc190YyhpOTE1
LCBwaHkpKQ0KPiArCQlpbnRlbF90Y19wb3J0X3Nhbml0aXplKGVuY190b19kaWdfcG9ydChlbmNv
ZGVyKSk7DQoNCk9rYXkgYXQgdGhpcyBwb2ludCB3ZSB3aWxsIG5vdCBoYXZlIGFueSBtc3QgZW5j
b2Rlciwgc28gdGhlIGNoZWNrIGlzIG5vdCBuZWVkZWQuDQoNCj4gKw0KPiArCWlmIChjcnRjX3N0
YXRlICYmIGludGVsX2NydGNfaGFzX2RwX2VuY29kZXIoY3J0Y19zdGF0ZSkpDQo+ICAJCWludGVs
X2RwX3N5bmNfc3RhdGUoZW5jb2RlciwgY3J0Y19zdGF0ZSk7DQo+ICB9DQo+ICANCj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4gaW5kZXggZjZjMGM1
OTVmNjMxMy4uODU0Nzg0MjkzNTM4OSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4gQEAgLTEyMTk0LDE4ICsxMjE5NCwxNiBAQCBzdGF0
aWMgdm9pZCBpbnRlbF9tb2Rlc2V0X3JlYWRvdXRfaHdfc3RhdGUoc3RydWN0IGRybV9kZXZpY2Ug
KmRldikNCj4gIAlyZWFkb3V0X3BsYW5lX3N0YXRlKGRldl9wcml2KTsNCj4gIA0KPiAgCWZvcl9l
YWNoX2ludGVsX2VuY29kZXIoZGV2LCBlbmNvZGVyKSB7DQo+ICsJCXN0cnVjdCBpbnRlbF9jcnRj
X3N0YXRlICpjcnRjX3N0YXRlID0gTlVMTDsNCj4gKw0KPiAgCQlwaXBlID0gMDsNCj4gIA0KPiAg
CQlpZiAoZW5jb2Rlci0+Z2V0X2h3X3N0YXRlKGVuY29kZXIsICZwaXBlKSkgew0KPiAtCQkJc3Ry
dWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGU7DQo+IC0NCj4gIAkJCWNydGMgPSBpbnRl
bF9nZXRfY3J0Y19mb3JfcGlwZShkZXZfcHJpdiwgcGlwZSk7DQo+ICAJCQljcnRjX3N0YXRlID0g
dG9faW50ZWxfY3J0Y19zdGF0ZShjcnRjLT5iYXNlLnN0YXRlKTsNCj4gIA0KPiAgCQkJZW5jb2Rl
ci0+YmFzZS5jcnRjID0gJmNydGMtPmJhc2U7DQo+ICAJCQlpbnRlbF9lbmNvZGVyX2dldF9jb25m
aWcoZW5jb2RlciwgY3J0Y19zdGF0ZSk7DQo+IC0JCQlpZiAoZW5jb2Rlci0+c3luY19zdGF0ZSkN
Cj4gLQkJCQllbmNvZGVyLT5zeW5jX3N0YXRlKGVuY29kZXIsIGNydGNfc3RhdGUpOw0KPiAgDQo+
ICAJCQkvKiByZWFkIG91dCB0byBzbGF2ZSBjcnRjIGFzIHdlbGwgZm9yIGJpZ2pvaW5lciAqLw0K
PiAgCQkJaWYgKGNydGNfc3RhdGUtPmJpZ2pvaW5lcikgew0KPiBAQCAtMTIyMjAsNiArMTIyMTgs
OSBAQCBzdGF0aWMgdm9pZCBpbnRlbF9tb2Rlc2V0X3JlYWRvdXRfaHdfc3RhdGUoc3RydWN0IGRy
bV9kZXZpY2UgKmRldikNCj4gIAkJCWVuY29kZXItPmJhc2UuY3J0YyA9IE5VTEw7DQo+ICAJCX0N
Cj4gIA0KPiArCQlpZiAoZW5jb2Rlci0+c3luY19zdGF0ZSkNCj4gKwkJCWVuY29kZXItPnN5bmNf
c3RhdGUoZW5jb2RlciwgY3J0Y19zdGF0ZSk7DQoNCkNhbGwgc3luY19zdGF0ZSgpIHdpdGggYSBu
dWxsIGNydGNfc3RhdGUgd2lsbCBjYXVzZSBhIGNyYXNoIGluIGdlbjExX2RzaV9zeW5jX3N0YXRl
KCkuDQoNCmdlbjExX2RzaV9zeW5jX3N0YXRlKCkgaXMgdGhlIG9ubHkgdXNlciBvZiBjcnRjX3N0
YXRlIGJ1dCBpdCBvbmx5IHdhbnRzIHRvIGtub3cgd2hhdCBpcyB0aGUgcGlwZSwgbWF5YmUgdG8g
YmUgc2FmZXIgY2hhbmdlIHRoZSBhcmd1bWVudCB0byBlbnVtIHBpcGU/DQoNCj4gKw0KPiAgCQlk
cm1fZGJnX2ttcygmZGV2X3ByaXYtPmRybSwNCj4gIAkJCSAgICAiW0VOQ09ERVI6JWQ6JXNdIGh3
IHN0YXRlIHJlYWRvdXQ6ICVzLCBwaXBlICVjXG4iLA0KPiAgCQkJICAgIGVuY29kZXItPmJhc2Uu
YmFzZS5pZCwgZW5jb2Rlci0+YmFzZS5uYW1lLA0KPiBAQCAtMTI1MDIsMTcgKzEyNTAzLDYgQEAg
aW50ZWxfbW9kZXNldF9zZXR1cF9od19zdGF0ZShzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LA0KPiAg
CWludGVsX21vZGVzZXRfcmVhZG91dF9od19zdGF0ZShkZXYpOw0KPiAgDQo+ICAJLyogSFcgc3Rh
dGUgaXMgcmVhZCBvdXQsIG5vdyB3ZSBuZWVkIHRvIHNhbml0aXplIHRoaXMgbWVzcy4gKi8NCj4g
LQ0KPiAtCS8qIFNhbml0aXplIHRoZSBUeXBlQyBwb3J0IG1vZGUgdXBmcm9udCwgZW5jb2RlcnMg
ZGVwZW5kIG9uIHRoaXMgKi8NCj4gLQlmb3JfZWFjaF9pbnRlbF9lbmNvZGVyKGRldiwgZW5jb2Rl
cikgew0KPiAtCQllbnVtIHBoeSBwaHkgPSBpbnRlbF9wb3J0X3RvX3BoeShkZXZfcHJpdiwgZW5j
b2Rlci0+cG9ydCk7DQo+IC0NCj4gLQkJLyogV2UgbmVlZCB0byBzYW5pdGl6ZSBvbmx5IHRoZSBN
U1QgcHJpbWFyeSBwb3J0LiAqLw0KPiAtCQlpZiAoZW5jb2Rlci0+dHlwZSAhPSBJTlRFTF9PVVRQ
VVRfRFBfTVNUICYmDQo+IC0JCSAgICBpbnRlbF9waHlfaXNfdGMoZGV2X3ByaXYsIHBoeSkpDQo+
IC0JCQlpbnRlbF90Y19wb3J0X3Nhbml0aXplKGVuY190b19kaWdfcG9ydChlbmNvZGVyKSk7DQo+
IC0JfQ0KPiAtDQo+ICAJZ2V0X2VuY29kZXJfcG93ZXJfZG9tYWlucyhkZXZfcHJpdik7DQo+ICAN
Cj4gIAlpZiAoSEFTX1BDSF9JQlgoZGV2X3ByaXYpKQ0KDQo=
