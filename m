Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5534B113001
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Dec 2019 17:28:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A87F26E92A;
	Wed,  4 Dec 2019 16:28:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0EEB66E926;
 Wed,  4 Dec 2019 16:28:39 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19459403-1500050 
 for multiple; Wed, 04 Dec 2019 16:28:33 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  4 Dec 2019 16:28:34 +0000
Message-Id: <20191204162835.3842813-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t 1/2] Sync i915_drm.h
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
Cc: igt-dev@lists.freedesktop.org,
 Chris Wilson <ickle@braswell.alporthouse.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogQ2hyaXMgV2lsc29uIDxpY2tsZUBicmFzd2VsbC5hbHBvcnRob3VzZS5jb20+CgpTeW5j
IHVwdG8ga2VybmVsIGNvbW1pdCBjYzY2MjEyNmI0MTM0ZTI1ZmNmYjZjYWQ0ODBkZTBmYTk1YTRk
M2Q4CkF1dGhvcjogQWJkaWVsIEphbnVsZ3VlIDxhYmRpZWwuamFudWxndWVAbGludXguaW50ZWwu
Y29tPgpEYXRlOiAgIFdlZCBEZWMgNCAxMjowMDozMiAyMDE5ICswMDAwCgogICAgZHJtL2k5MTU6
IEludHJvZHVjZSBEUk1fSTkxNV9HRU1fTU1BUF9PRkZTRVQKCnRvIGV4cG9zZSBNTUFQX09GRlNF
VF9JT0NUTAoKU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxpY2tsZUBicmFzd2VsbC5hbHBv
cnRob3VzZS5jb20+Ci0tLQogaW5jbHVkZS9kcm0tdWFwaS9pOTE1X2RybS5oIHwgMzIgKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCAzMiBpbnNlcnRpb25z
KCspCgpkaWZmIC0tZ2l0IGEvaW5jbHVkZS9kcm0tdWFwaS9pOTE1X2RybS5oIGIvaW5jbHVkZS9k
cm0tdWFwaS9pOTE1X2RybS5oCmluZGV4IGFiODk5YWJiYy4uYjk0ZTk5MWJlIDEwMDY0NAotLS0g
YS9pbmNsdWRlL2RybS11YXBpL2k5MTVfZHJtLmgKKysrIGIvaW5jbHVkZS9kcm0tdWFwaS9pOTE1
X2RybS5oCkBAIC0zOTUsNiArMzk1LDcgQEAgdHlwZWRlZiBzdHJ1Y3QgX2RybV9pOTE1X3NhcmVh
IHsKICNkZWZpbmUgRFJNX0lPQ1RMX0k5MTVfR0VNX1BXUklURQlEUk1fSU9XIChEUk1fQ09NTUFO
RF9CQVNFICsgRFJNX0k5MTVfR0VNX1BXUklURSwgc3RydWN0IGRybV9pOTE1X2dlbV9wd3JpdGUp
CiAjZGVmaW5lIERSTV9JT0NUTF9JOTE1X0dFTV9NTUFQCQlEUk1fSU9XUihEUk1fQ09NTUFORF9C
QVNFICsgRFJNX0k5MTVfR0VNX01NQVAsIHN0cnVjdCBkcm1faTkxNV9nZW1fbW1hcCkKICNkZWZp
bmUgRFJNX0lPQ1RMX0k5MTVfR0VNX01NQVBfR1RUCURSTV9JT1dSKERSTV9DT01NQU5EX0JBU0Ug
KyBEUk1fSTkxNV9HRU1fTU1BUF9HVFQsIHN0cnVjdCBkcm1faTkxNV9nZW1fbW1hcF9ndHQpCisj
ZGVmaW5lIERSTV9JT0NUTF9JOTE1X0dFTV9NTUFQX09GRlNFVAlEUk1fSU9XUihEUk1fQ09NTUFO
RF9CQVNFICsgRFJNX0k5MTVfR0VNX01NQVBfR1RULCBzdHJ1Y3QgZHJtX2k5MTVfZ2VtX21tYXBf
b2Zmc2V0KQogI2RlZmluZSBEUk1fSU9DVExfSTkxNV9HRU1fU0VUX0RPTUFJTglEUk1fSU9XIChE
Uk1fQ09NTUFORF9CQVNFICsgRFJNX0k5MTVfR0VNX1NFVF9ET01BSU4sIHN0cnVjdCBkcm1faTkx
NV9nZW1fc2V0X2RvbWFpbikKICNkZWZpbmUgRFJNX0lPQ1RMX0k5MTVfR0VNX1NXX0ZJTklTSAlE
Uk1fSU9XIChEUk1fQ09NTUFORF9CQVNFICsgRFJNX0k5MTVfR0VNX1NXX0ZJTklTSCwgc3RydWN0
IGRybV9pOTE1X2dlbV9zd19maW5pc2gpCiAjZGVmaW5lIERSTV9JT0NUTF9JOTE1X0dFTV9TRVRf
VElMSU5HCURSTV9JT1dSIChEUk1fQ09NTUFORF9CQVNFICsgRFJNX0k5MTVfR0VNX1NFVF9USUxJ
TkcsIHN0cnVjdCBkcm1faTkxNV9nZW1fc2V0X3RpbGluZykKQEAgLTc5Myw2ICs3OTQsMzcgQEAg
c3RydWN0IGRybV9pOTE1X2dlbV9tbWFwX2d0dCB7CiAJX191NjQgb2Zmc2V0OwogfTsKIAorc3Ry
dWN0IGRybV9pOTE1X2dlbV9tbWFwX29mZnNldCB7CisJLyoqIEhhbmRsZSBmb3IgdGhlIG9iamVj
dCBiZWluZyBtYXBwZWQuICovCisJX191MzIgaGFuZGxlOworCV9fdTMyIHBhZDsKKwkvKioKKwkg
KiBGYWtlIG9mZnNldCB0byB1c2UgZm9yIHN1YnNlcXVlbnQgbW1hcCBjYWxsCisJICoKKwkgKiBU
aGlzIGlzIGEgZml4ZWQtc2l6ZSB0eXBlIGZvciAzMi82NCBjb21wYXRpYmlsaXR5LgorCSAqLwor
CV9fdTY0IG9mZnNldDsKKworCS8qKgorCSAqIEZsYWdzIGZvciBleHRlbmRlZCBiZWhhdmlvdXIu
CisJICoKKwkgKiBJdCBpcyBtYW5kYXRvcnkgdGhhdCBvbmUgb2YgdGhlIE1NQVBfT0ZGU0VUIHR5
cGVzCisJICogKEdUVCwgV0MsIFdCLCBVQywgZXRjKSBzaG91bGQgYmUgaW5jbHVkZWQuCisJICov
CisJX191NjQgZmxhZ3M7CisjZGVmaW5lIEk5MTVfTU1BUF9PRkZTRVRfR1RUIDAKKyNkZWZpbmUg
STkxNV9NTUFQX09GRlNFVF9XQyAgMQorI2RlZmluZSBJOTE1X01NQVBfT0ZGU0VUX1dCICAyCisj
ZGVmaW5lIEk5MTVfTU1BUF9PRkZTRVRfVUMgIDMKKworCS8qCisJICogWmVyby10ZXJtaW5hdGVk
IGNoYWluIG9mIGV4dGVuc2lvbnMuCisJICoKKwkgKiBObyBjdXJyZW50IGV4dGVuc2lvbnMgZGVm
aW5lZDsgbWJ6LgorCSAqLworCV9fdTY0IGV4dGVuc2lvbnM7Cit9OworCiBzdHJ1Y3QgZHJtX2k5
MTVfZ2VtX3NldF9kb21haW4gewogCS8qKiBIYW5kbGUgZm9yIHRoZSBvYmplY3QgKi8KIAlfX3Uz
MiBoYW5kbGU7Ci0tIAoyLjI0LjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeA==
