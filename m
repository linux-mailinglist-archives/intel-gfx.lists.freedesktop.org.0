Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AC55BC0A72
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Sep 2019 19:34:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 93BA56E174;
	Fri, 27 Sep 2019 17:34:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9B0608982E
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Sep 2019 17:34:45 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Sep 2019 10:34:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,556,1559545200"; d="scan'208";a="189508519"
Received: from rgdowlin-mobl.ger.corp.intel.com (HELO
 mwahaha-bdw.ger.corp.intel.com) ([10.252.7.171])
 by fmsmga008.fm.intel.com with ESMTP; 27 Sep 2019 10:34:44 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 27 Sep 2019 18:34:08 +0100
Message-Id: <20190927173409.31175-22-matthew.auld@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190927173409.31175-1-matthew.auld@intel.com>
References: <20190927173409.31175-1-matthew.auld@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 21/22] drm/i915: check for missing aperture in
 GTT pread/pwrite paths
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
Cc: daniel.vetter@ffwll.ch
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogQ1EgVGFuZyA8Y3EudGFuZ0BpbnRlbC5jb20+Cgpkcm1fbW1faW5zZXJ0X25vZGVfaW5f
cmFuZ2UoKSB0cmVhdHMgcmFuZ2Vfc3RhcnQgPiByYW5nZV9lbmQgYXMgYQpwcm9ncmFtbWVyIGVy
cm9yLCBzdWNoIHRoYXQgd2UgZXhwbG9kZSBpbiBpbnNlcnRfbWFwcGFibGVfbm9kZS4gRm9yIG5v
dwpzaW1wbHkgY2hlY2sgZm9yIG1pc3NpbmcgYXBlcnR1cmUgb24gc3VjaCBwYXRocy4KClNpZ25l
ZC1vZmYtYnk6IENRIFRhbmcgPGNxLnRhbmdAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBNYXR0
aGV3IEF1bGQgPG1hdHRoZXcuYXVsZEBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9nZW0uYyB8IDYgKysrKysrCiAxIGZpbGUgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCsp
CgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW0uYyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfZ2VtLmMKaW5kZXggZmQzMjliNmI0NzVjLi44MmRhYWFiMDIyZDgg
MTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtLmMKKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9nZW0uYwpAQCAtMzM3LDYgKzMzNyw5IEBAIGk5MTVfZ2VtX2d0
dF9wcmVhZChzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqLAogCXU2NCByZW1haW4sIG9m
ZnNldDsKIAlpbnQgcmV0OwogCisJaWYgKCFIQVNfTUFQUEFCTEVfQVBFUlRVUkUoaTkxNSkpCisJ
CXJldHVybiAtRU5PU1BDOworCiAJcmV0ID0gbXV0ZXhfbG9ja19pbnRlcnJ1cHRpYmxlKCZpOTE1
LT5kcm0uc3RydWN0X211dGV4KTsKIAlpZiAocmV0KQogCQlyZXR1cm4gcmV0OwpAQCAtNTMwLDYg
KzUzMyw5IEBAIGk5MTVfZ2VtX2d0dF9wd3JpdGVfZmFzdChzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29i
amVjdCAqb2JqLAogCXZvaWQgX191c2VyICp1c2VyX2RhdGE7CiAJaW50IHJldDsKIAorCWlmICgh
SEFTX01BUFBBQkxFX0FQRVJUVVJFKGk5MTUpKQorCQlyZXR1cm4gLUVOT1NQQzsKKwogCXJldCA9
IG11dGV4X2xvY2tfaW50ZXJydXB0aWJsZSgmaTkxNS0+ZHJtLnN0cnVjdF9tdXRleCk7CiAJaWYg
KHJldCkKIAkJcmV0dXJuIHJldDsKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4
