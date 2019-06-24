Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E9EB450DAB
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Jun 2019 16:17:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 48C2F89BAC;
	Mon, 24 Jun 2019 14:17:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E516989BAC
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Jun 2019 14:17:05 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17006288-1500050 
 for multiple; Mon, 24 Jun 2019 15:16:33 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 24 Jun 2019 15:16:30 +0100
Message-Id: <20190624141630.11015-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gem: Clear read/write domains for GPU
 clear
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
Cc: Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VXBkYXRlIHRoZSBkb21haW5zIGZvciB0aGUgd3JpdGUgdmlhIHRoZSBHUFUgc28gdGhhdCB3ZSBk
byBub3QKc2hvcnRjaXJjdWl0IGFueSBzZXQtZG9tYWluIHdhaXQgYWZ0ZXJ3YXJkcy4KCkJ1Z3pp
bGxhOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMTA5NzgK
Rml4ZXM6IGIyZGJmOGQ5ODJhNCAoImRybS9pOTE1L2JsdDogUmVtb3ZlIHJlY3Vyc2l2ZSB2bWEt
PmxvY2siKQpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5j
by51az4KQ2M6IE1hdHRoZXcgQXVsZCA8bWF0dGhldy5hdWxkQGludGVsLmNvbT4KLS0tCiBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fY2xpZW50X2JsdC5jIHwgMyArKy0KIDEgZmls
ZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fY2xpZW50X2JsdC5jIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2NsaWVudF9ibHQuYwppbmRleCA5YjAxYzNiNWIzMWQu
LjZmNTM3ZThlNGRlYSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVf
Z2VtX2NsaWVudF9ibHQuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1f
Y2xpZW50X2JsdC5jCkBAIC0xNjIsMTEgKzE2MiwxMiBAQCBzdGF0aWMgdm9pZCBjbGVhcl9wYWdl
c193b3JrZXIoc3RydWN0IHdvcmtfc3RydWN0ICp3b3JrKQogCQlnb3RvIG91dF9zaWduYWw7CiAK
IAlpZiAob2JqLT5jYWNoZV9kaXJ0eSkgewotCQlvYmotPndyaXRlX2RvbWFpbiA9IDA7CiAJCWlm
IChpOTE1X2dlbV9vYmplY3RfaGFzX3N0cnVjdF9wYWdlKG9iaikpCiAJCQlkcm1fY2xmbHVzaF9z
Zyh3LT5zbGVldmUtPnBhZ2VzKTsKIAkJb2JqLT5jYWNoZV9kaXJ0eSA9IGZhbHNlOwogCX0KKwlv
YmotPnJlYWRfZG9tYWlucyA9IEk5MTVfR0VNX0dQVV9ET01BSU5TOworCW9iai0+d3JpdGVfZG9t
YWluID0gMDsKIAogCS8qIFhYWDogd2UgbmVlZCB0byBraWxsIHRoaXMgKi8KIAltdXRleF9sb2Nr
KCZpOTE1LT5kcm0uc3RydWN0X211dGV4KTsKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
