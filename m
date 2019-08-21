Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0736D9851C
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Aug 2019 22:03:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 44EC16EA0D;
	Wed, 21 Aug 2019 20:03:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8EE536EA0A;
 Wed, 21 Aug 2019 20:03:40 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18219172-1500050 
 for multiple; Wed, 21 Aug 2019 21:03:30 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 21 Aug 2019 21:03:28 +0100
Message-Id: <20190821200328.22668-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] prime_busy: Prebind the batch buffer
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
Cc: igt-dev@lists.freedesktop.org, Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhlIHRlc3QgYXNzdW1lcyB0aGF0IHRoZSBkbWFidWYgZm9yIHRoZSBiYXRjaCBidWZmZXIgaGFz
IG5vIGV4Y2x1c2l2ZQpmZW5jZS4gVGhpcyBpcyBvbmx5IHRydWUgZm9yIHRoZSBiYXRjaCBhcyBp
dCBleGVjdXRlcyBvbiB0aGUgR1BVOyBwcmlvcgp0byB0aGF0IHdlIG1heSBiZSBpbiB0aGUgcHJv
Y2VzcyBvZiBtb3ZpbmcgaXQgaW50byBtZW1vcnkgYW5kIHRoZQpwcEdUVCB3aGljaCBjYXVzZSB0
aGUgYmF0Y2ggdG8gY2FycnkgYW4gZXhjbHVzaXZlIGZlbmNlLiBLZWVwIHRoZSB0ZXN0CnNpbXBs
ZSBhbmQgcHJlYmluZCB0aGUgYmF0Y2ggYnVmZmVyIHNvIHRoYXQgd2hlbiB3ZSBwb2xsIHRoZSBk
bWFidWYgZmQsCndlIG9ubHkgZXhwZWN0IGl0IHRvIGJlIHRoZSBzcGlubmluZyBiYXRjaC4KCkFs
dGVybmF0aXZlbHkgd2UgY291bGQgd2FpdCB1bnRpbCB3ZSBzdGFydCB3cml0aW5nIHZhbHVlcyBp
bnRvIHNjcmF0Y2gKKGkuZS4gaWd0X3NwaW5fYnVzeXdhaXRfdW50aWxfc3RhcnRlZCgpKS4gVGhp
cyBzZWVtZWQgc2ltcGxlci4KClNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hy
aXMtd2lsc29uLmNvLnVrPgpDYzogTWF0dGhldyBBdWxkIDxtYXR0aGV3LmF1bGRAaW50ZWwuY29t
PgotLS0KIHRlc3RzL3ByaW1lX2J1c3kuYyB8IDM4ICsrKysrKysrKysrKysrKysrKysrKysrKy0t
LS0tLS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgMjQgaW5zZXJ0aW9ucygrKSwgMTQgZGVsZXRp
b25zKC0pCgpkaWZmIC0tZ2l0IGEvdGVzdHMvcHJpbWVfYnVzeS5jIGIvdGVzdHMvcHJpbWVfYnVz
eS5jCmluZGV4IGE4MmFjYmRiYy4uNGYyMzdmNjhmIDEwMDY0NAotLS0gYS90ZXN0cy9wcmltZV9i
dXN5LmMKKysrIGIvdGVzdHMvcHJpbWVfYnVzeS5jCkBAIC00MSw2ICs0MSw3IEBAIHN0YXRpYyBi
b29sIHByaW1lX2J1c3koc3RydWN0IHBvbGxmZCAqcGZkLCBib29sIGV4Y2wpCiBzdGF0aWMgdm9p
ZCBidXN5KGludCBmZCwgdW5zaWduZWQgcmluZywgdW5zaWduZWQgZmxhZ3MpCiB7CiAJY29uc3Qg
aW50IGdlbiA9IGludGVsX2dlbihpbnRlbF9nZXRfZHJtX2RldmlkKGZkKSk7CisJY29uc3QgdWlu
dDMyX3QgX2JiZSA9IE1JX0JBVENIX0JVRkZFUl9FTkQ7CiAJc3RydWN0IGRybV9pOTE1X2dlbV9l
eGVjX29iamVjdDIgb2JqWzJdOwogCXN0cnVjdCBwb2xsZmQgcGZkWzJdOwogI2RlZmluZSBTQ1JB
VENIIDAKQEAgLTU1LDcgKzU2LDcgQEAgc3RhdGljIHZvaWQgYnVzeShpbnQgZmQsIHVuc2lnbmVk
IHJpbmcsIHVuc2lnbmVkIGZsYWdzKQogCWdlbV9xdWllc2NlbnRfZ3B1KGZkKTsKIAogCW1lbXNl
dCgmZXhlY2J1ZiwgMCwgc2l6ZW9mKGV4ZWNidWYpKTsKLQlleGVjYnVmLmJ1ZmZlcnNfcHRyID0g
KHVpbnRwdHJfdClvYmo7CisJZXhlY2J1Zi5idWZmZXJzX3B0ciA9IHRvX3VzZXJfcG9pbnRlcihv
YmopOwogCWV4ZWNidWYuYnVmZmVyX2NvdW50ID0gMjsKIAlleGVjYnVmLmZsYWdzID0gcmluZzsK
IAlpZiAoZ2VuIDwgNikKQEAgLTY1LDcgKzY2LDExIEBAIHN0YXRpYyB2b2lkIGJ1c3koaW50IGZk
LCB1bnNpZ25lZCByaW5nLCB1bnNpZ25lZCBmbGFncykKIAlvYmpbU0NSQVRDSF0uaGFuZGxlID0g
Z2VtX2NyZWF0ZShmZCwgNDA5Nik7CiAKIAlvYmpbQkFUQ0hdLmhhbmRsZSA9IGdlbV9jcmVhdGUo
ZmQsIHNpemUpOwotCW9ialtCQVRDSF0ucmVsb2NzX3B0ciA9ICh1aW50cHRyX3Qpc3RvcmU7CisJ
b2JqW0JBVENIXS5vZmZzZXQgPSAxIDw8IDIwOworCWdlbV93cml0ZShmZCwgb2JqW0JBVENIXS5o
YW5kbGUsIDAsICZfYmJlLCBzaXplb2YoX2JiZSkpOworCWlndF9yZXF1aXJlKF9fZ2VtX2V4ZWNi
dWYoZmQsICZleGVjYnVmKSA9PSAwKTsgLyogcHJlYmluZCB0aGUgYnVmZmVycyAqLworCisJb2Jq
W0JBVENIXS5yZWxvY3NfcHRyID0gdG9fdXNlcl9wb2ludGVyKHN0b3JlKTsKIAlvYmpbQkFUQ0hd
LnJlbG9jYXRpb25fY291bnQgPSBBUlJBWV9TSVpFKHN0b3JlKTsKIAltZW1zZXQoc3RvcmUsIDAs
IHNpemVvZihzdG9yZSkpOwogCkBAIC04MSwyMyArODYsMjggQEAgc3RhdGljIHZvaWQgYnVzeShp
bnQgZmQsIHVuc2lnbmVkIHJpbmcsIHVuc2lnbmVkIGZsYWdzKQogCiAJaSA9IDA7CiAJZm9yIChj
b3VudCA9IDA7IGNvdW50IDwgMTAyNDsgY291bnQrKykgeworCQl1aW50NjRfdCBvZmZzZXQ7CisK
IAkJc3RvcmVbY291bnRdLnRhcmdldF9oYW5kbGUgPSBvYmpbU0NSQVRDSF0uaGFuZGxlOwotCQlz
dG9yZVtjb3VudF0ucHJlc3VtZWRfb2Zmc2V0ID0gLTE7CisJCXN0b3JlW2NvdW50XS5wcmVzdW1l
ZF9vZmZzZXQgPSBvYmpbU0NSQVRDSF0ub2Zmc2V0OwogCQlzdG9yZVtjb3VudF0ub2Zmc2V0ID0g
c2l6ZW9mKHVpbnQzMl90KSAqIChpICsgMSk7CiAJCXN0b3JlW2NvdW50XS5kZWx0YSA9IHNpemVv
Zih1aW50MzJfdCkgKiBjb3VudDsKLQkJc3RvcmVbY291bnRdLnJlYWRfZG9tYWlucyA9IEk5MTVf
R0VNX0RPTUFJTl9JTlNUUlVDVElPTjsKLQkJc3RvcmVbY291bnRdLndyaXRlX2RvbWFpbiA9IEk5
MTVfR0VNX0RPTUFJTl9JTlNUUlVDVElPTjsKKwkJc3RvcmVbY291bnRdLnJlYWRfZG9tYWlucyA9
IEk5MTVfR0VNX0RPTUFJTl9SRU5ERVI7CisJCXN0b3JlW2NvdW50XS53cml0ZV9kb21haW4gPSBJ
OTE1X0dFTV9ET01BSU5fUkVOREVSOworCisJCW9mZnNldCA9IHN0b3JlW2NvdW50XS5wcmVzdW1l
ZF9vZmZzZXQgKyBzdG9yZVtjb3VudF0uZGVsdGE7CisKIAkJYmF0Y2hbaV0gPSBNSV9TVE9SRV9E
V09SRF9JTU0gfCAoZ2VuIDwgNiA/IDEgPDwgMjIgOiAwKTsKIAkJaWYgKGdlbiA+PSA4KSB7Ci0J
CQliYXRjaFsrK2ldID0gMDsKLQkJCWJhdGNoWysraV0gPSAwOworCQkJYmF0Y2hbKytpXSA9IG9m
ZnNldDsKKwkJCWJhdGNoWysraV0gPSBvZmZzZXQgPj4gMzI7CiAJCX0gZWxzZSBpZiAoZ2VuID49
IDQpIHsKIAkJCWJhdGNoWysraV0gPSAwOwotCQkJYmF0Y2hbKytpXSA9IDA7CisJCQliYXRjaFsr
K2ldID0gb2Zmc2V0OwogCQkJc3RvcmVbY291bnRdLm9mZnNldCArPSBzaXplb2YodWludDMyX3Qp
OwogCQl9IGVsc2UgewogCQkJYmF0Y2hbaV0tLTsKLQkJCWJhdGNoWysraV0gPSAwOworCQkJYmF0
Y2hbKytpXSA9IG9mZnNldDsKIAkJfQogCQliYXRjaFsrK2ldID0gY291bnQ7CiAJCWkrKzsKQEAg
LTEwNSw3ICsxMTUsNyBAQCBzdGF0aWMgdm9pZCBidXN5KGludCBmZCwgdW5zaWduZWQgcmluZywg
dW5zaWduZWQgZmxhZ3MpCiAKIAliYmUgPSAmYmF0Y2hbaV07CiAJc3RvcmVbY291bnRdLnRhcmdl
dF9oYW5kbGUgPSBvYmpbQkFUQ0hdLmhhbmRsZTsgLyogcmVjdXJzZSAqLwotCXN0b3JlW2NvdW50
XS5wcmVzdW1lZF9vZmZzZXQgPSAwOworCXN0b3JlW2NvdW50XS5wcmVzdW1lZF9vZmZzZXQgPSBv
YmpbQkFUQ0hdLm9mZnNldDsKIAlzdG9yZVtjb3VudF0ub2Zmc2V0ID0gc2l6ZW9mKHVpbnQzMl90
KSAqIChpICsgMSk7CiAJc3RvcmVbY291bnRdLmRlbHRhID0gMDsKIAlzdG9yZVtjb3VudF0ucmVh
ZF9kb21haW5zID0gSTkxNV9HRU1fRE9NQUlOX0NPTU1BTkQ7CkBAIC0xMTMsMTQgKzEyMywxNCBA
QCBzdGF0aWMgdm9pZCBidXN5KGludCBmZCwgdW5zaWduZWQgcmluZywgdW5zaWduZWQgZmxhZ3Mp
CiAJYmF0Y2hbaV0gPSBNSV9CQVRDSF9CVUZGRVJfU1RBUlQ7CiAJaWYgKGdlbiA+PSA4KSB7CiAJ
CWJhdGNoW2ldIHw9IDEgPDwgOCB8IDE7Ci0JCWJhdGNoWysraV0gPSAwOwotCQliYXRjaFsrK2ld
ID0gMDsKKwkJYmF0Y2hbKytpXSA9IG9ialtCQVRDSF0ub2Zmc2V0OworCQliYXRjaFsrK2ldID0g
b2JqW0JBVENIXS5vZmZzZXQgPj4gMzI7CiAJfSBlbHNlIGlmIChnZW4gPj0gNikgewogCQliYXRj
aFtpXSB8PSAxIDw8IDg7Ci0JCWJhdGNoWysraV0gPSAwOworCQliYXRjaFsrK2ldID0gb2JqW0JB
VENIXS5vZmZzZXQ7CiAJfSBlbHNlIHsKIAkJYmF0Y2hbaV0gfD0gMiA8PCA2OwotCQliYXRjaFsr
K2ldID0gMDsKKwkJYmF0Y2hbKytpXSA9IG9ialtCQVRDSF0ub2Zmc2V0OwogCQlpZiAoZ2VuIDwg
NCkgewogCQkJYmF0Y2hbaV0gfD0gMTsKIAkJCXN0b3JlW2NvdW50XS5kZWx0YSA9IDE7Ci0tIAoy
LjIzLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
