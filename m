Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EB5CEE5622
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Oct 2019 23:49:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 83FF56EBAF;
	Fri, 25 Oct 2019 21:49:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F205F6EBAB;
 Fri, 25 Oct 2019 21:49:39 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18969482-1500050 
 for multiple; Fri, 25 Oct 2019 22:49:21 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 25 Oct 2019 22:49:19 +0100
Message-Id: <20191025214919.27684-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0.rc1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] i915/pm_rps: Wait for the actual
 frequency to settle
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

Q2hlY2sgdGhlIGFjdHVhbCBmcmVxdWVuY3ksIGFuZCBub3QganVzdCB0aGUgY3VycmVudCByZXF1
ZXN0ZWQsIGJlZm9yZQpkZWxheWluZyB0aGUgc3lzdGVtIHN0YWJsZS4KClNpZ25lZC1vZmYtYnk6
IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgpDYzogQW5kaSBTaHl0aSA8
YW5kaS5zaHl0aUBpbnRlbC5jb20+Ci0tLQogdGVzdHMvaTkxNS9pOTE1X3BtX3Jwcy5jIHwgNiAr
KysrLS0KIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCgpk
aWZmIC0tZ2l0IGEvdGVzdHMvaTkxNS9pOTE1X3BtX3Jwcy5jIGIvdGVzdHMvaTkxNS9pOTE1X3Bt
X3Jwcy5jCmluZGV4IDQ3OGM3YmU3Ni4uYzY3NzU5ZDA2IDEwMDY0NAotLS0gYS90ZXN0cy9pOTE1
L2k5MTVfcG1fcnBzLmMKKysrIGIvdGVzdHMvaTkxNS9pOTE1X3BtX3Jwcy5jCkBAIC00Niw2ICs0
Niw3IEBAIHN0YXRpYyBpbnQgZHJtX2ZkOwogCiBlbnVtIHsKIAlDVVIsCisJQUNULAogCU1JTiwK
IAlNQVgsCiAJUlAwLApAQCAtNjMsNiArNjQsNyBAQCBzdHJ1Y3Qgc3lzZnNfZmlsZSB7CiAJRklM
RSAqZmlscDsKIH0gc3lzZnNfZmlsZXNbXSA9IHsKIAl7ICJjdXIiLCAiciIsIE5VTEwgfSwKKwl7
ICJhY3QiLCAiciIsIE5VTEwgfSwKIAl7ICJtaW4iLCAicmIrIiwgTlVMTCB9LAogCXsgIm1heCIs
ICJyYisiLCBOVUxMIH0sCiAJeyAiUlAwIiwgInIiLCBOVUxMIH0sCkBAIC00NjksMTQgKzQ3MSwx
NCBAQCBzdGF0aWMgdm9pZCBpZGxlX2NoZWNrKHZvaWQpCiAJCXJlYWRfZnJlcXMoZnJlcXMpOwog
CQlkdW1wKGZyZXFzKTsKIAkJY2hlY2tfZnJlcV9jb25zdHJhaW50cyhmcmVxcyk7Ci0JCWlmIChm
cmVxc1tDVVJdID09IGZyZXFzW1JQbl0pCisJCWlmIChmcmVxc1tBQ1RdID09IGZyZXFzW1JQbl0p
CiAJCQlicmVhazsKIAkJdXNsZWVwKDEwMDAgKiBJRExFX1dBSVRfVElNRVNURVBfTVNFQyk7CiAJ
CXdhaXQgKz0gSURMRV9XQUlUX1RJTUVTVEVQX01TRUM7CiAJfSB3aGlsZSAod2FpdCA8IElETEVf
V0FJVF9USU1FT1VUX01TRUMpOwogCiAJaWd0X2RlYnVnZnNfZHVtcChkcm1fZmQsICJpOTE1X3Jw
c19ib29zdF9pbmZvIik7Ci0JaWd0X2Fzc2VydF9lcShmcmVxc1tDVVJdLCBmcmVxc1tSUG5dKTsK
KwlpZ3RfYXNzZXJ0X2VxKGZyZXFzW0FDVF0sIGZyZXFzW1JQbl0pOwogCWlndF9kZWJ1ZygiUmVx
dWlyZWQgJWQgbXNlYyB0byByZWFjaCBjdXI9aWRsZVxuIiwgd2FpdCk7CiB9CiAKLS0gCjIuMjQu
MC5yYzEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
