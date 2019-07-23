Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 850C57158F
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jul 2019 11:58:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 55E1989FE3;
	Tue, 23 Jul 2019 09:58:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7C37089FE3
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Jul 2019 09:58:09 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17529908-1500050 
 for multiple; Tue, 23 Jul 2019 10:58:01 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 23 Jul 2019 10:58:00 +0100
Message-Id: <20190723095800.2820-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/selftests: Let igt_vma_partial et al
 breathe
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

R2l2ZSB0aGUgc2NoZWR1bGVyIGEgY2hhbmNlIHRvIGJyZWF0aGUgYnkgY2FsbGluZyBjb25kX3Jl
c2NoZWQoKSBhcyBzb21lCm9mIHRoZSBsb29wcyBtYXkgdGFrZSBzb21lIHRpbWUgb24gc2xvd2Vy
IG1hY2hpbmVzLCBhbmQgc28gY2F0Y2ggdGhlCmF0dGVudGlvbiBvZiB0aGUgd2F0Y2hkb2dzLgoK
QnVnemlsbGE6IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEx
MTE5NgpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51
az4KQ2M6IE1hdHRoZXcgQXVsZCA8bWF0dGhldy53aWxsaWFtLmF1bGRAZ21haWwuY29tPgotLS0K
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9pOTE1X3ZtYS5jIHwgMTAgKysrKysrKysr
KwogMSBmaWxlIGNoYW5nZWQsIDEwIGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvaTkxNV92bWEuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L3NlbGZ0ZXN0cy9pOTE1X3ZtYS5jCmluZGV4IGZiYzc5YjE0ODIzYS4uYTViZWMwYTRjZGNjIDEw
MDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvaTkxNV92bWEuYworKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvaTkxNV92bWEuYwpAQCAtMTkzLDYgKzE5
Myw4IEBAIHN0YXRpYyBpbnQgaWd0X3ZtYV9jcmVhdGUodm9pZCAqYXJnKQogCQkJbGlzdF9kZWxf
aW5pdCgmY3R4LT5saW5rKTsKIAkJCW1vY2tfY29udGV4dF9jbG9zZShjdHgpOwogCQl9CisKKwkJ
Y29uZF9yZXNjaGVkKCk7CiAJfQogCiBlbmQ6CkBAIC0zNDEsNiArMzQzLDggQEAgc3RhdGljIGlu
dCBpZ3Rfdm1hX3BpbjEodm9pZCAqYXJnKQogCQkJCWdvdG8gb3V0OwogCQkJfQogCQl9CisKKwkJ
Y29uZF9yZXNjaGVkKCk7CiAJfQogCiAJZXJyID0gMDsKQEAgLTU5Nyw2ICs2MDEsOCBAQCBzdGF0
aWMgaW50IGlndF92bWFfcm90YXRlX3JlbWFwKHZvaWQgKmFyZykKIAkJCQkJfQogCiAJCQkJCWk5
MTVfdm1hX3VucGluKHZtYSk7CisKKwkJCQkJY29uZF9yZXNjaGVkKCk7CiAJCQkJfQogCQkJfQog
CQl9CkBAIC03NTIsNiArNzU4LDggQEAgc3RhdGljIGludCBpZ3Rfdm1hX3BhcnRpYWwodm9pZCAq
YXJnKQogCiAJCQkJaTkxNV92bWFfdW5waW4odm1hKTsKIAkJCQludm1hKys7CisKKwkJCQljb25k
X3Jlc2NoZWQoKTsKIAkJCX0KIAkJfQogCkBAIC05NjEsNiArOTY5LDggQEAgc3RhdGljIGludCBp
Z3Rfdm1hX3JlbWFwcGVkX2d0dCh2b2lkICphcmcpCiAJCQkJfQogCQkJfQogCQkJaTkxNV92bWFf
dW5waW5faW9tYXAodm1hKTsKKworCQkJY29uZF9yZXNjaGVkKCk7CiAJCX0KIAl9CiAKLS0gCjIu
MjIuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
