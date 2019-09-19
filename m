Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 323A3B7850
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Sep 2019 13:19:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1E30F6FB0A;
	Thu, 19 Sep 2019 11:19:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A83656FA37
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Sep 2019 11:19:27 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18544583-1500050 
 for multiple; Thu, 19 Sep 2019 12:19:14 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 19 Sep 2019 12:19:12 +0100
Message-Id: <20190919111912.21631-3-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190919111912.21631-1-chris@chris-wilson.co.uk>
References: <20190919111912.21631-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 3/3] drm/i915: Protect timeline->hwsp
 dereferencing
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

QXMgbm90IG9ubHkgaXMgdGhlIHNpZ25hbC0+dGltZWxpbmUgdm9sYXRpbGUsIHNvIHdpbGwgYmUg
YWNxdWlyaW5nIHRoZQp0aW1lbGluZSdzIEhXU1AuIFdlIG11c3QgZmlyc3QgY2FyZWZ1bGx5IGFj
cXVpcmUgdGhlIHRpbWVsaW5lIGZyb20gdGhlCnNpZ25hbGluZyByZXF1ZXN0IGFuZCB0aGVuIGxv
Y2sgdGhlIHRpbWVsaW5lLiBXaXRoIHRoZSByZW1vdmFsIG9mIHRoZQpzdHJ1Y3RfbXV0ZXggc2Vy
aWFsaXNhdGlvbiBvZiByZXF1ZXN0IGNvbnN0cnVjdGlvbiwgd2UgY2FuIGhhdmUgbXVsdGlwbGUK
dGltZWxpbmVzIGFjdGl2ZSBhdCBvbmNlLCBhbmQgc28gd2UgbXVzdCBhdm9pZCB1c2luZyB0aGUg
bmVzdGVkIG11dGV4CmxvY2sgYXMgaXQgaXMgcXVpdGUgcG9zc2libGUgZm9yIGJvdGggdGltZWxp
bmVzIHRvIGJlIGVzdGFibGlzaGluZwpzZW1hcGhvcmVzIG9uIHRoZSBvdGhlciBhbmQgc28gZGVh
ZGxvY2suCgpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5j
by51az4KQ2M6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBsaW51eC5pbnRlbC5jb20+
ClJldmlld2VkLWJ5OiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgot
LS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3RpbWVsaW5lLmMgfCAzMiArKysrKysr
KysrKysrKysrKystLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAyNSBpbnNlcnRpb25zKCspLCA3IGRl
bGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3Rp
bWVsaW5lLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF90aW1lbGluZS5jCmluZGV4
IDExNWEyNGQ0YTIwYS4uOWQ0MzZlMTRlYThkIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC9pbnRlbF90aW1lbGluZS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2lu
dGVsX3RpbWVsaW5lLmMKQEAgLTUwMCwxNyArNTAwLDMyIEBAIGludCBpbnRlbF90aW1lbGluZV9y
ZWFkX2h3c3Aoc3RydWN0IGk5MTVfcmVxdWVzdCAqZnJvbSwKIAkJCSAgICAgc3RydWN0IGk5MTVf
cmVxdWVzdCAqdG8sCiAJCQkgICAgIHUzMiAqaHdzcCkKIHsKLQlzdHJ1Y3QgaW50ZWxfdGltZWxp
bmVfY2FjaGVsaW5lICpjbCA9IGZyb20tPmh3c3BfY2FjaGVsaW5lOwotCXN0cnVjdCBpbnRlbF90
aW1lbGluZSAqdGwgPSBmcm9tLT50aW1lbGluZTsKKwlzdHJ1Y3QgaW50ZWxfdGltZWxpbmUgKnRs
OwogCWludCBlcnI7CiAKKwlyY3VfcmVhZF9sb2NrKCk7CisJdGwgPSByY3VfZGVyZWZlcmVuY2Uo
ZnJvbS0+dGltZWxpbmUpOworCWlmIChpOTE1X3JlcXVlc3RfY29tcGxldGVkKGZyb20pIHx8ICFr
cmVmX2dldF91bmxlc3NfemVybygmdGwtPmtyZWYpKQorCQl0bCA9IE5VTEw7CisJcmN1X3JlYWRf
dW5sb2NrKCk7CisJaWYgKCF0bCkgLyogYWxyZWFkeSBjb21wbGV0ZWQgKi8KKwkJcmV0dXJuIDE7
CisKIAlHRU1fQlVHX09OKHJjdV9hY2Nlc3NfcG9pbnRlcih0by0+dGltZWxpbmUpID09IHRsKTsK
IAotCW11dGV4X2xvY2tfbmVzdGVkKCZ0bC0+bXV0ZXgsIFNJTkdMRV9ERVBUSF9ORVNUSU5HKTsK
LQllcnIgPSBpOTE1X3JlcXVlc3RfY29tcGxldGVkKGZyb20pOwotCWlmICghZXJyKQorCWVyciA9
IC1FQlVTWTsKKwlpZiAobXV0ZXhfdHJ5bG9jaygmdGwtPm11dGV4KSkgeworCQlzdHJ1Y3QgaW50
ZWxfdGltZWxpbmVfY2FjaGVsaW5lICpjbCA9IGZyb20tPmh3c3BfY2FjaGVsaW5lOworCisJCWlm
IChpOTE1X3JlcXVlc3RfY29tcGxldGVkKGZyb20pKSB7CisJCQllcnIgPSAxOworCQkJZ290byB1
bmxvY2s7CisJCX0KKwogCQllcnIgPSBjYWNoZWxpbmVfcmVmKGNsLCB0byk7Ci0JaWYgKCFlcnIp
IHsKKwkJaWYgKGVycikKKwkJCWdvdG8gdW5sb2NrOworCiAJCWlmIChsaWtlbHkoY2wgPT0gdGwt
Pmh3c3BfY2FjaGVsaW5lKSkgewogCQkJKmh3c3AgPSB0bC0+aHdzcF9vZmZzZXQ7CiAJCX0gZWxz
ZSB7IC8qIGFjcm9zcyBhIHNlcW5vIHdyYXAsIHJlY292ZXIgdGhlIG9yaWdpbmFsIG9mZnNldCAq
LwpAQCAtNTE4LDggKzUzMywxMSBAQCBpbnQgaW50ZWxfdGltZWxpbmVfcmVhZF9od3NwKHN0cnVj
dCBpOTE1X3JlcXVlc3QgKmZyb20sCiAJCQkJcHRyX3VubWFza19iaXRzKGNsLT52YWRkciwgQ0FD
SEVMSU5FX0JJVFMpICoKIAkJCQlDQUNIRUxJTkVfQllURVM7CiAJCX0KKwordW5sb2NrOgorCQlt
dXRleF91bmxvY2soJnRsLT5tdXRleCk7CiAJfQotCW11dGV4X3VubG9jaygmdGwtPm11dGV4KTsK
KwlpbnRlbF90aW1lbGluZV9wdXQodGwpOwogCiAJcmV0dXJuIGVycjsKIH0KLS0gCjIuMjMuMAoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
