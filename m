Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BFC4114F82
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Dec 2019 11:56:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B2DB6F9CF;
	Fri,  6 Dec 2019 10:56:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8AFEF6F9CE
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Dec 2019 10:55:57 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19482515-1500050 
 for multiple; Fri, 06 Dec 2019 10:55:29 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  6 Dec 2019 10:55:24 +0000
Message-Id: <20191206105527.1130413-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191206105527.1130413-1-chris@chris-wilson.co.uk>
References: <20191206105527.1130413-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/5] drm/i915: Claim vma while under closed_lock
 in i915_vma_parked()
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
Cc: matthew.auld@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UmVtb3ZlIHRoZSB2bWEgd2Ugd2lzaCB0byBkZXN0cm95IGZyb20gdGhlIGd0LT5jbG9zZWRfbGlz
dCB0byBhdm9pZApoYXZpbmcgdHdvIGk5MTVfdm1hX3BhcmtlZCgpIHRyeSBhbmQgZnJlZSBpdC4K
ClNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgot
LS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfdm1hLmMgfCA0ICsrKy0KIDEgZmlsZSBjaGFu
Z2VkLCAzIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X3ZtYS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV92bWEu
YwppbmRleCA2ZGIzNWI5ZGVhZDguLjljYTY2NjRjMTkwYyAxMDA2NDQKLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV92bWEuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3Zt
YS5jCkBAIC0xMDUzLDcgKzEwNTMsOSBAQCB2b2lkIGk5MTVfdm1hX3BhcmtlZChzdHJ1Y3QgaW50
ZWxfZ3QgKmd0KQogCQlpZiAoIWtyZWZfZ2V0X3VubGVzc196ZXJvKCZvYmotPmJhc2UucmVmY291
bnQpKQogCQkJY29udGludWU7CiAKLQkJaWYgKCFpOTE1X3ZtX3RyeW9wZW4odm0pKSB7CisJCWlm
IChpOTE1X3ZtX3RyeW9wZW4odm0pKSB7CisJCQlsaXN0X2RlbF9pbml0KCZ2bWEtPmNsb3NlZF9s
aW5rKTsKKwkJfSBlbHNlIHsKIAkJCWk5MTVfZ2VtX29iamVjdF9wdXQob2JqKTsKIAkJCW9iaiA9
IE5VTEw7CiAJCX0KLS0gCjIuMjQuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4
