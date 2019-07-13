Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 28F5767778
	for <lists+intel-gfx@lfdr.de>; Sat, 13 Jul 2019 03:10:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E2B636E3C4;
	Sat, 13 Jul 2019 01:09:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A53BE6E369
 for <intel-gfx@lists.freedesktop.org>; Sat, 13 Jul 2019 01:09:45 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Jul 2019 18:09:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,484,1557212400"; d="scan'208";a="341850916"
Received: from dhoyan-mobl.amr.corp.intel.com (HELO ldmartin-desk1.intel.com)
 ([10.252.197.100])
 by orsmga005.jf.intel.com with ESMTP; 12 Jul 2019 18:09:45 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 12 Jul 2019 18:09:24 -0700
Message-Id: <20190713010940.17711-7-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190713010940.17711-1-lucas.demarchi@intel.com>
References: <20190713010940.17711-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 06/22] drm/i915/tgl: handle DP aux interrupts
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

Rm9yIFRpZ2VyIExha2UgdGhlIERFIFBvcnQgSW50ZXJydXB0IERlZmluaXRpb24gYml0cyBjaGFu
Z2VkLCBzbyB1c2UgdGhlCm5ldyBiaXQgZGVmaW5pdGlvbnMuCgpDYzogSm9zZSBTb3V6YSA8am9z
ZS5zb3V6YUBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMu
ZGVtYXJjaGlAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfaXJxLmMg
fCAxNiArKysrKysrKysrKy0tLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oIHwg
IDMgKysrCiAyIGZpbGVzIGNoYW5nZWQsIDE0IGluc2VydGlvbnMoKyksIDUgZGVsZXRpb25zKC0p
CgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9pcnEuYyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfaXJxLmMKaW5kZXggMjU2YmQyYzA3MmMxLi42MzUwZTlkZWU2NTMg
MTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfaXJxLmMKKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9pcnEuYwpAQCAtMjkzOSwxOSArMjkzOSwyNSBAQCBzdGF0aWMg
dm9pZCBnZW4xMV9ocGRfaXJxX2hhbmRsZXIoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9w
cml2LCB1MzIgaWlyKQogCiBzdGF0aWMgdTMyIGdlbjhfZGVfcG9ydF9hdXhfbWFzayhzdHJ1Y3Qg
ZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiB7Ci0JdTMyIG1hc2sgPSBHRU44X0FVWF9DSEFO
TkVMX0E7CisJdTMyIG1hc2s7CisKKwlpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSAxMikKKwkJ
LyogVE9ETzogQWRkIEFVWCBlbnRyaWVzIGZvciBVU0JDICovCisJCXJldHVybiBUR0xfREVfUE9S
VF9BVVhfRERJQSB8CisJCQlUR0xfREVfUE9SVF9BVVhfRERJQiB8CisJCQlUR0xfREVfUE9SVF9B
VVhfRERJQzsKIAorCW1hc2sgPSBHRU44X0FVWF9DSEFOTkVMX0E7CiAJaWYgKElOVEVMX0dFTihk
ZXZfcHJpdikgPj0gOSkKIAkJbWFzayB8PSBHRU45X0FVWF9DSEFOTkVMX0IgfAogCQkJR0VOOV9B
VVhfQ0hBTk5FTF9DIHwKIAkJCUdFTjlfQVVYX0NIQU5ORUxfRDsKIAotCWlmIChJU19DTkxfV0lU
SF9QT1JUX0YoZGV2X3ByaXYpKQorCWlmIChJU19DTkxfV0lUSF9QT1JUX0YoZGV2X3ByaXYpIHx8
IElTX0dFTihkZXZfcHJpdiwgMTEpKQogCQltYXNrIHw9IENOTF9BVVhfQ0hBTk5FTF9GOwogCi0J
aWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0gMTEpCi0JCW1hc2sgfD0gSUNMX0FVWF9DSEFOTkVM
X0UgfAotCQkJQ05MX0FVWF9DSEFOTkVMX0Y7CisJaWYgKElTX0dFTihkZXZfcHJpdiwgMTEpKQor
CQltYXNrIHw9IElDTF9BVVhfQ0hBTk5FTF9FOwogCiAJcmV0dXJuIG1hc2s7CiB9CmRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9yZWcuaAppbmRleCBmZjcwM2JhZjEwNWYuLjQxYzhiNDBlZWJkNSAxMDA2NDQKLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X3JlZy5oCkBAIC03NDI4LDYgKzc0MjgsOSBAQCBlbnVtIHsKICNkZWZpbmUgIEdF
TjhfUE9SVF9EUF9BX0hPVFBMVUcJCSgxIDw8IDMpCiAjZGVmaW5lICBCWFRfREVfUE9SVF9HTUJV
UwkJKDEgPDwgMSkKICNkZWZpbmUgIEdFTjhfQVVYX0NIQU5ORUxfQQkJKDEgPDwgMCkKKyNkZWZp
bmUgIFRHTF9ERV9QT1JUX0FVWF9ERElDCQkoMSA8PCAyKQorI2RlZmluZSAgVEdMX0RFX1BPUlRf
QVVYX0RESUIJCSgxIDw8IDEpCisjZGVmaW5lICBUR0xfREVfUE9SVF9BVVhfRERJQQkJKDEgPDwg
MCkKIAogI2RlZmluZSBHRU44X0RFX01JU0NfSVNSIF9NTUlPKDB4NDQ0NjApCiAjZGVmaW5lIEdF
TjhfREVfTUlTQ19JTVIgX01NSU8oMHg0NDQ2NCkKLS0gCjIuMjEuMAoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
