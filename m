Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 189D926519
	for <lists+intel-gfx@lfdr.de>; Wed, 22 May 2019 15:51:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C4D7D89AC9;
	Wed, 22 May 2019 13:51:18 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 330EE89AAE;
 Wed, 22 May 2019 13:51:15 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 May 2019 06:51:15 -0700
X-ExtLoop1: 1
Received: from dmironox-mobl5.ccr.corp.intel.com (HELO localhost.localdomain)
 ([10.252.20.122])
 by fmsmga008.fm.intel.com with ESMTP; 22 May 2019 06:51:14 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Wed, 22 May 2019 14:50:59 +0100
Message-Id: <20190522135104.26930-10-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190522135104.26930-1-tvrtko.ursulin@linux.intel.com>
References: <20190522135104.26930-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI i-g-t 09/14] test/i915: gem_ctx_exec: use the
 gem_engine_topology library
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
Cc: Intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogQW5kaSBTaHl0aSA8YW5kaS5zaHl0aUBpbnRlbC5jb20+CgpSZXBsYWNlIHRoZSBsZWdh
Y3kgZm9yX2VhY2hfZW5naW5lKiBkZWZpbmVzIHdpdGggdGhlIG9uZXMKaW1wbGVtZW50ZWQgaW4g
dGhlIGdlbV9lbmdpbmVfdG9wb2xvZ3kgbGlicmFyeS4KClNpZ25lZC1vZmYtYnk6IEFuZGkgU2h5
dGkgPGFuZGkuc2h5dGlAaW50ZWwuY29tPgpDYzogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13
aWxzb24uY28udWs+CkNjOiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AbGludXguaW50
ZWwuY29tPgpDYzogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBmZndsbC5jaD4KUmV2aWV3
ZWQtYnk6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+Ci0tLQogdGVz
dHMvaTkxNS9nZW1fY3R4X2V4ZWMuYyB8IDE2ICsrKysrKystLS0tLS0tLS0KIDEgZmlsZSBjaGFu
Z2VkLCA3IGluc2VydGlvbnMoKyksIDkgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvdGVzdHMv
aTkxNS9nZW1fY3R4X2V4ZWMuYyBiL3Rlc3RzL2k5MTUvZ2VtX2N0eF9leGVjLmMKaW5kZXggYjhl
MGUwNzQzODkyLi42MTRhOWY0MDE5MzEgMTAwNjQ0Ci0tLSBhL3Rlc3RzL2k5MTUvZ2VtX2N0eF9l
eGVjLmMKKysrIGIvdGVzdHMvaTkxNS9nZW1fY3R4X2V4ZWMuYwpAQCAtMTExLDcgKzExMSw4IEBA
IHN0YXRpYyB2b2lkIGJpZ19leGVjKGludCBmZCwgdWludDMyX3QgaGFuZGxlLCBpbnQgcmluZykK
IAlnZW1fc3luYyhmZCwgaGFuZGxlKTsKIH0KIAotc3RhdGljIHZvaWQgaW52YWxpZF9jb250ZXh0
KGludCBmZCwgdW5zaWduZWQgcmluZywgdWludDMyX3QgaGFuZGxlKQorc3RhdGljIHZvaWQgaW52
YWxpZF9jb250ZXh0KGludCBmZCwgY29uc3Qgc3RydWN0IGludGVsX2V4ZWN1dGlvbl9lbmdpbmUy
ICplLAorCQkJICAgIHVpbnQzMl90IGhhbmRsZSkKIHsKIAlzdHJ1Y3QgZHJtX2k5MTVfZ2VtX2V4
ZWNfb2JqZWN0MiBvYmogPSB7CiAJCS5oYW5kbGUgPSBoYW5kbGUsCkBAIC0xMTksNyArMTIwLDcg
QEAgc3RhdGljIHZvaWQgaW52YWxpZF9jb250ZXh0KGludCBmZCwgdW5zaWduZWQgcmluZywgdWlu
dDMyX3QgaGFuZGxlKQogCXN0cnVjdCBkcm1faTkxNV9nZW1fZXhlY2J1ZmZlcjIgZXhlY2J1ZiA9
IHsKIAkJLmJ1ZmZlcnNfcHRyID0gdG9fdXNlcl9wb2ludGVyKCZvYmopLAogCQkuYnVmZmVyX2Nv
dW50ID0gMSwKLQkJLmZsYWdzID0gcmluZywKKwkJLmZsYWdzID0gZS0+ZmxhZ3MsCiAJfTsKIAl1
bnNpZ25lZCBpbnQgaTsKIAl1aW50MzJfdCBjdHg7CkBAIC0xOTgsNyArMTk5LDcgQEAgc3RhdGlj
IHZvaWQgbm9yZWNvdmVyeShpbnQgaTkxNSkKIGlndF9tYWluCiB7CiAJY29uc3QgdWludDMyX3Qg
YmF0Y2hbMl0gPSB7IDAsIE1JX0JBVENIX0JVRkZFUl9FTkQgfTsKLQljb25zdCBzdHJ1Y3QgaW50
ZWxfZXhlY3V0aW9uX2VuZ2luZSAqZTsKKwljb25zdCBzdHJ1Y3QgaW50ZWxfZXhlY3V0aW9uX2Vu
Z2luZTIgKmU7CiAJdWludDMyX3QgaGFuZGxlOwogCXVpbnQzMl90IGN0eF9pZDsKIAlpbnQgZmQ7
CkBAIC0yMjgsMTIgKzIyOSw5IEBAIGlndF9tYWluCiAJCWdlbV9zeW5jKGZkLCBoYW5kbGUpOwog
CX0KIAotCWZvciAoZSA9IGludGVsX2V4ZWN1dGlvbl9lbmdpbmVzOyBlLT5uYW1lOyBlKyspIHsK
LQkJaWd0X3N1YnRlc3RfZigiYmFzaWMtaW52YWxpZC1jb250ZXh0LSVzIiwgZS0+bmFtZSkgewot
CQkJZ2VtX3JlcXVpcmVfcmluZyhmZCwgZS0+ZXhlY19pZCB8IGUtPmZsYWdzKTsKLQkJCWludmFs
aWRfY29udGV4dChmZCwgZS0+ZXhlY19pZCB8IGUtPmZsYWdzLCBoYW5kbGUpOwotCQl9Ci0JfQor
CV9fZm9yX2VhY2hfcGh5c2ljYWxfZW5naW5lKGZkLCBlKQorCQlpZ3Rfc3VidGVzdF9mKCJiYXNp
Yy1pbnZhbGlkLWNvbnRleHQtJXMiLCBlLT5uYW1lKQorCQkJaW52YWxpZF9jb250ZXh0KGZkLCBl
LCBoYW5kbGUpOwogCiAJaWd0X3N1YnRlc3QoImV2aWN0aW9uIikKIAkJYmlnX2V4ZWMoZmQsIGhh
bmRsZSwgMCk7Ci0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeA==
