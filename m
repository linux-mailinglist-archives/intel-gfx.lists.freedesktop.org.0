Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CDB657088
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Jun 2019 20:27:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 643546E280;
	Wed, 26 Jun 2019 18:27:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7E2DA6E280
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Jun 2019 18:27:36 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Jun 2019 11:27:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,420,1557212400"; d="scan'208";a="172819425"
Received: from orsmsx105.amr.corp.intel.com ([10.22.225.132])
 by orsmga002.jf.intel.com with ESMTP; 26 Jun 2019 11:27:35 -0700
Received: from orsmsx116.amr.corp.intel.com (10.22.240.14) by
 ORSMSX105.amr.corp.intel.com (10.22.225.132) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 26 Jun 2019 11:27:35 -0700
Received: from orsmsx108.amr.corp.intel.com ([169.254.2.202]) by
 ORSMSX116.amr.corp.intel.com ([169.254.7.109]) with mapi id 14.03.0439.000;
 Wed, 26 Jun 2019 11:27:35 -0700
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: "De Marchi, Lucas" <lucas.demarchi@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 06/28] drm/i915/tgl: Add TGL PCH detection
 in virtualized environment
Thread-Index: AQHVK387vzJeq5irD0mebpDpJeJiQaauQn7g
Date: Wed, 26 Jun 2019 18:27:35 +0000
Message-ID: <83F5C7385F545743AD4FB2A62F75B073480E914E@ORSMSX108.amr.corp.intel.com>
References: <20190625175437.14840-1-lucas.demarchi@intel.com>
 <20190625175437.14840-7-lucas.demarchi@intel.com>
In-Reply-To: <20190625175437.14840-7-lucas.demarchi@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.0.600.7
dlp-reaction: no-action
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiMzExMmQ1OGYtZTAwZC00MmU4LThkNjYtMTYzOWI5OGI3ZTEyIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiU2RDOTg3cFZXN2hPTzBpTldTZjZXeUIxTyt6NWwrVEpndDNBWWFsUHVTTG9ZbTlzZm91TEpBUUdPak1pdDhJTCJ9
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 06/28] drm/i915/tgl: Add TGL PCH detection
 in virtualized environment
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
Cc: Mahesh Kumar <mahesh1.kumar@intel.com>, "De Marchi,
 Lucas" <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

DQoNCj4tLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPkZyb206IEludGVsLWdmeCBbbWFpbHRv
OmludGVsLWdmeC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZ10gT24gQmVoYWxmIE9mDQo+
THVjYXMgRGUgTWFyY2hpDQo+U2VudDogVHVlc2RheSwgSnVuZSAyNSwgMjAxOSAxMDo1NCBBTQ0K
PlRvOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+Q2M6IE1haGVzaCBLdW1hciA8
bWFoZXNoMS5rdW1hckBpbnRlbC5jb20+OyBEZSBNYXJjaGksIEx1Y2FzDQo+PGx1Y2FzLmRlbWFy
Y2hpQGludGVsLmNvbT4NCj5TdWJqZWN0OiBbSW50ZWwtZ2Z4XSBbUEFUQ0ggMDYvMjhdIGRybS9p
OTE1L3RnbDogQWRkIFRHTCBQQ0ggZGV0ZWN0aW9uIGluDQo+dmlydHVhbGl6ZWQgZW52aXJvbm1l
bnQNCj4NCj5Gcm9tOiBNYWhlc2ggS3VtYXIgPG1haGVzaDEua3VtYXJAaW50ZWwuY29tPg0KPg0K
PkFzc3VtZSBQQ0hfVEdQIHdoZW4gcGxhdGZvcm0gaXMgVEdMLg0KPg0KPkNjOiBSb2RyaWdvIFZp
dmkgPHJvZHJpZ28udml2aUBpbnRlbC5jb20+DQo+U2lnbmVkLW9mZi1ieTogTWFoZXNoIEt1bWFy
IDxtYWhlc2gxLmt1bWFyQGludGVsLmNvbT4NCj5TaWduZWQtb2ZmLWJ5OiBMdWNhcyBEZSBNYXJj
aGkgPGx1Y2FzLmRlbWFyY2hpQGludGVsLmNvbT4NCg0KUmV2aWV3ZWQtYnk6IEFudXNoYSBTcml2
YXRzYSA8YW51c2hhLnNyaXZhdHNhQGludGVsLmNvbT4NCj4tLS0NCj4gZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9kcnYuYyB8IDQgKysrLQ0KPiAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25z
KCspLCAxIGRlbGV0aW9uKC0pDQo+DQo+ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfZHJ2LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jDQo+aW5kZXggNGMy
NmM3ZjY2MmFkLi4xZmNmZDQ2NzAyZTUgMTAwNjQ0DQo+LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9kcnYuYw0KPisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMNCj5A
QCAtMjU1LDcgKzI1NSw5IEBAIGludGVsX3ZpcnRfZGV0ZWN0X3BjaChjb25zdCBzdHJ1Y3QgZHJt
X2k5MTVfcHJpdmF0ZQ0KPipkZXZfcHJpdikNCj4gCSAqIG1ha2UgYW4gZWR1Y2F0ZWQgZ3Vlc3Mg
YXMgdG8gd2hpY2ggUENIIGlzIHJlYWxseSB0aGVyZS4NCj4gCSAqLw0KPg0KPi0JaWYgKElTX0VM
S0hBUlRMQUtFKGRldl9wcml2KSkNCj4rCWlmIChJU19USUdFUkxBS0UoZGV2X3ByaXYpKQ0KPisJ
CWlkID0gSU5URUxfUENIX1RHUF9ERVZJQ0VfSURfVFlQRTsNCj4rCWVsc2UgaWYgKElTX0VMS0hB
UlRMQUtFKGRldl9wcml2KSkNCj4gCQlpZCA9IElOVEVMX1BDSF9NQ0NfREVWSUNFX0lEX1RZUEU7
DQo+IAllbHNlIGlmIChJU19JQ0VMQUtFKGRldl9wcml2KSkNCj4gCQlpZCA9IElOVEVMX1BDSF9J
Q1BfREVWSUNFX0lEX1RZUEU7DQo+LS0NCj4yLjIxLjANCj4NCj5fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KPkludGVsLWdmeCBtYWlsaW5nIGxpc3QNCj5J
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+aHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngNCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
