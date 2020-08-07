Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 554E523F306
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Aug 2020 21:24:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0DB506E156;
	Fri,  7 Aug 2020 19:24:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 14E9A6E156
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Aug 2020 19:24:12 +0000 (UTC)
IronPort-SDR: CTYx/fR1G5LDaRnSpST3zkV+0dF0kpxY/Mjw810ySaKq1yvQL2vTayG6X0bQbHOsbP8JkDRlU/
 F3ieC7pD5thg==
X-IronPort-AV: E=McAfee;i="6000,8403,9706"; a="153148859"
X-IronPort-AV: E=Sophos;i="5.75,446,1589266800"; d="scan'208";a="153148859"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2020 12:24:12 -0700
IronPort-SDR: GrnLvZZxdnhI/pwjk5OQl54MruO7SeEHvllnUk7N8ts2bNbu5zo/KN/DQWT+vUNR0cFxBLlrDF
 wNrWe9VfzuAA==
X-IronPort-AV: E=Sophos;i="5.75,446,1589266800"; d="scan'208";a="494139295"
Received: from msundar1-mobl4.amr.corp.intel.com (HELO
 josouza-MOBL2.amr.corp.intel.com) ([10.251.136.42])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2020 12:24:11 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  7 Aug 2020 12:26:28 -0700
Message-Id: <20200807192629.64134-1-jose.souza@intel.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH CI 1/2] drm/i915/tgl: Set subplatforms
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

VGhlcmUgaXMgbm8gd2F5IHRvIGRpZmZlcmVudGlhdGUgVEdMLVUgZnJvbSBUR0wtWSBieSB0aGUg
UENJIGlkcyBhcwpzb21lIGlkcyBhcmUgYXZhaWxhYmxlIGluIGJvdGggU0tVcy4KU28gaGVyZSB1
c2luZyB0aGUgcm9vdCBkZXZpY2UgaWQgaW4gdGhlIFBDSSBidXMgdGhhdCBpR1BVIGlzIGluCnRv
IGRpZmZlcmVudGlhdGUgYmV0d2VlbiBVIGFuZCBZLgoKQlNwZWM6IDQ0NDU1ClJldmlld2VkLWJ5
OiBTd2F0aGkgRGhhbmF2YW50aHJpIDxzd2F0aGkuZGhhbmF2YW50aHJpQGludGVsLmNvbT4KU2ln
bmVkLW9mZi1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+
Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaCAgICAgICAgICB8ICA2ICsrKysr
KwogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCAgICAgICAgICB8ICA2ICsrKysrKwog
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGV2aWNlX2luZm8uYyB8IDE5ICsrKysrKysrKysr
KysrKysrKysKIDMgZmlsZXMgY2hhbmdlZCwgMzEgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X2Rydi5oCmluZGV4IDA1YTI2MjQxMTZhMS4uYmFjYjRjNzYyZjViIDEwMDY0NAotLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfZHJ2LmgKQEAgLTE0ODcsNiArMTQ4NywxMiBAQCBJU19TVUJQTEFURk9STShjb25zdCBz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwKICNkZWZpbmUgSVNfSUNMX1dJVEhfUE9SVF9G
KGRldl9wcml2KSBcCiAJSVNfU1VCUExBVEZPUk0oZGV2X3ByaXYsIElOVEVMX0lDRUxBS0UsIElO
VEVMX1NVQlBMQVRGT1JNX1BPUlRGKQogCisjZGVmaW5lIElTX1RHTF9VKGRldl9wcml2KSBcCisJ
SVNfU1VCUExBVEZPUk0oZGV2X3ByaXYsIElOVEVMX1RJR0VSTEFLRSwgSU5URUxfU1VCUExBVEZP
Uk1fVUxUKQorCisjZGVmaW5lIElTX1RHTF9ZKGRldl9wcml2KSBcCisJSVNfU1VCUExBVEZPUk0o
ZGV2X3ByaXYsIElOVEVMX1RJR0VSTEFLRSwgSU5URUxfU1VCUExBVEZPUk1fVUxYKQorCiAjZGVm
aW5lIFNLTF9SRVZJRF9BMAkJMHgwCiAjZGVmaW5lIFNLTF9SRVZJRF9CMAkJMHgxCiAjZGVmaW5l
IFNLTF9SRVZJRF9DMAkJMHgyCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X3JlZy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAppbmRleCBlODVjNmZjMWYz
Y2IuLjE0ZDhjM2ZiY2MwZCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9y
ZWcuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCkBAIC0xMjM1Myw0ICsx
MjM1MywxMCBAQCBlbnVtIHNrbF9wb3dlcl9nYXRlIHsKICNkZWZpbmUgICBEU0JfRU5BQkxFCQkJ
KDEgPDwgMzEpCiAjZGVmaW5lICAgRFNCX1NUQVRVUwkJCSgxIDw8IDApCiAKKyNkZWZpbmUgVEdM
X1JPT1RfREVWSUNFX0lECQkweDlBMDAKKyNkZWZpbmUgVEdMX1JPT1RfREVWSUNFX01BU0sJCTB4
RkYwMAorI2RlZmluZSBUR0xfUk9PVF9ERVZJQ0VfU0tVX01BU0sJMHhGCisjZGVmaW5lIFRHTF9S
T09UX0RFVklDRV9TS1VfVUxYCQkweDIKKyNkZWZpbmUgVEdMX1JPT1RfREVWSUNFX1NLVV9VTFQJ
CTB4NAorCiAjZW5kaWYgLyogX0k5MTVfUkVHX0hfICovCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pbnRlbF9kZXZpY2VfaW5mby5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50
ZWxfZGV2aWNlX2luZm8uYwppbmRleCA0MGM1OTBkYjNjNzYuLmUyYWE1YmMzYTZlMCAxMDA2NDQK
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGV2aWNlX2luZm8uYworKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kZXZpY2VfaW5mby5jCkBAIC0zNDYsNiArMzQ2LDI1IEBA
IHZvaWQgaW50ZWxfZGV2aWNlX2luZm9fc3VicGxhdGZvcm1faW5pdChzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZSAqaTkxNSkKIAkJbWFzayA9IEJJVChJTlRFTF9TVUJQTEFURk9STV9QT1JURik7CiAJ
fQogCisJaWYgKElTX1RJR0VSTEFLRShpOTE1KSkgeworCQlzdHJ1Y3QgcGNpX2RldiAqcm9vdCwg
KnBkZXYgPSBpOTE1LT5kcm0ucGRldjsKKworCQlyb290ID0gbGlzdF9maXJzdF9lbnRyeSgmcGRl
di0+YnVzLT5kZXZpY2VzLCB0eXBlb2YoKnJvb3QpLCBidXNfbGlzdCk7CisKKwkJZHJtX1dBUk5f
T04oJmk5MTUtPmRybSwgbWFzayk7CisJCWRybV9XQVJOX09OKCZpOTE1LT5kcm0sIChyb290LT5k
ZXZpY2UgJiBUR0xfUk9PVF9ERVZJQ0VfTUFTSykgIT0KKwkJCSAgICBUR0xfUk9PVF9ERVZJQ0Vf
SUQpOworCisJCXN3aXRjaCAocm9vdC0+ZGV2aWNlICYgVEdMX1JPT1RfREVWSUNFX1NLVV9NQVNL
KSB7CisJCWNhc2UgVEdMX1JPT1RfREVWSUNFX1NLVV9VTFg6CisJCQltYXNrID0gQklUKElOVEVM
X1NVQlBMQVRGT1JNX1VMWCk7CisJCQlicmVhazsKKwkJY2FzZSBUR0xfUk9PVF9ERVZJQ0VfU0tV
X1VMVDoKKwkJCW1hc2sgPSBCSVQoSU5URUxfU1VCUExBVEZPUk1fVUxUKTsKKwkJCWJyZWFrOwor
CQl9CisJfQorCiAJR0VNX0JVR19PTihtYXNrICYgfklOVEVMX1NVQlBMQVRGT1JNX0JJVFMpOwog
CiAJUlVOVElNRV9JTkZPKGk5MTUpLT5wbGF0Zm9ybV9tYXNrW3BpXSB8PSBtYXNrOwotLSAKMi4y
OC4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
