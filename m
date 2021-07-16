Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B6E33CBCBB
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Jul 2021 21:38:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 74F516E9D4;
	Fri, 16 Jul 2021 19:38:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DE42B6E9D2
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Jul 2021 19:38:10 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10047"; a="232626606"
X-IronPort-AV: E=Sophos;i="5.84,245,1620716400"; d="scan'208";a="232626606"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jul 2021 12:38:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,245,1620716400"; d="scan'208";a="491215534"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by fmsmga004.fm.intel.com with ESMTP; 16 Jul 2021 12:38:10 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Fri, 16 Jul 2021 12:38:09 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Fri, 16 Jul 2021 12:38:09 -0700
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2242.010;
 Fri, 16 Jul 2021 12:38:09 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v2 34/50] drm/i915/dg2: Skip shared DPLL
 handling
Thread-Index: AQHXeF6dtYXG4T8he0eiTCVG3BE7SKtGegQA
Date: Fri, 16 Jul 2021 19:38:08 +0000
Message-ID: <9ea790d0fe78cb6bfb27eeda6304ef058ad0c485.camel@intel.com>
References: <20210714031540.3539704-1-matthew.d.roper@intel.com>
 <20210714031540.3539704-35-matthew.d.roper@intel.com>
In-Reply-To: <20210714031540.3539704-35-matthew.d.roper@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.132]
Content-ID: <D06B75C18C8E4347A536F5BF1C58FA12@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2 34/50] drm/i915/dg2: Skip shared DPLL
 handling
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
Cc: "De Marchi, Lucas" <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCAyMDIxLTA3LTEzIGF0IDIwOjE1IC0wNzAwLCBNYXR0IFJvcGVyIHdyb3RlOg0KPiBE
RzIgaGFzIG5vIHNoYXJlZCBEUExMJ3Mgb3IgRERJIGNsb2NrIG11eGluZy4gIFRoZSBQb3J0IFBM
TCBpcyBlbWJlZGRlZA0KPiB3aXRoaW4gdGhlIFBIWS4NCj4gDQo+IEJzcGVjOiA1NDAzMg0KPiBC
c3BlYzogNTQwMzQNCg0KUmV2aWV3ZWQtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uu
c291emFAaW50ZWwuY29tPg0KDQo+IENjOiBMdWNhcyBEZSBNYXJjaGkgPGx1Y2FzLmRlbWFyY2hp
QGludGVsLmNvbT4NCj4gU2lnbmVkLW9mZi1ieTogTWF0dCBSb3BlciA8bWF0dGhldy5kLnJvcGVy
QGludGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Rpc3BsYXkuYyAgfCAxMCArKysrKysrLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2RwbGxfbWdyLmMgfCAgNSArKysrLQ0KPiAgMiBmaWxlcyBjaGFuZ2VkLCAxMSBp
bnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4gaW5kZXggNjVkZGI2Y2ExNmU2Li40NWRjNThk
ZWRmNTcgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGlzcGxheS5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlz
cGxheS5jDQo+IEBAIC0zNDc0LDcgKzM0NzQsOCBAQCBzdGF0aWMgdm9pZCBpY2xfZGRpX2JpZ2pv
aW5lcl9wcmVfZW5hYmxlKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLA0KPiAgCQkg
KiBFbmFibGUgc2VxdWVuY2Ugc3RlcHMgMS03IG9uIGJpZ2pvaW5lciBtYXN0ZXINCj4gIAkJICov
DQo+ICAJCWludGVsX2VuY29kZXJzX3ByZV9wbGxfZW5hYmxlKHN0YXRlLCBtYXN0ZXIpOw0KPiAt
CQlpbnRlbF9lbmFibGVfc2hhcmVkX2RwbGwobWFzdGVyX2NydGNfc3RhdGUpOw0KPiArCQlpZiAo
bWFzdGVyX2NydGNfc3RhdGUtPnNoYXJlZF9kcGxsKQ0KPiArCQkJaW50ZWxfZW5hYmxlX3NoYXJl
ZF9kcGxsKG1hc3Rlcl9jcnRjX3N0YXRlKTsNCj4gIAkJaW50ZWxfZW5jb2RlcnNfcHJlX2VuYWJs
ZShzdGF0ZSwgbWFzdGVyKTsNCj4gIA0KPiAgCQkvKiBhbmQgRFNDIG9uIHNsYXZlICovDQo+IEBA
IC04NjMzLDEwICs4NjM0LDExIEBAIGludGVsX3BpcGVfY29uZmlnX2NvbXBhcmUoY29uc3Qgc3Ry
dWN0IGludGVsX2NydGNfc3RhdGUgKmN1cnJlbnRfY29uZmlnLA0KPiAgDQo+ICAJUElQRV9DT05G
X0NIRUNLX0JPT0woZG91YmxlX3dpZGUpOw0KPiAgDQo+IC0JUElQRV9DT05GX0NIRUNLX1Aoc2hh
cmVkX2RwbGwpOw0KPiArCWlmIChkZXZfcHJpdi0+ZHBsbC5tZ3IpDQo+ICsJCVBJUEVfQ09ORl9D
SEVDS19QKHNoYXJlZF9kcGxsKTsNCj4gIA0KPiAgCS8qIEZJWE1FIGRvIHRoZSByZWFkb3V0IHBy
b3Blcmx5IGFuZCBnZXQgcmlkIG9mIHRoaXMgcXVpcmsgKi8NCj4gLQlpZiAoIVBJUEVfQ09ORl9R
VUlSSyhQSVBFX0NPTkZJR19RVUlSS19CSUdKT0lORVJfU0xBVkUpKSB7DQo+ICsJaWYgKGRldl9w
cml2LT5kcGxsLm1nciAmJiAhUElQRV9DT05GX1FVSVJLKFBJUEVfQ09ORklHX1FVSVJLX0JJR0pP
SU5FUl9TTEFWRSkpIHsNCj4gIAkJUElQRV9DT05GX0NIRUNLX1goZHBsbF9od19zdGF0ZS5kcGxs
KTsNCj4gIAkJUElQRV9DT05GX0NIRUNLX1goZHBsbF9od19zdGF0ZS5kcGxsX21kKTsNCj4gIAkJ
UElQRV9DT05GX0NIRUNLX1goZHBsbF9od19zdGF0ZS5mcDApOw0KPiBAQCAtODY2OCw3ICs4Njcw
LDkgQEAgaW50ZWxfcGlwZV9jb25maWdfY29tcGFyZShjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19z
dGF0ZSAqY3VycmVudF9jb25maWcsDQo+ICAJCVBJUEVfQ09ORl9DSEVDS19YKGRwbGxfaHdfc3Rh
dGUubWdfcGxsX3NzYyk7DQo+ICAJCVBJUEVfQ09ORl9DSEVDS19YKGRwbGxfaHdfc3RhdGUubWdf
cGxsX2JpYXMpOw0KPiAgCQlQSVBFX0NPTkZfQ0hFQ0tfWChkcGxsX2h3X3N0YXRlLm1nX3BsbF90
ZGNfY29sZHN0X2JpYXMpOw0KPiArCX0NCj4gIA0KPiArCWlmICghUElQRV9DT05GX1FVSVJLKFBJ
UEVfQ09ORklHX1FVSVJLX0JJR0pPSU5FUl9TTEFWRSkpIHsNCj4gIAkJUElQRV9DT05GX0NIRUNL
X1goZHNpX3BsbC5jdHJsKTsNCj4gIAkJUElQRV9DT05GX0NIRUNLX1goZHNpX3BsbC5kaXYpOw0K
PiAgDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rw
bGxfbWdyLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwbGxfbWdyLmMN
Cj4gaW5kZXggODgyYmZkNDk5ZTU1Li41Njg4ZDk3MDQ2MzYgMTAwNjQ0DQo+IC0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBsbF9tZ3IuYw0KPiArKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwbGxfbWdyLmMNCj4gQEAgLTQ0NjIsNyArNDQ2
MiwxMCBAQCB2b2lkIGludGVsX3NoYXJlZF9kcGxsX2luaXQoc3RydWN0IGRybV9kZXZpY2UgKmRl
dikNCj4gIAljb25zdCBzdHJ1Y3QgZHBsbF9pbmZvICpkcGxsX2luZm87DQo+ICAJaW50IGk7DQo+
ICANCj4gLQlpZiAoSVNfQUxERVJMQUtFX1AoZGV2X3ByaXYpKQ0KPiArCWlmIChJU19ERzIoZGV2
X3ByaXYpKQ0KPiArCQkvKiBObyBzaGFyZWQgRFBMTHMgb24gREcyOyBwb3J0IFBMTHMgYXJlIHBh
cnQgb2YgdGhlIFBIWSAqLw0KPiArCQlkcGxsX21nciA9IE5VTEw7DQo+ICsJZWxzZSBpZiAoSVNf
QUxERVJMQUtFX1AoZGV2X3ByaXYpKQ0KPiAgCQlkcGxsX21nciA9ICZhZGxwX3BsbF9tZ3I7DQo+
ICAJZWxzZSBpZiAoSVNfQUxERVJMQUtFX1MoZGV2X3ByaXYpKQ0KPiAgCQlkcGxsX21nciA9ICZh
ZGxzX3BsbF9tZ3I7DQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LWdmeAo=
