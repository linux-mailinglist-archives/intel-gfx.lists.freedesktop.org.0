Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 07FEA64189
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jul 2019 08:45:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1F18F89A14;
	Wed, 10 Jul 2019 06:45:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 31CDA899BC
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Jul 2019 06:45:18 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17193815-1500050 
 for multiple; Wed, 10 Jul 2019 07:45:03 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 10 Jul 2019 07:44:42 +0100
Message-Id: <20190710064454.682-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190710064454.682-1-chris@chris-wilson.co.uk>
References: <20190710064454.682-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 02/14] drm/i915/selftests: Hold the vma manager
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

UmlnaHQgaWRlYSwgd3JvbmcgbG9jay4gV2UgYWxyZWFkeSBkcm9wIHN0cnVjdF9tdXRleCBiZWZv
cmUgd2UgZnJlZSB0aGUKbW1hcF9vZmZzZXQgd2hlbiBmcmVlaW5nIHRoZSBvYmplY3QsIHNvIHdl
IG5lZWQgdG8gdGFrZSB0aGUgdm1hIG1hbmFnZXIKbG9jayB3aGVuIG1hbmlwdWxhdGluZyB0aGUg
bW1hcF9vZmZzZXQgYWRkcmVzcyBzcGFjZSBmb3Igb3VyIHNlbGZ0ZXN0cy4KCkZpeGVzOiA4MjIx
ZDIxYjA2NjQgKCJkcm0vaTkxNS9zZWxmdGVzdHM6IExvY2sgdGhlIGRybV9tbSB3aGlsZSBtb2Rp
ZnlpbmciKQpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5j
by51az4KQ2M6IEltcmUgRGVhayA8aW1yZS5kZWFrQGludGVsLmNvbT4KLS0tCiAuLi4vZHJtL2k5
MTUvZ2VtL3NlbGZ0ZXN0cy9pOTE1X2dlbV9tbWFuLmMgICAgfCAyMCArKysrKysrKysrKysrKyst
LS0tCiAxIGZpbGUgY2hhbmdlZCwgMTYgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKCmRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL2k5MTVfZ2VtX21t
YW4uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9zZWxmdGVzdHMvaTkxNV9nZW1fbW1hbi5j
CmluZGV4IGI5NWZkYzJiNmJmYy4uNTYzNWNiYjRhZjIyIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL2k5MTVfZ2VtX21tYW4uYworKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL2k5MTVfZ2VtX21tYW4uYwpAQCAtNDAxLDYgKzQwMSwx
OCBAQCBzdGF0aWMgdm9pZCByZXN0b3JlX3JldGlyZV93b3JrZXIoc3RydWN0IGRybV9pOTE1X3By
aXZhdGUgKmk5MTUpCiAJaTkxNV9nZW1fc2hyaW5rZXJfcmVnaXN0ZXIoaTkxNSk7CiB9CiAKK3N0
YXRpYyB2b2lkIG1tYXBfb2Zmc2V0X2xvY2soc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUp
CisJX19hY3F1aXJlcygmaTkxNS0+ZHJtLnZtYV9vZmZzZXRfbWFuYWdlci0+dm1fbG9jaykKK3sK
Kwl3cml0ZV9sb2NrKCZpOTE1LT5kcm0udm1hX29mZnNldF9tYW5hZ2VyLT52bV9sb2NrKTsKK30K
Kworc3RhdGljIHZvaWQgbW1hcF9vZmZzZXRfdW5sb2NrKHN0cnVjdCBkcm1faTkxNV9wcml2YXRl
ICppOTE1KQorCV9fcmVsZWFzZXMoJmk5MTUtPmRybS52bWFfb2Zmc2V0X21hbmFnZXItPnZtX2xv
Y2spCit7CisJd3JpdGVfdW5sb2NrKCZpOTE1LT5kcm0udm1hX29mZnNldF9tYW5hZ2VyLT52bV9s
b2NrKTsKK30KKwogc3RhdGljIGludCBpZ3RfbW1hcF9vZmZzZXRfZXhoYXVzdGlvbih2b2lkICph
cmcpCiB7CiAJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSBhcmc7CkBAIC00MTksOSAr
NDMxLDkgQEAgc3RhdGljIGludCBpZ3RfbW1hcF9vZmZzZXRfZXhoYXVzdGlvbih2b2lkICphcmcp
CiAJZHJtX21tX2Zvcl9lYWNoX2hvbGUoaG9sZSwgbW0sIGhvbGVfc3RhcnQsIGhvbGVfZW5kKSB7
CiAJCXJlc3Yuc3RhcnQgPSBob2xlX3N0YXJ0OwogCQlyZXN2LnNpemUgPSBob2xlX2VuZCAtIGhv
bGVfc3RhcnQgLSAxOyAvKiBQQUdFX1NJWkUgdW5pdHMgKi8KLQkJbXV0ZXhfbG9jaygmaTkxNS0+
ZHJtLnN0cnVjdF9tdXRleCk7CisJCW1tYXBfb2Zmc2V0X2xvY2soaTkxNSk7CiAJCWVyciA9IGRy
bV9tbV9yZXNlcnZlX25vZGUobW0sICZyZXN2KTsKLQkJbXV0ZXhfdW5sb2NrKCZpOTE1LT5kcm0u
c3RydWN0X211dGV4KTsKKwkJbW1hcF9vZmZzZXRfdW5sb2NrKGk5MTUpOwogCQlpZiAoZXJyKSB7
CiAJCQlwcl9lcnIoIkZhaWxlZCB0byB0cmltIFZNQSBtYW5hZ2VyLCBlcnI9JWRcbiIsIGVycik7
CiAJCQlnb3RvIG91dF9wYXJrOwpAQCAtNDg1LDkgKzQ5Nyw5IEBAIHN0YXRpYyBpbnQgaWd0X21t
YXBfb2Zmc2V0X2V4aGF1c3Rpb24odm9pZCAqYXJnKQogCX0KIAogb3V0OgotCW11dGV4X2xvY2so
Jmk5MTUtPmRybS5zdHJ1Y3RfbXV0ZXgpOworCW1tYXBfb2Zmc2V0X2xvY2soaTkxNSk7CiAJZHJt
X21tX3JlbW92ZV9ub2RlKCZyZXN2KTsKLQltdXRleF91bmxvY2soJmk5MTUtPmRybS5zdHJ1Y3Rf
bXV0ZXgpOworCW1tYXBfb2Zmc2V0X3VubG9jayhpOTE1KTsKIG91dF9wYXJrOgogCXJlc3RvcmVf
cmV0aXJlX3dvcmtlcihpOTE1KTsKIAlyZXR1cm4gZXJyOwotLSAKMi4yMi4wCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
