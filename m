Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CC64896CA9
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Aug 2019 01:05:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CDBCF6E8AE;
	Tue, 20 Aug 2019 23:05:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3AB1E6E8A4
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Aug 2019 23:04:55 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Aug 2019 16:04:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,410,1559545200"; d="scan'208";a="377944625"
Received: from jssummer-xeon.ra.intel.com ([10.23.184.90])
 by fmsmga005.fm.intel.com with ESMTP; 20 Aug 2019 16:04:54 -0700
From: Stuart Summers <stuart.summers@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 20 Aug 2019 16:05:43 -0700
Message-Id: <20190820230544.170010-11-stuart.summers@intel.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190820230544.170010-1-stuart.summers@intel.com>
References: <20190820230544.170010-1-stuart.summers@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 10/11] drm/i915: Add new function to copy
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
aW5kZXggOGM1ZWNhNzJmZjVlLi5lOTc1Y2FkMDNlMzkgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfZGVidWdmcy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
ZGVidWdmcy5jCkBAIC0zNzIxLDYgKzM3MjEsMTUgQEAgaTkxNV9jYWNoZV9zaGFyaW5nX3NldCh2
b2lkICpkYXRhLCB1NjQgdmFsKQogCXJldHVybiAwOwogfQogCitzdGF0aWMgdm9pZAoraW50ZWxf
c3NldV9jb3B5X3N1YnNsaWNlcyhjb25zdCBzdHJ1Y3Qgc3NldV9kZXZfaW5mbyAqc3NldSwgaW50
IHNsaWNlLAorCQkJICB1OCAqdG9fbWFzaykKK3sKKwlpbnQgb2Zmc2V0ID0gc2xpY2UgKiBzc2V1
LT5zc19zdHJpZGU7CisKKwltZW1jcHkoJnRvX21hc2tbb2Zmc2V0XSwgJnNzZXUtPnN1YnNsaWNl
X21hc2tbb2Zmc2V0XSwgc3NldS0+c3Nfc3RyaWRlKTsKK30KKwogREVGSU5FX1NJTVBMRV9BVFRS
SUJVVEUoaTkxNV9jYWNoZV9zaGFyaW5nX2ZvcHMsCiAJCQlpOTE1X2NhY2hlX3NoYXJpbmdfZ2V0
LCBpOTE1X2NhY2hlX3NoYXJpbmdfc2V0LAogCQkJIiVsbHVcbiIpOwpAQCAtMzc5NCw3ICszODAz
LDcgQEAgc3RhdGljIHZvaWQgZ2VuMTBfc3NldV9kZXZpY2Vfc3RhdHVzKHN0cnVjdCBkcm1faTkx
NV9wcml2YXRlICpkZXZfcHJpdiwKIAkJCWNvbnRpbnVlOwogCiAJCXNzZXUtPnNsaWNlX21hc2sg
fD0gQklUKHMpOwotCQlzc2V1LT5zdWJzbGljZV9tYXNrW3NdID0gaW5mby0+c3NldS5zdWJzbGlj
ZV9tYXNrW3NdOworCQlpbnRlbF9zc2V1X2NvcHlfc3Vic2xpY2VzKCZpbmZvLT5zc2V1LCBzLCBz
c2V1LT5zdWJzbGljZV9tYXNrKTsKIAogCQlmb3IgKHNzID0gMDsgc3MgPCBpbmZvLT5zc2V1Lm1h
eF9zdWJzbGljZXM7IHNzKyspIHsKIAkJCXVuc2lnbmVkIGludCBldV9jbnQ7CkBAIC0zODQ1LDcg
KzM4NTQsOCBAQCBzdGF0aWMgdm9pZCBnZW45X3NzZXVfZGV2aWNlX3N0YXR1cyhzdHJ1Y3QgZHJt
X2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCiAJCXNzZXUtPnNsaWNlX21hc2sgfD0gQklUKHMpOwog
CiAJCWlmIChJU19HRU45X0JDKGRldl9wcml2KSkKLQkJCXNzZXUtPnN1YnNsaWNlX21hc2tbc10g
PSBpbmZvLT5zc2V1LnN1YnNsaWNlX21hc2tbc107CisJCQlpbnRlbF9zc2V1X2NvcHlfc3Vic2xp
Y2VzKCZpbmZvLT5zc2V1LCBzLAorCQkJCQkJICBzc2V1LT5zdWJzbGljZV9tYXNrKTsKIAogCQlm
b3IgKHNzID0gMDsgc3MgPCBpbmZvLT5zc2V1Lm1heF9zdWJzbGljZXM7IHNzKyspIHsKIAkJCXVu
c2lnbmVkIGludCBldV9jbnQ7CkBAIC0zODgxLDcgKzM4OTEsOCBAQCBzdGF0aWMgdm9pZCBicm9h
ZHdlbGxfc3NldV9kZXZpY2Vfc3RhdHVzKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJp
diwKIAlpZiAoc3NldS0+c2xpY2VfbWFzaykgewogCQlzc2V1LT5ldV9wZXJfc3Vic2xpY2UgPSBp
bmZvLT5zc2V1LmV1X3Blcl9zdWJzbGljZTsKIAkJZm9yIChzID0gMDsgcyA8IGZscyhzc2V1LT5z
bGljZV9tYXNrKTsgcysrKQotCQkJc3NldS0+c3Vic2xpY2VfbWFza1tzXSA9IGluZm8tPnNzZXUu
c3Vic2xpY2VfbWFza1tzXTsKKwkJCWludGVsX3NzZXVfY29weV9zdWJzbGljZXMoJmluZm8tPnNz
ZXUsIHMsCisJCQkJCQkgIHNzZXUtPnN1YnNsaWNlX21hc2spOwogCQlzc2V1LT5ldV90b3RhbCA9
IHNzZXUtPmV1X3Blcl9zdWJzbGljZSAqCiAJCQkJIGludGVsX3NzZXVfc3Vic2xpY2VfdG90YWwo
c3NldSk7CiAKLS0gCjIuMjIuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtZ2Z4
