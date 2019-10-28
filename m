Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AA535E7B52
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Oct 2019 22:25:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E97906EA94;
	Mon, 28 Oct 2019 21:25:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C835A6EA95
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Oct 2019 21:25:03 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Oct 2019 14:25:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,241,1569308400"; d="scan'208";a="224764266"
Received: from bpaauwe-desk1.fm.intel.com ([10.105.128.11])
 by fmsmga004.fm.intel.com with ESMTP; 28 Oct 2019 14:25:01 -0700
From: Bob Paauwe <bob.j.paauwe@intel.com>
To: intel-gfx <intel-gfx@lists.freedesktop.org>
Date: Mon, 28 Oct 2019 14:24:59 -0700
Message-Id: <20191028212459.1998-1-bob.j.paauwe@intel.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] lib/color_encoding: Fix up support for XYUV
 format.
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

QWRkIFhZVVY4ODg4IHRvIHRoZSBsaXN0IG9mIERSTSBGb3JtYXRzIHRvIHRlc3QuCgpBbHNvIGZp
eCB0aGUgYnl0ZSBvcmRlciBmb3IgdGhlIGZvcm1hdC4KClNpZ25lZC1vZmYtYnk6IEJvYiBQYWF1
d2UgPGJvYi5qLnBhYXV3ZUBpbnRlbC5jb20+Ci0tLQogbGliL2lndF9jb2xvcl9lbmNvZGluZy5j
IHwgMSArCiBsaWIvaWd0X2ZiLmMgICAgICAgICAgICAgfCA2ICsrKy0tLQogMiBmaWxlcyBjaGFu
Z2VkLCA0IGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvbGliL2ln
dF9jb2xvcl9lbmNvZGluZy5jIGIvbGliL2lndF9jb2xvcl9lbmNvZGluZy5jCmluZGV4IDdkZTZk
NWFiLi5hN2JkMmIyMiAxMDA2NDQKLS0tIGEvbGliL2lndF9jb2xvcl9lbmNvZGluZy5jCisrKyBi
L2xpYi9pZ3RfY29sb3JfZW5jb2RpbmcuYwpAQCAtMTYwLDYgKzE2MCw3IEBAIHN0YXRpYyBjb25z
dCBzdHJ1Y3QgY29sb3JfZW5jb2RpbmdfZm9ybWF0IHsKIAl7IERSTV9GT1JNQVRfWFZZVTIxMDEw
MTAsIDEwMjMuZiwgNjQuZiwgOTQwLmYsIDY0LmYsIDUxMi5mLCA5NjAuZiB9LAogCXsgRFJNX0ZP
Uk1BVF9YVllVMTJfMTYxNjE2MTYsIDY1NTIwLmYsIDQwOTYuZiwgNjAxNjAuZiwgNDA5Ni5mLCAz
Mjc2OC5mLCA2MTQ0MC5mIH0sCiAJeyBEUk1fRk9STUFUX1hWWVUxNjE2MTYxNiwgNjU1MzUuZiwg
NDA5Ni5mLCA2MDE2MC5mLCA0MDk2LmYsIDMyNzY4LmYsIDYxNDQwLmYgfSwKKwl7IERSTV9GT1JN
QVRfWFlVVjg4ODgsIDI1NS5mLCAxNi5mLCAyMzUuZiwgMTYuZiwgMTI4LmYsIDI0MC5mIH0sCiB9
OwogCiBzdGF0aWMgY29uc3Qgc3RydWN0IGNvbG9yX2VuY29kaW5nX2Zvcm1hdCAqbG9va3VwX2Zv
dXJjYyh1aW50MzJfdCBmb3VyY2MpCmRpZmYgLS1naXQgYS9saWIvaWd0X2ZiLmMgYi9saWIvaWd0
X2ZiLmMKaW5kZXggNGFkY2E5NjcuLmZlNWZhNzRiIDEwMDY0NAotLS0gYS9saWIvaWd0X2ZiLmMK
KysrIGIvbGliL2lndF9mYi5jCkBAIC0yNDIzLDkgKzI0MjMsOSBAQCBzdGF0aWMgdm9pZCBnZXRf
eXV2X3BhcmFtZXRlcnMoc3RydWN0IGlndF9mYiAqZmIsIHN0cnVjdCB5dXZfcGFyYW1ldGVycyAq
cGFyYW1zKQogCQlicmVhazsKIAogCWNhc2UgRFJNX0ZPUk1BVF9YWVVWODg4ODoKLQkJcGFyYW1z
LT55X29mZnNldCA9IGZiLT5vZmZzZXRzWzBdICsgMTsKLQkJcGFyYW1zLT51X29mZnNldCA9IGZi
LT5vZmZzZXRzWzBdICsgMjsKLQkJcGFyYW1zLT52X29mZnNldCA9IGZiLT5vZmZzZXRzWzBdICsg
MzsKKwkJcGFyYW1zLT55X29mZnNldCA9IGZiLT5vZmZzZXRzWzBdICsgMjsKKwkJcGFyYW1zLT51
X29mZnNldCA9IGZiLT5vZmZzZXRzWzBdICsgMTsKKwkJcGFyYW1zLT52X29mZnNldCA9IGZiLT5v
ZmZzZXRzWzBdICsgMDsKIAkJYnJlYWs7CiAJfQogfQotLSAKMi4yMS4wCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
