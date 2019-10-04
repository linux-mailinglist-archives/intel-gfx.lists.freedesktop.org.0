Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A955CBC62
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Oct 2019 15:58:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B53F26EB94;
	Fri,  4 Oct 2019 13:58:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 00E156EB94
 for <intel-gfx@lists.freedesktop.org>; Fri,  4 Oct 2019 13:58:14 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18723967-1500050 
 for multiple; Fri, 04 Oct 2019 14:40:20 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  4 Oct 2019 14:40:12 +0100
Message-Id: <20191004134015.13204-18-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191004134015.13204-1-chris@chris-wilson.co.uk>
References: <20191004134015.13204-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 17/20] drm/i915: Remove struct_mutex guard for
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
