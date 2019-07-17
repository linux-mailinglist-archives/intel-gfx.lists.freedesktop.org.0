Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A067E6BA42
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jul 2019 12:32:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F04B96E116;
	Wed, 17 Jul 2019 10:32:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BEE666E119
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Jul 2019 10:32:38 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Jul 2019 03:32:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,274,1559545200"; d="scan'208";a="342995250"
Received: from genxfsim-desktop.iind.intel.com ([10.223.74.120])
 by orsmga005.jf.intel.com with ESMTP; 17 Jul 2019 03:32:36 -0700
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 17 Jul 2019 15:58:04 +0530
Message-Id: <20190717102804.27202-10-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190717102804.27202-1-anshuman.gupta@intel.com>
References: <20190717102804.27202-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 09/10] drm/i915/tgl:Added DC3CO counter in
 i915_dmc_info.
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhpcyBwYXRjaCBleHBvc2VzIERDM0NPIGNvdW50ZXIgaW4gaTkxNV9kbWNfaW5mbyBkZWJ1Z2Zz
LgpXaGljaCB3aWxsIGJlIHVzZWZ1bCBmb3IgREMzQ08gdmFsaWRhdGlvbi4KRE1DIGZpcm13YXJl
IGlzIHVzaW5nIERNQ19ERUJVRzMgcmVnaXN0ZXIgYXMgREMzQ08gY291bnRlcgpyZWdpc3RlciBv
biBUR0wsIGJ1dCBhcyBwZXIgQi5TcGVjcyBETUNfREVCVUczIGlzIGdlbmVyYWwKcHVycG9zZSBy
ZWdpc3Rlci4KCkNjOiBqYW5pLm5pa3VsYUBpbnRlbC5jb20KQ2M6IGltcmUuZGVha0BpbnRlbC5j
b20KQ2M6IGFuaW1lc2gubWFubmFAaW50ZWwuY29tClNpZ25lZC1vZmYtYnk6IEFuc2h1bWFuIEd1
cHRhIDxhbnNodW1hbi5ndXB0YUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9kZWJ1Z2ZzLmMgfCA5ICsrKysrKysrLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9y
ZWcuaCAgICAgfCAzICsrKwogMiBmaWxlcyBjaGFuZ2VkLCAxMSBpbnNlcnRpb25zKCspLCAxIGRl
bGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kZWJ1Z2Zz
LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RlYnVnZnMuYwppbmRleCA0ZDU5OTcyZTk2
ODkuLmIzODJiMGI5ZTQzMCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9k
ZWJ1Z2ZzLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kZWJ1Z2ZzLmMKQEAgLTI1
MDQsOSArMjUwNCwxNiBAQCBzdGF0aWMgaW50IGk5MTVfZG1jX2luZm8oc3RydWN0IHNlcV9maWxl
ICptLCB2b2lkICp1bnVzZWQpCiAJc2VxX3ByaW50ZihtLCAidmVyc2lvbjogJWQuJWRcbiIsIENT
Ul9WRVJTSU9OX01BSk9SKGNzci0+dmVyc2lvbiksCiAJCSAgIENTUl9WRVJTSU9OX01JTk9SKGNz
ci0+dmVyc2lvbikpOwogCi0JaWYgKFdBUk5fT04oSU5URUxfR0VOKGRldl9wcml2KSA+IDExKSkK
KwlpZiAoV0FSTl9PTihJTlRFTF9HRU4oZGV2X3ByaXYpID4gMTIpKQogCQlnb3RvIG91dDsKIAor
CS8qCisJICogQi5TcGVzIHNwZWNpZnkgdGhhdCBETUNfREVCVUczIGlzIGdlbmVyYWwgZGVidWcg
cmVnaXN0ZXIKKwkgKiBETUMgZm9sa3MgdXNlcyB0aGlzIHJlZ2lzdGVyIGZvciBEQzNDTyBjb3Vu
dGVyIGZvciBUR0wKKwkgKi8KKwlpZiAoSVNfVElHRVJMQUtFKGRldl9wcml2KSkKKwkJc2VxX3By
aW50ZihtLCAiREMzQ08gY291bnQ6ICVkXG4iLCBJOTE1X1JFQUQoRE1DX0RFQlVHMykpOworCiAJ
c2VxX3ByaW50ZihtLCAiREMzIC0+IERDNSBjb3VudDogJWRcbiIsCiAJCSAgIEk5MTVfUkVBRChJ
U19CUk9YVE9OKGRldl9wcml2KSA/IEJYVF9DU1JfREMzX0RDNV9DT1VOVCA6CiAJCQkJCQkgICAg
U0tMX0NTUl9EQzNfREM1X0NPVU5UKSk7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X3JlZy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAppbmRleCBkZjM2
ZDg0YTdhOGQuLjY4ZTRiNzhlNGE2NCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9yZWcuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCkBAIC03MjY1
LDYgKzcyNjUsOSBAQCBlbnVtIHsKICNkZWZpbmUgU0tMX0NTUl9EQzVfREM2X0NPVU5UCV9NTUlP
KDB4ODAwMkMpCiAjZGVmaW5lIEJYVF9DU1JfREMzX0RDNV9DT1VOVAlfTU1JTygweDgwMDM4KQog
CisvKiBETUMgREVCVUcgQ09VTlRFUlMgZm9yIFRHTCovCisjZGVmaW5lIERNQ19ERUJVRzMJCV9N
TUlPKDB4MTAxMDkwKSAvKkRDM0NPIGRlYnVnIGNvdW50ZXIqLworCiAvKiBpbnRlcnJ1cHRzICov
CiAjZGVmaW5lIERFX01BU1RFUl9JUlFfQ09OVFJPTCAgICgxIDw8IDMxKQogI2RlZmluZSBERV9T
UFJJVEVCX0ZMSVBfRE9ORSAgICAoMSA8PCAyOSkKLS0gCjIuMjEuMAoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
