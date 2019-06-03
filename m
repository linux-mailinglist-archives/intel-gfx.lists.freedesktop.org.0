Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BF283319C
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Jun 2019 16:01:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 53EB188FAD;
	Mon,  3 Jun 2019 14:01:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ED96A88F5A
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Jun 2019 14:01:04 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 16775785-1500050 
 for multiple; Mon, 03 Jun 2019 14:59:15 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  3 Jun 2019 14:59:01 +0100
Message-Id: <20190603135910.15979-6-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190603135910.15979-1-chris@chris-wilson.co.uk>
References: <20190603135910.15979-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 06/15] drm/i915: Report an earlier wedged event
 when suspending the engines
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

T24gaTkxNV9nZW1fbG9hZF9wb3dlcl9jb250ZXh0KCkgd2UgZG8gY2FyZSB3aGV0aGVyIG9yIG5v
dCB3ZSBzdWNjZWVkIGluCmNvbXBsZXRpbmcgdGhlIHN3aXRjaCBiYWNrIHRvIHRoZSBrZXJuZWwg
Y29udGV4dCAodmlhIGlkbGluZyB0aGUKZW5naW5lcykuIEN1cnJlbnRseSwgd2UgZGV0ZWN0IGlm
IGFuIGVycm9yIG9jY3VycyB3aGlsZSB3ZSB3YWl0LCBidXQgd2UKZG8gbm90IHJlcG9ydCBvbmUg
aWYgaXQgb2NjdXJyZWQgYmVmb3JlaGFuZCAoYW5kIHRoZSBzdGF0dXMgb2YgdGhlCnN3aXRjaCBp
cyB1bmRlZmluZWQpLiBDaGVjayB0aGUgY3VycmVudCB0ZXJtaW5hbGx5IHdlZGdlZCBzdGF0dXMg
b24KZW50ZXJpbmcgdGhlIHdhaXQsIGFuZCByZXBvcnQgaXQgYWZ0ZXIgZmx1c2hpbmcgdGhlIHJl
cXVlc3RzLCBhcyBpZiBpdApoYWQgb2NjdXJyZWQgZHVyaW5nIG91ciBvd24gd2FpdC4KClNpZ25l
ZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgotLS0KIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9wbS5jIHwgMiArLQogMSBmaWxlIGNoYW5n
ZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3BtLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0v
aTkxNV9nZW1fcG0uYwppbmRleCA4OWJiNmQ4MjJmNmUuLmY0MGYxM2MwYjhiNyAxMDA2NDQKLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3BtLmMKKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3BtLmMKQEAgLTkwLDcgKzkwLDcgQEAgc3RhdGljIGlu
dCBwbV9ub3RpZmllcihzdHJ1Y3Qgbm90aWZpZXJfYmxvY2sgKm5iLAogCiBzdGF0aWMgYm9vbCBz
d2l0Y2hfdG9fa2VybmVsX2NvbnRleHRfc3luYyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkx
NSkKIHsKLQlib29sIHJlc3VsdCA9IHRydWU7CisJYm9vbCByZXN1bHQgPSAhaTkxNV90ZXJtaW5h
bGx5X3dlZGdlZChpOTE1KTsKIAogCWRvIHsKIAkJaWYgKGk5MTVfZ2VtX3dhaXRfZm9yX2lkbGUo
aTkxNSwKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4
