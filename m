Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B959107A1
	for <lists+intel-gfx@lfdr.de>; Wed,  1 May 2019 13:52:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 19709892F0;
	Wed,  1 May 2019 11:52:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BBE30892DB
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 May 2019 11:52:41 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 16415737-1500050 
 for multiple; Wed, 01 May 2019 12:45:42 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  1 May 2019 12:45:34 +0100
Message-Id: <20190501114541.10077-7-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190501114541.10077-1-chris@chris-wilson.co.uk>
References: <20190501114541.10077-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 07/14] drm/i915: Stop spinning for DROP_IDLE
 (debugfs/i915_drop_caches)
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

SWYgdGhlIHVzZXIgaXMgcmFjaW5nIGEgY2FsbCB0byBkZWJ1Z2ZzL2k5MTVfZHJvcF9jYWNoZXMg
d2l0aCBvbmdvaW5nCnN1Ym1pc3Npb24gZnJvbSBhbm90aGVyIHRocmVhZC9wcm9jZXNzLCB3ZSBt
YXkgbmV2ZXIgZW5kIHVwIGlkbGluZyB0aGUKR1BVIGFuZCBiZSB1bmludGVycnVwdGlibHkgc3Bp
bm5pbmcgaW4gZGVidWdmcy9pOTE1X2Ryb3BfY2FjaGVzIHRyeWluZwp0byBjYXRjaCBhbiBpZGxl
IG1vbWVudC4KCkp1c3QgZmx1c2ggdGhlIHdvcmsgb25jZSwgdGhhdCBzaG91bGQgYmUgZW5vdWdo
IHRvIHBhcmsgdGhlIHN5c3RlbSB1bmRlcgpjb3JyZWN0IGNvbmRpdGlvbnMuIE91dHNpZGUgb2Yg
dGhvc2Ugd2UgZWl0aGVyIGhhdmUgYSBkcml2ZXIgYnVnIG9yIHRoZQp1c2VyIGlzIHJhY2luZyB0
aGVtc2VsdmVzLiBTYWRseSwgYmVjYXVzZSB0aGUgdXNlciBtYXkgYmUgcHJvdm9raW5nIHRoZQp1
bndhbnRlZCBzaXR1YXRpb24gd2UgY2FuJ3QgcHV0IGEgd2FybiBoZXJlIHRvIGF0dHJhY3QgYXR0
ZW50aW9uIHRvIGEKcHJvYmFibGUgYnVnLgoKU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxj
aHJpc0BjaHJpcy13aWxzb24uY28udWs+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9k
ZWJ1Z2ZzLmMgfCA0ICstLS0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMyBkZWxl
dGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RlYnVnZnMu
YyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZGVidWdmcy5jCmluZGV4IDdlODg5OGQwYjc4
Yi4uMmVjZWZhY2IxZTY2IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rl
YnVnZnMuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RlYnVnZnMuYwpAQCAtMzkz
Myw5ICszOTMzLDcgQEAgaTkxNV9kcm9wX2NhY2hlc19zZXQodm9pZCAqZGF0YSwgdTY0IHZhbCkK
IAlmc19yZWNsYWltX3JlbGVhc2UoR0ZQX0tFUk5FTCk7CiAKIAlpZiAodmFsICYgRFJPUF9JRExF
KSB7Ci0JCWRvIHsKLQkJCWZsdXNoX2RlbGF5ZWRfd29yaygmaTkxNS0+Z2VtLnJldGlyZV93b3Jr
KTsKLQkJfSB3aGlsZSAoUkVBRF9PTkNFKGk5MTUtPmd0LmF3YWtlKSk7CisJCWZsdXNoX2RlbGF5
ZWRfd29yaygmaTkxNS0+Z2VtLnJldGlyZV93b3JrKTsKIAkJZmx1c2hfd29yaygmaTkxNS0+Z2Vt
LmlkbGVfd29yayk7CiAJfQogCi0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeA==
