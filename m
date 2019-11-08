Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C7697F429C
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Nov 2019 09:56:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3DC8D6F8B5;
	Fri,  8 Nov 2019 08:56:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B2A36F8B5
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Nov 2019 08:56:48 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19124696-1500050 
 for multiple; Fri, 08 Nov 2019 08:56:27 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  8 Nov 2019 08:56:25 +0000
Message-Id: <20191108085626.32429-4-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191108085626.32429-1-chris@chris-wilson.co.uk>
References: <20191108085626.32429-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 4/4] drm/i915/pmu: Only use exclusive mmio
 access for gen7
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

T24gZ2VuNywgd2UgaGF2ZSB0byBhdm9pZCBjb25jdXJyZW50IGFjY2VzcyB0byB0aGUgc2FtZSBt
bWlvIGNhY2hlbGluZSwKYW5kIHNvIGNvb3JkaW5hdGUgYWxsIG1taW8gYWNjZXNzIHdpdGggdGhl
IHVuY29yZS0+bG9jay4gSG93ZXZlciwgZm9yCnBtdSwgd2Ugd2FudCB0byBhdm9pZCBwZXJ0dXJi
aW5nIHRoZSBzeXN0ZW0gYW5kIGRpc2FibGluZyBpbnRlcnJ1cHRzCnVubmVjZXNzYXJpbHksIHNv
IHJlc3RyaWN0IHRoZSB3L2EgdG8gZ2VuNyB3aGVyZSBpdCBpcyByZXF1aWVkIHRvCnByZXZlbnQg
bWFjaGluZSBoYW5ncy4KClNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMt
d2lsc29uLmNvLnVrPgpDYzogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNv
bT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BtdS5jIHwgMTEgKysrKysrKysrLS0K
IDEgZmlsZSBjaGFuZ2VkLCA5IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wbXUuYyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfcG11LmMKaW5kZXggZGJkZTgwYTM3NmNiLi45ZTE2Mjc3ODIyODQgMTAwNjQ0Ci0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcG11LmMKKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9wbXUuYwpAQCAtMjkyLDYgKzI5MiwxMSBAQCBhZGRfc2FtcGxlKHN0cnVjdCBp
OTE1X3BtdV9zYW1wbGUgKnNhbXBsZSwgdTMyIHZhbCkKIAlzYW1wbGUtPmN1ciArPSB2YWw7CiB9
CiAKK3N0YXRpYyBib29sIGV4Y2x1c2l2ZV9tbWlvX2FjY2Vzcyhjb25zdCBzdHJ1Y3QgZHJtX2k5
MTVfcHJpdmF0ZSAqaTkxNSkKK3sKKwlyZXR1cm4gSVNfR0VOKGk5MTUsIDcpOworfQorCiBzdGF0
aWMgdm9pZAogZW5naW5lc19zYW1wbGUoc3RydWN0IGludGVsX2d0ICpndCwgdW5zaWduZWQgaW50
IHBlcmlvZF9ucykKIHsKQEAgLTMxMSw3ICszMTYsOCBAQCBlbmdpbmVzX3NhbXBsZShzdHJ1Y3Qg
aW50ZWxfZ3QgKmd0LCB1bnNpZ25lZCBpbnQgcGVyaW9kX25zKQogCQlpZiAoIWludGVsX2VuZ2lu
ZV9wbV9nZXRfaWZfYXdha2UoZW5naW5lKSkKIAkJCWNvbnRpbnVlOwogCi0JCXNwaW5fbG9ja19p
cnFzYXZlKCZlbmdpbmUtPnVuY29yZS0+bG9jaywgZmxhZ3MpOworCQlpZiAoZXhjbHVzaXZlX21t
aW9fYWNjZXNzKGk5MTUpKQorCQkJc3Bpbl9sb2NrX2lycXNhdmUoJmVuZ2luZS0+dW5jb3JlLT5s
b2NrLCBmbGFncyk7CiAKIAkJdmFsID0gRU5HSU5FX1JFQURfRlcoZW5naW5lLCBSSU5HX0NUTCk7
CiAJCWlmICh2YWwgPT0gMCkgLyogcG93ZXJ3ZWxsIG9mZiA9PiBlbmdpbmUgaWRsZSAqLwpAQCAt
MzQyLDcgKzM0OCw4IEBAIGVuZ2luZXNfc2FtcGxlKHN0cnVjdCBpbnRlbF9ndCAqZ3QsIHVuc2ln
bmVkIGludCBwZXJpb2RfbnMpCiAJCQlhZGRfc2FtcGxlKCZwbXUtPnNhbXBsZVtJOTE1X1NBTVBM
RV9CVVNZXSwgcGVyaW9kX25zKTsKIAogc2tpcDoKLQkJc3Bpbl91bmxvY2tfaXJxcmVzdG9yZSgm
ZW5naW5lLT51bmNvcmUtPmxvY2ssIGZsYWdzKTsKKwkJaWYgKGV4Y2x1c2l2ZV9tbWlvX2FjY2Vz
cyhpOTE1KSkKKwkJCXNwaW5fdW5sb2NrX2lycXJlc3RvcmUoJmVuZ2luZS0+dW5jb3JlLT5sb2Nr
LCBmbGFncyk7CiAJCWludGVsX2VuZ2luZV9wbV9wdXQoZW5naW5lKTsKIAl9CiB9Ci0tIAoyLjI0
LjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
