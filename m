Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 05908F4492
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Nov 2019 11:35:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0FBD76F927;
	Fri,  8 Nov 2019 10:35:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 189446F924
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Nov 2019 10:35:15 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19126204-1500050 
 for <intel-gfx@lists.freedesktop.org>; Fri, 08 Nov 2019 10:35:11 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  8 Nov 2019 10:35:11 +0000
Message-Id: <20191108103511.20951-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191108103511.20951-1-chris@chris-wilson.co.uk>
References: <20191108103511.20951-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 2/2] drm/i915/pmu: Only use exclusive mmio access
 for gen7
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
bT4KUmV2aWV3ZWQtYnk6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+
Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wbXUuYyB8IDIxICsrKysrKysrKysrKysr
KysrKystLQogMSBmaWxlIGNoYW5nZWQsIDE5IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0p
CgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wbXUuYyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfcG11LmMKaW5kZXggOGU3NGY0MDQxM2I4Li40ODA0Nzc1NjQ0YmYg
MTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcG11LmMKKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9wbXUuYwpAQCAtMjkyLDYgKzI5MiwxNiBAQCBhZGRfc2FtcGxl
KHN0cnVjdCBpOTE1X3BtdV9zYW1wbGUgKnNhbXBsZSwgdTMyIHZhbCkKIAlzYW1wbGUtPmN1ciAr
PSB2YWw7CiB9CiAKK3N0YXRpYyBib29sIGV4Y2x1c2l2ZV9tbWlvX2FjY2Vzcyhjb25zdCBzdHJ1
Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkKK3sKKwkvKgorCSAqIFdlIGhhdmUgdG8gYXZvaWQg
Y29uY3VycmVudCBtbWlvIGNhY2hlIGxpbmUgYWNjZXNzIG9uIGdlbjcgb3IKKwkgKiByaXNrIGEg
bWFjaGluZSBoYW5nLiBGb3IgYSBmdW4gaGlzdG9yeSBsZXNzb24gZGlnIG91dCB0aGUgb2xkCisJ
ICogdXNlcnNwYWNlIGludGVsX2dwdV90b3AgYW5kIHJ1biBpdCBvbiBJdnlicmlkZ2Ugb3IgSGFz
d2VsbCEKKwkgKi8KKwlyZXR1cm4gSVNfR0VOKGk5MTUsIDcpOworfQorCiBzdGF0aWMgdm9pZAog
ZW5naW5lc19zYW1wbGUoc3RydWN0IGludGVsX2d0ICpndCwgdW5zaWduZWQgaW50IHBlcmlvZF9u
cykKIHsKQEAgLTMwNCw2ICszMTQsNyBAQCBlbmdpbmVzX3NhbXBsZShzdHJ1Y3QgaW50ZWxfZ3Qg
Kmd0LCB1bnNpZ25lZCBpbnQgcGVyaW9kX25zKQogCiAJZm9yX2VhY2hfZW5naW5lKGVuZ2luZSwg
Z3QsIGlkKSB7CiAJCXN0cnVjdCBpbnRlbF9lbmdpbmVfcG11ICpwbXUgPSAmZW5naW5lLT5wbXU7
CisJCXNwaW5sb2NrX3QgKm1taW9fbG9jazsKIAkJdW5zaWduZWQgbG9uZyBmbGFnczsKIAkJYm9v
bCBidXN5OwogCQl1MzIgdmFsOwpAQCAtMzExLDcgKzMyMiwxMiBAQCBlbmdpbmVzX3NhbXBsZShz
dHJ1Y3QgaW50ZWxfZ3QgKmd0LCB1bnNpZ25lZCBpbnQgcGVyaW9kX25zKQogCQlpZiAoIWludGVs
X2VuZ2luZV9wbV9nZXRfaWZfYXdha2UoZW5naW5lKSkKIAkJCWNvbnRpbnVlOwogCi0JCXNwaW5f
bG9ja19pcnFzYXZlKCZlbmdpbmUtPnVuY29yZS0+bG9jaywgZmxhZ3MpOworCQltbWlvX2xvY2sg
PSBOVUxMOworCQlpZiAoZXhjbHVzaXZlX21taW9fYWNjZXNzKGk5MTUpKQorCQkJbW1pb19sb2Nr
ID0gJmVuZ2luZS0+dW5jb3JlLT5sb2NrOworCisJCWlmICh1bmxpa2VseShtbWlvX2xvY2spKQor
CQkJc3Bpbl9sb2NrX2lycXNhdmUobW1pb19sb2NrLCBmbGFncyk7CiAKIAkJdmFsID0gRU5HSU5F
X1JFQURfRlcoZW5naW5lLCBSSU5HX0NUTCk7CiAJCWlmICh2YWwgPT0gMCkgLyogcG93ZXJ3ZWxs
IG9mZiA9PiBlbmdpbmUgaWRsZSAqLwpAQCAtMzQyLDcgKzM1OCw4IEBAIGVuZ2luZXNfc2FtcGxl
KHN0cnVjdCBpbnRlbF9ndCAqZ3QsIHVuc2lnbmVkIGludCBwZXJpb2RfbnMpCiAJCQlhZGRfc2Ft
cGxlKCZwbXUtPnNhbXBsZVtJOTE1X1NBTVBMRV9CVVNZXSwgcGVyaW9kX25zKTsKIAogc2tpcDoK
LQkJc3Bpbl91bmxvY2tfaXJxcmVzdG9yZSgmZW5naW5lLT51bmNvcmUtPmxvY2ssIGZsYWdzKTsK
KwkJaWYgKHVubGlrZWx5KG1taW9fbG9jaykpCisJCQlzcGluX3VubG9ja19pcnFyZXN0b3JlKG1t
aW9fbG9jaywgZmxhZ3MpOwogCQlpbnRlbF9lbmdpbmVfcG1fcHV0KGVuZ2luZSk7CiAJfQogfQot
LSAKMi4yNC4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
