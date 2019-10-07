Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 719ECCDD47
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Oct 2019 10:28:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 093EA6E4CA;
	Mon,  7 Oct 2019 08:28:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 80BA76E4C4;
 Mon,  7 Oct 2019 08:28:02 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18747762-1500050 
 for multiple; Mon, 07 Oct 2019 09:27:57 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  7 Oct 2019 09:27:56 +0100
Message-Id: <20191007082756.5963-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] lib/i915: Bump conservative threshold for
 ring size
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

V2UgYXJlIHN0aWxsIGhpdHRpbmcgdGhlIG9jY2FzaW9uYWwgc3RhbGwgdXBvbiBzdWJtaXNzaW9u
LCBzbyBiZSBleHRyYQpjYXV0aW9uIGFuZCBsZWF2ZSBvbmUgbW9yZSBzcGFyZS4KClNpZ25lZC1v
ZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgotLS0KIGxpYi9p
OTE1L2dlbV9yaW5nLmMgfCA0ICsrLS0KIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyks
IDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvbGliL2k5MTUvZ2VtX3JpbmcuYyBiL2xpYi9p
OTE1L2dlbV9yaW5nLmMKaW5kZXggMjcyMjY0NjU5Li45ZjA5OWVkZmYgMTAwNjQ0Ci0tLSBhL2xp
Yi9pOTE1L2dlbV9yaW5nLmMKKysrIGIvbGliL2k5MTUvZ2VtX3JpbmcuYwpAQCAtMTA0LDcgKzEw
NCw3IEBAIF9fZ2VtX21lYXN1cmVfcmluZ19pbmZsaWdodChpbnQgZmQsIHVuc2lnbmVkIGludCBl
bmdpbmUsIGVudW0gbWVhc3VyZV9yaW5nX2ZsYWdzCiAJfSB3aGlsZSAoMSk7CiAKIAlpZ3RfYXNz
ZXJ0X2VxKF9fZXhlY2J1ZihmZCwgJmV4ZWNidWYpLCAtRUlOVFIpOwotCWlndF9hc3NlcnQoY291
bnQgPiAxKTsKKwlpZ3RfYXNzZXJ0KGNvdW50ID4gMik7CiAKIAltZW1zZXQoJml0diwgMCwgc2l6
ZW9mKGl0dikpOwogCXNldGl0aW1lcihJVElNRVJfUkVBTCwgJml0diwgTlVMTCk7CkBAIC0xMjAs
NyArMTIwLDcgQEAgX19nZW1fbWVhc3VyZV9yaW5nX2luZmxpZ2h0KGludCBmZCwgdW5zaWduZWQg
aW50IGVuZ2luZSwgZW51bSBtZWFzdXJlX3JpbmdfZmxhZ3MKIAlnZW1fcXVpZXNjZW50X2dwdShm
ZCk7CiAKIAkvKiBCZSBjb25zZXJ2YXRpdmUgaW4gY2FzZSB3ZSBtdXN0IHdyYXAgbGF0ZXIgKi8K
LQlyZXR1cm4gY291bnQgLSAxOworCXJldHVybiBjb3VudCAtIDI7CiB9CiAKIC8qKgotLSAKMi4y
My4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
