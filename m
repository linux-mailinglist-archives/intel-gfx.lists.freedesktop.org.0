Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2384E23E5AB
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Aug 2020 04:02:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE6306E950;
	Fri,  7 Aug 2020 02:02:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E3C016E950
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Aug 2020 02:02:53 +0000 (UTC)
IronPort-SDR: 6xKMEDSgjvSI9aIcxsjTVqBXDoyb7NlRA5Q07UmpJDR8sFynONHmH2HTYtlMZJO1Cni4bTyRtk
 Jz/VLnJ50dpQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9705"; a="150697336"
X-IronPort-AV: E=Sophos;i="5.75,443,1589266800"; d="scan'208";a="150697336"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2020 19:02:53 -0700
IronPort-SDR: DPGM5kw3Y8VdL+Sqtqk2YwCTVgbY18zarGoETr1jhiqMTlZNkY12p4ylV9nmt0/pOdFhZ0vPh+
 OINYxKNDkcew==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,443,1589266800"; d="scan'208";a="289472297"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by orsmga003.jf.intel.com with ESMTP; 06 Aug 2020 19:02:53 -0700
Received: from orsmsx606.amr.corp.intel.com (10.22.229.19) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 6 Aug 2020 19:02:52 -0700
Received: from orsmsx111.amr.corp.intel.com (10.22.240.12) by
 orsmsx606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Thu, 6 Aug 2020 19:02:52 -0700
Received: from orsmsx115.amr.corp.intel.com ([169.254.4.57]) by
 ORSMSX111.amr.corp.intel.com ([169.254.12.201]) with mapi id 14.03.0439.000;
 Thu, 6 Aug 2020 19:02:52 -0700
From: "Dhanavanthri, Swathi" <swathi.dhanavanthri@intel.com>
To: "Souza, Jose" <jose.souza@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 1/2] drm/i915/tgl: Set subplatforms
Thread-Index: AQHWXrhScybiISoGpEG/DICBrsUlsakr+tKA
Date: Fri, 7 Aug 2020 02:02:51 +0000
Message-ID: <09614FAEEEACB8419B519675A649C8BF89B031CA@ORSMSX115.amr.corp.intel.com>
References: <20200720170948.28446-1-jose.souza@intel.com>
In-Reply-To: <20200720170948.28446-1-jose.souza@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/tgl: Set subplatforms
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

SXQgbWlnaHQgYmUgaGVscGZ1bCB0byBhZGQgYSBkZWZhdWx0IGNhc2UgaW4gdGhlIHN3aXRjaCBz
dGF0ZW1lbnQgZm9yIHVuc3VwcG9ydGVkIGNhc2VzLg0KDQotLS0tLU9yaWdpbmFsIE1lc3NhZ2Ut
LS0tLQ0KRnJvbTogSW50ZWwtZ2Z4IDxpbnRlbC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3Rv
cC5vcmc+IE9uIEJlaGFsZiBPZiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphDQpTZW50OiBNb25kYXks
IEp1bHkgMjAsIDIwMjAgMTA6MTAgQU0NClRvOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnDQpTdWJqZWN0OiBbSW50ZWwtZ2Z4XSBbUEFUQ0ggMS8yXSBkcm0vaTkxNS90Z2w6IFNldCBz
dWJwbGF0Zm9ybXMNCg0KVGhlcmUgaXMgbm8gd2F5IHRvIGRpZmZlcmVudGlhdGUgVEdMLVUgZnJv
bSBUR0wtWSBieSB0aGUgUENJIGlkcyBhcyBzb21lIGlkcyBhcmUgYXZhaWxhYmxlIGluIGJvdGgg
U0tVcy4NClNvIGhlcmUgdXNpbmcgdGhlIHJvb3QgZGV2aWNlIGlkIGluIHRoZSBQQ0kgYnVzIHRo
YXQgaUdQVSBpcyBpbiB0byBkaWZmZXJlbnRpYXRlIGJldHdlZW4gVSBhbmQgWS4NCg0KQlNwZWM6
IDQ0NDU1DQpTaWduZWQtb2ZmLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXph
QGludGVsLmNvbT4NCi0tLQ0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmggICAgICAg
ICAgfCAgNiArKysrKysNCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oICAgICAgICAg
IHwgIDYgKysrKysrDQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGV2aWNlX2luZm8uYyB8
IDE5ICsrKysrKysrKysrKysrKysrKysNCiAzIGZpbGVzIGNoYW5nZWQsIDMxIGluc2VydGlvbnMo
KykNCg0KZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmggYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oIGluZGV4IDU2ZGZjNmQ5OGNhYS4uYTU5ZjY0ODIx
OTIwIDEwMDY0NA0KLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaA0KKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaA0KQEAgLTE0OTcsNiArMTQ5NywxMiBAQCBJ
U19TVUJQTEFURk9STShjb25zdCBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwgICNkZWZp
bmUgSVNfSUNMX1dJVEhfUE9SVF9GKGRldl9wcml2KSBcDQogCUlTX1NVQlBMQVRGT1JNKGRldl9w
cml2LCBJTlRFTF9JQ0VMQUtFLCBJTlRFTF9TVUJQTEFURk9STV9QT1JURikNCiANCisjZGVmaW5l
IElTX1RHTF9VKGRldl9wcml2KSBcDQorCUlTX1NVQlBMQVRGT1JNKGRldl9wcml2LCBJTlRFTF9U
SUdFUkxBS0UsIElOVEVMX1NVQlBMQVRGT1JNX1VMVCkNCisNCisjZGVmaW5lIElTX1RHTF9ZKGRl
dl9wcml2KSBcDQorCUlTX1NVQlBMQVRGT1JNKGRldl9wcml2LCBJTlRFTF9USUdFUkxBS0UsIElO
VEVMX1NVQlBMQVRGT1JNX1VMWCkNCisNCiAjZGVmaW5lIFNLTF9SRVZJRF9BMAkJMHgwDQogI2Rl
ZmluZSBTS0xfUkVWSURfQjAJCTB4MQ0KICNkZWZpbmUgU0tMX1JFVklEX0MwCQkweDINCmRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9yZWcuaCBpbmRleCBhMGQzMWYzYmY2MzQuLjZhMDc2OGNiMDFmNiAxMDA2NDQN
Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgNCisrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfcmVnLmgNCkBAIC0xMjM2Myw0ICsxMjM2MywxMCBAQCBlbnVtIHNrbF9w
b3dlcl9nYXRlIHsNCiAjZGVmaW5lICAgRFNCX0VOQUJMRQkJCSgxIDw8IDMxKQ0KICNkZWZpbmUg
ICBEU0JfU1RBVFVTCQkJKDEgPDwgMCkNCiANCisjZGVmaW5lIFRHTF9ST09UX0RFVklDRV9JRAkJ
MHg5QTAwDQorI2RlZmluZSBUR0xfUk9PVF9ERVZJQ0VfTUFTSwkJMHhGRjAwDQorI2RlZmluZSBU
R0xfUk9PVF9ERVZJQ0VfU0tVX01BU0sJMHhGDQorI2RlZmluZSBUR0xfUk9PVF9ERVZJQ0VfU0tV
X1VMWAkJMHgyDQorI2RlZmluZSBUR0xfUk9PVF9ERVZJQ0VfU0tVX1VMVAkJMHg0DQorDQogI2Vu
ZGlmIC8qIF9JOTE1X1JFR19IXyAqLw0KZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2ludGVsX2RldmljZV9pbmZvLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kZXZpY2Vf
aW5mby5jDQppbmRleCA0MGM1OTBkYjNjNzYuLmUyYWE1YmMzYTZlMCAxMDA2NDQNCi0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RldmljZV9pbmZvLmMNCisrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2ludGVsX2RldmljZV9pbmZvLmMNCkBAIC0zNDYsNiArMzQ2LDI1IEBAIHZvaWQg
aW50ZWxfZGV2aWNlX2luZm9fc3VicGxhdGZvcm1faW5pdChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0
ZSAqaTkxNSkNCiAJCW1hc2sgPSBCSVQoSU5URUxfU1VCUExBVEZPUk1fUE9SVEYpOw0KIAl9DQog
DQorCWlmIChJU19USUdFUkxBS0UoaTkxNSkpIHsNCisJCXN0cnVjdCBwY2lfZGV2ICpyb290LCAq
cGRldiA9IGk5MTUtPmRybS5wZGV2Ow0KKw0KKwkJcm9vdCA9IGxpc3RfZmlyc3RfZW50cnkoJnBk
ZXYtPmJ1cy0+ZGV2aWNlcywgdHlwZW9mKCpyb290KSwgDQorYnVzX2xpc3QpOw0KKw0KKwkJZHJt
X1dBUk5fT04oJmk5MTUtPmRybSwgbWFzayk7DQorCQlkcm1fV0FSTl9PTigmaTkxNS0+ZHJtLCAo
cm9vdC0+ZGV2aWNlICYgVEdMX1JPT1RfREVWSUNFX01BU0spICE9DQorCQkJICAgIFRHTF9ST09U
X0RFVklDRV9JRCk7DQorDQorCQlzd2l0Y2ggKHJvb3QtPmRldmljZSAmIFRHTF9ST09UX0RFVklD
RV9TS1VfTUFTSykgew0KKwkJY2FzZSBUR0xfUk9PVF9ERVZJQ0VfU0tVX1VMWDoNCisJCQltYXNr
ID0gQklUKElOVEVMX1NVQlBMQVRGT1JNX1VMWCk7DQorCQkJYnJlYWs7DQorCQljYXNlIFRHTF9S
T09UX0RFVklDRV9TS1VfVUxUOg0KKwkJCW1hc2sgPSBCSVQoSU5URUxfU1VCUExBVEZPUk1fVUxU
KTsNCisJCQlicmVhazsNCisJCX0NCisJfQ0KKw0KIAlHRU1fQlVHX09OKG1hc2sgJiB+SU5URUxf
U1VCUExBVEZPUk1fQklUUyk7DQogDQogCVJVTlRJTUVfSU5GTyhpOTE1KS0+cGxhdGZvcm1fbWFz
a1twaV0gfD0gbWFzazsNCi0tDQoyLjI3LjANCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18NCkludGVsLWdmeCBtYWlsaW5nIGxpc3QNCkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcNCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZngK
