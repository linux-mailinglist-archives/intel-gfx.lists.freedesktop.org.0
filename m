Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F2AF1101A81
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Nov 2019 08:51:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 718546E8BE;
	Tue, 19 Nov 2019 07:51:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F3DA96EA37
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Nov 2019 07:51:01 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Nov 2019 23:51:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,322,1569308400"; d="scan'208";a="237236495"
Received: from vandita-desktop.iind.intel.com ([10.223.74.218])
 by fmsmga002.fm.intel.com with ESMTP; 18 Nov 2019 23:51:00 -0800
From: Vandita Kulkarni <vandita.kulkarni@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 19 Nov 2019 12:50:04 +0530
Message-Id: <20191119072004.4093-1-vandita.kulkarni@intel.com>
X-Mailer: git-send-email 2.21.0.5.gaeb582a
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/dsi: Do not read the transcoder
 register.
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

QXMgcGVyIHRoZSBCc3BlYywgcG9ydCBtYXBwaW5nIGlzIGZpeGVkIGZvciBtaXBpIGRzaS4KCnYy
OiBSZXVzZSB0aGUgZXhpc3RpbmcgZnVuY3Rpb24gKEphbmkpCgpTaWduZWQtb2ZmLWJ5OiBWYW5k
aXRhIEt1bGthcm5pIDx2YW5kaXRhLmt1bGthcm5pQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyB8IDE3ICsrKysrKysrKysrLS0tLS0t
CiAxIGZpbGUgY2hhbmdlZCwgMTEgaW5zZXJ0aW9ucygrKSwgNiBkZWxldGlvbnMoLSkKCmRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCmluZGV4IDIzZjAwYTY1
MTczOC4uZGNjYjk0YjI0ZDE0IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2Rpc3BsYXkuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2Rpc3BsYXkuYwpAQCAtMTA1NzcsMTYgKzEwNTc3LDIxIEBAIHN0YXRpYyB2b2lkIGhhc3dl
bGxfZ2V0X2RkaV9wb3J0X3N0YXRlKHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjLAogCQkJCSAgICAg
ICBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqcGlwZV9jb25maWcpCiB7CiAJc3RydWN0IGRybV9p
OTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShjcnRjLT5iYXNlLmRldik7CisJZW51bSB0
cmFuc2NvZGVyIGNwdV90cmFuc2NvZGVyID0gcGlwZV9jb25maWctPmNwdV90cmFuc2NvZGVyOwog
CXN0cnVjdCBpbnRlbF9zaGFyZWRfZHBsbCAqcGxsOwogCWVudW0gcG9ydCBwb3J0OwogCXUzMiB0
bXA7CiAKLQl0bXAgPSBJOTE1X1JFQUQoVFJBTlNfRERJX0ZVTkNfQ1RMKHBpcGVfY29uZmlnLT5j
cHVfdHJhbnNjb2RlcikpOwotCi0JaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0gMTIpCi0JCXBv
cnQgPSBUR0xfVFJBTlNfRERJX0ZVTkNfQ1RMX1ZBTF9UT19QT1JUKHRtcCk7Ci0JZWxzZQotCQlw
b3J0ID0gVFJBTlNfRERJX0ZVTkNfQ1RMX1ZBTF9UT19QT1JUKHRtcCk7CisJaWYgKHRyYW5zY29k
ZXJfaXNfZHNpKGNwdV90cmFuc2NvZGVyKSkgeworCQlwb3J0ID0gKGNwdV90cmFuc2NvZGVyID09
IFRSQU5TQ09ERVJfRFNJX0EpID8KKwkJCQkJCVBPUlRfQSA6IFBPUlRfQjsKKwl9IGVsc2Ugewor
CQl0bXAgPSBJOTE1X1JFQUQoVFJBTlNfRERJX0ZVTkNfQ1RMKGNwdV90cmFuc2NvZGVyKSk7CisJ
CWlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDEyKQorCQkJcG9ydCA9IFRHTF9UUkFOU19ERElf
RlVOQ19DVExfVkFMX1RPX1BPUlQodG1wKTsKKwkJZWxzZQorCQkJcG9ydCA9IFRSQU5TX0RESV9G
VU5DX0NUTF9WQUxfVE9fUE9SVCh0bXApOworCX0KIAogCWlmIChJTlRFTF9HRU4oZGV2X3ByaXYp
ID49IDExKQogCQlpY2VsYWtlX2dldF9kZGlfcGxsKGRldl9wcml2LCBwb3J0LCBwaXBlX2NvbmZp
Zyk7Ci0tIAoyLjIxLjAuNS5nYWViNTgyYQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4
