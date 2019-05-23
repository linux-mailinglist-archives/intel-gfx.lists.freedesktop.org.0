Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F1432277E7
	for <lists+intel-gfx@lfdr.de>; Thu, 23 May 2019 10:24:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4EF0D89CF8;
	Thu, 23 May 2019 08:24:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 21CAC89CE1
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 May 2019 08:24:31 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 May 2019 01:24:30 -0700
X-ExtLoop1: 1
Received: from igivoni-mobl.amr.corp.intel.com (HELO
 ldmartin-desk.amr.corp.intel.com) ([10.255.88.102])
 by orsmga001.jf.intel.com with ESMTP; 23 May 2019 01:24:30 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 23 May 2019 01:24:20 -0700
Message-Id: <20190523082420.10352-10-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190523082420.10352-1-lucas.demarchi@intel.com>
References: <20190523082420.10352-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 10/10] drm/i915/dmc: protect against loading
 wrong firmware
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

SW4gaW50ZWxfcGFja2FnZV9oZWFkZXIgdmVyc2lvbiAyIHRoZXJlJ3MgYSBuZXcgZmllbGQgaW4g
dGhlCmZ3X2luZm8gdGFibGUgdGhhdCBtdXN0IGJlIDAsIG90aGVyd2lzZSBpdCdzIG5vdCB0aGUg
Y29ycmVjdCBETUMKZmlybXdhcmUuIEFkZCBhIGNoZWNrIGZvciB2ZXJzaW9uIDIgb3IgbGF0ZXIu
CgpTaWduZWQtb2ZmLWJ5OiBMdWNhcyBEZSBNYXJjaGkgPGx1Y2FzLmRlbWFyY2hpQGludGVsLmNv
bT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9jc3IuYyB8IDE0ICsrKysrKysrKysr
LS0tCiAxIGZpbGUgY2hhbmdlZCwgMTEgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKCmRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9jc3IuYyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2ludGVsX2Nzci5jCmluZGV4IGI3MTgxY2E2YzhmNS4uZDQ5OTZkY2Y1OTZjIDEw
MDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9jc3IuYworKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pbnRlbF9jc3IuYwpAQCAtMTIwLDcgKzEyMCwxMCBAQCBzdHJ1Y3QgaW50
ZWxfY3NzX2hlYWRlciB7CiB9IF9fcGFja2VkOwogCiBzdHJ1Y3QgaW50ZWxfZndfaW5mbyB7Ci0J
dTE2IHJlc2VydmVkMTsKKwl1OCByZXNlcnZlZDE7CisKKwkvKiByZXNlcnZlZCBvbiBwYWNrYWdl
X2hlYWRlciB2ZXJzaW9uIDEsIG11c3QgYmUgMCBvbiB2ZXJzaW9uIDIgKi8KKwl1OCBkbWNfaWQ7
CiAKIAkvKiBTdGVwcGluZyAoQSwgQiwgQywgLi4uLCAqKS4gKiBpcyBhIHdpbGRjYXJkICovCiAJ
Y2hhciBzdGVwcGluZzsKQEAgLTMyNSwxMiArMzI4LDE2IEBAIHZvaWQgaW50ZWxfY3NyX2xvYWRf
cHJvZ3JhbShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiAgKi8KIHN0YXRpYyB1
MzIgZmluZF9kbWNfZndfb2Zmc2V0KGNvbnN0IHN0cnVjdCBpbnRlbF9md19pbmZvICpmd19pbmZv
LAogCQkJICAgICAgdW5zaWduZWQgaW50IG51bV9lbnRyaWVzLAotCQkJICAgICAgY29uc3Qgc3Ry
dWN0IHN0ZXBwaW5nX2luZm8gKnNpKQorCQkJICAgICAgY29uc3Qgc3RydWN0IHN0ZXBwaW5nX2lu
Zm8gKnNpLAorCQkJICAgICAgdTggcGFja2FnZV92ZXIpCiB7CiAJdTMyIGRtY19vZmZzZXQgPSBD
U1JfREVGQVVMVF9GV19PRkZTRVQ7CiAJdW5zaWduZWQgaW50IGk7CiAKIAlmb3IgKGkgPSAwOyBp
IDwgbnVtX2VudHJpZXM7IGkrKykgeworCQlpZiAocGFja2FnZV92ZXIgPiAxICYmIGZ3X2luZm9b
aV0uZG1jX2lkICE9IDApCisJCQljb250aW51ZTsKKwogCQlpZiAoZndfaW5mb1tpXS5zdWJzdGVw
cGluZyA9PSAnKicgJiYKIAkJICAgIHNpLT5zdGVwcGluZyA9PSBmd19pbmZvW2ldLnN0ZXBwaW5n
KSB7CiAJCQlkbWNfb2Zmc2V0ID0gZndfaW5mb1tpXS5vZmZzZXQ7CkBAIC01MDEsNyArNTA4LDgg
QEAgcGFyc2VfY3NyX2Z3X3BhY2thZ2Uoc3RydWN0IGludGVsX2NzciAqY3NyLAogCiAJZndfaW5m
byA9IChjb25zdCBzdHJ1Y3QgaW50ZWxfZndfaW5mbyAqKQogCQkoKHU4ICopcGFja2FnZV9oZWFk
ZXIgKyBzaXplb2YoKnBhY2thZ2VfaGVhZGVyKSk7Ci0JZG1jX29mZnNldCA9IGZpbmRfZG1jX2Z3
X29mZnNldChmd19pbmZvLCBudW1fZW50cmllcywgc2kpOworCWRtY19vZmZzZXQgPSBmaW5kX2Rt
Y19md19vZmZzZXQoZndfaW5mbywgbnVtX2VudHJpZXMsIHNpLAorCQkJCQlwYWNrYWdlX2hlYWRl
ci0+aGVhZGVyX3Zlcik7CiAJaWYgKGRtY19vZmZzZXQgPT0gQ1NSX0RFRkFVTFRfRldfT0ZGU0VU
KSB7CiAJCURSTV9FUlJPUigiRE1DIGZpcm13YXJlIG5vdCBzdXBwb3J0ZWQgZm9yICVjIHN0ZXBw
aW5nXG4iLAogCQkJICBzaS0+c3RlcHBpbmcpOwotLSAKMi4yMS4wCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
