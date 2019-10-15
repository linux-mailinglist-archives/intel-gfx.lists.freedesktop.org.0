Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A0C99D71AB
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Oct 2019 10:59:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 93DCE6E793;
	Tue, 15 Oct 2019 08:59:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 442516E793
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Oct 2019 08:59:18 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18840786-1500050 
 for multiple; Tue, 15 Oct 2019 09:59:13 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 15 Oct 2019 09:59:11 +0100
Message-Id: <20191015085911.10317-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/selftests: Drop stale struct_mutex
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

QSBsYXRlbHkgYWRkZWQgdGVzdCB3YXMgbWlzc2VkIHdoZW4gYXBwbHlpbmcgdGhlIHN0cnVjdF9t
dXRleCByZW1vdmFsCnBhdGNoZXMuIERvIHNvIG5vdy4KClNpZ25lZC1vZmYtYnk6IENocmlzIFdp
bHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L3NlbGZ0ZXN0X2xyYy5jIHwgOSArLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2Vy
dGlvbigrKSwgOCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC9zZWxmdGVzdF9scmMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X2xy
Yy5jCmluZGV4IDEyNzZkYTA1OWRjNi4uOWMxZjM0ZmI1ODgyIDEwMDY0NAotLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVzdF9scmMuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC9zZWxmdGVzdF9scmMuYwpAQCAtMTA3LDcgKzEwNyw2IEBAIHN0YXRpYyBpbnQgbGl2ZV91
bmxpdGVfcmVzdG9yZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwgaW50IHByaW8pCiAJ
c3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lOwogCXN0cnVjdCBpOTE1X2dlbV9jb250ZXh0
ICpjdHg7CiAJZW51bSBpbnRlbF9lbmdpbmVfaWQgaWQ7Ci0JaW50ZWxfd2FrZXJlZl90IHdha2Vy
ZWY7CiAJc3RydWN0IGlndF9zcGlubmVyIHNwaW47CiAJaW50IGVyciA9IC1FTk9NRU07CiAKQEAg
LTExNiwxMSArMTE1LDggQEAgc3RhdGljIGludCBsaXZlX3VubGl0ZV9yZXN0b3JlKHN0cnVjdCBk
cm1faTkxNV9wcml2YXRlICppOTE1LCBpbnQgcHJpbykKIAkgKiBvbiB0aGUgc2FtZSBlbmdpbmUg
ZnJvbSB0aGUgc2FtZSBwYXJlbnQgY29udGV4dC4KIAkgKi8KIAotCW11dGV4X2xvY2soJmk5MTUt
PmRybS5zdHJ1Y3RfbXV0ZXgpOwotCXdha2VyZWYgPSBpbnRlbF9ydW50aW1lX3BtX2dldCgmaTkx
NS0+cnVudGltZV9wbSk7Ci0KIAlpZiAoaWd0X3NwaW5uZXJfaW5pdCgmc3BpbiwgJmk5MTUtPmd0
KSkKLQkJZ290byBlcnJfdW5sb2NrOworCQlyZXR1cm4gZXJyOwogCiAJY3R4ID0ga2VybmVsX2Nv
bnRleHQoaTkxNSk7CiAJaWYgKCFjdHgpCkBAIC0yNjQsOSArMjYwLDYgQEAgc3RhdGljIGludCBs
aXZlX3VubGl0ZV9yZXN0b3JlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LCBpbnQgcHJp
bykKIAlrZXJuZWxfY29udGV4dF9jbG9zZShjdHgpOwogZXJyX3NwaW46CiAJaWd0X3NwaW5uZXJf
ZmluaSgmc3Bpbik7Ci1lcnJfdW5sb2NrOgotCWludGVsX3J1bnRpbWVfcG1fcHV0KCZpOTE1LT5y
dW50aW1lX3BtLCB3YWtlcmVmKTsKLQltdXRleF91bmxvY2soJmk5MTUtPmRybS5zdHJ1Y3RfbXV0
ZXgpOwogCXJldHVybiBlcnI7CiB9CiAKLS0gCjIuMjMuMAoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
