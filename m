Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E3E53D0C4E
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Oct 2019 12:12:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4ED8D6E954;
	Wed,  9 Oct 2019 10:12:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 106EC6E954
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Oct 2019 10:11:59 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18775322-1500050 
 for multiple; Wed, 09 Oct 2019 11:09:55 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  9 Oct 2019 11:09:54 +0100
Message-Id: <20191009100955.21477-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/execlists: Protect peeking at
 execlists->active
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

Tm93IHRoYXQgd2UgZHJvcHBlZCB0aGUgZW5naW5lLT5hY3RpdmUubG9jayBzZXJpYWxpc2F0aW9u
IGZyb20gYXJvdW5kCnByb2Nlc3NfY3NiKCksIGRpcmVjdCBzdWJtaXNzaW9uIGNhbiBydW4gY29u
Y3VycmVudGx5IHRvIHRoZSBpbnRlcnJ1cHQKaGFuZGxlci4gQXMgc3VjaCBleGVjbGlzdHMtPmFj
dGl2ZSBtYXkgYmUgYWR2YW5jZWQgYXMgd2UgZGVxdWV1ZSwKZHJvcHBpbmcgdGhlIHJlZmVyZW5j
ZSB0byB0aGUgcmVxdWVzdC4gV2UgbmVlZCB0byBlbXBsb3kgb3VyIFJDVSByZXF1ZXN0CnByb3Rl
Y3Rpb24gdG8gZW5zdXJlIHRoYXQgdGhlIHJlcXVlc3QgaXMgbm90IGZyZWVkIHRvbyBlYXJseS4K
CkZpeGVzOiBkZjQwMzA2OTAyOWQgKCJkcm0vaTkxNS9leGVjbGlzdHM6IExpZnQgcHJvY2Vzc19j
c2IoKSBvdXQgb2YgdGhlIGlycS1vZmYgc3BpbmxvY2siKQpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBX
aWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KQ2M6IE1pa2EgS3VvcHBhbGEgPG1pa2Eu
a3VvcHBhbGFAbGludXguaW50ZWwuY29tPgpDYzogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1
bGluQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYyB8
IDcgKysrKystLQogMSBmaWxlIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMo
LSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jCmluZGV4IDZkYjc2MmM1MDliOC4uN2Vh
NTgzMzVmMDRjIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMu
YworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYwpAQCAtMTI4OSw3ICsx
Mjg5LDcgQEAgc3RhdGljIHZvaWQgdmlydHVhbF94ZmVyX2JyZWFkY3J1bWJzKHN0cnVjdCB2aXJ0
dWFsX2VuZ2luZSAqdmUsCiBzdGF0aWMgc3RydWN0IGk5MTVfcmVxdWVzdCAqCiBsYXN0X2FjdGl2
ZShjb25zdCBzdHJ1Y3QgaW50ZWxfZW5naW5lX2V4ZWNsaXN0cyAqZXhlY2xpc3RzKQogewotCXN0
cnVjdCBpOTE1X3JlcXVlc3QgKiBjb25zdCAqbGFzdCA9IGV4ZWNsaXN0cy0+YWN0aXZlOworCXN0
cnVjdCBpOTE1X3JlcXVlc3QgKiBjb25zdCAqbGFzdCA9IFJFQURfT05DRShleGVjbGlzdHMtPmFj
dGl2ZSk7CiAKIAl3aGlsZSAoKmxhc3QgJiYgaTkxNV9yZXF1ZXN0X2NvbXBsZXRlZCgqbGFzdCkp
CiAJCWxhc3QrKzsKQEAgLTE5ODEsOCArMTk4MSwxMSBAQCBzdGF0aWMgdm9pZCBwcm9jZXNzX2Nz
YihzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUpCiBzdGF0aWMgdm9pZCBfX2V4ZWNsaXN0
c19zdWJtaXNzaW9uX3Rhc2tsZXQoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqY29uc3QgZW5naW5l
KQogewogCWxvY2tkZXBfYXNzZXJ0X2hlbGQoJmVuZ2luZS0+YWN0aXZlLmxvY2spOwotCWlmICgh
ZW5naW5lLT5leGVjbGlzdHMucGVuZGluZ1swXSkKKwlpZiAoIWVuZ2luZS0+ZXhlY2xpc3RzLnBl
bmRpbmdbMF0pIHsKKwkJcmN1X3JlYWRfbG9jaygpOyAvKiBwcm90ZWN0IHBlZWtpbmcgYXQgZXhl
Y2xpc3RzLT5hY3RpdmUgKi8KIAkJZXhlY2xpc3RzX2RlcXVldWUoZW5naW5lKTsKKwkJcmN1X3Jl
YWRfdW5sb2NrKCk7CisJfQogfQogCiAvKgotLSAKMi4yMy4wCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
