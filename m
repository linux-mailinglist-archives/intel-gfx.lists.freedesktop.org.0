Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 10EBA3B18D2
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Jun 2021 13:26:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 602466E8B5;
	Wed, 23 Jun 2021 11:26:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EAE2D6E8B1;
 Wed, 23 Jun 2021 11:26:53 +0000 (UTC)
IronPort-SDR: 8F5eOLzIkIeIX1sPKk5pFsDTLm4HFAHl2+w7C+6NjqIsI0ZcVdEpKUZDvOAt3St/KAxkv7lwdG
 /tY/QDNT35qg==
X-IronPort-AV: E=McAfee;i="6200,9189,10023"; a="271086585"
X-IronPort-AV: E=Sophos;i="5.83,293,1616482800"; d="scan'208";a="271086585"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2021 04:26:53 -0700
IronPort-SDR: 9HQj2RYrLivFkV2fkcfNNP+acauavzninlErnXAvuYMAi+k9J/ZrMcjDuojfl7J/BPXy5DMpwD
 0Sdg4MAJ1ULA==
X-IronPort-AV: E=Sophos;i="5.83,293,1616482800"; d="scan'208";a="454619204"
Received: from dconnon-mobl.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.252.14.111])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2021 04:26:51 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 23 Jun 2021 12:26:35 +0100
Message-Id: <20210623112637.266855-1-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.3
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/3] drm/i915/ttm: consider all placements for
 the page alignment
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

SnVzdCBjaGVja2luZyB0aGUgY3VycmVudCByZWdpb24gaXMgbm90IGVub3VnaCwgaWYgd2UgbGF0
ZXIgbWlncmF0ZSB0aGUKb2JqZWN0IHNvbWV3aGVyZSBlbHNlLiBGb3IgZXhhbXBsZSBpZiB0aGUg
cGxhY2VtZW50cyBhcmUge1NNRU0sIExNRU19LAp0aGVuIHdlIG1pZ2h0IGdldCB0aGlzIHdyb25n
LiBBbm90aGVyIGlkZWEgbWlnaHQgYmUgdG8gbWFrZSB0aGUKcGFnZV9hbGlnbm1lbnQgcGFydCBv
ZiB0aGUgdHRtX3BsYWNlLCBpbnN0ZWFkIG9mIHRoZSBCTy4KClNpZ25lZC1vZmYtYnk6IE1hdHRo
ZXcgQXVsZCA8bWF0dGhldy5hdWxkQGludGVsLmNvbT4KQ2M6IFRob21hcyBIZWxsc3Ryw7ZtIDx0
aG9tYXMuaGVsbHN0cm9tQGxpbnV4LmludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9nZW0vaTkxNV9nZW1fdHRtLmMgfCAyMSArKysrKysrKysrKysrKysrKysrKy0KIDEgZmlsZSBj
aGFuZ2VkLCAyMCBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3R0bS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ2VtL2k5MTVfZ2VtX3R0bS5jCmluZGV4IGM1ZGViOGI3MjI3Yy4uNWQ4OTRiYmE2NDMwIDEw
MDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fdHRtLmMKKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3R0bS5jCkBAIC03NTMsNiArNzUzLDI1
IEBAIHZvaWQgaTkxNV90dG1fYm9fZGVzdHJveShzdHJ1Y3QgdHRtX2J1ZmZlcl9vYmplY3QgKmJv
KQogCQljYWxsX3JjdSgmb2JqLT5yY3UsIF9faTkxNV9nZW1fZnJlZV9vYmplY3RfcmN1KTsKIH0K
IAorc3RhdGljIHU2NCBpOTE1X2dlbV9vYmplY3RfcGFnZV9zaXplKHN0cnVjdCBkcm1faTkxNV9n
ZW1fb2JqZWN0ICpvYmopCit7CisJdTY0IHBhZ2Vfc2l6ZTsKKwlpbnQgaTsKKworCWlmICghb2Jq
LT5tbS5uX3BsYWNlbWVudHMpCisJCXJldHVybiBvYmotPm1tLnJlZ2lvbi0+bWluX3BhZ2Vfc2l6
ZTsKKworCXBhZ2Vfc2l6ZSA9IDA7CisJZm9yIChpID0gMDsgaSA8IG9iai0+bW0ubl9wbGFjZW1l
bnRzOyBpKyspIHsKKwkJc3RydWN0IGludGVsX21lbW9yeV9yZWdpb24gKm1yID0gb2JqLT5tbS5w
bGFjZW1lbnRzW2ldOworCisJCXBhZ2Vfc2l6ZSA9IG1heF90KHU2NCwgbXItPm1pbl9wYWdlX3Np
emUsIHBhZ2Vfc2l6ZSk7CisJfQorCisJR0VNX0JVR19PTighcGFnZV9zaXplKTsKKwlyZXR1cm4g
cGFnZV9zaXplOworfQorCiAvKioKICAqIF9faTkxNV9nZW1fdHRtX29iamVjdF9pbml0IC0gSW5p
dGlhbGl6ZSBhIHR0bS1iYWNrZWQgaTkxNSBnZW0gb2JqZWN0CiAgKiBAbWVtOiBUaGUgaW5pdGlh
bCBtZW1vcnkgcmVnaW9uIGZvciB0aGUgb2JqZWN0LgpAQCAtNzkzLDcgKzgxMiw3IEBAIGludCBf
X2k5MTVfZ2VtX3R0bV9vYmplY3RfaW5pdChzdHJ1Y3QgaW50ZWxfbWVtb3J5X3JlZ2lvbiAqbWVt
LAogCW9iai0+YmFzZS52bWFfbm9kZS5kcml2ZXJfcHJpdmF0ZSA9IGk5MTVfZ2VtX3RvX3R0bShv
YmopOwogCXJldCA9IHR0bV9ib19pbml0KCZpOTE1LT5iZGV2LCBpOTE1X2dlbV90b190dG0ob2Jq
KSwgc2l6ZSwKIAkJCSAgYm9fdHlwZSwgJmk5MTVfc3lzX3BsYWNlbWVudCwKLQkJCSAgbWVtLT5t
aW5fcGFnZV9zaXplID4+IFBBR0VfU0hJRlQsCisJCQkgIGk5MTVfZ2VtX29iamVjdF9wYWdlX3Np
emUob2JqKSA+PiBQQUdFX1NISUZULAogCQkJICB0cnVlLCBOVUxMLCBOVUxMLCBpOTE1X3R0bV9i
b19kZXN0cm95KTsKIAlpZiAoIXJldCkKIAkJb2JqLT50dG0uY3JlYXRlZCA9IHRydWU7Ci0tIAoy
LjI2LjMKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
