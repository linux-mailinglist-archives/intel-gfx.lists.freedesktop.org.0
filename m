Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 116F780200
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Aug 2019 22:51:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 101346E4C1;
	Fri,  2 Aug 2019 20:51:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 08A6B6E49C
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Aug 2019 20:51:36 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Aug 2019 13:51:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,339,1559545200"; d="scan'208";a="175021794"
Received: from jssummer-desk.jf.intel.com ([10.165.21.197])
 by fmsmga007.fm.intel.com with ESMTP; 02 Aug 2019 13:51:35 -0700
From: Stuart Summers <stuart.summers@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  2 Aug 2019 13:51:27 -0700
Message-Id: <20190802205134.303-4-stuart.summers@intel.com>
X-Mailer: git-send-email 2.21.0.5.gaeb582a983
In-Reply-To: <20190802205134.303-1-stuart.summers@intel.com>
References: <20190802205134.303-1-stuart.summers@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 03/10] drm/i915: Use local variable for
 subslice_mask on HSW
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

SW5zdGVhZCBvZiBhc3N1bWluZyBhIHNpbmdsZSBzbGljZSBvbiBIU1cgd2hlbiBkZWZpbmluZwpz
dWJzbGljZXMgZm9yIHRoZSBwbGF0Zm9ybSwgdXNlIGEgbG9jYWwgdmFyaWFibGUgdG8gc2V0CnRo
ZSBtYXhpbXVtIHN1YnNsaWNlcyBwZXIgc2xpY2UuCgpTaWduZWQtb2ZmLWJ5OiBTdHVhcnQgU3Vt
bWVycyA8c3R1YXJ0LnN1bW1lcnNAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2ludGVsX2RldmljZV9pbmZvLmMgfCAxMSArKysrKystLS0tLQogMSBmaWxlIGNoYW5nZWQsIDYg
aW5zZXJ0aW9ucygrKSwgNSBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pbnRlbF9kZXZpY2VfaW5mby5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxf
ZGV2aWNlX2luZm8uYwppbmRleCA5YTc5ZDlkNTQ3YzUuLjJiODFjYzczMWZhMiAxMDA2NDQKLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGV2aWNlX2luZm8uYworKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pbnRlbF9kZXZpY2VfaW5mby5jCkBAIC01NDEsNiArNTQxLDcgQEAgc3Rh
dGljIHZvaWQgaGFzd2VsbF9zc2V1X2luZm9faW5pdChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAq
ZGV2X3ByaXYpCiB7CiAJc3RydWN0IHNzZXVfZGV2X2luZm8gKnNzZXUgPSAmUlVOVElNRV9JTkZP
KGRldl9wcml2KS0+c3NldTsKIAl1MzIgZnVzZTE7CisJdTggc3Vic2xpY2VfbWFzazsKIAlpbnQg
cywgc3M7CiAKIAkvKgpAQCAtNTUzLDE2ICs1NTQsMTYgQEAgc3RhdGljIHZvaWQgaGFzd2VsbF9z
c2V1X2luZm9faW5pdChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiAJCS8qIGZh
bGwgdGhyb3VnaCAqLwogCWNhc2UgMToKIAkJc3NldS0+c2xpY2VfbWFzayA9IEJJVCgwKTsKLQkJ
c3NldS0+c3Vic2xpY2VfbWFza1swXSA9IEJJVCgwKTsKKwkJc3Vic2xpY2VfbWFzayA9IEJJVCgw
KTsKIAkJYnJlYWs7CiAJY2FzZSAyOgogCQlzc2V1LT5zbGljZV9tYXNrID0gQklUKDApOwotCQlz
c2V1LT5zdWJzbGljZV9tYXNrWzBdID0gQklUKDApIHwgQklUKDEpOworCQlzdWJzbGljZV9tYXNr
ID0gQklUKDApIHwgQklUKDEpOwogCQlicmVhazsKIAljYXNlIDM6CiAJCXNzZXUtPnNsaWNlX21h
c2sgPSBCSVQoMCkgfCBCSVQoMSk7Ci0JCXNzZXUtPnN1YnNsaWNlX21hc2tbMF0gPSBCSVQoMCkg
fCBCSVQoMSk7Ci0JCXNzZXUtPnN1YnNsaWNlX21hc2tbMV0gPSBCSVQoMCkgfCBCSVQoMSk7CisJ
CXN1YnNsaWNlX21hc2sgPSBCSVQoMCkgfCBCSVQoMSk7CisJCXN1YnNsaWNlX21hc2sgPSBCSVQo
MCkgfCBCSVQoMSk7CiAJCWJyZWFrOwogCX0KIApAQCAtNTg0LDcgKzU4NSw3IEBAIHN0YXRpYyB2
b2lkIGhhc3dlbGxfc3NldV9pbmZvX2luaXQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9w
cml2KQogCX0KIAogCWludGVsX3NzZXVfc2V0X2luZm8oc3NldSwgaHdlaWdodDgoc3NldS0+c2xp
Y2VfbWFzayksCi0JCQkgICAgaHdlaWdodDgoc3NldS0+c3Vic2xpY2VfbWFza1swXSksCisJCQkg
ICAgaHdlaWdodDgoc3Vic2xpY2VfbWFzayksCiAJCQkgICAgc3NldS0+ZXVfcGVyX3N1YnNsaWNl
KTsKIAogCWZvciAocyA9IDA7IHMgPCBzc2V1LT5tYXhfc2xpY2VzOyBzKyspIHsKLS0gCjIuMjEu
MC41LmdhZWI1ODJhOTgzCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZng=
