Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 48F2557390
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Jun 2019 23:24:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B4DA8825B;
	Wed, 26 Jun 2019 21:24:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D6696E326
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Jun 2019 21:24:13 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Jun 2019 14:24:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,421,1557212400"; d="scan'208";a="170184635"
Received: from orsmsx109.amr.corp.intel.com ([10.22.240.7])
 by FMSMGA003.fm.intel.com with ESMTP; 26 Jun 2019 14:24:12 -0700
Received: from orsmsx153.amr.corp.intel.com (10.22.226.247) by
 ORSMSX109.amr.corp.intel.com (10.22.240.7) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 26 Jun 2019 14:24:12 -0700
Received: from orsmsx108.amr.corp.intel.com ([169.254.2.202]) by
 ORSMSX153.amr.corp.intel.com ([169.254.12.252]) with mapi id 14.03.0439.000;
 Wed, 26 Jun 2019 14:24:12 -0700
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: "De Marchi, Lucas" <lucas.demarchi@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 09/28] drm/i915/tgl: Check if pipe D is fused
Thread-Index: AQHVK39CeRW6roDE1UKcULQMOuHp4qauc8RA
Date: Wed, 26 Jun 2019 21:24:11 +0000
Message-ID: <83F5C7385F545743AD4FB2A62F75B073480E9261@ORSMSX108.amr.corp.intel.com>
References: <20190625175437.14840-1-lucas.demarchi@intel.com>
 <20190625175437.14840-10-lucas.demarchi@intel.com>
In-Reply-To: <20190625175437.14840-10-lucas.demarchi@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.0.600.7
dlp-reaction: no-action
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiOWYwYmY1YjgtNjg1MC00MGFhLTk5MzEtNTBiYmFhYWY5YWY1IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiT044OG5mVXJFZVBtMGxXK3I4TUhubUtidmdMZlNnQklNclRnclpvaFZkQ0xvQWNac1pHeEV2Um1OOW5DKzJXcyJ9
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 09/28] drm/i915/tgl: Check if pipe D is fused
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
Cc: "De Marchi, Lucas" <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

DQoNCj4tLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPkZyb206IEludGVsLWdmeCBbbWFpbHRv
OmludGVsLWdmeC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZ10gT24gQmVoYWxmIE9mDQo+
THVjYXMgRGUgTWFyY2hpDQo+U2VudDogVHVlc2RheSwgSnVuZSAyNSwgMjAxOSAxMDo1NCBBTQ0K
PlRvOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+Q2M6IERlIE1hcmNoaSwgTHVj
YXMgPGx1Y2FzLmRlbWFyY2hpQGludGVsLmNvbT4NCj5TdWJqZWN0OiBbSW50ZWwtZ2Z4XSBbUEFU
Q0ggMDkvMjhdIGRybS9pOTE1L3RnbDogQ2hlY2sgaWYgcGlwZSBEIGlzIGZ1c2VkDQo+DQo+RnJv
bTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+DQo+DQo+T24g
VGlnZXIgTGFrZSB0aGVyZSBpcyBvbmUgbW9yZSBwaXBlIC0gY2hlY2sgaWYgaXQncyBmdXNlZC4N
Cj4NCj5TaWduZWQtb2ZmLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGlu
dGVsLmNvbT4NCj5TaWduZWQtb2ZmLWJ5OiBMdWNhcyBEZSBNYXJjaGkgPGx1Y2FzLmRlbWFyY2hp
QGludGVsLmNvbT4NClJldmlld2VkLWJ5OiBBbnVzaGEgU3JpdmF0c2EgPGFudXNoYS5zcml2YXRz
YUBpbnRlbC5jb20+DQoNCj4tLS0NCj4gZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCAg
ICAgICAgICB8IDEgKw0KPiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kZXZpY2VfaW5mby5j
IHwgMyArKysNCj4gMiBmaWxlcyBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKykNCj4NCj5kaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfcmVnLmgNCj5pbmRleCBhNjNhMzM3ZWVjMmMuLjk1ZmRjOGRiY2EzMSAxMDA2NDQN
Cj4tLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oDQo+KysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9yZWcuaA0KPkBAIC03NjE4LDYgKzc2MTgsNyBAQCBlbnVtIHsNCj4g
I2RlZmluZSBTS0xfREZTTV9QSVBFX0FfRElTQUJMRQkJKDEgPDwgMzApDQo+ICNkZWZpbmUgU0tM
X0RGU01fUElQRV9CX0RJU0FCTEUJCSgxIDw8IDIxKQ0KPiAjZGVmaW5lIFNLTF9ERlNNX1BJUEVf
Q19ESVNBQkxFCQkoMSA8PCAyOCkNCj4rI2RlZmluZSBUR0xfREZTTV9QSVBFX0RfRElTQUJMRQkJ
KDEgPDwgMjIpDQo+DQo+ICNkZWZpbmUgU0tMX0RTU00JCQkJX01NSU8oMHg1MTAwNCkNCj4gI2Rl
ZmluZSBDTkxfRFNTTV9DRENMS19QTExfUkVGQ0xLXzI0TUh6CQkoMSA8PCAzMSkNCj5kaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGV2aWNlX2luZm8uYw0KPmIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaW50ZWxfZGV2aWNlX2luZm8uYw0KPmluZGV4IGUwZDlhN2EzNzk5NC4u
Zjk5YzlmZDQ5N2IyIDEwMDY0NA0KPi0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Rl
dmljZV9pbmZvLmMNCj4rKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kZXZpY2VfaW5m
by5jDQo+QEAgLTkzOCw2ICs5MzgsOSBAQCB2b2lkIGludGVsX2RldmljZV9pbmZvX3J1bnRpbWVf
aW5pdChzdHJ1Y3QNCj5kcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikNCj4gCQkJZW5hYmxlZF9t
YXNrICY9IH5CSVQoUElQRV9CKTsNCj4gCQlpZiAoZGZzbSAmIFNLTF9ERlNNX1BJUEVfQ19ESVNB
QkxFKQ0KPiAJCQllbmFibGVkX21hc2sgJj0gfkJJVChQSVBFX0MpOw0KPisJCWlmIChJTlRFTF9H
RU4oZGV2X3ByaXYpID49IDEyICYmDQo+KwkJICAgIChkZnNtICYgVEdMX0RGU01fUElQRV9EX0RJ
U0FCTEUpKQ0KPisJCQllbmFibGVkX21hc2sgJj0gfkJJVChQSVBFX0QpOw0KPg0KPiAJCS8qDQo+
IAkJICogQXQgbGVhc3Qgb25lIHBpcGUgc2hvdWxkIGJlIGVuYWJsZWQgYW5kIGlmIHRoZXJlIGFy
ZQ0KPi0tDQo+Mi4yMS4wDQo+DQo+X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18NCj5JbnRlbC1nZnggbWFpbGluZyBsaXN0DQo+SW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZw0KPmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZng=
