Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DBE87FB63E
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Nov 2019 18:20:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2C02F6EDBC;
	Wed, 13 Nov 2019 17:20:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8291B6EDBC
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Nov 2019 17:20:04 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19190594-1500050 
 for multiple; Wed, 13 Nov 2019 17:19:46 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 13 Nov 2019 17:19:44 +0000
Message-Id: <20191113171944.19308-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/fbdev: Hide smem_start from userspace
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RG8gbm90IGxlYWsgb3VyIGludGVybmFsIGtlcm5lbCBhZGRyZXNzIGZvciByYW5kb20gdXNlcnNw
YWNlIHRvIGFidXNlLgpEYW5pZWwgYWRkZWQgdGhlIHN1cHBvcnQgdG8gZmJkZXYgdG8gZmlsdGVy
IG91dCB0aGUgcGh5c2ljYWwgYWRkcmVzc2VzCmJlaW5nIGV4cG9zZWQgYnkgZmJkZXYsIHB1dCB0
aGF0IHRvIHVzZSB0byBwcm90ZWN0IG91cnNlbHZlcy4KCkJ1Z3ppbGxhOiBodHRwczovL2J1Z3Mu
ZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMTIyNTYKRml4ZXM6IDVmODg5YjlhNjFk
ZCAoImRybS9pOTE1OiBEaXNyZWdhcmQgZHJtX21vZGVfY29uZmlnLmZiX2Jhc2UiKQpSZWZlcmVu
Y2VzOiBkYTZjNzcwN2NhZjMgKCJmYmRldjogQWRkIEZCSU5GT19ISURFX1NNRU1fU1RBUlQgZmxh
ZyIpClNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVr
PgpDYzogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBmZndsbC5jaD4KQ2M6IE1hYXJ0ZW4g
TGFua2hvcnN0IDxtYWFydGVuLmxhbmtob3JzdEBsaW51eC5pbnRlbC5jb20+Ci0tLQogZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmRldi5jIHwgNSArKystLQogMSBmaWxlIGNo
YW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiZGV2LmMgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2ZiZGV2LmMKaW5kZXggM2QxMDYxNDcwZTc2Li5iZmYzMTE1NjE1
OTcgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJkZXYu
YworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiZGV2LmMKQEAgLTIy
Niw4ICsyMjYsOCBAQCBzdGF0aWMgaW50IGludGVsZmJfY3JlYXRlKHN0cnVjdCBkcm1fZmJfaGVs
cGVyICpoZWxwZXIsCiAJCWdvdG8gb3V0X3VucGluOwogCX0KIAotCWlmYmRldi0+aGVscGVyLmZi
ID0gJmlmYmRldi0+ZmItPmJhc2U7Ci0KKwkvKiBkb24ndCBsZWFrIGFueSBwaHlzaWNhbCBhZGRy
ZXNzZXMgdG8gdXNlcnNwYWNlICovCisJaW5mby0+ZmxhZ3MgfD0gRkJJTkZPX0hJREVfU01FTV9T
VEFSVDsKIAlpbmZvLT5mYm9wcyA9ICZpbnRlbGZiX29wczsKIAogCS8qIHNldHVwIGFwZXJ0dXJl
IGJhc2Uvc2l6ZSBmb3IgdmVzYWZiIHRha2VvdmVyICovCkBAIC0yNDcsNiArMjQ3LDcgQEAgc3Rh
dGljIGludCBpbnRlbGZiX2NyZWF0ZShzdHJ1Y3QgZHJtX2ZiX2hlbHBlciAqaGVscGVyLAogCWlu
Zm8tPmZpeC5zbWVtX3N0YXJ0ID0gKHVuc2lnbmVkIGxvbmcpaW5mby0+c2NyZWVuX2Jhc2U7CiAJ
aW5mby0+Zml4LnNtZW1fbGVuID0gaW5mby0+c2NyZWVuX3NpemU7CiAKKwlpZmJkZXYtPmhlbHBl
ci5mYiA9ICZpZmJkZXYtPmZiLT5iYXNlOwogCWRybV9mYl9oZWxwZXJfZmlsbF9pbmZvKGluZm8s
ICZpZmJkZXYtPmhlbHBlciwgc2l6ZXMpOwogCiAJLyogSWYgdGhlIG9iamVjdCBpcyBzaG1lbWZz
IGJhY2tlZCwgaXQgd2lsbCBoYXZlIGdpdmVuIHVzIHplcm9lZCBwYWdlcy4KLS0gCjIuMjQuMAoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
