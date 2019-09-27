Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7126EC064B
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Sep 2019 15:28:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9ABAE6E0F3;
	Fri, 27 Sep 2019 13:28:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BFDF66E0F0;
 Fri, 27 Sep 2019 13:28:54 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18640148-1500050 
 for multiple; Fri, 27 Sep 2019 14:28:37 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 27 Sep 2019 14:28:34 +0100
Message-Id: <20190927132834.30789-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190926182335.18235-1-chris@chris-wilson.co.uk>
References: <20190926182335.18235-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t v2] i915/gem_ctx_isolation: Check nonpriv
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
YWdlIHJlZ2lzdGVycwphcmUgcmVzdG9yZWQgYWZ0ZXIgYSBzd2l0Y2guCgp2MjogVXNlIGV4cGxp
Y2l0IG9yZGVyaW5nIHRvIGVuc3VyZSB3ZSBmb3JjZSB0aGUgY29udGV4dCBzd2l0Y2ggYmFjayBh
bmQKZm9ydGggaW4gYmV0d2VlbiB0aGUgcmVnaXN0ZXIgd3JpdGVzIGFuZCB0aGVpciByZWFkLgoK
U2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+CkNj
OiBNaWNoYcWCIFdpbmlhcnNraSA8bWljaGFsLndpbmlhcnNraUBpbnRlbC5jb20+Ci0tLQogdGVz
dHMvaTkxNS9nZW1fY3R4X2lzb2xhdGlvbi5jIHwgMzEgKysrKysrKysrKysrKysrKysrKysrKysr
KysrKysrKwogMSBmaWxlIGNoYW5nZWQsIDMxIGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS90
ZXN0cy9pOTE1L2dlbV9jdHhfaXNvbGF0aW9uLmMgYi90ZXN0cy9pOTE1L2dlbV9jdHhfaXNvbGF0
aW9uLmMKaW5kZXggYzQzMDIzOTRlLi5kZjFkNjU1YWUgMTAwNjQ0Ci0tLSBhL3Rlc3RzL2k5MTUv
Z2VtX2N0eF9pc29sYXRpb24uYworKysgYi90ZXN0cy9pOTE1L2dlbV9jdHhfaXNvbGF0aW9uLmMK
QEAgLTU3OSw2ICs1NzksMzUgQEAgc3RhdGljIHZvaWQgbm9ucHJpdihpbnQgZmQsCiAJCQkgIF9f
ZnVuY19fLCB2LCB2YWx1ZXNbdl0pOwogCQl3cml0ZV9yZWdzKGZkLCBjdHgsIGUsIGZsYWdzLCB2
YWx1ZXNbdl0pOwogCisJCWlmIChmbGFncyAmIERJUlRZMikgeworCQkJdWludDMyX3Qgc3cgPSBn
ZW1fY29udGV4dF9jcmVhdGUoZmQpOworCQkJaWd0X3NwaW5fdCAqc3luY3B0LCAqZGlydDsKKwor
CQkJLyogRXhwbGljaXQgc3luYyB0byBrZWVwIHRoZSBzd2l0Y2ggYmV0d2VlbiB3cml0ZS9yZWFk
ICovCisJCQlzeW5jcHQgPSBpZ3Rfc3Bpbl9uZXcoZmQsCisJCQkJCSAgICAgIC5jdHggPSBjdHgs
CisJCQkJCSAgICAgIC5lbmdpbmUgPSBlbmdpbmUsCisJCQkJCSAgICAgIC5mbGFncyA9IElHVF9T
UElOX0ZFTkNFX09VVCk7CisKKwkJCWRpcnQgPSBpZ3Rfc3Bpbl9uZXcoZmQsCisJCQkJCSAgICAu
Y3R4ID0gc3csCisJCQkJCSAgICAuZW5naW5lID0gZW5naW5lLAorCQkJCQkgICAgLmZlbmNlID0g
c3luY3B0LT5vdXRfZmVuY2UsCisJCQkJCSAgICAuZmxhZ3MgPSAoSUdUX1NQSU5fRkVOQ0VfSU4g
fAorCQkJCQkJICAgICAgSUdUX1NQSU5fRkVOQ0VfT1VUKSk7CisJCQlpZ3Rfc3Bpbl9mcmVlKGZk
LCBzeW5jcHQpOworCisJCQlzeW5jcHQgPSBpZ3Rfc3Bpbl9uZXcoZmQsCisJCQkJCSAgICAgIC5j
dHggPSBjdHgsCisJCQkJCSAgICAgIC5lbmdpbmUgPSBlbmdpbmUsCisJCQkJCSAgICAgIC5mZW5j
ZSA9IGRpcnQtPm91dF9mZW5jZSwKKwkJCQkJICAgICAgLmZsYWdzID0gSUdUX1NQSU5fRkVOQ0Vf
SU4pOworCQkJaWd0X3NwaW5fZnJlZShmZCwgZGlydCk7CisKKwkJCWlndF9zcGluX2ZyZWUoZmQs
IHN5bmNwdCk7CisJCQlnZW1fY29udGV4dF9kZXN0cm95KGZkLCBzdyk7CisJCX0KKwogCQlyZWdz
WzFdID0gcmVhZF9yZWdzKGZkLCBjdHgsIGUsIGZsYWdzKTsKIAogCQkvKgpAQCAtODM4LDYgKzg2
Nyw4IEBAIGlndF9tYWluCiAKIAkJCWlndF9zdWJ0ZXN0X2YoIiVzLW5vbnByaXYiLCBlLT5uYW1l
KQogCQkJCW5vbnByaXYoZmQsIGUsIDApOworCQkJaWd0X3N1YnRlc3RfZigiJXMtbm9ucHJpdi1z
d2l0Y2giLCBlLT5uYW1lKQorCQkJCW5vbnByaXYoZmQsIGUsIERJUlRZMik7CiAKIAkJCWlndF9z
dWJ0ZXN0X2YoIiVzLWNsZWFuIiwgZS0+bmFtZSkKIAkJCQlpc29sYXRpb24oZmQsIGUsIDApOwot
LSAKMi4yMy4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
