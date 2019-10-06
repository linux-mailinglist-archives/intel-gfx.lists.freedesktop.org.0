Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B654CD3B0
	for <lists+intel-gfx@lfdr.de>; Sun,  6 Oct 2019 18:50:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 56CA56E40F;
	Sun,  6 Oct 2019 16:50:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6564E895B5
 for <intel-gfx@lists.freedesktop.org>; Sun,  6 Oct 2019 16:50:17 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18742841-1500050 
 for multiple; Sun, 06 Oct 2019 17:50:04 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sun,  6 Oct 2019 17:49:53 +0100
Message-Id: <20191006165002.30312-3-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191006165002.30312-1-chris@chris-wilson.co.uk>
References: <20191006165002.30312-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 03/12] drm/i915/gt: Restore dropped
 'interruptible' flag
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

TG9zdCBpbiB0aGUgcmViYXNpbmcgd2FzIFR2cnRrbydzIHJlbWluZGVyIHRoYXQgd2UgbmVlZCB0
byBrZWVwIGFuCnVuaW50ZXJydXB0aWJsZSB3YWl0IGFyb3VuZCBmb3IgdGhlIElyb25sYWtlIFZU
LWQgdy9hCgpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5j
by51az4KQ2M6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+Ci0tLQog
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3RfcmVxdWVzdHMuYyB8IDIgKy0KIDEgZmls
ZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0X3JlcXVlc3RzLmMgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9ndC9pbnRlbF9ndF9yZXF1ZXN0cy5jCmluZGV4IDhhZWQ4OWZkMmNkYy4uZDY5ZTc4
NDc4ZWVhIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndF9yZXF1
ZXN0cy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0X3JlcXVlc3RzLmMK
QEAgLTQ4LDcgKzQ4LDcgQEAgbG9uZyBpbnRlbF9ndF9yZXRpcmVfcmVxdWVzdHNfdGltZW91dChz
dHJ1Y3QgaW50ZWxfZ3QgKmd0LCBsb25nIHRpbWVvdXQpCiAJCQlmZW5jZSA9IGk5MTVfYWN0aXZl
X2ZlbmNlX2dldCgmdGwtPmxhc3RfcmVxdWVzdCk7CiAJCQlpZiAoZmVuY2UpIHsKIAkJCQl0aW1l
b3V0ID0gZG1hX2ZlbmNlX3dhaXRfdGltZW91dChmZW5jZSwKLQkJCQkJCQkJIHRydWUsCisJCQkJ
CQkJCSBpbnRlcnJ1cHRpYmxlLAogCQkJCQkJCQkgdGltZW91dCk7CiAJCQkJZG1hX2ZlbmNlX3B1
dChmZW5jZSk7CiAJCQl9Ci0tIAoyLjIzLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLWdmeA==
