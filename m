Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DC57A3D5E
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Aug 2019 20:03:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0F7486E11A;
	Fri, 30 Aug 2019 18:03:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8A8E86E11A
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Aug 2019 18:03:28 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18321669-1500050 
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Aug 2019 19:03:26 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 30 Aug 2019 19:03:25 +0100
Message-Id: <20190830180325.7755-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [CI] drm/i915: Use RCU for unlocked vm_idr lookup
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
bHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgpSZXZpZXdlZC1ieTogTWF0dGhldyBBdWxk
IDxtYXR0aGV3LmF1bGRAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9p
OTE1X2dlbV9jb250ZXh0LmMgfCAxMSArKysrLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDQgaW5z
ZXJ0aW9ucygrKSwgNyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9nZW0vaTkxNV9nZW1fY29udGV4dC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5
MTVfZ2VtX2NvbnRleHQuYwppbmRleCAxZjczNWNhOWIxNzMuLmI4OTY5NjA1ZjRlOCAxMDA2NDQK
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2NvbnRleHQuYworKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fY29udGV4dC5jCkBAIC0xMDU3LDE0ICsx
MDU3LDExIEBAIHN0YXRpYyBpbnQgc2V0X3BwZ3R0KHN0cnVjdCBkcm1faTkxNV9maWxlX3ByaXZh
dGUgKmZpbGVfcHJpdiwKIAlpZiAodXBwZXJfMzJfYml0cyhhcmdzLT52YWx1ZSkpCiAJCXJldHVy
biAtRU5PRU5UOwogCi0JZXJyID0gbXV0ZXhfbG9ja19pbnRlcnJ1cHRpYmxlKCZmaWxlX3ByaXYt
PnZtX2lkcl9sb2NrKTsKLQlpZiAoZXJyKQotCQlyZXR1cm4gZXJyOwotCisJcmN1X3JlYWRfbG9j
aygpOwogCXZtID0gaWRyX2ZpbmQoJmZpbGVfcHJpdi0+dm1faWRyLCBhcmdzLT52YWx1ZSk7Ci0J
aWYgKHZtKQotCQlpOTE1X3ZtX2dldCh2bSk7Ci0JbXV0ZXhfdW5sb2NrKCZmaWxlX3ByaXYtPnZt
X2lkcl9sb2NrKTsKKwlpZiAodm0gJiYgIWtyZWZfZ2V0X3VubGVzc196ZXJvKCZ2bS0+cmVmKSkK
KwkJdm0gPSBOVUxMOworCXJjdV9yZWFkX3VubG9jaygpOwogCWlmICghdm0pCiAJCXJldHVybiAt
RU5PRU5UOwogCi0tIAoyLjIzLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeA==
