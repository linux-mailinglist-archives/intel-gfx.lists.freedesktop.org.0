Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CA18A4E45
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Sep 2019 06:16:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5BE4989B8F;
	Mon,  2 Sep 2019 04:15:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4114589B78;
 Mon,  2 Sep 2019 04:15:57 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18339100-1500050 
 for multiple; Mon, 02 Sep 2019 05:15:49 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  2 Sep 2019 05:15:43 +0100
Message-Id: <20190902041548.14919-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t 1/6] lib: Fix gem_measure_ring_inflight
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

QW55IHVzZSBvZiBfX2Zvcl9lYWNoX3BoeXNpY2FsX2VuZ2luZSBicmVha3MgbGlicmFyeSB1c2Ug
b2YKZm9yX2VhY2hfcGh5c2ljYWxfcmluZyBhbmQgaW4gdGhpcyBjYXNlIChlLmcuIGdlbV9idXN5
L2Nsb3NlLXJhY2UpIGxlYWRzCnRvIEdQVSBoYW5ncy4KClNpZ25lZC1vZmYtYnk6IENocmlzIFdp
bHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgpDYzogQW5kaSBTaHl0aSA8YW5kaS5zaHl0
aUBpbnRlbC5jb20+CkNjOiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29t
PgotLS0KIGxpYi9pOTE1L2dlbV9yaW5nLmMgICAgICAgfCAyNiArKysrKysrKysrKysrKysrLS0t
LS0tLS0tLQogbGliL2k5MTUvZ2VtX3N1Ym1pc3Npb24uaCB8ICAyICsrCiAyIGZpbGVzIGNoYW5n
ZWQsIDE4IGluc2VydGlvbnMoKyksIDEwIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2xpYi9p
OTE1L2dlbV9yaW5nLmMgYi9saWIvaTkxNS9nZW1fcmluZy5jCmluZGV4IGJmN2Y0MzllMS4uMjcy
MjY0NjU5IDEwMDY0NAotLS0gYS9saWIvaTkxNS9nZW1fcmluZy5jCisrKyBiL2xpYi9pOTE1L2dl
bV9yaW5nLmMKQEAgLTIxLDEyICsyMSwxMyBAQAogICogSU4gVEhFIFNPRlRXQVJFLgogICovCiAK
LSNpbmNsdWRlICJnZW1fcmluZy5oIgotCiAjaW5jbHVkZSA8c2lnbmFsLmg+CiAjaW5jbHVkZSA8
c3lzL2lvY3RsLmg+CiAjaW5jbHVkZSA8c3lzL3RpbWUuaD4KIAorI2luY2x1ZGUgImdlbV9yaW5n
LmgiCisjaW5jbHVkZSAiZ2VtX3N1Ym1pc3Npb24uaCIKKwogI2luY2x1ZGUgImludGVsX3JlZy5o
IgogI2luY2x1ZGUgImRybXRlc3QuaCIKICNpbmNsdWRlICJpb2N0bF93cmFwcGVycy5oIgpAQCAt
MTQwLDE4ICsxNDEsMjMgQEAgX19nZW1fbWVhc3VyZV9yaW5nX2luZmxpZ2h0KGludCBmZCwgdW5z
aWduZWQgaW50IGVuZ2luZSwgZW51bSBtZWFzdXJlX3JpbmdfZmxhZ3MKIHVuc2lnbmVkIGludAog
Z2VtX21lYXN1cmVfcmluZ19pbmZsaWdodChpbnQgZmQsIHVuc2lnbmVkIGludCBlbmdpbmUsIGVu
dW0gbWVhc3VyZV9yaW5nX2ZsYWdzIGZsYWdzKQogewotCWlmIChlbmdpbmUgPT0gQUxMX0VOR0lO
RVMpIHsKLQkJdW5zaWduZWQgaW50IGdsb2JhbF9taW4gPSB+MHU7CisJdW5zaWduZWQgaW50IG1p
biA9IH4wdTsKIAorCWZkID0gZ2VtX3Jlb3Blbl9kcml2ZXIoZmQpOworCisJaWYgKGVuZ2luZSA9
PSBBTExfRU5HSU5FUykgewogCQlmb3JfZWFjaF9waHlzaWNhbF9lbmdpbmUoZmQsIGVuZ2luZSkg
ewotCQkJdW5zaWduZWQgaW50IGVuZ2luZV9taW4gPSBfX2dlbV9tZWFzdXJlX3JpbmdfaW5mbGln
aHQoZmQsIGVuZ2luZSwgZmxhZ3MpOworCQkJdW5zaWduZWQgaW50IGNvdW50ID0KKwkJCQlfX2dl
bV9tZWFzdXJlX3JpbmdfaW5mbGlnaHQoZmQsIGVuZ2luZSwgZmxhZ3MpOwogCi0JCQlpZiAoZW5n
aW5lX21pbiA8IGdsb2JhbF9taW4pCi0JCQkJZ2xvYmFsX21pbiA9IGVuZ2luZV9taW47CisJCQlp
ZiAoY291bnQgPCBtaW4pCisJCQkJbWluID0gY291bnQ7CiAJCX0KLQotCQlyZXR1cm4gZ2xvYmFs
X21pbjsKKwl9IGVsc2UgeworCQltaW4gPSAgX19nZW1fbWVhc3VyZV9yaW5nX2luZmxpZ2h0KGZk
LCBlbmdpbmUsIGZsYWdzKTsKIAl9CiAKLQlyZXR1cm4gX19nZW1fbWVhc3VyZV9yaW5nX2luZmxp
Z2h0KGZkLCBlbmdpbmUsIGZsYWdzKTsKKwljbG9zZShmZCk7CisKKwlyZXR1cm4gbWluOwogfQpk
aWZmIC0tZ2l0IGEvbGliL2k5MTUvZ2VtX3N1Ym1pc3Npb24uaCBiL2xpYi9pOTE1L2dlbV9zdWJt
aXNzaW9uLmgKaW5kZXggZjk0ZWFiYjIwLi4xZjFkNjNmZTUgMTAwNjQ0Ci0tLSBhL2xpYi9pOTE1
L2dlbV9zdWJtaXNzaW9uLmgKKysrIGIvbGliL2k5MTUvZ2VtX3N1Ym1pc3Npb24uaApAQCAtMjQs
NiArMjQsOCBAQAogI2lmbmRlZiBHRU1fU1VCTUlTU0lPTl9ICiAjZGVmaW5lIEdFTV9TVUJNSVNT
SU9OX0gKIAorI2luY2x1ZGUgPHN0ZGludC5oPgorCiAjZGVmaW5lIEdFTV9TVUJNSVNTSU9OX1NF
TUFQSE9SRVMJKDEgPDwgMCkKICNkZWZpbmUgR0VNX1NVQk1JU1NJT05fRVhFQ0xJU1RTCSgxIDw8
IDEpCiAjZGVmaW5lIEdFTV9TVUJNSVNTSU9OX0dVQwkJKDEgPDwgMikKLS0gCjIuMjMuMAoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
