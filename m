Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 590AA99ED3
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Aug 2019 20:31:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE3536EA2B;
	Thu, 22 Aug 2019 18:31:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C13B2892D5
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Aug 2019 18:31:21 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Aug 2019 11:31:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,417,1559545200"; d="scan'208";a="354376296"
Received: from jssummer-xeon.ra.intel.com ([10.23.184.90])
 by orsmga005.jf.intel.com with ESMTP; 22 Aug 2019 11:31:20 -0700
From: Stuart Summers <stuart.summers@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 22 Aug 2019 11:32:12 -0700
Message-Id: <20190822183213.132380-11-stuart.summers@intel.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190822183213.132380-1-stuart.summers@intel.com>
References: <20190822183213.132380-1-stuart.summers@intel.com>
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
aW5pbmcKcG93ZXItZ2F0ZSBzdGF0dXMuIE5vdGUgdGhhdCBjdXJyZW50bHkgc3Nfc3RyaWRlIGhh
cyBhIG1heApvZiAxLgoKU2lnbmVkLW9mZi1ieTogU3R1YXJ0IFN1bW1lcnMgPHN0dWFydC5zdW1t
ZXJzQGludGVsLmNvbT4KUmV2aWV3ZWQtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2ls
c29uLmNvLnVrPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZGVidWdmcy5jIHwgMTcg
KysrKysrKysrKysrKystLS0KIDEgZmlsZSBjaGFuZ2VkLCAxNCBpbnNlcnRpb25zKCspLCAzIGRl
bGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZGVidWdm
cy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kZWJ1Z2ZzLmMKaW5kZXggNTQ5YTEyMWU1
ODNjLi5iYTkzMTk0NzUyYzAgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
ZGVidWdmcy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZGVidWdmcy5jCkBAIC0z
NzIyLDYgKzM3MjIsMTUgQEAgaTkxNV9jYWNoZV9zaGFyaW5nX3NldCh2b2lkICpkYXRhLCB1NjQg
dmFsKQogCXJldHVybiAwOwogfQogCitzdGF0aWMgdm9pZAoraW50ZWxfc3NldV9jb3B5X3N1YnNs
aWNlcyhjb25zdCBzdHJ1Y3Qgc3NldV9kZXZfaW5mbyAqc3NldSwgaW50IHNsaWNlLAorCQkJICB1
OCAqdG9fbWFzaykKK3sKKwlpbnQgb2Zmc2V0ID0gc2xpY2UgKiBzc2V1LT5zc19zdHJpZGU7CisK
KwltZW1jcHkoJnRvX21hc2tbb2Zmc2V0XSwgJnNzZXUtPnN1YnNsaWNlX21hc2tbb2Zmc2V0XSwg
c3NldS0+c3Nfc3RyaWRlKTsKK30KKwogREVGSU5FX1NJTVBMRV9BVFRSSUJVVEUoaTkxNV9jYWNo
ZV9zaGFyaW5nX2ZvcHMsCiAJCQlpOTE1X2NhY2hlX3NoYXJpbmdfZ2V0LCBpOTE1X2NhY2hlX3No
YXJpbmdfc2V0LAogCQkJIiVsbHVcbiIpOwpAQCAtMzc5NSw3ICszODA0LDcgQEAgc3RhdGljIHZv
aWQgZ2VuMTBfc3NldV9kZXZpY2Vfc3RhdHVzKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZf
cHJpdiwKIAkJCWNvbnRpbnVlOwogCiAJCXNzZXUtPnNsaWNlX21hc2sgfD0gQklUKHMpOwotCQlz
c2V1LT5zdWJzbGljZV9tYXNrW3NdID0gaW5mby0+c3NldS5zdWJzbGljZV9tYXNrW3NdOworCQlp
bnRlbF9zc2V1X2NvcHlfc3Vic2xpY2VzKCZpbmZvLT5zc2V1LCBzLCBzc2V1LT5zdWJzbGljZV9t
YXNrKTsKIAogCQlmb3IgKHNzID0gMDsgc3MgPCBpbmZvLT5zc2V1Lm1heF9zdWJzbGljZXM7IHNz
KyspIHsKIAkJCXVuc2lnbmVkIGludCBldV9jbnQ7CkBAIC0zODQ2LDcgKzM4NTUsOCBAQCBzdGF0
aWMgdm9pZCBnZW45X3NzZXVfZGV2aWNlX3N0YXR1cyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAq
ZGV2X3ByaXYsCiAJCXNzZXUtPnNsaWNlX21hc2sgfD0gQklUKHMpOwogCiAJCWlmIChJU19HRU45
X0JDKGRldl9wcml2KSkKLQkJCXNzZXUtPnN1YnNsaWNlX21hc2tbc10gPSBpbmZvLT5zc2V1LnN1
YnNsaWNlX21hc2tbc107CisJCQlpbnRlbF9zc2V1X2NvcHlfc3Vic2xpY2VzKCZpbmZvLT5zc2V1
LCBzLAorCQkJCQkJICBzc2V1LT5zdWJzbGljZV9tYXNrKTsKIAogCQlmb3IgKHNzID0gMDsgc3Mg
PCBpbmZvLT5zc2V1Lm1heF9zdWJzbGljZXM7IHNzKyspIHsKIAkJCXVuc2lnbmVkIGludCBldV9j
bnQ7CkBAIC0zODgyLDcgKzM4OTIsOCBAQCBzdGF0aWMgdm9pZCBicm9hZHdlbGxfc3NldV9kZXZp
Y2Vfc3RhdHVzKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKIAlpZiAoc3NldS0+
c2xpY2VfbWFzaykgewogCQlzc2V1LT5ldV9wZXJfc3Vic2xpY2UgPSBpbmZvLT5zc2V1LmV1X3Bl
cl9zdWJzbGljZTsKIAkJZm9yIChzID0gMDsgcyA8IGZscyhzc2V1LT5zbGljZV9tYXNrKTsgcysr
KQotCQkJc3NldS0+c3Vic2xpY2VfbWFza1tzXSA9IGluZm8tPnNzZXUuc3Vic2xpY2VfbWFza1tz
XTsKKwkJCWludGVsX3NzZXVfY29weV9zdWJzbGljZXMoJmluZm8tPnNzZXUsIHMsCisJCQkJCQkg
IHNzZXUtPnN1YnNsaWNlX21hc2spOwogCQlzc2V1LT5ldV90b3RhbCA9IHNzZXUtPmV1X3Blcl9z
dWJzbGljZSAqCiAJCQkJIGludGVsX3NzZXVfc3Vic2xpY2VfdG90YWwoc3NldSk7CiAKLS0gCjIu
MjIuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
