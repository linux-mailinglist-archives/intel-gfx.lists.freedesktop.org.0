Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B7B8278C63
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Jul 2019 15:12:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1729E89F0B;
	Mon, 29 Jul 2019 13:12:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EC69989F0B
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Jul 2019 13:12:47 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17700387-1500050 
 for multiple; Mon, 29 Jul 2019 14:12:39 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 29 Jul 2019 14:12:37 +0100
Message-Id: <20190729131237.23204-1-chris@chris-wilson.co.uk>
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
Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmMgfCAxICsKIDEgZmlsZSBj
aGFuZ2VkLCAxIGluc2VydGlvbigrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfZ2VtX2d0dC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmMKaW5k
ZXggNGRkMWZhOTU2MTQzLi4zNWQ0ZTk5ZTdhYmQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfZ2VtX2d0dC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2Vt
X2d0dC5jCkBAIC0yNzIwLDYgKzI3MjAsNyBAQCBzdGF0aWMgdm9pZCBnZ3R0X2NsZWFudXBfaHco
c3RydWN0IGk5MTVfZ2d0dCAqZ2d0dCkKIAlzdHJ1Y3QgaTkxNV92bWEgKnZtYSwgKnZuOwogCiAJ
Z2d0dC0+dm0uY2xvc2VkID0gdHJ1ZTsKKwlmbHVzaF93b3JrcXVldWUoaTkxNS0+d3EpOyAvKiBm
bHVzaCB0aGUgX19pOTE1X3ZtX3JlbGVhc2UgKi8KIAogCW11dGV4X2xvY2soJmk5MTUtPmRybS5z
dHJ1Y3RfbXV0ZXgpOwogCi0tIAoyLjIyLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLWdmeA==
