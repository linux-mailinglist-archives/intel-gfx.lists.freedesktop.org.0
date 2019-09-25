Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 384D6BE6E1
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Sep 2019 23:06:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 78460732B7;
	Wed, 25 Sep 2019 21:06:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 577F173287
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Sep 2019 21:06:25 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Sep 2019 14:06:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,549,1559545200"; d="scan'208";a="189783436"
Received: from jssummer-xeon.ra.intel.com ([10.23.184.90])
 by fmsmga007.fm.intel.com with ESMTP; 25 Sep 2019 14:06:24 -0700
From: Stuart Summers <stuart.summers@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 25 Sep 2019 14:07:27 -0700
Message-Id: <20190925210727.38413-1-stuart.summers@intel.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Add feature flag for platforms with
 DRAM
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

U2lnbmVkLW9mZi1ieTogU3R1YXJ0IFN1bW1lcnMgPHN0dWFydC5zdW1tZXJzQGludGVsLmNvbT4K
LS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jICAgICAgICAgIHwgMiArLQogZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaCAgICAgICAgICB8IDIgKysKIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfcGNpLmMgICAgICAgICAgfCAzICsrLQogZHJpdmVycy9ncHUvZHJtL2k5
MTUvaW50ZWxfZGV2aWNlX2luZm8uaCB8IDEgKwogNCBmaWxlcyBjaGFuZ2VkLCA2IGluc2VydGlv
bnMoKyksIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9kcnYuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMKaW5kZXggYTllZTcz
YjYxZjRkLi41NTJiYTc2MDdlOWEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfZHJ2LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYwpAQCAtMTEyOCw3
ICsxMTI4LDcgQEAgaW50ZWxfZ2V0X2RyYW1faW5mbyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAq
ZGV2X3ByaXYpCiAJICovCiAJZHJhbV9pbmZvLT5pc18xNmdiX2RpbW0gPSAhSVNfR0VOOV9MUChk
ZXZfcHJpdik7CiAKLQlpZiAoSU5URUxfR0VOKGRldl9wcml2KSA8IDkpCisJaWYgKCFIQVNfRFJB
TShkZXZfcHJpdikpCiAJCXJldHVybjsKIAogCWlmIChJU19HRU45X0xQKGRldl9wcml2KSkKZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmggYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X2Rydi5oCmluZGV4IGZjZjc0MjMwNzVlZi4uZTgyY2EzOGJlNTllIDEwMDY0
NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oCisrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfZHJ2LmgKQEAgLTIxNTEsNiArMjE1MSw4IEBAIElTX1NVQlBMQVRGT1JN
KGNvbnN0IHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LAogCiAjZGVmaW5lIEhBU19EUF9N
U1QoZGV2X3ByaXYpCShJTlRFTF9JTkZPKGRldl9wcml2KS0+ZGlzcGxheS5oYXNfZHBfbXN0KQog
CisjZGVmaW5lIEhBU19EUkFNKGRldl9wcml2KQkoSU5URUxfSU5GTyhkZXZfcHJpdiktPmhhc19k
cmFtKQorCiAjZGVmaW5lIEhBU19EREkoZGV2X3ByaXYpCQkgKElOVEVMX0lORk8oZGV2X3ByaXYp
LT5kaXNwbGF5Lmhhc19kZGkpCiAjZGVmaW5lIEhBU19GUEdBX0RCR19VTkNMQUlNRUQoZGV2X3By
aXYpIChJTlRFTF9JTkZPKGRldl9wcml2KS0+aGFzX2ZwZ2FfZGJnKQogI2RlZmluZSBIQVNfUFNS
KGRldl9wcml2KQkJIChJTlRFTF9JTkZPKGRldl9wcml2KS0+ZGlzcGxheS5oYXNfcHNyKQpkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wY2kuYyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfcGNpLmMKaW5kZXggZWE1M2RmZTJmYmEwLi45OGQ3ZTA3ZGJhNmEgMTAwNjQ0
Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGNpLmMKKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9wY2kuYwpAQCAtNjAyLDcgKzYwMiw4IEBAIHN0YXRpYyBjb25zdCBzdHJ1
Y3QgaW50ZWxfZGV2aWNlX2luZm8gaW50ZWxfY2hlcnJ5dmlld19pbmZvID0gewogCS5kaXNwbGF5
Lmhhc19jc3IgPSAxLCBcCiAJLmhhc19ndF91YyA9IDEsIFwKIAkuZGlzcGxheS5oYXNfaXBjID0g
MSwgXAotCS5kZGJfc2l6ZSA9IDg5NgorCS5kZGJfc2l6ZSA9IDg5NiwgXAorCS5oYXNfZHJhbSA9
IDEKIAogI2RlZmluZSBTS0xfUExBVEZPUk0gXAogCUdFTjlfRkVBVFVSRVMsIFwKZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RldmljZV9pbmZvLmggYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pbnRlbF9kZXZpY2VfaW5mby5oCmluZGV4IDBjZGMyNDY1NTM0Yi4uYzljODU4
MTAwZWEzIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kZXZpY2VfaW5m
by5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RldmljZV9pbmZvLmgKQEAgLTEw
OSw2ICsxMDksNyBAQCBlbnVtIGludGVsX3BwZ3R0X3R5cGUgewogCWZ1bmMocmVxdWlyZV9mb3Jj
ZV9wcm9iZSk7IFwKIAkvKiBLZWVwIGhhc18qIGluIGFscGhhYmV0aWNhbCBvcmRlciAqLyBcCiAJ
ZnVuYyhoYXNfNjRiaXRfcmVsb2MpOyBcCisJZnVuYyhoYXNfZHJhbSk7IFwKIAlmdW5jKGdwdV9y
ZXNldF9jbG9iYmVyc19kaXNwbGF5KTsgXAogCWZ1bmMoaGFzX3Jlc2V0X2VuZ2luZSk7IFwKIAlm
dW5jKGhhc19mcGdhX2RiZyk7IFwKLS0gCjIuMjIuMAoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4
