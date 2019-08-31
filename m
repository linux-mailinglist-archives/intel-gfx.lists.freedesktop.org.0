Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E6095A45DB
	for <lists+intel-gfx@lfdr.de>; Sat, 31 Aug 2019 21:17:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ABF456E149;
	Sat, 31 Aug 2019 19:17:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5BDEC6E149;
 Sat, 31 Aug 2019 19:17:44 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18330116-1500050 
 for multiple; Sat, 31 Aug 2019 20:17:21 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sat, 31 Aug 2019 20:17:19 +0100
Message-Id: <20190831191719.24715-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] lib: Fix gem_measure_ring_inflight
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
PgotLS0KIGxpYi9pOTE1L2dlbV9yaW5nLmMgfCAyNiArKysrKysrKysrKysrKysrLS0tLS0tLS0t
LQogMSBmaWxlIGNoYW5nZWQsIDE2IGluc2VydGlvbnMoKyksIDEwIGRlbGV0aW9ucygtKQoKZGlm
ZiAtLWdpdCBhL2xpYi9pOTE1L2dlbV9yaW5nLmMgYi9saWIvaTkxNS9nZW1fcmluZy5jCmluZGV4
IGJmN2Y0MzllMS4uMjcyMjY0NjU5IDEwMDY0NAotLS0gYS9saWIvaTkxNS9nZW1fcmluZy5jCisr
KyBiL2xpYi9pOTE1L2dlbV9yaW5nLmMKQEAgLTIxLDEyICsyMSwxMyBAQAogICogSU4gVEhFIFNP
RlRXQVJFLgogICovCiAKLSNpbmNsdWRlICJnZW1fcmluZy5oIgotCiAjaW5jbHVkZSA8c2lnbmFs
Lmg+CiAjaW5jbHVkZSA8c3lzL2lvY3RsLmg+CiAjaW5jbHVkZSA8c3lzL3RpbWUuaD4KIAorI2lu
Y2x1ZGUgImdlbV9yaW5nLmgiCisjaW5jbHVkZSAiZ2VtX3N1Ym1pc3Npb24uaCIKKwogI2luY2x1
ZGUgImludGVsX3JlZy5oIgogI2luY2x1ZGUgImRybXRlc3QuaCIKICNpbmNsdWRlICJpb2N0bF93
cmFwcGVycy5oIgpAQCAtMTQwLDE4ICsxNDEsMjMgQEAgX19nZW1fbWVhc3VyZV9yaW5nX2luZmxp
Z2h0KGludCBmZCwgdW5zaWduZWQgaW50IGVuZ2luZSwgZW51bSBtZWFzdXJlX3JpbmdfZmxhZ3MK
IHVuc2lnbmVkIGludAogZ2VtX21lYXN1cmVfcmluZ19pbmZsaWdodChpbnQgZmQsIHVuc2lnbmVk
IGludCBlbmdpbmUsIGVudW0gbWVhc3VyZV9yaW5nX2ZsYWdzIGZsYWdzKQogewotCWlmIChlbmdp
bmUgPT0gQUxMX0VOR0lORVMpIHsKLQkJdW5zaWduZWQgaW50IGdsb2JhbF9taW4gPSB+MHU7CisJ
dW5zaWduZWQgaW50IG1pbiA9IH4wdTsKIAorCWZkID0gZ2VtX3Jlb3Blbl9kcml2ZXIoZmQpOwor
CisJaWYgKGVuZ2luZSA9PSBBTExfRU5HSU5FUykgewogCQlmb3JfZWFjaF9waHlzaWNhbF9lbmdp
bmUoZmQsIGVuZ2luZSkgewotCQkJdW5zaWduZWQgaW50IGVuZ2luZV9taW4gPSBfX2dlbV9tZWFz
dXJlX3JpbmdfaW5mbGlnaHQoZmQsIGVuZ2luZSwgZmxhZ3MpOworCQkJdW5zaWduZWQgaW50IGNv
dW50ID0KKwkJCQlfX2dlbV9tZWFzdXJlX3JpbmdfaW5mbGlnaHQoZmQsIGVuZ2luZSwgZmxhZ3Mp
OwogCi0JCQlpZiAoZW5naW5lX21pbiA8IGdsb2JhbF9taW4pCi0JCQkJZ2xvYmFsX21pbiA9IGVu
Z2luZV9taW47CisJCQlpZiAoY291bnQgPCBtaW4pCisJCQkJbWluID0gY291bnQ7CiAJCX0KLQot
CQlyZXR1cm4gZ2xvYmFsX21pbjsKKwl9IGVsc2UgeworCQltaW4gPSAgX19nZW1fbWVhc3VyZV9y
aW5nX2luZmxpZ2h0KGZkLCBlbmdpbmUsIGZsYWdzKTsKIAl9CiAKLQlyZXR1cm4gX19nZW1fbWVh
c3VyZV9yaW5nX2luZmxpZ2h0KGZkLCBlbmdpbmUsIGZsYWdzKTsKKwljbG9zZShmZCk7CisKKwly
ZXR1cm4gbWluOwogfQotLSAKMi4yMy4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZng=
