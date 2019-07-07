Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 41DB76178C
	for <lists+intel-gfx@lfdr.de>; Sun,  7 Jul 2019 23:00:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 384B589AB7;
	Sun,  7 Jul 2019 21:00:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A050389AB7
 for <intel-gfx@lists.freedesktop.org>; Sun,  7 Jul 2019 21:00:50 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17163709-1500050 
 for multiple; Sun, 07 Jul 2019 22:00:27 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sun,  7 Jul 2019 22:00:18 +0100
Message-Id: <20190707210024.26192-6-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190707210024.26192-1-chris@chris-wilson.co.uk>
References: <20190707210024.26192-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 05/11] drm/i915/gtt: Compute the radix for gen8
 page table levels
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

VGhlIHJhZGl4IGxldmVscyBvZiBlYWNoIHBhZ2UgZGlyZWN0b3J5IGFyZSBlYXNpbHkgZGV0ZXJt
aW5lZCBzbyByZXBsYWNlCnRoZSBudW1lcm91cyBoYXJkY29kZWQgY29uc3RhbnRzIHdpdGggcHJl
Y29tcHV0ZWQgZGVyaXZlZCBjb25zdGFudHMuCgpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24g
PGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X2dlbV9ndHQuYyB8IDM5ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrCiAxIGZpbGUgY2hh
bmdlZCwgMzkgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfZ2VtX2d0dC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmMKaW5k
ZXggMmZjNjBlOGFjZDlhLi4yNzEzMDU3MDVjMWMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfZ2VtX2d0dC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2Vt
X2d0dC5jCkBAIC04NjgsNiArODY4LDQ1IEBAIHN0YXRpYyBpbnQgZ2VuOF9wcGd0dF9ub3RpZnlf
dmd0KHN0cnVjdCBpOTE1X3BwZ3R0ICpwcGd0dCwgYm9vbCBjcmVhdGUpCiAJcmV0dXJuIDA7CiB9
CiAKKy8qIEluZGV4IHNoaWZ0cyBpbnRvIHRoZSBwYWdldGFibGUgYXJlIG9mZnNldCBieSBHRU44
X1BURV9TSElGVCBbMTJdICovCisjZGVmaW5lIGdlbjhfcGRfc2hpZnQobHZsKSAoKGx2bCkgKiBp
bG9nMihJOTE1X1BERVMpKQorI2RlZmluZSBnZW44X3BkX2luZGV4KGksIGx2bCkgaTkxNV9wZGVf
aW5kZXgoKGkpLCBnZW44X3BkX3NoaWZ0KGx2bCkpCisjZGVmaW5lIF9fZ2VuOF9wdGVfc2hpZnQo
bHZsKSAoR0VOOF9QVEVfU0hJRlQgKyBnZW44X3BkX3NoaWZ0KGx2bCkpCisjZGVmaW5lIF9fZ2Vu
OF9wdGVfaW5kZXgoYSwgbHZsKSBpOTE1X3BkZV9pbmRleCgoYSksIF9fZ2VuOF9wdGVfc2hpZnQo
bHZsKSkKKworc3RhdGljIGlubGluZSB1bnNpZ25lZCBpbnQKK2dlbjhfcGRfcmFuZ2UodTY0IGFk
ZHIsIHU2NCBlbmQsIGludCBsdmwsIHVuc2lnbmVkIGludCAqaWR4KQoreworCWNvbnN0IGludCBz
aGlmdCA9IGdlbjhfcGRfc2hpZnQobHZsKTsKKwljb25zdCB1NjQgbWFzayA9IH4wdWxsIDw8IGdl
bjhfcGRfc2hpZnQobHZsICsgMSk7CisKKwlHRU1fQlVHX09OKGFkZHIgPj0gZW5kKTsKKwllbmQg
Kz0gfm1hc2sgPj4gZ2VuOF9wZF9zaGlmdCgxKTsKKworCSppZHggPSBpOTE1X3BkZV9pbmRleChh
ZGRyLCBzaGlmdCk7CisJaWYgKChhZGRyIF4gZW5kKSAmIG1hc2spCisJCXJldHVybiBJOTE1X1BE
RVMgLSAqaWR4OworCWVsc2UKKwkJcmV0dXJuIGk5MTVfcGRlX2luZGV4KGVuZCwgc2hpZnQpIC0g
KmlkeDsKK30KKworc3RhdGljIGlubGluZSBib29sIGdlbjhfcGRfc3Vic3VtZXModTY0IGFkZHIs
IHU2NCBlbmQsIGludCBsdmwpCit7CisJY29uc3QgdTY0IG1hc2sgPSB+MHVsbCA8PCBnZW44X3Bk
X3NoaWZ0KGx2bCArIDEpOworCisJR0VNX0JVR19PTihhZGRyID49IGVuZCk7CisJcmV0dXJuIChh
ZGRyIF4gZW5kKSAmIG1hc2sgJiYgKGFkZHIgJiB+bWFzaykgPT0gMDsKK30KKworc3RhdGljIGlu
bGluZSB1bnNpZ25lZCBpbnQgZ2VuOF9wdF9jb3VudCh1NjQgYWRkciwgdTY0IGVuZCkKK3sKKwlH
RU1fQlVHX09OKGFkZHIgPj0gZW5kKTsKKwlpZiAoKGFkZHIgXiBlbmQpICYgfkk5MTVfUERFX01B
U0spCisJCXJldHVybiBJOTE1X1BERVMgLSAoYWRkciAmIEk5MTVfUERFX01BU0spOworCWVsc2UK
KwkJcmV0dXJuIGVuZCAtIGFkZHI7Cit9CisKIHN0YXRpYyB2b2lkIGdlbjhfZnJlZV9wYWdlX3Rh
YmxlcyhzdHJ1Y3QgaTkxNV9hZGRyZXNzX3NwYWNlICp2bSwKIAkJCQkgIHN0cnVjdCBpOTE1X3Bh
Z2VfZGlyZWN0b3J5ICpwZCkKIHsKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4
