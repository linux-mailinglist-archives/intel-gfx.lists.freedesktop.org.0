Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B014D3FD1
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Oct 2019 14:43:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 23E686EC3A;
	Fri, 11 Oct 2019 12:43:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 673656EC3A;
 Fri, 11 Oct 2019 12:43:45 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18803945-1500050 
 for multiple; Fri, 11 Oct 2019 13:43:31 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 11 Oct 2019 13:43:28 +0100
Message-Id: <20191011124328.3400-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] Check all sysfs entries are readable
 without dmesg spam
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

V2UgYWxyZWFkeSBjaGVjayB0aGF0IGRlYnVnZnMgZG8gbm90IGNhdXNlIHNwYW0gKGFuZCB0aGV5
IHRlbmQgdG8gYmUKbW9yZSBoZWF2eWhhbmRlZCBhbmQgc28gbW9yZSBsaWtlbHkgdG8gYnJlYWsp
LCBidXQgdGhhdCBkb2VzIG5vdCBleGN1c2UKbm90IGNoZWNraW5nIG91ciBzeXNmcyBkaXJlY3Rv
cnkhCgpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51
az4KQ2M6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+Ci0tLQogdGVz
dHMvZGVidWdmc190ZXN0LmMgfCA4ICsrKysrKy0tCiAxIGZpbGUgY2hhbmdlZCwgNiBpbnNlcnRp
b25zKCspLCAyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL3Rlc3RzL2RlYnVnZnNfdGVzdC5j
IGIvdGVzdHMvZGVidWdmc190ZXN0LmMKaW5kZXggZjhkZDg1MWM5Li4yZDQ3NTNkZjUgMTAwNjQ0
Ci0tLSBhL3Rlc3RzL2RlYnVnZnNfdGVzdC5jCisrKyBiL3Rlc3RzL2RlYnVnZnNfdGVzdC5jCkBA
IC01Niw3ICs1Niw3IEBAIHN0YXRpYyB2b2lkIHJlYWRfYW5kX2Rpc2NhcmRfc3lzZnNfZW50cmll
cyhpbnQgcGF0aF9mZCwgaW50IGluZGVudCkKIAkJCWlndF9kZWJ1ZygiJXNFbnRlcmluZyBzdWJk
aXIgJXNcbiIsIHRhYnMsIGRpcmVudC0+ZF9uYW1lKTsKIAkJCXJlYWRfYW5kX2Rpc2NhcmRfc3lz
ZnNfZW50cmllcyhzdWJfZmQsIGluZGVudCArIDEpOwogCQkJY2xvc2Uoc3ViX2ZkKTsKLQkJfSBl
bHNlIHsKKwkJfSBlbHNlIGlmIChkaXJlbnQtPmRfdHlwZSA9PSBEVF9SRUcpIHsKIAkJCWNoYXIg
YnVmWzUxMl07CiAJCQlpbnQgc3ViX2ZkOwogCQkJc3NpemVfdCByZXQ7CkBAIC0xNDksNyArMTQ5
LDcgQEAgc3RhdGljIHZvaWQga21zX3Rlc3RzKGludCBmZCwgaW50IGRlYnVnZnMpCiAKIGlndF9t
YWluCiB7Ci0JaW50IGZkID0gLTEsIGRlYnVnZnM7CisJaW50IGZkID0gLTEsIGRlYnVnZnMsIHN5
c2ZzOwogCiAJaWd0X3NraXBfb25fc2ltdWxhdGlvbigpOwogCkBAIC0xNTcsMTAgKzE1NywxMyBA
QCBpZ3RfbWFpbgogCQlmZCA9IGRybV9vcGVuX2RyaXZlcl9tYXN0ZXIoRFJJVkVSX0lOVEVMKTsK
IAkJaWd0X3JlcXVpcmVfZ2VtKGZkKTsKIAkJZGVidWdmcyA9IGlndF9kZWJ1Z2ZzX2RpcihmZCk7
CisJCXN5c2ZzID0gaWd0X3N5c2ZzX29wZW4oZmQpOwogCiAJCWttc3Rlc3Rfc2V0X3Z0X2dyYXBo
aWNzX21vZGUoKTsKIAl9CiAKKwlpZ3Rfc3VidGVzdCgic3lzZnMiKQorCQlyZWFkX2FuZF9kaXNj
YXJkX3N5c2ZzX2VudHJpZXMoc3lzZnMsIDApOwogCWlndF9zdWJ0ZXN0KCJyZWFkX2FsbF9lbnRy
aWVzIikKIAkJcmVhZF9hbmRfZGlzY2FyZF9zeXNmc19lbnRyaWVzKGRlYnVnZnMsIDApOwogCkBA
IC0xNjgsNiArMTcxLDcgQEAgaWd0X21haW4KIAkJa21zX3Rlc3RzKGZkLCBkZWJ1Z2ZzKTsKIAog
CWlndF9maXh0dXJlIHsKKwkJY2xvc2Uoc3lzZnMpOwogCQljbG9zZShkZWJ1Z2ZzKTsKIAkJY2xv
c2UoZmQpOwogCX0KLS0gCjIuMjMuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4
