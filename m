Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ED16FEA7EE
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Oct 2019 00:59:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9F4B16EBBD;
	Wed, 30 Oct 2019 23:59:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9BBA16EBBB;
 Wed, 30 Oct 2019 23:59:42 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19026083-1500050 
 for multiple; Wed, 30 Oct 2019 23:59:35 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 30 Oct 2019 23:59:34 +0000
Message-Id: <20191030235934.4705-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0.rc1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] i915/gem_ctx_persistence: Sanitycheck
 execbuf state harder for 'queued'
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

QW5kIGluaXRpYWxpc2UgZmVuY2UgdG8gLTEgdG8gYXZvaWQgY2xvc2luZyBzdGRpbiAoZmQ6MCkh
CgpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4K
LS0tCiB0ZXN0cy9pOTE1L2dlbV9jdHhfcGVyc2lzdGVuY2UuYyB8IDEyICsrKysrKystLS0tLQog
MSBmaWxlIGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKSwgNSBkZWxldGlvbnMoLSkKCmRpZmYgLS1n
aXQgYS90ZXN0cy9pOTE1L2dlbV9jdHhfcGVyc2lzdGVuY2UuYyBiL3Rlc3RzL2k5MTUvZ2VtX2N0
eF9wZXJzaXN0ZW5jZS5jCmluZGV4IDkyNzNkYTE1OS4uZmE2ZWU3NTE2IDEwMDY0NAotLS0gYS90
ZXN0cy9pOTE1L2dlbV9jdHhfcGVyc2lzdGVuY2UuYworKysgYi90ZXN0cy9pOTE1L2dlbV9jdHhf
cGVyc2lzdGVuY2UuYwpAQCAtMzYzLDEwICszNjMsMTAgQEAgc3RhdGljIHZvaWQgdGVzdF9ub25w
ZXJzaXN0ZW50X2ZpbGUoaW50IGk5MTUpCiAKIHN0YXRpYyB2b2lkIHRlc3Rfbm9ucGVyc2lzdGVu
dF9xdWV1ZWQoaW50IGk5MTUsIHVuc2lnbmVkIGludCBlbmdpbmUpCiB7Ci0JaW50IGNvdW50ID0g
Z2VtX21lYXN1cmVfcmluZ19pbmZsaWdodChpOTE1LCBlbmdpbmUsIDApOworCWNvbnN0IGludCBj
b3VudCA9IGdlbV9tZWFzdXJlX3JpbmdfaW5mbGlnaHQoaTkxNSwgZW5naW5lLCAwKTsKIAlpZ3Rf
c3Bpbl90ICpzcGluOworCWludCBmZW5jZSA9IC0xOwogCXVpbnQzMl90IGN0eDsKLQlpbnQgZmVu
Y2U7CiAKIAkvKgogCSAqIE5vdCBvbmx5IG11c3QgdGhlIGltbWVkaWF0ZSBiYXRjaCBiZSBjYW5j
ZWxsZWQsIGJ1dApAQCAtMzgzLDEwICszODMsMTMgQEAgc3RhdGljIHZvaWQgdGVzdF9ub25wZXJz
aXN0ZW50X3F1ZXVlZChpbnQgaTkxNSwgdW5zaWduZWQgaW50IGVuZ2luZSkKIAkJCSAgICAuZmxh
Z3MgPSBJR1RfU1BJTl9GRU5DRV9PVVQpOwogCiAJZm9yIChpbnQgaSA9IDA7IGkgPCBjb3VudCAt
IDE7IGkrKykgeworCQlzcGluLT5leGVjYnVmLnJzdmQyID0gMDsKIAkJaWYgKGZlbmNlICE9IC0x
KQogCQkJY2xvc2UoZmVuY2UpOwotCQlzcGluLT5leGVjYnVmLnJzdmQyID0gMDsKKworCQlpZ3Rf
YXNzZXJ0KHNwaW4tPmV4ZWNidWYuZmxhZ3MgJiBJOTE1X0VYRUNfRkVOQ0VfT1VUKTsKIAkJZ2Vt
X2V4ZWNidWZfd3IoaTkxNSwgJnNwaW4tPmV4ZWNidWYpOworCiAJCWlndF9hc3NlcnQoc3Bpbi0+
ZXhlY2J1Zi5yc3ZkMik7CiAJCWZlbmNlID0gc3Bpbi0+ZXhlY2J1Zi5yc3ZkMiA+PiAzMjsKIAl9
CkBAIC0zOTYsOCArMzk5LDcgQEAgc3RhdGljIHZvaWQgdGVzdF9ub25wZXJzaXN0ZW50X3F1ZXVl
ZChpbnQgaTkxNSwgdW5zaWduZWQgaW50IGVuZ2luZSkKIAlpZ3RfYXNzZXJ0X2VxKHN5bmNfZmVu
Y2Vfd2FpdChmZW5jZSwgTVNFQ19QRVJfU0VDIC8gNSksIDApOwogCWlndF9hc3NlcnRfZXEoc3lu
Y19mZW5jZV9zdGF0dXMoZmVuY2UpLCAtRUlPKTsKIAotCXNwaW4tPmhhbmRsZSA9IDA7Ci0JaWd0
X3NwaW5fZnJlZSgtMSwgc3Bpbik7CisJaWd0X3NwaW5fZnJlZShpOTE1LCBzcGluKTsKIH0KIAog
c3RhdGljIHZvaWQgc2VuZGZkKGludCBzb2NrZXQsIGludCBmZCkKLS0gCjIuMjQuMC5yYzEKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
