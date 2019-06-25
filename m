Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BECD54FA1
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Jun 2019 15:03:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 90BC76E111;
	Tue, 25 Jun 2019 13:03:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9CA026E10D
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Jun 2019 13:03:18 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17018180-1500050 
 for multiple; Tue, 25 Jun 2019 14:01:35 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 25 Jun 2019 14:01:24 +0100
Message-Id: <20190625130128.11009-16-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190625130128.11009-1-chris@chris-wilson.co.uk>
References: <20190625130128.11009-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 16/20] drm/i915/gt: Drop stale commentary for
 timeline density
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

V2Ugbm8gbG9uZ2VyIGFsbG9jYXRlIGEgY29udGluZ3VvdXMgc2V0IG9mIHRpbWVsaW5lIGlkcyBm
b3IgYWxsIGVuZ2luZXMKdXBvbiBjcmVhdGlvbiwgc28gd2Ugbm8gbG9uZ2VyIHNob3VsZCBhc3N1
bWUgdGhhdCB0aGUgdGltZWxpbmVzIGFyZQpkZW5zaXR5IGFsbG9jYXRlZCB3aXRoaW4gYSBjb250
ZXh0LiBIb3BlZnVsbHksIHN0aWxsIGRlbnNlIGVub3VnaCBmb3IgdXMKdG8gdGFrZSBhZHZhbnRh
Z2Ugb2YgdGhlIGNvbXByZXNzZWQgcmFkaXggdHJlZS4KClNpZ25lZC1vZmYtYnk6IENocmlzIFdp
bHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L2ludGVsX3RpbWVsaW5lLmMgfCAxNCArKy0tLS0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQs
IDIgaW5zZXJ0aW9ucygrKSwgMTIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3QvaW50ZWxfdGltZWxpbmUuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L2ludGVsX3RpbWVsaW5lLmMKaW5kZXggN2ZiNWRlZmQ5ZTcxLi43YjQ3NmNkNTVkYWMgMTAwNjQ0
Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3RpbWVsaW5lLmMKKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfdGltZWxpbmUuYwpAQCAtMjEwLDIxICsyMTAsMTEg
QEAgaW50IGludGVsX3RpbWVsaW5lX2luaXQoc3RydWN0IGludGVsX3RpbWVsaW5lICp0aW1lbGlu
ZSwKIHsKIAl2b2lkICp2YWRkcjsKIAotCS8qCi0JICogSWRlYWxseSB3ZSB3YW50IGEgc2V0IG9m
IGVuZ2luZXMgb24gYSBzaW5nbGUgbGVhZiBhcyB3ZSBleHBlY3QKLQkgKiB0byBtb3N0bHkgYmUg
dHJhY2tpbmcgc3luY2hyb25pc2F0aW9uIGJldHdlZW4gZW5naW5lcy4gSXQgaXMgbm90Ci0JICog
YSBodWdlIGlzc3VlIGlmIHRoaXMgaXMgbm90IHRoZSBjYXNlLCBidXQgd2UgbWF5IHdhbnQgdG8g
bWl0aWdhdGUKLQkgKiBhbnkgcGFnZSBjcm9zc2luZyBwZW5hbHRpZXMgaWYgdGhleSBiZWNvbWUg
YW4gaXNzdWUuCi0JICoKLQkgKiBDYWxsZWQgZHVyaW5nIGVhcmx5X2luaXQgYmVmb3JlIHdlIGtu
b3cgaG93IG1hbnkgZW5naW5lcyB0aGVyZSBhcmUuCi0JICovCi0JQlVJTERfQlVHX09OKEtTWU5D
TUFQIDwgSTkxNV9OVU1fRU5HSU5FUyk7Ci0KLQl0aW1lbGluZS0+Z3QgPSBndDsKLQogCWtyZWZf
aW5pdCgmdGltZWxpbmUtPmtyZWYpOwogCWF0b21pY19zZXQoJnRpbWVsaW5lLT5waW5fY291bnQs
IDApOwogCisJdGltZWxpbmUtPmd0ID0gZ3Q7CisKIAl0aW1lbGluZS0+aGFzX2luaXRpYWxfYnJl
YWRjcnVtYiA9ICFod3NwOwogCXRpbWVsaW5lLT5od3NwX2NhY2hlbGluZSA9IE5VTEw7CiAKLS0g
CjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
