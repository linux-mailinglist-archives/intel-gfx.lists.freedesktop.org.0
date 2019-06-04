Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BCFC34B21
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Jun 2019 16:59:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E762F89688;
	Tue,  4 Jun 2019 14:59:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A27148979D
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Jun 2019 14:59:14 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Jun 2019 07:59:14 -0700
X-ExtLoop1: 1
Received: from ideak-desk.fi.intel.com ([10.237.72.204])
 by orsmga003.jf.intel.com with ESMTP; 04 Jun 2019 07:59:13 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  4 Jun 2019 17:58:04 +0300
Message-Id: <20190604145826.16424-2-imre.deak@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190604145826.16424-1-imre.deak@intel.com>
References: <20190604145826.16424-1-imre.deak@intel.com>
Subject: [Intel-gfx] [PATCH 01/23] drm/i915/icl: Add support to read out the
 TBT PLL HW state
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>,
 Paulo Zanoni <paulo.r.zanoni@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QWRkIHN1cHBvcnQgdG8gcmVhZCBvdXQgdGhlIFRCVCBQTEwgSFcgc3RhdGUuCgpDYzogVmFuZGl0
YSBLdWxrYXJuaSA8dmFuZGl0YS5rdWxrYXJuaUBpbnRlbC5jb20+CkNjOiBQYXVsbyBaYW5vbmkg
PHBhdWxvLnIuemFub25pQGludGVsLmNvbT4KQ2M6IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVt
YXJjaGlAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBJbXJlIERlYWsgPGltcmUuZGVha0BpbnRl
bC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGlzcGxheS5jIHwgMTEgKysr
KysrKysrLS0KIDEgZmlsZSBjaGFuZ2VkLCA5IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0p
CgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGlzcGxheS5jIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGlzcGxheS5jCmluZGV4IGZjNDdlZDAyNDdjNS4uMjY0
NzQ3ODhiN2IyIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kaXNwbGF5
LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGlzcGxheS5jCkBAIC05ODU5LDEz
ICs5ODU5LDIwIEBAIHN0YXRpYyB2b2lkIGljZWxha2VfZ2V0X2RkaV9wbGwoc3RydWN0IGRybV9p
OTE1X3ByaXZhdGUgKmRldl9wcml2LAogCWVudW0gaW50ZWxfZHBsbF9pZCBpZDsKIAl1MzIgdGVt
cDsKIAotCS8qIFRPRE86IFRCVCBwbGwgbm90IGltcGxlbWVudGVkLiAqLwogCWlmIChpbnRlbF9w
b3J0X2lzX2NvbWJvcGh5KGRldl9wcml2LCBwb3J0KSkgewogCQl0ZW1wID0gSTkxNV9SRUFEKERQ
Q0xLQV9DRkdDUjBfSUNMKSAmCiAJCSAgICAgICBEUENMS0FfQ0ZHQ1IwX0RESV9DTEtfU0VMX01B
U0socG9ydCk7CiAJCWlkID0gdGVtcCA+PiBEUENMS0FfQ0ZHQ1IwX0RESV9DTEtfU0VMX1NISUZU
KHBvcnQpOwogCX0gZWxzZSBpZiAoaW50ZWxfcG9ydF9pc190YyhkZXZfcHJpdiwgcG9ydCkpIHsK
LQkJaWQgPSBpY2xfdGNfcG9ydF90b19wbGxfaWQoaW50ZWxfcG9ydF90b190YyhkZXZfcHJpdiwg
cG9ydCkpOworCQl1MzIgY2xrX3NlbCA9IEk5MTVfUkVBRChERElfQ0xLX1NFTChwb3J0KSkgJiBE
RElfQ0xLX1NFTF9NQVNLOworCisJCWlmIChjbGtfc2VsID09IERESV9DTEtfU0VMX01HKSB7CisJ
CQlpZCA9IGljbF90Y19wb3J0X3RvX3BsbF9pZChpbnRlbF9wb3J0X3RvX3RjKGRldl9wcml2LAor
CQkJCQkJCQkgICAgcG9ydCkpOworCQl9IGVsc2UgeworCQkJV0FSTl9PTihjbGtfc2VsIDwgRERJ
X0NMS19TRUxfVEJUXzE2Mik7CisJCQlpZCA9IERQTExfSURfSUNMX1RCVFBMTDsKKwkJfQogCX0g
ZWxzZSB7CiAJCVdBUk4oMSwgIkludmFsaWQgcG9ydCAleFxuIiwgcG9ydCk7CiAJCXJldHVybjsK
LS0gCjIuMTcuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
