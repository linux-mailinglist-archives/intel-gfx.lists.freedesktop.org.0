Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 15D9A63759
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Jul 2019 15:57:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DEE1B6E05A;
	Tue,  9 Jul 2019 13:57:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8A7DF6E05A
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Jul 2019 13:57:39 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17185875-1500050 
 for multiple; Tue, 09 Jul 2019 14:57:26 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  9 Jul 2019 14:57:24 +0100
Message-Id: <20190709135724.26936-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/selftests: Hold the vma manager lock
 while modifying mmap_offset
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

X2lnaHQgaWRlYSwgd3JvbmcgbG9jay4gV2UgYWxyZWFkeSBkcm9wIHN0cnVjdF9tdXRleCBiZWZv
cmUgd2UgZnJlZSB0aGUKbW1hcF9vZmZzZXQgd2hlbiBmcmVlaW5nIHRoZSBvYmplY3QsIHNvIHdl
IG5lZWQgdG8gdGFrZSB0aGUgdm1hIG1hbmFnZXIKbG9jayB3aGVuIG1hbmlwdWxhdGluZyB0aGUg
bW1hcF9vZmZzZXQgYWRkcmVzcyBzcGFjZSBmb3Igb3VyIHNlbGZ0ZXN0cy4KCkZpeGVzOiA4MjIx
ZDIxYjA2NjQgKCJkcm0vaTkxNS9zZWxmdGVzdHM6IExvY2sgdGhlIGRybV9tbSB3aGlsZSBtb2Rp
ZnlpbmciKQpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5j
by51az4KQ2M6IEltcmUgRGVhayA8aW1yZS5kZWFrQGludGVsLmNvbT4KLS0tCiAuLi4vZ3B1L2Ry
bS9pOTE1L2dlbS9zZWxmdGVzdHMvaTkxNV9nZW1fbW1hbi5jIHwgMTggKysrKysrKysrKysrKyst
LS0tCiAxIGZpbGUgY2hhbmdlZCwgMTQgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKCmRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL2k5MTVfZ2VtX21t
YW4uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9zZWxmdGVzdHMvaTkxNV9nZW1fbW1hbi5j
CmluZGV4IGI5NWZkYzJiNmJmYy4uYTVlNTE4OTU0ZmIxIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL2k5MTVfZ2VtX21tYW4uYworKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL2k5MTVfZ2VtX21tYW4uYwpAQCAtNDAxLDYgKzQwMSwx
NiBAQCBzdGF0aWMgdm9pZCByZXN0b3JlX3JldGlyZV93b3JrZXIoc3RydWN0IGRybV9pOTE1X3By
aXZhdGUgKmk5MTUpCiAJaTkxNV9nZW1fc2hyaW5rZXJfcmVnaXN0ZXIoaTkxNSk7CiB9CiAKK3N0
YXRpYyB2b2lkIG1tYXBfb2Zmc2V0X2xvY2soc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUp
Cit7CisJd3JpdGVfbG9jaygmaTkxNS0+ZHJtLnZtYV9vZmZzZXRfbWFuYWdlci0+dm1fbG9jayk7
Cit9CisKK3N0YXRpYyB2b2lkIG1tYXBfb2Zmc2V0X3VubG9jayhzdHJ1Y3QgZHJtX2k5MTVfcHJp
dmF0ZSAqaTkxNSkKK3sKKwl3cml0ZV91bmxvY2soJmk5MTUtPmRybS52bWFfb2Zmc2V0X21hbmFn
ZXItPnZtX2xvY2spOworfQorCiBzdGF0aWMgaW50IGlndF9tbWFwX29mZnNldF9leGhhdXN0aW9u
KHZvaWQgKmFyZykKIHsKIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IGFyZzsKQEAg
LTQxOSw5ICs0MjksOSBAQCBzdGF0aWMgaW50IGlndF9tbWFwX29mZnNldF9leGhhdXN0aW9uKHZv
aWQgKmFyZykKIAlkcm1fbW1fZm9yX2VhY2hfaG9sZShob2xlLCBtbSwgaG9sZV9zdGFydCwgaG9s
ZV9lbmQpIHsKIAkJcmVzdi5zdGFydCA9IGhvbGVfc3RhcnQ7CiAJCXJlc3Yuc2l6ZSA9IGhvbGVf
ZW5kIC0gaG9sZV9zdGFydCAtIDE7IC8qIFBBR0VfU0laRSB1bml0cyAqLwotCQltdXRleF9sb2Nr
KCZpOTE1LT5kcm0uc3RydWN0X211dGV4KTsKKwkJbW1hcF9vZmZzZXRfbG9jayhpOTE1KTsKIAkJ
ZXJyID0gZHJtX21tX3Jlc2VydmVfbm9kZShtbSwgJnJlc3YpOwotCQltdXRleF91bmxvY2soJmk5
MTUtPmRybS5zdHJ1Y3RfbXV0ZXgpOworCQltbWFwX29mZnNldF91bmxvY2soaTkxNSk7CiAJCWlm
IChlcnIpIHsKIAkJCXByX2VycigiRmFpbGVkIHRvIHRyaW0gVk1BIG1hbmFnZXIsIGVycj0lZFxu
IiwgZXJyKTsKIAkJCWdvdG8gb3V0X3Bhcms7CkBAIC00ODUsOSArNDk1LDkgQEAgc3RhdGljIGlu
dCBpZ3RfbW1hcF9vZmZzZXRfZXhoYXVzdGlvbih2b2lkICphcmcpCiAJfQogCiBvdXQ6Ci0JbXV0
ZXhfbG9jaygmaTkxNS0+ZHJtLnN0cnVjdF9tdXRleCk7CisJbW1hcF9vZmZzZXRfbG9jayhpOTE1
KTsKIAlkcm1fbW1fcmVtb3ZlX25vZGUoJnJlc3YpOwotCW11dGV4X3VubG9jaygmaTkxNS0+ZHJt
LnN0cnVjdF9tdXRleCk7CisJbW1hcF9vZmZzZXRfdW5sb2NrKGk5MTUpOwogb3V0X3Bhcms6CiAJ
cmVzdG9yZV9yZXRpcmVfd29ya2VyKGk5MTUpOwogCXJldHVybiBlcnI7Ci0tIAoyLjIyLjAKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
