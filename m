Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 39ADACF7F3
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Oct 2019 13:16:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5FD696E0FE;
	Tue,  8 Oct 2019 11:16:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F33306E0FE;
 Tue,  8 Oct 2019 11:16:34 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18762853-1500050 
 for multiple; Tue, 08 Oct 2019 12:16:28 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  8 Oct 2019 12:16:28 +0100
Message-Id: <20191008111628.15892-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] i915/gem_eio: Reduce amount of incidental
 work after the delayed hang
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

U2luY2Ugd2UgdGltZSBob3cgbG9uZyBpdCB0YWtlcyBmb3IgdGhlIHdhaXRlciB0byBiZSB3b2tl
biB1cG9uCmluamVjdGluZyB0aGUgaGFuZywgd2Ugd2FudCB0byBhdm9pZCBhcyBtdWNoIGRpc3Ry
YWN0aW9ucyBhcyBwb3NzaWJsZQphbG9uZyB0aGUgY3JpdGljYWwgcGF0aC4KClNpZ25lZC1vZmYt
Ynk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgotLS0KIHRlc3RzL2k5
MTUvZ2VtX2Vpby5jIHwgMTUgKysrKysrKysrKy0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgMTAgaW5z
ZXJ0aW9ucygrKSwgNSBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS90ZXN0cy9pOTE1L2dlbV9l
aW8uYyBiL3Rlc3RzL2k5MTUvZ2VtX2Vpby5jCmluZGV4IDg5MmYzNjU3Yy4uYWE3M2I0ZGViIDEw
MDY0NAotLS0gYS90ZXN0cy9pOTE1L2dlbV9laW8uYworKysgYi90ZXN0cy9pOTE1L2dlbV9laW8u
YwpAQCAtMjcsNiArMjcsNyBAQAogICoKICAqLwogCisjaW5jbHVkZSA8c2NoZWQuaD4KICNpbmNs
dWRlIDxzdGRsaWIuaD4KICNpbmNsdWRlIDxzdGRpby5oPgogI2luY2x1ZGUgPHN0cmluZy5oPgpA
QCAtMjIzLDE2ICsyMjQsMjAgQEAgc3RydWN0IGhhbmdfY3R4IHsKIHN0YXRpYyB2b2lkIGhhbmdf
aGFuZGxlcih1bmlvbiBzaWd2YWwgYXJnKQogewogCXN0cnVjdCBoYW5nX2N0eCAqY3R4ID0gYXJn
LnNpdmFsX3B0cjsKKwlzdHJ1Y3QgdGltZXNwZWMgKnRzID0gY3R4LT50czsKKwlpbnQgZGlyID0g
Y3R4LT5kZWJ1Z2ZzOwogCiAJaWd0X2RlYnVnKCJoYW5nIGRlbGF5ID0gJS4yZnVzXG4iLAogCQkg
IGlndF9uc2VjX2VsYXBzZWQoJmN0eC0+ZGVsYXkpIC8gMTAwMC4wKTsKLQotCWlndF9uc2VjX2Vs
YXBzZWQoY3R4LT50cyk7Ci0JaWd0X2Fzc2VydChpZ3Rfc3lzZnNfc2V0KGN0eC0+ZGVidWdmcywg
Imk5MTVfd2VkZ2VkIiwgIi0xIikpOwotCiAJaWd0X2Fzc2VydF9lcSh0aW1lcl9kZWxldGUoY3R4
LT50aW1lciksIDApOwotCWNsb3NlKGN0eC0+ZGVidWdmcyk7CiAJZnJlZShjdHgpOworCisJaWd0
X25zZWNfZWxhcHNlZCh0cyk7CisJaWd0X2Fzc2VydChpZ3Rfc3lzZnNfc2V0KGRpciwgImk5MTVf
d2VkZ2VkIiwgIi0xIikpOworCS8qIC0+IHdha2UgdXAgZ2VtX3N5bmMoKSBpbiBjaGVja193YWl0
KCkgKi8KKworCXNjaGVkX3lpZWxkKCk7CisJY2xvc2UoZGlyKTsKIH0KIAogc3RhdGljIHZvaWQg
aGFuZ19hZnRlcihpbnQgZmQsIHVuc2lnbmVkIGludCB1cywgc3RydWN0IHRpbWVzcGVjICp0cykK
LS0gCjIuMjMuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
