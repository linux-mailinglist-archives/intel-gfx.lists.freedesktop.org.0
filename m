Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C242BF91A
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Sep 2019 20:23:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B9BA6EDB7;
	Thu, 26 Sep 2019 18:23:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7A24C6ECEE;
 Thu, 26 Sep 2019 18:23:51 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18631146-1500050 
 for multiple; Thu, 26 Sep 2019 19:23:37 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 26 Sep 2019 19:23:35 +0100
Message-Id: <20190926182335.18235-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] i915/gem_ctx_isolation: Check nonpriv
 values are kept across switch
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
Cc: igt-dev@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VmVyaWZ5IHRoYXQgdGhlIHZhbHVlcyB3ZSBzdG9yZSBpbiBvdXIgbm9ucHJpdiBjb250ZXh0IGlt
YWdlIHJlZ2lzdGVycwphcmUgcmVzdG9yZWQgYWZ0ZXIgYSBzd2l0Y2guCgpTaWduZWQtb2ZmLWJ5
OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KQ2M6IE1pY2hhxYIgV2lu
aWFyc2tpIDxtaWNoYWwud2luaWFyc2tpQGludGVsLmNvbT4KLS0tCiB0ZXN0cy9pOTE1L2dlbV9j
dHhfaXNvbGF0aW9uLmMgfCAxMyArKysrKysrKysrKysrCiAxIGZpbGUgY2hhbmdlZCwgMTMgaW5z
ZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL3Rlc3RzL2k5MTUvZ2VtX2N0eF9pc29sYXRpb24uYyBi
L3Rlc3RzL2k5MTUvZ2VtX2N0eF9pc29sYXRpb24uYwppbmRleCBjNDMwMjM5NGUuLjViZTMyZDYw
YyAxMDA2NDQKLS0tIGEvdGVzdHMvaTkxNS9nZW1fY3R4X2lzb2xhdGlvbi5jCisrKyBiL3Rlc3Rz
L2k5MTUvZ2VtX2N0eF9pc29sYXRpb24uYwpAQCAtNTc5LDYgKzU3OSwxNyBAQCBzdGF0aWMgdm9p
ZCBub25wcml2KGludCBmZCwKIAkJCSAgX19mdW5jX18sIHYsIHZhbHVlc1t2XSk7CiAJCXdyaXRl
X3JlZ3MoZmQsIGN0eCwgZSwgZmxhZ3MsIHZhbHVlc1t2XSk7CiAKKwkJaWYgKGZsYWdzICYgRElS
VFkyKSB7CisJCQl1aW50MzJfdCBzdyA9IGdlbV9jb250ZXh0X2NyZWF0ZShmZCk7CisKKwkJCWln
dF9zcGluX2ZyZWUoZmQsCisJCQkJICAgICAgaWd0X3NwaW5fbmV3KGZkLAorCQkJCQkJICAgLmN0
eCA9IHN3LAorCQkJCQkJICAgLmVuZ2luZSA9IGVuZ2luZSkpOworCisJCQlnZW1fY29udGV4dF9k
ZXN0cm95KGZkLCBzdyk7CisJCX0KKwogCQlyZWdzWzFdID0gcmVhZF9yZWdzKGZkLCBjdHgsIGUs
IGZsYWdzKTsKIAogCQkvKgpAQCAtODM4LDYgKzg0OSw4IEBAIGlndF9tYWluCiAKIAkJCWlndF9z
dWJ0ZXN0X2YoIiVzLW5vbnByaXYiLCBlLT5uYW1lKQogCQkJCW5vbnByaXYoZmQsIGUsIDApOwor
CQkJaWd0X3N1YnRlc3RfZigiJXMtbm9ucHJpdi1zd2l0Y2giLCBlLT5uYW1lKQorCQkJCW5vbnBy
aXYoZmQsIGUsIERJUlRZMik7CiAKIAkJCWlndF9zdWJ0ZXN0X2YoIiVzLWNsZWFuIiwgZS0+bmFt
ZSkKIAkJCQlpc29sYXRpb24oZmQsIGUsIDApOwotLSAKMi4yMy4wCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
