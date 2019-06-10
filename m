Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 418A53B457
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Jun 2019 14:06:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 99A6889135;
	Mon, 10 Jun 2019 12:06:18 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 654E988FDA
 for <Intel-gfx@lists.freedesktop.org>; Mon, 10 Jun 2019 12:06:12 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Jun 2019 05:06:12 -0700
X-ExtLoop1: 1
Received: from jwwillia-mobl1.amr.corp.intel.com (HELO localhost.localdomain)
 ([10.252.8.43])
 by fmsmga001.fm.intel.com with ESMTP; 10 Jun 2019 05:06:11 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Mon, 10 Jun 2019 13:06:06 +0100
Message-Id: <20190610120608.15477-4-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190610120608.15477-1-tvrtko.ursulin@linux.intel.com>
References: <20190610120608.15477-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 4/6] drm/i915: Convert gem_record_fences to uncore
 mmio accessors
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
aWt1bGFAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ3B1X2Vycm9y
LmMgfCAxMiArKysrKysrKystLS0KIDEgZmlsZSBjaGFuZ2VkLCA5IGluc2VydGlvbnMoKyksIDMg
ZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9ncHVf
ZXJyb3IuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ3B1X2Vycm9yLmMKaW5kZXggMTkz
YTkzODU3ZDk5Li5hNTIzYmYwNTBhMjUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfZ3B1X2Vycm9yLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9ncHVfZXJy
b3IuYwpAQCAtMTEyMywxNyArMTEyMywyMyBAQCBzdGF0aWMgdTMyIGk5MTVfZXJyb3JfZ2VuZXJh
dGVfY29kZShzdHJ1Y3QgaTkxNV9ncHVfc3RhdGUgKmVycm9yLAogc3RhdGljIHZvaWQgZ2VtX3Jl
Y29yZF9mZW5jZXMoc3RydWN0IGk5MTVfZ3B1X3N0YXRlICplcnJvcikKIHsKIAlzdHJ1Y3QgZHJt
X2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSBlcnJvci0+aTkxNTsKKwlzdHJ1Y3QgaW50ZWxfdW5j
b3JlICp1bmNvcmUgPSAmZGV2X3ByaXYtPnVuY29yZTsKIAlpbnQgaTsKIAogCWlmIChJTlRFTF9H
RU4oZGV2X3ByaXYpID49IDYpIHsKIAkJZm9yIChpID0gMDsgaSA8IGRldl9wcml2LT5udW1fZmVu
Y2VfcmVnczsgaSsrKQotCQkJZXJyb3ItPmZlbmNlW2ldID0gSTkxNV9SRUFENjQoRkVOQ0VfUkVH
X0dFTjZfTE8oaSkpOworCQkJZXJyb3ItPmZlbmNlW2ldID0KKwkJCQlpbnRlbF91bmNvcmVfcmVh
ZDY0KHVuY29yZSwKKwkJCQkJCSAgICBGRU5DRV9SRUdfR0VONl9MTyhpKSk7CiAJfSBlbHNlIGlm
IChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDQpIHsKIAkJZm9yIChpID0gMDsgaSA8IGRldl9wcml2
LT5udW1fZmVuY2VfcmVnczsgaSsrKQotCQkJZXJyb3ItPmZlbmNlW2ldID0gSTkxNV9SRUFENjQo
RkVOQ0VfUkVHXzk2NV9MTyhpKSk7CisJCQllcnJvci0+ZmVuY2VbaV0gPQorCQkJCWludGVsX3Vu
Y29yZV9yZWFkNjQodW5jb3JlLAorCQkJCQkJICAgIEZFTkNFX1JFR185NjVfTE8oaSkpOwogCX0g
ZWxzZSB7CiAJCWZvciAoaSA9IDA7IGkgPCBkZXZfcHJpdi0+bnVtX2ZlbmNlX3JlZ3M7IGkrKykK
LQkJCWVycm9yLT5mZW5jZVtpXSA9IEk5MTVfUkVBRChGRU5DRV9SRUcoaSkpOworCQkJZXJyb3It
PmZlbmNlW2ldID0KKwkJCQlpbnRlbF91bmNvcmVfcmVhZCh1bmNvcmUsIEZFTkNFX1JFRyhpKSk7
CiAJfQogCWVycm9yLT5uZmVuY2UgPSBpOwogfQotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
