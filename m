Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D70D6F7306
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Nov 2019 12:22:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 264266E11A;
	Mon, 11 Nov 2019 11:22:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 38EBE6E11A
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Nov 2019 11:22:39 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Nov 2019 03:22:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,292,1569308400"; d="scan'208";a="405200620"
Received: from vandita-desktop.iind.intel.com ([10.223.74.218])
 by fmsmga006.fm.intel.com with ESMTP; 11 Nov 2019 03:22:37 -0800
From: Vandita Kulkarni <vandita.kulkarni@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 11 Nov 2019 16:22:07 +0530
Message-Id: <20191111105207.7583-1-vandita.kulkarni@intel.com>
X-Mailer: git-send-email 2.21.0.5.gaeb582a
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/tgl: Do not read the transcoder
 register for mipi dsi
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QXMgcGVyIHRoZSBCc3BlYyB0aGUgcG9ydCBtYXBwaW5nIGlzIGZpeGVkIGZvciBtaXBpIGRzaQoK
U2lnbmVkLW9mZi1ieTogVmFuZGl0YSBLdWxrYXJuaSA8dmFuZGl0YS5rdWxrYXJuaUBpbnRlbC5j
b20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgfCAy
NyArKysrKysrKysrKysrKysrLS0tLQogMSBmaWxlIGNoYW5nZWQsIDIyIGluc2VydGlvbnMoKyks
IDUgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kaXNwbGF5LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rp
c3BsYXkuYwppbmRleCBmMTMyOGMwOGY0YWQuLmQ0YTg2MTdkNjE4NSAxMDA2NDQKLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKQEAgLTEwMzk3LDIxICsxMDM5Nywz
OCBAQCBzdGF0aWMgYm9vbCBieHRfZ2V0X2RzaV90cmFuc2NvZGVyX3N0YXRlKHN0cnVjdCBpbnRl
bF9jcnRjICpjcnRjLAogCXJldHVybiB0cmFuc2NvZGVyX2lzX2RzaShwaXBlX2NvbmZpZy0+Y3B1
X3RyYW5zY29kZXIpOwogfQogCi1zdGF0aWMgdm9pZCBoYXN3ZWxsX2dldF9kZGlfcG9ydF9zdGF0
ZShzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YywKLQkJCQkgICAgICAgc3RydWN0IGludGVsX2NydGNf
c3RhdGUgKnBpcGVfY29uZmlnKQorc3RhdGljIGVudW0gcG9ydAoraW50ZWxfdHJhbnNjb2Rlcl90
b19wb3J0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKKwkJCSAgZW51bSB0cmFu
c2NvZGVyIGNwdV90cmFuc2NvZGVyKQogewotCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZf
cHJpdiA9IHRvX2k5MTUoY3J0Yy0+YmFzZS5kZXYpOwotCXN0cnVjdCBpbnRlbF9zaGFyZWRfZHBs
bCAqcGxsOwogCWVudW0gcG9ydCBwb3J0OwogCXUzMiB0bXA7CiAKLQl0bXAgPSBJOTE1X1JFQUQo
VFJBTlNfRERJX0ZVTkNfQ1RMKHBpcGVfY29uZmlnLT5jcHVfdHJhbnNjb2RlcikpOworCS8qIERT
SSB0cmFuc2NvZGVycyBoYXZlIGZpeGVkIGRkaSBtYXBwaW5nKi8KKwlpZiAodHJhbnNjb2Rlcl9p
c19kc2koY3B1X3RyYW5zY29kZXIpKSB7CisJCXBvcnQgPSAoY3B1X3RyYW5zY29kZXIgPT0gVFJB
TlNDT0RFUl9EU0lfQSkgPyBQT1JUX0EgOiBQT1JUX0I7CisJCXJldHVybiBwb3J0OworCX0KIAor
CXRtcCA9IEk5MTVfUkVBRChUUkFOU19ERElfRlVOQ19DVEwoY3B1X3RyYW5zY29kZXIpKTsKIAlp
ZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSAxMikKIAkJcG9ydCA9IFRHTF9UUkFOU19ERElfRlVO
Q19DVExfVkFMX1RPX1BPUlQodG1wKTsKIAllbHNlCiAJCXBvcnQgPSBUUkFOU19ERElfRlVOQ19D
VExfVkFMX1RPX1BPUlQodG1wKTsKIAorCXJldHVybiBwb3J0OworfQorCitzdGF0aWMgdm9pZCBo
YXN3ZWxsX2dldF9kZGlfcG9ydF9zdGF0ZShzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YywKKwkJCQkg
ICAgICAgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKnBpcGVfY29uZmlnKQoreworCXN0cnVjdCBk
cm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoY3J0Yy0+YmFzZS5kZXYpOworCXN0
cnVjdCBpbnRlbF9zaGFyZWRfZHBsbCAqcGxsOworCWVudW0gcG9ydCBwb3J0OworCXUzMiB0bXA7
CisKKwlwb3J0ID0gaW50ZWxfdHJhbnNjb2Rlcl90b19wb3J0KGRldl9wcml2LCBwaXBlX2NvbmZp
Zy0+Y3B1X3RyYW5zY29kZXIpOworCiAJaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0gMTEpCiAJ
CWljZWxha2VfZ2V0X2RkaV9wbGwoZGV2X3ByaXYsIHBvcnQsIHBpcGVfY29uZmlnKTsKIAllbHNl
IGlmIChJU19DQU5OT05MQUtFKGRldl9wcml2KSkKLS0gCjIuMjEuMC41LmdhZWI1ODJhCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
