Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 98DCB1148FE
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Dec 2019 23:02:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD5666E17A;
	Thu,  5 Dec 2019 22:02:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E7856E17A
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Dec 2019 22:02:45 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Dec 2019 14:02:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,282,1571727600"; d="scan'208";a="243411332"
Received: from dceraolo-linux.fm.intel.com ([10.1.27.145])
 by fmsmga002.fm.intel.com with ESMTP; 05 Dec 2019 14:02:45 -0800
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  5 Dec 2019 14:02:39 -0800
Message-Id: <20191205220243.27403-1-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 1/5] drm/i915/guc: Drop leftover preemption
 code
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

UmVtb3ZlIHVudXNlZCBlbnVtcyBhbmQgY3R4X3NhdmVfcmVzdG9yZV9kaXNhYmxlZCgpIGZ1bmN0
aW9uLCBsZWZ0b3Zlcgpmcm9tIHRoZSBsZWdhY3kgcHJlZW1wdGlvbiByZW1vdmFsLgoKU2lnbmVk
LW9mZi1ieTogRGFuaWVsZSBDZXJhb2xvIFNwdXJpbyA8ZGFuaWVsZS5jZXJhb2xvc3B1cmlvQGlu
dGVsLmNvbT4KQ2M6IE1pY2hhbCBXYWpkZWN6a28gPG1pY2hhbC53YWpkZWN6a29AaW50ZWwuY29t
PgpDYzogSm9obiBIYXJyaXNvbiA8Sm9obi5DLkhhcnJpc29uQEludGVsLmNvbT4KQ2M6IE1hdHRo
ZXcgQnJvc3QgPG1hdHRoZXcuYnJvc3RAaW50ZWwuY29tPgpSZXZpZXdlZC1ieTogQ2hyaXMgV2ls
c29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Ci0tLQogLi4uL2dwdS9kcm0vaTkxNS9ndC91
Yy9pbnRlbF9ndWNfc3VibWlzc2lvbi5jIHwgMjIgLS0tLS0tLS0tLS0tLS0tLS0tLQogMSBmaWxl
IGNoYW5nZWQsIDIyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L3VjL2ludGVsX2d1Y19zdWJtaXNzaW9uLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC91Yy9pbnRlbF9ndWNfc3VibWlzc2lvbi5jCmluZGV4IDZmOTRhZjdhZDFkZS4uMTk2Yzc3N2Fl
NWZiIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9ndWNfc3Vi
bWlzc2lvbi5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2d1Y19zdWJt
aXNzaW9uLmMKQEAgLTE4LDE1ICsxOCw2IEBACiAjaW5jbHVkZSAiaTkxNV9kcnYuaCIKICNpbmNs
dWRlICJpOTE1X3RyYWNlLmgiCiAKLWVudW0gewotCUdVQ19QUkVFTVBUX05PTkUgPSAwLAotCUdV
Q19QUkVFTVBUX0lOUFJPR1JFU1MsCi0JR1VDX1BSRUVNUFRfRklOSVNIRUQsCi19OwotI2RlZmlu
ZSBHVUNfUFJFRU1QVF9CUkVBRENSVU1CX0RXT1JEUwkweDgKLSNkZWZpbmUgR1VDX1BSRUVNUFRf
QlJFQURDUlVNQl9CWVRFUwlcCi0JKHNpemVvZih1MzIpICogR1VDX1BSRUVNUFRfQlJFQURDUlVN
Ql9EV09SRFMpCi0KIC8qKgogICogRE9DOiBHdUMtYmFzZWQgY29tbWFuZCBzdWJtaXNzaW9uCiAg
KgpAQCAtODg0LDE5ICs4NzUsNiBAQCBzdGF0aWMgdm9pZCBndWNfY2xpZW50X2ZyZWUoc3RydWN0
IGludGVsX2d1Y19jbGllbnQgKmNsaWVudCkKIAlrZnJlZShjbGllbnQpOwogfQogCi1zdGF0aWMg
aW5saW5lIGJvb2wgY3R4X3NhdmVfcmVzdG9yZV9kaXNhYmxlZChzdHJ1Y3QgaW50ZWxfY29udGV4
dCAqY2UpCi17Ci0JdTMyIHNyID0gY2UtPmxyY19yZWdfc3RhdGVbQ1RYX0NPTlRFWFRfQ09OVFJP
TCArIDFdOwotCi0jZGVmaW5lIFNSX0RJU0FCTEVEIFwKLQlfTUFTS0VEX0JJVF9FTkFCTEUoQ1RY
X0NUUkxfRU5HSU5FX0NUWF9SRVNUT1JFX0lOSElCSVQgfCBcCi0JCQkgICBDVFhfQ1RSTF9FTkdJ
TkVfQ1RYX1NBVkVfSU5ISUJJVCkKLQotCXJldHVybiAoc3IgJiBTUl9ESVNBQkxFRCkgPT0gU1Jf
RElTQUJMRUQ7Ci0KLSN1bmRlZiBTUl9ESVNBQkxFRAotfQotCiBzdGF0aWMgaW50IGd1Y19jbGll
bnRzX2NyZWF0ZShzdHJ1Y3QgaW50ZWxfZ3VjICpndWMpCiB7CiAJc3RydWN0IGludGVsX2d1Y19j
bGllbnQgKmNsaWVudDsKLS0gCjIuMjMuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4
