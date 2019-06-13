Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 48C3244F12
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2019 00:27:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A9A0689361;
	Thu, 13 Jun 2019 22:27:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C47C689361
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Jun 2019 22:27:06 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Jun 2019 15:27:06 -0700
X-ExtLoop1: 1
Received: from fmsmsx105.amr.corp.intel.com ([10.18.124.203])
 by orsmga001.jf.intel.com with ESMTP; 13 Jun 2019 15:27:06 -0700
Received: from fmsmsx162.amr.corp.intel.com (10.18.125.71) by
 FMSMSX105.amr.corp.intel.com (10.18.124.203) with Microsoft SMTP Server (TLS)
 id 14.3.408.0; Thu, 13 Jun 2019 15:27:05 -0700
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.248]) by
 fmsmsx162.amr.corp.intel.com ([169.254.5.245]) with mapi id 14.03.0415.000;
 Thu, 13 Jun 2019 15:27:05 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/ehl: Update MOCS table for EHL
Thread-Index: AQHVF0EPESuQDlvouUycNUnMd6iFs6aatRcA
Date: Thu, 13 Jun 2019 22:27:04 +0000
Message-ID: <b13e3a5b45bf74cd212b9fbcb529fe95a680bea3.camel@intel.com>
References: <20190530234014.22340-1-matthew.d.roper@intel.com>
In-Reply-To: <20190530234014.22340-1-matthew.d.roper@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.8.250]
Content-ID: <904B1204DE9AA24FA8A01C4C511B23E2@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/ehl: Update MOCS table for EHL
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

T24gVGh1LCAyMDE5LTA1LTMwIGF0IDE2OjQwIC0wNzAwLCBNYXR0IFJvcGVyIHdyb3RlOg0KPiBF
SEwgZGVmaW5lcyB0d28gbmV3IE1PQ1MgdGFibGUgZW50cmllcyBidXQgaXMgb3RoZXJ3aXNlIGNv
bXBhdGlibGUNCj4gd2l0aA0KPiB0aGUgSUNMIE1PQ1MgdGFibGUuDQo+IA0KPiBUaGVzZSB0YWJs
ZSBlbnRyaWVzICgxNiBhbmQgMTcpIHNob3VsZCBzdGlsbCBiZSBjb25zaWRlcmVkIHVudXNlZCBm
b3INCj4gSUNMIGFuZCBhcyBzdWNoIHRoZWlyIGJlaGF2aW9yIHJlbWFpbnMgdW5kZWZpbmVkIGZv
ciB0aGF0IHBsYXRmb3JtLg0KPiANCg0KUmVxdWVzdGluZyBhbm90aGVyIENJIHJvdW5kIGJlZm9y
ZSBtZXJnaW5nIGl0Lg0KDQpSZXZpZXdlZC1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9z
ZS5zb3V6YUBpbnRlbC5jb20+DQoNCj4gU2lnbmVkLW9mZi1ieTogTWF0dCBSb3BlciA8bWF0dGhl
dy5kLnJvcGVyQGludGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9p
bnRlbF9tb2NzLmMgfCA4ICsrKysrKysrDQo+ICAxIGZpbGUgY2hhbmdlZCwgOCBpbnNlcnRpb25z
KCspDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbW9j
cy5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbW9jcy5jDQo+IGluZGV4IDc5
ZGY2NjAyMmQzYS4uMWY5ZGI1MGIxODY5IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC9pbnRlbF9tb2NzLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50
ZWxfbW9jcy5jDQo+IEBAIC0yMDAsNiArMjAwLDE0IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgZHJt
X2k5MTVfbW9jc19lbnRyeQ0KPiBicm94dG9uX21vY3NfdGFibGVbXSA9IHsNCj4gIAlNT0NTX0VO
VFJZKDE1LCBcDQo+ICAJCSAgIExFXzNfV0IgfCBMRV9UQ18xX0xMQyB8IExFX0xSVU0oMikgfCBM
RV9BT00oMSksIFwNCj4gIAkJICAgTDNfM19XQiksIFwNCj4gKwkvKiBCeXBhc3MgTExDIC0gVW5j
YWNoZWQgKEVITCspICovIFwNCj4gKwlNT0NTX0VOVFJZKDE2LCBcDQo+ICsJCSAgIExFXzFfVUMg
fCBMRV9UQ18xX0xMQyB8IExFX1NDRigxKSwgXA0KPiArCQkgICBMM18xX1VDKSwgXA0KPiArCS8q
IEJ5cGFzcyBMTEMgLSBMMyAoUmVhZC1Pbmx5KSAoRUhMKykgKi8gXA0KPiArCU1PQ1NfRU5UUlko
MTcsIFwNCj4gKwkJICAgTEVfMV9VQyB8IExFX1RDXzFfTExDIHwgTEVfU0NGKDEpLCBcDQo+ICsJ
CSAgIEwzXzNfV0IpLCBcDQo+ICAJLyogU2VsZi1Tbm9vcCAtIEwzICsgTExDICovIFwNCj4gIAlN
T0NTX0VOVFJZKDE4LCBcDQo+ICAJCSAgIExFXzNfV0IgfCBMRV9UQ18xX0xMQyB8IExFX0xSVU0o
MykgfCBMRV9TU0UoMyksIFwNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeA==
