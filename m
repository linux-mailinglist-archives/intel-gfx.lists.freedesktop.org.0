Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E0DC13B55
	for <lists+intel-gfx@lfdr.de>; Sat,  4 May 2019 19:16:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DB967893EF;
	Sat,  4 May 2019 17:16:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2459B893EF
 for <intel-gfx@lists.freedesktop.org>; Sat,  4 May 2019 17:16:15 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 May 2019 10:16:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,430,1549958400"; d="scan'208";a="229328187"
Received: from genxfsim-shark-bay-client-platform.iind.intel.com
 ([10.223.74.155])
 by orsmga001.jf.intel.com with ESMTP; 04 May 2019 10:16:12 -0700
From: Swati Sharma <swati2.sharma@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sat,  4 May 2019 22:41:37 +0530
Message-Id: <1556989900-21972-9-git-send-email-swati2.sharma@intel.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1556989900-21972-1-git-send-email-swati2.sharma@intel.com>
References: <1556989900-21972-1-git-send-email-swati2.sharma@intel.com>
Subject: [Intel-gfx] [v5][PATCH 08/11] drm/i915: Extract bdw_read_luts()
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
Cc: jani.nikula@intel.com, daniel.vetter@ffwll.ch, ankit.k.nautiyal@intel.com
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
Y29uZmlnKCkgdG8gYmR3X3JlYWRfbHV0cygpIFtWaWxsZV0KICAgIC1FbmFibGVkIGRlZ2FtbWEg
bHV0IHZhbGlkYXRpb24gW1ZpbGxlXQoKU2lnbmVkLW9mZi1ieTogU3dhdGkgU2hhcm1hIDxzd2F0
aTIuc2hhcm1hQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9jb2xv
ci5jIHwgMTggKysrKysrKysrKysrKysrKy0tCiAxIGZpbGUgY2hhbmdlZCwgMTYgaW5zZXJ0aW9u
cygrKSwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
bnRlbF9jb2xvci5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfY29sb3IuYwppbmRleCAz
MmNlYTZkLi5jNWNjMWQ5IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9j
b2xvci5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2NvbG9yLmMKQEAgLTE1MzMs
NiArMTUzMywxOSBAQCBzdGF0aWMgdm9pZCBnbGtfcmVhZF9sdXRzKHN0cnVjdCBpbnRlbF9jcnRj
X3N0YXRlICpjcnRjX3N0YXRlKQogCQljcnRjX3N0YXRlLT5iYXNlLmdhbW1hX2x1dCA9IGJkd19y
ZWFkX2x1dF8xMChjcnRjX3N0YXRlLCBQQUxfUFJFQ19JTkRFWF9WQUxVRSgwKSk7CiB9CiAKK3N0
YXRpYyB2b2lkIGJkd19yZWFkX2x1dHMoc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3Rh
dGUpCit7CisJaWYgKGNydGNfc3RhdGUtPmdhbW1hX21vZGUgPT0gR0FNTUFfTU9ERV9NT0RFXzhC
SVQpIHsKKwkJY3J0Y19zdGF0ZS0+YmFzZS5nYW1tYV9sdXQgPSBpOXh4X3JlYWRfbHV0XzgoY3J0
Y19zdGF0ZSk7CisJfSBlbHNlIGlmIChjcnRjX3N0YXRlLT5nYW1tYV9tb2RlID09IEdBTU1BX01P
REVfTU9ERV9TUExJVCkgeworCQljcnRjX3N0YXRlLT5iYXNlLmRlZ2FtbWFfbHV0ID0gYmR3X3Jl
YWRfbHV0XzEwKGNydGNfc3RhdGUsIFBBTF9QUkVDX1NQTElUX01PREUgfCBQQUxfUFJFQ19JTkRF
WF9WQUxVRSgwKSk7CisJCWNydGNfc3RhdGUtPmJhc2UuZ2FtbWFfbHV0ID0gYmR3X3JlYWRfbHV0
XzEwKGNydGNfc3RhdGUsIFBBTF9QUkVDX0lOREVYX1ZBTFVFKDUxMikpOworCX0gZWxzZSB7CisJ
CWNydGNfc3RhdGUtPmJhc2UuZGVnYW1tYV9sdXQgPSBiZHdfcmVhZF9sdXRfMTAoY3J0Y19zdGF0
ZSwgUEFMX1BSRUNfSU5ERVhfVkFMVUUoMCkpOworCQljcnRjX3N0YXRlLT5iYXNlLmdhbW1hX2x1
dCA9IGJkd19yZWFkX2x1dF8xMChjcnRjX3N0YXRlLCBQQUxfUFJFQ19JTkRFWF9WQUxVRSgwKSk7
CisJfQorfQorCiB2b2lkIGludGVsX2NvbG9yX2luaXQoc3RydWN0IGludGVsX2NydGMgKmNydGMp
CiB7CiAJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShjcnRjLT5i
YXNlLmRldik7CkBAIC0xNTgwLDkgKzE1OTMsMTAgQEAgdm9pZCBpbnRlbF9jb2xvcl9pbml0KHN0
cnVjdCBpbnRlbF9jcnRjICpjcnRjKQogCQl9IGVsc2UgaWYgKElTX0NBTk5PTkxBS0UoZGV2X3By
aXYpIHx8IElTX0dFTUlOSUxBS0UoZGV2X3ByaXYpKSB7CiAJCQlkZXZfcHJpdi0+ZGlzcGxheS5s
b2FkX2x1dHMgPSBnbGtfbG9hZF9sdXRzOwogCQkJZGV2X3ByaXYtPmRpc3BsYXkucmVhZF9sdXRz
ID0gZ2xrX3JlYWRfbHV0czsKLQkJfQotCQllbHNlIGlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49
IDgpCisJCX0gZWxzZSBpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSA4KSB7CiAJCQlkZXZfcHJp
di0+ZGlzcGxheS5sb2FkX2x1dHMgPSBiZHdfbG9hZF9sdXRzOworCQkJZGV2X3ByaXYtPmRpc3Bs
YXkucmVhZF9sdXRzID0gYmR3X3JlYWRfbHV0czsKKwkJfQogCQllbHNlIGlmIChJTlRFTF9HRU4o
ZGV2X3ByaXYpID49IDcpCiAJCQlkZXZfcHJpdi0+ZGlzcGxheS5sb2FkX2x1dHMgPSBpdmJfbG9h
ZF9sdXRzOwogCQllbHNlCi0tIAoxLjkuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4
