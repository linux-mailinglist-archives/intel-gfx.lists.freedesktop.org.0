Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 725F93A9EFF
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Jun 2021 17:25:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 647EA6E7D1;
	Wed, 16 Jun 2021 15:25:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4E92A6E1BB;
 Wed, 16 Jun 2021 15:25:36 +0000 (UTC)
IronPort-SDR: NEyJ8pSn3OuNZZx4egWL1KnWaZAO8qDGAT7Uo2WK19n+B1SR+jqqaqV2VlhKeE3mReLN4EzeVq
 mP1UcgjvBXFw==
X-IronPort-AV: E=McAfee;i="6200,9189,10016"; a="206234421"
X-IronPort-AV: E=Sophos;i="5.83,278,1616482800"; d="scan'208";a="206234421"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2021 08:25:32 -0700
IronPort-SDR: VABPwFX3GNBnf7upmdlu1FvPTL4FB+/W6eza8s6obVi3MpRVct0oSc2Cma6PVIDP6KqzGiMxse
 lH50UjaKnjug==
X-IronPort-AV: E=Sophos;i="5.83,278,1616482800"; d="scan'208";a="479129904"
Received: from mrapopor-mobl.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.213.236.122])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2021 08:25:29 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 16 Jun 2021 16:24:58 +0100
Message-Id: <20210616152501.394518-4-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.3
In-Reply-To: <20210616152501.394518-1-matthew.auld@intel.com>
References: <20210616152501.394518-1-matthew.auld@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v5 4/7] drm/i915/ttm: pass along the
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
NS9nZW0vaTkxNV9nZW1fdHRtLmMKaW5kZXggZDc1OTU2ODhlMTgyLi45MGQzNDJlM2RmMjQgMTAw
NjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV90dG0uYworKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fdHRtLmMKQEAgLTc5LDEwICs3OSwxNCBA
QCBpOTE1X3R0bV9zZWxlY3RfdHRfY2FjaGluZyhjb25zdCBzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29i
amVjdCAqb2JqKQogCiBzdGF0aWMgdm9pZAogaTkxNV90dG1fcGxhY2VfZnJvbV9yZWdpb24oY29u
c3Qgc3RydWN0IGludGVsX21lbW9yeV9yZWdpb24gKm1yLAotCQkJICAgc3RydWN0IHR0bV9wbGFj
ZSAqcGxhY2UpCisJCQkgICBzdHJ1Y3QgdHRtX3BsYWNlICpwbGFjZSwKKwkJCSAgIHVuc2lnbmVk
IGludCBmbGFncykKIHsKIAltZW1zZXQocGxhY2UsIDAsIHNpemVvZigqcGxhY2UpKTsKIAlwbGFj
ZS0+bWVtX3R5cGUgPSBpbnRlbF9yZWdpb25fdG9fdHRtX3R5cGUobXIpOworCisJaWYgKGZsYWdz
ICYgSTkxNV9CT19BTExPQ19DT05USUdVT1VTKQorCQlwbGFjZS0+ZmxhZ3MgPSBUVE1fUExfRkxB
R19DT05USUdVT1VTOwogfQogCiBzdGF0aWMgdm9pZApAQCAtOTIsMTYgKzk2LDE3IEBAIGk5MTVf
dHRtX3BsYWNlbWVudF9mcm9tX29iaihjb25zdCBzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAq
b2JqLAogCQkJICAgIHN0cnVjdCB0dG1fcGxhY2VtZW50ICpwbGFjZW1lbnQpCiB7CiAJdW5zaWdu
ZWQgaW50IG51bV9hbGxvd2VkID0gb2JqLT5tbS5uX3BsYWNlbWVudHM7CisJdW5zaWduZWQgaW50
IGZsYWdzID0gb2JqLT5mbGFnczsKIAl1bnNpZ25lZCBpbnQgaTsKIAogCXBsYWNlbWVudC0+bnVt
X3BsYWNlbWVudCA9IDE7CiAJaTkxNV90dG1fcGxhY2VfZnJvbV9yZWdpb24obnVtX2FsbG93ZWQg
PyBvYmotPm1tLnBsYWNlbWVudHNbMF0gOgotCQkJCSAgIG9iai0+bW0ucmVnaW9uLCByZXF1ZXN0
ZWQpOworCQkJCSAgIG9iai0+bW0ucmVnaW9uLCByZXF1ZXN0ZWQsIGZsYWdzKTsKIAogCS8qIENh
Y2hlIHRoaXMgb24gb2JqZWN0PyAqLwogCXBsYWNlbWVudC0+bnVtX2J1c3lfcGxhY2VtZW50ID0g
bnVtX2FsbG93ZWQ7CiAJZm9yIChpID0gMDsgaSA8IHBsYWNlbWVudC0+bnVtX2J1c3lfcGxhY2Vt
ZW50OyArK2kpCi0JCWk5MTVfdHRtX3BsYWNlX2Zyb21fcmVnaW9uKG9iai0+bW0ucGxhY2VtZW50
c1tpXSwgYnVzeSArIGkpOworCQlpOTE1X3R0bV9wbGFjZV9mcm9tX3JlZ2lvbihvYmotPm1tLnBs
YWNlbWVudHNbaV0sIGJ1c3kgKyBpLCBmbGFncyk7CiAKIAlpZiAobnVtX2FsbG93ZWQgPT0gMCkg
ewogCQkqYnVzeSA9ICpyZXF1ZXN0ZWQ7Ci0tIAoyLjI2LjMKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
