Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C41C3B2874
	for <lists+intel-gfx@lfdr.de>; Sat, 14 Sep 2019 00:33:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3483F6F493;
	Fri, 13 Sep 2019 22:33:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3F1636F48C
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Sep 2019 22:32:58 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Sep 2019 15:32:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,489,1559545200"; d="scan'208";a="337038001"
Received: from josouza-mobl.jf.intel.com (HELO josouza-MOBL.intel.com)
 ([10.24.9.135])
 by orsmga004.jf.intel.com with ESMTP; 13 Sep 2019 15:32:56 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 13 Sep 2019 15:32:51 -0700
Message-Id: <20190913223251.354877-15-jose.souza@intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190913223251.354877-1-jose.souza@intel.com>
References: <20190913223251.354877-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 14/14] drm/i915/tgl: initialize TC and TBT ports
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogTHVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+CgpOb3cgdGhh
dCBUQyBzdXBwb3J0IHdhcyBhZGRlZCwgaW5pdGlhbGl6ZSBERElzLgoKU2lnbmVkLW9mZi1ieTog
THVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgfCA3ICsrKysrKy0KIDEgZmlsZSBj
aGFuZ2VkLCA2IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCmluZGV4IGNkMGEyNDhiZmU0OS4uNWM1MmMw
NGZlZjdiIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rp
c3BsYXkuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXku
YwpAQCAtMTUzODcsOSArMTUzODcsMTQgQEAgc3RhdGljIHZvaWQgaW50ZWxfc2V0dXBfb3V0cHV0
cyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiAJaW50ZWxfdGNfaW5pdChkZXZf
cHJpdik7CiAKIAlpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSAxMikgewotCQkvKiBUT0RPOiBp
bml0aWFsaXplIFRDIHBvcnRzIGFzIHdlbGwgKi8KIAkJaW50ZWxfZGRpX2luaXQoZGV2X3ByaXYs
IFBPUlRfQSk7CiAJCWludGVsX2RkaV9pbml0KGRldl9wcml2LCBQT1JUX0IpOworCQlpbnRlbF9k
ZGlfaW5pdChkZXZfcHJpdiwgUE9SVF9EKTsKKwkJaW50ZWxfZGRpX2luaXQoZGV2X3ByaXYsIFBP
UlRfRSk7CisJCWludGVsX2RkaV9pbml0KGRldl9wcml2LCBQT1JUX0YpOworCQlpbnRlbF9kZGlf
aW5pdChkZXZfcHJpdiwgUE9SVF9HKTsKKwkJaW50ZWxfZGRpX2luaXQoZGV2X3ByaXYsIFBPUlRf
SCk7CisJCWludGVsX2RkaV9pbml0KGRldl9wcml2LCBQT1JUX0kpOwogCQlpY2xfZHNpX2luaXQo
ZGV2X3ByaXYpOwogCX0gZWxzZSBpZiAoSVNfRUxLSEFSVExBS0UoZGV2X3ByaXYpKSB7CiAJCWlu
dGVsX2RkaV9pbml0KGRldl9wcml2LCBQT1JUX0EpOwotLSAKMi4yMy4wCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
