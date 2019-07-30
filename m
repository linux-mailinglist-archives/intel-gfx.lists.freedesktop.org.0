Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A72C07AA3F
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jul 2019 15:55:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EAC256E532;
	Tue, 30 Jul 2019 13:55:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 819856E530
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jul 2019 13:55:24 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Jul 2019 06:55:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,327,1559545200"; d="scan'208";a="200169891"
Received: from genxfsim-desktop.iind.intel.com ([10.223.74.120])
 by fmsmga002.fm.intel.com with ESMTP; 30 Jul 2019 06:55:03 -0700
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 30 Jul 2019 19:20:24 +0530
Message-Id: <20190730135024.31765-10-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190730135024.31765-1-anshuman.gupta@intel.com>
References: <20190730135024.31765-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 9/9] drm/i915/tgl: Add DC3CO counter in
 i915_dmc_info
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
Cc: Deak@freedesktop.org, jani.nikula@intel.com,
	Nikula@freedesktop.org, Manna@freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QWRkaW5nIERDM0NPIGNvdW50ZXIgaW4gaTkxNV9kbWNfaW5mbyBkZWJ1Z2ZzIHdpbGwgYmUKdXNl
ZnVsIGZvciBEQzNDTyB2YWxpZGF0aW9uLgpETUMgZmlybXdhcmUgdXNlcyBETUNfREVCVUczIHJl
Z2lzdGVyIGFzIERDM0NPIGNvdW50ZXIKcmVnaXN0ZXIgb24gVEdMLCBhcyBwZXIgQi5TcGVjcyBE
TUNfREVCVUczIGlzIGdlbmVyYWwKcHVycG9zZSByZWdpc3Rlci4KCkNjOiBOaWt1bGEsIEphbmkg
PGphbmkubmlrdWxhQGludGVsLmNvbT4KQ2M6IERlYWssIEltcmUgPGltcmUuZGVha0BpbnRlbC5j
b20+CkNjOiBNYW5uYSwgQW5pbWVzaCA8YW5pbWVzaC5tYW5uYUBpbnRlbC5jb20+ClNpZ25lZC1v
ZmYtYnk6IEFuc2h1bWFuIEd1cHRhIDxhbnNodW1hbi5ndXB0YUBpbnRlbC5jb20+Ci0tLQogZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kZWJ1Z2ZzLmMgfCA5ICsrKysrKysrLQogZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9yZWcuaCAgICAgfCAzICsrKwogMiBmaWxlcyBjaGFuZ2VkLCAxMSBp
bnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9kZWJ1Z2ZzLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RlYnVnZnMu
YwppbmRleCAyNDc4N2JiNDhjOWYuLjVhNjc3ZDczYjQ4OCAxMDA2NDQKLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9kZWJ1Z2ZzLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9kZWJ1Z2ZzLmMKQEAgLTI0ODIsOSArMjQ4MiwxNiBAQCBzdGF0aWMgaW50IGk5MTVfZG1jX2lu
Zm8oc3RydWN0IHNlcV9maWxlICptLCB2b2lkICp1bnVzZWQpCiAJc2VxX3ByaW50ZihtLCAidmVy
c2lvbjogJWQuJWRcbiIsIENTUl9WRVJTSU9OX01BSk9SKGNzci0+dmVyc2lvbiksCiAJCSAgIENT
Ul9WRVJTSU9OX01JTk9SKGNzci0+dmVyc2lvbikpOwogCi0JaWYgKFdBUk5fT04oSU5URUxfR0VO
KGRldl9wcml2KSA+IDExKSkKKwlpZiAoV0FSTl9PTihJTlRFTF9HRU4oZGV2X3ByaXYpID4gMTIp
KQogCQlnb3RvIG91dDsKIAorCS8qCisJICogQi5TcGVzIHNwZWNpZnkgdGhhdCBETUNfREVCVUcz
IGlzIGdlbmVyYWwgZGVidWcgcmVnaXN0ZXIKKwkgKiBETUMgZm9sa3MgdXNlcyB0aGlzIHJlZ2lz
dGVyIGZvciBEQzNDTyBjb3VudGVyIGZvciBUR0wKKwkgKi8KKwlpZiAoSVNfVElHRVJMQUtFKGRl
dl9wcml2KSkKKwkJc2VxX3ByaW50ZihtLCAiREMzQ08gY291bnQ6ICVkXG4iLCBJOTE1X1JFQUQo
RE1DX0RFQlVHMykpOworCiAJc2VxX3ByaW50ZihtLCAiREMzIC0+IERDNSBjb3VudDogJWRcbiIs
CiAJCSAgIEk5MTVfUkVBRChJU19CUk9YVE9OKGRldl9wcml2KSA/IEJYVF9DU1JfREMzX0RDNV9D
T1VOVCA6CiAJCQkJCQkgICAgU0tMX0NTUl9EQzNfREM1X0NPVU5UKSk7CmRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9yZWcuaAppbmRleCBkNDJlOTVkYTViMTQuLmNiY2RhMzdjMjllNCAxMDA2NDQKLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X3JlZy5oCkBAIC03Mjc1LDYgKzcyNzUsOSBAQCBlbnVtIHsKICNkZWZpbmUgU0tMX0NTUl9E
QzVfREM2X0NPVU5UCV9NTUlPKDB4ODAwMkMpCiAjZGVmaW5lIEJYVF9DU1JfREMzX0RDNV9DT1VO
VAlfTU1JTygweDgwMDM4KQogCisvKiBETUMgREVCVUcgQ09VTlRFUlMgZm9yIFRHTCovCisjZGVm
aW5lIERNQ19ERUJVRzMJCV9NTUlPKDB4MTAxMDkwKSAvKkRDM0NPIGRlYnVnIGNvdW50ZXIqLwor
CiAvKiBpbnRlcnJ1cHRzICovCiAjZGVmaW5lIERFX01BU1RFUl9JUlFfQ09OVFJPTCAgICgxIDw8
IDMxKQogI2RlZmluZSBERV9TUFJJVEVCX0ZMSVBfRE9ORSAgICAoMSA8PCAyOSkKLS0gCjIuMjEu
MAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
