Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B30B58AFD7
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Aug 2019 08:20:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E0DE66E063;
	Tue, 13 Aug 2019 06:20:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 86B316E059;
 Tue, 13 Aug 2019 06:20:27 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17976912-1500050 
 for multiple; Tue, 13 Aug 2019 07:20:18 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 13 Aug 2019 07:20:12 +0100
Message-Id: <20190813062016.7870-5-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0.rc1
In-Reply-To: <20190813062016.7870-1-chris@chris-wilson.co.uk>
References: <20190813062016.7870-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t 5/9] i915/gem_userptr_blits: Apply some
 THP pressure
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

U3RpbGwgdHJ5aW5nIHRvIGhpdCBhIGRlYWRsb2NrIHdpdGggdXNlcnB0ciBmcm9tIGtjb21wYXRj
ZC4KClNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVr
PgotLS0KIHRlc3RzL2k5MTUvZ2VtX3VzZXJwdHJfYmxpdHMuYyB8IDQ5ICsrKysrKysrKysrKysr
KysrKysrKysrKysrKysrLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCA0MiBpbnNlcnRpb25zKCspLCA3
IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL3Rlc3RzL2k5MTUvZ2VtX3VzZXJwdHJfYmxpdHMu
YyBiL3Rlc3RzL2k5MTUvZ2VtX3VzZXJwdHJfYmxpdHMuYwppbmRleCAxMzczZjE2MGIuLjVmNzc3
MGM5MyAxMDA2NDQKLS0tIGEvdGVzdHMvaTkxNS9nZW1fdXNlcnB0cl9ibGl0cy5jCisrKyBiL3Rl
c3RzL2k5MTUvZ2VtX3VzZXJwdHJfYmxpdHMuYwpAQCAtMTY2MiwyMCArMTY2MiwyNCBAQCBzdHJ1
Y3Qgc3RyZXNzX3RocmVhZF9kYXRhIHsKIHN0YXRpYyB2b2lkICptbV9zdHJlc3NfdGhyZWFkKHZv
aWQgKmRhdGEpCiB7CiAJc3RydWN0IHN0cmVzc190aHJlYWRfZGF0YSAqc3RkYXRhID0gKHN0cnVj
dCBzdHJlc3NfdGhyZWFkX2RhdGEgKilkYXRhOworCWNvbnN0IHNpemVfdCBzeiA9IDIgPDwgMjA7
CiAJdm9pZCAqcHRyOwotCWludCByZXQ7CiAKIAl3aGlsZSAoIXN0ZGF0YS0+c3RvcCkgewotCQlw
dHIgPSBtbWFwKE5VTEwsIFBBR0VfU0laRSwgUFJPVF9SRUFEIHwgUFJPVF9XUklURSwKLQkJCQlN
QVBfQU5PTllNT1VTIHwgTUFQX1BSSVZBVEUsIC0xLCAwKTsKKwkJcHRyID0gbW1hcChOVUxMLCBz
eiwgUFJPVF9SRUFEIHwgUFJPVF9XUklURSwKKwkJCSAgIE1BUF9BTk9OWU1PVVMgfCBNQVBfUFJJ
VkFURSwgLTEsIDApOwogCQlpZiAocHRyID09IE1BUF9GQUlMRUQpIHsKIAkJCXN0ZGF0YS0+ZXhp
dF9jb2RlID0gLUVGQVVMVDsKIAkJCWJyZWFrOwogCQl9Ci0JCXJldCA9IG11bm1hcChwdHIsIFBB
R0VfU0laRSk7Ci0JCWlmIChyZXQpIHsKLQkJICAgICAgICBzdGRhdGEtPmV4aXRfY29kZSA9IGVy
cm5vOwotCQkgICAgICAgIGJyZWFrOworCisJCW1hZHZpc2UocHRyLCBzeiwgTUFEVl9IVUdFUEFH
RSk7CisJCWZvciAoc2l6ZV90IHBhZ2UgPSAwOyBwYWdlIDwgc3o7IHBhZ2UgKz0gUEFHRV9TSVpF
KQorCQkJKih2b2xhdGlsZSB1aW50MzJfdCAqKSgodW5zaWduZWQgY2hhciAqKXB0ciArIHBhZ2Up
ID0gMDsKKworCQlpZiAobXVubWFwKHB0ciwgc3opKSB7CisJCQlzdGRhdGEtPmV4aXRfY29kZSA9
IGVycm5vOworCQkJYnJlYWs7CiAJCX0KIAl9CiAKQEAgLTE3MTMsNiArMTcxNywzNSBAQCBzdGF0
aWMgdm9pZCB0ZXN0X3N0cmVzc19tbShpbnQgZmQpCiAJaWd0X2Fzc2VydF9lcShzdGRhdGEuZXhp
dF9jb2RlLCAwKTsKIH0KIAorc3RhdGljIHZvaWQgdGVzdF9zdHJlc3NfcHVyZ2UoaW50IGZkKQor
eworCXN0cnVjdCBzdHJlc3NfdGhyZWFkX2RhdGEgc3RkYXRhOworCXVpbnQzMl90IGhhbmRsZTsK
KwlwdGhyZWFkX3QgdDsKKwl2b2lkICpwdHI7CisKKwltZW1zZXQoJnN0ZGF0YSwgMCwgc2l6ZW9m
KHN0ZGF0YSkpOworCisJaWd0X2Fzc2VydChwb3NpeF9tZW1hbGlnbigmcHRyLCBQQUdFX1NJWkUs
IFBBR0VfU0laRSkgPT0gMCk7CisJaWd0X2Fzc2VydCghcHRocmVhZF9jcmVhdGUoJnQsIE5VTEws
IG1tX3N0cmVzc190aHJlYWQsICZzdGRhdGEpKTsKKworCWlndF91bnRpbF90aW1lb3V0KDE1MCkg
eworCQlnZW1fdXNlcnB0cihmZCwgcHRyLCBQQUdFX1NJWkUsIDAsIHVzZXJwdHJfZmxhZ3MsICZo
YW5kbGUpOworCisJCWdlbV9zZXRfZG9tYWluKGZkLCBoYW5kbGUsCisJCQkgICAgICAgSTkxNV9H
RU1fRE9NQUlOX0dUVCwgSTkxNV9HRU1fRE9NQUlOX0dUVCk7CisJCWludGVsX3B1cmdlX3ZtX2Nh
Y2hlcyhmZCk7CisKKwkJZ2VtX2Nsb3NlKGZkLCBoYW5kbGUpOworCX0KKworCWZyZWUocHRyKTsK
KworCXN0ZGF0YS5zdG9wID0gMTsKKwlpZ3RfYXNzZXJ0KCFwdGhyZWFkX2pvaW4odCwgTlVMTCkp
OworCWlndF9hc3NlcnRfZXEoc3RkYXRhLmV4aXRfY29kZSwgMCk7Cit9CisKIHN0cnVjdCB1c2Vy
cHRyX2Nsb3NlX3RocmVhZF9kYXRhIHsKIAlpbnQgZmQ7CiAJdm9pZCAqcHRyOwpAQCAtMTk3NSw2
ICsyMDA4LDggQEAgaWd0X21haW5fYXJncygiYzoiLCBOVUxMLCBoZWxwX3N0ciwgb3B0X2hhbmRs
ZXIsIE5VTEwpCiAKIAkJaWd0X3N1YnRlc3QoInN0cmVzcy1tbSIpCiAJCQl0ZXN0X3N0cmVzc19t
bShmZCk7CisJCWlndF9zdWJ0ZXN0KCJzdHJlc3MtcHVyZ2UiKQorCQkJdGVzdF9zdHJlc3NfcHVy
Z2UoZmQpOwogCiAJCWlndF9zdWJ0ZXN0KCJzdHJlc3MtbW0taW52YWxpZGF0ZS1jbG9zZSIpCiAJ
CQl0ZXN0X2ludmFsaWRhdGVfY2xvc2VfcmFjZShmZCwgZmFsc2UpOwotLSAKMi4yMy4wLnJjMQoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
