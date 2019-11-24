Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 47126108317
	for <lists+intel-gfx@lfdr.de>; Sun, 24 Nov 2019 12:28:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2272D6E0F2;
	Sun, 24 Nov 2019 11:28:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7F66E89012;
 Sun, 24 Nov 2019 11:28:03 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19318597-1500050 
 for multiple; Sun, 24 Nov 2019 11:27:59 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sun, 24 Nov 2019 11:27:56 +0000
Message-Id: <20191124112756.1401928-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] i915/gem_ctx_param: Keep the engine
 active while peeking at vm layout
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

VGhlIGltcGxpY2l0IHNvZnQtcGlubmluZyB3ZSB1c2UgdG8gcHJvYmUgdGhlIHZtIGxheW91dCB1
c2luZyBleGVjYnVmLApkZXBlbmRzIG9uIHRoZSBiYXRjaCByZW1haW5pbmcgYWN0aXZlIChub3Qg
cmV0aXJlZCkgYmV0d2VlbiBleGVjYnVmcy4KTmF0dXJhbGx5LCBpZiB0aGUgYmFja2dyb3VuZCBy
ZXRpcmUgd29ya2VyIHJ1bnMgdGhlIGJhdGNoIGlzIHJldGlyZWQgYW5kCnRoZSBpbXBsaWNpdCBz
b2Z0LXBpbm5pbmcgaXMgZnJlZSB0byB1c2UgYSBmcmVzaCBhZGRyZXNzLgoKU2lnbmVkLW9mZi1i
eTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Ci0tLQogdGVzdHMvaTkx
NS9nZW1fY3R4X3BhcmFtLmMgfCAxMSArKysrKysrKysrKwogMSBmaWxlIGNoYW5nZWQsIDExIGlu
c2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS90ZXN0cy9pOTE1L2dlbV9jdHhfcGFyYW0uYyBiL3Rl
c3RzL2k5MTUvZ2VtX2N0eF9wYXJhbS5jCmluZGV4IGJkMWVlMzk5Ni4uNjNlMGRiMzhkIDEwMDY0
NAotLS0gYS90ZXN0cy9pOTE1L2dlbV9jdHhfcGFyYW0uYworKysgYi90ZXN0cy9pOTE1L2dlbV9j
dHhfcGFyYW0uYwpAQCAtMTYxLDYgKzE2MSw3IEBAIHN0YXRpYyB2b2lkIHRlc3Rfdm0oaW50IGk5
MTUpCiAJCS5wYXJhbSA9IEk5MTVfQ09OVEVYVF9QQVJBTV9WTSwKIAl9OwogCXVpbnQzMl90IHBh
cmVudCwgY2hpbGQ7CisJaWd0X3NwaW5fdCAqc3BpbjsKIAogCS8qCiAJICogUHJvdmluZyAyIGNv
bnRleHRzIHNoYXJlIHRoZSBzYW1lIEdUVCBpcyBxdWl0ZSB0cmlja3kgYXMgd2UgaGF2ZSBubwpA
QCAtMTc3LDYgKzE3OCwxNSBAQCBzdGF0aWMgdm9pZCB0ZXN0X3ZtKGludCBpOTE1KQogCXBhcmVu
dCA9IGdlbV9jb250ZXh0X2NyZWF0ZShpOTE1KTsKIAljaGlsZCA9IGdlbV9jb250ZXh0X2NyZWF0
ZShpOTE1KTsKIAorCS8qIENyZWF0ZSBhIGJhY2tncm91bmQgc3Bpbm5lciB0byBrZWVwIHRoZSBl
bmdpbmVzIGJ1c3kgKi8KKwlzcGluID0gaWd0X3NwaW5fbmV3KGk5MTUpOworCWZvciAoaW50IGkg
PSAwOyBpIDwgMTY7IGkrKykgeworCQlzcGluLT5leGVjYnVmLnJzdmQxID0gZ2VtX2NvbnRleHRf
Y3JlYXRlKGk5MTUpOworCQlnZW1fY29udGV4dF9zZXRfcHJpb3JpdHkoaTkxNSwgc3Bpbi0+ZXhl
Y2J1Zi5yc3ZkMSwgMTAyMyk7CisJCWdlbV9leGVjYnVmKGk5MTUsICZzcGluLT5leGVjYnVmKTsK
KwkJZ2VtX2NvbnRleHRfZGVzdHJveShpOTE1LCBzcGluLT5leGVjYnVmLnJzdmQxKTsKKwl9CisK
IAkvKiBVc2luZyBpbXBsaWNpdCBzb2Z0LXBpbm5pbmcgKi8KIAllYi5yc3ZkMSA9IHBhcmVudDsK
IAliYXRjaC5vZmZzZXQgPSBub256ZXJvX29mZnNldDsKQEAgLTIyNiw2ICsyMzYsNyBAQCBzdGF0
aWMgdm9pZCB0ZXN0X3ZtKGludCBpOTE1KQogCWdlbV9jb250ZXh0X2Rlc3Ryb3koaTkxNSwgY2hp
bGQpOwogCWdlbV92bV9kZXN0cm95KGk5MTUsIGFyZy52YWx1ZSk7CiAKKwlpZ3Rfc3Bpbl9mcmVl
KGk5MTUsIHNwaW4pOwogCWdlbV9zeW5jKGk5MTUsIGJhdGNoLmhhbmRsZSk7CiAJZ2VtX2Nsb3Nl
KGk5MTUsIGJhdGNoLmhhbmRsZSk7CiB9Ci0tIAoyLjI0LjAKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
