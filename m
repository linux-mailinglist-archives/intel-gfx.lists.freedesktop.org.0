Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CF1A4E0328
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Oct 2019 13:40:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D5B26E5EA;
	Tue, 22 Oct 2019 11:40:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 436076E5EA;
 Tue, 22 Oct 2019 11:39:59 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18924360-1500050 
 for multiple; Tue, 22 Oct 2019 12:39:52 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 22 Oct 2019 12:39:50 +0100
Message-Id: <20191022113950.14994-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0.rc0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] i915/gem_exec_schedule: Handle package
 power RAPL unavailability
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

SXQgdHVybnMgb3V0IHRoYXQgbm90IGFsbCBwbGF0Zm9ybXMgaGF2ZSB3b3JraW5nIHBhY2thZ2Ug
cG93ZXIuCgpCdWd6aWxsYTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5j
Z2k/aWQ9MTEyMDk0ClNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2ls
c29uLmNvLnVrPgotLS0KIGxpYi9pZ3RfcmFwbC5oICAgICAgICAgICAgICAgICB8ICA2ICsrKysr
KwogdGVzdHMvaTkxNS9nZW1fZXhlY19zY2hlZHVsZS5jIHwgMTYgKysrKysrKysrLS0tLS0tLQog
MiBmaWxlcyBjaGFuZ2VkLCAxNSBpbnNlcnRpb25zKCspLCA3IGRlbGV0aW9ucygtKQoKZGlmZiAt
LWdpdCBhL2xpYi9pZ3RfcmFwbC5oIGIvbGliL2lndF9yYXBsLmgKaW5kZXggNTVjNDYxOThlLi4x
M2Y0Zjg4YTcgMTAwNjQ0Ci0tLSBhL2xpYi9pZ3RfcmFwbC5oCisrKyBiL2xpYi9pZ3RfcmFwbC5o
CkBAIC01Niw2ICs1NiwxMSBAQCBzdGF0aWMgaW5saW5lIGludCBwa2dfcG93ZXJfb3BlbihzdHJ1
Y3QgcmFwbCAqcikKIAlyZXR1cm4gcmFwbF9vcGVuKHIsICJwa2ciKTsKIH0KIAorc3RhdGljIGlu
bGluZSBib29sIHJhcGxfdmFsaWQoc3RydWN0IHJhcGwgKnIpCit7CisJcmV0dXJuIHItPmZkID49
IDA7Cit9CisKIHN0YXRpYyBpbmxpbmUgaW50IHJhbV9wb3dlcl9vcGVuKHN0cnVjdCByYXBsICpy
KQogewogCXJldHVybiByYXBsX29wZW4ociwgInJhbSIpOwpAQCAtNjksNiArNzQsNyBAQCBzdGF0
aWMgaW5saW5lIGJvb2wgcmFwbF9yZWFkKHN0cnVjdCByYXBsICpyLCBzdHJ1Y3QgcG93ZXJfc2Ft
cGxlICpzKQogc3RhdGljIGlubGluZSB2b2lkIHJhcGxfY2xvc2Uoc3RydWN0IHJhcGwgKnIpCiB7
CiAJY2xvc2Uoci0+ZmQpOworCXItPmZkID0gLTE7CiB9CiAKIHN0YXRpYyBpbmxpbmUgZG91Ymxl
IHBvd2VyX0ooY29uc3Qgc3RydWN0IHJhcGwgKnIsCmRpZmYgLS1naXQgYS90ZXN0cy9pOTE1L2dl
bV9leGVjX3NjaGVkdWxlLmMgYi90ZXN0cy9pOTE1L2dlbV9leGVjX3NjaGVkdWxlLmMKaW5kZXgg
OWEyZjIzNTJiLi44Njk1Y2JlOWQgMTAwNjQ0Ci0tLSBhL3Rlc3RzL2k5MTUvZ2VtX2V4ZWNfc2No
ZWR1bGUuYworKysgYi90ZXN0cy9pOTE1L2dlbV9leGVjX3NjaGVkdWxlLmMKQEAgLTE2MTEsOCAr
MTYxMSw4IEBAIHN0YXRpYyB2b2lkIG1lYXN1cmVfc2VtYXBob3JlX3Bvd2VyKGludCBpOTE1KQog
CXVuc2lnbmVkIGludCBlbmdpbmUsIHNpZ25hbGVyOwogCXN0cnVjdCByYXBsIGdwdSwgcGtnOwog
Ci0JaWd0X3JlcXVpcmUocGtnX3Bvd2VyX29wZW4oJnBrZykgPT0gMCk7CiAJaWd0X3JlcXVpcmUo
Z3B1X3Bvd2VyX29wZW4oJmdwdSkgPT0gMCk7CisJcGtnX3Bvd2VyX29wZW4oJnBrZyk7CiAKIAlm
b3JfZWFjaF9waHlzaWNhbF9lbmdpbmUoaTkxNSwgc2lnbmFsZXIpIHsKIAkJc3RydWN0IHsKQEAg
LTE2NjUsMTIgKzE2NjUsMTQgQEAgc3RhdGljIHZvaWQgbWVhc3VyZV9zZW1hcGhvcmVfcG93ZXIo
aW50IGk5MTUpCiAJCQkgMWUzICogKHRvdGFsIC0gYmFzZWxpbmUpLAogCQkJIDFlMyAqIHRvdGFs
KTsKIAotCQliYXNlbGluZSA9IHBvd2VyX1coJnBrZywgJnNfc3BpblswXS5wa2csICZzX3NwaW5b
MV0ucGtnKTsKLQkJdG90YWwgPSBwb3dlcl9XKCZwa2csICZzX3NlbWFbMF0ucGtnLCAmc19zZW1h
WzFdLnBrZyk7Ci0JCWlndF9pbmZvKCJwa2c6ICUuMWZtVyArICUuMWZtVyAodG90YWwgJTEuZm1X
KVxuIiwKLQkJCSAxZTMgKiBiYXNlbGluZSwKLQkJCSAxZTMgKiAodG90YWwgLSBiYXNlbGluZSks
Ci0JCQkgMWUzICogdG90YWwpOworCQlpZiAocmFwbF92YWxpZCgmcGtnKSkgeworCQkJYmFzZWxp
bmUgPSBwb3dlcl9XKCZwa2csICZzX3NwaW5bMF0ucGtnLCAmc19zcGluWzFdLnBrZyk7CisJCQl0
b3RhbCA9IHBvd2VyX1coJnBrZywgJnNfc2VtYVswXS5wa2csICZzX3NlbWFbMV0ucGtnKTsKKwkJ
CWlndF9pbmZvKCJwa2c6ICUuMWZtVyArICUuMWZtVyAodG90YWwgJTEuZm1XKVxuIiwKKwkJCQkg
MWUzICogYmFzZWxpbmUsCisJCQkJIDFlMyAqICh0b3RhbCAtIGJhc2VsaW5lKSwKKwkJCQkgMWUz
ICogdG90YWwpOworCQl9CiAJfQogCiAJcmFwbF9jbG9zZSgmZ3B1KTsKLS0gCjIuMjQuMC5yYzAK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
