Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BC313B456
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Jun 2019 14:06:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1612F89131;
	Mon, 10 Jun 2019 12:06:16 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1707889131
 for <Intel-gfx@lists.freedesktop.org>; Mon, 10 Jun 2019 12:06:13 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Jun 2019 05:06:12 -0700
X-ExtLoop1: 1
Received: from jwwillia-mobl1.amr.corp.intel.com (HELO localhost.localdomain)
 ([10.252.8.43])
 by fmsmga001.fm.intel.com with ESMTP; 10 Jun 2019 05:06:12 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Mon, 10 Jun 2019 13:06:07 +0100
Message-Id: <20190610120608.15477-5-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190610120608.15477-1-tvrtko.ursulin@linux.intel.com>
References: <20190610120608.15477-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 5/6] drm/i915: Convert intel_read_wm_latency to
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

RnJvbTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KCk1vcmUgaW1w
bGljaXQgZGV2X3ByaXYgcmVtb3ZhbC4KClNpZ25lZC1vZmYtYnk6IFR2cnRrbyBVcnN1bGluIDx0
dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+ClJldmlld2VkLWJ5OiBKYW5pIE5pa3VsYSA8amFuaS5u
aWt1bGFAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmMgfCA4
ICsrKysrLS0tCiAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygt
KQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmMgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jCmluZGV4IDhmODJjYjcyZDNhNi4uZDcyNzJkNGZmMjU4
IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jCisrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmMKQEAgLTI4MTMsNiArMjgxMyw4IEBAIGhzd19jb21w
dXRlX2xpbmV0aW1lX3dtKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjc3RhdGUpCiBz
dGF0aWMgdm9pZCBpbnRlbF9yZWFkX3dtX2xhdGVuY3koc3RydWN0IGRybV9pOTE1X3ByaXZhdGUg
KmRldl9wcml2LAogCQkJCSAgdTE2IHdtWzhdKQogeworCXN0cnVjdCBpbnRlbF91bmNvcmUgKnVu
Y29yZSA9ICZkZXZfcHJpdi0+dW5jb3JlOworCiAJaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0g
OSkgewogCQl1MzIgdmFsOwogCQlpbnQgcmV0LCBpOwpAQCAtMjg5NCw3ICsyODk2LDcgQEAgc3Rh
dGljIHZvaWQgaW50ZWxfcmVhZF93bV9sYXRlbmN5KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpk
ZXZfcHJpdiwKIAkJCXdtWzBdICs9IDE7CiAKIAl9IGVsc2UgaWYgKElTX0hBU1dFTEwoZGV2X3By
aXYpIHx8IElTX0JST0FEV0VMTChkZXZfcHJpdikpIHsKLQkJdTY0IHNza3BkID0gSTkxNV9SRUFE
NjQoTUNIX1NTS1BEKTsKKwkJdTY0IHNza3BkID0gaW50ZWxfdW5jb3JlX3JlYWQ2NCh1bmNvcmUs
IE1DSF9TU0tQRCk7CiAKIAkJd21bMF0gPSAoc3NrcGQgPj4gNTYpICYgMHhGRjsKIAkJaWYgKHdt
WzBdID09IDApCkBAIC0yOTA0LDE0ICsyOTA2LDE0IEBAIHN0YXRpYyB2b2lkIGludGVsX3JlYWRf
d21fbGF0ZW5jeShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCiAJCXdtWzNdID0g
KHNza3BkID4+IDIwKSAmIDB4MUZGOwogCQl3bVs0XSA9IChzc2twZCA+PiAzMikgJiAweDFGRjsK
IAl9IGVsc2UgaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0gNikgewotCQl1MzIgc3NrcGQgPSBJ
OTE1X1JFQUQoTUNIX1NTS1BEKTsKKwkJdTMyIHNza3BkID0gaW50ZWxfdW5jb3JlX3JlYWQodW5j
b3JlLCBNQ0hfU1NLUEQpOwogCiAJCXdtWzBdID0gKHNza3BkID4+IFNTS1BEX1dNMF9TSElGVCkg
JiBTU0tQRF9XTV9NQVNLOwogCQl3bVsxXSA9IChzc2twZCA+PiBTU0tQRF9XTTFfU0hJRlQpICYg
U1NLUERfV01fTUFTSzsKIAkJd21bMl0gPSAoc3NrcGQgPj4gU1NLUERfV00yX1NISUZUKSAmIFNT
S1BEX1dNX01BU0s7CiAJCXdtWzNdID0gKHNza3BkID4+IFNTS1BEX1dNM19TSElGVCkgJiBTU0tQ
RF9XTV9NQVNLOwogCX0gZWxzZSBpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSA1KSB7Ci0JCXUz
MiBtbHRyID0gSTkxNV9SRUFEKE1MVFJfSUxLKTsKKwkJdTMyIG1sdHIgPSBpbnRlbF91bmNvcmVf
cmVhZCh1bmNvcmUsIE1MVFJfSUxLKTsKIAogCQkvKiBJTEsgcHJpbWFyeSBMUDAgbGF0ZW5jeSBp
cyA3MDAgbnMgKi8KIAkJd21bMF0gPSA3OwotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
