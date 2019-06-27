Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 054D757E15
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Jun 2019 10:18:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 66E396E837;
	Thu, 27 Jun 2019 08:18:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 991BC6E837;
 Thu, 27 Jun 2019 08:18:39 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Jun 2019 01:18:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,423,1557212400"; d="scan'208";a="185191056"
Received: from irsmsx105.ger.corp.intel.com ([163.33.3.28])
 by fmsmga004.fm.intel.com with ESMTP; 27 Jun 2019 01:18:37 -0700
Received: from irsmsx104.ger.corp.intel.com ([169.254.5.143]) by
 irsmsx105.ger.corp.intel.com ([169.254.7.184]) with mapi id 14.03.0439.000;
 Thu, 27 Jun 2019 09:18:37 +0100
From: "Ser, Simon" <simon.ser@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "chris@chris-wilson.co.uk" <chris@chris-wilson.co.uk>
Thread-Topic: [igt-dev] [PATCH i-g-t] i915/gem_pread/pwrite: Rename "basic"
Thread-Index: AQHVLLsMNwwKVJXCG0G9AMZH21COv6avF6UA
Date: Thu, 27 Jun 2019 08:18:36 +0000
Message-ID: <20db22e0517c227b6fef12d7b523312fbe17c703.camel@intel.com>
References: <20190627073615.15573-1-chris@chris-wilson.co.uk>
In-Reply-To: <20190627073615.15573-1-chris@chris-wilson.co.uk>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.237.72.181]
Content-ID: <B50A950DC27F7948917EE7BFE4FECB4F@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t] i915/gem_pread/pwrite:
 Rename "basic"
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
Cc: "igt-dev@lists.freedesktop.org" <igt-dev@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCAyMDE5LTA2LTI3IGF0IDA4OjM2ICswMTAwLCBDaHJpcyBXaWxzb24gd3JvdGU6DQo+
IFRoZSAiYmFzaWMiIHN1YnRlc3RzIHBlcmZvcm0gbm8gdmVyaWZpY2F0aW9uIHRoYXQgdGhlIHJl
YWQvd3JpdGUgd29yaywNCj4gb25seSBmdW5jdGlvbiBhcyBtZXJlIEFQSSBleGVyY2lzZXJzIGFu
ZCBsb29zZSBiZW5jaG1hcmtzLiBSZW5hbWUgdGhlbQ0KPiB0byByZWZsZWN0IHRoYXQgdGhleSBh
cmUgcG9vciBiZW5jaG1hcmtzIGluc3RlYWQuDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBX
aWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4NCg0KUmV2aWV3ZWQtYnk6IFNpbW9uIFNl
ciA8c2ltb24uc2VyQGludGVsLmNvbT4NCg0KPiAtLS0NCj4gIHRlc3RzL2k5MTUvZ2VtX3ByZWFk
LmMgICAgICAgICAgICAgICAgfCAyICstDQo+ICB0ZXN0cy9pOTE1L2dlbV9wd3JpdGUuYyAgICAg
ICAgICAgICAgIHwgMiArLQ0KPiAgdGVzdHMvaW50ZWwtY2kvZmFzdC1mZWVkYmFjay50ZXN0bGlz
dCB8IDIgLS0NCj4gIDMgZmlsZXMgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9u
cygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL3Rlc3RzL2k5MTUvZ2VtX3ByZWFkLmMgYi90ZXN0cy9p
OTE1L2dlbV9wcmVhZC5jDQo+IGluZGV4IGM2NDc4NzY1My4uMGQzZTEwYjgwIDEwMDY0NA0KPiAt
LS0gYS90ZXN0cy9pOTE1L2dlbV9wcmVhZC5jDQo+ICsrKyBiL3Rlc3RzL2k5MTUvZ2VtX3ByZWFk
LmMNCj4gQEAgLTE1OSw3ICsxNTksNyBAQCBpZ3RfbWFpbl9hcmdzKCJzOiIsIE5VTEwsIGhlbHBf
c3RyLCBvcHRfaGFuZGxlciwgTlVMTCkNCj4gIAkJZHN0X3VzZXIgPSBtYWxsb2Mob2JqZWN0X3Np
emUpOw0KPiAgCX0NCj4gIA0KPiAtCWlndF9zdWJ0ZXN0KCJiYXNpYyIpIHsNCj4gKwlpZ3Rfc3Vi
dGVzdCgiYmVuY2giKSB7DQo+ICAJCWZvciAoY291bnQgPSAxOyBjb3VudCA8PSAxPDwxNzsgY291
bnQgPDw9IDEpIHsNCj4gIAkJCXN0cnVjdCB0aW1ldmFsIHN0YXJ0LCBlbmQ7DQo+ICANCj4gZGlm
ZiAtLWdpdCBhL3Rlc3RzL2k5MTUvZ2VtX3B3cml0ZS5jIGIvdGVzdHMvaTkxNS9nZW1fcHdyaXRl
LmMNCj4gaW5kZXggOTc3MDNhMmFhLi4zN2U5Nzg3OTEgMTAwNjQ0DQo+IC0tLSBhL3Rlc3RzL2k5
MTUvZ2VtX3B3cml0ZS5jDQo+ICsrKyBiL3Rlc3RzL2k5MTUvZ2VtX3B3cml0ZS5jDQo+IEBAIC0y
ODYsNyArMjg2LDcgQEAgaWd0X21haW5fYXJncygiczoiLCBOVUxMLCBoZWxwX3N0ciwgb3B0X2hh
bmRsZXIsIE5VTEwpDQo+ICAJCXNyY191c2VyID0gbWFsbG9jKG9iamVjdF9zaXplKTsNCj4gIAl9
DQo+ICANCj4gLQlpZ3Rfc3VidGVzdCgiYmFzaWMiKSB7DQo+ICsJaWd0X3N1YnRlc3QoImJlbmNo
Iikgew0KPiAgCQlmb3IgKGNvdW50ID0gMTsgY291bnQgPD0gMTw8MTc7IGNvdW50IDw8PSAxKSB7
DQo+ICAJCQlzdHJ1Y3QgdGltZXZhbCBzdGFydCwgZW5kOw0KPiAgDQo+IGRpZmYgLS1naXQgYS90
ZXN0cy9pbnRlbC1jaS9mYXN0LWZlZWRiYWNrLnRlc3RsaXN0IGIvdGVzdHMvaW50ZWwtY2kvZmFz
dC1mZWVkYmFjay50ZXN0bGlzdA0KPiBpbmRleCA4NjE4ZGZkMjguLjVmY2I1ZTc2ZCAxMDA2NDQN
Cj4gLS0tIGEvdGVzdHMvaW50ZWwtY2kvZmFzdC1mZWVkYmFjay50ZXN0bGlzdA0KPiArKysgYi90
ZXN0cy9pbnRlbC1jaS9mYXN0LWZlZWRiYWNrLnRlc3RsaXN0DQo+IEBAIC04Nyw4ICs4Nyw2IEBA
IGlndEBnZW1fbW1hcF9ndHRAYmFzaWMtd3JpdGUtZ3R0LW5vLXByZWZhdWx0DQo+ICBpZ3RAZ2Vt
X21tYXBfZ3R0QGJhc2ljLXdyaXRlLW5vLXByZWZhdWx0DQo+ICBpZ3RAZ2VtX21tYXBfZ3R0QGJh
c2ljLXdyaXRlLXJlYWQNCj4gIGlndEBnZW1fbW1hcF9ndHRAYmFzaWMtd3JpdGUtcmVhZC1kaXN0
aW5jdA0KPiAtaWd0QGdlbV9wcmVhZEBiYXNpYw0KPiAtaWd0QGdlbV9wd3JpdGVAYmFzaWMNCj4g
IGlndEBnZW1fcmVuZGVyX2xpbmVhcl9ibGl0c0BiYXNpYw0KPiAgaWd0QGdlbV9yZW5kZXJfdGls
ZWRfYmxpdHNAYmFzaWMNCj4gIGlndEBnZW1fcmluZ2ZpbGxAYmFzaWMtZGVmYXVsdA0KX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
