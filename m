Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D637EE3CB
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Nov 2019 16:30:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 979896E59D;
	Mon,  4 Nov 2019 15:30:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 79B6D6E58E;
 Mon,  4 Nov 2019 15:30:07 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19076281-1500050 
 for multiple; Mon, 04 Nov 2019 15:29:10 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  4 Nov 2019 15:29:09 +0000
Message-Id: <20191104152909.21736-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0.rc2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] i915/gem_ctx_shared: Use the supplied
 ring for smoketest
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

QWxsb3cgdGhlIHN1YnRlc3RzIHRoYXQgd2FudCB0byBsaW1pdCB0aGUgdGVzdCB0byBhIHNpbmds
ZSBlbmdpbmUsIHRvCmxpbWl0IHRoZSB0ZXN0IHRvIGEgc2luZ2xlIGVuZ2luZS4KClNpZ25lZC1v
ZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgpDYzogTWlrYSBL
dW9wcGFsYSA8bWlrYS5rdW9wcGFsYUBsaW51eC5pbnRlbC5jb20+Ci0tLQogdGVzdHMvaTkxNS9n
ZW1fY3R4X3NoYXJlZC5jIHwgOCArKysrKystLQogMSBmaWxlIGNoYW5nZWQsIDYgaW5zZXJ0aW9u
cygrKSwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS90ZXN0cy9pOTE1L2dlbV9jdHhfc2hh
cmVkLmMgYi90ZXN0cy9pOTE1L2dlbV9jdHhfc2hhcmVkLmMKaW5kZXggNmQ4Y2JjY2UyLi40ZDlm
ZmFmY2UgMTAwNjQ0Ci0tLSBhL3Rlc3RzL2k5MTUvZ2VtX2N0eF9zaGFyZWQuYworKysgYi90ZXN0
cy9pOTE1L2dlbV9jdHhfc2hhcmVkLmMKQEAgLTc0MCw4ICs3NDAsMTIgQEAgc3RhdGljIHZvaWQg
c21va2V0ZXN0KGludCBpOTE1LCB1bnNpZ25lZCByaW5nLCB1bnNpZ25lZCB0aW1lb3V0KQogCXVp
bnQzMl90ICpwdHI7CiAKIAluZW5naW5lID0gMDsKLQlmb3JfZWFjaF9waHlzaWNhbF9lbmdpbmUo
ZSwgaTkxNSkKLQkJZW5naW5lc1tuZW5naW5lKytdID0gZWJfcmluZyhlKTsKKwlpZiAocmluZyA9
PSAtMSkgeworCQlmb3JfZWFjaF9waHlzaWNhbF9lbmdpbmUoZSwgaTkxNSkKKwkJCWVuZ2luZXNb
bmVuZ2luZSsrXSA9IGViX3JpbmcoZSk7CisJfSBlbHNlIHsKKwkJZW5naW5lc1tuZW5naW5lKytd
ID0gcmluZzsKKwl9CiAJaWd0X3JlcXVpcmUobmVuZ2luZSk7CiAKIAlzY3JhdGNoID0gZ2VtX2Ny
ZWF0ZShpOTE1LCA0MDk2KTsKLS0gCjIuMjQuMC5yYzIKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
