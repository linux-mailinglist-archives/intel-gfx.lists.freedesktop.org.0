Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A52863365
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Jul 2019 11:31:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 92C2389D84;
	Tue,  9 Jul 2019 09:31:17 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 966DA89D84
 for <Intel-gfx@lists.freedesktop.org>; Tue,  9 Jul 2019 09:31:16 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Jul 2019 02:31:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,470,1557212400"; d="scan'208";a="170542993"
Received: from dawalker-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.251.80.131])
 by orsmga006.jf.intel.com with ESMTP; 09 Jul 2019 02:31:07 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Tue,  9 Jul 2019 10:31:05 +0100
Message-Id: <20190709093105.24699-1-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Remove unused
 i915_gem_context_lookup_engine
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

RnJvbTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KClRoZXJlIGFy
ZSBubyBrbm93biBwbGFucyB0byBzdGFydCB1c2luZyBpdCBlaXRoZXIuCgpTaWduZWQtb2ZmLWJ5
OiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgotLS0KIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9jb250ZXh0LmggfCA2IC0tLS0tLQogMSBmaWxlIGNo
YW5nZWQsIDYgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z2VtL2k5MTVfZ2VtX2NvbnRleHQuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dl
bV9jb250ZXh0LmgKaW5kZXggOTY5MWRkMDYyZjcyLi4xMDZlMmNjZjdhNGMgMTAwNjQ0Ci0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9jb250ZXh0LmgKKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2NvbnRleHQuaApAQCAtMTk3LDEyICsxOTcsNiBA
QCBpOTE1X2dlbV9jb250ZXh0X3VubG9ja19lbmdpbmVzKHN0cnVjdCBpOTE1X2dlbV9jb250ZXh0
ICpjdHgpCiAJbXV0ZXhfdW5sb2NrKCZjdHgtPmVuZ2luZXNfbXV0ZXgpOwogfQogCi1zdGF0aWMg
aW5saW5lIHN0cnVjdCBpbnRlbF9jb250ZXh0ICoKLWk5MTVfZ2VtX2NvbnRleHRfbG9va3VwX2Vu
Z2luZShzdHJ1Y3QgaTkxNV9nZW1fY29udGV4dCAqY3R4LCB1bnNpZ25lZCBpbnQgaWR4KQotewot
CXJldHVybiBpOTE1X2dlbV9jb250ZXh0X2VuZ2luZXMoY3R4KS0+ZW5naW5lc1tpZHhdOwotfQot
CiBzdGF0aWMgaW5saW5lIHN0cnVjdCBpbnRlbF9jb250ZXh0ICoKIGk5MTVfZ2VtX2NvbnRleHRf
Z2V0X2VuZ2luZShzdHJ1Y3QgaTkxNV9nZW1fY29udGV4dCAqY3R4LCB1bnNpZ25lZCBpbnQgaWR4
KQogewotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZng=
