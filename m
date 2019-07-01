Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 866765B8A4
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Jul 2019 12:05:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B006889D8E;
	Mon,  1 Jul 2019 10:05:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B57DD89D60
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Jul 2019 10:05:23 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17082332-1500050 
 for multiple; Mon, 01 Jul 2019 11:05:06 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  1 Jul 2019 11:04:54 +0100
Message-Id: <20190701100502.15639-4-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190701100502.15639-1-chris@chris-wilson.co.uk>
References: <20190701100502.15639-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 04/12] drm/i915/execlists: Refactor CSB state
 machine
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

RGFuaWVsZSBwb2ludGVkIG91dCB0aGF0IHRoZSBDU0Igc3RhdHVzIGluZm9ybWF0aW9uIHdpbGwg
Y2hhbmdlIHdpdGgKVGlnZXJsYWtlIGFuZCBzdWdnZXN0ZWQgdGhhdCB3ZSBjb3VsZCByZWFycmFu
Z2Ugb3VyIHN0YXRlIG1hY2hpbmUgdG8KaGlkZSB0aGUgZGlmZmVyZW5jZXMgaW4gZ2VuZXJhdGlv
bi4gZ2NjIGFsc28gcHJlZmVycyB0aGUgZXhwbGljaXQgc3RhdGUKbWFjaGluZSwgc28gbWFrZSBp
dCBzbzoKCnByb2Nlc3NfY3NiICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgMTk4MCAg
ICAxOTY3ICAgICAtMTMKClN1Z2dlc3RlZC1ieTogRGFuaWVsZSBDZXJhb2xvIFNwdXJpbyA8ZGFu
aWVsZS5jZXJhb2xvc3B1cmlvQGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29u
IDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+CkNjOiBEYW5pZWxlIENlcmFvbG8gU3B1cmlvIDxk
YW5pZWxlLmNlcmFvbG9zcHVyaW9AaW50ZWwuY29tPgpDYzogVHZydGtvIFVyc3VsaW4gPHR2cnRr
by51cnN1bGluQGxpbnV4LmludGVsLmNvbT4KQ2M6IE1pa2EgS3VvcHBhbGEgPG1pa2Eua3VvcHBh
bGFAbGludXguaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xy
Yy5jIHwgNjQgKysrKysrKysrKysrKysrKysrKystLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCA0
NCBpbnNlcnRpb25zKCspLCAyMCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVs
X2xyYy5jCmluZGV4IDQ3MWUxMzRkZTE4Ni4uOTUzYjM5MzhhODVmIDEwMDY0NAotLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC9pbnRlbF9scmMuYwpAQCAtMTI3OSw2ICsxMjc5LDMwIEBAIHJlc2V0X2luX3Byb2dyZXNz
KGNvbnN0IHN0cnVjdCBpbnRlbF9lbmdpbmVfZXhlY2xpc3RzICpleGVjbGlzdHMpCiAJcmV0dXJu
IHVubGlrZWx5KCFfX3Rhc2tsZXRfaXNfZW5hYmxlZCgmZXhlY2xpc3RzLT50YXNrbGV0KSk7CiB9
CiAKK2VudW0gY3NiX3N0ZXAgeworCUNTQl9OT1AsCisJQ1NCX1BST01PVEUsCisJQ1NCX1BSRUVN
UFQsCisJQ1NCX0NPTVBMRVRFLAorfTsKKworc3RhdGljIGlubGluZSBlbnVtIGNzYl9zdGVwCitj
c2JfcGFyc2UoY29uc3Qgc3RydWN0IGludGVsX2VuZ2luZV9leGVjbGlzdHMgKmV4ZWNsaXN0cywg
Y29uc3QgdTMyICpjc2IpCit7CisJdW5zaWduZWQgaW50IHN0YXR1cyA9ICpjc2I7CisKKwlpZiAo
c3RhdHVzICYgR0VOOF9DVFhfU1RBVFVTX0lETEVfQUNUSVZFKQorCQlyZXR1cm4gQ1NCX1BST01P
VEU7CisKKwlpZiAoc3RhdHVzICYgR0VOOF9DVFhfU1RBVFVTX1BSRUVNUFRFRCkKKwkJcmV0dXJu
IENTQl9QUkVFTVBUOworCisJaWYgKCpleGVjbGlzdHMtPmFjdGl2ZSkKKwkJcmV0dXJuIENTQl9D
T01QTEVURTsKKworCXJldHVybiBDU0JfTk9QOworfQorCiBzdGF0aWMgdm9pZCBwcm9jZXNzX2Nz
YihzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUpCiB7CiAJc3RydWN0IGludGVsX2VuZ2lu
ZV9leGVjbGlzdHMgKiBjb25zdCBleGVjbGlzdHMgPSAmZW5naW5lLT5leGVjbGlzdHM7CkBAIC0x
MzE2LDggKzEzNDAsNiBAQCBzdGF0aWMgdm9pZCBwcm9jZXNzX2NzYihzdHJ1Y3QgaW50ZWxfZW5n
aW5lX2NzICplbmdpbmUpCiAJcm1iKCk7CiAKIAlkbyB7Ci0JCXVuc2lnbmVkIGludCBzdGF0dXM7
Ci0KIAkJaWYgKCsraGVhZCA9PSBudW1fZW50cmllcykKIAkJCWhlYWQgPSAwOwogCkBAIC0xMzQz
LDEwICsxMzY1LDE2IEBAIHN0YXRpYyB2b2lkIHByb2Nlc3NfY3NiKHN0cnVjdCBpbnRlbF9lbmdp
bmVfY3MgKmVuZ2luZSkKIAkJCSAgZW5naW5lLT5uYW1lLCBoZWFkLAogCQkJICBidWZbMiAqIGhl
YWQgKyAwXSwgYnVmWzIgKiBoZWFkICsgMV0pOwogCi0JCXN0YXR1cyA9IGJ1ZlsyICogaGVhZF07
Ci0JCWlmIChzdGF0dXMgJiBHRU44X0NUWF9TVEFUVVNfSURMRV9BQ1RJVkUpIHsKKwkJc3dpdGNo
IChjc2JfcGFyc2UoZXhlY2xpc3RzLCBidWYgKyAyICogaGVhZCkpIHsKKwkJY2FzZSBDU0JfUFJF
RU1QVDogLyogY2FuY2VsIG9sZCBpbmZsaWdodCwgcHJlcGFyZSBmb3Igc3dpdGNoICovCisJCQl0
cmFjZV9wb3J0cyhleGVjbGlzdHMsICJwcmVlbXB0ZWQiLCBleGVjbGlzdHMtPmFjdGl2ZSk7CisK
KwkJCXdoaWxlICgqZXhlY2xpc3RzLT5hY3RpdmUpCisJCQkJZXhlY2xpc3RzX3NjaGVkdWxlX291
dCgqZXhlY2xpc3RzLT5hY3RpdmUrKyk7CisKKwkJCS8qIGZhbGx0aHJvdWdoICovCisJCWNhc2Ug
Q1NCX1BST01PVEU6IC8qIHN3aXRjaCBwZW5kaW5nIHRvIGluZmxpZ2h0ICovCiAJCQlHRU1fQlVH
X09OKCpleGVjbGlzdHMtPmFjdGl2ZSk7Ci1wcm9tb3RlOgogCQkJR0VNX0JVR19PTighYXNzZXJ0
X3BlbmRpbmdfdmFsaWQoZXhlY2xpc3RzLCAicHJvbW90ZSIpKTsKIAkJCWV4ZWNsaXN0cy0+YWN0
aXZlID0KIAkJCQltZW1jcHkoZXhlY2xpc3RzLT5pbmZsaWdodCwKQEAgLTEzNTUsMjUgKzEzODMs
MTcgQEAgc3RhdGljIHZvaWQgcHJvY2Vzc19jc2Ioc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5n
aW5lKQogCQkJCSAgICAgICBzaXplb2YoKmV4ZWNsaXN0cy0+cGVuZGluZykpOwogCQkJZXhlY2xp
c3RzLT5wZW5kaW5nWzBdID0gTlVMTDsKIAorCQkJdHJhY2VfcG9ydHMoZXhlY2xpc3RzLCAicHJv
bW90ZWQiLCBleGVjbGlzdHMtPmFjdGl2ZSk7CisKIAkJCWlmIChlbmFibGVfdGltZXNsaWNlKGVu
Z2luZSkpCiAJCQkJbW9kX3RpbWVyKCZleGVjbGlzdHMtPnRpbWVyLCBqaWZmaWVzICsgMSk7CiAK
IAkJCWlmICghaW5qZWN0X3ByZWVtcHRfaGFuZyhleGVjbGlzdHMpKQogCQkJCXJpbmdfc2V0X3Bh
dXNlZChlbmdpbmUsIDApOwotCQl9IGVsc2UgaWYgKHN0YXR1cyAmIEdFTjhfQ1RYX1NUQVRVU19Q
UkVFTVBURUQpIHsKLQkJCXN0cnVjdCBpOTE1X3JlcXVlc3QgKiBjb25zdCAqcG9ydCA9IGV4ZWNs
aXN0cy0+YWN0aXZlOwotCi0JCQl0cmFjZV9wb3J0cyhleGVjbGlzdHMsICJwcmVlbXB0ZWQiLCBl
eGVjbGlzdHMtPmFjdGl2ZSk7Ci0KLQkJCXdoaWxlICgqcG9ydCkKLQkJCQlleGVjbGlzdHNfc2No
ZWR1bGVfb3V0KCpwb3J0KyspOwotCi0JCQlnb3RvIHByb21vdGU7Ci0JCX0gZWxzZSBpZiAoKmV4
ZWNsaXN0cy0+YWN0aXZlKSB7Ci0JCQlzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpycSA9ICpleGVjbGlz
dHMtPmFjdGl2ZSsrOworCQkJYnJlYWs7CiAKLQkJCXRyYWNlX3BvcnRzKGV4ZWNsaXN0cywgImNv
bXBsZXRlZCIsCi0JCQkJICAgIGV4ZWNsaXN0cy0+YWN0aXZlIC0gMSk7CisJCWNhc2UgQ1NCX0NP
TVBMRVRFOiAvKiBwb3J0MCBjb21wbGV0ZWQsIGFkdmFuY2VkIHRvIHBvcnQxICovCisJCQl0cmFj
ZV9wb3J0cyhleGVjbGlzdHMsICJjb21wbGV0ZWQiLCBleGVjbGlzdHMtPmFjdGl2ZSk7CiAKIAkJ
CS8qCiAJCQkgKiBXZSByZWx5IG9uIHRoZSBoYXJkd2FyZSBiZWluZyBzdHJvbmdseQpAQCAtMTM4
MSwxMSArMTQwMSwxNSBAQCBzdGF0aWMgdm9pZCBwcm9jZXNzX2NzYihzdHJ1Y3QgaW50ZWxfZW5n
aW5lX2NzICplbmdpbmUpCiAJCQkgKiBjb2hlcmVudCAodmlzaWJsZSBmcm9tIHRoZSBDUFUpIGJl
Zm9yZSB0aGUKIAkJCSAqIHVzZXIgaW50ZXJydXB0IGFuZCBDU0IgaXMgcHJvY2Vzc2VkLgogCQkJ
ICovCi0JCQlHRU1fQlVHX09OKCFpOTE1X3JlcXVlc3RfY29tcGxldGVkKHJxKSk7Ci0JCQlleGVj
bGlzdHNfc2NoZWR1bGVfb3V0KHJxKTsKKwkJCUdFTV9CVUdfT04oIWk5MTVfcmVxdWVzdF9jb21w
bGV0ZWQoKmV4ZWNsaXN0cy0+YWN0aXZlKSk7CisJCQlleGVjbGlzdHNfc2NoZWR1bGVfb3V0KCpl
eGVjbGlzdHMtPmFjdGl2ZSsrKTsKIAogCQkJR0VNX0JVR19PTihleGVjbGlzdHMtPmFjdGl2ZSAt
IGV4ZWNsaXN0cy0+aW5mbGlnaHQgPgogCQkJCSAgIGV4ZWNsaXN0c19udW1fcG9ydHMoZXhlY2xp
c3RzKSk7CisJCQlicmVhazsKKworCQljYXNlIENTQl9OT1A6CisJCQlicmVhazsKIAkJfQogCX0g
d2hpbGUgKGhlYWQgIT0gdGFpbCk7CiAKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
