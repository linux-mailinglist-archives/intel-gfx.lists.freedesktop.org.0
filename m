Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D106439F490
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Jun 2021 13:03:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BD5386EBA5;
	Tue,  8 Jun 2021 11:03:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F0FD06EBA5;
 Tue,  8 Jun 2021 11:03:44 +0000 (UTC)
IronPort-SDR: hVo8K9aj1ND/p5yUTrqgntlgoe0iXJc7dZOUwdSz78ZZtxlfm0G1uy8aPWvW3MaW8hbWjfpHkI
 8x02rba0cZ2A==
X-IronPort-AV: E=McAfee;i="6200,9189,10008"; a="204787029"
X-IronPort-AV: E=Sophos;i="5.83,257,1616482800"; d="scan'208";a="204787029"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2021 04:03:42 -0700
IronPort-SDR: skuNToVxCT4dtTHQdd9pNzXuptkPbOaiA4HX7jqAhpdIw8mcQ+OCH+qxrIEARCMC5G5clz+3hV
 q4ya60eYIq6Q==
X-IronPort-AV: E=Sophos;i="5.83,257,1616482800"; d="scan'208";a="552237193"
Received: from mrahim1x-mobl.gar.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.215.170.251])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2021 04:03:31 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  8 Jun 2021 12:02:51 +0100
Message-Id: <20210608110254.169357-5-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.3
In-Reply-To: <20210608110254.169357-1-matthew.auld@intel.com>
References: <20210608110254.169357-1-matthew.auld@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 4/7] drm/i915/ttm: pass along the
 I915_BO_ALLOC_CONTIGUOUS
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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
Cc: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Q3VycmVudGx5IHdlIGp1c3QgaWdub3JlIHRoZSBJOTE1X0JPX0FMTE9DX0NPTlRJR1VPVVMgZmxh
Zywgd2hpY2ggaXMKZmluZSBzaW5jZSBldmVyeXRoaW5nIGlzIGFscmVhZHkgY29udGlndW91cyB3
aXRoIHRoZSB0dG0gcmFuZ2UgbWFuYWdlci4KSG93ZXZlciBpbiB0aGUgbmV4dCBwYXRjaCB3ZSB3
YW50IHRvIHN3aXRjaCBvdmVyIHRvIHRoZSB0dG0gYnVkZHkKbWFuYWdlciwgd2hlcmUgYWxsb2Nh
dGlvbnMgYXJlIGJ5IGRlZmF1bHQgbm90IGNvbnRpZ3VvdXMuCgp2MihUaG9tYXMpOgogICAgLSBG
b3J3YXJkIEFMTE9DX0NPTlRJRyBmb3IgYWxsIHJlZ2lvbnMKClNpZ25lZC1vZmYtYnk6IE1hdHRo
ZXcgQXVsZCA8bWF0dGhldy5hdWxkQGludGVsLmNvbT4KQ2M6IFRob21hcyBIZWxsc3Ryw7ZtIDx0
aG9tYXMuaGVsbHN0cm9tQGxpbnV4LmludGVsLmNvbT4KUmV2aWV3ZWQtYnk6IFRob21hcyBIZWxs
c3Ryw7ZtIDx0aG9tYXMuaGVsbHN0cm9tQGxpbnV4LmludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fdHRtLmMgfCAxMSArKysrKysrKy0tLQogMSBmaWxlIGNo
YW5nZWQsIDggaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fdHRtLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9nZW0vaTkxNV9nZW1fdHRtLmMKaW5kZXggNzNkNTJkZjhmMmJlLi5jNjEyMjc1YzM2YzkgMTAw
NjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV90dG0uYworKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fdHRtLmMKQEAgLTg2LDEwICs4NiwxNCBA
QCBpOTE1X3R0bV9zZWxlY3RfdHRfY2FjaGluZyhjb25zdCBzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29i
amVjdCAqb2JqKQogCiBzdGF0aWMgdm9pZAogaTkxNV90dG1fcGxhY2VfZnJvbV9yZWdpb24oY29u
c3Qgc3RydWN0IGludGVsX21lbW9yeV9yZWdpb24gKm1yLAotCQkJICAgc3RydWN0IHR0bV9wbGFj
ZSAqcGxhY2UpCisJCQkgICBzdHJ1Y3QgdHRtX3BsYWNlICpwbGFjZSwKKwkJCSAgIHVuc2lnbmVk
IGludCBmbGFncykKIHsKIAltZW1zZXQocGxhY2UsIDAsIHNpemVvZigqcGxhY2UpKTsKIAlwbGFj
ZS0+bWVtX3R5cGUgPSBpbnRlbF9yZWdpb25fdG9fdHRtX3R5cGUobXIpOworCisJaWYgKGZsYWdz
ICYgSTkxNV9CT19BTExPQ19DT05USUdVT1VTKQorCQlwbGFjZS0+ZmxhZ3MgPSBUVE1fUExfRkxB
R19DT05USUdVT1VTOwogfQogCiBzdGF0aWMgdm9pZApAQCAtMTAwLDE1ICsxMDQsMTYgQEAgaTkx
NV90dG1fcGxhY2VtZW50X2Zyb21fb2JqKGNvbnN0IHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0
ICpvYmosCiB7CiAJdW5zaWduZWQgaW50IGk7CiAJdW5zaWduZWQgaW50IG51bV9hbGxvd2VkID0g
b2JqLT5tbS5uX3BsYWNlbWVudHM7CisJdW5zaWduZWQgaW50IGZsYWdzID0gb2JqLT5mbGFnczsK
IAogCXBsYWNlbWVudC0+bnVtX3BsYWNlbWVudCA9IDE7CiAJaTkxNV90dG1fcGxhY2VfZnJvbV9y
ZWdpb24obnVtX2FsbG93ZWQgPyBvYmotPm1tLnBsYWNlbWVudHNbMF0gOgotCQkJCSAgIG9iai0+
bW0ucmVnaW9uLCByZXF1ZXN0ZWQpOworCQkJCSAgIG9iai0+bW0ucmVnaW9uLCByZXF1ZXN0ZWQs
IGZsYWdzKTsKIAogCS8qIENhY2hlIHRoaXMgb24gb2JqZWN0PyAqLwogCXBsYWNlbWVudC0+bnVt
X2J1c3lfcGxhY2VtZW50ID0gbnVtX2FsbG93ZWQ7CiAJZm9yIChpID0gMDsgaSA8IHBsYWNlbWVu
dC0+bnVtX2J1c3lfcGxhY2VtZW50OyArK2kpCi0JCWk5MTVfdHRtX3BsYWNlX2Zyb21fcmVnaW9u
KG9iai0+bW0ucGxhY2VtZW50c1tpXSwgYnVzeSArIGkpOworCQlpOTE1X3R0bV9wbGFjZV9mcm9t
X3JlZ2lvbihvYmotPm1tLnBsYWNlbWVudHNbaV0sIGJ1c3kgKyBpLCBmbGFncyk7CiAKIAlpZiAo
bnVtX2FsbG93ZWQgPT0gMCkgewogCQkqYnVzeSA9ICpyZXF1ZXN0ZWQ7Ci0tIAoyLjI2LjMKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
