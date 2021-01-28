Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 598D8307AD3
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Jan 2021 17:27:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 762926E9AE;
	Thu, 28 Jan 2021 16:27:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl
 [IPv6:2a02:2308::216:3eff:fe92:dfa3])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7778E6E993
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Jan 2021 16:26:29 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 28 Jan 2021 17:26:06 +0100
Message-Id: <20210128162612.927917-58-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210128162612.927917-1-maarten.lankhorst@linux.intel.com>
References: <20210128162612.927917-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v7 57/63] drm/i915/selftests: Prepare
 i915_request tests for obj->mm.lock removal
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

U3RyYWlnaHRmb3J3YXJkIGNvbnZlcnNpb24gYnkgdXNpbmcgdW5sb2NrZWQgdmVyc2lvbnMuCgpT
aWduZWQtb2ZmLWJ5OiBNYWFydGVuIExhbmtob3JzdCA8bWFhcnRlbi5sYW5raG9yc3RAbGludXgu
aW50ZWwuY29tPgpSZXZpZXdlZC1ieTogVGhvbWFzIEhlbGxzdHLDtm0gPHRob21hcy5oZWxsc3Ry
b21AbGludXguaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9p
OTE1X3JlcXVlc3QuYyB8IDEwICsrKysrLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlv
bnMoKyksIDUgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
c2VsZnRlc3RzL2k5MTVfcmVxdWVzdC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRlc3Rz
L2k5MTVfcmVxdWVzdC5jCmluZGV4IGQyYTY3OGEyNDk3ZS4uOWE5ZTkyYTc3NWM4IDEwMDY0NAot
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvaTkxNV9yZXF1ZXN0LmMKKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRlc3RzL2k5MTVfcmVxdWVzdC5jCkBAIC02MjAsNyAr
NjIwLDcgQEAgc3RhdGljIHN0cnVjdCBpOTE1X3ZtYSAqZW1wdHlfYmF0Y2goc3RydWN0IGRybV9p
OTE1X3ByaXZhdGUgKmk5MTUpCiAJaWYgKElTX0VSUihvYmopKQogCQlyZXR1cm4gRVJSX0NBU1Qo
b2JqKTsKIAotCWNtZCA9IGk5MTVfZ2VtX29iamVjdF9waW5fbWFwKG9iaiwgSTkxNV9NQVBfV0Ip
OworCWNtZCA9IGk5MTVfZ2VtX29iamVjdF9waW5fbWFwX3VubG9ja2VkKG9iaiwgSTkxNV9NQVBf
V0IpOwogCWlmIChJU19FUlIoY21kKSkgewogCQllcnIgPSBQVFJfRVJSKGNtZCk7CiAJCWdvdG8g
ZXJyOwpAQCAtNzgyLDcgKzc4Miw3IEBAIHN0YXRpYyBzdHJ1Y3QgaTkxNV92bWEgKnJlY3Vyc2l2
ZV9iYXRjaChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkKIAlpZiAoZXJyKQogCQlnb3Rv
IGVycjsKIAotCWNtZCA9IGk5MTVfZ2VtX29iamVjdF9waW5fbWFwKG9iaiwgSTkxNV9NQVBfV0Mp
OworCWNtZCA9IGk5MTVfZ2VtX29iamVjdF9waW5fbWFwX3VubG9ja2VkKG9iaiwgSTkxNV9NQVBf
V0MpOwogCWlmIChJU19FUlIoY21kKSkgewogCQllcnIgPSBQVFJfRVJSKGNtZCk7CiAJCWdvdG8g
ZXJyOwpAQCAtODE3LDcgKzgxNyw3IEBAIHN0YXRpYyBpbnQgcmVjdXJzaXZlX2JhdGNoX3Jlc29s
dmUoc3RydWN0IGk5MTVfdm1hICpiYXRjaCkKIHsKIAl1MzIgKmNtZDsKIAotCWNtZCA9IGk5MTVf
Z2VtX29iamVjdF9waW5fbWFwKGJhdGNoLT5vYmosIEk5MTVfTUFQX1dDKTsKKwljbWQgPSBpOTE1
X2dlbV9vYmplY3RfcGluX21hcF91bmxvY2tlZChiYXRjaC0+b2JqLCBJOTE1X01BUF9XQyk7CiAJ
aWYgKElTX0VSUihjbWQpKQogCQlyZXR1cm4gUFRSX0VSUihjbWQpOwogCkBAIC0xMDcwLDggKzEw
NzAsOCBAQCBzdGF0aWMgaW50IGxpdmVfc2VxdWVudGlhbF9lbmdpbmVzKHZvaWQgKmFyZykKIAkJ
aWYgKCFyZXF1ZXN0W2lkeF0pCiAJCQlicmVhazsKIAotCQljbWQgPSBpOTE1X2dlbV9vYmplY3Rf
cGluX21hcChyZXF1ZXN0W2lkeF0tPmJhdGNoLT5vYmosCi0JCQkJCSAgICAgIEk5MTVfTUFQX1dD
KTsKKwkJY21kID0gaTkxNV9nZW1fb2JqZWN0X3Bpbl9tYXBfdW5sb2NrZWQocmVxdWVzdFtpZHhd
LT5iYXRjaC0+b2JqLAorCQkJCQkJICAgICAgIEk5MTVfTUFQX1dDKTsKIAkJaWYgKCFJU19FUlIo
Y21kKSkgewogCQkJKmNtZCA9IE1JX0JBVENIX0JVRkZFUl9FTkQ7CiAKLS0gCjIuMzAuMAoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
