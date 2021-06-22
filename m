Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E9663B00DB
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Jun 2021 11:59:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2DB726E0DD;
	Tue, 22 Jun 2021 09:58:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B22B589F47;
 Tue, 22 Jun 2021 09:58:55 +0000 (UTC)
IronPort-SDR: 4deIb2HvLJm8MJw2vtklDW3o1MKnQTpOFdfGh83RbJmVqA/A429MpARPbkicBF2B6vNAr95XI1
 qX0FvIPt/tNQ==
X-IronPort-AV: E=McAfee;i="6200,9189,10022"; a="206843467"
X-IronPort-AV: E=Sophos;i="5.83,291,1616482800"; d="scan'208";a="206843467"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2021 02:58:53 -0700
IronPort-SDR: t2JfLWQmPbwZwwdY4eMUX5a5f/QFYbXFkN3mwj/d0TabAHqVUC35bpBuIosMFAw0A71edx05xE
 YIFPS+wwSEKA==
X-IronPort-AV: E=Sophos;i="5.83,291,1616482800"; d="scan'208";a="452553207"
Received: from ctuckwel-mobl3.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.213.202.56])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2021 02:58:51 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 22 Jun 2021 10:58:43 +0100
Message-Id: <20210622095843.132549-1-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.3
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/ttm: consider all placements for the
 page alignment
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
