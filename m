Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E12D94F84F
	for <lists+intel-gfx@lfdr.de>; Sat, 22 Jun 2019 23:21:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 35F4789DC9;
	Sat, 22 Jun 2019 21:21:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6B91289DBC
 for <intel-gfx@lists.freedesktop.org>; Sat, 22 Jun 2019 21:21:07 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 16991523-1500050 
 for multiple; Sat, 22 Jun 2019 22:20:57 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sat, 22 Jun 2019 22:20:49 +0100
Message-Id: <20190622212055.25782-4-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190622212055.25782-1-chris@chris-wilson.co.uk>
References: <20190622212055.25782-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 04/10] drm/i915/selftests: Serialise nop reset
 with retirement
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

SW4gb3JkZXIgZm9yIHRoZSByZXNldCBjb3VudCB0byBiZSBhY2N1cmF0ZSBhY3Jvc3Mgb3VyIHNl
bGZ0ZXN0LCB3ZSBuZWVkCnRvIHByZXZlbnQgdGhlIGJhY2tncm91bmQgcmV0aXJlIHdvcmtlciBm
cm9tIG1vZGlmeWluZyBvdXIgZXhwZWN0ZWQKc3RhdGUuCgpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBX
aWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC9zZWxmdGVzdF9oYW5nY2hlY2suYyB8IDcgKysrKy0tLQogMSBmaWxlIGNoYW5nZWQsIDQg
aW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9ndC9zZWxmdGVzdF9oYW5nY2hlY2suYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L3NlbGZ0ZXN0X2hhbmdjaGVjay5jCmluZGV4IDNjZWIzOTdjODY0NS4uMGUwYjZjNTcyYWU5IDEw
MDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVzdF9oYW5nY2hlY2suYwor
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVzdF9oYW5nY2hlY2suYwpAQCAtMzk4
LDYgKzM5OCw3IEBAIHN0YXRpYyBpbnQgaWd0X3Jlc2V0X25vcCh2b2lkICphcmcpCiAJY291bnQg
PSAwOwogCWRvIHsKIAkJbXV0ZXhfbG9jaygmaTkxNS0+ZHJtLnN0cnVjdF9tdXRleCk7CisKIAkJ
Zm9yX2VhY2hfZW5naW5lKGVuZ2luZSwgaTkxNSwgaWQpIHsKIAkJCWludCBpOwogCkBAIC00MTMs
MTEgKzQxNCwxMiBAQCBzdGF0aWMgaW50IGlndF9yZXNldF9ub3Aodm9pZCAqYXJnKQogCQkJCWk5
MTVfcmVxdWVzdF9hZGQocnEpOwogCQkJfQogCQl9Ci0JCW11dGV4X3VubG9jaygmaTkxNS0+ZHJt
LnN0cnVjdF9tdXRleCk7CiAKIAkJaWd0X2dsb2JhbF9yZXNldF9sb2NrKGk5MTUpOwogCQlpOTE1
X3Jlc2V0KGk5MTUsIEFMTF9FTkdJTkVTLCBOVUxMKTsKIAkJaWd0X2dsb2JhbF9yZXNldF91bmxv
Y2soaTkxNSk7CisKKwkJbXV0ZXhfdW5sb2NrKCZpOTE1LT5kcm0uc3RydWN0X211dGV4KTsKIAkJ
aWYgKGk5MTVfcmVzZXRfZmFpbGVkKGk5MTUpKSB7CiAJCQllcnIgPSAtRUlPOwogCQkJYnJlYWs7
CkBAIC01MTEsOSArNTEzLDggQEAgc3RhdGljIGludCBpZ3RfcmVzZXRfbm9wX2VuZ2luZSh2b2lk
ICphcmcpCiAKIAkJCQlpOTE1X3JlcXVlc3RfYWRkKHJxKTsKIAkJCX0KLQkJCW11dGV4X3VubG9j
aygmaTkxNS0+ZHJtLnN0cnVjdF9tdXRleCk7Ci0KIAkJCWVyciA9IGk5MTVfcmVzZXRfZW5naW5l
KGVuZ2luZSwgTlVMTCk7CisJCQltdXRleF91bmxvY2soJmk5MTUtPmRybS5zdHJ1Y3RfbXV0ZXgp
OwogCQkJaWYgKGVycikgewogCQkJCXByX2VycigiaTkxNV9yZXNldF9lbmdpbmUgZmFpbGVkXG4i
KTsKIAkJCQlicmVhazsKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4
