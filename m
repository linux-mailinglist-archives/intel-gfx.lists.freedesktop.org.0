Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 17BC64EFD2
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Jun 2019 22:07:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 848866E920;
	Fri, 21 Jun 2019 20:07:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C09456E920
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Jun 2019 20:07:06 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 Jun 2019 13:07:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,401,1557212400"; d="scan'208";a="335933715"
Received: from fmsmsx104.amr.corp.intel.com ([10.18.124.202])
 by orsmga005.jf.intel.com with ESMTP; 21 Jun 2019 13:07:05 -0700
Received: from fmsmsx120.amr.corp.intel.com (10.18.124.208) by
 fmsmsx104.amr.corp.intel.com (10.18.124.202) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 21 Jun 2019 13:07:05 -0700
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.210]) by
 fmsmsx120.amr.corp.intel.com ([169.254.15.12]) with mapi id 14.03.0439.000;
 Fri, 21 Jun 2019 13:07:05 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915/ehl: Add one additional PCH ID to MCC
Thread-Index: AQHVKESk4MbaZVWAV0yiXHMG9RMNlaam/pkA
Date: Fri, 21 Jun 2019 20:07:05 +0000
Message-ID: <b2a8142ae665c2305eccbab128935664a83c4319.camel@intel.com>
References: <20190621151847.31302-1-matthew.d.roper@intel.com>
In-Reply-To: <20190621151847.31302-1-matthew.d.roper@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.8.250]
Content-ID: <CD008A2BAB1EA2428EF298EBFDBEE559@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/ehl: Add one additional PCH ID to
 MCC
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

T24gRnJpLCAyMDE5LTA2LTIxIGF0IDA4OjE4IC0wNzAwLCBNYXR0IFJvcGVyIHdyb3RlOg0KPiBU
aGVyZSdzIG9uZSBhZGRpdGlvbmFsIElEIHRoYXQgd2Ugc2hvdWxkIHRyZWF0IGFzIE11bGUgQ3Jl
ZWsgQ2FueW9uLg0KPiANCg0KUmV2aWV3ZWQtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpv
c2Uuc291emFAaW50ZWwuY29tPg0KDQo+IENjOiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3Nl
LnNvdXphQGludGVsLmNvbT4NCj4gU2lnbmVkLW9mZi1ieTogTWF0dCBSb3BlciA8bWF0dGhldy5k
LnJvcGVyQGludGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Ry
di5jIHwgMSArDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oIHwgMSArDQo+ICAy
IGZpbGVzIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X2Rydi5jDQo+IGluZGV4IDhmODRlZDI2ZTk3Mi4uMmU2Mzg5MTY4ODU0IDEwMDY0NA0KPiAtLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfZHJ2LmMNCj4gQEAgLTIxOSw2ICsyMTksNyBAQCBpbnRlbF9wY2hfdHlwZShj
b25zdCBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZQ0KPiAqZGV2X3ByaXYsIHVuc2lnbmVkIHNob3J0
IGlkKQ0KPiAgCQlXQVJOX09OKCFJU19JQ0VMQUtFKGRldl9wcml2KSk7DQo+ICAJCXJldHVybiBQ
Q0hfSUNQOw0KPiAgCWNhc2UgSU5URUxfUENIX01DQ19ERVZJQ0VfSURfVFlQRToNCj4gKwljYXNl
IElOVEVMX1BDSF9NQ0MyX0RFVklDRV9JRF9UWVBFOg0KPiAgCQlEUk1fREVCVUdfS01TKCJGb3Vu
ZCBNdWxlIENyZWVrIENhbnlvbiBQQ0hcbiIpOw0KPiAgCQlXQVJOX09OKCFJU19FTEtIQVJUTEFL
RShkZXZfcHJpdikpOw0KPiAgCQlyZXR1cm4gUENIX01DQzsNCj4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X2Rydi5oDQo+IGluZGV4IDI3MzRmNjJhYjE5YS4uYTA0NjliYmU2YzhlIDEwMDY0NA0KPiAtLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfZHJ2LmgNCj4gQEAgLTIzNTMsNiArMjM1Myw3IEBAIElTX1NVQlBMQVRGT1JN
KGNvbnN0IHN0cnVjdCBkcm1faTkxNV9wcml2YXRlDQo+ICppOTE1LA0KPiAgI2RlZmluZSBJTlRF
TF9QQ0hfQ01QX0RFVklDRV9JRF9UWVBFCQkweDAyODANCj4gICNkZWZpbmUgSU5URUxfUENIX0lD
UF9ERVZJQ0VfSURfVFlQRQkJMHgzNDgwDQo+ICAjZGVmaW5lIElOVEVMX1BDSF9NQ0NfREVWSUNF
X0lEX1RZUEUJCTB4NEIwMA0KPiArI2RlZmluZSBJTlRFTF9QQ0hfTUNDMl9ERVZJQ0VfSURfVFlQ
RQkJMHgzODgwDQo+ICAjZGVmaW5lIElOVEVMX1BDSF9QMlhfREVWSUNFX0lEX1RZUEUJCTB4NzEw
MA0KPiAgI2RlZmluZSBJTlRFTF9QQ0hfUDNYX0RFVklDRV9JRF9UWVBFCQkweDcwMDANCj4gICNk
ZWZpbmUgSU5URUxfUENIX1FFTVVfREVWSUNFX0lEX1RZUEUJCTB4MjkwMCAvKiBxZW11DQo+IHEz
NSBoYXMgMjkxOCAqLw0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4
