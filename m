Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 10CC523B0E3
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Aug 2020 01:24:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E19246E372;
	Mon,  3 Aug 2020 23:24:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 79FC76E372
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Aug 2020 23:24:20 +0000 (UTC)
IronPort-SDR: rbq5z25jZeC9ZCD7scQiL48eVApG0Z2zJpOzBJdC/t0IOPa38f1L6IeRh7J7VJjTv08iP+1oID
 YQnbCmm9oaDA==
X-IronPort-AV: E=McAfee;i="6000,8403,9702"; a="131789943"
X-IronPort-AV: E=Sophos;i="5.75,431,1589266800"; d="scan'208";a="131789943"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Aug 2020 16:24:19 -0700
IronPort-SDR: QfddspapvqKuJi60zcxT+0HCjWYDT9tPXrQ5MA9tRTV0HVY20fA90ARBboUNjbb1A41lP8VBR6
 iH7FQsvUkcRA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,431,1589266800"; d="scan'208";a="315040728"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by fmsmga004.fm.intel.com with ESMTP; 03 Aug 2020 16:24:19 -0700
Received: from orsmsx606.amr.corp.intel.com (10.22.229.19) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 3 Aug 2020 16:24:19 -0700
Received: from orsmsx104.amr.corp.intel.com (10.22.225.131) by
 orsmsx606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Mon, 3 Aug 2020 16:24:19 -0700
Received: from orsmsx151.amr.corp.intel.com ([169.254.7.123]) by
 ORSMSX104.amr.corp.intel.com ([169.254.4.15]) with mapi id 14.03.0439.000;
 Mon, 3 Aug 2020 16:24:18 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "De
 Marchi, Lucas" <lucas.demarchi@intel.com>
Thread-Topic: [Intel-gfx] [PATCH v5 05/22] drm/i915/dg1: Wait for
 pcode/uncore handshake at startup
Thread-Index: AQHWYgLxMAbu3Zz8SEqUR6oBJrnJ8aknjF0A
Date: Mon, 3 Aug 2020 23:24:17 +0000
Message-ID: <791224e3effd491cc3276cbe55a2958dafdfe3fd.camel@intel.com>
References: <20200724213918.27424-1-lucas.demarchi@intel.com>
 <20200724213918.27424-6-lucas.demarchi@intel.com>
In-Reply-To: <20200724213918.27424-6-lucas.demarchi@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.251.135.198]
Content-ID: <958CC0E891077545AEB6890CAA5EA13F@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v5 05/22] drm/i915/dg1: Wait for
 pcode/uncore handshake at startup
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

T24gRnJpLCAyMDIwLTA3LTI0IGF0IDE0OjM5IC0wNzAwLCBMdWNhcyBEZSBNYXJjaGkgd3JvdGU6
DQo+IEZyb206IE1hdHQgUm9wZXIgPA0KPiBtYXR0aGV3LmQucm9wZXJAaW50ZWwuY29tDQo+ID4N
Cj4gDQo+IERHMSBkb2VzIHNvbWUgYWRkaXRpb25hbCBwY29kZS91bmNvcmUgaGFuZHNoYWtpbmcg
YXQNCj4gYm9vdCB0aW1lOyB0aGlzIGhhbmRzaGFraW5nIG11c3QgY29tcGxldGUgYmVmb3JlIHZh
cmlvdXMgb3RoZXIgcGNvZGUNCj4gY29tbWFuZHMgYXJlIGVmZmVjdGl2ZSBhbmQgYmVmb3JlIGdl
bmVyYWwgd29yayBpcyBzdWJtaXR0ZWQgdG8gdGhlIEdQVS4NCj4gV2UgbmVlZCB0byBwb2xsIGEg
bmV3IHBjb2RlIG1haWxib3ggZHVyaW5nIHN0YXJ0dXAgdW50aWwgaXQgcmVwb3J0cyB0aGF0DQo+
IHRoaXMgaGFuZHNoYWtpbmcgaXMgY29tcGxldGUuDQo+IA0KPiBUaGUgYnNwZWMgZG9lc24ndCBn
aXZlIGd1aWRhbmNlIG9uIGhvdyBsb25nIHdlIG1heSBuZWVkIHRvIHdhaXQgZm9yIHRoaXMNCj4g
aGFuZHNoYWtpbmcgdG8gY29tcGxldGUuICBGb3Igbm93LCBsZXQncyBqdXN0IHNldCBhIHJlYWxs
eSBsb25nIHRpbWVvdXQ7DQo+IGlmIHdlIHN0aWxsIGRvbid0IGdldCBhIGNvbXBsZXRpb24gc3Rh
dHVzIGJ5IHRoZSBlbmQgb2YgdGhhdCB0aW1lb3V0LA0KPiB3ZSdsbCBqdXN0IGNvbnRpbnVlIG9u
IGFuZCBob3BlIGZvciB0aGUgYmVzdC4NCj4gDQo+IEJzcGVjOiA1MjA2NQ0KPiBDYzogQ2xpbnRv
biBUYXlsb3IgPA0KPiBDbGludG9uLkEuVGF5bG9yQGludGVsLmNvbQ0KPiA+DQo+IENjOiBWaWxs
ZSBTeXJqw6Rsw6QgPA0KPiB2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbQ0KPiA+DQo+IENj
OiBSYWRoYWtyaXNobmEgU3JpcGFkYSA8DQo+IHJhZGhha3Jpc2huYS5zcmlwYWRhQGludGVsLmNv
bQ0KPiA+DQo+IFNpZ25lZC1vZmYtYnk6IE1hdHQgUm9wZXIgPA0KPiBtYXR0aGV3LmQucm9wZXJA
aW50ZWwuY29tDQo+ID4NCj4gU2lnbmVkLW9mZi1ieTogTHVjYXMgRGUgTWFyY2hpIDwNCj4gbHVj
YXMuZGVtYXJjaGlAaW50ZWwuY29tDQo+ID4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X2Rydi5jICAgICAgIHwgIDMgKysrDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X3JlZy5oICAgICAgIHwgIDMgKysrDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9zaWRl
YmFuZC5jIHwgMTUgKysrKysrKysrKysrKysrDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRl
bF9zaWRlYmFuZC5oIHwgIDIgKysNCj4gIDQgZmlsZXMgY2hhbmdlZCwgMjMgaW5zZXJ0aW9ucygr
KQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jDQo+IGluZGV4IDVmZDVhZjRiYzg1NS4uNTQ3
M2JmZTkxMjZjIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5j
DQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMNCj4gQEAgLTg1LDYgKzg1
LDcgQEANCj4gICNpbmNsdWRlICJpbnRlbF9ndnQuaCINCj4gICNpbmNsdWRlICJpbnRlbF9tZW1v
cnlfcmVnaW9uLmgiDQo+ICAjaW5jbHVkZSAiaW50ZWxfcG0uaCINCj4gKyNpbmNsdWRlICJpbnRl
bF9zaWRlYmFuZC5oIg0KPiAgI2luY2x1ZGUgInZsdl9zdXNwZW5kLmgiDQo+ICANCj4gIHN0YXRp
YyBzdHJ1Y3QgZHJtX2RyaXZlciBkcml2ZXI7DQo+IEBAIC03MzcsNiArNzM4LDggQEAgc3RhdGlj
IGludCBpOTE1X2RyaXZlcl9od19wcm9iZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3By
aXYpDQo+ICAJICovDQo+ICAJaW50ZWxfZHJhbV9kZXRlY3QoZGV2X3ByaXYpOw0KPiAgDQo+ICsJ
aW50ZWxfcGNvZGVfaW5pdChkZXZfcHJpdik7DQo+ICsNCj4gIAlpbnRlbF9id19pbml0X2h3KGRl
dl9wcml2KTsNCj4gIA0KPiAgCXJldHVybiAwOw0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9yZWcuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgNCj4g
aW5kZXggYTBkMzFmM2JmNjM0Li4zNzY3YjMyMTI3ZGEgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfcmVnLmgNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9yZWcuaA0KPiBAQCAtOTI0NSw2ICs5MjQ1LDkgQEAgZW51bSB7DQo+ICAjZGVmaW5lICAgICBH
RU45X1NBR1ZfRElTQUJMRQkJCTB4MA0KPiAgI2RlZmluZSAgICAgR0VOOV9TQUdWX0lTX0RJU0FC
TEVECQkweDENCj4gICNkZWZpbmUgICAgIEdFTjlfU0FHVl9FTkFCTEUJCQkweDMNCj4gKyNkZWZp
bmUgICBERzFfUENPREVfU1RBVFVTCQkJMHg3RQ0KPiArI2RlZmluZSAgICAgREcxX0NIRUNLX1VO
Q09SRV9JTklUX1NUQVRVUwkweDANCj4gKyNkZWZpbmUgICAgIERHMV9VTkNPUkVfSU5JVF9DT01Q
TEVURQkJMHgxDQoNCldpdGggcy9ERzFfQ0hFQ0tfVU5DT1JFX0lOSVRfU1RBVFVTL0RHMV9DSEVD
S19VTkNPUkVfSU5JVF9TVEFUVVNfQ09NUExFVEUgb3Igc29tZXRoaW5nIHNpbWlsYXIgdGhhdCBt
YWtlcyBlYXN5IHRvIHVuZGVyc3RhbmQgdGhhdCAweDEgaXMgdGhlIHJlc3BvbnNlDQpvZiB0aGUg
REcxX0NIRUNLX1VOQ09SRV9JTklUX1NUQVRVUyBzdWItY29tbWFuZC4NCg0KUmV2aWV3ZWQtYnk6
IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPg0KDQoNCj4gICNk
ZWZpbmUgR0VOMTJfUENPREVfUkVBRF9TQUdWX0JMT0NLX1RJTUVfVVMJMHgyMw0KPiAgI2RlZmlu
ZSBHRU42X1BDT0RFX0RBVEEJCQkJX01NSU8oMHgxMzgxMjgpDQo+ICAjZGVmaW5lICAgR0VONl9Q
Q09ERV9GUkVRX0lBX1JBVElPX1NISUZUCTgNCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2ludGVsX3NpZGViYW5kLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9zaWRl
YmFuZC5jDQo+IGluZGV4IDkxNmNjZDFjMGU5Ni4uOGIwOTM1MjUyNDBkIDEwMDY0NA0KPiAtLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9zaWRlYmFuZC5jDQo+ICsrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2ludGVsX3NpZGViYW5kLmMNCj4gQEAgLTU0MywzICs1NDMsMTggQEAgaW50
IHNrbF9wY29kZV9yZXF1ZXN0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LCB1MzIgbWJv
eCwgdTMyIHJlcXVlc3QsDQo+ICAJcmV0dXJuIHJldCA/IHJldCA6IHN0YXR1czsNCj4gICN1bmRl
ZiBDT05EDQo+ICB9DQo+ICsNCj4gK3ZvaWQgaW50ZWxfcGNvZGVfaW5pdChzdHJ1Y3QgZHJtX2k5
MTVfcHJpdmF0ZSAqaTkxNSkNCj4gK3sNCj4gKwlpbnQgcmV0Ow0KPiArDQo+ICsJaWYgKCFJU19E
R0ZYKGk5MTUpKQ0KPiArCQlyZXR1cm47DQo+ICsNCj4gKwlyZXQgPSBza2xfcGNvZGVfcmVxdWVz
dChpOTE1LCBERzFfUENPREVfU1RBVFVTLA0KPiArCQkJCURHMV9DSEVDS19VTkNPUkVfSU5JVF9T
VEFUVVMsDQo+ICsJCQkJREcxX1VOQ09SRV9JTklUX0NPTVBMRVRFLA0KPiArCQkJCURHMV9VTkNP
UkVfSU5JVF9DT01QTEVURSwgNTApOw0KPiArCWlmIChyZXQpDQo+ICsJCWRybV9lcnIoJmk5MTUt
PmRybSwgIlBjb2RlIGRpZCBub3QgcmVwb3J0IHVuY29yZSBpbml0aWFsaXphdGlvbiBjb21wbGV0
aW9uIVxuIik7DQo+ICt9DQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRl
bF9zaWRlYmFuZC5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfc2lkZWJhbmQuaA0KPiBp
bmRleCA3ZmI5NTc0NWE0NDQuLjA5NGM3YjE5YzVkNCAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaW50ZWxfc2lkZWJhbmQuaA0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pbnRlbF9zaWRlYmFuZC5oDQo+IEBAIC0xMzgsNCArMTM4LDYgQEAgaW50IHNhbmR5YnJpZGdl
X3Bjb2RlX3dyaXRlX3RpbWVvdXQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsIHUzMiBt
Ym94LA0KPiAgaW50IHNrbF9wY29kZV9yZXF1ZXN0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpp
OTE1LCB1MzIgbWJveCwgdTMyIHJlcXVlc3QsDQo+ICAJCSAgICAgIHUzMiByZXBseV9tYXNrLCB1
MzIgcmVwbHksIGludCB0aW1lb3V0X2Jhc2VfbXMpOw0KPiAgDQo+ICt2b2lkIGludGVsX3Bjb2Rl
X2luaXQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpOw0KPiArDQo+ICAjZW5kaWYgLyog
X0lOVEVMX1NJREVCQU5EX0ggKi8NCj4gDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZngK
