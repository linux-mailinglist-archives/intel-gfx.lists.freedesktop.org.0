Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 761202B6CB
	for <lists+intel-gfx@lfdr.de>; Mon, 27 May 2019 15:46:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 793536E20B;
	Mon, 27 May 2019 13:45:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A08CB6E204
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 May 2019 13:45:57 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 May 2019 06:45:57 -0700
X-ExtLoop1: 1
Received: from genxfsim-shark-bay-client-platform.iind.intel.com
 ([10.223.74.155])
 by orsmga001.jf.intel.com with ESMTP; 27 May 2019 06:45:55 -0700
From: Swati Sharma <swati2.sharma@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 27 May 2019 19:11:57 +0530
Message-Id: <1558964522-7829-8-git-send-email-swati2.sharma@intel.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1558964522-7829-1-git-send-email-swati2.sharma@intel.com>
References: <1558964522-7829-1-git-send-email-swati2.sharma@intel.com>
Subject: [Intel-gfx] [v7][PATCH 07/12] drm/i915: Extract icl_read_luts()
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

SW4gdGhpcyBwYXRjaCwgZ2FtbWEgaHcgYmxvYnMgYXJlIGNyZWF0ZWQgZm9yIElDTC4KCnY0OiAt
Tm8gbmVlZCB0byBpbml0aWFsaXplICpibG9iIFtKYW5pXQogICAgLVJlbW92ZWQgcmlnaHQgc2hp
ZnRzIFtKYW5pXQogICAgLURyb3BwZWQgZGV2IGxvY2FsIHZhciBbSmFuaV0KdjU6IC1SZXR1cm5l
ZCBibG9iIGluc3RlYWQgb2YgYXNzaWduaW5nIGl0IGludGVybmFsbHkgd2l0aGluIHRoZQogICAg
IGZ1bmN0aW9uIFtWaWxsZV0KICAgIC1SZW5hbWVkIGljbF9nZXRfY29sb3JfY29uZmlnKCkgdG8g
aWNsX3JlYWRfbHV0cygpIFtWaWxsZV0KICAgIC1SZW5hbWVkIGJkd19nZXRfZ2FtbWFfY29uZmln
KCkgdG8gYmR3X3JlYWRfbHV0XzEwKCkgW1ZpbGxlXQoKU2lnbmVkLW9mZi1ieTogU3dhdGkgU2hh
cm1hIDxzd2F0aTIuc2hhcm1hQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X3JlZy5oICAgIHwgIDMgKysrCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9jb2xvci5j
IHwgNDkgKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKy0KIDIgZmlsZXMgY2hh
bmdlZCwgNTEgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3Jl
Zy5oCmluZGV4IDc5ODhmYTUuLjI0OTI5NmIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfcmVnLmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaApAQCAt
MTAxMjQsNiArMTAxMjQsOSBAQCBlbnVtIHNrbF9wb3dlcl9nYXRlIHsKICNkZWZpbmUgX1BBTF9Q
UkVDX0RBVEFfQQkweDRBNDA0CiAjZGVmaW5lIF9QQUxfUFJFQ19EQVRBX0IJMHg0QUMwNAogI2Rl
ZmluZSBfUEFMX1BSRUNfREFUQV9DCTB4NEI0MDQKKyNkZWZpbmUgICBQUkVDX1BBTF9EQVRBX1JF
RF9NQVNLCVJFR19HRU5NQVNLKDI5LCAyMCkKKyNkZWZpbmUgICBQUkVDX1BBTF9EQVRBX0dSRUVO
X01BU0sJUkVHX0dFTk1BU0soMTksIDEwKQorI2RlZmluZSAgIFBSRUNfUEFMX0RBVEFfQkxVRV9N
QVNLCVJFR19HRU5NQVNLKDksIDApCiAjZGVmaW5lIF9QQUxfUFJFQ19HQ19NQVhfQQkweDRBNDEw
CiAjZGVmaW5lIF9QQUxfUFJFQ19HQ19NQVhfQgkweDRBQzEwCiAjZGVmaW5lIF9QQUxfUFJFQ19H
Q19NQVhfQwkweDRCNDEwCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9j
b2xvci5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfY29sb3IuYwppbmRleCAwYjkxZTIy
Li5mYThlODk1IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9jb2xvci5j
CisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2NvbG9yLmMKQEAgLTE1NDQsNiArMTU0
NCw1MSBAQCBzdGF0aWMgdm9pZCBpOTY1X3JlYWRfbHV0cyhzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0
ZSAqY3J0Y19zdGF0ZSkKIAkJY3J0Y19zdGF0ZS0+YmFzZS5nYW1tYV9sdXQgPSBpOTY1X3JlYWRf
Z2FtbWFfbHV0XzEwcDYoY3J0Y19zdGF0ZSk7CiB9CiAKK3N0YXRpYyBzdHJ1Y3QgZHJtX3Byb3Bl
cnR5X2Jsb2IgKgorYmR3X3JlYWRfbHV0XzEwKHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRj
X3N0YXRlLAorCQkgICAgICB1MzIgcHJlY19pbmRleCkKK3sKKwlzdHJ1Y3QgaW50ZWxfY3J0YyAq
Y3J0YyA9IHRvX2ludGVsX2NydGMoY3J0Y19zdGF0ZS0+YmFzZS5jcnRjKTsKKwlzdHJ1Y3QgZHJt
X2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGNydGMtPmJhc2UuZGV2KTsKKwlpbnQg
aHdfbHV0X3NpemUgPSBpdmJfbHV0XzEwX3NpemUocHJlY19pbmRleCk7CisJZW51bSBwaXBlIHBp
cGUgPSBjcnRjLT5waXBlOworCXN0cnVjdCBkcm1fcHJvcGVydHlfYmxvYiAqYmxvYjsKKwlzdHJ1
Y3QgZHJtX2NvbG9yX2x1dCAqYmxvYl9kYXRhOworCXUzMiBpLCB2YWw7CisKKwlJOTE1X1dSSVRF
KFBSRUNfUEFMX0lOREVYKHBpcGUpLCBwcmVjX2luZGV4IHwKKwkJICAgUEFMX1BSRUNfQVVUT19J
TkNSRU1FTlQpOworCisJYmxvYiA9IGRybV9wcm9wZXJ0eV9jcmVhdGVfYmxvYigmZGV2X3ByaXYt
PmRybSwKKwkJCQkJc2l6ZW9mKHN0cnVjdCBkcm1fY29sb3JfbHV0KSAqIGh3X2x1dF9zaXplLAor
CQkJCQlOVUxMKTsKKwlpZiAoSVNfRVJSKGJsb2IpKQorCQlyZXR1cm4gTlVMTDsKKworCWJsb2Jf
ZGF0YSA9IGJsb2ItPmRhdGE7CisKKwlmb3IgKGkgPSAwOyBpIDwgaHdfbHV0X3NpemU7IGkrKykg
eworCQl2YWwgPSBJOTE1X1JFQUQoUFJFQ19QQUxfREFUQShwaXBlKSk7CisKKwkJYmxvYl9kYXRh
W2ldLnJlZCA9IGludGVsX2NvbG9yX2x1dF9wYWNrKFJFR19GSUVMRF9HRVQoUFJFQ19QQUxfREFU
QV9SRURfTUFTSywgdmFsKSwgMTApOworCQlibG9iX2RhdGFbaV0uZ3JlZW4gPSBpbnRlbF9jb2xv
cl9sdXRfcGFjayhSRUdfRklFTERfR0VUKFBSRUNfUEFMX0RBVEFfR1JFRU5fTUFTSywgdmFsKSwg
MTApOworCQlibG9iX2RhdGFbaV0uYmx1ZSA9IGludGVsX2NvbG9yX2x1dF9wYWNrKFJFR19GSUVM
RF9HRVQoUFJFQ19QQUxfREFUQV9CTFVFX01BU0ssIHZhbCksIDEwKTsKKwl9CisKKwlJOTE1X1dS
SVRFKFBSRUNfUEFMX0lOREVYKHBpcGUpLCAwKTsKKworCXJldHVybiBibG9iOworfQorCitzdGF0
aWMgdm9pZCBpY2xfcmVhZF9sdXRzKHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRl
KQoreworCWlmICgoY3J0Y19zdGF0ZS0+Z2FtbWFfbW9kZSAmIEdBTU1BX01PREVfTU9ERV9NQVNL
KSA9PQorCSAgICBHQU1NQV9NT0RFX01PREVfOEJJVCkKKwkJY3J0Y19zdGF0ZS0+YmFzZS5nYW1t
YV9sdXQgPSBpOXh4X3JlYWRfbHV0XzgoY3J0Y19zdGF0ZSk7CisJZWxzZQorCQljcnRjX3N0YXRl
LT5iYXNlLmdhbW1hX2x1dCA9IGJkd19yZWFkX2x1dF8xMChjcnRjX3N0YXRlLCBQQUxfUFJFQ19J
TkRFWF9WQUxVRSgwKSk7Cit9CisKIHZvaWQgaW50ZWxfY29sb3JfaW5pdChzdHJ1Y3QgaW50ZWxf
Y3J0YyAqY3J0YykKIHsKIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19p
OTE1KGNydGMtPmJhc2UuZGV2KTsKQEAgLTE1ODUsOCArMTYzMCwxMCBAQCB2b2lkIGludGVsX2Nv
bG9yX2luaXQoc3RydWN0IGludGVsX2NydGMgKmNydGMpCiAJCWVsc2UKIAkJCWRldl9wcml2LT5k
aXNwbGF5LmNvbG9yX2NvbW1pdCA9IGlsa19jb2xvcl9jb21taXQ7CiAKLQkJaWYgKElOVEVMX0dF
TihkZXZfcHJpdikgPj0gMTEpCisJCWlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDExKSB7CiAJ
CQlkZXZfcHJpdi0+ZGlzcGxheS5sb2FkX2x1dHMgPSBpY2xfbG9hZF9sdXRzOworCQkJZGV2X3By
aXYtPmRpc3BsYXkucmVhZF9sdXRzID0gaWNsX3JlYWRfbHV0czsKKwkJfQogCQllbHNlIGlmIChJ
U19DQU5OT05MQUtFKGRldl9wcml2KSB8fCBJU19HRU1JTklMQUtFKGRldl9wcml2KSkKIAkJCWRl
dl9wcml2LT5kaXNwbGF5LmxvYWRfbHV0cyA9IGdsa19sb2FkX2x1dHM7CiAJCWVsc2UgaWYgKElO
VEVMX0dFTihkZXZfcHJpdikgPj0gOCkKLS0gCjEuOS4xCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZng=
