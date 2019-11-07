Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 721EAF3472
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Nov 2019 17:13:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C55416E4CB;
	Thu,  7 Nov 2019 16:13:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 91A9E6E4C7
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Nov 2019 16:13:24 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19118052-1500050 
 for multiple; Thu, 07 Nov 2019 16:13:04 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  7 Nov 2019 16:13:03 +0000
Message-Id: <20191107161303.5341-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Taint the kernel on dumping the GEM
 ftrace buffer
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

QXMgdGhlIGZ0cmFjZSBidWZmZXIgaXMgc2luZ2xlIHNob3QsIG9uY2UgZHVtcGVkIGl0IHdpbGwg
bm90IHVwZGF0ZS4gQXMKc3VjaCwgaXQgb25seSBwcm92aWRlcyBpbmZvcm1hdGlvbiBmb3IgdGhl
IGZpcnN0IGJ1ZyBhbmQgYWxsIHN1YnNlcXVlbnQKYnVncyBhcmUgbm9pc2UuIFRoZSBnb2FsIG9m
IENJIGlzIHRvIGhhdmUgemVybyBidWdzLCBzbyB0YWludCB0aGUga2VybmVsCmNhdXNpbmcgQ0kg
dG8gcmVib290IHRoZSBtYWNoaW5lOyBmaXggdGhlIGJ1ZyBhbmQgbW92ZSBvbi4KClNpZ25lZC1v
ZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgpDYzogTWlrYSBL
dW9wcGFsYSA8bWlrYS5rdW9wcGFsYUBsaW51eC5pbnRlbC5jb20+CkNjOiBUdnJ0a28gVXJzdWxp
biA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfZ2VtLmggfCA1ICsrKy0tCiAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAyIGRl
bGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtLmgg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbS5oCmluZGV4IGY2Zjk2NzU4NDhiOC4uYjMy
MWU0NTQ0ZjEwIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbS5oCisr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtLmgKQEAgLTY4LDkgKzY4LDEwIEBAIHN0
cnVjdCBkcm1faTkxNV9wcml2YXRlOwogCXByX2VycihfX1ZBX0FSR1NfXyk7CQkJCQkJXAogCXRy
YWNlX3ByaW50ayhfX1ZBX0FSR1NfXyk7CQkJCQlcCiB9IHdoaWxlICgwKQotI2RlZmluZSBHRU1f
VFJBQ0VfRFVNUCgpIGZ0cmFjZV9kdW1wKERVTVBfQUxMKQorI2RlZmluZSBHRU1fVFJBQ0VfRFVN
UCgpIFwKKwlkbyB7IGZ0cmFjZV9kdW1wKERVTVBfQUxMKTsgc2V0X3RhaW50X2Zvcl9DSShUQUlO
X1dBUk4pOyB9IHdoaWxlICgwKQogI2RlZmluZSBHRU1fVFJBQ0VfRFVNUF9PTihleHByKSBcCi0J
ZG8geyBpZiAoZXhwcikgZnRyYWNlX2R1bXAoRFVNUF9BTEwpOyB9IHdoaWxlICgwKQorCWRvIHsg
aWYgKGV4cHIpIEdFTV9UUkFDRV9EVU1QKCk7IH0gd2hpbGUgKDApCiAjZWxzZQogI2RlZmluZSBH
RU1fVFJBQ0UoLi4uKSBkbyB7IH0gd2hpbGUgKDApCiAjZGVmaW5lIEdFTV9UUkFDRV9FUlIoLi4u
KSBkbyB7IH0gd2hpbGUgKDApCi0tIAoyLjI0LjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeA==
