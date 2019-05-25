Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1736A2A347
	for <lists+intel-gfx@lfdr.de>; Sat, 25 May 2019 09:05:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EEC426E149;
	Sat, 25 May 2019 07:05:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 520296E149;
 Sat, 25 May 2019 07:05:33 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 16676225-1500050 
 for multiple; Sat, 25 May 2019 08:05:27 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sat, 25 May 2019 08:05:25 +0100
Message-Id: <20190525070525.22770-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] i915/gem_workarounds: Verify regs directly
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

LS0tCiB0ZXN0cy9pOTE1L2dlbV93b3JrYXJvdW5kcy5jIHwgNDUgKysrKysrKysrKysrKysrKysr
KysrKysrKysrKystLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgMzcgaW5zZXJ0aW9ucygrKSwgOCBk
ZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS90ZXN0cy9pOTE1L2dlbV93b3JrYXJvdW5kcy5jIGIv
dGVzdHMvaTkxNS9nZW1fd29ya2Fyb3VuZHMuYwppbmRleCA0NGUzZGNlOGEuLmJmOGI0ZjYzMCAx
MDA2NDQKLS0tIGEvdGVzdHMvaTkxNS9nZW1fd29ya2Fyb3VuZHMuYworKysgYi90ZXN0cy9pOTE1
L2dlbV93b3JrYXJvdW5kcy5jCkBAIC04Miw2ICs4Miw3IEBAIHN0YXRpYyBib29sIHdyaXRlX29u
bHkoY29uc3QgdWludDMyX3QgYWRkcikKIAogI2RlZmluZSBNSV9TVE9SRV9SRUdJU1RFUl9NRU0g
KDB4MjQgPDwgMjMpCiAKKyNpZiAwCiBzdGF0aWMgaW50IHdvcmthcm91bmRfZmFpbF9jb3VudChp
bnQgZmQsIHVpbnQzMl90IGN0eCkKIHsKIAlzdHJ1Y3QgZHJtX2k5MTVfZ2VtX2V4ZWNfb2JqZWN0
MiBvYmpbMl07CkBAIC0xNjIsMTcgKzE2Myw0NSBAQCBzdGF0aWMgaW50IHdvcmthcm91bmRfZmFp
bF9jb3VudChpbnQgZmQsIHVpbnQzMl90IGN0eCkKIAogCXJldHVybiBmYWlsX2NvdW50OwogfQot
Ci1zdGF0aWMgaW50IHJlb3BlbihpbnQgZmQpCisjZWxzZQorc3RhdGljIGludCB3b3JrYXJvdW5k
X2ZhaWxfY291bnQoaW50IGk5MTUsIHVpbnQzMl90IGN0eCkKIHsKLQljaGFyIHBhdGhbMjU2XTsK
KwlpZ3Rfc3Bpbl90ICpzcGluOworCWludCBmYWlsID0gMDsKKworCWludGVsX21taW9fdXNlX3Bj
aV9iYXIoaW50ZWxfZ2V0X3BjaV9kZXZpY2UoKSk7CisKKwlzcGluID0gaWd0X3NwaW5fbmV3KGk5
MTUsIC5jdHggPSBjdHgsIC5mbGFncyA9IElHVF9TUElOX1BPTExfUlVOKTsKKwlpZ3Rfc3Bpbl9i
dXN5d2FpdF91bnRpbF9zdGFydGVkKHNwaW4pOworCisJZm9yIChpbnQgaSA9IDA7IGkgPCBudW1f
d2FfcmVnczsgaSsrKSB7CisJCXVpbnQzMl90IHZhbHVlID0KKwkJCSoodWludDMyX3QgKikoaWd0
X2dsb2JhbF9tbWlvICsgd2FfcmVnc1tpXS5hZGRyKTsKKwkJY29uc3QgYm9vbCBvayA9CisJCQko
d2FfcmVnc1tpXS52YWx1ZSAmIHdhX3JlZ3NbaV0ubWFzaykgPT0KKwkJCSh2YWx1ZSAmIHdhX3Jl
Z3NbaV0ubWFzayk7CisJCWNoYXIgYnVmWzgwXTsKKworCQlzbnByaW50ZihidWYsIHNpemVvZihi
dWYpLAorCQkJICIweCUwNVhcdDB4JTA4WFx0MHglMDhYXHQweCUwOFgiLAorCQkJIHdhX3JlZ3Nb
aV0uYWRkciwgd2FfcmVnc1tpXS52YWx1ZSwgd2FfcmVnc1tpXS5tYXNrLAorCQkJIHZhbHVlKTsK
KworCQlpZiAob2spIHsKKwkJCWlndF9kZWJ1ZygiJXNcdE9LXG4iLCBidWYpOworCQl9IGVsc2Ug
aWYgKHdyaXRlX29ubHkod2FfcmVnc1tpXS5hZGRyKSkgeworCQkJaWd0X2RlYnVnKCIlc1x0SUdO
T1JFRCAody9vKVxuIiwgYnVmKTsKKwkJfSBlbHNlIHsKKwkJCWlndF93YXJuKCIlc1x0RkFJTFxu
IiwgYnVmKTsKKwkJCWZhaWwrKzsKKwkJfQorCX0KIAotCXNucHJpbnRmKHBhdGgsIHNpemVvZihw
YXRoKSwgIi9wcm9jL3NlbGYvZmQvJWQiLCBmZCk7Ci0JZmQgPSBvcGVuKHBhdGgsIE9fUkRXUik7
Ci0JaWd0X2Fzc2VydF9sdGUoMCwgZmQpOworCWlndF9zcGluX2ZyZWUoaTkxNSwgc3Bpbik7CiAK
LQlyZXR1cm4gZmQ7CisJcmV0dXJuIGZhaWw7CiB9CisjZW5kaWYKIAogI2RlZmluZSBDT05URVhU
IDB4MQogI2RlZmluZSBGRCAweDIKQEAgLTE4MSw3ICsyMTAsNyBAQCBzdGF0aWMgdm9pZCBjaGVj
a193b3JrYXJvdW5kcyhpbnQgZmQsIGVudW0gb3BlcmF0aW9uIG9wLCB1bnNpZ25lZCBpbnQgZmxh
Z3MpCiAJdWludDMyX3QgY3R4ID0gMDsKIAogCWlmIChmbGFncyAmIEZEKQotCQlmZCA9IHJlb3Bl
bihmZCk7CisJCWZkID0gZ2VtX3Jlb3Blbl9kcml2ZXIoZmQpOwogCiAJaWYgKGZsYWdzICYgQ09O
VEVYVCkgewogCQlnZW1fcmVxdWlyZV9jb250ZXh0cyhmZCk7Ci0tIAoyLjIwLjEKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5n
IGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
