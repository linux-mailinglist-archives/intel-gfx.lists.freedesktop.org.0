Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B4A04F548
	for <lists+intel-gfx@lfdr.de>; Sat, 22 Jun 2019 12:42:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E62348975F;
	Sat, 22 Jun 2019 10:42:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 159F98975F
 for <intel-gfx@lists.freedesktop.org>; Sat, 22 Jun 2019 10:42:27 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 16988148-1500050 
 for multiple; Sat, 22 Jun 2019 11:42:18 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sat, 22 Jun 2019 11:42:13 +0100
Message-Id: <20190622104216.24201-4-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190622104216.24201-1-chris@chris-wilson.co.uk>
References: <20190622104216.24201-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 4/7] drm/i915/selftest: Drop manual request
 wakerefs around hangcheck
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

V2Ugbm8gbG9uZ2VyIG5lZWQgdG8gbWFudWFsbHkgYWNxdWlyZSBhIHdha2VyZWYgZm9yIHJlcXVl
c3QgZW1pc3Npb24sIHNvCmRyb3AgdGhlIHJlZHVuZGFudCB3YWtlcmVmcywgbGV0dGluZyB1cyB0
ZXN0IG91ciB3YWtlcmVmIGhhbmRsaW5nIG1vcmUKcHJlY2lzZWx5LgoKU2lnbmVkLW9mZi1ieTog
Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Ci0tLQogZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3Qvc2VsZnRlc3RfaGFuZ2NoZWNrLmMgfCA3IC0tLS0tLS0KIDEgZmlsZSBjaGFu
Z2VkLCA3IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L3NlbGZ0ZXN0X2hhbmdjaGVjay5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRlc3Rf
aGFuZ2NoZWNrLmMKaW5kZXggMGUwYjZjNTcyYWU5Li5jZjU5MmEwNDlhNzEgMTAwNjQ0Ci0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X2hhbmdjaGVjay5jCisrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X2hhbmdjaGVjay5jCkBAIC0zNzMsNyArMzczLDYg
QEAgc3RhdGljIGludCBpZ3RfcmVzZXRfbm9wKHZvaWQgKmFyZykKIAlzdHJ1Y3QgaTkxNV9nZW1f
Y29udGV4dCAqY3R4OwogCXVuc2lnbmVkIGludCByZXNldF9jb3VudCwgY291bnQ7CiAJZW51bSBp
bnRlbF9lbmdpbmVfaWQgaWQ7Ci0JaW50ZWxfd2FrZXJlZl90IHdha2VyZWY7CiAJc3RydWN0IGRy
bV9maWxlICpmaWxlOwogCUlHVF9USU1FT1VUKGVuZF90aW1lKTsKIAlpbnQgZXJyID0gMDsKQEAg
LTM5Myw3ICszOTIsNiBAQCBzdGF0aWMgaW50IGlndF9yZXNldF9ub3Aodm9pZCAqYXJnKQogCX0K
IAogCWk5MTVfZ2VtX2NvbnRleHRfY2xlYXJfYmFubmFibGUoY3R4KTsKLQl3YWtlcmVmID0gaW50
ZWxfcnVudGltZV9wbV9nZXQoJmk5MTUtPnJ1bnRpbWVfcG0pOwogCXJlc2V0X2NvdW50ID0gaTkx
NV9yZXNldF9jb3VudCgmaTkxNS0+Z3B1X2Vycm9yKTsKIAljb3VudCA9IDA7CiAJZG8gewpAQCAt
NDQyLDggKzQ0MCw2IEBAIHN0YXRpYyBpbnQgaWd0X3Jlc2V0X25vcCh2b2lkICphcmcpCiAJZXJy
ID0gaWd0X2ZsdXNoX3Rlc3QoaTkxNSwgSTkxNV9XQUlUX0xPQ0tFRCk7CiAJbXV0ZXhfdW5sb2Nr
KCZpOTE1LT5kcm0uc3RydWN0X211dGV4KTsKIAotCWludGVsX3J1bnRpbWVfcG1fcHV0KCZpOTE1
LT5ydW50aW1lX3BtLCB3YWtlcmVmKTsKLQogb3V0OgogCW1vY2tfZmlsZV9mcmVlKGk5MTUsIGZp
bGUpOwogCWlmIChpOTE1X3Jlc2V0X2ZhaWxlZChpOTE1KSkKQEAgLTQ1Nyw3ICs0NTMsNiBAQCBz
dGF0aWMgaW50IGlndF9yZXNldF9ub3BfZW5naW5lKHZvaWQgKmFyZykKIAlzdHJ1Y3QgaW50ZWxf
ZW5naW5lX2NzICplbmdpbmU7CiAJc3RydWN0IGk5MTVfZ2VtX2NvbnRleHQgKmN0eDsKIAllbnVt
IGludGVsX2VuZ2luZV9pZCBpZDsKLQlpbnRlbF93YWtlcmVmX3Qgd2FrZXJlZjsKIAlzdHJ1Y3Qg
ZHJtX2ZpbGUgKmZpbGU7CiAJaW50IGVyciA9IDA7CiAKQEAgLTQ3OSw3ICs0NzQsNiBAQCBzdGF0
aWMgaW50IGlndF9yZXNldF9ub3BfZW5naW5lKHZvaWQgKmFyZykKIAl9CiAKIAlpOTE1X2dlbV9j
b250ZXh0X2NsZWFyX2Jhbm5hYmxlKGN0eCk7Ci0Jd2FrZXJlZiA9IGludGVsX3J1bnRpbWVfcG1f
Z2V0KCZpOTE1LT5ydW50aW1lX3BtKTsKIAlmb3JfZWFjaF9lbmdpbmUoZW5naW5lLCBpOTE1LCBp
ZCkgewogCQl1bnNpZ25lZCBpbnQgcmVzZXRfY291bnQsIHJlc2V0X2VuZ2luZV9jb3VudDsKIAkJ
dW5zaWduZWQgaW50IGNvdW50OwpAQCAtNTQ5LDcgKzU0Myw2IEBAIHN0YXRpYyBpbnQgaWd0X3Jl
c2V0X25vcF9lbmdpbmUodm9pZCAqYXJnKQogCWVyciA9IGlndF9mbHVzaF90ZXN0KGk5MTUsIEk5
MTVfV0FJVF9MT0NLRUQpOwogCW11dGV4X3VubG9jaygmaTkxNS0+ZHJtLnN0cnVjdF9tdXRleCk7
CiAKLQlpbnRlbF9ydW50aW1lX3BtX3B1dCgmaTkxNS0+cnVudGltZV9wbSwgd2FrZXJlZik7CiBv
dXQ6CiAJbW9ja19maWxlX2ZyZWUoaTkxNSwgZmlsZSk7CiAJaWYgKGk5MTVfcmVzZXRfZmFpbGVk
KGk5MTUpKQotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZng=
