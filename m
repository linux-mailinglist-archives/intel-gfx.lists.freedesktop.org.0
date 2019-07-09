Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C537E6385D
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Jul 2019 17:09:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C7CA895C4;
	Tue,  9 Jul 2019 15:09:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 18F74895C4
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Jul 2019 15:09:41 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17186857-1500050 
 for multiple; Tue, 09 Jul 2019 16:09:24 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  9 Jul 2019 16:09:23 +0100
Message-Id: <20190709150923.13874-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190709135724.26936-1-chris@chris-wilson.co.uk>
References: <20190709135724.26936-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v1] drm/i915/selftests: Hold the vma manager
 lock while modifying mmap_offset
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

X2lnaHQgaWRlYSwgd3JvbmcgbG9jay4gV2UgYWxyZWFkeSBkcm9wIHN0cnVjdF9tdXRleCBiZWZv
cmUgd2UgZnJlZSB0aGUKbW1hcF9vZmZzZXQgd2hlbiBmcmVlaW5nIHRoZSBvYmplY3QsIHNvIHdl
IG5lZWQgdG8gdGFrZSB0aGUgdm1hIG1hbmFnZXIKbG9jayB3aGVuIG1hbmlwdWxhdGluZyB0aGUg
bW1hcF9vZmZzZXQgYWRkcmVzcyBzcGFjZSBmb3Igb3VyIHNlbGZ0ZXN0cy4KCkZpeGVzOiA4MjIx
ZDIxYjA2NjQgKCJkcm0vaTkxNS9zZWxmdGVzdHM6IExvY2sgdGhlIGRybV9tbSB3aGlsZSBtb2Rp
ZnlpbmciKQpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5j
by51az4KQ2M6IEltcmUgRGVhayA8aW1yZS5kZWFrQGludGVsLmNvbT4KLS0tCktlZXAgc3BhcnNl
IHF1aWV0IHdpdGggbG9ja2luZyBhbm5vdGF0aW9ucy4KLUNocmlzCi0tLQogLi4uL2RybS9pOTE1
L2dlbS9zZWxmdGVzdHMvaTkxNV9nZW1fbW1hbi5jICAgIHwgMjAgKysrKysrKysrKysrKysrLS0t
LQogMSBmaWxlIGNoYW5nZWQsIDE2IGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCgpkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9pOTE1X2dlbV9tbWFu
LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL2k5MTVfZ2VtX21tYW4uYwpp
bmRleCBiOTVmZGMyYjZiZmMuLjU2MzVjYmI0YWYyMiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9pOTE1X2dlbV9tbWFuLmMKKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9pOTE1X2dlbV9tbWFuLmMKQEAgLTQwMSw2ICs0MDEsMTgg
QEAgc3RhdGljIHZvaWQgcmVzdG9yZV9yZXRpcmVfd29ya2VyKHN0cnVjdCBkcm1faTkxNV9wcml2
YXRlICppOTE1KQogCWk5MTVfZ2VtX3Nocmlua2VyX3JlZ2lzdGVyKGk5MTUpOwogfQogCitzdGF0
aWMgdm9pZCBtbWFwX29mZnNldF9sb2NrKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQor
CV9fYWNxdWlyZXMoJmk5MTUtPmRybS52bWFfb2Zmc2V0X21hbmFnZXItPnZtX2xvY2spCit7CisJ
d3JpdGVfbG9jaygmaTkxNS0+ZHJtLnZtYV9vZmZzZXRfbWFuYWdlci0+dm1fbG9jayk7Cit9CisK
K3N0YXRpYyB2b2lkIG1tYXBfb2Zmc2V0X3VubG9jayhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAq
aTkxNSkKKwlfX3JlbGVhc2VzKCZpOTE1LT5kcm0udm1hX29mZnNldF9tYW5hZ2VyLT52bV9sb2Nr
KQoreworCXdyaXRlX3VubG9jaygmaTkxNS0+ZHJtLnZtYV9vZmZzZXRfbWFuYWdlci0+dm1fbG9j
ayk7Cit9CisKIHN0YXRpYyBpbnQgaWd0X21tYXBfb2Zmc2V0X2V4aGF1c3Rpb24odm9pZCAqYXJn
KQogewogCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0gYXJnOwpAQCAtNDE5LDkgKzQz
MSw5IEBAIHN0YXRpYyBpbnQgaWd0X21tYXBfb2Zmc2V0X2V4aGF1c3Rpb24odm9pZCAqYXJnKQog
CWRybV9tbV9mb3JfZWFjaF9ob2xlKGhvbGUsIG1tLCBob2xlX3N0YXJ0LCBob2xlX2VuZCkgewog
CQlyZXN2LnN0YXJ0ID0gaG9sZV9zdGFydDsKIAkJcmVzdi5zaXplID0gaG9sZV9lbmQgLSBob2xl
X3N0YXJ0IC0gMTsgLyogUEFHRV9TSVpFIHVuaXRzICovCi0JCW11dGV4X2xvY2soJmk5MTUtPmRy
bS5zdHJ1Y3RfbXV0ZXgpOworCQltbWFwX29mZnNldF9sb2NrKGk5MTUpOwogCQllcnIgPSBkcm1f
bW1fcmVzZXJ2ZV9ub2RlKG1tLCAmcmVzdik7Ci0JCW11dGV4X3VubG9jaygmaTkxNS0+ZHJtLnN0
cnVjdF9tdXRleCk7CisJCW1tYXBfb2Zmc2V0X3VubG9jayhpOTE1KTsKIAkJaWYgKGVycikgewog
CQkJcHJfZXJyKCJGYWlsZWQgdG8gdHJpbSBWTUEgbWFuYWdlciwgZXJyPSVkXG4iLCBlcnIpOwog
CQkJZ290byBvdXRfcGFyazsKQEAgLTQ4NSw5ICs0OTcsOSBAQCBzdGF0aWMgaW50IGlndF9tbWFw
X29mZnNldF9leGhhdXN0aW9uKHZvaWQgKmFyZykKIAl9CiAKIG91dDoKLQltdXRleF9sb2NrKCZp
OTE1LT5kcm0uc3RydWN0X211dGV4KTsKKwltbWFwX29mZnNldF9sb2NrKGk5MTUpOwogCWRybV9t
bV9yZW1vdmVfbm9kZSgmcmVzdik7Ci0JbXV0ZXhfdW5sb2NrKCZpOTE1LT5kcm0uc3RydWN0X211
dGV4KTsKKwltbWFwX29mZnNldF91bmxvY2soaTkxNSk7CiBvdXRfcGFyazoKIAlyZXN0b3JlX3Jl
dGlyZV93b3JrZXIoaTkxNSk7CiAJcmV0dXJuIGVycjsKLS0gCjIuMjIuMAoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
