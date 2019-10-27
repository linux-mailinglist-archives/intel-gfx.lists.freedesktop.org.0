Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 37200E64B9
	for <lists+intel-gfx@lfdr.de>; Sun, 27 Oct 2019 18:54:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 05F6A6E29E;
	Sun, 27 Oct 2019 17:54:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2A8956E29E
 for <intel-gfx@lists.freedesktop.org>; Sun, 27 Oct 2019 17:54:10 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18985710-1500050 
 for multiple; Sun, 27 Oct 2019 17:54:03 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sun, 27 Oct 2019 17:54:02 +0000
Message-Id: <20191027175402.15823-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0.rc1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/selftests: Drop global engine lookup
 for gt selftests
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

QXMgd2UgYXJlIGluc2lkZSB0aGUgZ3QsIHdlIGhhdmUgYSBsb2NhbCBndC0+ZW5naW5lW10gbG9v
a3VwIHdlIHNob3VsZApiZSB1c2luZyBpbiBwcmVmZXJlbmNlIG92ZXIgdGhlIGk5MTUtPmVuZ2lu
ZVtdIGNvcHkuCgpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNv
bi5jby51az4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVzdF9oYW5nY2hlY2su
YyB8IDYgKysrLS0tCiAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9u
cygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X2hhbmdj
aGVjay5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRlc3RfaGFuZ2NoZWNrLmMKaW5k
ZXggYmE3NjFmY2YzOTdiLi5iNzIwN2I0ODgzOTEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L3NlbGZ0ZXN0X2hhbmdjaGVjay5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L3NlbGZ0ZXN0X2hhbmdjaGVjay5jCkBAIC0xMDE2LDcgKzEwMTYsNyBAQCBzdGF0aWMgaW50
IGlndF9yZXNldF93YWl0KHZvaWQgKmFyZykKIHsKIAlzdHJ1Y3QgaW50ZWxfZ3QgKmd0ID0gYXJn
OwogCXN0cnVjdCBpOTE1X2dwdV9lcnJvciAqZ2xvYmFsID0gJmd0LT5pOTE1LT5ncHVfZXJyb3I7
Ci0Jc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lID0gZ3QtPmk5MTUtPmVuZ2luZVtSQ1Mw
XTsKKwlzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUgPSBndC0+ZW5naW5lW1JDUzBdOwog
CXN0cnVjdCBpOTE1X3JlcXVlc3QgKnJxOwogCXVuc2lnbmVkIGludCByZXNldF9jb3VudDsKIAlz
dHJ1Y3QgaGFuZyBoOwpAQCAtMTE0Myw3ICsxMTQzLDcgQEAgc3RhdGljIGludCBfX2lndF9yZXNl
dF9ldmljdF92bWEoc3RydWN0IGludGVsX2d0ICpndCwKIAkJCQkgaW50ICgqZm4pKHZvaWQgKiks
CiAJCQkJIHVuc2lnbmVkIGludCBmbGFncykKIHsKLQlzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICpl
bmdpbmUgPSBndC0+aTkxNS0+ZW5naW5lW1JDUzBdOworCXN0cnVjdCBpbnRlbF9lbmdpbmVfY3Mg
KmVuZ2luZSA9IGd0LT5lbmdpbmVbUkNTMF07CiAJc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3Qg
Km9iajsKIAlzdHJ1Y3QgdGFza19zdHJ1Y3QgKnRzayA9IE5VTEw7CiAJc3RydWN0IGk5MTVfcmVx
dWVzdCAqcnE7CkBAIC0xNDkzLDcgKzE0OTMsNyBAQCBzdGF0aWMgaW50IGlndF9oYW5kbGVfZXJy
b3Iodm9pZCAqYXJnKQogewogCXN0cnVjdCBpbnRlbF9ndCAqZ3QgPSBhcmc7CiAJc3RydWN0IGk5
MTVfZ3B1X2Vycm9yICpnbG9iYWwgPSAmZ3QtPmk5MTUtPmdwdV9lcnJvcjsKLQlzdHJ1Y3QgaW50
ZWxfZW5naW5lX2NzICplbmdpbmUgPSBndC0+aTkxNS0+ZW5naW5lW1JDUzBdOworCXN0cnVjdCBp
bnRlbF9lbmdpbmVfY3MgKmVuZ2luZSA9IGd0LT5lbmdpbmVbUkNTMF07CiAJc3RydWN0IGhhbmcg
aDsKIAlzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpycTsKIAlzdHJ1Y3QgaTkxNV9ncHVfc3RhdGUgKmVy
cm9yOwotLSAKMi4yNC4wLnJjMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtZ2Z4
