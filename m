Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 37121C9AD5
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Oct 2019 11:36:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 400F96E984;
	Thu,  3 Oct 2019 09:36:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1ED026E984
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Oct 2019 09:36:47 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18704194-1500050 
 for multiple; Thu, 03 Oct 2019 10:36:45 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  3 Oct 2019 10:36:36 +0100
Message-Id: <20191003093639.10186-20-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191003093639.10186-1-chris@chris-wilson.co.uk>
References: <20191003093639.10186-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 19/22] drm/i915: Remove struct_mutex guard for
 debugfs/opregion
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

SGF2aW5nIGEgc3RydWN0X211dGV4IGFyb3VuZCB0aGUgcmVhZCBvZiBhIEJJT1MgYmxvYiBzZXJ2
ZXMgbm8gcHVycG9zZS4KClNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMt
d2lsc29uLmNvLnVrPgpSZXZpZXdlZC1ieTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGlu
QGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RlYnVnZnMuYyB8IDEy
ICstLS0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxMSBkZWxldGlv
bnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RlYnVnZnMuYyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZGVidWdmcy5jCmluZGV4IDc3OTMzYjIzMDcwZS4u
Mjk4YTNlODc5ZTY1IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RlYnVn
ZnMuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RlYnVnZnMuYwpAQCAtMTUwMCwy
MSArMTUwMCwxMSBAQCBzdGF0aWMgaW50IGk5MTVfcmluZ19mcmVxX3RhYmxlKHN0cnVjdCBzZXFf
ZmlsZSAqbSwgdm9pZCAqdW51c2VkKQogCiBzdGF0aWMgaW50IGk5MTVfb3ByZWdpb24oc3RydWN0
IHNlcV9maWxlICptLCB2b2lkICp1bnVzZWQpCiB7Ci0Jc3RydWN0IGRybV9pOTE1X3ByaXZhdGUg
KmRldl9wcml2ID0gbm9kZV90b19pOTE1KG0tPnByaXZhdGUpOwotCXN0cnVjdCBkcm1fZGV2aWNl
ICpkZXYgPSAmZGV2X3ByaXYtPmRybTsKLQlzdHJ1Y3QgaW50ZWxfb3ByZWdpb24gKm9wcmVnaW9u
ID0gJmRldl9wcml2LT5vcHJlZ2lvbjsKLQlpbnQgcmV0OwotCi0JcmV0ID0gbXV0ZXhfbG9ja19p
bnRlcnJ1cHRpYmxlKCZkZXYtPnN0cnVjdF9tdXRleCk7Ci0JaWYgKHJldCkKLQkJZ290byBvdXQ7
CisJc3RydWN0IGludGVsX29wcmVnaW9uICpvcHJlZ2lvbiA9ICZub2RlX3RvX2k5MTUobS0+cHJp
dmF0ZSktPm9wcmVnaW9uOwogCiAJaWYgKG9wcmVnaW9uLT5oZWFkZXIpCiAJCXNlcV93cml0ZSht
LCBvcHJlZ2lvbi0+aGVhZGVyLCBPUFJFR0lPTl9TSVpFKTsKIAotCW11dGV4X3VubG9jaygmZGV2
LT5zdHJ1Y3RfbXV0ZXgpOwotCi1vdXQ6CiAJcmV0dXJuIDA7CiB9CiAKLS0gCjIuMjMuMAoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
