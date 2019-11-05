Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EC829F001A
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Nov 2019 15:43:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 425896E0B7;
	Tue,  5 Nov 2019 14:43:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 451226E0B7
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Nov 2019 14:43:56 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Nov 2019 06:43:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,271,1569308400"; d="scan'208";a="195839736"
Received: from ramaling-i9x.iind.intel.com ([10.99.66.154])
 by orsmga008.jf.intel.com with ESMTP; 05 Nov 2019 06:43:53 -0800
From: Ramalingam C <ramalingam.c@intel.com>
To: intel-gfx <intel-gfx@lists.freedesktop.org>,
 Chris Wilson <chris@chris-wilson.co.uk>
Date: Tue,  5 Nov 2019 20:14:14 +0530
Message-Id: <20191105144414.30470-1-ramalingam.c@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v5] drm/i915: FB backing gem obj should reside
 in LMEM
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
Cc: Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SWYgTG9jYWwgbWVtb3J5IGlzIHN1cHBvcnRlZCBieSBoYXJkd2FyZSwgd2Ugd2FudCBmcmFtZWJ1
ZmZlciBiYWNraW5nCmdlbSBvYmplY3RzIGZyb20gbG9jYWwgbWVtb3J5LgoKaWYgdGhlIGJhY2tp
bmcgb2JqIGlzIG5vdCBmcm9tIExNRU0sIHBpbl90b19kaXNwbGF5IGlzIGZhaWxlZC4KCnYyOgog
IG1lbW9yeSByZWdpb25zIGFyZSBjb3JyZWN0bHkgYXNzaWduZWQgdG8gb2JqLT5tZW1vcnlfcmVn
aW9ucyBbdHZydGtvXQogIG1pZ3JhdGlvbiBmYWlsdXJlIGlzIHJlcG9ydGVkIGFzIGRlYnVnIGxv
ZyBbVHZydGtvXQp2MzoKICBNaWdyYXRpb24gaXMgZHJvcHBlZC4gb25seSBlcnJvciBpcyByZXBv
cnRlZCBbRGFuaWVsXQogIG1lbSByZWdpb24gY2hlY2sgaXMgbW92ZSB0byBwaW5fdG9fZGlzcGxh
eSBbQ2hyaXNdCnY0OgogIHMvZGV2X3ByaXYvaTkxNSBbY2hyaXNdCnY1OgogIGk5MTVfZ2VtX29i
amVjdF9pc19sbWVtIGlzIHVzZWQgZm9yIGRldGVjdGluZyB0aGUgb2JqIG1lbSB0eXBlLiBbTWF0
dF0KCmNjOiBNYXR0aGV3IEF1bGQgPG1hdHRoZXcuYXVsZEBpbnRlbC5jb20+ClNpZ25lZC1vZmYt
Ynk6IFJhbWFsaW5nYW0gQyA8cmFtYWxpbmdhbS5jQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fZG9tYWluLmMgfCA5ICsrKysrKysrKwogMSBmaWxlIGNo
YW5nZWQsIDkgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2dlbS9pOTE1X2dlbV9kb21haW4uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dl
bV9kb21haW4uYwppbmRleCA5OTM3YjRjMzQxZjEuLmI2YjVjNDM0ODM5NiAxMDA2NDQKLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2RvbWFpbi5jCisrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9kb21haW4uYwpAQCAtMTIsNiArMTIsNyBAQAogI2lu
Y2x1ZGUgImk5MTVfZ2VtX2lvY3Rscy5oIgogI2luY2x1ZGUgImk5MTVfZ2VtX29iamVjdC5oIgog
I2luY2x1ZGUgImk5MTVfdm1hLmgiCisjaW5jbHVkZSAiaTkxNV9nZW1fbG1lbS5oIgogCiBzdGF0
aWMgdm9pZCBfX2k5MTVfZ2VtX29iamVjdF9mbHVzaF9mb3JfZGlzcGxheShzdHJ1Y3QgZHJtX2k5
MTVfZ2VtX29iamVjdCAqb2JqKQogewpAQCAtNDE5LDExICs0MjAsMTkgQEAgaTkxNV9nZW1fb2Jq
ZWN0X3Bpbl90b19kaXNwbGF5X3BsYW5lKHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmos
CiAJCQkJICAgICBjb25zdCBzdHJ1Y3QgaTkxNV9nZ3R0X3ZpZXcgKnZpZXcsCiAJCQkJICAgICB1
bnNpZ25lZCBpbnQgZmxhZ3MpCiB7CisJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSB0
b19pOTE1KG9iai0+YmFzZS5kZXYpOwogCXN0cnVjdCBpOTE1X3ZtYSAqdm1hOwogCWludCByZXQ7
CiAKIAlhc3NlcnRfb2JqZWN0X2hlbGQob2JqKTsKIAorCS8qIEdFTSBPYmogZm9yIGZyYW1lIGJ1
ZmZlciBpcyBleHBlY3RlZCB0byBiZSBpbiBMTUVNLiAqLworCWlmIChIQVNfTE1FTShpOTE1KSkK
KwkJaWYgKCFpOTE1X2dlbV9vYmplY3RfaXNfbG1lbShvYmopKSB7CisJCQlEUk1fREVCVUdfS01T
KCJPQkogaXMgbm90IGZyb20gTE1FTVxuIik7CisJCQlyZXR1cm4gRVJSX1BUUigtRUlOVkFMKTsK
KwkJfQorCiAJLyoKIAkgKiBUaGUgZGlzcGxheSBlbmdpbmUgaXMgbm90IGNvaGVyZW50IHdpdGgg
dGhlIExMQyBjYWNoZSBvbiBnZW42LiAgQXMKIAkgKiBhIHJlc3VsdCwgd2UgbWFrZSBzdXJlIHRo
YXQgdGhlIHBpbm5pbmcgdGhhdCBpcyBhYm91dCB0byBvY2N1ciBpcwotLSAKMi4yMC4xCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
