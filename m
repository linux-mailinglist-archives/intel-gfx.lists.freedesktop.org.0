Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EF12D37010
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jun 2019 11:37:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 42FC18961E;
	Thu,  6 Jun 2019 09:37:04 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9DF208961E
 for <Intel-gfx@lists.freedesktop.org>; Thu,  6 Jun 2019 09:37:02 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Jun 2019 02:37:02 -0700
X-ExtLoop1: 1
Received: from ssirotki-mobl3.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.251.93.246])
 by orsmga006.jf.intel.com with ESMTP; 06 Jun 2019 02:37:01 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Thu,  6 Jun 2019 10:36:29 +0100
Message-Id: <20190606093639.9372-12-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190606093639.9372-1-tvrtko.ursulin@linux.intel.com>
References: <20190606093639.9372-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 11/21] drm/i915: Remove impossible path from
 i915_gem_init_swizzling
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

RnJvbTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KCkdlbjgrIGRv
ZXMgbm90IGhhdmUgc3dpenppbGluZyBzbyBmdW5jdGlvbiB3aWxsIGV4aXQgb24gdGhlIHRvcCBt
b3N0IGNoZWNrLgoKQXQgdGhlIHNhbWUgdGltZSBjb252ZXJ0IHRoZSBCVUcgdG8gTUlTU0lOR19D
QVNFIGZvciBhIGxpdHRsZSBtb3JlIGRlYnVnCmluZm8uCgpTaWduZWQtb2ZmLWJ5OiBUdnJ0a28g
VXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfZ2VtLmMgfCA0ICstLS0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwg
MyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dl
bS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW0uYwppbmRleCA4ZWVlOWVjZjBhZGYu
Ljc1MTJjODA0ZDRiNyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW0u
YworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbS5jCkBAIC0xMjE2LDEwICsxMjE2
LDggQEAgdm9pZCBpOTE1X2dlbV9pbml0X3N3aXp6bGluZyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0
ZSAqZGV2X3ByaXYpCiAJCUk5MTVfV1JJVEUoQVJCX01PREUsIF9NQVNLRURfQklUX0VOQUJMRShB
UkJfTU9ERV9TV0laWkxFX1NOQikpOwogCWVsc2UgaWYgKElTX0dFTihkZXZfcHJpdiwgNykpCiAJ
CUk5MTVfV1JJVEUoQVJCX01PREUsIF9NQVNLRURfQklUX0VOQUJMRShBUkJfTU9ERV9TV0laWkxF
X0lWQikpOwotCWVsc2UgaWYgKElTX0dFTihkZXZfcHJpdiwgOCkpCi0JCUk5MTVfV1JJVEUoR0FN
VEFSQk1PREUsIF9NQVNLRURfQklUX0VOQUJMRShBUkJfTU9ERV9TV0laWkxFX0JEVykpOwogCWVs
c2UKLQkJQlVHKCk7CisJCU1JU1NJTkdfQ0FTRShJTlRFTF9HRU4oZGV2X3ByaXYpKTsKIH0KIAog
c3RhdGljIHZvaWQgaW5pdF91bnVzZWRfcmluZyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2
X3ByaXYsIHUzMiBiYXNlKQotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZng=
