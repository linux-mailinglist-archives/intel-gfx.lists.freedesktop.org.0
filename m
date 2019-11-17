Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D877FFBA9
	for <lists+intel-gfx@lfdr.de>; Sun, 17 Nov 2019 22:03:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 935D289CDB;
	Sun, 17 Nov 2019 21:03:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4512489F85
 for <intel-gfx@lists.freedesktop.org>; Sun, 17 Nov 2019 21:03:45 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19234664-1500050 
 for multiple; Sun, 17 Nov 2019 21:03:32 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sun, 17 Nov 2019 21:03:25 +0000
Message-Id: <20191117210330.2190963-9-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191117210330.2190963-1-chris@chris-wilson.co.uk>
References: <20191117210330.2190963-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 09/14] drm/i915/gt: Schedule next retirement
 worker first
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

QXMgd2UgbWF5IHBhcmsgdGhlIGd0IGR1cmluZyByZXF1ZXN0IHJldGlyZW1lbnQsIHdlIG1heSB0
aGVuIGNhbmNlbCB0aGUKcmV0aXJlbWVudCB3b3JrZXIgb25seSB0byB0aGVuIHByb2dyYW0gdGhl
IGRlbGF5ZWQgd29ya2VyIG9uY2UgbW9yZS4KCklmIHdlIHNjaGVkdWxlIHRoZSBuZXh0IGRlbGF5
ZWQgcmV0aXJlbWVudCB3b3JrZXIgZmlyc3QsIGlmIHdlIHRoZW4gcGFyawp0aGUgZ3QsIHRoZSB3
b3JrIHJlbWFpbiBjYW5jZWxsZWQgW3VudGlsIHdlIHVucGFya10uCgpTaWduZWQtb2ZmLWJ5OiBD
aHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KLS0tCiBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9ndC9pbnRlbF9ndF9yZXF1ZXN0cy5jIHwgMiArLQogMSBmaWxlIGNoYW5nZWQsIDEg
aW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvaW50ZWxfZ3RfcmVxdWVzdHMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2lu
dGVsX2d0X3JlcXVlc3RzLmMKaW5kZXggNzQzNTZkYjQzMzI1Li40ZGMzY2JlYjFiMzYgMTAwNjQ0
Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0X3JlcXVlc3RzLmMKKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3RfcmVxdWVzdHMuYwpAQCAtMTA5LDkgKzEw
OSw5IEBAIHN0YXRpYyB2b2lkIHJldGlyZV93b3JrX2hhbmRsZXIoc3RydWN0IHdvcmtfc3RydWN0
ICp3b3JrKQogCXN0cnVjdCBpbnRlbF9ndCAqZ3QgPQogCQljb250YWluZXJfb2Yod29yaywgdHlw
ZW9mKCpndCksIHJlcXVlc3RzLnJldGlyZV93b3JrLndvcmspOwogCi0JaW50ZWxfZ3RfcmV0aXJl
X3JlcXVlc3RzKGd0KTsKIAlzY2hlZHVsZV9kZWxheWVkX3dvcmsoJmd0LT5yZXF1ZXN0cy5yZXRp
cmVfd29yaywKIAkJCSAgICAgIHJvdW5kX2ppZmZpZXNfdXBfcmVsYXRpdmUoSFopKTsKKwlpbnRl
bF9ndF9yZXRpcmVfcmVxdWVzdHMoZ3QpOwogfQogCiB2b2lkIGludGVsX2d0X2luaXRfcmVxdWVz
dHMoc3RydWN0IGludGVsX2d0ICpndCkKLS0gCjIuMjQuMAoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
