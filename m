Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B50691154D1
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Dec 2019 17:04:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 451256FA54;
	Fri,  6 Dec 2019 16:04:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 078D66FA53
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Dec 2019 16:04:39 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19486874-1500050 
 for multiple; Fri, 06 Dec 2019 16:04:29 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  6 Dec 2019 16:04:26 +0000
Message-Id: <20191206160428.1503343-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/3] drm/i915: Check for error before calling
 cmpxchg()
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

T25seSBkbyB0aGUgbG9ja2VkIGNvbXBhcmUgb2YgdGhlIGV4aXN0aW5nIGZlbmNlLT5lcnJvciBp
ZiB3ZSBhY3R1YWxseQpuZWVkIHRvIHNldCBhbiBlcnJvci4gQXMgd2UgdGVuZCB0byBjYWxsIGk5
MTVfc3dfZmVuY2Vfc2V0X2Vycm9yX29uY2UoKQp1bmNvbmRpdGlvbmFsbHksIGl0IHNhdmVzIG9u
IHR5cGluZyB0byBwdXQgdGhlIGNvbW1vbiBoYXMtZXJyb3IgY2hlY2sKaW50byB0aGUgaW5saW5l
LgoKU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+
Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9zd19mZW5jZS5oIHwgMyArKy0KIDEgZmls
ZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3N3X2ZlbmNlLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X3N3X2ZlbmNlLmgKaW5kZXggMWU5MGQ5YTUxYmQyLi4xOWU4MDZjZTQzYmMgMTAwNjQ0
Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfc3dfZmVuY2UuaAorKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X3N3X2ZlbmNlLmgKQEAgLTExMiw3ICsxMTIsOCBAQCBzdGF0aWMg
aW5saW5lIHZvaWQgaTkxNV9zd19mZW5jZV93YWl0KHN0cnVjdCBpOTE1X3N3X2ZlbmNlICpmZW5j
ZSkKIHN0YXRpYyBpbmxpbmUgdm9pZAogaTkxNV9zd19mZW5jZV9zZXRfZXJyb3Jfb25jZShzdHJ1
Y3QgaTkxNV9zd19mZW5jZSAqZmVuY2UsIGludCBlcnJvcikKIHsKLQljbXB4Y2hnKCZmZW5jZS0+
ZXJyb3IsIDAsIGVycm9yKTsKKwlpZiAodW5saWtlbHkoZXJyb3IpKQorCQljbXB4Y2hnKCZmZW5j
ZS0+ZXJyb3IsIDAsIGVycm9yKTsKIH0KIAogI2VuZGlmIC8qIF9JOTE1X1NXX0ZFTkNFX0hfICov
Ci0tIAoyLjI0LjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eA==
