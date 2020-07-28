Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EC3B5230DDF
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Jul 2020 17:31:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 854EB6E378;
	Tue, 28 Jul 2020 15:31:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DDEC86E375
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Jul 2020 15:31:03 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21959610-1500050 
 for multiple; Tue, 28 Jul 2020 16:30:49 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 28 Jul 2020 16:30:47 +0100
Message-Id: <20200728153049.27682-5-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200728153049.27682-1-chris@chris-wilson.co.uk>
References: <20200728153049.27682-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 5/7] drm/i915: Make the stale cached active node
 available for any timeline
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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
Cc: thomas.hellstrom@intel.com, Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UmF0aGVyIHRoYW4gcmVxdWlyZSB0aGUgbmV4dCB0aW1lbGluZSBhZnRlciBpZGxpbmcgdG8gbWF0
Y2ggdGhlIE1SVQpiZWZvcmUgaWRsaW5nLCByZXNldCB0aGUgaW5kZXggb24gdGhlIG5vZGUgYW5k
IGFsbG93IGl0IHRvIG1hdGNoIHRoZQpmaXJzdCByZXF1ZXN0LiBIb3dldmVyLCB0aGlzIHJlcXVp
cmVzIGNtcHhjaGcodTY0KSBhbmQgc28gaXMgbm90IHRyaXZpYWwKb24gMzJiLCBzbyBmb3IgY29t
cGF0aWJpbGl0eSB3ZSBqdXN0IGZhbGxiYWNrIHRvIGtlZXBpbmcgdGhlIGNhY2hlZCBub2RlCnBv
aW50aW5nIHRvIHRoZSBNUlUgdGltZWxpbmUuCgpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24g
PGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KUmV2aWV3ZWQtYnk6IFRob21hcyBIZWxsc3Ryw7Zt
IDx0aG9tYXMuaGVsbHN0cm9tQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X2FjdGl2ZS5jIHwgMTkgKysrKysrKysrKysrKysrKystLQogMSBmaWxlIGNoYW5nZWQsIDE3
IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9hY3RpdmUuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfYWN0aXZl
LmMKaW5kZXggYjliZDU1NzhmZjU0Li4wM2IyNDZjYjg0NjYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfYWN0aXZlLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9hY3RpdmUuYwpAQCAtMTU3LDYgKzE1NywxMCBAQCBfX2FjdGl2ZV9yZXRpcmUoc3RydWN0IGk5
MTVfYWN0aXZlICpyZWYpCiAJCXJiX2xpbmtfbm9kZSgmcmVmLT5jYWNoZS0+bm9kZSwgTlVMTCwg
JnJlZi0+dHJlZS5yYl9ub2RlKTsKIAkJcmJfaW5zZXJ0X2NvbG9yKCZyZWYtPmNhY2hlLT5ub2Rl
LCAmcmVmLT50cmVlKTsKIAkJR0VNX0JVR19PTihyZWYtPnRyZWUucmJfbm9kZSAhPSAmcmVmLT5j
YWNoZS0+bm9kZSk7CisKKwkJLyogTWFrZSB0aGUgY2FjaGVkIG5vZGUgYXZhaWxhYmxlIGZvciBy
ZXVzZSB3aXRoIGFueSB0aW1lbGluZSAqLworCQlpZiAoSVNfRU5BQkxFRChDT05GSUdfNjRCSVQp
KQorCQkJcmVmLT5jYWNoZS0+dGltZWxpbmUgPSAwOyAvKiBuZWVkcyBjbXB4Y2hnKHU2NCkgKi8K
IAl9CiAKIAlzcGluX3VubG9ja19pcnFyZXN0b3JlKCZyZWYtPnRyZWVfbG9jaywgZmxhZ3MpOwpA
QCAtMjM1LDYgKzIzOSw4IEBAIHN0YXRpYyBzdHJ1Y3QgYWN0aXZlX25vZGUgKl9fYWN0aXZlX2xv
b2t1cChzdHJ1Y3QgaTkxNV9hY3RpdmUgKnJlZiwgdTY0IGlkeCkKIHsKIAlzdHJ1Y3QgYWN0aXZl
X25vZGUgKml0OwogCisJR0VNX0JVR19PTihpZHggPT0gMCk7IC8qIDAgaXMgdGhlIHVub3JkZXJl
ZCB0aW1lbGluZSwgcnN2ZCBmb3IgY2FjaGUgKi8KKwogCS8qCiAJICogV2UgdHJhY2sgdGhlIG1v
c3QgcmVjZW50bHkgdXNlZCB0aW1lbGluZSB0byBza2lwIGEgcmJ0cmVlIHNlYXJjaAogCSAqIGZv
ciB0aGUgY29tbW9uIGNhc2UsIHVuZGVyIHR5cGljYWwgbG9hZHMgd2UgbmV2ZXIgbmVlZCB0aGUg
cmJ0cmVlCkBAIC0yNDMsOCArMjQ5LDE3IEBAIHN0YXRpYyBzdHJ1Y3QgYWN0aXZlX25vZGUgKl9f
YWN0aXZlX2xvb2t1cChzdHJ1Y3QgaTkxNV9hY3RpdmUgKnJlZiwgdTY0IGlkeCkKIAkgKiBjdXJy
ZW50IHRpbWVsaW5lLgogCSAqLwogCWl0ID0gUkVBRF9PTkNFKHJlZi0+Y2FjaGUpOwotCWlmIChp
dCAmJiBpdC0+dGltZWxpbmUgPT0gaWR4KQotCQlyZXR1cm4gaXQ7CisJaWYgKGl0KSB7CisJCXU2
NCBjYWNoZWQgPSBSRUFEX09OQ0UoaXQtPnRpbWVsaW5lKTsKKworCQlpZiAoY2FjaGVkID09IGlk
eCkKKwkJCXJldHVybiBpdDsKKworI2lmZGVmIENPTkZJR182NEJJVCAvKiBmb3IgY21weGNoZyh1
NjQpICovCisJCWlmICghY2FjaGVkICYmICFjbXB4Y2hnKCZpdC0+dGltZWxpbmUsIDAsIGlkeCkp
CisJCQlyZXR1cm4gaXQ7CisjZW5kaWYKKwl9CiAKIAlCVUlMRF9CVUdfT04ob2Zmc2V0b2YodHlw
ZW9mKCppdCksIG5vZGUpKTsKIAotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZngK
