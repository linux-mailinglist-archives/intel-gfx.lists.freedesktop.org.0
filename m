Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AC9775FD6C
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jul 2019 21:26:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5EDE26E3D3;
	Thu,  4 Jul 2019 19:26:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F3F296E3D3
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Jul 2019 19:26:24 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17133803-1500050 
 for multiple; Thu, 04 Jul 2019 20:26:18 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  4 Jul 2019 20:26:15 +0100
Message-Id: <20190704192615.15855-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Order assert forcewake test
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

UmVhZCB0aGUgY3VycmVudCB2YWx1ZSBiZWZvcmUgY29tcHV0aW5nIHRoZSBleHBlY3RlZCB0byBl
bnN1cmUgdGhhdCBpZgp0aGUgdGltZXIgZG9lcyBjb21wbGV0ZSBlYXJseSAoYWdhaW5zdCBvdXIg
d2lsbCksIGl0IHNob3VsZCBub3QgY2F1c2UgYQpmYWxzZSBwb3NpdGl2ZS4KClNpZ25lZC1vZmYt
Ynk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgotLS0KIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2ludGVsX3VuY29yZS5jIHwgNSArKystLQogMSBmaWxlIGNoYW5nZWQsIDMg
aW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pbnRlbF91bmNvcmUuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3VuY29y
ZS5jCmluZGV4IDIwNDJjOTRjOWNjOS4uYzgzYmZhYWUzNzdmIDEwMDY0NAotLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pbnRlbF91bmNvcmUuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
bnRlbF91bmNvcmUuYwpAQCAtNzYwLDE0ICs3NjAsMTUgQEAgdm9pZCBhc3NlcnRfZm9yY2V3YWtl
c19hY3RpdmUoc3RydWN0IGludGVsX3VuY29yZSAqdW5jb3JlLAogCSAqLwogCWxvY2FsX2lycV9k
aXNhYmxlKCk7CiAJZm9yX2VhY2hfZndfZG9tYWluX21hc2tlZChkb21haW4sIGZ3X2RvbWFpbnMs
IHVuY29yZSwgdG1wKSB7CisJCXVuc2lnbmVkIGludCBhY3R1YWwgPSBSRUFEX09OQ0UoZG9tYWlu
LT53YWtlX2NvdW50KTsKIAkJdW5zaWduZWQgaW50IGV4cGVjdCA9IDE7CiAKIAkJaWYgKGhydGlt
ZXJfYWN0aXZlKCZkb21haW4tPnRpbWVyKSAmJiBSRUFEX09OQ0UoZG9tYWluLT5hY3RpdmUpKQog
CQkJZXhwZWN0Kys7IC8qIHBlbmRpbmcgYXV0b21hdGljIHJlbGVhc2UgKi8KIAotCQlpZiAoV0FS
Tihkb21haW4tPndha2VfY291bnQgPCBleHBlY3QsCisJCWlmIChXQVJOKGFjdHVhbCA8IGV4cGVj
dCwKIAkJCSAiRXhwZWN0ZWQgZG9tYWluICVkIHRvIGJlIGhlbGQgYXdha2UgYnkgY2FsbGVyLCBj
b3VudD0lZFxuIiwKLQkJCSBkb21haW4tPmlkLCBkb21haW4tPndha2VfY291bnQpKQorCQkJIGRv
bWFpbi0+aWQsIGFjdHVhbCkpCiAJCQlicmVhazsKIAl9CiAJbG9jYWxfaXJxX2VuYWJsZSgpOwot
LSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
