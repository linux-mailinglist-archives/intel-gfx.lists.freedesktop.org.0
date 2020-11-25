Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 252F02C478C
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Nov 2020 19:26:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8357E6E8ED;
	Wed, 25 Nov 2020 18:26:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D022D6E8ED
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Nov 2020 18:26:40 +0000 (UTC)
IronPort-SDR: n6t+nBD+ftufcmJ9PGwMG7Y5pEJ3Pdsm9ZbgB9NelLTs16HmU1Pye1GybiQYYW9Wc3ltIhJYeK
 7edBHvceG2XA==
X-IronPort-AV: E=McAfee;i="6000,8403,9816"; a="159227809"
X-IronPort-AV: E=Sophos;i="5.78,369,1599548400"; d="scan'208";a="159227809"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2020 10:26:40 -0800
IronPort-SDR: iOjpBsNSJcO1iNXQmRSbx6tB8qdKcXd4E/nUSXe5u4up9FvSKHSqb8EsCu8cg4qkzsfwVBIVE0
 z/vcwCGMUQJg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,369,1599548400"; d="scan'208";a="333087947"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by orsmga006.jf.intel.com with ESMTP; 25 Nov 2020 10:26:40 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 25 Nov 2020 10:26:39 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 25 Nov 2020 10:26:39 -0800
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.1713.004;
 Wed, 25 Nov 2020 10:26:39 -0800
From: "Souza, Jose" <jose.souza@intel.com>
To: "Swarup, Aditya" <aditya.swarup@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915/tgl: Fix REVID macros for TGL to fetch correct
 stepping
Thread-Index: AQHWwsJJJQLgqmR4JkaN5cepxHn4NanZXH+AgABOiICAAAamgA==
Date: Wed, 25 Nov 2020 18:26:39 +0000
Message-ID: <5e8b412d9dfd0f19eb5acdac9cead50c118e346c.camel@intel.com>
References: <20201125003108.156110-1-aditya.swarup@intel.com>
 <dbb6c40948bae851e77b5ce509897c7da85b99f7.camel@intel.com>
 <69d42e64-7609-b040-9c78-9a71948ac3ee@intel.com>
In-Reply-To: <69d42e64-7609-b040-9c78-9a71948ac3ee@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-ID: <C1DE1B52BFF59B4EB8284AEA5A92AD6E@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/tgl: Fix REVID macros for TGL to
 fetch correct stepping
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
Cc: "Nikula,
 Jani" <jani.nikula@intel.com>, "De Marchi, Lucas" <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCAyMDIwLTExLTI1IGF0IDEwOjAzIC0wODAwLCBBZGl0eWEgU3dhcnVwIHdyb3RlOg0K
PiBPbiAxMS8yNS8yMCA1OjIxIEFNLCBTb3V6YSwgSm9zZSB3cm90ZToNCj4gPiBPbiBUdWUsIDIw
MjAtMTEtMjQgYXQgMTY6MzEgLTA4MDAsIEFkaXR5YSBTd2FydXAgd3JvdGU6DQo+ID4gPiBGaXgg
VEdMIFJFVklEIG1hY3JvcyB0byBmZXRjaCBjb3JyZWN0IGRpc3BsYXkvZ3Qgc3RlcHBpbmcgYmFz
ZWQNCj4gPiA+IG9uIFNPQyByZXYgaWQgZnJvbSBJTlRFTF9SRVZJRCgpIG1hY3JvLiBQcmV2aW91
c2x5LCB3ZSB3ZXJlIGp1c3QNCj4gPiA+IHJldHVybmluZyB0aGUgZmlyc3QgZWxlbWVudCBvZiB0
aGUgcmV2aWQgYXJyYXkgaW5zdGVhZCBvZiB1c2luZw0KPiA+ID4gdGhlIGNvcnJlY3QgaW5kZXgg
YmFzZWQgb24gU09DIHJldiBpZC4NCj4gPiA+IA0KPiA+ID4gQWxzbywgYWRkIGFycmF5IGJvdW5k
IGNoZWNrcyBmb3IgVEdMIFJFViBJRCBhcnJheS4gU2luY2UsIHRoZXJlDQo+ID4gPiBtaWdodCBi
ZSBhIHBvc3NpYmlsaXR5IG9mIHVzaW5nIG9sZGVyIGtlcm5lbHMgb24gbGF0ZXN0IHBsYXRmb3Jt
DQo+ID4gPiByZXZpc2lvbiwgcmVzdWx0aW5nIGluIG91dCBvZiBib3VuZHMgYWNjZXNzIGZvciBy
ZXYgSUQgYXJyYXkuDQo+ID4gPiBJbiB0aGlzIHNjZW5hcmlvLCBwcmludCBtZXNzYWdlIGZvciB1
bnN1cHBvcnRlZCByZXYgSUQgYW5kIGFwcGx5DQo+ID4gPiBzZXR0aW5ncyBmb3IgbGF0ZXN0IHJl
diBJRCBhdmFpbGFibGUuDQo+ID4gPiANCj4gPiA+IEZpeGVzOiAoImRybS9pOTE1L3RnbDogRml4
IHN0ZXBwaW5nIFdBIG1hdGNoaW5nIikNCj4gPiA+IENjOiBKb3PDqSBSb2JlcnRvIGRlIFNvdXph
IDxqb3NlLnNvdXphQGludGVsLmNvbT4NCj4gPiA+IENjOiBNYXR0IFJvcGVyIDxtYXR0aGV3LmQu
cm9wZXJAaW50ZWwuY29tPg0KPiA+ID4gQ2M6IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJj
aGlAaW50ZWwuY29tPg0KPiA+ID4gQ2M6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5j
b20+DQo+ID4gPiBDYzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVs
LmNvbT4NCj4gPiA+IFNpZ25lZC1vZmYtYnk6IEFkaXR5YSBTd2FydXAgPGFkaXR5YS5zd2FydXBA
aW50ZWwuY29tPg0KPiA+ID4gLS0tDQo+ID4gPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
ZHJ2LmggfCAzNSArKysrKysrKysrKysrKysrKysrKysrKysrKystLS0tLS0NCj4gPiA+IMKgMSBm
aWxlIGNoYW5nZWQsIDI5IGluc2VydGlvbnMoKyksIDYgZGVsZXRpb25zKC0pDQo+ID4gPiANCj4g
PiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaA0KPiA+ID4gaW5kZXggMTViZThkZWJhZTU0Li4yOWQ1
NWI3MDE3YmUgMTAwNjQ0DQo+ID4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Ry
di5oDQo+ID4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oDQo+ID4gPiBA
QCAtMTU3MiwxNiArMTU3MiwzNyBAQCBlbnVtIHsNCj4gPiA+IMKgCVRHTF9SRVZJRF9EMCwNCj4g
PiA+IMKgfTsNCj4gPiA+IMKgDQo+ID4gPiANCj4gPiA+IA0KPiA+ID4gDQo+ID4gPiANCj4gPiA+
IA0KPiA+ID4gDQo+ID4gPiANCj4gPiA+IC1leHRlcm4gY29uc3Qgc3RydWN0IGk5MTVfcmV2X3N0
ZXBwaW5ncyB0Z2xfdXlfcmV2aWRzW107DQo+ID4gPiAtZXh0ZXJuIGNvbnN0IHN0cnVjdCBpOTE1
X3Jldl9zdGVwcGluZ3MgdGdsX3Jldmlkc1tdOw0KPiA+ID4gK2V4dGVybiBjb25zdCBzdHJ1Y3Qg
aTkxNV9yZXZfc3RlcHBpbmdzIHRnbF91eV9yZXZpZHNbNF07DQo+ID4gPiArZXh0ZXJuIGNvbnN0
IHN0cnVjdCBpOTE1X3Jldl9zdGVwcGluZ3MgdGdsX3Jldmlkc1syXTsNCj4gPiANCj4gPiBOb3Qg
c3VyZSBpZiB0aGUgYWJvdmUgd2lsbCB3b3JrLCBzYXcgYSBjb21tZW50IGZyb20gSmFuaSBwbGVh
c2UgY2hlY2sgdGhhdC4NCj4gDQo+IFRoaXMgd29ya3Mgb3RoZXJ3aXNlIEkgY2FuJ3QgdXNlIEFS
UkFZX1NJWkUoKSBtYWNybyBhcyBpdCBpcyBqdXN0IGFuIGV4dGVybiBkZWNsYXJhdGlvbiwNCj4g
c28gdGhlIHNpemVvZigpIGRvZXNuJ3QgaGF2ZSBjbHVlIGFib3V0IHRoZSBzaXplLiBUaGUgb25s
eSB3YXkgSSBjYW4gdGhpbmsgb2Ygd29ya2luZyANCj4gYXJvdW5kIHRoaXMgaXMgYnkgbW92aW5n
IHRhYmxlcyBoZXJlIGJ1dCBNYXR0J3MgS0JMIFJFVklEIHBhdGNoIHN1Z2dlc3RzIHVudXNlZCB2
YXJpYWJsZXMgZXJyb3JzDQo+IGJ1dCBteSBjb21waWxlciBkaWRuJ3QgY29tcGxhaW4uDQo+IA0K
PiA+IA0KPiA+ID4gKw0KPiA+ID4gKyNkZWZpbmUgVEdMX1VZX1JFVklEX1JBTkdFKHJldmlkKSBc
DQo+ID4gPiArCSgocmV2aWQpIDwgQVJSQVlfU0laRSh0Z2xfdXlfcmV2aWRzKSkNCj4gPiA+ICsN
Cj4gPiA+ICsjZGVmaW5lIFRHTF9SRVZJRF9SQU5HRShyZXZpZCkgXA0KPiA+ID4gKwkoKHJldmlk
KSA8IEFSUkFZX1NJWkUodGdsX3JldmlkcykpDQo+ID4gPiDCoA0KPiA+ID4gDQo+ID4gPiANCj4g
PiA+IA0KPiA+ID4gDQo+ID4gPiANCj4gPiA+IA0KPiA+ID4gDQo+ID4gPiANCj4gPiA+IA0KPiA+
ID4gDQo+ID4gPiANCj4gPiA+IA0KPiA+ID4gDQo+ID4gPiANCj4gPiA+IA0KPiA+ID4gwqBzdGF0
aWMgaW5saW5lIGNvbnN0IHN0cnVjdCBpOTE1X3Jldl9zdGVwcGluZ3MgKg0KPiA+ID4gwqB0Z2xf
cmV2aWRzX2dldChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpDQo+ID4gPiDCoHsN
Cj4gPiA+IC0JaWYgKElTX1RHTF9VKGRldl9wcml2KSB8fCBJU19UR0xfWShkZXZfcHJpdikpDQo+
ID4gPiAtCQlyZXR1cm4gdGdsX3V5X3JldmlkczsNCj4gPiA+IC0JZWxzZQ0KPiA+ID4gLQkJcmV0
dXJuIHRnbF9yZXZpZHM7DQo+ID4gPiArCWNvbnN0IHU4IHJldmlkID0gSU5URUxfUkVWSUQoZGV2
X3ByaXYpOw0KPiA+ID4gKw0KPiA+ID4gKwlpZiAoSVNfVEdMX1UoZGV2X3ByaXYpIHx8IElTX1RH
TF9ZKGRldl9wcml2KSkgew0KPiA+ID4gKwkJaWYgKFRHTF9VWV9SRVZJRF9SQU5HRShyZXZpZCkp
IHsNCj4gPiA+ICsJCQlyZXR1cm4gdGdsX3V5X3JldmlkcyArIHJldmlkOw0KPiA+IA0KPiA+IFdo
eSBub3QgaGVscCByZWFkZXJzIGFuZCBnbyBzaW1wbGU/IHRnbF91eV9yZXZpZHNbcmV2aWRdDQo+
IA0KPiBIbW0gSSB3aWxsIGhhdmUgdG8gY2hhbmdlIHRoZSByZXR1cm4gdHlwZSB0aGVuLCBhcyB5
b3Ugd2VyZSByZXR1cm5pbmcgYSBwb2ludGVyIGFuZCBpbnRyb2R1Y2VzDQo+IGNvbXBpbGVyIGVy
cm9yLiBJIHdpbGwgY2hhbmdlIHRoZSByZXR1cm4gdHlwZS4NCg0KTm8gbmVlZCB0byBjaGFuZ2Ug
dGhlIHJldHVybiB0eXBlLiAmdGdsX3V5X3Jldmlkc1tyZXZpZF0NCg0KDQoNCj4gDQo+ID4gDQo+
ID4gPiArCQl9IGVsc2Ugew0KPiA+ID4gKwkJCWRybV9kYmdfa21zKCZkZXZfcHJpdi0+ZHJtLA0K
PiA+ID4gKwkJCQkgICAgIlVuc3VwcG9ydGVkIFNPQyBzdGVwcGluZyBmb3VuZCAldSwgdXNpbmcg
JWx1IGluc3RlYWRcbiIsDQo+ID4gPiArCQkJCSAgICByZXZpZCwgQVJSQVlfU0laRSh0Z2xfdXlf
cmV2aWRzKSAtIDEpOw0KPiA+ID4gKwkJCXJldHVybiB0Z2xfdXlfcmV2aWRzICsgKEFSUkFZX1NJ
WkUodGdsX3V5X3JldmlkcykgLSAxKTsNCj4gPiA+ICsJCX0NCj4gPiA+ICsJfSBlbHNlIGlmIChU
R0xfUkVWSURfUkFOR0UocmV2aWQpKSB7DQo+ID4gPiArCQlyZXR1cm4gdGdsX3JldmlkcyArIHJl
dmlkOw0KPiA+ID4gKwl9IGVsc2UJew0KPiA+ID4gKwkJZHJtX2RiZ19rbXMoJmRldl9wcml2LT5k
cm0sDQo+ID4gPiArCQkJICAgICJVbnN1cHBvcnRlZCBTT0Mgc3RlcHBpbmcgZm91bmQgJXUsIHVz
aW5nICVsdSBpbnN0ZWFkXG4iLA0KPiA+ID4gKwkJCSAgICByZXZpZCwgQVJSQVlfU0laRSh0Z2xf
cmV2aWRzKSAtIDEpOw0KPiA+ID4gKwkJcmV0dXJuIHRnbF91eV9yZXZpZHMgKyAoQVJSQVlfU0la
RSh0Z2xfcmV2aWRzKSAtIDEpOw0KPiA+ID4gKwl9DQo+ID4gDQo+ID4gSSBiZXQgeW91IGNhbiBy
ZSBhcnJhbmdlIGl0IGFuZCBlbmQgdXAgd2l0aCBvbmUgZHJtX2RiZ19rbXMoKSBjYWxsLg0KPiAN
Cj4gSSBjYW4gYnV0IHRoYXQgd2lsbCBpbnZvbHZlIG1vcmUgbWFjcm9zIGFzIHdlIGFyZSBkZWFs
aW5nIHdpdGggdHdvIGRpZmZlcmVudCBhcnJheSB0YWJsZXMgYW5kIGVhY2ggb25lDQo+IHdpdGgg
YSBkaWZmZXJlbnQgcmFuZ2UuIEkgd2lsbCB1c2UganVzdCBvbmUgcHJpbnQgdG8gc2F5IHdoYXQg
U09DIHJldiBpZCB3ZSBnZXQgZnJvbSBwY2kgZGV2IGFuZCB3aGF0DQo+IHdlIHdpbGwgYmUgdXNp
bmcuIA0KPiANCj4gPiANCj4gPiANCj4gPiA+IMKgfQ0KPiA+ID4gwqANCj4gPiA+IA0KPiA+ID4g
DQo+ID4gPiANCj4gPiA+IA0KPiA+ID4gDQo+ID4gPiANCj4gPiA+IA0KPiA+ID4gwqAjZGVmaW5l
IElTX1RHTF9ESVNQX1JFVklEKHAsIHNpbmNlLCB1bnRpbCkgXA0KPiA+ID4gQEAgLTE1OTEsMTIg
KzE2MTIsMTQgQEAgdGdsX3Jldmlkc19nZXQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9w
cml2KQ0KPiA+ID4gwqANCj4gPiA+IA0KPiA+ID4gDQo+ID4gPiANCj4gPiA+IA0KPiA+ID4gDQo+
ID4gPiANCj4gPiA+IA0KPiA+ID4gwqAjZGVmaW5lIElTX1RHTF9VWV9HVF9SRVZJRChwLCBzaW5j
ZSwgdW50aWwpIFwNCj4gPiA+IMKgCSgoSVNfVEdMX1UocCkgfHwgSVNfVEdMX1kocCkpICYmIFwN
Cj4gPiA+ICsJIFRHTF9VWV9SRVZJRF9SQU5HRShJTlRFTF9SRVZJRChwKSkgJiYgXA0KPiA+ID4g
wqAJIHRnbF91eV9yZXZpZHMtPmd0X3N0ZXBwaW5nID49IChzaW5jZSkgJiYgXA0KPiA+ID4gwqAJ
IHRnbF91eV9yZXZpZHMtPmd0X3N0ZXBwaW5nIDw9ICh1bnRpbCkpDQo+ID4gPiDCoA0KPiA+ID4g
DQo+ID4gPiANCj4gPiA+IA0KPiA+ID4gDQo+ID4gPiANCj4gPiA+IA0KPiA+ID4gDQo+ID4gPiDC
oCNkZWZpbmUgSVNfVEdMX0dUX1JFVklEKHAsIHNpbmNlLCB1bnRpbCkgXA0KPiA+ID4gwqAJKElT
X1RJR0VSTEFLRShwKSAmJiBcDQo+ID4gPiDCoAkgIShJU19UR0xfVShwKSB8fCBJU19UR0xfWShw
KSkgJiYgXA0KPiA+ID4gKwkgVEdMX1JFVklEX1JBTkdFKElOVEVMX1JFVklEKHApKSAmJiBcDQo+
ID4gPiDCoAkgdGdsX3Jldmlkcy0+Z3Rfc3RlcHBpbmcgPj0gKHNpbmNlKSAmJiBcDQo+ID4gPiDC
oAkgdGdsX3Jldmlkcy0+Z3Rfc3RlcHBpbmcgPD0gKHVudGlsKSkNCj4gPiA+IMKgDQo+ID4gPiAN
Cj4gPiA+IA0KPiA+ID4gDQo+ID4gPiANCj4gPiA+IA0KPiA+ID4gDQo+ID4gDQo+ID4gWW91IGRp
ZCBub3QgZml4ZWQgdGhlIGlzc3VlIGZvciBHVC4NCj4gDQo+IFllcy4uIEkgZGlkbid0IG5vdGlj
ZSB0aGF0Li4gV2lsbCBjaGFuZ2UgaW4gdGhlIG5leHQgcmV2aXNpb24uDQo+IA0KPiBBZGl0eWEN
Cj4gDQo+ID4gDQo+ID4gPiANCj4gPiA+IA0KPiA+ID4gDQo+ID4gPiANCj4gPiA+IA0KPiA+IA0K
PiANCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
