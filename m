Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 23B26B8D0B
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Sep 2019 10:40:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 72F5A6FB0F;
	Fri, 20 Sep 2019 08:40:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1B9F26FB0F
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Sep 2019 08:40:09 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Sep 2019 01:40:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,528,1559545200"; d="scan'208";a="212506890"
Received: from slisovsk-lenovo-ideapad-720s-13ikb.fi.intel.com ([10.237.72.89])
 by fmsmga004.fm.intel.com with ESMTP; 20 Sep 2019 01:40:06 -0700
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 20 Sep 2019 11:37:54 +0300
Message-Id: <20190920083754.5920-1-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-gfx] [PATCH v4] drm/i915: Add TigerLake bandwidth checking
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
Cc: ville.syrjala@intel.com, martin.peres@intel.com
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QWRkZWQgYmFuZHdpZHRoIGNhbGN1bGF0aW9uIGFsZ29yaXRobSBhbmQgY2hlY2tzLApzaW1pbGFy
IHdheSBhcyBpdCB3YXMgZG9uZSBmb3IgSUNMLCBzb21lIGNvbnN0YW50cwp3ZXJlIGNvcnJlY3Rl
ZCBhY2NvcmRpbmcgdG8gQlNwZWMgNTM5OTguCgp2MjogU3RhcnQgdXNpbmcgc2FtZSBpY2xfZ2V0
X2J3X2luZm8gZnVuY3Rpb24gdG8gYXZvaWQKICAgIGNvZGUgZHVwbGljYXRpb24uIE1vdmVkIG1w
YWdlc2l6ZSB0byBtZW1vcnkgaW5mbwogICAgcmVsYXRlZCBzdHJ1Y3R1cmUgYXMgaXQgaXMgbm93
IGRlcGVuZGVudCBvbiBtZW1vcnkgdHlwZS4KICAgIEZpeGVkIHFpLnRfYmwgZmllbGQgYXNzaWdu
bWVudC4KCnYzOiBSZW1vdmVkIG1wYWdlc2l6ZSBhcyB1bnVzZWQuIER1cGxpY2F0ZSBjb2RlIGFu
ZCByZWR1bmRhbnQgYmxhbmtsaW5lCiAgICBmaXhlZC4KCnY0OiBDaGFuZ2VkIG9yZGVyaW5nIG9m
IElTX0dFTiBjaGVja3MgYXMgYWdyZWVkLiBNaW5vciBjb21taXQKICAgIG1lc3NhZ2UgZml4ZXMu
CgpCdWd6aWxsYTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9
MTExNjAwCgpSZXZpZXdlZC1ieTogSmFtZXMgQXVzbXVzIDxqYW1lcy5hdXNtdXNAaW50ZWwuY29t
PgoKU2lnbmVkLW9mZi1ieTogU3RhbmlzbGF2IExpc292c2tpeSA8c3RhbmlzbGF2Lmxpc292c2tp
eUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9idy5j
IHwgMjYgKysrKysrKysrKysrKysrKystLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDE4IGluc2Vy
dGlvbnMoKyksIDggZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9idy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9idy5jCmluZGV4IDY4ODg1OGViZTRkMC4uY2Q1OGU0N2FiN2IyIDEwMDY0NAotLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2J3LmMKKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9idy5jCkBAIC01Niw3ICs1NiwxMCBAQCBzdGF0aWMgaW50IGlj
bF9wY29kZV9yZWFkX21lbV9nbG9iYWxfaW5mbyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2
X3ByaXYsCiAJcWktPm51bV9jaGFubmVscyA9ICh2YWwgJiAweGYwKSA+PiA0OwogCXFpLT5udW1f
cG9pbnRzID0gKHZhbCAmIDB4ZjAwKSA+PiA4OwogCi0JcWktPnRfYmwgPSBxaS0+ZHJhbV90eXBl
ID09IElOVEVMX0RSQU1fRERSNCA/IDQgOiA4OworCWlmIChJU19HRU4oZGV2X3ByaXYsIDEyKSkK
KwkJcWktPnRfYmwgPSBxaS0+ZHJhbV90eXBlID09IElOVEVMX0RSQU1fRERSNCA/IDQgOiAxNjsK
KwllbHNlIGlmIChJU19HRU4oZGV2X3ByaXYsIDExKSkKKwkJcWktPnRfYmwgPSBxaS0+ZHJhbV90
eXBlID09IElOVEVMX0RSQU1fRERSNCA/IDQgOiA4OwogCiAJcmV0dXJuIDA7CiB9CkBAIC0xMzIs
MjAgKzEzNSwyNSBAQCBzdGF0aWMgaW50IGljbF9zYWd2X21heF9kY2xrKGNvbnN0IHN0cnVjdCBp
bnRlbF9xZ3ZfaW5mbyAqcWkpCiB9CiAKIHN0cnVjdCBpbnRlbF9zYV9pbmZvIHsKLQl1OCBkZWJ1
cnN0LCBtcGFnZXNpemUsIGRlcHJvZ2J3bGltaXQsIGRpc3BsYXlydGlkczsKKwl1MTYgZGlzcGxh
eXJ0aWRzOworCXU4IGRlYnVyc3QsIGRlcHJvZ2J3bGltaXQ7CiB9OwogCiBzdGF0aWMgY29uc3Qg
c3RydWN0IGludGVsX3NhX2luZm8gaWNsX3NhX2luZm8gPSB7CiAJLmRlYnVyc3QgPSA4LAotCS5t
cGFnZXNpemUgPSAxNiwKIAkuZGVwcm9nYndsaW1pdCA9IDI1LCAvKiBHQi9zICovCiAJLmRpc3Bs
YXlydGlkcyA9IDEyOCwKIH07CiAKLXN0YXRpYyBpbnQgaWNsX2dldF9id19pbmZvKHN0cnVjdCBk
cm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKK3N0YXRpYyBjb25zdCBzdHJ1Y3QgaW50ZWxfc2Ff
aW5mbyB0Z2xfc2FfaW5mbyA9IHsKKwkuZGVidXJzdCA9IDE2LAorCS5kZXByb2did2xpbWl0ID0g
MzQsIC8qIEdCL3MgKi8KKwkuZGlzcGxheXJ0aWRzID0gMjU2LAorfTsKKworc3RhdGljIGludCBp
Y2xfZ2V0X2J3X2luZm8oc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LCBjb25zdCBz
dHJ1Y3QgaW50ZWxfc2FfaW5mbyAqc2EpCiB7CiAJc3RydWN0IGludGVsX3Fndl9pbmZvIHFpID0g
e307Ci0JY29uc3Qgc3RydWN0IGludGVsX3NhX2luZm8gKnNhID0gJmljbF9zYV9pbmZvOwogCWJv
b2wgaXNfeV90aWxlID0gdHJ1ZTsgLyogYXNzdW1lIHkgdGlsZSBtYXkgYmUgdXNlZCAqLwogCWlu
dCBudW1fY2hhbm5lbHM7CiAJaW50IGRlaW50ZXJsZWF2ZTsKQEAgLTIzMywxNCArMjQxLDE2IEBA
IHN0YXRpYyB1bnNpZ25lZCBpbnQgaWNsX21heF9idyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAq
ZGV2X3ByaXYsCiAKIHZvaWQgaW50ZWxfYndfaW5pdF9odyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0
ZSAqZGV2X3ByaXYpCiB7Ci0JaWYgKElTX0dFTihkZXZfcHJpdiwgMTEpKQotCQlpY2xfZ2V0X2J3
X2luZm8oZGV2X3ByaXYpOworCWlmIChJU19HRU4oZGV2X3ByaXYsIDEyKSkKKwkJaWNsX2dldF9i
d19pbmZvKGRldl9wcml2LCAmdGdsX3NhX2luZm8pOworCWVsc2UgaWYgKElTX0dFTihkZXZfcHJp
diwgMTEpKQorCQlpY2xfZ2V0X2J3X2luZm8oZGV2X3ByaXYsICZpY2xfc2FfaW5mbyk7CiB9CiAK
IHN0YXRpYyB1bnNpZ25lZCBpbnQgaW50ZWxfbWF4X2RhdGFfcmF0ZShzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZSAqZGV2X3ByaXYsCiAJCQkJCWludCBudW1fcGxhbmVzKQogewotCWlmIChJU19HRU4o
ZGV2X3ByaXYsIDExKSkKKwlpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSAxMSkKIAkJLyoKIAkJ
ICogRklYTUUgd2l0aCBTQUdWIGRpc2FibGVkIG1heWJlIHdlIGNhbiBhc3N1bWUKIAkJICogcG9p
bnQgMSB3aWxsIGFsd2F5cyBiZSB1c2VkPyBTZWVtcyB0byBtYXRjaAotLSAKMi4xNy4xCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
