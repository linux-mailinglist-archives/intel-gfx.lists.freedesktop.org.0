Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C0AA7175A8
	for <lists+intel-gfx@lfdr.de>; Wed,  8 May 2019 12:10:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6DE2089204;
	Wed,  8 May 2019 10:10:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AC782895C4;
 Wed,  8 May 2019 10:10:23 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 16487685-1500050 
 for multiple; Wed, 08 May 2019 11:10:00 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  8 May 2019 11:09:43 +0100
Message-Id: <20190508100958.32637-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t 01/16] i915/gem_exec_schedule: Semaphore
 priority fixups
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

QSBzdHJheSBnaXQgYWRkIGZyb20gbXkgdGVzdCBib3hlbiAtLSB3ZSB3ZXJlIGJlaW5nIGNhcmVm
dWwgZW5vdWdoIHRvCnByZXNlcnZlIHByaW9yaXR5IGFuZCBvcmRlcmluZyB0byBtYXRjaCB0aGUg
aW1wbGljaXQgcG9saWNpZXMuCgpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNo
cmlzLXdpbHNvbi5jby51az4KLS0tCiB0ZXN0cy9pOTE1L2dlbV9leGVjX3NjaGVkdWxlLmMgfCAy
ICsrCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvdGVzdHMv
aTkxNS9nZW1fZXhlY19zY2hlZHVsZS5jIGIvdGVzdHMvaTkxNS9nZW1fZXhlY19zY2hlZHVsZS5j
CmluZGV4IDMzMGU4YTU0ZS4uNzdhMjY0YTZhIDEwMDY0NAotLS0gYS90ZXN0cy9pOTE1L2dlbV9l
eGVjX3NjaGVkdWxlLmMKKysrIGIvdGVzdHMvaTkxNS9nZW1fZXhlY19zY2hlZHVsZS5jCkBAIC01
MDcsNiArNTA3LDcgQEAgc3RhdGljIHZvaWQgc2VtYXBob3JlX3Jlc29sdmUoaW50IGk5MTUpCiAJ
CXVpbnQzMl90IGhhbmRsZSwgY2FuY2VsOwogCQl1aW50MzJfdCAqY3MsICptYXA7CiAJCWlndF9z
cGluX3QgKnNwaW47CisJCWludDY0X3QgcG9rZSA9IDE7CiAKIAkJaWYgKCFnZW1fY2FuX3N0b3Jl
X2R3b3JkKGk5MTUsIGVuZ2luZSkpCiAJCQljb250aW51ZTsKQEAgLTU4Nyw2ICs1ODgsNyBAQCBz
dGF0aWMgdm9pZCBzZW1hcGhvcmVfcmVzb2x2ZShpbnQgaTkxNSkKIAkJZWIuYnVmZmVyX2NvdW50
ID0gMjsKIAkJZWIucnN2ZDEgPSBpbm5lcjsKIAkJZ2VtX2V4ZWNidWYoaTkxNSwgJmViKTsKKwkJ
Z2VtX3dhaXQoaTkxNSwgY2FuY2VsLCAmcG9rZSk7CiAJCWdlbV9jbG9zZShpOTE1LCBjYW5jZWwp
OwogCiAJCWdlbV9zeW5jKGk5MTUsIGhhbmRsZSk7IC8qIFRvIGhhbmcgdW5sZXNzIGNhbmNlbCBy
dW5zISAqLwotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZng=
