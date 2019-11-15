Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 52E58FE902
	for <lists+intel-gfx@lfdr.de>; Sat, 16 Nov 2019 01:10:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C2B1D6EB67;
	Sat, 16 Nov 2019 00:10:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BE0486E125
 for <intel-gfx@lists.freedesktop.org>; Sat, 16 Nov 2019 00:10:01 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Nov 2019 16:10:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,310,1569308400"; d="scan'208";a="406834266"
Received: from ldmartin1-desk.jf.intel.com ([10.54.74.64])
 by fmsmga006.fm.intel.com with ESMTP; 15 Nov 2019 16:10:01 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 15 Nov 2019 15:35:34 -0800
Message-Id: <20191115233534.4999-3-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191115233534.4999-1-lucas.demarchi@intel.com>
References: <20191115233534.4999-1-lucas.demarchi@intel.com>
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
aTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuYwppbmRleCAzYWI3M2Y4ZGI4ZGQuLjMyOGJjNmI2MTU3
ZiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9zLmMK
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9zLmMKQEAgLTE4MDIs
MjcgKzE4MDIsMjAgQEAgc3RhdGljIHN0cnVjdCB2YnRfaGVhZGVyICpvcHJvbV9nZXRfdmJ0KHN0
cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKIAl2b2lkIF9faW9tZW0gKnAgPSBOVUxM
LCBfX2lvbWVtICpvcHJvbTsKIAlzdHJ1Y3QgdmJ0X2hlYWRlciAqdmJ0OwogCXUxNiB2YnRfc2l6
ZTsKLQlzaXplX3QgaSwgc2l6ZTsKKwlzaXplX3Qgc2l6ZTsKIAogCW9wcm9tID0gcGNpX21hcF9y
b20ocGRldiwgJnNpemUpOwogCWlmICghb3Byb20pCiAJCXJldHVybiBOVUxMOwogCiAJLyogU2Nv
dXIgbWVtb3J5IGxvb2tpbmcgZm9yIHRoZSBWQlQgc2lnbmF0dXJlLiAqLwotCWZvciAoaSA9IDA7
IGkgKyA0IDwgc2l6ZTsgaSsrKSB7Ci0JCWlmIChpb3JlYWQzMihvcHJvbSArIGkpICE9ICooKGNv
bnN0IHUzMiAqKSIkVkJUIikpCi0JCQljb250aW51ZTsKLQotCQlwID0gb3Byb20gKyBpOwotCQlz
aXplIC09IGk7Ci0JCWJyZWFrOwotCX0KLQotCWlmICghcCkKLQkJZ290byBlcnJfdW5tYXBfb3By
b207CisJZm9yIChwID0gb3Byb207IHNpemUgPj0gNDsgcCArPSA0LCBzaXplIC09IDQpCisJCWlm
IChpb3JlYWQzMihwKSA9PSAqKChjb25zdCB1MzIgKikiJFZCVCIpKQorCQkJYnJlYWs7CiAKIAlp
ZiAoc2l6ZW9mKHN0cnVjdCB2YnRfaGVhZGVyKSA+IHNpemUpIHsKLQkJRFJNX0RFQlVHX0RSSVZF
UigiVkJUIGhlYWRlciBpbmNvbXBsZXRlXG4iKTsKKwkJaWYgKHNpemUgPj0gNCkKKwkJCURSTV9E
RUJVR19EUklWRVIoIlZCVCBoZWFkZXIgaW5jb21wbGV0ZVxuIik7CiAJCWdvdG8gZXJyX3VubWFw
X29wcm9tOwogCX0KIAotLSAKMi4yNC4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZng=
