Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F57310D35A
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Nov 2019 10:39:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 18EF36E0A0;
	Fri, 29 Nov 2019 09:39:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D15366E0A0
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Nov 2019 09:39:15 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19389028-1500050 
 for multiple; Fri, 29 Nov 2019 09:39:09 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 29 Nov 2019 09:39:08 +0000
Message-Id: <20191129093908.631527-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Serialise i915_active_wait() with its
 retirement
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

QXMgdGhlIGk5MTVfYWN0aXZlLnJldGlyZSgpIG1heSBiZSBydW5uaW5nIG9uIGFub3RoZXIgQ1BV
IGFzIHdlIGRldGVjdAp0aGF0IHRoZSBpOTE1X2FjdGl2ZSBpcyBpZGxlLCB3ZSBtYXkgbm90IHdh
aXQgZm9yIHRoZSByZXRpcmVtZW50IGl0c2VsZi4KV2FpdCBmb3IgdGhlIHJlbW90ZSBjYWxsYmFj
ayBieSB3YWl0aW5nIGZvciB0aGUgcmV0aXJlbWVudCB3b3JrZXIuCgpCdWd6aWxsYTogaHR0cHM6
Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTEyNDI0ClNpZ25lZC1vZmYt
Ynk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgotLS0KIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfYWN0aXZlLmMgfCAxICsKIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2Vy
dGlvbigrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfYWN0aXZlLmMg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2FjdGl2ZS5jCmluZGV4IDQ3OTE5NWVjYmM2Yy4u
ZTg2MzBlZTMzMzM2IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2FjdGl2
ZS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfYWN0aXZlLmMKQEAgLTQ2OSw2ICs0
NjksNyBAQCBpbnQgaTkxNV9hY3RpdmVfd2FpdChzdHJ1Y3QgaTkxNV9hY3RpdmUgKnJlZikKIAlp
ZiAod2FpdF92YXJfZXZlbnRfaW50ZXJydXB0aWJsZShyZWYsIGk5MTVfYWN0aXZlX2lzX2lkbGUo
cmVmKSkpCiAJCXJldHVybiAtRUlOVFI7CiAKKwlmbHVzaF93b3JrKCZyZWYtPndvcmspOwogCXJl
dHVybiAwOwogfQogCi0tIAoyLjI0LjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeA==
