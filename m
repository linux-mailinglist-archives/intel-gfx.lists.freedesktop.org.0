Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 61FEBFB702
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Nov 2019 19:07:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0EDB66E03C;
	Wed, 13 Nov 2019 18:07:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C81236E03C
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Nov 2019 18:07:04 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19191162-1500050 
 for multiple; Wed, 13 Nov 2019 18:06:34 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 13 Nov 2019 18:06:33 +0000
Message-Id: <20191113180633.3947-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/fbdev: Restore physical addresses for
 fb_mmap()
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

ZmJkZXYgdXNlcyB0aGUgcGh5c2ljYWwgYWRkcmVzcyBvZiBvdXIgZnJhbWVidWZmZXIgZm9yIGl0
cyBmYl9tbWFwKCkKcm91dGluZS4gV2hpbGUgd2UgbmVlZCB0byBhZGFwdCB0aGlzIGFkZHJlc3Mg
Zm9yIHRoZSBuZXcgaW8gQkFSLCB3ZSBoYXZlCnRvIGZpeCB2NS40IGZpcnN0ISBUaGUgc2ltcGxl
c3QgZml4IGlzIHRvIHJlc3RvcmUgdGhlIHNtZW0gYmFjayB0byB2NS40CmFuZCB3ZSB3aWxsIHRo
ZW4gcHJvYmFibHkgaGF2ZSB0byBpbXBsZW1lbnQgb3VyIGZib3BzLT5mYl9tbWFwKCkgY2FsbApi
YWNrIHRvIGhhbmRsZSBsb2NhbCBtZW1vcnkuCgpCdWd6aWxsYTogaHR0cHM6Ly9idWdzLmZyZWVk
ZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTEyMjU2CkZpeGVzOiA1Zjg4OWI5YTYxZGQgKCJk
cm0vaTkxNTogRGlzcmVnYXJkIGRybV9tb2RlX2NvbmZpZy5mYl9iYXNlIikKU2lnbmVkLW9mZi1i
eTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+CkNjOiBEYW5pZWwgVmV0
dGVyIDxkYW5pZWwudmV0dGVyQGZmd2xsLmNoPgpDYzogTWFhcnRlbiBMYW5raG9yc3QgPG1hYXJ0
ZW4ubGFua2hvcnN0QGxpbnV4LmludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2ZiZGV2LmMgfCA5ICsrKysrLS0tLQogMSBmaWxlIGNoYW5nZWQsIDUgaW5z
ZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2ZiZGV2LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2ZiZGV2LmMKaW5kZXggM2QxMDYxNDcwZTc2Li40OGM5NjBjYTEyZmIgMTAwNjQ0Ci0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJkZXYuYworKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiZGV2LmMKQEAgLTIzNCw2ICsyMzQsMTEg
QEAgc3RhdGljIGludCBpbnRlbGZiX2NyZWF0ZShzdHJ1Y3QgZHJtX2ZiX2hlbHBlciAqaGVscGVy
LAogCWluZm8tPmFwZXJ0dXJlcy0+cmFuZ2VzWzBdLmJhc2UgPSBnZ3R0LT5nbWFkci5zdGFydDsK
IAlpbmZvLT5hcGVydHVyZXMtPnJhbmdlc1swXS5zaXplID0gZ2d0dC0+bWFwcGFibGVfZW5kOwog
CisJLyogT3VyIGZyYW1lYnVmZmVyIGlzIHRoZSBlbnRpcmV0eSBvZiBmYmRldidzIHN5c3RlbSBt
ZW1vcnkgKi8KKwlpbmZvLT5maXguc21lbV9zdGFydCA9CisJCSh1bnNpZ25lZCBsb25nKShnZ3R0
LT5nbWFkci5zdGFydCArIHZtYS0+bm9kZS5zdGFydCk7CisJaW5mby0+Zml4LnNtZW1fbGVuID0g
dm1hLT5ub2RlLnNpemU7CisKIAl2YWRkciA9IGk5MTVfdm1hX3Bpbl9pb21hcCh2bWEpOwogCWlm
IChJU19FUlIodmFkZHIpKSB7CiAJCURSTV9FUlJPUigiRmFpbGVkIHRvIHJlbWFwIGZyYW1lYnVm
ZmVyIGludG8gdmlydHVhbCBtZW1vcnlcbiIpOwpAQCAtMjQzLDEwICsyNDgsNiBAQCBzdGF0aWMg
aW50IGludGVsZmJfY3JlYXRlKHN0cnVjdCBkcm1fZmJfaGVscGVyICpoZWxwZXIsCiAJaW5mby0+
c2NyZWVuX2Jhc2UgPSB2YWRkcjsKIAlpbmZvLT5zY3JlZW5fc2l6ZSA9IHZtYS0+bm9kZS5zaXpl
OwogCi0JLyogT3VyIGZyYW1lYnVmZmVyIGlzIHRoZSBlbnRpcmV0eSBvZiBmYmRldidzIHN5c3Rl
bSBtZW1vcnkgKi8KLQlpbmZvLT5maXguc21lbV9zdGFydCA9ICh1bnNpZ25lZCBsb25nKWluZm8t
PnNjcmVlbl9iYXNlOwotCWluZm8tPmZpeC5zbWVtX2xlbiA9IGluZm8tPnNjcmVlbl9zaXplOwot
CiAJZHJtX2ZiX2hlbHBlcl9maWxsX2luZm8oaW5mbywgJmlmYmRldi0+aGVscGVyLCBzaXplcyk7
CiAKIAkvKiBJZiB0aGUgb2JqZWN0IGlzIHNobWVtZnMgYmFja2VkLCBpdCB3aWxsIGhhdmUgZ2l2
ZW4gdXMgemVyb2VkIHBhZ2VzLgotLSAKMi4yNC4wCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZng=
