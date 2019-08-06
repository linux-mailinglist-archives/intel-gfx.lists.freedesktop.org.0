Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 90ABC82E16
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Aug 2019 10:49:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E59896E334;
	Tue,  6 Aug 2019 08:49:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 409AE6E330;
 Tue,  6 Aug 2019 08:49:46 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17901204-1500050 
 for multiple; Tue, 06 Aug 2019 09:49:39 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  6 Aug 2019 09:49:39 +0100
Message-Id: <20190806084939.20203-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0.rc1
In-Reply-To: <20190806081052.11564-1-chris@chris-wilson.co.uk>
References: <20190806081052.11564-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] i915/gem_persistent_relocs: Don't call
 DROP_IDLE in the middle of submitting
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

VG8gYWN0dWFsbHkgRFJPUF9JRExFIG1lYW5zIHRoYXQgd2UgaGF2ZSB0byB3YWl0IGZvciBvbmdv
aW5nIHN1Ym1pc3Npb24sCmFuZCBhbnkgbmV3IGNvbmN1cnJlbnRseSBzdWJtaXR0ZWQsIGkuZS4g
aXQgc2hvdWxkIG9ubHkgYmUgY2FsbGVkIGR1cmluZwpzaW5nbGUtdGhyZWFkZWQgc3VibWlzc2lv
biB0byBlbnN1cmUgdGhlIEdQVSBpcyBpZGxlIGJlZm9yZSB0aGUgbmV3CmFjdGlvbi4KCnYyOiBB
bHNvIGluY2x1ZGUgU0hSSU5LIGZvciB0aHJhc2gtYWxsLXRoZS10aGluZ3MsIGFuZCBmaW5kIGEg
ZHVwZSBpbgpnZW1fcmVsb2NfdnNfZ3B1LgoKU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxj
aHJpc0BjaHJpcy13aWxzb24uY28udWs+Ci0tLQogdGVzdHMvaTkxNS9nZW1fcGVyc2lzdGVudF9y
ZWxvY3MuYyB8IDkgKysrKysrLS0tCiB0ZXN0cy9pOTE1L2dlbV9yZWxvY192c19ncHUuYyAgICAg
IHwgOSArKysrKystLS0KIDIgZmlsZXMgY2hhbmdlZCwgMTIgaW5zZXJ0aW9ucygrKSwgNiBkZWxl
dGlvbnMoLSkKCmRpZmYgLS1naXQgYS90ZXN0cy9pOTE1L2dlbV9wZXJzaXN0ZW50X3JlbG9jcy5j
IGIvdGVzdHMvaTkxNS9nZW1fcGVyc2lzdGVudF9yZWxvY3MuYwppbmRleCA0NTJmZTY4NmUuLmRm
ZjRlOWE3NiAxMDA2NDQKLS0tIGEvdGVzdHMvaTkxNS9nZW1fcGVyc2lzdGVudF9yZWxvY3MuYwor
KysgYi90ZXN0cy9pOTE1L2dlbV9wZXJzaXN0ZW50X3JlbG9jcy5jCkBAIC0yODEsMTAgKzI4MSwx
MyBAQCBzdGF0aWMgdm9pZCBkb19mb3JrZWRfdGVzdChpbnQgZmQsIHVuc2lnbmVkIGZsYWdzKQog
CXN0cnVjdCBpZ3RfaGVscGVyX3Byb2Nlc3MgdGhyYXNoZXIgPSB7fTsKIAogCWlmIChmbGFncyAm
IChUSFJBU0ggfCBUSFJBU0hfSU5BQ1RJVkUpKSB7Ci0JCXVpbnQ2NF90IHZhbCA9IChmbGFncyAm
IFRIUkFTSF9JTkFDVElWRSkgPwotCQkJCShEUk9QX1JFVElSRSB8IERST1BfQk9VTkQgfCBEUk9Q
X1VOQk9VTkQpIDogRFJPUF9BTEw7Ci0KIAkJaWd0X2ZvcmtfaGVscGVyKCZ0aHJhc2hlcikgewor
CQkJdWludDY0X3QgdmFsOworCisJCQl2YWwgPSBEUk9QX1JFVElSRSB8IERST1BfQk9VTkQgfCBE
Uk9QX1VOQk9VTkQ7CisJCQlpZiAoIShmbGFncyAmIFRIUkFTSF9JTkFDVElWRSkpCisJCQkJdmFs
IHw9IERST1BfQUNUSVZFIHwgRFJPUF9TSFJJTktfQUxMOworCiAJCQl3aGlsZSAoMSkgewogCQkJ
CXVzbGVlcCgxMDAwKTsKIAkJCQlpZ3RfZHJvcF9jYWNoZXNfc2V0KGZkLCB2YWwpOwpkaWZmIC0t
Z2l0IGEvdGVzdHMvaTkxNS9nZW1fcmVsb2NfdnNfZ3B1LmMgYi90ZXN0cy9pOTE1L2dlbV9yZWxv
Y192c19ncHUuYwppbmRleCBkNDIxZTQzNDAuLjMyODczMGE5YiAxMDA2NDQKLS0tIGEvdGVzdHMv
aTkxNS9nZW1fcmVsb2NfdnNfZ3B1LmMKKysrIGIvdGVzdHMvaTkxNS9nZW1fcmVsb2NfdnNfZ3B1
LmMKQEAgLTI1OCwxMCArMjU4LDEzIEBAIHN0YXRpYyB2b2lkIGRvX2ZvcmtlZF90ZXN0KGludCBm
ZCwgdW5zaWduZWQgZmxhZ3MpCiAJCWlndF9yZXF1aXJlX2hhbmdfcmluZyhmZCwgSTkxNV9FWEVD
X0JMVCk7CiAKIAlpZiAoZmxhZ3MgJiAoVEhSQVNIIHwgVEhSQVNIX0lOQUNUSVZFKSkgewotCQl1
aW50NjRfdCB2YWwgPSAoZmxhZ3MgJiBUSFJBU0hfSU5BQ1RJVkUpID8KLQkJCQkoRFJPUF9SRVRJ
UkUgfCBEUk9QX0JPVU5EIHwgRFJPUF9VTkJPVU5EKSA6IERST1BfQUxMOwotCiAJCWlndF9mb3Jr
X2hlbHBlcigmdGhyYXNoZXIpIHsKKwkJCXVpbnQ2NF90IHZhbDsKKworCQkJdmFsID0gRFJPUF9S
RVRJUkUgfCBEUk9QX0JPVU5EIHwgRFJPUF9VTkJPVU5EOworCQkJaWYgKCEoZmxhZ3MgJiBUSFJB
U0hfSU5BQ1RJVkUpKQorCQkJCXZhbCB8PSBEUk9QX0FDVElWRSB8IERST1BfU0hSSU5LX0FMTDsK
KwogCQkJd2hpbGUgKDEpIHsKIAkJCQl1c2xlZXAoMTAwMCk7CiAJCQkJaWd0X2Ryb3BfY2FjaGVz
X3NldChmZCwgdmFsKTsKLS0gCjIuMjMuMC5yYzEKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeA==
