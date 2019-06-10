Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 379C73B454
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Jun 2019 14:06:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 23D8A89134;
	Mon, 10 Jun 2019 12:06:13 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CBED088FDA
 for <Intel-gfx@lists.freedesktop.org>; Mon, 10 Jun 2019 12:06:11 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Jun 2019 05:06:11 -0700
X-ExtLoop1: 1
Received: from jwwillia-mobl1.amr.corp.intel.com (HELO localhost.localdomain)
 ([10.252.8.43])
 by fmsmga001.fm.intel.com with ESMTP; 10 Jun 2019 05:06:11 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Mon, 10 Jun 2019 13:06:05 +0100
Message-Id: <20190610120608.15477-3-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190610120608.15477-1-tvrtko.ursulin@linux.intel.com>
References: <20190610120608.15477-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 3/6] drm/i915: Convert icl_get_stolen_reserved to
 uncore mmio accessors
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

RnJvbTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KCk1vcmUgcmVt
b3ZhbCBvZiBpbXBsaWNpdCBkZXZfcHJpdi4KClNpZ25lZC1vZmYtYnk6IFR2cnRrbyBVcnN1bGlu
IDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+ClJldmlld2VkLWJ5OiBKYW5pIE5pa3VsYSA8amFu
aS5uaWt1bGFAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dl
bV9zdG9sZW4uYyB8IDQgKystLQogMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBk
ZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9n
ZW1fc3RvbGVuLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fc3RvbGVuLmMK
aW5kZXggODRkNGY1NDllYjIxLi40MzIwMzdlNWQwYTUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9zdG9sZW4uYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9nZW0vaTkxNV9nZW1fc3RvbGVuLmMKQEAgLTMyNSwxMSArMzI1LDExIEBAIHN0YXRpYyB2b2lk
IGJkd19nZXRfc3RvbGVuX3Jlc2VydmVkKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJp
diwKIAkqc2l6ZSA9IHN0b2xlbl90b3AgLSAqYmFzZTsKIH0KIAotc3RhdGljIHZvaWQgaWNsX2dl
dF9zdG9sZW5fcmVzZXJ2ZWQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAorc3Rh
dGljIHZvaWQgaWNsX2dldF9zdG9sZW5fcmVzZXJ2ZWQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUg
Kmk5MTUsCiAJCQkJICAgIHJlc291cmNlX3NpemVfdCAqYmFzZSwKIAkJCQkgICAgcmVzb3VyY2Vf
c2l6ZV90ICpzaXplKQogewotCXU2NCByZWdfdmFsID0gSTkxNV9SRUFENjQoR0VONl9TVE9MRU5f
UkVTRVJWRUQpOworCXU2NCByZWdfdmFsID0gaW50ZWxfdW5jb3JlX3JlYWQ2NCgmaTkxNS0+dW5j
b3JlLCBHRU42X1NUT0xFTl9SRVNFUlZFRCk7CiAKIAlEUk1fREVCVUdfRFJJVkVSKCJHRU42X1NU
T0xFTl9SRVNFUlZFRCA9IDB4JTAxNmxseFxuIiwgcmVnX3ZhbCk7CiAKLS0gCjIuMjAuMQoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
