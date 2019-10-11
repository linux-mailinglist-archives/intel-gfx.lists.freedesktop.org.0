Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E3732D3A86
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Oct 2019 10:06:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 57A226EBC6;
	Fri, 11 Oct 2019 08:06:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 962456EBC6;
 Fri, 11 Oct 2019 08:06:49 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18799738-1500050 
 for multiple; Fri, 11 Oct 2019 09:06:44 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 11 Oct 2019 09:06:42 +0100
Message-Id: <20191011080642.23061-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] i915: Use O_NONBLOCK for faster ringsize
 probing
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

V2hlbiB0aGUga2VybmVsIHN1cHBvcnRzIE9fTk9OQkxPQ0sgcmVwb3J0aW5nIG9mIGEgZnVsbCBl
eGVjYnVmIHF1ZXVlLAp0YWtlIGFkdmFudGFnZSBvZiB0aGF0IHRvIGltbWVkaWF0ZWx5IHJlcG9y
dCB3aGVuIHRoZSBvdXRwdXQgd291bGQgYmxvY2sKZHVlIHRvIHRoZSByaW5nIGJlaW5nIGZ1bGwu
CgpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4K
LS0tCiBsaWIvaTkxNS9nZW1fcmluZy5jIHwgMTMgKysrKysrKysrKy0tLQogMSBmaWxlIGNoYW5n
ZWQsIDEwIGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvbGliL2k5
MTUvZ2VtX3JpbmcuYyBiL2xpYi9pOTE1L2dlbV9yaW5nLmMKaW5kZXggOWYwOTllZGZmLi41Y2Ey
YTcyOGIgMTAwNjQ0Ci0tLSBhL2xpYi9pOTE1L2dlbV9yaW5nLmMKKysrIGIvbGliL2k5MTUvZ2Vt
X3JpbmcuYwpAQCAtMjEsNiArMjEsNyBAQAogICogSU4gVEhFIFNPRlRXQVJFLgogICovCiAKKyNp
bmNsdWRlIDxmY250bC5oPgogI2luY2x1ZGUgPHNpZ25hbC5oPgogI2luY2x1ZGUgPHN5cy9pb2N0
bC5oPgogI2luY2x1ZGUgPHN5cy90aW1lLmg+CkBAIC04OSwxMSArOTAsMTYgQEAgX19nZW1fbWVh
c3VyZV9yaW5nX2luZmxpZ2h0KGludCBmZCwgdW5zaWduZWQgaW50IGVuZ2luZSwgZW51bSBtZWFz
dXJlX3JpbmdfZmxhZ3MKIAogCWNvdW50ID0gMDsKIAlkbyB7Ci0JCWlmIChfX2V4ZWNidWYoZmQs
ICZleGVjYnVmKSA9PSAwKSB7CisJCWludCBlcnIgPSBfX2V4ZWNidWYoZmQsICZleGVjYnVmKTsK
KworCQlpZiAoZXJyID09IDApIHsKIAkJCWNvdW50Kys7CiAJCQljb250aW51ZTsKIAkJfQogCisJ
CWlmIChlcnIgPT0gLUVXT1VMREJMT0NLKQorCQkJYnJlYWs7CisKIAkJaWYgKGxhc3RbMV0gPT0g
Y291bnQpCiAJCQlicmVhazsKIApAQCAtMTAyLDggKzEwOCw2IEBAIF9fZ2VtX21lYXN1cmVfcmlu
Z19pbmZsaWdodChpbnQgZmQsIHVuc2lnbmVkIGludCBlbmdpbmUsIGVudW0gbWVhc3VyZV9yaW5n
X2ZsYWdzCiAJCWxhc3RbMV0gPSBsYXN0WzBdOwogCQlsYXN0WzBdID0gY291bnQ7CiAJfSB3aGls
ZSAoMSk7Ci0KLQlpZ3RfYXNzZXJ0X2VxKF9fZXhlY2J1ZihmZCwgJmV4ZWNidWYpLCAtRUlOVFIp
OwogCWlndF9hc3NlcnQoY291bnQgPiAyKTsKIAogCW1lbXNldCgmaXR2LCAwLCBzaXplb2YoaXR2
KSk7CkBAIC0xNDUsNiArMTQ5LDkgQEAgZ2VtX21lYXN1cmVfcmluZ19pbmZsaWdodChpbnQgZmQs
IHVuc2lnbmVkIGludCBlbmdpbmUsIGVudW0gbWVhc3VyZV9yaW5nX2ZsYWdzIGYKIAogCWZkID0g
Z2VtX3Jlb3Blbl9kcml2ZXIoZmQpOwogCisJLyogV2hlbiBhdmFpbGFibGUsIGRpc2FibGUgZXhl
Y2J1ZiB0aHJvdHRsaW5nICovCisJZmNudGwoZmQsIEZfU0VURkQsIGZjbnRsKGZkLCBGX0dFVEZE
KSB8IE9fTk9OQkxPQ0spOworCiAJaWYgKGVuZ2luZSA9PSBBTExfRU5HSU5FUykgewogCQlmb3Jf
ZWFjaF9waHlzaWNhbF9lbmdpbmUoZmQsIGVuZ2luZSkgewogCQkJdW5zaWduZWQgaW50IGNvdW50
ID0KLS0gCjIuMjMuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4
