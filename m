Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AD6EA6CC2A
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jul 2019 11:46:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8113689D49;
	Thu, 18 Jul 2019 09:46:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DD7BA89D49
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Jul 2019 09:46:34 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17394657-1500050 
 for multiple; Thu, 18 Jul 2019 10:46:20 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 18 Jul 2019 10:46:18 +0100
Message-Id: <20190718094618.22472-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Flush stale cachelines on
 set-cache-level
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

RW5zdXJlIHRoYXQgd2UgZmx1c2ggYW55IGNhY2hlIGRpcnQgb3V0IHRvIG1haW4gbWVtb3J5IGJl
Zm9yZSB0aGUgdXNlcgpjaGFuZ2VzIHRoZSBjYWNoZS1sZXZlbCBhcyB0aGV5IG1heSBlbGVjdCB0
byBieXBhc3MgdGhlIGNhY2hlIChldmVuIGFmdGVyCmRlY2xhcmluZyB0aGVpciBhY2Nlc3MgY2Fj
aGUtY29oZXJlbnQpIHZpYSB1c2Ugb2YgdW5wcml2aWxlZ2VkIG1vY3MuCgpTaWduZWQtb2ZmLWJ5
OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KQ2M6IEpvb25hcyBMYWh0
aW5lbiA8am9vbmFzLmxhaHRpbmVuQGxpbnV4LmludGVsLmNvbT4KQ2M6IHN0YWJsZXZnZXIua2Vy
bmVsLm9yZwotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9kb21haW4uYyB8
IDUgKysrKysKIDEgZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fZG9tYWluLmMgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9nZW0vaTkxNV9nZW1fZG9tYWluLmMKaW5kZXggMmUzY2UyYTY5NjUzLi41ZDQxZTc2
OWE0MjggMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9kb21h
aW4uYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fZG9tYWluLmMKQEAg
LTI3Nyw2ICsyNzcsMTEgQEAgaW50IGk5MTVfZ2VtX29iamVjdF9zZXRfY2FjaGVfbGV2ZWwoc3Ry
dWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaiwKIAogCWxpc3RfZm9yX2VhY2hfZW50cnkodm1h
LCAmb2JqLT52bWEubGlzdCwgb2JqX2xpbmspCiAJCXZtYS0+bm9kZS5jb2xvciA9IGNhY2hlX2xl
dmVsOworCisJLyogRmx1c2ggYW55IHByZXZpb3VzIGNhY2hlIGRpcnQgaW4gY2FzZSBvZiBjYWNo
ZSBieXBhc3MgKi8KKwlpZiAob2JqLT5jYWNoZV9kaXJ0eSAmIH5vYmotPmNhY2hlX2NvaGVyZW50
KQorCQlpOTE1X2dlbV9jbGZsdXNoX29iamVjdChvYmosIEk5MTVfQ0xGTFVTSF9TWU5DKTsKKwog
CWk5MTVfZ2VtX29iamVjdF9zZXRfY2FjaGVfY29oZXJlbmN5KG9iaiwgY2FjaGVfbGV2ZWwpOwog
CW9iai0+Y2FjaGVfZGlydHkgPSB0cnVlOyAvKiBBbHdheXMgaW52YWxpZGF0ZSBzdGFsZSBjYWNo
ZWxpbmVzICovCiAKLS0gCjIuMjIuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4
