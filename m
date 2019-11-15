Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F653FD9F6
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Nov 2019 10:52:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 024336E31C;
	Fri, 15 Nov 2019 09:52:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0E0DA6E326
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Nov 2019 09:52:48 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Nov 2019 01:52:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,307,1569308400"; d="scan'208";a="203348033"
Received: from ramaling-i9x.iind.intel.com ([10.99.66.154])
 by fmsmga008.fm.intel.com with ESMTP; 15 Nov 2019 01:52:45 -0800
From: Ramalingam C <ramalingam.c@intel.com>
To: intel-gfx <intel-gfx@lists.freedesktop.org>,
 Matthew Auld <matthew.auld@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>
Date: Fri, 15 Nov 2019 15:22:00 +0530
Message-Id: <20191115095200.777-1-ramalingam.c@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/fbdev: FB allocation from LMEM,
 if supported
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

RkIgZm9yIGZiZGV2IGlzIGFsbG9jYXRlZCBmcm9tIExNRU0gaWYgdGhlIHBsYXRmb3JtIHN1cHBv
cnRzIExNRU0uCgpTaWduZWQtb2ZmLWJ5OiBSYW1hbGluZ2FtIEMgPHJhbWFsaW5nYW0uY0BpbnRl
bC5jb20+CmNjOiBNYXR0aGV3IEF1bGQgPG1hdHRoZXcuYXVsZEBpbnRlbC5jb20+Ci0tLQogZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmRldi5jIHwgMjQgKysrKysrKysrKysr
KystLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDE2IGluc2VydGlvbnMoKyksIDggZGVsZXRpb25z
KC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmRl
di5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmRldi5jCmluZGV4IDQ4
Yzk2MGNhMTJmYi4uODJlZmMwY2E4M2Q5IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2ZiZGV2LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9mYmRldi5jCkBAIC00Miw2ICs0Miw3IEBACiAjaW5jbHVkZSA8ZHJtL2RybV9mb3Vy
Y2MuaD4KICNpbmNsdWRlIDxkcm0vaTkxNV9kcm0uaD4KIAorI2luY2x1ZGUgImdlbS9pOTE1X2dl
bV9sbWVtLmgiCiAjaW5jbHVkZSAiaTkxNV9kcnYuaCIKICNpbmNsdWRlICJpbnRlbF9kaXNwbGF5
X3R5cGVzLmgiCiAjaW5jbHVkZSAiaW50ZWxfZmJkZXYuaCIKQEAgLTEzNywxNSArMTM4LDIyIEBA
IHN0YXRpYyBpbnQgaW50ZWxmYl9hbGxvYyhzdHJ1Y3QgZHJtX2ZiX2hlbHBlciAqaGVscGVyLAog
CiAJc2l6ZSA9IG1vZGVfY21kLnBpdGNoZXNbMF0gKiBtb2RlX2NtZC5oZWlnaHQ7CiAJc2l6ZSA9
IFBBR0VfQUxJR04oc2l6ZSk7Ci0KLQkvKiBJZiB0aGUgRkIgaXMgdG9vIGJpZywganVzdCBkb24n
dCB1c2UgaXQgc2luY2UgZmJkZXYgaXMgbm90IHZlcnkKLQkgKiBpbXBvcnRhbnQgYW5kIHdlIHNo
b3VsZCBwcm9iYWJseSB1c2UgdGhhdCBzcGFjZSB3aXRoIEZCQyBvciBvdGhlcgotCSAqIGZlYXR1
cmVzLiAqLwogCW9iaiA9IEVSUl9QVFIoLUVOT0RFVik7Ci0JaWYgKHNpemUgKiAyIDwgZGV2X3By
aXYtPnN0b2xlbl91c2FibGVfc2l6ZSkKLQkJb2JqID0gaTkxNV9nZW1fb2JqZWN0X2NyZWF0ZV9z
dG9sZW4oZGV2X3ByaXYsIHNpemUpOwotCWlmIChJU19FUlIob2JqKSkKLQkJb2JqID0gaTkxNV9n
ZW1fb2JqZWN0X2NyZWF0ZV9zaG1lbShkZXZfcHJpdiwgc2l6ZSk7CisKKwlpZiAoSEFTX0xNRU0o
ZGV2X3ByaXYpKSB7CisJCW9iaiA9IGk5MTVfZ2VtX29iamVjdF9jcmVhdGVfbG1lbShkZXZfcHJp
diwgc2l6ZSwKKwkJCQkJCSAgSTkxNV9CT19BTExPQ19DT05USUdVT1VTKTsKKwl9IGVsc2Ugewor
CQkvKgorCQkgKiBJZiB0aGUgRkIgaXMgdG9vIGJpZywganVzdCBkb24ndCB1c2UgaXQgc2luY2Ug
ZmJkZXYgaXMgbm90CisJCSAqIHZlcnkgaW1wb3J0YW50IGFuZCB3ZSBzaG91bGQgcHJvYmFibHkg
dXNlIHRoYXQgc3BhY2Ugd2l0aAorCQkgKiBGQkMgb3Igb3RoZXIgZmVhdHVyZXMuCisJCSAqLwor
CQlpZiAoc2l6ZSAqIDIgPCBkZXZfcHJpdi0+c3RvbGVuX3VzYWJsZV9zaXplKQorCQkJb2JqID0g
aTkxNV9nZW1fb2JqZWN0X2NyZWF0ZV9zdG9sZW4oZGV2X3ByaXYsIHNpemUpOworCQlpZiAoSVNf
RVJSKG9iaikpCisJCQlvYmogPSBpOTE1X2dlbV9vYmplY3RfY3JlYXRlX3NobWVtKGRldl9wcml2
LCBzaXplKTsKKwl9CiAJaWYgKElTX0VSUihvYmopKSB7CiAJCURSTV9FUlJPUigiZmFpbGVkIHRv
IGFsbG9jYXRlIGZyYW1lYnVmZmVyXG4iKTsKIAkJcmV0dXJuIFBUUl9FUlIob2JqKTsKLS0gCjIu
MjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
