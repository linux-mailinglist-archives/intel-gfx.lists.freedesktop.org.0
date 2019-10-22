Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DE78E0110
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Oct 2019 11:48:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 662BC6E4F3;
	Tue, 22 Oct 2019 09:47:58 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4D7126E4E3
 for <Intel-gfx@lists.freedesktop.org>; Tue, 22 Oct 2019 09:47:43 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Oct 2019 02:47:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,326,1566889200"; d="scan'208";a="281235419"
Received: from mdlugoke-mobl1.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.251.81.75])
 by orsmga001.jf.intel.com with ESMTP; 22 Oct 2019 02:47:42 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Tue, 22 Oct 2019 10:47:25 +0100
Message-Id: <20191022094726.3001-12-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191022094726.3001-1-tvrtko.ursulin@linux.intel.com>
References: <20191022094726.3001-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 11/12] drm/i915/selftests: Use GT engines in
 i915_gem_mman selftest
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

RnJvbTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KCk9uZSBtb3Jl
IGZvcl9lYWNoX2VuZ2luZSBjYWxsIHNpdGUgY2hhbmdlZCB0byB3b3JrIG9uIEdUIGVuZ2luZXMu
CgpTaWduZWQtb2ZmLWJ5OiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29t
PgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9zZWxmdGVzdHMvaTkxNV9nZW1fbW1hbi5j
IHwgNSArKystLQogMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMo
LSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL2k5MTVf
Z2VtX21tYW4uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9zZWxmdGVzdHMvaTkxNV9nZW1f
bW1hbi5jCmluZGV4IDY1ZDRkYmY5MTk5OS4uNDVmYzE1MmViZjVjIDEwMDY0NAotLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL2k5MTVfZ2VtX21tYW4uYworKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL2k5MTVfZ2VtX21tYW4uYwpAQCAtNTE0LDEy
ICs1MTQsMTMgQEAgc3RhdGljIGludCBpZ3Rfc21va2VfdGlsaW5nKHZvaWQgKmFyZykKIHN0YXRp
YyBpbnQgbWFrZV9vYmpfYnVzeShzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqKQogewog
CXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0gdG9faTkxNShvYmotPmJhc2UuZGV2KTsK
KwlzdHJ1Y3QgaW50ZWxfZ3QgKmd0ID0gJmk5MTUtPmd0OwogCXN0cnVjdCBpbnRlbF9lbmdpbmVf
Y3MgKmVuZ2luZTsKIAllbnVtIGludGVsX2VuZ2luZV9pZCBpZDsKIAlzdHJ1Y3QgaTkxNV92bWEg
KnZtYTsKIAlpbnQgZXJyOwogCi0Jdm1hID0gaTkxNV92bWFfaW5zdGFuY2Uob2JqLCAmaTkxNS0+
Z2d0dC52bSwgTlVMTCk7CisJdm1hID0gaTkxNV92bWFfaW5zdGFuY2Uob2JqLCAmZ3QtPmdndHQt
PnZtLCBOVUxMKTsKIAlpZiAoSVNfRVJSKHZtYSkpCiAJCXJldHVybiBQVFJfRVJSKHZtYSk7CiAK
QEAgLTUyNyw3ICs1MjgsNyBAQCBzdGF0aWMgaW50IG1ha2Vfb2JqX2J1c3koc3RydWN0IGRybV9p
OTE1X2dlbV9vYmplY3QgKm9iaikKIAlpZiAoZXJyKQogCQlyZXR1cm4gZXJyOwogCi0JZm9yX2Vh
Y2hfZW5naW5lKGVuZ2luZSwgaTkxNSwgaWQpIHsKKwlmb3JfZWFjaF9lbmdpbmUoZW5naW5lLCBn
dCwgaWQpIHsKIAkJc3RydWN0IGk5MTVfcmVxdWVzdCAqcnE7CiAKIAkJcnEgPSBpOTE1X3JlcXVl
c3RfY3JlYXRlKGVuZ2luZS0+a2VybmVsX2NvbnRleHQpOwotLSAKMi4yMC4xCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
