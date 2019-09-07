Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CF800AC686
	for <lists+intel-gfx@lfdr.de>; Sat,  7 Sep 2019 14:00:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E36B589F82;
	Sat,  7 Sep 2019 12:00:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A8CB889A35;
 Sat,  7 Sep 2019 12:00:00 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18408374-1500050 
 for multiple; Sat, 07 Sep 2019 12:59:53 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sat,  7 Sep 2019 12:59:49 +0100
Message-Id: <20190907115952.3227-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t 1/4] i915/gem_exec_balancer: Beware the
 migratory fence
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

SWYgdGhlIG9iamVjdCBuZWVkcyB0byBiZSBtaWdyYXRlZCwgaXQgbWF5IHdpbGwgbmVlZCBHUFUg
cmVsb2NzIGFuZCBzbwpoYXZlIGFuIGV4Y2x1c2l2ZSBmZW5jZSBzaG93aW5nIHVwIGluIHRoZSB3
cml0ZSBkb21haW4uCgpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdp
bHNvbi5jby51az4KLS0tCiB0ZXN0cy9pOTE1L2dlbV9leGVjX2JhbGFuY2VyLmMgfCA0ICsrLS0K
IDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0t
Z2l0IGEvdGVzdHMvaTkxNS9nZW1fZXhlY19iYWxhbmNlci5jIGIvdGVzdHMvaTkxNS9nZW1fZXhl
Y19iYWxhbmNlci5jCmluZGV4IGNkYTE1NmVhNi4uNDA3ZGMwZWNhIDEwMDY0NAotLS0gYS90ZXN0
cy9pOTE1L2dlbV9leGVjX2JhbGFuY2VyLmMKKysrIGIvdGVzdHMvaTkxNS9nZW1fZXhlY19iYWxh
bmNlci5jCkBAIC04MzAsMTAgKzgzMCwxMCBAQCBzdGF0aWMgdm9pZCBidXN5KGludCBpOTE1KQog
CQlkb19pb2N0bChpOTE1LCBEUk1fSU9DVExfSTkxNV9HRU1fQlVTWSwgJmJ1c3kpOwogCQlpZ3Rf
YXNzZXJ0X2VxX3UzMihidXN5LmJ1c3ksIDF1IDw8IChjbGFzcyArIDE2KSk7CiAKLQkJLyogUXVl
dWVkKHJlYWQpOiBleHBlY3RlZCBjbGFzcyAqLworCQkvKiBRdWV1ZWQocmVhZCwgbWF5YmUgd3Jp
dGUgaWYgYmVpbmcgbWlncmF0ZWQpOiBleHBlY3RlZCBjbGFzcyAqLwogCQlidXN5LmhhbmRsZSA9
IHNwaW5bMV0tPmhhbmRsZTsKIAkJZG9faW9jdGwoaTkxNSwgRFJNX0lPQ1RMX0k5MTVfR0VNX0JV
U1ksICZidXN5KTsKLQkJaWd0X2Fzc2VydF9lcV91MzIoYnVzeS5idXN5LCAxdSA8PCAoY2xhc3Mg
KyAxNikpOworCQlpZ3RfYXNzZXJ0X2VxX3UzMihidXN5LmJ1c3kgJiAweGZmZmYgPDwgMTYsIDF1
IDw8IChjbGFzcyArIDE2KSk7CiAKIAkJLyogUXVldWVkKHdyaXRlKTogZXhwZWN0ZWQgY2xhc3Mg
Ki8KIAkJYnVzeS5oYW5kbGUgPSBzY3JhdGNoOwotLSAKMi4yMy4wCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
