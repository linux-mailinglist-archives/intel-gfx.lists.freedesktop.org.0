Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C2C78307AD1
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Jan 2021 17:27:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A06289A4A;
	Thu, 28 Jan 2021 16:27:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl
 [IPv6:2a02:2308::216:3eff:fe92:dfa3])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6A7BA6E991
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Jan 2021 16:26:28 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 28 Jan 2021 17:25:59 +0100
Message-Id: <20210128162612.927917-51-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210128162612.927917-1-maarten.lankhorst@linux.intel.com>
References: <20210128162612.927917-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v7 50/63] drm/i915/selftests: Prepare
 igt_gem_utils for obj->mm.lock removal
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
Cc: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

aWd0X2VtaXRfc3RvcmVfZHcgbmVlZHMgdG8gdXNlIHRoZSB1bmxvY2tlZCB2ZXJzaW9uLCBhcyBp
dCdzIG5vdApob2xkaW5nIGEgbG9jay4gVGhpcyBmaXhlcyBpZ3RfZ3B1X2ZpbGxfZHcoKSB3aGlj
aCBpcyB1c2VkIGJ5CnNvbWUgb3RoZXIgc2VsZnRlc3RzLgoKU2lnbmVkLW9mZi1ieTogTWFhcnRl
biBMYW5raG9yc3QgPG1hYXJ0ZW4ubGFua2hvcnN0QGxpbnV4LmludGVsLmNvbT4KUmV2aWV3ZWQt
Ynk6IFRob21hcyBIZWxsc3Ryw7ZtIDx0aG9tYXMuaGVsbHN0cm9tQGxpbnV4LmludGVsLmNvbT4K
LS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL2lndF9nZW1fdXRpbHMuYyB8
IDIgKy0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQoKZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9zZWxmdGVzdHMvaWd0X2dlbV91dGls
cy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9pZ3RfZ2VtX3V0aWxzLmMK
aW5kZXggZDY3ODMwNjFiYzcyLi4wYjA5MmM2MmJiMzQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2dlbS9zZWxmdGVzdHMvaWd0X2dlbV91dGlscy5jCisrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2dlbS9zZWxmdGVzdHMvaWd0X2dlbV91dGlscy5jCkBAIC01NSw3ICs1NSw3IEBA
IGlndF9lbWl0X3N0b3JlX2R3KHN0cnVjdCBpOTE1X3ZtYSAqdm1hLAogCWlmIChJU19FUlIob2Jq
KSkKIAkJcmV0dXJuIEVSUl9DQVNUKG9iaik7CiAKLQljbWQgPSBpOTE1X2dlbV9vYmplY3RfcGlu
X21hcChvYmosIEk5MTVfTUFQX1dDKTsKKwljbWQgPSBpOTE1X2dlbV9vYmplY3RfcGluX21hcF91
bmxvY2tlZChvYmosIEk5MTVfTUFQX1dDKTsKIAlpZiAoSVNfRVJSKGNtZCkpIHsKIAkJZXJyID0g
UFRSX0VSUihjbWQpOwogCQlnb3RvIGVycjsKLS0gCjIuMzAuMAoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
