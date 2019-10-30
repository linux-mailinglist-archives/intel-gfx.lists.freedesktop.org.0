Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 874CEE9BAE
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Oct 2019 13:42:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E34996E9C8;
	Wed, 30 Oct 2019 12:42:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 92C2C6E9A7;
 Wed, 30 Oct 2019 12:42:42 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19019247-1500050 
 for multiple; Wed, 30 Oct 2019 12:42:38 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 30 Oct 2019 12:42:36 +0000
Message-Id: <20191030124236.8810-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0.rc1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] amdgpu/amd_basic: Restrict basic compute
 to only run on available compute rings
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

U29tZSB0aW1lIGFnbyBhbWRncHUgY2hhbmdlZCB0aGVpciBBQkkgdG8gcmVqZWN0IHVua25vd24g
Y29tcHV0ZSByaW5ncywKc28gd2Ugc2hvdWxkIHF1ZXJ5IHRoZSBhdmFpbGFibGUgc2V0IHByaW9y
IHRvIGV4ZWN1dGlvbi4KClNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMt
d2lsc29uLmNvLnVrPgotLS0KIHRlc3RzL2FtZGdwdS9hbWRfYmFzaWMuYyB8IDEyICsrKysrKysr
LS0tLQogMSBmaWxlIGNoYW5nZWQsIDggaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKCmRp
ZmYgLS1naXQgYS90ZXN0cy9hbWRncHUvYW1kX2Jhc2ljLmMgYi90ZXN0cy9hbWRncHUvYW1kX2Jh
c2ljLmMKaW5kZXggZDNjMDYwZTMyLi5iZjYyNmVjZTggMTAwNjQ0Ci0tLSBhL3Rlc3RzL2FtZGdw
dS9hbWRfYmFzaWMuYworKysgYi90ZXN0cy9hbWRncHUvYW1kX2Jhc2ljLmMKQEAgLTY4MSwxNiAr
NjgxLDIwIEBAIHN0YXRpYyB2b2lkIGFtZGdwdV9jb21tYW5kX3N1Ym1pc3Npb25fY29tcHV0ZV9u
b3Aodm9pZCkKIAlzdHJ1Y3QgYW1kZ3B1X2NzX3JlcXVlc3QgaWJzX3JlcXVlc3Q7CiAJc3RydWN0
IGFtZGdwdV9jc19pYl9pbmZvIGliX2luZm87CiAJc3RydWN0IGFtZGdwdV9jc19mZW5jZSBmZW5j
ZV9zdGF0dXM7CisJc3RydWN0IGRybV9hbWRncHVfaW5mb19od19pcCBpbmZvOwogCXVpbnQzMl90
ICpwdHI7CiAJdWludDMyX3QgZXhwaXJlZDsKLQlpbnQgaSwgciwgaW5zdGFuY2U7CisJaW50IHIs
IGluc3RhbmNlOwogCWFtZGdwdV9ib19saXN0X2hhbmRsZSBib19saXN0OwogCWFtZGdwdV92YV9o
YW5kbGUgdmFfaGFuZGxlOwogCisJciA9IGFtZGdwdV9xdWVyeV9od19pcF9pbmZvKGRldmljZSwg
QU1ER1BVX0hXX0lQX0NPTVBVVEUsIDAsICZpbmZvKTsKKwlpZ3RfYXNzZXJ0X2VxKHIsIDApOwor
CiAJciA9IGFtZGdwdV9jc19jdHhfY3JlYXRlKGRldmljZSwgJmNvbnRleHRfaGFuZGxlKTsKIAlp
Z3RfYXNzZXJ0X2VxKHIsIDApOwogCi0JZm9yIChpbnN0YW5jZSA9IDA7IGluc3RhbmNlIDwgODsg
aW5zdGFuY2UrKykgeworCWZvciAoaW5zdGFuY2UgPSAwOyBpbmZvLmF2YWlsYWJsZV9yaW5ncyAm
ICgxIDw8IGluc3RhbmNlKTsgaW5zdGFuY2UrKykgewogCQlyID0gYW1kZ3B1X2JvX2FsbG9jX2Fu
ZF9tYXAoZGV2aWNlLCA0MDk2LCA0MDk2LAogCQkJCQkgICAgQU1ER1BVX0dFTV9ET01BSU5fR1RU
LCAwLAogCQkJCQkgICAgJmliX3Jlc3VsdF9oYW5kbGUsICZpYl9yZXN1bHRfY3B1LApAQCAtNzAy
LDggKzcwNiw4IEBAIHN0YXRpYyB2b2lkIGFtZGdwdV9jb21tYW5kX3N1Ym1pc3Npb25fY29tcHV0
ZV9ub3Aodm9pZCkKIAkJaWd0X2Fzc2VydF9lcShyLCAwKTsKIAogCQlwdHIgPSBpYl9yZXN1bHRf
Y3B1OwotCQlmb3IgKGkgPSAwOyBpIDwgMTY7ICsraSkKLQkJCXB0cltpXSA9IDB4ZmZmZjEwMDA7
CisJCW1lbXNldChwdHIsIDAsIDE2KTsKKwkJcHRyWzBdID0gUEFDS0VUMyhQQUNLRVQzX05PUCwg
MTQpOwogCiAJCW1lbXNldCgmaWJfaW5mbywgMCwgc2l6ZW9mKHN0cnVjdCBhbWRncHVfY3NfaWJf
aW5mbykpOwogCQlpYl9pbmZvLmliX21jX2FkZHJlc3MgPSBpYl9yZXN1bHRfbWNfYWRkcmVzczsK
LS0gCjIuMjQuMC5yYzEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LWdmeA==
