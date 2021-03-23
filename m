Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C0FA634638C
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Mar 2021 16:52:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 958C16EBED;
	Tue, 23 Mar 2021 15:51:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9B99A6EA7A
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Mar 2021 15:51:19 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 23 Mar 2021 16:50:35 +0100
Message-Id: <20210323155059.628690-47-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.31.0
In-Reply-To: <20210323155059.628690-1-maarten.lankhorst@linux.intel.com>
References: <20210323155059.628690-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v9 46/70] drm/i915/selftests: Prepare execbuf
 tests for obj->mm.lock removal.
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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
Cc: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QWxzbyBxdWl0ZSBzaW1wbGUsIGEgc2luZ2xlIGNhbGwgbmVlZHMgdG8gdXNlIHRoZSB1bmxvY2tl
ZCB2ZXJzaW9uLgoKU2lnbmVkLW9mZi1ieTogTWFhcnRlbiBMYW5raG9yc3QgPG1hYXJ0ZW4ubGFu
a2hvcnN0QGxpbnV4LmludGVsLmNvbT4KUmV2aWV3ZWQtYnk6IFRob21hcyBIZWxsc3Ryw7ZtIDx0
aG9tYXMuaGVsbHN0cm9tQGxpbnV4LmludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9nZW0vc2VsZnRlc3RzL2k5MTVfZ2VtX2V4ZWNidWZmZXIuYyB8IDIgKy0KIDEgZmlsZSBjaGFu
Z2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2dlbS9zZWxmdGVzdHMvaTkxNV9nZW1fZXhlY2J1ZmZlci5jIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9pOTE1X2dlbV9leGVjYnVmZmVyLmMKaW5kZXgg
ZTFkNTBhNWExNDc3Li40ZGY1MDVlNGM1M2EgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2dlbS9zZWxmdGVzdHMvaTkxNV9nZW1fZXhlY2J1ZmZlci5jCisrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2dlbS9zZWxmdGVzdHMvaTkxNV9nZW1fZXhlY2J1ZmZlci5jCkBAIC0xMTYsNyAr
MTE2LDcgQEAgc3RhdGljIGludCBpZ3RfZ3B1X3JlbG9jKHZvaWQgKmFyZykKIAlpZiAoSVNfRVJS
KHNjcmF0Y2gpKQogCQlyZXR1cm4gUFRSX0VSUihzY3JhdGNoKTsKIAotCW1hcCA9IGk5MTVfZ2Vt
X29iamVjdF9waW5fbWFwKHNjcmF0Y2gsIEk5MTVfTUFQX1dDKTsKKwltYXAgPSBpOTE1X2dlbV9v
YmplY3RfcGluX21hcF91bmxvY2tlZChzY3JhdGNoLCBJOTE1X01BUF9XQyk7CiAJaWYgKElTX0VS
UihtYXApKSB7CiAJCWVyciA9IFBUUl9FUlIobWFwKTsKIAkJZ290byBlcnJfc2NyYXRjaDsKLS0g
CjIuMzEuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
