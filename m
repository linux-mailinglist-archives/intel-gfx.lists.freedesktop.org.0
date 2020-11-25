Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A86A2C4109
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Nov 2020 14:21:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1F4DD6E40D;
	Wed, 25 Nov 2020 13:21:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 99D0F6E40D
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Nov 2020 13:21:53 +0000 (UTC)
IronPort-SDR: JWLlRTATE0emwwYCadBTrTmjnL1FOyr6NLI5VdXlfrWYpRa9rihhMdKD/C9Ttiqf9SOFUeZ8DW
 PB7fz36pyEcw==
X-IronPort-AV: E=McAfee;i="6000,8403,9815"; a="168620221"
X-IronPort-AV: E=Sophos;i="5.78,368,1599548400"; d="scan'208";a="168620221"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2020 05:21:50 -0800
IronPort-SDR: vgQ89QXG+s6XSO6SJTyxMTF8b5WiL6e6prrj6PC6ew7/qayApjL0M2ndcy6BCv1DukJwoAjHsL
 V8/ThXZ3CBlg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,368,1599548400"; d="scan'208";a="535302437"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by fmsmga006.fm.intel.com with ESMTP; 25 Nov 2020 05:21:50 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 25 Nov 2020 05:21:50 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 25 Nov 2020 05:21:50 -0800
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.1713.004;
 Wed, 25 Nov 2020 05:21:50 -0800
From: "Souza, Jose" <jose.souza@intel.com>
To: "Swarup, Aditya" <aditya.swarup@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915/tgl: Fix REVID macros for TGL to fetch correct
 stepping
Thread-Index: AQHWwsJJJQLgqmR4JkaN5cepxHn4NanZXH+A
Date: Wed, 25 Nov 2020 13:21:49 +0000
Message-ID: <dbb6c40948bae851e77b5ce509897c7da85b99f7.camel@intel.com>
References: <20201125003108.156110-1-aditya.swarup@intel.com>
In-Reply-To: <20201125003108.156110-1-aditya.swarup@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-ID: <6D2A3E0620901C4F920881C52D958EA2@intel.com>
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

T24gVHVlLCAyMDIwLTExLTI0IGF0IDE2OjMxIC0wODAwLCBBZGl0eWEgU3dhcnVwIHdyb3RlOg0K
PiBGaXggVEdMIFJFVklEIG1hY3JvcyB0byBmZXRjaCBjb3JyZWN0IGRpc3BsYXkvZ3Qgc3RlcHBp
bmcgYmFzZWQNCj4gb24gU09DIHJldiBpZCBmcm9tIElOVEVMX1JFVklEKCkgbWFjcm8uIFByZXZp
b3VzbHksIHdlIHdlcmUganVzdA0KPiByZXR1cm5pbmcgdGhlIGZpcnN0IGVsZW1lbnQgb2YgdGhl
IHJldmlkIGFycmF5IGluc3RlYWQgb2YgdXNpbmcNCj4gdGhlIGNvcnJlY3QgaW5kZXggYmFzZWQg
b24gU09DIHJldiBpZC4NCj4gDQo+IEFsc28sIGFkZCBhcnJheSBib3VuZCBjaGVja3MgZm9yIFRH
TCBSRVYgSUQgYXJyYXkuIFNpbmNlLCB0aGVyZQ0KPiBtaWdodCBiZSBhIHBvc3NpYmlsaXR5IG9m
IHVzaW5nIG9sZGVyIGtlcm5lbHMgb24gbGF0ZXN0IHBsYXRmb3JtDQo+IHJldmlzaW9uLCByZXN1
bHRpbmcgaW4gb3V0IG9mIGJvdW5kcyBhY2Nlc3MgZm9yIHJldiBJRCBhcnJheS4NCj4gSW4gdGhp
cyBzY2VuYXJpbywgcHJpbnQgbWVzc2FnZSBmb3IgdW5zdXBwb3J0ZWQgcmV2IElEIGFuZCBhcHBs
eQ0KPiBzZXR0aW5ncyBmb3IgbGF0ZXN0IHJldiBJRCBhdmFpbGFibGUuDQo+IA0KPiBGaXhlczog
KCJkcm0vaTkxNS90Z2w6IEZpeCBzdGVwcGluZyBXQSBtYXRjaGluZyIpDQo+IENjOiBKb3PDqSBS
b2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4NCj4gQ2M6IE1hdHQgUm9wZXIg
PG1hdHRoZXcuZC5yb3BlckBpbnRlbC5jb20+DQo+IENjOiBMdWNhcyBEZSBNYXJjaGkgPGx1Y2Fz
LmRlbWFyY2hpQGludGVsLmNvbT4NCj4gQ2M6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRl
bC5jb20+DQo+IENjOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwu
Y29tPg0KPiBTaWduZWQtb2ZmLWJ5OiBBZGl0eWEgU3dhcnVwIDxhZGl0eWEuc3dhcnVwQGludGVs
LmNvbT4NCj4gLS0tDQo+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaCB8IDM1ICsr
KysrKysrKysrKysrKysrKysrKysrKysrKy0tLS0tLQ0KPiDCoDEgZmlsZSBjaGFuZ2VkLCAyOSBp
bnNlcnRpb25zKCspLCA2IGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfZHJ2LmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5o
DQo+IGluZGV4IDE1YmU4ZGViYWU1NC4uMjlkNTViNzAxN2JlIDEwMDY0NA0KPiAtLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfZHJ2LmgNCj4gQEAgLTE1NzIsMTYgKzE1NzIsMzcgQEAgZW51bSB7DQo+IMKgCVRHTF9S
RVZJRF9EMCwNCj4gwqB9Ow0KPiDCoA0KPiANCj4gDQo+IA0KPiANCj4gDQo+IA0KPiANCj4gLWV4
dGVybiBjb25zdCBzdHJ1Y3QgaTkxNV9yZXZfc3RlcHBpbmdzIHRnbF91eV9yZXZpZHNbXTsNCj4g
LWV4dGVybiBjb25zdCBzdHJ1Y3QgaTkxNV9yZXZfc3RlcHBpbmdzIHRnbF9yZXZpZHNbXTsNCj4g
K2V4dGVybiBjb25zdCBzdHJ1Y3QgaTkxNV9yZXZfc3RlcHBpbmdzIHRnbF91eV9yZXZpZHNbNF07
DQo+ICtleHRlcm4gY29uc3Qgc3RydWN0IGk5MTVfcmV2X3N0ZXBwaW5ncyB0Z2xfcmV2aWRzWzJd
Ow0KDQpOb3Qgc3VyZSBpZiB0aGUgYWJvdmUgd2lsbCB3b3JrLCBzYXcgYSBjb21tZW50IGZyb20g
SmFuaSBwbGVhc2UgY2hlY2sgdGhhdC4NCg0KPiArDQo+ICsjZGVmaW5lIFRHTF9VWV9SRVZJRF9S
QU5HRShyZXZpZCkgXA0KPiArCSgocmV2aWQpIDwgQVJSQVlfU0laRSh0Z2xfdXlfcmV2aWRzKSkN
Cj4gKw0KPiArI2RlZmluZSBUR0xfUkVWSURfUkFOR0UocmV2aWQpIFwNCj4gKwkoKHJldmlkKSA8
IEFSUkFZX1NJWkUodGdsX3JldmlkcykpDQo+IMKgDQo+IA0KPiANCj4gDQo+IA0KPiANCj4gDQo+
IA0KPiANCj4gDQo+IA0KPiANCj4gDQo+IA0KPiANCj4gDQo+IMKgc3RhdGljIGlubGluZSBjb25z
dCBzdHJ1Y3QgaTkxNV9yZXZfc3RlcHBpbmdzICoNCj4gwqB0Z2xfcmV2aWRzX2dldChzdHJ1Y3Qg
ZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpDQo+IMKgew0KPiAtCWlmIChJU19UR0xfVShkZXZf
cHJpdikgfHwgSVNfVEdMX1koZGV2X3ByaXYpKQ0KPiAtCQlyZXR1cm4gdGdsX3V5X3JldmlkczsN
Cj4gLQllbHNlDQo+IC0JCXJldHVybiB0Z2xfcmV2aWRzOw0KPiArCWNvbnN0IHU4IHJldmlkID0g
SU5URUxfUkVWSUQoZGV2X3ByaXYpOw0KPiArDQo+ICsJaWYgKElTX1RHTF9VKGRldl9wcml2KSB8
fCBJU19UR0xfWShkZXZfcHJpdikpIHsNCj4gKwkJaWYgKFRHTF9VWV9SRVZJRF9SQU5HRShyZXZp
ZCkpIHsNCj4gKwkJCXJldHVybiB0Z2xfdXlfcmV2aWRzICsgcmV2aWQ7DQoNCldoeSBub3QgaGVs
cCByZWFkZXJzIGFuZCBnbyBzaW1wbGU/IHRnbF91eV9yZXZpZHNbcmV2aWRdDQoNCj4gKwkJfSBl
bHNlIHsNCj4gKwkJCWRybV9kYmdfa21zKCZkZXZfcHJpdi0+ZHJtLA0KPiArCQkJCSAgICAiVW5z
dXBwb3J0ZWQgU09DIHN0ZXBwaW5nIGZvdW5kICV1LCB1c2luZyAlbHUgaW5zdGVhZFxuIiwNCj4g
KwkJCQkgICAgcmV2aWQsIEFSUkFZX1NJWkUodGdsX3V5X3JldmlkcykgLSAxKTsNCj4gKwkJCXJl
dHVybiB0Z2xfdXlfcmV2aWRzICsgKEFSUkFZX1NJWkUodGdsX3V5X3JldmlkcykgLSAxKTsNCj4g
KwkJfQ0KPiArCX0gZWxzZSBpZiAoVEdMX1JFVklEX1JBTkdFKHJldmlkKSkgew0KPiArCQlyZXR1
cm4gdGdsX3JldmlkcyArIHJldmlkOw0KPiArCX0gZWxzZQl7DQo+ICsJCWRybV9kYmdfa21zKCZk
ZXZfcHJpdi0+ZHJtLA0KPiArCQkJICAgICJVbnN1cHBvcnRlZCBTT0Mgc3RlcHBpbmcgZm91bmQg
JXUsIHVzaW5nICVsdSBpbnN0ZWFkXG4iLA0KPiArCQkJICAgIHJldmlkLCBBUlJBWV9TSVpFKHRn
bF9yZXZpZHMpIC0gMSk7DQo+ICsJCXJldHVybiB0Z2xfdXlfcmV2aWRzICsgKEFSUkFZX1NJWkUo
dGdsX3JldmlkcykgLSAxKTsNCj4gKwl9DQoNCkkgYmV0IHlvdSBjYW4gcmUgYXJyYW5nZSBpdCBh
bmQgZW5kIHVwIHdpdGggb25lIGRybV9kYmdfa21zKCkgY2FsbC4NCg0KDQo+IMKgfQ0KPiDCoA0K
PiANCj4gDQo+IA0KPiANCj4gDQo+IA0KPiANCj4gwqAjZGVmaW5lIElTX1RHTF9ESVNQX1JFVklE
KHAsIHNpbmNlLCB1bnRpbCkgXA0KPiBAQCAtMTU5MSwxMiArMTYxMiwxNCBAQCB0Z2xfcmV2aWRz
X2dldChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpDQo+IMKgDQo+IA0KPiANCj4g
DQo+IA0KPiANCj4gDQo+IA0KPiDCoCNkZWZpbmUgSVNfVEdMX1VZX0dUX1JFVklEKHAsIHNpbmNl
LCB1bnRpbCkgXA0KPiDCoAkoKElTX1RHTF9VKHApIHx8IElTX1RHTF9ZKHApKSAmJiBcDQo+ICsJ
IFRHTF9VWV9SRVZJRF9SQU5HRShJTlRFTF9SRVZJRChwKSkgJiYgXA0KPiDCoAkgdGdsX3V5X3Jl
dmlkcy0+Z3Rfc3RlcHBpbmcgPj0gKHNpbmNlKSAmJiBcDQo+IMKgCSB0Z2xfdXlfcmV2aWRzLT5n
dF9zdGVwcGluZyA8PSAodW50aWwpKQ0KPiDCoA0KPiANCj4gDQo+IA0KPiANCj4gDQo+IA0KPiAN
Cj4gwqAjZGVmaW5lIElTX1RHTF9HVF9SRVZJRChwLCBzaW5jZSwgdW50aWwpIFwNCj4gwqAJKElT
X1RJR0VSTEFLRShwKSAmJiBcDQo+IMKgCSAhKElTX1RHTF9VKHApIHx8IElTX1RHTF9ZKHApKSAm
JiBcDQo+ICsJIFRHTF9SRVZJRF9SQU5HRShJTlRFTF9SRVZJRChwKSkgJiYgXA0KPiDCoAkgdGds
X3Jldmlkcy0+Z3Rfc3RlcHBpbmcgPj0gKHNpbmNlKSAmJiBcDQo+IMKgCSB0Z2xfcmV2aWRzLT5n
dF9zdGVwcGluZyA8PSAodW50aWwpKQ0KPiDCoA0KPiANCj4gDQo+IA0KPiANCj4gDQo+IA0KDQpZ
b3UgZGlkIG5vdCBmaXhlZCB0aGUgaXNzdWUgZm9yIEdULg0KDQo+IA0KPiANCj4gDQo+IA0KPiAN
Cg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
