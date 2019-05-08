Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EDB7D175AE
	for <lists+intel-gfx@lfdr.de>; Wed,  8 May 2019 12:10:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C82BA896C7;
	Wed,  8 May 2019 10:10:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A7761895B9;
 Wed,  8 May 2019 10:10:24 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 16487698-1500050 
 for multiple; Wed, 08 May 2019 11:10:13 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  8 May 2019 11:09:53 +0100
Message-Id: <20190508100958.32637-11-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190508100958.32637-1-chris@chris-wilson.co.uk>
References: <20190508100958.32637-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t 11/16] i915/gem_exec_whisper:
 debugfs/next_seqno is defunct
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

V2UgcmVtb3ZlZCBuZXh0X3NlcW5vIGluIDUuMSwgc28gdGltZSB0byB3YXZlIGdvb2RieWUuCgpT
aWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KLS0t
CiB0ZXN0cy9pOTE1L2dlbV9leGVjX3doaXNwZXIuYyB8IDEyIC0tLS0tLS0tLS0tLQogMSBmaWxl
IGNoYW5nZWQsIDEyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL3Rlc3RzL2k5MTUvZ2VtX2V4
ZWNfd2hpc3Blci5jIGIvdGVzdHMvaTkxNS9nZW1fZXhlY193aGlzcGVyLmMKaW5kZXggZDVhZmM4
MTE5Li42MWI4ZDZkYWMgMTAwNjQ0Ci0tLSBhL3Rlc3RzL2k5MTUvZ2VtX2V4ZWNfd2hpc3Blci5j
CisrKyBiL3Rlc3RzL2k5MTUvZ2VtX2V4ZWNfd2hpc3Blci5jCkBAIC00NCwxNSArNDQsNiBAQAog
CiAjZGVmaW5lIFZFUklGWSAwCiAKLXN0YXRpYyB2b2lkIHdyaXRlX3NlcW5vKGludCBkaXIsIHVu
c2lnbmVkIG9mZnNldCkKLXsKLQl1aW50MzJfdCBzZXFubyA9IFVJTlQzMl9NQVggLSBvZmZzZXQ7
Ci0KLQlpZ3Rfc3lzZnNfcHJpbnRmKGRpciwgImk5MTVfbmV4dF9zZXFubyIsICIweCV4Iiwgc2Vx
bm8pOwotCi0JaWd0X2RlYnVnKCJuZXh0IHNlcW5vIHNldCB0bzogMHgleFxuIiwgc2Vxbm8pOwot
fQotCiBzdGF0aWMgdm9pZCBjaGVja19ibyhpbnQgZmQsIHVpbnQzMl90IGhhbmRsZSwgaW50IHBh
c3MpCiB7CiAJdWludDMyX3QgKm1hcDsKQEAgLTM1NSw5ICszNDYsNiBAQCBzdGF0aWMgdm9pZCB3
aGlzcGVyKGludCBmZCwgdW5zaWduZWQgZW5naW5lLCB1bnNpZ25lZCBmbGFncykKIAkJCWlndF91
bnRpbF90aW1lb3V0KDE1MCkgewogCQkJCXVpbnQ2NF90IG9mZnNldDsKIAotCQkJCWlmIChuY2hp
bGQgPT0gMSkKLQkJCQkJd3JpdGVfc2Vxbm8oZGVidWdmcywgcGFzcyk7Ci0KIAkJCQlpZiAoZmxh
Z3MgJiBIQU5HKQogCQkJCQlzdWJtaXRfaGFuZygmaGFuZywgZW5naW5lcywgbmVuZ2luZSwgZmxh
Z3MpOwogCi0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeA==
