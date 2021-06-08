Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AA6639F13A
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Jun 2021 10:45:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8EFBD6EB46;
	Tue,  8 Jun 2021 08:45:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 456C36EB44;
 Tue,  8 Jun 2021 08:45:10 +0000 (UTC)
IronPort-SDR: oiWfzE3Jf2TRjfDfWu9ZuoBx/X+wpbVgHZPiB3734QmyPXhP8tJLDNI8oKkuuGg960NXV7hREW
 1PAS7PZhz22Q==
X-IronPort-AV: E=McAfee;i="6200,9189,10008"; a="202943839"
X-IronPort-AV: E=Sophos;i="5.83,257,1616482800"; d="scan'208";a="202943839"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2021 01:45:10 -0700
IronPort-SDR: w0B9GpUo3kO8Hdv0vYsnQrEUt29IvMlW2FWr3HrV6UK2rLARgCphSTRXE4JphmQG/vbGlj4mpI
 YYk9/Vg3WQ1g==
X-IronPort-AV: E=Sophos;i="5.83,257,1616482800"; d="scan'208";a="440382075"
Received: from mrahim1x-mobl.gar.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.215.170.251])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2021 01:45:07 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  8 Jun 2021 09:44:26 +0100
Message-Id: <20210608084428.142676-5-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.3
In-Reply-To: <20210608084428.142676-1-matthew.auld@intel.com>
References: <20210608084428.142676-1-matthew.auld@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 4/6] drm/i915/ttm: pass along the
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
aG9tYXMuaGVsbHN0cm9tQGxpbnV4LmludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9nZW0vaTkxNV9nZW1fdHRtLmMgfCAxMSArKysrKysrKy0tLQogMSBmaWxlIGNoYW5nZWQsIDgg
aW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9nZW0vaTkxNV9nZW1fdHRtLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkx
NV9nZW1fdHRtLmMKaW5kZXggNzNkNTJkZjhmMmJlLi5jNjEyMjc1YzM2YzkgMTAwNjQ0Ci0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV90dG0uYworKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fdHRtLmMKQEAgLTg2LDEwICs4NiwxNCBAQCBpOTE1X3R0
bV9zZWxlY3RfdHRfY2FjaGluZyhjb25zdCBzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2Jq
KQogCiBzdGF0aWMgdm9pZAogaTkxNV90dG1fcGxhY2VfZnJvbV9yZWdpb24oY29uc3Qgc3RydWN0
IGludGVsX21lbW9yeV9yZWdpb24gKm1yLAotCQkJICAgc3RydWN0IHR0bV9wbGFjZSAqcGxhY2Up
CisJCQkgICBzdHJ1Y3QgdHRtX3BsYWNlICpwbGFjZSwKKwkJCSAgIHVuc2lnbmVkIGludCBmbGFn
cykKIHsKIAltZW1zZXQocGxhY2UsIDAsIHNpemVvZigqcGxhY2UpKTsKIAlwbGFjZS0+bWVtX3R5
cGUgPSBpbnRlbF9yZWdpb25fdG9fdHRtX3R5cGUobXIpOworCisJaWYgKGZsYWdzICYgSTkxNV9C
T19BTExPQ19DT05USUdVT1VTKQorCQlwbGFjZS0+ZmxhZ3MgPSBUVE1fUExfRkxBR19DT05USUdV
T1VTOwogfQogCiBzdGF0aWMgdm9pZApAQCAtMTAwLDE1ICsxMDQsMTYgQEAgaTkxNV90dG1fcGxh
Y2VtZW50X2Zyb21fb2JqKGNvbnN0IHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmosCiB7
CiAJdW5zaWduZWQgaW50IGk7CiAJdW5zaWduZWQgaW50IG51bV9hbGxvd2VkID0gb2JqLT5tbS5u
X3BsYWNlbWVudHM7CisJdW5zaWduZWQgaW50IGZsYWdzID0gb2JqLT5mbGFnczsKIAogCXBsYWNl
bWVudC0+bnVtX3BsYWNlbWVudCA9IDE7CiAJaTkxNV90dG1fcGxhY2VfZnJvbV9yZWdpb24obnVt
X2FsbG93ZWQgPyBvYmotPm1tLnBsYWNlbWVudHNbMF0gOgotCQkJCSAgIG9iai0+bW0ucmVnaW9u
LCByZXF1ZXN0ZWQpOworCQkJCSAgIG9iai0+bW0ucmVnaW9uLCByZXF1ZXN0ZWQsIGZsYWdzKTsK
IAogCS8qIENhY2hlIHRoaXMgb24gb2JqZWN0PyAqLwogCXBsYWNlbWVudC0+bnVtX2J1c3lfcGxh
Y2VtZW50ID0gbnVtX2FsbG93ZWQ7CiAJZm9yIChpID0gMDsgaSA8IHBsYWNlbWVudC0+bnVtX2J1
c3lfcGxhY2VtZW50OyArK2kpCi0JCWk5MTVfdHRtX3BsYWNlX2Zyb21fcmVnaW9uKG9iai0+bW0u
cGxhY2VtZW50c1tpXSwgYnVzeSArIGkpOworCQlpOTE1X3R0bV9wbGFjZV9mcm9tX3JlZ2lvbihv
YmotPm1tLnBsYWNlbWVudHNbaV0sIGJ1c3kgKyBpLCBmbGFncyk7CiAKIAlpZiAobnVtX2FsbG93
ZWQgPT0gMCkgewogCQkqYnVzeSA9ICpyZXF1ZXN0ZWQ7Ci0tIAoyLjI2LjMKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
