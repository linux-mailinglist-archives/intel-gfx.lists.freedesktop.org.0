Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C42912D9AD
	for <lists+intel-gfx@lfdr.de>; Wed, 29 May 2019 11:54:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6813D6E0C5;
	Wed, 29 May 2019 09:54:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3C4B36E0AF
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 May 2019 09:54:47 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 May 2019 02:54:47 -0700
X-ExtLoop1: 1
Received: from genxfsim-shark-bay-client-platform.iind.intel.com
 ([10.223.74.155])
 by fmsmga001.fm.intel.com with ESMTP; 29 May 2019 02:54:46 -0700
From: Swati Sharma <swati2.sharma@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 29 May 2019 15:20:59 +0530
Message-Id: <1559123462-7343-10-git-send-email-swati2.sharma@intel.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1559123462-7343-1-git-send-email-swati2.sharma@intel.com>
References: <1559123462-7343-1-git-send-email-swati2.sharma@intel.com>
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
MTUvaW50ZWxfY29sb3IuYyB8IDE2ICsrKysrKysrKysrKysrLS0KIDEgZmlsZSBjaGFuZ2VkLCAx
NCBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2ludGVsX2NvbG9yLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9jb2xv
ci5jCmluZGV4IDFjZjgzYzQuLmIzNDk5MzIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2ludGVsX2NvbG9yLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfY29sb3Iu
YwpAQCAtMTU5NSw2ICsxNTk1LDE3IEBAIHN0YXRpYyB2b2lkIGdsa19yZWFkX2x1dHMoc3RydWN0
IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpCiAJCWNydGNfc3RhdGUtPmJhc2UuZ2FtbWFf
bHV0ID0gYmR3X3JlYWRfbHV0XzEwKGNydGNfc3RhdGUsIFBBTF9QUkVDX0lOREVYX1ZBTFVFKDAp
KTsKIH0KIAorc3RhdGljIHZvaWQgYmR3X3JlYWRfbHV0cyhzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0
ZSAqY3J0Y19zdGF0ZSkKK3sKKwlpZiAoY3J0Y19zdGF0ZS0+Z2FtbWFfbW9kZSA9PSBHQU1NQV9N
T0RFX01PREVfOEJJVCkKKwkJY3J0Y19zdGF0ZS0+YmFzZS5nYW1tYV9sdXQgPSBpOXh4X3JlYWRf
bHV0XzgoY3J0Y19zdGF0ZSk7CisJZWxzZSBpZiAoY3J0Y19zdGF0ZS0+Z2FtbWFfbW9kZSA9PSBH
QU1NQV9NT0RFX01PREVfU1BMSVQpCisJCWNydGNfc3RhdGUtPmJhc2UuZ2FtbWFfbHV0ID0gYmR3
X3JlYWRfbHV0XzEwKGNydGNfc3RhdGUsIFBBTF9QUkVDX1NQTElUX01PREUgfAorCQkJICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIAkgICAgIFBBTF9QUkVDX0lOREVYX1ZBTFVFKDUxMikpOwor
CWVsc2UKKwkJY3J0Y19zdGF0ZS0+YmFzZS5nYW1tYV9sdXQgPSBiZHdfcmVhZF9sdXRfMTAoY3J0
Y19zdGF0ZSwgUEFMX1BSRUNfSU5ERVhfVkFMVUUoMCkpOworfQorCiB2b2lkIGludGVsX2NvbG9y
X2luaXQoc3RydWN0IGludGVsX2NydGMgKmNydGMpCiB7CiAJc3RydWN0IGRybV9pOTE1X3ByaXZh
dGUgKmRldl9wcml2ID0gdG9faTkxNShjcnRjLT5iYXNlLmRldik7CkBAIC0xNjQyLDkgKzE2NTMs
MTAgQEAgdm9pZCBpbnRlbF9jb2xvcl9pbml0KHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjKQogCQl9
IGVsc2UgaWYgKElTX0NBTk5PTkxBS0UoZGV2X3ByaXYpIHx8IElTX0dFTUlOSUxBS0UoZGV2X3By
aXYpKSB7CiAJCQlkZXZfcHJpdi0+ZGlzcGxheS5sb2FkX2x1dHMgPSBnbGtfbG9hZF9sdXRzOwog
CQkJZGV2X3ByaXYtPmRpc3BsYXkucmVhZF9sdXRzID0gZ2xrX3JlYWRfbHV0czsKLQkJfQotCQll
bHNlIGlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDgpCisJCX0gZWxzZSBpZiAoSU5URUxfR0VO
KGRldl9wcml2KSA+PSA4KSB7CiAJCQlkZXZfcHJpdi0+ZGlzcGxheS5sb2FkX2x1dHMgPSBiZHdf
bG9hZF9sdXRzOworCQkJZGV2X3ByaXYtPmRpc3BsYXkucmVhZF9sdXRzID0gYmR3X3JlYWRfbHV0
czsKKwkJfQogCQllbHNlIGlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDcpCiAJCQlkZXZfcHJp
di0+ZGlzcGxheS5sb2FkX2x1dHMgPSBpdmJfbG9hZF9sdXRzOwogCQllbHNlCi0tIAoxLjkuMQoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
