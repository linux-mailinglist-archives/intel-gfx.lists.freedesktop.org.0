Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BCDE2115DA4
	for <lists+intel-gfx@lfdr.de>; Sat,  7 Dec 2019 18:01:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 773D36E1F1;
	Sat,  7 Dec 2019 17:01:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 55D5E6E1F2
 for <intel-gfx@lists.freedesktop.org>; Sat,  7 Dec 2019 17:01:24 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19496907-1500050 
 for multiple; Sat, 07 Dec 2019 17:01:11 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sat,  7 Dec 2019 17:01:05 +0000
Message-Id: <20191207170110.2200142-3-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191207170110.2200142-1-chris@chris-wilson.co.uk>
References: <20191207170110.2200142-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/8] drm/i915: Simplify error escape from
 cmdparser
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

V2UgbmVlZCB0byBmbHVzaCB0aGUgZGVzdGluYXRpb24gYnVmZmVyLCBldmVuIG9uIGVycm9yLCB0
byBtYWludGFpbgpjb25zaXN0ZW50IGNhY2hlIHN0YXRlLiBUaGVyZWJ5IHJlbW92aW5nIHRoZSBq
dW1wIG9uIGVycm9yIHBhc3QgdGhlCmNsZWFyLCBhbmQgcmVkdWNpbmcgdGhlIGxvb3AtZXNjYXBl
IG1lY2hhbmlzbSB0byBhIG1lcmUgYnJlYWsuCgpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24g
PGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X2NtZF9wYXJzZXIuYyB8IDEyICsrKystLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0
aW9ucygrKSwgOCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X2NtZF9wYXJzZXIuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfY21kX3BhcnNl
ci5jCmluZGV4IDc0ZmQwZWEwNWYwMi4uNmNmNGUzMzY0NjFiIDEwMDY0NAotLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X2NtZF9wYXJzZXIuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X2NtZF9wYXJzZXIuYwpAQCAtMTQ1Myw3ICsxNDUzLDcgQEAgaW50IGludGVsX2VuZ2lu
ZV9jbWRfcGFyc2VyKHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSwKIAkJaWYgKCFkZXNj
KSB7CiAJCQlEUk1fREVCVUcoIkNNRDogVW5yZWNvZ25pemVkIGNvbW1hbmQ6IDB4JTA4WFxuIiwg
KmNtZCk7CiAJCQlyZXQgPSAtRUlOVkFMOwotCQkJZ290byBlcnI7CisJCQlicmVhazsKIAkJfQog
CiAJCWlmIChkZXNjLT5mbGFncyAmIENNRF9ERVNDX0ZJWEVEKQpAQCAtMTQ2NywyMSArMTQ2Nywx
OCBAQCBpbnQgaW50ZWxfZW5naW5lX2NtZF9wYXJzZXIoc3RydWN0IGludGVsX2VuZ2luZV9jcyAq
ZW5naW5lLAogCQkJCSAgbGVuZ3RoLAogCQkJCSAgYmF0Y2hfZW5kIC0gY21kKTsKIAkJCXJldCA9
IC1FSU5WQUw7Ci0JCQlnb3RvIGVycjsKKwkJCWJyZWFrOwogCQl9CiAKIAkJaWYgKCFjaGVja19j
bWQoZW5naW5lLCBkZXNjLCBjbWQsIGxlbmd0aCkpIHsKIAkJCXJldCA9IC1FQUNDRVM7Ci0JCQln
b3RvIGVycjsKKwkJCWJyZWFrOwogCQl9CiAKIAkJaWYgKGRlc2MtPmNtZC52YWx1ZSA9PSBNSV9C
QVRDSF9CVUZGRVJfU1RBUlQpIHsKIAkJCXJldCA9IGNoZWNrX2Jic3RhcnQoY21kLCBvZmZzZXQs
IGxlbmd0aCwgYmF0Y2hfbGVuZ3RoLAogCQkJCQkgICAgYmF0Y2hfYWRkciwgc2hhZG93X2FkZHIs
CiAJCQkJCSAgICBqdW1wX3doaXRlbGlzdCk7Ci0KLQkJCWlmIChyZXQpCi0JCQkJZ290byBlcnI7
CiAJCQlicmVhazsKIAkJfQogCkBAIC0xNDkzLDcgKzE0OTAsNyBAQCBpbnQgaW50ZWxfZW5naW5l
X2NtZF9wYXJzZXIoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lLAogCQlpZiAgKGNtZCA+
PSBiYXRjaF9lbmQpIHsKIAkJCURSTV9ERUJVRygiQ01EOiBHb3QgdG8gdGhlIGVuZCBvZiB0aGUg
YnVmZmVyIHcvbyBhIEJCRSBjbWQhXG4iKTsKIAkJCXJldCA9IC1FSU5WQUw7Ci0JCQlnb3RvIGVy
cjsKKwkJCWJyZWFrOwogCQl9CiAJfSB3aGlsZSAoMSk7CiAKQEAgLTE1MDMsNyArMTUwMCw2IEBA
IGludCBpbnRlbF9lbmdpbmVfY21kX3BhcnNlcihzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdp
bmUsCiAJCWRybV9jbGZsdXNoX3ZpcnRfcmFuZ2UocHRyLCAodm9pZCAqKShjbWQgKyAxKSAtIHB0
cik7CiAJfQogCi1lcnI6CiAJaWYgKCFJU19FUlJfT1JfTlVMTChqdW1wX3doaXRlbGlzdCkpCiAJ
CWtmcmVlKGp1bXBfd2hpdGVsaXN0KTsKIAlpOTE1X2dlbV9vYmplY3RfdW5waW5fbWFwKHNoYWRv
dy0+b2JqKTsKLS0gCjIuMjQuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtZ2Z4
