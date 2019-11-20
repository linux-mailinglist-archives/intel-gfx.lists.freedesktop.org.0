Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DBD1010476F
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Nov 2019 01:21:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3DC996EA9D;
	Thu, 21 Nov 2019 00:21:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 143B66EA9D
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Nov 2019 00:21:08 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Nov 2019 16:21:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,223,1571727600"; d="scan'208";a="215979115"
Received: from ldmartin1-desk.jf.intel.com ([10.54.74.64])
 by fmsmga001.fm.intel.com with ESMTP; 20 Nov 2019 16:21:07 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 20 Nov 2019 15:46:08 -0800
Message-Id: <20191120234608.17775-3-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191120234608.17775-1-lucas.demarchi@intel.com>
References: <20191120234608.17775-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/3] drm/i915/i915: assume vbt is 4-byte aligned
 into oprom
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

VGhlIHVuYWxpZ25lZCBpb3JlYWQzMigpIHdpbGwgbWFrZSB1cyByZWFkIGJ5dGUgYnkgYnl0ZSBs
b29raW5nIGZvciB0aGUKdmJ0LiBXZSBjb3VsZCBqdXN0IGFzIHdlbGwgaGF2ZSBkb25lIGEgaW9y
ZWFkOCgpICsgYSBzaGlmdCBhbmQgYXZvaWQgdGhlCmV4dHJhIGNvbmZ1c2lvbiBvbiBob3cgd2Ug
YXJlIGxvb2tpbmcgZm9yICIkVkJUIi4KCkhvd2V2ZXIgd2hlbiB1c2luZyBBQ1BJIGl0J3MgZ3Vh
cmFudGVlZCB0aGUgVkJUIGlzIDQtYnl0ZSBhbGlnbmVkCnBlciBzcGVjLCBzbyB3ZSBjYW4gcHJv
YmFibHkgYXNzdW1lIGl0IGhlcmUgYXMgd2VsbC4KClNpZ25lZC1vZmYtYnk6IEx1Y2FzIERlIE1h
cmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfYmlvcy5jIHwgMTkgKysrKysrLS0tLS0tLS0tLS0tLQogMSBmaWxlIGNo
YW5nZWQsIDYgaW5zZXJ0aW9ucygrKSwgMTMgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9zLmMgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuYwppbmRleCBhYTliMTgyZWZlZTUuLjZiZjU3YjFhZDA1
NiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9zLmMK
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9zLmMKQEAgLTE5MDIs
MjcgKzE5MDIsMjAgQEAgc3RhdGljIHN0cnVjdCB2YnRfaGVhZGVyICpvcHJvbV9nZXRfdmJ0KHN0
cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKIAl2b2lkIF9faW9tZW0gKnAgPSBOVUxM
LCAqb3Byb207CiAJc3RydWN0IHZidF9oZWFkZXIgKnZidDsKIAl1MTYgdmJ0X3NpemU7Ci0Jc2l6
ZV90IGksIHNpemU7CisJc2l6ZV90IHNpemU7CiAKIAlvcHJvbSA9IHBjaV9tYXBfcm9tKHBkZXYs
ICZzaXplKTsKIAlpZiAoIW9wcm9tKQogCQlyZXR1cm4gTlVMTDsKIAogCS8qIFNjb3VyIG1lbW9y
eSBsb29raW5nIGZvciB0aGUgVkJUIHNpZ25hdHVyZS4gKi8KLQlmb3IgKGkgPSAwOyBpICsgNCA8
IHNpemU7IGkrKykgewotCQlpZiAoaW9yZWFkMzIob3Byb20gKyBpKSAhPSAqKChjb25zdCB1MzIg
KikiJFZCVCIpKQotCQkJY29udGludWU7Ci0KLQkJcCA9IG9wcm9tICsgaTsKLQkJc2l6ZSAtPSBp
OwotCQlicmVhazsKLQl9Ci0KLQlpZiAoIXApCi0JCWdvdG8gZXJyX3VubWFwX29wcm9tOworCWZv
ciAocCA9IG9wcm9tOyBzaXplID49IDQ7IHAgKz0gNCwgc2l6ZSAtPSA0KQorCQlpZiAoaW9yZWFk
MzIocCkgPT0gKigoY29uc3QgdTMyICopIiRWQlQiKSkKKwkJCWJyZWFrOwogCiAJaWYgKHNpemVv
ZihzdHJ1Y3QgdmJ0X2hlYWRlcikgPiBzaXplKSB7Ci0JCURSTV9ERUJVR19EUklWRVIoIlZCVCBo
ZWFkZXIgaW5jb21wbGV0ZVxuIik7CisJCWlmIChzaXplID49IDQpCisJCQlEUk1fREVCVUdfRFJJ
VkVSKCJWQlQgaGVhZGVyIGluY29tcGxldGVcbiIpOwogCQlnb3RvIGVycl91bm1hcF9vcHJvbTsK
IAl9CiAKLS0gCjIuMjQuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4
