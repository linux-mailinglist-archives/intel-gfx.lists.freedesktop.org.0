Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D1AAED17F2
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Oct 2019 21:05:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 89EE56EA2B;
	Wed,  9 Oct 2019 19:05:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E53756EA2B
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Oct 2019 19:05:16 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Oct 2019 12:05:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,277,1566889200"; d="scan'208";a="393781271"
Received: from jssummer-xeon.ra.intel.com ([10.23.184.90])
 by fmsmga005.fm.intel.com with ESMTP; 09 Oct 2019 12:05:16 -0700
From: Stuart Summers <stuart.summers@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  9 Oct 2019 12:06:13 -0700
Message-Id: <20191009190613.168376-1-stuart.summers@intel.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Add feature flag for platforms with
 DRAM info
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

UGxhdGZvcm1zIHByaW9yIHRvIGdlbjkgdG8gbm90IHN1cHBseSB0aGlzIGluZm8gdG8gc29mdHdh
cmUuCkluc3RlYWQgb2YgY2hlY2tpbmcgdGhlIHBsYXRmb3JtIGRpcmVjdGx5LCBhZGQgYSBuZXcg
ZmVhdHVyZQpmbGFnLCBIQVNfRFJBTV9JTkZPLCB0byBhbGxvdyB1cyB0byBxdWlja2x5IHRlbGwg
aWYgdGhlIHBsYXRmb3JtCnN1cHBvcnRzIHRoaXMgZmVhdHVyZS4KCnYyOiBGaXggY29tbWl0IG1l
c3NhZ2UgYW5kIGNoYW5nZSBmZWF0dXJlIGZsYWcgbmFtZSB0byBIQVNfRFJBTV9JTkZPCgpTaWdu
ZWQtb2ZmLWJ5OiBTdHVhcnQgU3VtbWVycyA8c3R1YXJ0LnN1bW1lcnNAaW50ZWwuY29tPgotLS0K
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMgICAgICAgICAgfCAyICstCiBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oICAgICAgICAgIHwgMiArKwogZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9wY2kuYyAgICAgICAgICB8IDMgKystCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9p
bnRlbF9kZXZpY2VfaW5mby5oIHwgMSArCiA0IGZpbGVzIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygr
KSwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X2Rydi5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYwppbmRleCBmMDJhMzQ3MjIy
MTcuLmY1NTkwNTU5ZjgyOCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9k
cnYuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jCkBAIC0xMDUzLDcgKzEw
NTMsNyBAQCBpbnRlbF9nZXRfZHJhbV9pbmZvKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZf
cHJpdikKIAkgKi8KIAlkcmFtX2luZm8tPmlzXzE2Z2JfZGltbSA9ICFJU19HRU45X0xQKGRldl9w
cml2KTsKIAotCWlmIChJTlRFTF9HRU4oZGV2X3ByaXYpIDwgOSkKKwlpZiAoIUhBU19EUkFNX0lO
Rk8oZGV2X3ByaXYpKQogCQlyZXR1cm47CiAKIAlpZiAoSVNfR0VOOV9MUChkZXZfcHJpdikpCmRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9kcnYuaAppbmRleCBkMjg0YjA0YzQ5MmIuLmYyZTJkMmE3YjkyNSAxMDA2
NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaAorKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X2Rydi5oCkBAIC0xNzYzLDYgKzE3NjMsOCBAQCBJU19TVUJQTEFURk9S
TShjb25zdCBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwKIAogI2RlZmluZSBIQVNfRFBf
TVNUKGRldl9wcml2KQkoSU5URUxfSU5GTyhkZXZfcHJpdiktPmRpc3BsYXkuaGFzX2RwX21zdCkK
IAorI2RlZmluZSBIQVNfRFJBTV9JTkZPKGRldl9wcml2KQkoSU5URUxfSU5GTyhkZXZfcHJpdikt
Pmhhc19kcmFtX2luZm8pCisKICNkZWZpbmUgSEFTX0RESShkZXZfcHJpdikJCSAoSU5URUxfSU5G
TyhkZXZfcHJpdiktPmRpc3BsYXkuaGFzX2RkaSkKICNkZWZpbmUgSEFTX0ZQR0FfREJHX1VOQ0xB
SU1FRChkZXZfcHJpdikgKElOVEVMX0lORk8oZGV2X3ByaXYpLT5oYXNfZnBnYV9kYmcpCiAjZGVm
aW5lIEhBU19QU1IoZGV2X3ByaXYpCQkgKElOVEVMX0lORk8oZGV2X3ByaXYpLT5kaXNwbGF5Lmhh
c19wc3IpCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BjaS5jIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wY2kuYwppbmRleCAxY2JmMzk5OGIzNjEuLjlkNzM3N2Yy
MTkyNiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wY2kuYworKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BjaS5jCkBAIC02MDEsNyArNjAxLDggQEAgc3RhdGlj
IGNvbnN0IHN0cnVjdCBpbnRlbF9kZXZpY2VfaW5mbyBpbnRlbF9jaGVycnl2aWV3X2luZm8gPSB7
CiAJLmRpc3BsYXkuaGFzX2NzciA9IDEsIFwKIAkuaGFzX2d0X3VjID0gMSwgXAogCS5kaXNwbGF5
Lmhhc19pcGMgPSAxLCBcCi0JLmRkYl9zaXplID0gODk2CisJLmRkYl9zaXplID0gODk2LCBcCisJ
Lmhhc19kcmFtX2luZm8gPSAxCiAKICNkZWZpbmUgU0tMX1BMQVRGT1JNIFwKIAlHRU45X0ZFQVRV
UkVTLCBcCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kZXZpY2VfaW5m
by5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGV2aWNlX2luZm8uaAppbmRleCAwY2Rj
MjQ2NTUzNGIuLjY3YTQ4N2Q5M2NlNCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aW50ZWxfZGV2aWNlX2luZm8uaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kZXZp
Y2VfaW5mby5oCkBAIC0xMDksNiArMTA5LDcgQEAgZW51bSBpbnRlbF9wcGd0dF90eXBlIHsKIAlm
dW5jKHJlcXVpcmVfZm9yY2VfcHJvYmUpOyBcCiAJLyogS2VlcCBoYXNfKiBpbiBhbHBoYWJldGlj
YWwgb3JkZXIgKi8gXAogCWZ1bmMoaGFzXzY0Yml0X3JlbG9jKTsgXAorCWZ1bmMoaGFzX2RyYW1f
aW5mbyk7IFwKIAlmdW5jKGdwdV9yZXNldF9jbG9iYmVyc19kaXNwbGF5KTsgXAogCWZ1bmMoaGFz
X3Jlc2V0X2VuZ2luZSk7IFwKIAlmdW5jKGhhc19mcGdhX2RiZyk7IFwKLS0gCjIuMjIuMAoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
