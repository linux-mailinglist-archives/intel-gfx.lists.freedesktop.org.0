Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BD99A4AFF
	for <lists+intel-gfx@lfdr.de>; Sun,  1 Sep 2019 19:54:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 155B089B84;
	Sun,  1 Sep 2019 17:54:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 25EEB89B84
 for <intel-gfx@lists.freedesktop.org>; Sun,  1 Sep 2019 17:53:57 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18337058-1500050 
 for multiple; Sun, 01 Sep 2019 18:53:51 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sun,  1 Sep 2019 18:53:50 +0100
Message-Id: <20190901175350.19278-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Ignore preallocation of
 aliasing-ppgtt for vgpu
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

dkdQVSBkb2Vzbid0IHJ1biBvbiBhbnkgc3lzdGVtIHRoYXQgc3VwcG9ydHMgYWxpYXNpbmctcHBn
dHQsIHNvIHdlIGRvCm5vdCBuZWVkIHRvIGZvcmNlIG91cnNlbHZlcyB0byBwcmVhbGxvY2F0ZSB0
aGUgcGFnZSBkaXJlY3RvcnkuCgpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNo
cmlzLXdpbHNvbi5jby51az4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQu
YyB8IDEwIC0tLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAxMCBkZWxldGlvbnMoLSkKCmRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuYyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5jCmluZGV4IDkwNmRjNmZmZjM4My4uMDEyYTI0ZDAxM2I0
IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuYworKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuYwpAQCAtMjU3OSwxNiArMjU3OSw2IEBA
IHN0YXRpYyBpbnQgaW5pdF9hbGlhc2luZ19wcGd0dChzdHJ1Y3QgaTkxNV9nZ3R0ICpnZ3R0KQog
CQlnb3RvIGVycl9wcGd0dDsKIAl9CiAKLQkvKgotCSAqIE5vdGUgd2Ugb25seSBwcmUtYWxsb2Nh
dGUgYXMgZmFyIGFzIHRoZSBlbmQgb2YgdGhlIGdsb2JhbAotCSAqIEdUVC4gT24gNDhiIC8gNC1s
ZXZlbCBwYWdlLXRhYmxlcywgdGhlIGRpZmZlcmVuY2UgaXMgdmVyeSwKLQkgKiB2ZXJ5IHNpZ25p
ZmljYW50ISBXZSBoYXZlIHRvIHByZWFsbG9jYXRlIGFzIEdWVC92Z3B1IGRvZXMKLQkgKiBub3Qg
bGlrZSB0aGUgcGFnZSBkaXJlY3RvcnkgZGlzYXBwZWFyaW5nLgotCSAqLwotCWVyciA9IHBwZ3R0
LT52bS5hbGxvY2F0ZV92YV9yYW5nZSgmcHBndHQtPnZtLCAwLCBnZ3R0LT52bS50b3RhbCk7Ci0J
aWYgKGVycikKLQkJZ290byBlcnJfcHBndHQ7Ci0KIAlnZ3R0LT5hbGlhcyA9IHBwZ3R0OwogCiAJ
R0VNX0JVR19PTihnZ3R0LT52bS52bWFfb3BzLmJpbmRfdm1hICE9IGdndHRfYmluZF92bWEpOwot
LSAKMi4yMy4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
