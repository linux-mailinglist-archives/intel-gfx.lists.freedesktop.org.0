Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C76122B192
	for <lists+intel-gfx@lfdr.de>; Mon, 27 May 2019 11:48:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E41C8966B;
	Mon, 27 May 2019 09:48:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9002D8966B;
 Mon, 27 May 2019 09:48:11 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 16692735-1500050 
 for multiple; Mon, 27 May 2019 10:46:23 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 27 May 2019 10:46:11 +0100
Message-Id: <20190527094611.31948-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] benchmarks/gem_wsim: Tidy manual sizeof
 VLA calculations
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

V2UgY2FuIHVzZSBvZmZzZXRvZiBmb3IgdGhlIHNhbWUgZWZmZWN0LCBtdWNoIHRpZGllciB3aXRo
IG5vIGR1bW15CmxvY2Fscy4KClNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hy
aXMtd2lsc29uLmNvLnVrPgpDYzogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVs
LmNvbT4KLS0tCiBiZW5jaG1hcmtzL2dlbV93c2ltLmMgfCAxNSArKysrKystLS0tLS0tLS0KIDEg
ZmlsZSBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKyksIDkgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0
IGEvYmVuY2htYXJrcy9nZW1fd3NpbS5jIGIvYmVuY2htYXJrcy9nZW1fd3NpbS5jCmluZGV4IGRi
MTk5MjViMS4uYTc2ZmRiZmUyIDEwMDY0NAotLS0gYS9iZW5jaG1hcmtzL2dlbV93c2ltLmMKKysr
IGIvYmVuY2htYXJrcy9nZW1fd3NpbS5jCkBAIC0xNDQzLDIzICsxNDQzLDIwIEBAIHNldF9jdHhf
c3NldShzdHJ1Y3QgY3R4ICpjdHgsIHVpbnQ2NF90IHNsaWNlX21hc2spCiAKIHN0YXRpYyBzaXpl
X3Qgc2l6ZW9mX2xvYWRfYmFsYW5jZShpbnQgY291bnQpCiB7Ci0Jc3RydWN0IGk5MTVfY29udGV4
dF9lbmdpbmVzX2xvYWRfYmFsYW5jZSAqcHRyOwotCi0JcmV0dXJuIHNpemVvZigqcHRyKSArIGNv
dW50ICogc2l6ZW9mKHB0ci0+ZW5naW5lc1swXSk7CisJcmV0dXJuIG9mZnNldG9mKHN0cnVjdCBp
OTE1X2NvbnRleHRfZW5naW5lc19sb2FkX2JhbGFuY2UsCisJCQllbmdpbmVzW2NvdW50XSk7CiB9
CiAKIHN0YXRpYyBzaXplX3Qgc2l6ZW9mX3BhcmFtX2VuZ2luZXMoaW50IGNvdW50KQogewotCXN0
cnVjdCBpOTE1X2NvbnRleHRfcGFyYW1fZW5naW5lcyAqcHRyOwotCi0JcmV0dXJuIHNpemVvZigq
cHRyKSArIGNvdW50ICogc2l6ZW9mKHB0ci0+ZW5naW5lc1swXSk7CisJcmV0dXJuIG9mZnNldG9m
KHN0cnVjdCBpOTE1X2NvbnRleHRfcGFyYW1fZW5naW5lcywKKwkJCWVuZ2luZXNbY291bnRdKTsK
IH0KIAogc3RhdGljIHNpemVfdCBzaXplb2ZfZW5naW5lc19ib25kKGludCBjb3VudCkKIHsKLQlz
dHJ1Y3QgaTkxNV9jb250ZXh0X2VuZ2luZXNfYm9uZCAqcHRyOwotCi0JcmV0dXJuIHNpemVvZigq
cHRyKSArIGNvdW50ICogc2l6ZW9mKHB0ci0+ZW5naW5lc1swXSk7CisJcmV0dXJuIG9mZnNldG9m
KHN0cnVjdCBpOTE1X2NvbnRleHRfZW5naW5lc19ib25kLAorCQkJZW5naW5lc1tjb3VudF0pOwog
fQogCiAjZGVmaW5lIGFsbG9jYTAoc3opICh7IHNpemVfdCBzel9fID0gKHN6KTsgbWVtc2V0KGFs
bG9jYShzel9fKSwgMCwgc3pfXyk7IH0pCi0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
