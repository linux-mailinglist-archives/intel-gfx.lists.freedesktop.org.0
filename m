Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A5979FBC02
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Nov 2019 23:59:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C03A6E0F2;
	Wed, 13 Nov 2019 22:59:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C01356E0E8;
 Wed, 13 Nov 2019 22:59:35 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19193700-1500050 
 for multiple; Wed, 13 Nov 2019 22:59:21 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 13 Nov 2019 22:59:20 +0000
Message-Id: <20191113225920.7279-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] i915/gem_exec_reloc: Check that
 relocations do not block
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

V2l0aCBHUFUgcmVsb2NhdGlvbnMgd2UgYXZvaWQgYmxvY2tpbmcgaW5zaWRlIGV4ZWNidWYgYW5k
IHByZXZlbnQKcHJpb3JpdHkgaW52ZXJzaW9ucyB3aGVyZSBhIGxvdyBwcmlvcml0eSBjbGllbnQg
Y2FuIGNhdXNlIGEgZGVuaWFsIG9mCnNlcnZpY2UgdG8gaGlnaGVyIHByaW9yaXR5IGNsaWVudHMu
CgpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4K
Q2M6IE1pa2EgS3VvcHBhbGEgPG1pa2Eua3VvcHBhbGFAbGludXguaW50ZWwuY29tPgotLS0KIHRl
c3RzL2k5MTUvZ2VtX2V4ZWNfcmVsb2MuYyB8IDQ1ICsrKysrKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCA0NSBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0
IGEvdGVzdHMvaTkxNS9nZW1fZXhlY19yZWxvYy5jIGIvdGVzdHMvaTkxNS9nZW1fZXhlY19yZWxv
Yy5jCmluZGV4IDVmNTlmZTk5Zi4uM2MyYzdkMzFkIDEwMDY0NAotLS0gYS90ZXN0cy9pOTE1L2dl
bV9leGVjX3JlbG9jLmMKKysrIGIvdGVzdHMvaTkxNS9nZW1fZXhlY19yZWxvYy5jCkBAIC0zMjQs
NiArMzI0LDQ5IEBAIHN0YXRpYyB2b2lkIGFjdGl2ZShpbnQgZmQsIHVuc2lnbmVkIGVuZ2luZSkK
IAlnZW1fY2xvc2UoZmQsIG9ialswXS5oYW5kbGUpOwogfQogCitzdGF0aWMgdW5zaWduZWQgaW50
IG9mZnNldF9pbl9wYWdlKHZvaWQgKmFkZHIpCit7CisJcmV0dXJuICh1aW50cHRyX3QpYWRkciAm
IDQwOTU7Cit9CisKK3N0YXRpYyB2b2lkIGFjdGl2ZV9zcGluKGludCBmZCwgdW5zaWduZWQgZW5n
aW5lKQoreworCWNvbnN0IHVpbnQzMl90IGJiZSA9IE1JX0JBVENIX0JVRkZFUl9FTkQ7CisJc3Ry
dWN0IGRybV9pOTE1X2dlbV9yZWxvY2F0aW9uX2VudHJ5IHJlbG9jOworCXN0cnVjdCBkcm1faTkx
NV9nZW1fZXhlY19vYmplY3QyIG9ialsyXTsKKwlzdHJ1Y3QgZHJtX2k5MTVfZ2VtX2V4ZWNidWZm
ZXIyIGV4ZWNidWY7CisJaWd0X3NwaW5fdCAqc3BpbjsKKworCXNwaW4gPSBpZ3Rfc3Bpbl9uZXco
ZmQsIC5lbmdpbmUgPSBlbmdpbmUpOworCisJbWVtc2V0KG9iaiwgMCwgc2l6ZW9mKG9iaikpOwor
CW9ialswXSA9IHNwaW4tPm9ialtJR1RfU1BJTl9CQVRDSF07CisJb2JqWzBdLnJlbG9jc19wdHIg
PSB0b191c2VyX3BvaW50ZXIoJnJlbG9jKTsKKwlvYmpbMF0ucmVsb2NhdGlvbl9jb3VudCA9IDE7
CisJb2JqWzFdLmhhbmRsZSA9IGdlbV9jcmVhdGUoZmQsIDQwOTYpOworCWdlbV93cml0ZShmZCwg
b2JqWzFdLmhhbmRsZSwgMCwgJmJiZSwgc2l6ZW9mKGJiZSkpOworCisJbWVtc2V0KCZyZWxvYywg
MCwgc2l6ZW9mKHJlbG9jKSk7CisJcmVsb2MucHJlc3VtZWRfb2Zmc2V0ID0gLTE7CisJcmVsb2Mu
b2Zmc2V0ID0gb2Zmc2V0X2luX3BhZ2Uoc3Bpbi0+Y29uZGl0aW9uKTsKKwlyZWxvYy50YXJnZXRf
aGFuZGxlID0gb2JqWzBdLmhhbmRsZTsKKworCW1lbXNldCgmZXhlY2J1ZiwgMCwgc2l6ZW9mKGV4
ZWNidWYpKTsKKwlleGVjYnVmLmJ1ZmZlcnNfcHRyID0gdG9fdXNlcl9wb2ludGVyKG9iaik7CisJ
ZXhlY2J1Zi5idWZmZXJfY291bnQgPSAyOworCWV4ZWNidWYuZmxhZ3MgPSBlbmdpbmU7CisKKwln
ZW1fZXhlY2J1ZihmZCwgJmV4ZWNidWYpOworCWdlbV9jbG9zZShmZCwgb2JqWzFdLmhhbmRsZSk7
CisJaWd0X2Fzc2VydF9lcSgqc3Bpbi0+Y29uZGl0aW9uLCBzcGluLT5jbWRfcHJlY29uZGl0aW9u
KTsKKworCWlndF9zcGluX2VuZChzcGluKTsKKwlnZW1fc3luYyhmZCwgc3Bpbi0+aGFuZGxlKTsK
KworCWlndF9hc3NlcnRfZXEoKnNwaW4tPmNvbmRpdGlvbiwgb2JqWzBdLm9mZnNldCk7CisJaWd0
X3NwaW5fZnJlZShmZCwgc3Bpbik7Cit9CisKIHN0YXRpYyBib29sIGhhc182NGJfcmVsb2MoaW50
IGZkKQogewogCXJldHVybiBpbnRlbF9nZW4oaW50ZWxfZ2V0X2RybV9kZXZpZChmZCkpID49IDg7
CkBAIC03NTUsNiArNzk4LDggQEAgaWd0X21haW4KIAkgICAgIGUtPm5hbWU7IGUrKykgewogCQlp
Z3Rfc3VidGVzdF9mKCJhY3RpdmUtJXMiLCBlLT5uYW1lKQogCQkJYWN0aXZlKGZkLCBlYl9yaW5n
KGUpKTsKKwkJaWd0X3N1YnRlc3RfZigic3Bpbi0lcyIsIGUtPm5hbWUpCisJCQlhY3RpdmVfc3Bp
bihmZCwgZWJfcmluZyhlKSk7CiAJfQogCWlndF9maXh0dXJlCiAJCWNsb3NlKGZkKTsKLS0gCjIu
MjQuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
