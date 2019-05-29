Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BC2BC2D9AC
	for <lists+intel-gfx@lfdr.de>; Wed, 29 May 2019 11:54:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ECB356E0BC;
	Wed, 29 May 2019 09:54:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 258DE6E0AF
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 May 2019 09:54:46 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 May 2019 02:54:46 -0700
X-ExtLoop1: 1
Received: from genxfsim-shark-bay-client-platform.iind.intel.com
 ([10.223.74.155])
 by fmsmga001.fm.intel.com with ESMTP; 29 May 2019 02:54:45 -0700
From: Swati Sharma <swati2.sharma@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 29 May 2019 15:20:58 +0530
Message-Id: <1559123462-7343-9-git-send-email-swati2.sharma@intel.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1559123462-7343-1-git-send-email-swati2.sharma@intel.com>
References: <1559123462-7343-1-git-send-email-swati2.sharma@intel.com>
Subject: [Intel-gfx] [v7][PATCH 08/12] drm/i915: Extract glk_read_luts()
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
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SW4gdGhpcyBwYXRjaCwgZ2FtbWEgYW5kIGRlZ2FtbWEgaHcgYmxvYnMgYXJlIGNyZWF0ZWQgZm9y
IEdMSy4KCnY0OiAtTm8gbmVlZCB0byBpbml0aWFsaXplICpibG9iIFtKYW5pXQogICAgLVJlbW92
ZWQgcmlnaHQgc2hpZnRzIFtKYW5pXQogICAgLURyb3BwZWQgZGV2IGxvY2FsIHZhciBbSmFuaV0K
djU6IC1SZXR1cm5lZCBibG9iIGluc3RlYWQgb2YgYXNzaWduaW5nIGl0IGludGVybmFsbHkgd2l0
aGluIHRoZQogICAgIGZ1bmN0aW9uIFtWaWxsZV0KICAgIC1SZW5hbWVkIGdsa19nZXRfY29sb3Jf
Y29uZmlnKCkgdG8gZ2xrX3JlYWRfbHV0cygpIFtWaWxsZV0KICAgIC1BZGRlZCBkZWdhbW1hIHZh
bGlkYXRpb24gW1ZpbGxlXQoKU2lnbmVkLW9mZi1ieTogU3dhdGkgU2hhcm1hIDxzd2F0aTIuc2hh
cm1hQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9jb2xvci5jIHwg
MTMgKysrKysrKysrKystLQogMSBmaWxlIGNoYW5nZWQsIDExIGluc2VydGlvbnMoKyksIDIgZGVs
ZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfY29sb3Iu
YyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2NvbG9yLmMKaW5kZXggNzI3MWYxYS4uMWNm
ODNjNCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfY29sb3IuYworKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9jb2xvci5jCkBAIC0xNTg3LDYgKzE1ODcsMTQg
QEAgc3RhdGljIHZvaWQgaWNsX3JlYWRfbHV0cyhzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0
Y19zdGF0ZSkKIAkJY3J0Y19zdGF0ZS0+YmFzZS5nYW1tYV9sdXQgPSBiZHdfcmVhZF9sdXRfMTAo
Y3J0Y19zdGF0ZSwgUEFMX1BSRUNfSU5ERVhfVkFMVUUoMCkpOwogfQogCitzdGF0aWMgdm9pZCBn
bGtfcmVhZF9sdXRzKHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQoreworCWlm
IChjcnRjX3N0YXRlLT5nYW1tYV9tb2RlID09IEdBTU1BX01PREVfTU9ERV84QklUKQorCQljcnRj
X3N0YXRlLT5iYXNlLmdhbW1hX2x1dCA9IGk5eHhfcmVhZF9sdXRfOChjcnRjX3N0YXRlKTsKKwll
bHNlCisJCWNydGNfc3RhdGUtPmJhc2UuZ2FtbWFfbHV0ID0gYmR3X3JlYWRfbHV0XzEwKGNydGNf
c3RhdGUsIFBBTF9QUkVDX0lOREVYX1ZBTFVFKDApKTsKK30KKwogdm9pZCBpbnRlbF9jb2xvcl9p
bml0KHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjKQogewogCXN0cnVjdCBkcm1faTkxNV9wcml2YXRl
ICpkZXZfcHJpdiA9IHRvX2k5MTUoY3J0Yy0+YmFzZS5kZXYpOwpAQCAtMTYzMSw5ICsxNjM5LDEw
IEBAIHZvaWQgaW50ZWxfY29sb3JfaW5pdChzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YykKIAkJaWYg
KElOVEVMX0dFTihkZXZfcHJpdikgPj0gMTEpIHsKIAkJCWRldl9wcml2LT5kaXNwbGF5LmxvYWRf
bHV0cyA9IGljbF9sb2FkX2x1dHM7CiAJCQlkZXZfcHJpdi0+ZGlzcGxheS5yZWFkX2x1dHMgPSBp
Y2xfcmVhZF9sdXRzOwotCQl9Ci0JCWVsc2UgaWYgKElTX0NBTk5PTkxBS0UoZGV2X3ByaXYpIHx8
IElTX0dFTUlOSUxBS0UoZGV2X3ByaXYpKQorCQl9IGVsc2UgaWYgKElTX0NBTk5PTkxBS0UoZGV2
X3ByaXYpIHx8IElTX0dFTUlOSUxBS0UoZGV2X3ByaXYpKSB7CiAJCQlkZXZfcHJpdi0+ZGlzcGxh
eS5sb2FkX2x1dHMgPSBnbGtfbG9hZF9sdXRzOworCQkJZGV2X3ByaXYtPmRpc3BsYXkucmVhZF9s
dXRzID0gZ2xrX3JlYWRfbHV0czsKKwkJfQogCQllbHNlIGlmIChJTlRFTF9HRU4oZGV2X3ByaXYp
ID49IDgpCiAJCQlkZXZfcHJpdi0+ZGlzcGxheS5sb2FkX2x1dHMgPSBiZHdfbG9hZF9sdXRzOwog
CQllbHNlIGlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDcpCi0tIAoxLjkuMQoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcg
bGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
