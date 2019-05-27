Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ABFD72B6CD
	for <lists+intel-gfx@lfdr.de>; Mon, 27 May 2019 15:46:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 164826E204;
	Mon, 27 May 2019 13:46:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8347C6E204
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 May 2019 13:46:02 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 May 2019 06:46:02 -0700
X-ExtLoop1: 1
Received: from genxfsim-shark-bay-client-platform.iind.intel.com
 ([10.223.74.155])
 by orsmga001.jf.intel.com with ESMTP; 27 May 2019 06:46:00 -0700
From: Swati Sharma <swati2.sharma@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 27 May 2019 19:11:59 +0530
Message-Id: <1558964522-7829-10-git-send-email-swati2.sharma@intel.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1558964522-7829-1-git-send-email-swati2.sharma@intel.com>
References: <1558964522-7829-1-git-send-email-swati2.sharma@intel.com>
Subject: [Intel-gfx] [v7][PATCH 09/12] drm/i915: Extract bdw_read_luts()
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
Cc: jani.nikula@intel.com, ankit.k.nautiyal@intel.com
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SW4gdGhpcyBwYXRjaCwgZ2FtbWEgYW5kIGRlZ2FtbWEgaHcgYmxvYnMgYXJlIGNyZWF0ZWQgZm9y
IEJEVy4KCnY0OiAtTm8gbmVlZCB0byBpbml0aWFsaXplICpibG9iIFtKYW5pXQogICAgLVJlbW92
ZWQgcmlnaHQgc2hpZnRzIFtKYW5pXQogICAgLURyb3BwZWQgZGV2IGxvY2FsIHZhciBbSmFuaV0K
djU6IC1SZXR1cm5lZCBibG9iIGluc3RlYWQgb2YgYXNzaWduaW5nIGl0IGludGVybmFsbHkgd2l0
aGluIHRoZQogICAgIGZ1bmN0aW9uIFtWaWxsZV0KICAgIC1SZW5hbWVkIGJkd19nZXRfY29sb3Jf
Y29uZmlnKCkgdG8gYmR3X3JlYWRfbHV0cygpIFtWaWxsZV0KClNpZ25lZC1vZmYtYnk6IFN3YXRp
IFNoYXJtYSA8c3dhdGkyLnNoYXJtYUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5
MTUvaW50ZWxfY29sb3IuYyB8IDE1ICsrKysrKysrKysrKystLQogMSBmaWxlIGNoYW5nZWQsIDEz
IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaW50ZWxfY29sb3IuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2NvbG9y
LmMKaW5kZXggNGU1OGNkMS4uY2U2ZGM1ZSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaW50ZWxfY29sb3IuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9jb2xvci5j
CkBAIC0xNTk3LDYgKzE1OTcsMTYgQEAgc3RhdGljIHZvaWQgZ2xrX3JlYWRfbHV0cyhzdHJ1Y3Qg
aW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkKIAkJY3J0Y19zdGF0ZS0+YmFzZS5nYW1tYV9s
dXQgPSBiZHdfcmVhZF9sdXRfMTAoY3J0Y19zdGF0ZSwgUEFMX1BSRUNfSU5ERVhfVkFMVUUoMCkp
OwogfQogCitzdGF0aWMgdm9pZCBiZHdfcmVhZF9sdXRzKHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRl
ICpjcnRjX3N0YXRlKQoreworCWlmIChjcnRjX3N0YXRlLT5nYW1tYV9tb2RlID09IEdBTU1BX01P
REVfTU9ERV84QklUKQorCQljcnRjX3N0YXRlLT5iYXNlLmdhbW1hX2x1dCA9IGk5eHhfcmVhZF9s
dXRfOChjcnRjX3N0YXRlKTsKKwllbHNlIGlmIChjcnRjX3N0YXRlLT5nYW1tYV9tb2RlID09IEdB
TU1BX01PREVfTU9ERV9TUExJVCkKKwkJY3J0Y19zdGF0ZS0+YmFzZS5nYW1tYV9sdXQgPSBiZHdf
cmVhZF9sdXRfMTAoY3J0Y19zdGF0ZSwgUEFMX1BSRUNfSU5ERVhfVkFMVUUoNTEyKSk7CisJZWxz
ZQorCQljcnRjX3N0YXRlLT5iYXNlLmdhbW1hX2x1dCA9IGJkd19yZWFkX2x1dF8xMChjcnRjX3N0
YXRlLCBQQUxfUFJFQ19JTkRFWF9WQUxVRSgwKSk7Cit9CisKIHZvaWQgaW50ZWxfY29sb3JfaW5p
dChzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YykKIHsKIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAq
ZGV2X3ByaXYgPSB0b19pOTE1KGNydGMtPmJhc2UuZGV2KTsKQEAgLTE2NDQsOSArMTY1NCwxMCBA
QCB2b2lkIGludGVsX2NvbG9yX2luaXQoc3RydWN0IGludGVsX2NydGMgKmNydGMpCiAJCX0gZWxz
ZSBpZiAoSVNfQ0FOTk9OTEFLRShkZXZfcHJpdikgfHwgSVNfR0VNSU5JTEFLRShkZXZfcHJpdikp
IHsKIAkJCWRldl9wcml2LT5kaXNwbGF5LmxvYWRfbHV0cyA9IGdsa19sb2FkX2x1dHM7CiAJCQlk
ZXZfcHJpdi0+ZGlzcGxheS5yZWFkX2x1dHMgPSBnbGtfcmVhZF9sdXRzOwotCQl9Ci0JCWVsc2Ug
aWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0gOCkKKwkJfSBlbHNlIGlmIChJTlRFTF9HRU4oZGV2
X3ByaXYpID49IDgpIHsKIAkJCWRldl9wcml2LT5kaXNwbGF5LmxvYWRfbHV0cyA9IGJkd19sb2Fk
X2x1dHM7CisJCQlkZXZfcHJpdi0+ZGlzcGxheS5yZWFkX2x1dHMgPSBiZHdfcmVhZF9sdXRzOwor
CQl9CiAJCWVsc2UgaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0gNykKIAkJCWRldl9wcml2LT5k
aXNwbGF5LmxvYWRfbHV0cyA9IGl2Yl9sb2FkX2x1dHM7CiAJCWVsc2UKLS0gCjEuOS4xCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
