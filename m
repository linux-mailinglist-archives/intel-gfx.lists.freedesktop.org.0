Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FC86389D3
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Jun 2019 14:08:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 242C289DB2;
	Fri,  7 Jun 2019 12:08:53 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 65D5C89DA7
 for <Intel-gfx@lists.freedesktop.org>; Fri,  7 Jun 2019 12:08:52 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Jun 2019 05:08:52 -0700
X-ExtLoop1: 1
Received: from ssirotki-mobl3.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.251.93.246])
 by fmsmga007.fm.intel.com with ESMTP; 07 Jun 2019 05:08:51 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Fri,  7 Jun 2019 13:08:35 +0100
Message-Id: <20190607120838.20514-10-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190607120838.20514-1-tvrtko.ursulin@linux.intel.com>
References: <20190607120838.20514-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC 09/12] drm/i915: Remove POSTING_READ16
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
Cc: Jani Nikula <jani.nikula@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KCk9ubHkgYSBm
ZXcgY2FsbCBzaXRlcyByZW1haW4gd2hpY2ggaGF2ZSBiZWVuIGNvbnZlcnRlZCB0byB1bmNvcmUg
bW1pbwphY2Nlc3NvcnMgYW5kIHNvIHRoZSBtYWNybyBjYW4gYmUgcmVtb3ZlZC4KCkVOR0lORV9Q
T1NUSU5HX1JFQUQxNiBpcyBhZGRlZCB0byByZXBsYWNlIG9uZSBlbmdpbmUtPm1taW9fYmFzZSBy
ZWxhdGl2ZQpjYWxsIHNpdGUuCgpTaWduZWQtb2ZmLWJ5OiBUdnJ0a28gVXJzdWxpbiA8dHZydGtv
LnVyc3VsaW5AaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2Vu
Z2luZS5oICAgICB8ICAxICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3JpbmdidWZm
ZXIuYyB8ICA4ICsrKystLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oICAgICAg
ICAgICAgfCAgMSAtCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jICAgICAgICAgICAg
fCAxMSArKysrKystLS0tLQogNCBmaWxlcyBjaGFuZ2VkLCAxMSBpbnNlcnRpb25zKCspLCAxMCBk
ZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9l
bmdpbmUuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZS5oCmluZGV4IDIw
MWJiZDJhNGZhZi4uMTQzOWZhNDA5M2FjIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC9pbnRlbF9lbmdpbmUuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9l
bmdpbmUuaApAQCAtNTIsNiArNTIsNyBAQCBzdHJ1Y3QgZHJtX3ByaW50ZXI7CiAjZGVmaW5lIEVO
R0lORV9SRUFEKC4uLikJX19FTkdJTkVfUkVBRF9PUChyZWFkLCBfX1ZBX0FSR1NfXykKICNkZWZp
bmUgRU5HSU5FX1JFQURfRlcoLi4uKQlfX0VOR0lORV9SRUFEX09QKHJlYWRfZncsIF9fVkFfQVJH
U19fKQogI2RlZmluZSBFTkdJTkVfUE9TVElOR19SRUFEKC4uLikgX19FTkdJTkVfUkVBRF9PUChw
b3N0aW5nX3JlYWQsIF9fVkFfQVJHU19fKQorI2RlZmluZSBFTkdJTkVfUE9TVElOR19SRUFEMTYo
Li4uKSBfX0VOR0lORV9SRUFEX09QKHBvc3RpbmdfcmVhZDE2LCBfX1ZBX0FSR1NfXykKIAogI2Rl
ZmluZSBFTkdJTkVfUkVBRDY0KGVuZ2luZV9fLCBsb3dlcl9yZWdfXywgdXBwZXJfcmVnX18pIFwK
IAlfX0VOR0lORV9SRUdfT1AocmVhZDY0XzJ4MzIsIChlbmdpbmVfXyksIFwKZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3JpbmdidWZmZXIuYyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L2ludGVsX3JpbmdidWZmZXIuYwppbmRleCBmZjU4ZDY1OGUzZTIuLjAzNzNh
ZjY0OGU3MiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmluZ2J1
ZmZlci5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3JpbmdidWZmZXIuYwpA
QCAtOTc2LDExICs5NzYsMTEgQEAgaTl4eF9pcnFfZGlzYWJsZShzdHJ1Y3QgaW50ZWxfZW5naW5l
X2NzICplbmdpbmUpCiBzdGF0aWMgdm9pZAogaTh4eF9pcnFfZW5hYmxlKHN0cnVjdCBpbnRlbF9l
bmdpbmVfY3MgKmVuZ2luZSkKIHsKLQlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYg
PSBlbmdpbmUtPmk5MTU7CisJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSBlbmdpbmUt
Pmk5MTU7CiAKLQlkZXZfcHJpdi0+aXJxX21hc2sgJj0gfmVuZ2luZS0+aXJxX2VuYWJsZV9tYXNr
OwotCUk5MTVfV1JJVEUxNihHRU4yX0lNUiwgZGV2X3ByaXYtPmlycV9tYXNrKTsKLQlQT1NUSU5H
X1JFQUQxNihSSU5HX0lNUihlbmdpbmUtPm1taW9fYmFzZSkpOworCWk5MTUtPmlycV9tYXNrICY9
IH5lbmdpbmUtPmlycV9lbmFibGVfbWFzazsKKwlpbnRlbF91bmNvcmVfd3JpdGUxNigmaTkxNS0+
dW5jb3JlLCBHRU4yX0lNUiwgaTkxNS0+aXJxX21hc2spOworCUVOR0lORV9QT1NUSU5HX1JFQUQx
NihlbmdpbmUsIFJJTkdfSU1SKTsKIH0KIAogc3RhdGljIHZvaWQKZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Ry
di5oCmluZGV4IDlkY2VjOTM0MjZkZS4uMmZjZjZlYjhhYjNmIDEwMDY0NAotLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
ZHJ2LmgKQEAgLTI4NjEsNyArMjg2MSw2IEBAIGV4dGVybiB2b2lkIGludGVsX2Rpc3BsYXlfcHJp
bnRfZXJyb3Jfc3RhdGUoc3RydWN0IGRybV9pOTE1X2Vycm9yX3N0YXRlX2J1ZiAqZSwKICNkZWZp
bmUgSTkxNV9XUklURV9OT1RSQUNFKHJlZ19fLCB2YWxfXykgX19JOTE1X1JFR19PUCh3cml0ZV9u
b3RyYWNlLCBkZXZfcHJpdiwgKHJlZ19fKSwgKHZhbF9fKSkKIAogI2RlZmluZSBQT1NUSU5HX1JF
QUQocmVnX18pCV9fSTkxNV9SRUdfT1AocG9zdGluZ19yZWFkLCBkZXZfcHJpdiwgKHJlZ19fKSkK
LSNkZWZpbmUgUE9TVElOR19SRUFEMTYocmVnX18pCV9fSTkxNV9SRUdfT1AocG9zdGluZ19yZWFk
MTYsIGRldl9wcml2LCAocmVnX18pKQogCiAvKiBUaGVzZSBhcmUgdW50cmFjZWQgbW1pby1hY2Nl
c3NvcnMgdGhhdCBhcmUgb25seSB2YWxpZCB0byBiZSB1c2VkIGluc2lkZQogICogY3JpdGljYWwg
c2VjdGlvbnMsIHN1Y2ggYXMgaW5zaWRlIElSUSBoYW5kbGVycywgd2hlcmUgZm9yY2V3YWtlIGlz
IGV4cGxpY2l0bHkKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmMg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jCmluZGV4IDg0NTg4ZmY4NzMyZi4uNWE2
Njc5ZTJiNmVlIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jCisr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmMKQEAgLTY0MDYsMTMgKzY0MDYsMTQg
QEAgdm9pZCBpbnRlbF9pbml0X2lwYyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYp
CiAgKi8KIERFRklORV9TUElOTE9DSyhtY2hkZXZfbG9jayk7CiAKLWJvb2wgaXJvbmxha2Vfc2V0
X2RycHMoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LCB1OCB2YWwpCitib29sIGly
b25sYWtlX3NldF9kcnBzKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LCB1OCB2YWwpCiB7
CisJc3RydWN0IGludGVsX3VuY29yZSAqdW5jb3JlID0gJmk5MTUtPnVuY29yZTsKIAl1MTYgcmd2
c3djdGw7CiAKIAlsb2NrZGVwX2Fzc2VydF9oZWxkKCZtY2hkZXZfbG9jayk7CiAKLQlyZ3Zzd2N0
bCA9IEk5MTVfUkVBRDE2KE1FTVNXQ1RMKTsKKwlyZ3Zzd2N0bCA9IGludGVsX3VuY29yZV9yZWFk
MTYodW5jb3JlLCBNRU1TV0NUTCk7CiAJaWYgKHJndnN3Y3RsICYgTUVNQ1RMX0NNRF9TVFMpIHsK
IAkJRFJNX0RFQlVHKCJncHUgYnVzeSwgUkNTIGNoYW5nZSByZWplY3RlZFxuIik7CiAJCXJldHVy
biBmYWxzZTsgLyogc3RpbGwgYnVzeSB3aXRoIGFub3RoZXIgY29tbWFuZCAqLwpAQCAtNjQyMCwx
MSArNjQyMSwxMSBAQCBib29sIGlyb25sYWtlX3NldF9kcnBzKHN0cnVjdCBkcm1faTkxNV9wcml2
YXRlICpkZXZfcHJpdiwgdTggdmFsKQogCiAJcmd2c3djdGwgPSAoTUVNQ1RMX0NNRF9DSEZSRVEg
PDwgTUVNQ1RMX0NNRF9TSElGVCkgfAogCQkodmFsIDw8IE1FTUNUTF9GUkVRX1NISUZUKSB8IE1F
TUNUTF9TRkNBVk07Ci0JSTkxNV9XUklURTE2KE1FTVNXQ1RMLCByZ3Zzd2N0bCk7Ci0JUE9TVElO
R19SRUFEMTYoTUVNU1dDVEwpOworCWludGVsX3VuY29yZV93cml0ZTE2KHVuY29yZSwgTUVNU1dD
VEwsIHJndnN3Y3RsKTsKKwlpbnRlbF91bmNvcmVfcG9zdGluZ19yZWFkMTYodW5jb3JlLCBNRU1T
V0NUTCk7CiAKIAlyZ3Zzd2N0bCB8PSBNRU1DVExfQ01EX1NUUzsKLQlJOTE1X1dSSVRFMTYoTUVN
U1dDVEwsIHJndnN3Y3RsKTsKKwlpbnRlbF91bmNvcmVfd3JpdGUxNih1bmNvcmUsIE1FTVNXQ1RM
LCByZ3Zzd2N0bCk7CiAKIAlyZXR1cm4gdHJ1ZTsKIH0KLS0gCjIuMjAuMQoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
