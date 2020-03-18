Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FD8A18A983
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Mar 2020 00:58:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 569256E97E;
	Wed, 18 Mar 2020 23:58:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AEC936E23B
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Mar 2020 23:58:50 +0000 (UTC)
IronPort-SDR: Y+c8ZuEjBrowpTPVa0b1hVu0ZFVTfcY5X/S3nlBw9M+r2XsWh54xd1HFCbKkqC7zZa4si8S7FL
 Jt7GYX757khQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2020 16:58:49 -0700
IronPort-SDR: drsmmskL1BEpzZ/mQ7VfmenFipLfUFBTRl4tb5OG4iYtWUX7nPFpLd6UofptaZ0bC2tT3pQelt
 Vh5B+snq5zfg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,569,1574150400"; d="scan'208";a="324346288"
Received: from josouza-mobl2.jf.intel.com (HELO josouza-MOBL2.intel.com)
 ([10.24.15.8])
 by orsmga001.jf.intel.com with ESMTP; 18 Mar 2020 16:58:49 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 18 Mar 2020 16:59:56 -0700
Message-Id: <20200318235956.118409-6-jose.souza@intel.com>
X-Mailer: git-send-email 2.25.2
In-Reply-To: <20200318235956.118409-1-jose.souza@intel.com>
References: <20200318235956.118409-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 6/6] drm/i915/dp: Get TC link reference during
 DP detection
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
Cc: Cooper Chiou <cooper.chiou@intel.com>,
 Kai-Heng Feng <kai.heng.feng@canonical.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QXMgbm93IHRoZSBjb3N0IHRvIGxvY2sgYW5kIHVzZSBhIFRDIHBvcnQgaXMgaGlnaGVyIGR1ZSB0
aGUKaW1wbGVtZW50YXRpb24gb2YgdGhlIFRDQ09MRCBzZXF1ZW5jZXMgaXQgaXMgd29ydHkgdG8g
aG9sZCBhIHJlZmVyZW5jZQpvZiB0aGUgVEMgcG9ydCB0byBhdm9pZCBhbGwgdGhpcyBsb2NraW5n
IGF0IGV2ZXJ5IGF1eCB0cmFuc2FjdGlvbgpwYXJ0IG9mIHRoZSBEaXNwbGF5UG9ydCBkZXRlY3Rp
b24uCgpDYzogSW1yZSBEZWFrIDxpbXJlLmRlYWtAaW50ZWwuY29tPgpDYzogQ29vcGVyIENoaW91
IDxjb29wZXIuY2hpb3VAaW50ZWwuY29tPgpDYzogS2FpLUhlbmcgRmVuZyA8a2FpLmhlbmcuZmVu
Z0BjYW5vbmljYWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxq
b3NlLnNvdXphQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2RwLmMgfCAxOSArKysrKysrKysrKysrKy0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgMTQgaW5z
ZXJ0aW9ucygrKSwgNSBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2RwLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2RwLmMKaW5kZXggZWYyZTA2ZTI5MmQ1Li44OWI1MjIxMTkyOGIgMTAwNjQ0Ci0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYworKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMKQEAgLTU3MTgsNiArNTcxOCw3IEBAIGludGVsX2Rw
X2RldGVjdChzdHJ1Y3QgZHJtX2Nvbm5lY3RvciAqY29ubmVjdG9yLAogCXN0cnVjdCBpbnRlbF9k
cCAqaW50ZWxfZHAgPSBpbnRlbF9hdHRhY2hlZF9kcCh0b19pbnRlbF9jb25uZWN0b3IoY29ubmVj
dG9yKSk7CiAJc3RydWN0IGludGVsX2RpZ2l0YWxfcG9ydCAqZGlnX3BvcnQgPSBkcF90b19kaWdf
cG9ydChpbnRlbF9kcCk7CiAJc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIgPSAmZGlnX3Bv
cnQtPmJhc2U7CisJZW51bSBwaHkgcGh5ID0gaW50ZWxfcG9ydF90b19waHkoZGV2X3ByaXYsIGVu
Y29kZXItPnBvcnQpOwogCWVudW0gZHJtX2Nvbm5lY3Rvcl9zdGF0dXMgc3RhdHVzOwogCiAJZHJt
X2RiZ19rbXMoJmRldl9wcml2LT5kcm0sICJbQ09OTkVDVE9SOiVkOiVzXVxuIiwKQEAgLTU3MjYs
MTIgKzU3MjcsMTcgQEAgaW50ZWxfZHBfZGV0ZWN0KHN0cnVjdCBkcm1fY29ubmVjdG9yICpjb25u
ZWN0b3IsCiAJCSAgICAhZHJtX21vZGVzZXRfaXNfbG9ja2VkKCZkZXZfcHJpdi0+ZHJtLm1vZGVf
Y29uZmlnLmNvbm5lY3Rpb25fbXV0ZXgpKTsKIAogCS8qIENhbid0IGRpc2Nvbm5lY3QgZURQICov
Ci0JaWYgKGludGVsX2RwX2lzX2VkcChpbnRlbF9kcCkpCisJaWYgKGludGVsX2RwX2lzX2VkcChp
bnRlbF9kcCkpIHsKIAkJc3RhdHVzID0gZWRwX2RldGVjdChpbnRlbF9kcCk7Ci0JZWxzZSBpZiAo
aW50ZWxfZGlnaXRhbF9wb3J0X2Nvbm5lY3RlZChlbmNvZGVyKSkKLQkJc3RhdHVzID0gaW50ZWxf
ZHBfZGV0ZWN0X2RwY2QoaW50ZWxfZHApOwotCWVsc2UKLQkJc3RhdHVzID0gY29ubmVjdG9yX3N0
YXR1c19kaXNjb25uZWN0ZWQ7CisJfSBlbHNlIHsKKwkJaWYgKGludGVsX3BoeV9pc190YyhkZXZf
cHJpdiwgcGh5KSkKKwkJCWludGVsX3RjX3BvcnRfZ2V0X2xpbmsoZGlnX3BvcnQsIDEpOworCisJ
CWlmIChpbnRlbF9kaWdpdGFsX3BvcnRfY29ubmVjdGVkKGVuY29kZXIpKQorCQkJc3RhdHVzID0g
aW50ZWxfZHBfZGV0ZWN0X2RwY2QoaW50ZWxfZHApOworCQllbHNlCisJCQlzdGF0dXMgPSBjb25u
ZWN0b3Jfc3RhdHVzX2Rpc2Nvbm5lY3RlZDsKKwl9CiAKIAlpZiAoc3RhdHVzID09IGNvbm5lY3Rv
cl9zdGF0dXNfZGlzY29ubmVjdGVkKSB7CiAJCW1lbXNldCgmaW50ZWxfZHAtPmNvbXBsaWFuY2Us
IDAsIHNpemVvZihpbnRlbF9kcC0+Y29tcGxpYW5jZSkpOwpAQCAtNTgwOSw2ICs1ODE1LDkgQEAg
aW50ZWxfZHBfZGV0ZWN0KHN0cnVjdCBkcm1fY29ubmVjdG9yICpjb25uZWN0b3IsCiAJaWYgKHN0
YXR1cyAhPSBjb25uZWN0b3Jfc3RhdHVzX2Nvbm5lY3RlZCAmJiAhaW50ZWxfZHAtPmlzX21zdCkK
IAkJaW50ZWxfZHBfdW5zZXRfZWRpZChpbnRlbF9kcCk7CiAKKwlpZiAoaW50ZWxfcGh5X2lzX3Rj
KGRldl9wcml2LCBwaHkpKQorCQlpbnRlbF90Y19wb3J0X3B1dF9saW5rKGRpZ19wb3J0KTsKKwog
CS8qCiAJICogTWFrZSBzdXJlIHRoZSByZWZzIGZvciBwb3dlciB3ZWxscyBlbmFibGVkIGR1cmlu
ZyBkZXRlY3QgYXJlCiAJICogZHJvcHBlZCB0byBhdm9pZCBhIG5ldyBkZXRlY3QgY3ljbGUgdHJp
Z2dlcmVkIGJ5IEhQRCBwb2xsaW5nLgotLSAKMi4yNS4yCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZngK
