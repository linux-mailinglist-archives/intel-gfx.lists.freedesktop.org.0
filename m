Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 26D7A7E017
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Aug 2019 18:23:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EDC866E71F;
	Thu,  1 Aug 2019 16:23:34 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 969226E71F
 for <Intel-gfx@lists.freedesktop.org>; Thu,  1 Aug 2019 16:23:34 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 01 Aug 2019 09:23:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,334,1559545200"; d="scan'208";a="163665979"
Received: from gadevlin-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.251.95.57])
 by orsmga007.jf.intel.com with ESMTP; 01 Aug 2019 09:23:33 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Thu,  1 Aug 2019 17:23:29 +0100
Message-Id: <20190801162330.2729-3-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190801162330.2729-1-tvrtko.ursulin@linux.intel.com>
References: <20190801162330.2729-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 3/4] drm/i915/pmu: Convert sampling to gt
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

RnJvbTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KCkVuZ2luZXMg
YW5kIGZyZXF1ZW5jaWVzIGFyZSBhIEdUIHRoaW5nIHNvIGFkanVzdCBzYW1wbGluZyByb3V0aW5l
cyB0bwptYXRjaC4KClNpZ25lZC1vZmYtYnk6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxp
bkBpbnRlbC5jb20+ClJldmlld2VkLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNv
bi5jby51az4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BtdS5jIHwgNDMgKysrKysr
KysrKysrKysrKysrLS0tLS0tLS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgMjMgaW5zZXJ0aW9u
cygrKSwgMjAgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9wbXUuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcG11LmMKaW5kZXggMDkyNjVi
NmI3OGIyLi41Y2Y5YTQ3YTBjNDMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfcG11LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wbXUuYwpAQCAtMTYyLDkg
KzE2MiwxMCBAQCBhZGRfc2FtcGxlKHN0cnVjdCBpOTE1X3BtdV9zYW1wbGUgKnNhbXBsZSwgdTMy
IHZhbCkKIH0KIAogc3RhdGljIHZvaWQKLWVuZ2luZXNfc2FtcGxlKHN0cnVjdCBkcm1faTkxNV9w
cml2YXRlICppOTE1LCB1bnNpZ25lZCBpbnQgcGVyaW9kX25zKQorZW5naW5lc19zYW1wbGUoc3Ry
dWN0IGludGVsX2d0ICpndCwgdW5zaWduZWQgaW50IHBlcmlvZF9ucykKIHsKLQlzdHJ1Y3QgaW50
ZWxfdW5jb3JlICp1bmNvcmUgPSAmaTkxNS0+dW5jb3JlOworCXN0cnVjdCBkcm1faTkxNV9wcml2
YXRlICppOTE1ID0gZ3QtPmk5MTU7CisJc3RydWN0IGludGVsX3VuY29yZSAqdW5jb3JlID0gZ3Qt
PnVuY29yZTsKIAlzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmU7CiAJZW51bSBpbnRlbF9l
bmdpbmVfaWQgaWQ7CiAJaW50ZWxfd2FrZXJlZl90IHdha2VyZWY7CkBAIC0xNzQsNyArMTc1LDcg
QEAgZW5naW5lc19zYW1wbGUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsIHVuc2lnbmVk
IGludCBwZXJpb2RfbnMpCiAJCXJldHVybjsKIAogCXdha2VyZWYgPSAwOwotCWlmIChSRUFEX09O
Q0UoaTkxNS0+Z3QuYXdha2UpKQorCWlmIChSRUFEX09OQ0UoZ3QtPmF3YWtlKSkKIAkJd2FrZXJl
ZiA9IGludGVsX3J1bnRpbWVfcG1fZ2V0X2lmX2luX3VzZSgmaTkxNS0+cnVudGltZV9wbSk7CiAJ
aWYgKCF3YWtlcmVmKQogCQlyZXR1cm47CkBAIC0yMjEsMzQgKzIyMiwzNSBAQCBhZGRfc2FtcGxl
X211bHQoc3RydWN0IGk5MTVfcG11X3NhbXBsZSAqc2FtcGxlLCB1MzIgdmFsLCB1MzIgbXVsKQog
fQogCiBzdGF0aWMgdm9pZAotZnJlcXVlbmN5X3NhbXBsZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0
ZSAqZGV2X3ByaXYsIHVuc2lnbmVkIGludCBwZXJpb2RfbnMpCitmcmVxdWVuY3lfc2FtcGxlKHN0
cnVjdCBpbnRlbF9ndCAqZ3QsIHVuc2lnbmVkIGludCBwZXJpb2RfbnMpCiB7Ci0JaWYgKGRldl9w
cml2LT5wbXUuZW5hYmxlICYKLQkgICAgY29uZmlnX2VuYWJsZWRfbWFzayhJOTE1X1BNVV9BQ1RV
QUxfRlJFUVVFTkNZKSkgeworCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0gZ3QtPmk5
MTU7CisJc3RydWN0IGludGVsX3VuY29yZSAqdW5jb3JlID0gZ3QtPnVuY29yZTsKKwlzdHJ1Y3Qg
aTkxNV9wbXUgKnBtdSA9ICZpOTE1LT5wbXU7CisKKwlpZiAocG11LT5lbmFibGUgJiBjb25maWdf
ZW5hYmxlZF9tYXNrKEk5MTVfUE1VX0FDVFVBTF9GUkVRVUVOQ1kpKSB7CiAJCXUzMiB2YWw7CiAK
LQkJdmFsID0gZGV2X3ByaXYtPmd0X3BtLnJwcy5jdXJfZnJlcTsKLQkJaWYgKGRldl9wcml2LT5n
dC5hd2FrZSkgeworCQl2YWwgPSBpOTE1LT5ndF9wbS5ycHMuY3VyX2ZyZXE7CisJCWlmIChndC0+
YXdha2UpIHsKIAkJCWludGVsX3dha2VyZWZfdCB3YWtlcmVmOwogCi0JCQl3aXRoX2ludGVsX3J1
bnRpbWVfcG1faWZfaW5fdXNlKCZkZXZfcHJpdi0+cnVudGltZV9wbSwKKwkJCXdpdGhfaW50ZWxf
cnVudGltZV9wbV9pZl9pbl91c2UoJmk5MTUtPnJ1bnRpbWVfcG0sCiAJCQkJCQkJd2FrZXJlZikg
ewotCQkJCXZhbCA9IGludGVsX3VuY29yZV9yZWFkX25vdHJhY2UoJmRldl9wcml2LT51bmNvcmUs
CisJCQkJdmFsID0gaW50ZWxfdW5jb3JlX3JlYWRfbm90cmFjZSh1bmNvcmUsCiAJCQkJCQkJCUdF
TjZfUlBTVEFUMSk7Ci0JCQkJdmFsID0gaW50ZWxfZ2V0X2NhZ2YoZGV2X3ByaXYsIHZhbCk7CisJ
CQkJdmFsID0gaW50ZWxfZ2V0X2NhZ2YoaTkxNSwgdmFsKTsKIAkJCX0KIAkJfQogCi0JCWFkZF9z
YW1wbGVfbXVsdCgmZGV2X3ByaXYtPnBtdS5zYW1wbGVbX19JOTE1X1NBTVBMRV9GUkVRX0FDVF0s
Ci0JCQkJaW50ZWxfZ3B1X2ZyZXEoZGV2X3ByaXYsIHZhbCksCisJCWFkZF9zYW1wbGVfbXVsdCgm
cG11LT5zYW1wbGVbX19JOTE1X1NBTVBMRV9GUkVRX0FDVF0sCisJCQkJaW50ZWxfZ3B1X2ZyZXEo
aTkxNSwgdmFsKSwKIAkJCQlwZXJpb2RfbnMgLyAxMDAwKTsKIAl9CiAKLQlpZiAoZGV2X3ByaXYt
PnBtdS5lbmFibGUgJgotCSAgICBjb25maWdfZW5hYmxlZF9tYXNrKEk5MTVfUE1VX1JFUVVFU1RF
RF9GUkVRVUVOQ1kpKSB7Ci0JCWFkZF9zYW1wbGVfbXVsdCgmZGV2X3ByaXYtPnBtdS5zYW1wbGVb
X19JOTE1X1NBTVBMRV9GUkVRX1JFUV0sCi0JCQkJaW50ZWxfZ3B1X2ZyZXEoZGV2X3ByaXYsCi0J
CQkJCSAgICAgICBkZXZfcHJpdi0+Z3RfcG0ucnBzLmN1cl9mcmVxKSwKKwlpZiAocG11LT5lbmFi
bGUgJiBjb25maWdfZW5hYmxlZF9tYXNrKEk5MTVfUE1VX1JFUVVFU1RFRF9GUkVRVUVOQ1kpKSB7
CisJCWFkZF9zYW1wbGVfbXVsdCgmcG11LT5zYW1wbGVbX19JOTE1X1NBTVBMRV9GUkVRX1JFUV0s
CisJCQkJaW50ZWxfZ3B1X2ZyZXEoaTkxNSwgaTkxNS0+Z3RfcG0ucnBzLmN1cl9mcmVxKSwKIAkJ
CQlwZXJpb2RfbnMgLyAxMDAwKTsKIAl9CiB9CkBAIC0yNTgsNiArMjYwLDcgQEAgc3RhdGljIGVu
dW0gaHJ0aW1lcl9yZXN0YXJ0IGk5MTVfc2FtcGxlKHN0cnVjdCBocnRpbWVyICpocnRpbWVyKQog
CXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0KIAkJY29udGFpbmVyX29mKGhydGltZXIs
IHN0cnVjdCBkcm1faTkxNV9wcml2YXRlLCBwbXUudGltZXIpOwogCXN0cnVjdCBpOTE1X3BtdSAq
cG11ID0gJmk5MTUtPnBtdTsKKwlzdHJ1Y3QgaW50ZWxfZ3QgKmd0ID0gJmk5MTUtPmd0OwogCXVu
c2lnbmVkIGludCBwZXJpb2RfbnM7CiAJa3RpbWVfdCBub3c7CiAKQEAgLTI3NCw4ICsyNzcsOCBA
QCBzdGF0aWMgZW51bSBocnRpbWVyX3Jlc3RhcnQgaTkxNV9zYW1wbGUoc3RydWN0IGhydGltZXIg
KmhydGltZXIpCiAJICogZ3JhYmJpbmcgdGhlIGZvcmNld2FrZS4gSG93ZXZlciB0aGUgcG90ZW50
aWFsIGVycm9yIGZyb20gdGltZXIgY2FsbC0KIAkgKiBiYWNrIGRlbGF5IGdyZWF0bHkgZG9taW5h
dGVzIHRoaXMgc28gd2Uga2VlcCBpdCBzaW1wbGUuCiAJICovCi0JZW5naW5lc19zYW1wbGUoaTkx
NSwgcGVyaW9kX25zKTsKLQlmcmVxdWVuY3lfc2FtcGxlKGk5MTUsIHBlcmlvZF9ucyk7CisJZW5n
aW5lc19zYW1wbGUoZ3QsIHBlcmlvZF9ucyk7CisJZnJlcXVlbmN5X3NhbXBsZShndCwgcGVyaW9k
X25zKTsKIAogCWhydGltZXJfZm9yd2FyZChocnRpbWVyLCBub3csIG5zX3RvX2t0aW1lKFBFUklP
RCkpOwogCi0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeA==
