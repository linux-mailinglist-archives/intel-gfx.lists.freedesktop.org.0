Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AE5C76CBE7
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jul 2019 11:29:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D881C6E365;
	Thu, 18 Jul 2019 09:29:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5AA3B6E365
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Jul 2019 09:29:54 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17394170-1500050 
 for multiple; Thu, 18 Jul 2019 10:29:43 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 18 Jul 2019 10:29:42 +0100
Message-Id: <20190718092942.23179-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/guc: Allocate non-swappable memory for
 internal objects
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

QWxsIGludGVybmFsIEd1QyBvYmplY3RzIGFyZSBwZXJtYS1waW5uZWQgaW50byB0aGUgR0dUVCBh
bmQgdGh1cwpub3Qtc3dhcHBlZC4gV2UgZG8gbm90IG5lZWQgdG8gYWxsb2NhdGUgYSBzaG1lbWZz
IGlub2RlIGZvciB0aGVzZSwKbWVyZWx5IGEgY29sbGVjdGlvbiBvZiBwYWdlcyB0byBiZSBrZXB0
IGluIG1lbW9yeS4KClNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2ls
c29uLmNvLnVrPgpDYzogRGFuaWVsZSBDZXJhb2xvIFNwdXJpbyA8ZGFuaWVsZS5jZXJhb2xvc3B1
cmlvQGludGVsLmNvbT4KQ2M6IE1pY2hhbCBXYWpkZWN6a28gPG1pY2hhbC53YWpkZWN6a29AaW50
ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2d1Yy5jIHwgMiAr
LQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfZ3VjLmMgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9ndWMuYwppbmRleCA4M2YyYzE5NzM3NWYuLmQ2NmY4Zjlj
NTY1NCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfZ3VjLmMK
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfZ3VjLmMKQEAgLTU4Miw3ICs1
ODIsNyBAQCBzdHJ1Y3QgaTkxNV92bWEgKmludGVsX2d1Y19hbGxvY2F0ZV92bWEoc3RydWN0IGlu
dGVsX2d1YyAqZ3VjLCB1MzIgc2l6ZSkKIAl1NjQgZmxhZ3M7CiAJaW50IHJldDsKIAotCW9iaiA9
IGk5MTVfZ2VtX29iamVjdF9jcmVhdGVfc2htZW0oZ3QtPmk5MTUsIHNpemUpOworCW9iaiA9IGk5
MTVfZ2VtX29iamVjdF9jcmVhdGVfaW50ZXJuYWwoZ3QtPmk5MTUsIHNpemUpOwogCWlmIChJU19F
UlIob2JqKSkKIAkJcmV0dXJuIEVSUl9DQVNUKG9iaik7CiAKLS0gCjIuMjIuMAoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcg
bGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
