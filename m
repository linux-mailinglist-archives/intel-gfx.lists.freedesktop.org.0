Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4234B78CBE
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Jul 2019 15:25:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 62BC189D5F;
	Mon, 29 Jul 2019 13:25:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 669A289D5F
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Jul 2019 13:25:52 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17700666-1500050 
 for multiple; Mon, 29 Jul 2019 14:24:13 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 29 Jul 2019 14:24:12 +0100
Message-Id: <20190729132412.23380-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Flush the i915_vm_release before ggtt
 shutdown
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

QXMgdGhlIGdlbjZfcHBndHQgbWF5IHJlZmVyIGJhY2sgdG8gdGhlIEdHVFQgZm9yIHRoZWlyIHBh
Z2UtZGlyZWN0b3J5CnNsb3RzLCBtYWtlIHN1cmUgdGhvc2UgX19pOTE1X3ZtX3JlbGVhc2UgYXJl
IGNvbXBsZXRlZCBwcmlvciB0byBzaHV0dGluZwpkb3duIHRoZSBHR1RULgoKRml4ZXM6IGIzMmZh
ODExMTU2MyAoImRybS9pOTE1L2d0dDogRGVmZXIgYWRkcmVzcyBzcGFjZSBjbGVhbnVwIHRvIGFu
IFJDVSB3b3JrZXIiKQpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdp
bHNvbi5jby51az4KQ2M6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+
Ci0tLQpUaGUgd29ya2VycyBhcmUgUkNVIGRlZmVycmVkIHNvIG5lZWQgYSBiYXJyaWVyIHRvIGZp
cnN0IGZsdXNoIHRoZSBmcmVlcwpvbnRvIHRoZSB3b3JrcXVldWUuCi0tLQogZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmMgfCAzICsrKwogMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0
aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5j
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmMKaW5kZXggNGRkMWZhOTU2MTQz
Li40MjNjODkwZDAzYmYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2Vt
X2d0dC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5jCkBAIC0yNzIx
LDYgKzI3MjEsOSBAQCBzdGF0aWMgdm9pZCBnZ3R0X2NsZWFudXBfaHcoc3RydWN0IGk5MTVfZ2d0
dCAqZ2d0dCkKIAogCWdndHQtPnZtLmNsb3NlZCA9IHRydWU7CiAKKwlyY3VfYmFycmllcigpOyAv
KiBmbHVzaCB0aGUgUkNVJ2VkX19pOTE1X3ZtX3JlbGVhc2UgKi8KKwlmbHVzaF93b3JrcXVldWUo
aTkxNS0+d3EpOworCiAJbXV0ZXhfbG9jaygmaTkxNS0+ZHJtLnN0cnVjdF9tdXRleCk7CiAKIAls
aXN0X2Zvcl9lYWNoX2VudHJ5X3NhZmUodm1hLCB2biwgJmdndHQtPnZtLmJvdW5kX2xpc3QsIHZt
X2xpbmspCi0tIAoyLjIyLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeA==
