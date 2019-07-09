Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A27D263D76
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Jul 2019 23:45:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C35CE89683;
	Tue,  9 Jul 2019 21:45:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E313A89CA2
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Jul 2019 21:45:25 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Jul 2019 14:45:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,472,1557212400"; d="scan'208";a="168114182"
Received: from labuser-z97x-ud5h.jf.intel.com ([10.54.75.49])
 by orsmga003.jf.intel.com with ESMTP; 09 Jul 2019 14:45:24 -0700
From: Manasi Navare <manasi.d.navare@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  9 Jul 2019 14:47:35 -0700
Message-Id: <20190709214735.16907-2-manasi.d.navare@intel.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190709214735.16907-1-manasi.d.navare@intel.com>
References: <20190709214735.16907-1-manasi.d.navare@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/display/tgl: Bump up the plane/fb
 height to support 8K
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

T24gVEdMKywgdGhlIHBsYW5lIGhlaWdodCBmb3IgOEsgcGxhbmVzIGNhbiBiZSA0MzIwLCBzbyBi
dW1wIGl0IHVwClRvIHN1cHBvcnQgNDMyMCwgd2UgbmVlZCB0byBpbmNyZWFzZSB0aGUgbnVtYmVy
IG9mIGJpdHMgdXNlZCB0bwpyZWFkIHBsYW5lX2hlaWdodCB0byAxMyBhcyBvcHBvc2VkIHRvIG9s
ZGVyIDEyIGJpdHMuCgpDYzogTWFhcnRlbiBMYW5raG9yc3QgPG1hYXJ0ZW4ubGFua2hvcnN0QGxp
bnV4LmludGVsLmNvbT4KQ2M6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5p
bnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IE1hbmFzaSBOYXZhcmUgPG1hbmFzaS5kLm5hdmFyZUBp
bnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5
LmMgfCAyMSArKysrKysrKysrKysrKysrKystLQogMSBmaWxlIGNoYW5nZWQsIDE5IGluc2VydGlv
bnMoKyksIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2Rpc3BsYXkuYwppbmRleCAwZDVjOGFmMDFmNTQuLmJlOWE1NGNiNWVjYyAxMDA2NDQKLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKQEAgLTMzNDMsNiArMzM0
MywxNiBAQCBzdGF0aWMgaW50IGljbF9tYXhfcGxhbmVfd2lkdGgoY29uc3Qgc3RydWN0IGRybV9m
cmFtZWJ1ZmZlciAqZmIsCiAJcmV0dXJuIDUxMjA7CiB9CiAKK3N0YXRpYyBpbnQgc2tsX21heF9w
bGFuZV9oZWlnaHQodm9pZCkKK3sKKwlyZXR1cm4gNDA5NjsKK30KKworc3RhdGljIGludCB0Z2xf
bWF4X3BsYW5lX2hlaWdodCh2b2lkKQoreworCXJldHVybiA0MzIwOworfQorCiBzdGF0aWMgYm9v
bCBza2xfY2hlY2tfbWFpbl9jY3NfY29vcmRpbmF0ZXMoc3RydWN0IGludGVsX3BsYW5lX3N0YXRl
ICpwbGFuZV9zdGF0ZSwKIAkJCQkJICAgaW50IG1haW5feCwgaW50IG1haW5feSwgdTMyIG1haW5f
b2Zmc2V0KQogewpAQCAtMzM5MSw5ICszNDAxLDEzIEBAIHN0YXRpYyBpbnQgc2tsX2NoZWNrX21h
aW5fc3VyZmFjZShzdHJ1Y3QgaW50ZWxfcGxhbmVfc3RhdGUgKnBsYW5lX3N0YXRlKQogCWludCB3
ID0gZHJtX3JlY3Rfd2lkdGgoJnBsYW5lX3N0YXRlLT5iYXNlLnNyYykgPj4gMTY7CiAJaW50IGgg
PSBkcm1fcmVjdF9oZWlnaHQoJnBsYW5lX3N0YXRlLT5iYXNlLnNyYykgPj4gMTY7CiAJaW50IG1h
eF93aWR0aDsKLQlpbnQgbWF4X2hlaWdodCA9IDQwOTY7CisJaW50IG1heF9oZWlnaHQ7CiAJdTMy
IGFsaWdubWVudCwgb2Zmc2V0LCBhdXhfb2Zmc2V0ID0gcGxhbmVfc3RhdGUtPmNvbG9yX3BsYW5l
WzFdLm9mZnNldDsKIAorCWlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDEyKQorCQltYXhfaGVp
Z2h0ID0gdGdsX21heF9wbGFuZV9oZWlnaHQoKTsKKwllbHNlCisJCW1heF9oZWlnaHQgPSBza2xf
bWF4X3BsYW5lX2hlaWdodCgpOwogCWlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDExKQogCQlt
YXhfd2lkdGggPSBpY2xfbWF4X3BsYW5lX3dpZHRoKGZiLCAwLCByb3RhdGlvbik7CiAJZWxzZSBp
ZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSAxMCB8fCBJU19HRU1JTklMQUtFKGRldl9wcml2KSkK
QEAgLTk4NjUsNyArOTg3OSwxMCBAQCBza3lsYWtlX2dldF9pbml0aWFsX3BsYW5lX2NvbmZpZyhz
dHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YywKIAlvZmZzZXQgPSBJOTE1X1JFQUQoUExBTkVfT0ZGU0VU
KHBpcGUsIHBsYW5lX2lkKSk7CiAKIAl2YWwgPSBJOTE1X1JFQUQoUExBTkVfU0laRShwaXBlLCBw
bGFuZV9pZCkpOwotCWZiLT5oZWlnaHQgPSAoKHZhbCA+PiAxNikgJiAweGZmZikgKyAxOworCWlm
IChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDEyKQorCQlmYi0+aGVpZ2h0ID0gKCh2YWwgPj4gMTYp
ICYgMHgxZmZmKSArIDE7CisJZWxzZQorCQlmYi0+aGVpZ2h0ID0gKCh2YWwgPj4gMTYpICYgMHhm
ZmYpICsgMTsKIAlmYi0+d2lkdGggPSAoKHZhbCA+PiAwKSAmIDB4MWZmZikgKyAxOwogCiAJdmFs
ID0gSTkxNV9SRUFEKFBMQU5FX1NUUklERShwaXBlLCBwbGFuZV9pZCkpOwotLSAKMi4xOS4xCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
