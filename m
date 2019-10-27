Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A9BEDE6398
	for <lists+intel-gfx@lfdr.de>; Sun, 27 Oct 2019 16:03:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A82386E247;
	Sun, 27 Oct 2019 15:03:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 35CB16E247
 for <intel-gfx@lists.freedesktop.org>; Sun, 27 Oct 2019 15:03:32 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18983824-1500050 
 for multiple; Sun, 27 Oct 2019 15:03:14 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sun, 27 Oct 2019 15:03:13 +0000
Message-Id: <20191027150313.10802-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0.rc1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/selftests: Check a few more fixed
 locations within the context image
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

QXMgd2UgdXNlIGhhcmQgY29kZWQgb2Zmc2V0cyBmb3IgYSBmZXcgbG9jYXRpb25zIHdpdGhpbiB0
aGUgY29udGV4dAppbWFnZSwgaW5jbHVkZSB0aG9zZSBpbiB0aGUgc2VsZnRlc3RzIHRvIGFzc2Vy
dCB0aGF0IHRoZXkgYXJlIHZhbGlkLgoKU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJp
c0BjaHJpcy13aWxzb24uY28udWs+CkNjOiBNaWthIEt1b3BwYWxhIDxtaWthLmt1b3BwYWxhQGxp
bnV4LmludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVzdF9scmMu
YyB8IDIwICsrKysrKysrKysrKysrKysrKysrCiAxIGZpbGUgY2hhbmdlZCwgMjAgaW5zZXJ0aW9u
cygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X2xyYy5j
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRlc3RfbHJjLmMKaW5kZXggYmE3ZmM0Mzk3
YmQ5Li41ZTkwZmMxMjdiZTYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3Nl
bGZ0ZXN0X2xyYy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X2xyYy5j
CkBAIC0zMTk0LDYgKzMxOTQsMjYgQEAgc3RhdGljIGludCBsaXZlX2xyY19maXhlZCh2b2lkICph
cmcpCiAJCQl1MzIgb2Zmc2V0OwogCQkJY29uc3QgY2hhciAqbmFtZTsKIAkJfSB0YmxbXSA9IHsK
KwkJCXsKKwkJCQlpOTE1X21taW9fcmVnX29mZnNldChSSU5HX1NUQVJUKGVuZ2luZS0+bW1pb19i
YXNlKSksCisJCQkJQ1RYX1JJTkdfQlVGRkVSX1NUQVJUIC0gMSwKKwkJCQkiUklOR19TVEFSVCIK
KwkJCX0sCisJCQl7CisJCQkJaTkxNV9tbWlvX3JlZ19vZmZzZXQoUklOR19DVEwoZW5naW5lLT5t
bWlvX2Jhc2UpKSwKKwkJCQlDVFhfUklOR19CVUZGRVJfQ09OVFJPTCAtIDEsCisJCQkJIlJJTkdf
Q1RMIgorCQkJfSwKKwkJCXsKKwkJCQlpOTE1X21taW9fcmVnX29mZnNldChSSU5HX0hFQUQoZW5n
aW5lLT5tbWlvX2Jhc2UpKSwKKwkJCQlDVFhfUklOR19IRUFEIC0gMSwKKwkJCQkiUklOR19IRUFE
IgorCQkJfSwKKwkJCXsKKwkJCQlpOTE1X21taW9fcmVnX29mZnNldChSSU5HX1RBSUwoZW5naW5l
LT5tbWlvX2Jhc2UpKSwKKwkJCQlDVFhfUklOR19UQUlMIC0gMSwKKwkJCQkiUklOR19UQUlMIgor
CQkJfSwKIAkJCXsKIAkJCQlpOTE1X21taW9fcmVnX29mZnNldChSSU5HX01JX01PREUoZW5naW5l
LT5tbWlvX2Jhc2UpKSwKIAkJCQlscmNfcmluZ19taV9tb2RlKGVuZ2luZSksCi0tIAoyLjI0LjAu
cmMxCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
