Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D2759E773D
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Oct 2019 18:05:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE8CE6E993;
	Mon, 28 Oct 2019 17:05:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C6C346E993
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Oct 2019 17:05:07 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Oct 2019 10:05:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,240,1569308400"; d="scan'208";a="350735307"
Received: from ldmartin-desk1.jf.intel.com ([10.7.200.70])
 by orsmga004.jf.intel.com with ESMTP; 28 Oct 2019 10:05:06 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 28 Oct 2019 10:04:57 -0700
Message-Id: <20191028170457.6982-1-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/tgl: add support to one DP-MST stream
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

VGhpcyBpcyB0aGUgbWluaW11bSBjaGFuZ2UgdG8gc3VwcG9ydCAxIChhbmQgb25seSAxKSBEUC1N
U1QgbW9uaXRvcgpjb25uZWN0ZWQgb24gVGlnZXIgTGFrZS4gVGhpcyBjaGFuZ2Ugd2FzIGlzb2xh
dGVkIGZyb20gcHJldmlvdXMgcGF0Y2gKZnJvbSBKb3PDqS4gSW4gb3JkZXIgdG8gc3VwcG9ydCBt
b3JlIHN0cmVhbXMgd2Ugd2lsbCBuZWVkIHRvIGNyZWF0ZSBhCm1hc3Rlci1zbGF2ZSByZWxhdGlv
biBvbiB0aGUgdHJhbnNjb2RlcnMgYW5kIHRoYXQgaXMgY3VycmVudGx5IG5vdAp3b3JraW5nIHll
dC4KCkNjOiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4KU2ln
bmVkLW9mZi1ieTogTHVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+Ci0t
LQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYyB8IDQgKysrKwogZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCAgICAgICAgICB8IDMgKysrCiAyIGZpbGVzIGNo
YW5nZWQsIDcgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZGRpLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2RkaS5jCmluZGV4IDI4MTU5NGJjYmZhZS4uMzJkOWM3NGM1ODM4IDEwMDY0NAotLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jCisrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMKQEAgLTE5MDUsNiArMTkwNSwxMCBAQCBpbnRlbF9k
ZGlfdHJhbnNjb2Rlcl9mdW5jX3JlZ192YWxfZ2V0KGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0
YXRlICpjcnRjX3N0YXRlKQogCX0gZWxzZSBpZiAoaW50ZWxfY3J0Y19oYXNfdHlwZShjcnRjX3N0
YXRlLCBJTlRFTF9PVVRQVVRfRFBfTVNUKSkgewogCQl0ZW1wIHw9IFRSQU5TX0RESV9NT0RFX1NF
TEVDVF9EUF9NU1Q7CiAJCXRlbXAgfD0gRERJX1BPUlRfV0lEVEgoY3J0Y19zdGF0ZS0+bGFuZV9j
b3VudCk7CisKKwkJaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0gMTIpCisJCQl0ZW1wIHw9IFRS
QU5TX0RESV9NU1RfVFJBTlNQT1JUX1NFTEVDVCgKKwkJCQljcnRjX3N0YXRlLT5jcHVfdHJhbnNj
b2Rlcik7CiAJfSBlbHNlIHsKIAkJdGVtcCB8PSBUUkFOU19ERElfTU9ERV9TRUxFQ1RfRFBfU1NU
OwogCQl0ZW1wIHw9IERESV9QT1JUX1dJRFRIKGNydGNfc3RhdGUtPmxhbmVfY291bnQpOwpkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfcmVnLmgKaW5kZXggZGVlMzE2OGVmZDg2Li5lMDhjNGVhM2I3NDcgMTAwNjQ0
Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9yZWcuaApAQCAtOTU1MCw2ICs5NTUwLDkgQEAgZW51bSBza2xfcG93ZXJf
Z2F0ZSB7CiAjZGVmaW5lICBUUkFOU19ERElfRURQX0lOUFVUX0FfT05PRkYJKDQgPDwgMTIpCiAj
ZGVmaW5lICBUUkFOU19ERElfRURQX0lOUFVUX0JfT05PRkYJKDUgPDwgMTIpCiAjZGVmaW5lICBU
UkFOU19ERElfRURQX0lOUFVUX0NfT05PRkYJKDYgPDwgMTIpCisjZGVmaW5lICBUUkFOU19ERElf
TVNUX1RSQU5TUE9SVF9TRUxFQ1RfU0hJRlQJMTAKKyNkZWZpbmUgIFRSQU5TX0RESV9NU1RfVFJB
TlNQT1JUX1NFTEVDVF9NQVNLCVJFR19HRU5NQVNLKDEyLCAxMCkKKyNkZWZpbmUgIFRSQU5TX0RE
SV9NU1RfVFJBTlNQT1JUX1NFTEVDVCh0cmFucykJKCh0cmFucykgPDwgMTApCiAjZGVmaW5lICBU
UkFOU19ERElfSERDUF9TSUdOQUxMSU5HCSgxIDw8IDkpCiAjZGVmaW5lICBUUkFOU19ERElfRFBf
VkNfUEFZTE9BRF9BTExPQwkoMSA8PCA4KQogI2RlZmluZSAgVFJBTlNfRERJX0hETUlfU0NSQU1C
TEVSX0NUU19FTkFCTEUgKDEgPDwgNykKLS0gCjIuMjMuMAoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
