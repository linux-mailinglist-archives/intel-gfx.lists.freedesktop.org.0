Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1768E7B129
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jul 2019 20:04:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A6CD86E5FB;
	Tue, 30 Jul 2019 18:04:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8AF4A6E5F9
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jul 2019 18:04:15 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP; 30 Jul 2019 11:04:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,327,1559545200"; d="scan'208";a="172032303"
Received: from ldmartin-desk1.jf.intel.com (HELO ldmartin-desk1.intel.com)
 ([10.24.10.102])
 by fmsmga008.fm.intel.com with ESMTP; 30 Jul 2019 11:04:14 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 30 Jul 2019 11:04:04 -0700
Message-Id: <20190730180407.5993-3-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190730180407.5993-1-lucas.demarchi@intel.com>
References: <20190730180407.5993-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 2/5] drm/i915/tgl: stop using ERROR_GEN6 and
 DONE_REG
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

VGhlc2UgcmVnaXN0ZXJzIGhhdmUgYmVlbiByZW1vdmVkIG9uIGdlbjEyLgoKdjI6IG1lcmdlIGNv
bW1vbiBicmFuY2ggZm9yIElTX0dFTl9SQU5HRShpOTE1LCA2LCAxMSkKClNpZ25lZC1vZmYtYnk6
IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPgpSZXZpZXdlZC1ieTog
RGFuaWVsZSBDZXJhb2xvIFNwdXJpbyA8ZGFuaWVsZS5jZXJhb2xvc3B1cmlvQGludGVsLmNvbT4K
LS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dwdV9lcnJvci5jIHwgMTcgKysrKysrKysr
LS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCA5IGluc2VydGlvbnMoKyksIDggZGVsZXRpb25zKC0p
CgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9ncHVfZXJyb3IuYyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ3B1X2Vycm9yLmMKaW5kZXggNjczYzVkYzkzZDI4Li45
ZWVlOTliZGM1MTQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ3B1X2Vy
cm9yLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9ncHVfZXJyb3IuYwpAQCAtNzQ1
LDE2ICs3NDUsMTUgQEAgc3RhdGljIHZvaWQgX19lcnJfcHJpbnRfdG9fc2dsKHN0cnVjdCBkcm1f
aTkxNV9lcnJvcl9zdGF0ZV9idWYgKm0sCiAJZm9yIChpID0gMDsgaSA8IGVycm9yLT5uZmVuY2U7
IGkrKykKIAkJZXJyX3ByaW50ZihtLCAiICBmZW5jZVslZF0gPSAlMDhsbHhcbiIsIGksIGVycm9y
LT5mZW5jZVtpXSk7CiAKLQlpZiAoSU5URUxfR0VOKG0tPmk5MTUpID49IDYpIHsKKwlpZiAoSVNf
R0VOX1JBTkdFKG0tPmk5MTUsIDYsIDExKSkgewogCQllcnJfcHJpbnRmKG0sICJFUlJPUjogMHgl
MDh4XG4iLCBlcnJvci0+ZXJyb3IpOwotCi0JCWlmIChJTlRFTF9HRU4obS0+aTkxNSkgPj0gOCkK
LQkJCWVycl9wcmludGYobSwgIkZBVUxUX1RMQl9EQVRBOiAweCUwOHggMHglMDh4XG4iLAotCQkJ
CSAgIGVycm9yLT5mYXVsdF9kYXRhMSwgZXJyb3ItPmZhdWx0X2RhdGEwKTsKLQogCQllcnJfcHJp
bnRmKG0sICJET05FX1JFRzogMHglMDh4XG4iLCBlcnJvci0+ZG9uZV9yZWcpOwogCX0KIAorCWlm
IChJTlRFTF9HRU4obS0+aTkxNSkgPj0gOCkKKwkJZXJyX3ByaW50ZihtLCAiRkFVTFRfVExCX0RB
VEE6IDB4JTA4eCAweCUwOHhcbiIsCisJCQkgICBlcnJvci0+ZmF1bHRfZGF0YTEsIGVycm9yLT5m
YXVsdF9kYXRhMCk7CisKIAlpZiAoSVNfR0VOKG0tPmk5MTUsIDcpKQogCQllcnJfcHJpbnRmKG0s
ICJFUlJfSU5UOiAweCUwOHhcbiIsIGVycm9yLT5lcnJfaW50KTsKIApAQCAtMTU2OSw4ICsxNTY4
LDEwIEBAIHN0YXRpYyB2b2lkIGNhcHR1cmVfcmVnX3N0YXRlKHN0cnVjdCBpOTE1X2dwdV9zdGF0
ZSAqZXJyb3IpCiAKIAlpZiAoSU5URUxfR0VOKGk5MTUpID49IDYpIHsKIAkJZXJyb3ItPmRlcnJt
ciA9IGludGVsX3VuY29yZV9yZWFkKHVuY29yZSwgREVSUk1SKTsKLQkJZXJyb3ItPmVycm9yID0g
aW50ZWxfdW5jb3JlX3JlYWQodW5jb3JlLCBFUlJPUl9HRU42KTsKLQkJZXJyb3ItPmRvbmVfcmVn
ID0gaW50ZWxfdW5jb3JlX3JlYWQodW5jb3JlLCBET05FX1JFRyk7CisJCWlmIChJTlRFTF9HRU4o
aTkxNSkgPCAxMikgeworCQkJZXJyb3ItPmVycm9yID0gaW50ZWxfdW5jb3JlX3JlYWQodW5jb3Jl
LCBFUlJPUl9HRU42KTsKKwkJCWVycm9yLT5kb25lX3JlZyA9IGludGVsX3VuY29yZV9yZWFkKHVu
Y29yZSwgRE9ORV9SRUcpOworCQl9CiAJfQogCiAJaWYgKElOVEVMX0dFTihpOTE1KSA+PSA1KQot
LSAKMi4yMS4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
