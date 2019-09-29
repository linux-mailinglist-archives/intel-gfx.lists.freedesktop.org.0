Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 722E1C13F8
	for <lists+intel-gfx@lfdr.de>; Sun, 29 Sep 2019 10:34:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0BF2D6E2DA;
	Sun, 29 Sep 2019 08:34:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2415F6E2DA
 for <intel-gfx@lists.freedesktop.org>; Sun, 29 Sep 2019 08:34:08 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18654808-1500050 
 for multiple; Sun, 29 Sep 2019 09:33:43 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sun, 29 Sep 2019 09:33:38 +0100
Message-Id: <20190929083338.24816-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Initialise breadcrumb lists on the
 virtual engine
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

V2l0aCBkZWZlcnJpbmcgdGhlIGJyZWFkY3J1bWIgc2lnbmFsbGluZyB0byB0aGUgdmlydHVhbCBl
bmdpbmUgKHRoYW5rcwpwcmVlbXB0LXRvLWJ1c3kpIHdlIG5lZWQgdG8gbWFrZSBzdXJlIHRoZSBs
aXN0cyBhbmQgaXJxLXdvcmtlciBhcmUgcmVhZHkKdG8gc2VuZCBhIHNpZ25hbC4KCkZpeGVzOiBj
YjIzNzdhOTE5YmIgKCJkcm0vaTkxNTogRml4dXAgcHJlZW1wdC10by1idXN5IHZzIHJlc2V0IG9m
IGEgdmlydHVhbCByZXF1ZXN0IikKU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0Bj
aHJpcy13aWxzb24uY28udWs+CkNjOiBNaWthIEt1b3BwYWxhIDxtaWthLmt1b3BwYWxhQGxpbnV4
LmludGVsLmNvbT4KQ2M6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+
Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMgfCAxICsKIDEgZmlsZSBj
aGFuZ2VkLCAxIGluc2VydGlvbigrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L2ludGVsX2xyYy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMKaW5k
ZXggNDVmZTg3YTU5Nzk2Li5kZWQ2MThiY2E1ODcgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L2ludGVsX2xyYy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVs
X2xyYy5jCkBAIC00MTc3LDYgKzQxNzcsNyBAQCBpbnRlbF9leGVjbGlzdHNfY3JlYXRlX3ZpcnR1
YWwoc3RydWN0IGk5MTVfZ2VtX2NvbnRleHQgKmN0eCwKIAlzbnByaW50Zih2ZS0+YmFzZS5uYW1l
LCBzaXplb2YodmUtPmJhc2UubmFtZSksICJ2aXJ0dWFsIik7CiAKIAlpbnRlbF9lbmdpbmVfaW5p
dF9hY3RpdmUoJnZlLT5iYXNlLCBFTkdJTkVfVklSVFVBTCk7CisJaW50ZWxfZW5naW5lX2luaXRf
YnJlYWRjcnVtYnMoJnZlLT5iYXNlKTsKIAogCWludGVsX2VuZ2luZV9pbml0X2V4ZWNsaXN0cygm
dmUtPmJhc2UpOwogCi0tIAoyLjIzLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeA==
