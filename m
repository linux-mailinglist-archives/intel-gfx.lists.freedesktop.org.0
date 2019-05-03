Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 24B6512CF9
	for <lists+intel-gfx@lfdr.de>; Fri,  3 May 2019 13:54:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3A2CC89D61;
	Fri,  3 May 2019 11:54:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5EF7D89D5C
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 May 2019 11:54:12 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 16440742-1500050 
 for multiple; Fri, 03 May 2019 12:52:26 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  3 May 2019 12:52:13 +0100
Message-Id: <20190503115225.30831-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 01/13] drm/i915: Assert breadcrumbs are
 correctly ordered in the signal handler
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

SW5zaWRlIHRoZSBzaWduYWwgaGFuZGxlciwgd2UgZXhwZWN0IHRoZSByZXF1ZXN0cyB0byBiZSBv
cmRlcmVkIGJ5IHRoZWlyCmJyZWFkY3J1bWIgc3VjaCB0aGF0IG5vIGxhdGVyIHJlcXVlc3QgbWF5
IGJlIGNvbXBsZXRlIGlmIHdlIGZpbmQgYW4KZWFybGllciBpbmNvbXBsZXRlLiBBZGQgYW4gYXNz
ZXJ0IHRvIGNoZWNrIHRoYXQgdGhlIG5leHQgYnJlYWRjcnVtYgpzaG91bGQgbm90IGJlIGxvZ2lj
YWxseSBiZWZvcmUgdGhlIGN1cnJlbnQuCgpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNo
cmlzQGNocmlzLXdpbHNvbi5jby51az4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRl
bF9icmVhZGNydW1icy5jIHwgNiArKysrKysKIDEgZmlsZSBjaGFuZ2VkLCA2IGluc2VydGlvbnMo
KykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9icmVhZGNydW1i
cy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfYnJlYWRjcnVtYnMuYwppbmRleCAz
Y2JmZmQ0MDBiMWIuLmE2ZmZiMjVmNzJhMiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvaW50ZWxfYnJlYWRjcnVtYnMuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9p
bnRlbF9icmVhZGNydW1icy5jCkBAIC05OSw2ICs5OSwxMiBAQCB2b2lkIGludGVsX2VuZ2luZV9i
cmVhZGNydW1ic19pcnEoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKQogCQkJc3RydWN0
IGk5MTVfcmVxdWVzdCAqcnEgPQogCQkJCWxpc3RfZW50cnkocG9zLCB0eXBlb2YoKnJxKSwgc2ln
bmFsX2xpbmspOwogCisJCQlHRU1fQlVHX09OKG5leHQgIT0gJmNlLT5zaWduYWxzICYmCisJCQkJ
ICAgaTkxNV9zZXFub19wYXNzZWQocnEtPmZlbmNlLnNlcW5vLAorCQkJCQkJICAgICBsaXN0X2Vu
dHJ5KG5leHQsCisJCQkJCQkJCXR5cGVvZigqcnEpLAorCQkJCQkJCQlzaWduYWxfbGluayktPmZl
bmNlLnNlcW5vKSk7CisKIAkJCWlmICghX19yZXF1ZXN0X2NvbXBsZXRlZChycSkpCiAJCQkJYnJl
YWs7CiAKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4
