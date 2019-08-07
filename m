Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 18168851C1
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Aug 2019 19:12:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9FCA66E745;
	Wed,  7 Aug 2019 17:12:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B01F16E742
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Aug 2019 17:12:03 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Aug 2019 09:58:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,358,1559545200"; d="scan'208";a="177020472"
Received: from jssummer-desk.jf.intel.com ([10.165.21.197])
 by orsmga003.jf.intel.com with ESMTP; 07 Aug 2019 09:58:32 -0700
From: Stuart Summers <stuart.summers@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  7 Aug 2019 09:58:31 -0700
Message-Id: <20190807165832.26324-9-stuart.summers@intel.com>
X-Mailer: git-send-email 2.21.0.5.gaeb582a983
In-Reply-To: <20190807165832.26324-1-stuart.summers@intel.com>
References: <20190807165832.26324-1-stuart.summers@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 8/9] drm/i915: Add new function to copy
 subslices for a slice
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

QWRkIGEgbmV3IGZ1bmN0aW9uIHRvIGNvcHkgc3Vic2xpY2VzIGZvciBhIHNwZWNpZmllZCBzbGlj
ZQpiZXR3ZWVuIGludGVsX3NzZXUgc3RydWN0dXJlcyBmb3IgdGhlIHB1cnBvc2Ugb2YgZGV0ZXJt
aW5pbmcKcG93ZXItZ2F0ZSBzdGF0dXMuCgpTaWduZWQtb2ZmLWJ5OiBTdHVhcnQgU3VtbWVycyA8
c3R1YXJ0LnN1bW1lcnNAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
ZGVidWdmcy5jIHwgMTcgKysrKysrKysrKysrKystLS0KIDEgZmlsZSBjaGFuZ2VkLCAxNCBpbnNl
cnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfZGVidWdmcy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kZWJ1Z2ZzLmMK
aW5kZXggMWNiMDM5MDllNjE1Li5hNjRjZDE4MTA1MWYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfZGVidWdmcy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
ZGVidWdmcy5jCkBAIC0zNzQxLDYgKzM3NDEsMTUgQEAgaTkxNV9jYWNoZV9zaGFyaW5nX3NldCh2
b2lkICpkYXRhLCB1NjQgdmFsKQogCXJldHVybiAwOwogfQogCitzdGF0aWMgdm9pZAoraW50ZWxf
c3NldV9jb3B5X3N1YnNsaWNlcyhjb25zdCBzdHJ1Y3Qgc3NldV9kZXZfaW5mbyAqc3NldSwgaW50
IHNsaWNlLAorCQkJICB1OCAqdG9fbWFzaykKK3sKKwlpbnQgb2Zmc2V0ID0gc2xpY2UgKiBzc2V1
LT5zc19zdHJpZGU7CisKKwltZW1jcHkoJnRvX21hc2tbb2Zmc2V0XSwgJnNzZXUtPnN1YnNsaWNl
X21hc2tbb2Zmc2V0XSwgc3NldS0+c3Nfc3RyaWRlKTsKK30KKwogREVGSU5FX1NJTVBMRV9BVFRS
SUJVVEUoaTkxNV9jYWNoZV9zaGFyaW5nX2ZvcHMsCiAJCQlpOTE1X2NhY2hlX3NoYXJpbmdfZ2V0
LCBpOTE1X2NhY2hlX3NoYXJpbmdfc2V0LAogCQkJIiVsbHVcbiIpOwpAQCAtMzgxNCw3ICszODIz
LDcgQEAgc3RhdGljIHZvaWQgZ2VuMTBfc3NldV9kZXZpY2Vfc3RhdHVzKHN0cnVjdCBkcm1faTkx
NV9wcml2YXRlICpkZXZfcHJpdiwKIAkJCWNvbnRpbnVlOwogCiAJCXNzZXUtPnNsaWNlX21hc2sg
fD0gQklUKHMpOwotCQlzc2V1LT5zdWJzbGljZV9tYXNrW3NdID0gaW5mby0+c3NldS5zdWJzbGlj
ZV9tYXNrW3NdOworCQlpbnRlbF9zc2V1X2NvcHlfc3Vic2xpY2VzKCZpbmZvLT5zc2V1LCBzLCBz
c2V1LT5zdWJzbGljZV9tYXNrKTsKIAogCQlmb3IgKHNzID0gMDsgc3MgPCBpbmZvLT5zc2V1Lm1h
eF9zdWJzbGljZXM7IHNzKyspIHsKIAkJCXVuc2lnbmVkIGludCBldV9jbnQ7CkBAIC0zODY1LDcg
KzM4NzQsOCBAQCBzdGF0aWMgdm9pZCBnZW45X3NzZXVfZGV2aWNlX3N0YXR1cyhzdHJ1Y3QgZHJt
X2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCiAJCXNzZXUtPnNsaWNlX21hc2sgfD0gQklUKHMpOwog
CiAJCWlmIChJU19HRU45X0JDKGRldl9wcml2KSkKLQkJCXNzZXUtPnN1YnNsaWNlX21hc2tbc10g
PSBpbmZvLT5zc2V1LnN1YnNsaWNlX21hc2tbc107CisJCQlpbnRlbF9zc2V1X2NvcHlfc3Vic2xp
Y2VzKCZpbmZvLT5zc2V1LCBzLAorCQkJCQkJICBzc2V1LT5zdWJzbGljZV9tYXNrKTsKIAogCQlm
b3IgKHNzID0gMDsgc3MgPCBpbmZvLT5zc2V1Lm1heF9zdWJzbGljZXM7IHNzKyspIHsKIAkJCXVu
c2lnbmVkIGludCBldV9jbnQ7CkBAIC0zOTAxLDcgKzM5MTEsOCBAQCBzdGF0aWMgdm9pZCBicm9h
ZHdlbGxfc3NldV9kZXZpY2Vfc3RhdHVzKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJp
diwKIAlpZiAoc3NldS0+c2xpY2VfbWFzaykgewogCQlzc2V1LT5ldV9wZXJfc3Vic2xpY2UgPSBp
bmZvLT5zc2V1LmV1X3Blcl9zdWJzbGljZTsKIAkJZm9yIChzID0gMDsgcyA8IGZscyhzc2V1LT5z
bGljZV9tYXNrKTsgcysrKQotCQkJc3NldS0+c3Vic2xpY2VfbWFza1tzXSA9IGluZm8tPnNzZXUu
c3Vic2xpY2VfbWFza1tzXTsKKwkJCWludGVsX3NzZXVfY29weV9zdWJzbGljZXMoJmluZm8tPnNz
ZXUsIHMsCisJCQkJCQkgIHNzZXUtPnN1YnNsaWNlX21hc2spOwogCQlzc2V1LT5ldV90b3RhbCA9
IHNzZXUtPmV1X3Blcl9zdWJzbGljZSAqCiAJCQkJIGludGVsX3NzZXVfc3Vic2xpY2VfdG90YWwo
c3NldSk7CiAKLS0gCjIuMjEuMC41LmdhZWI1ODJhOTgzCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZng=
