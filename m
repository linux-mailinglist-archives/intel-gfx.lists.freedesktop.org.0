Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1390DDC080
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Oct 2019 11:05:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 05CA96E093;
	Fri, 18 Oct 2019 09:05:21 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2D9D86E093
 for <Intel-gfx@lists.freedesktop.org>; Fri, 18 Oct 2019 09:05:19 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Oct 2019 02:05:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,311,1566889200"; d="scan'208";a="196152356"
Received: from dwiesing-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.252.31.172])
 by fmsmga007.fm.intel.com with ESMTP; 18 Oct 2019 02:05:17 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Fri, 18 Oct 2019 10:05:14 +0100
Message-Id: <20191018090514.1818-1-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/pmu: Fix uninitialized variable on
 error path
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

RnJvbTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KCklmIG5hbWUg
YWxsb2NhdGlvbiBmYWlsZWQgdGhlIGxvZyBtZXNzYWdlIHdpbGwgY29udGFpbiBhbiB1bml0aWFs
aXplZAplcnJvciBjb2RlIHdoaWNoIGNhbiBiZSBjb25mdXNpbmcuCgpGaXhlczogMDU0ODg2NzNh
NGQ0ICgiZHJtL2k5MTUvcG11OiBTdXBwb3J0IG11bHRpcGxlIEdQVXMiKQpTaWduZWQtb2ZmLWJ5
OiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgotLS0KIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfcG11LmMgfCA2ICsrLS0tLQogMSBmaWxlIGNoYW5nZWQsIDIgaW5z
ZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X3BtdS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wbXUuYwppbmRleCAw
MGZlNDAxODY4YzQuLjE0NGMzMmVlZDA0NSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9wbXUuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BtdS5jCkBAIC0x
MDk0LDcgKzEwOTQsNyBAQCBzdGF0aWMgYm9vbCBpc19pZ3Aoc3RydWN0IGRybV9pOTE1X3ByaXZh
dGUgKmk5MTUpCiB2b2lkIGk5MTVfcG11X3JlZ2lzdGVyKHN0cnVjdCBkcm1faTkxNV9wcml2YXRl
ICppOTE1KQogewogCXN0cnVjdCBpOTE1X3BtdSAqcG11ID0gJmk5MTUtPnBtdTsKLQlpbnQgcmV0
OworCWludCByZXQgPSAtRU5PTUVNOwogCiAJaWYgKElOVEVMX0dFTihpOTE1KSA8PSAyKSB7CiAJ
CWRldl9pbmZvKGk5MTUtPmRybS5kZXYsICJQTVUgbm90IHN1cHBvcnRlZCBmb3IgdGhpcyBHUFUu
Iik7CkBAIC0xMTAyLDEwICsxMTAyLDggQEAgdm9pZCBpOTE1X3BtdV9yZWdpc3RlcihzdHJ1Y3Qg
ZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkKIAl9CiAKIAlpOTE1X3BtdV9ldmVudHNfYXR0cl9ncm91
cC5hdHRycyA9IGNyZWF0ZV9ldmVudF9hdHRyaWJ1dGVzKHBtdSk7Ci0JaWYgKCFpOTE1X3BtdV9l
dmVudHNfYXR0cl9ncm91cC5hdHRycykgewotCQlyZXQgPSAtRU5PTUVNOworCWlmICghaTkxNV9w
bXVfZXZlbnRzX2F0dHJfZ3JvdXAuYXR0cnMpCiAJCWdvdG8gZXJyOwotCX0KIAogCXBtdS0+YmFz
ZS5hdHRyX2dyb3Vwcwk9IGk5MTVfcG11X2F0dHJfZ3JvdXBzOwogCXBtdS0+YmFzZS50YXNrX2N0
eF9ucgk9IHBlcmZfaW52YWxpZF9jb250ZXh0OwotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
