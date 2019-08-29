Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A344A135E
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Aug 2019 10:12:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3F7906E057;
	Thu, 29 Aug 2019 08:12:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1BC7A6E041
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Aug 2019 08:12:07 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18299863-1500050 
 for multiple; Thu, 29 Aug 2019 09:11:54 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 29 Aug 2019 09:11:19 +0100
Message-Id: <20190829081150.10271-6-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190829081150.10271-1-chris@chris-wilson.co.uk>
References: <20190829081150.10271-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 05/36] drm/i915: Use RCU for unlocked vm_idr
 lookup
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

U2luY2UgaTkxNV9hZGRyZXNzX3NwYWNlIGlzIG5vdyBSQ1UgcHJvdGVjdGVkLCB3ZSBjYW4gZG8g
dGhlIHZtX2lkciBsb29rdXAKd2l0aG91dCB0YWtpbmcgdGhlIHZtX2lkcl9tdXRleCwganVzdCB3
aXRoIHRoZSByY3VfcmVhZF9sb2NrKCkgaW5zdGVhZC4KClNpZ25lZC1vZmYtYnk6IENocmlzIFdp
bHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2dlbS9pOTE1X2dlbV9jb250ZXh0LmMgfCAxMSArKysrLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQs
IDQgaW5zZXJ0aW9ucygrKSwgNyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fY29udGV4dC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z2VtL2k5MTVfZ2VtX2NvbnRleHQuYwppbmRleCAxZjczNWNhOWIxNzMuLmI4OTY5NjA1ZjRlOCAx
MDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2NvbnRleHQuYwor
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fY29udGV4dC5jCkBAIC0xMDU3
LDE0ICsxMDU3LDExIEBAIHN0YXRpYyBpbnQgc2V0X3BwZ3R0KHN0cnVjdCBkcm1faTkxNV9maWxl
X3ByaXZhdGUgKmZpbGVfcHJpdiwKIAlpZiAodXBwZXJfMzJfYml0cyhhcmdzLT52YWx1ZSkpCiAJ
CXJldHVybiAtRU5PRU5UOwogCi0JZXJyID0gbXV0ZXhfbG9ja19pbnRlcnJ1cHRpYmxlKCZmaWxl
X3ByaXYtPnZtX2lkcl9sb2NrKTsKLQlpZiAoZXJyKQotCQlyZXR1cm4gZXJyOwotCisJcmN1X3Jl
YWRfbG9jaygpOwogCXZtID0gaWRyX2ZpbmQoJmZpbGVfcHJpdi0+dm1faWRyLCBhcmdzLT52YWx1
ZSk7Ci0JaWYgKHZtKQotCQlpOTE1X3ZtX2dldCh2bSk7Ci0JbXV0ZXhfdW5sb2NrKCZmaWxlX3By
aXYtPnZtX2lkcl9sb2NrKTsKKwlpZiAodm0gJiYgIWtyZWZfZ2V0X3VubGVzc196ZXJvKCZ2bS0+
cmVmKSkKKwkJdm0gPSBOVUxMOworCXJjdV9yZWFkX3VubG9jaygpOwogCWlmICghdm0pCiAJCXJl
dHVybiAtRU5PRU5UOwogCi0tIAoyLjIzLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLWdmeA==
