Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DEB2E0108
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Oct 2019 11:47:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9A51B6E4DE;
	Tue, 22 Oct 2019 09:47:39 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EB2506E4D0
 for <Intel-gfx@lists.freedesktop.org>; Tue, 22 Oct 2019 09:47:37 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Oct 2019 02:47:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,326,1566889200"; d="scan'208";a="281235380"
Received: from mdlugoke-mobl1.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.251.81.75])
 by orsmga001.jf.intel.com with ESMTP; 22 Oct 2019 02:47:36 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Tue, 22 Oct 2019 10:47:20 +0100
Message-Id: <20191022094726.3001-7-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191022094726.3001-1-tvrtko.ursulin@linux.intel.com>
References: <20191022094726.3001-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 06/12] drm/i915: Pass intel_gt to
 intel_engines_verify_workarounds
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
YmVsb25nIHRvIHRoZSBHVCBzbyBtYWtlIGl0IGluZGljYXRpdmUgaW4gdGhlIEFQSS4KClNpZ25l
ZC1vZmYtYnk6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+Ci0tLQog
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW0uYyB8IDYgKysrLS0tCiAxIGZpbGUgY2hhbmdl
ZCwgMyBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfZ2VtLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbS5j
CmluZGV4IGMwMjhlYjdlNTZiMy4uY2E2NGEwYzliNzYyIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X2dlbS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2Vt
LmMKQEAgLTEyMDEsNyArMTIwMSw3IEBAIHN0YXRpYyBpbnQgX19pbnRlbF9lbmdpbmVzX3JlY29y
ZF9kZWZhdWx0cyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkKIAlyZXR1cm4gZXJyOwog
fQogCi1zdGF0aWMgaW50IGludGVsX2VuZ2luZXNfdmVyaWZ5X3dvcmthcm91bmRzKHN0cnVjdCBk
cm1faTkxNV9wcml2YXRlICppOTE1KQorc3RhdGljIGludCBpbnRlbF9lbmdpbmVzX3ZlcmlmeV93
b3JrYXJvdW5kcyhzdHJ1Y3QgaW50ZWxfZ3QgKmd0KQogewogCXN0cnVjdCBpbnRlbF9lbmdpbmVf
Y3MgKmVuZ2luZTsKIAllbnVtIGludGVsX2VuZ2luZV9pZCBpZDsKQEAgLTEyMTAsNyArMTIxMCw3
IEBAIHN0YXRpYyBpbnQgaW50ZWxfZW5naW5lc192ZXJpZnlfd29ya2Fyb3VuZHMoc3RydWN0IGRy
bV9pOTE1X3ByaXZhdGUgKmk5MTUpCiAJaWYgKCFJU19FTkFCTEVEKENPTkZJR19EUk1fSTkxNV9E
RUJVR19HRU0pKQogCQlyZXR1cm4gMDsKIAotCWZvcl9lYWNoX2VuZ2luZShlbmdpbmUsIGk5MTUs
IGlkKSB7CisJZm9yX2VhY2hfZW5naW5lKGVuZ2luZSwgZ3QsIGlkKSB7CiAJCWlmIChpbnRlbF9l
bmdpbmVfdmVyaWZ5X3dvcmthcm91bmRzKGVuZ2luZSwgImxvYWQiKSkKIAkJCWVyciA9IC1FSU87
CiAJfQpAQCAtMTI5NCw3ICsxMjk0LDcgQEAgaW50IGk5MTVfZ2VtX2luaXQoc3RydWN0IGRybV9p
OTE1X3ByaXZhdGUgKmRldl9wcml2KQogCSAqLwogCWludGVsX2luaXRfY2xvY2tfZ2F0aW5nKGRl
dl9wcml2KTsKIAotCXJldCA9IGludGVsX2VuZ2luZXNfdmVyaWZ5X3dvcmthcm91bmRzKGRldl9w
cml2KTsKKwlyZXQgPSBpbnRlbF9lbmdpbmVzX3ZlcmlmeV93b3JrYXJvdW5kcygmZGV2X3ByaXYt
Pmd0KTsKIAlpZiAocmV0KQogCQlnb3RvIGVycl9ndDsKIAotLSAKMi4yMC4xCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
