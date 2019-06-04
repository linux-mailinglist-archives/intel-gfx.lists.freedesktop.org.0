Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CCAEA347B9
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Jun 2019 15:11:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 321378982E;
	Tue,  4 Jun 2019 13:11:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 78A088982A
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Jun 2019 13:11:50 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Jun 2019 06:11:50 -0700
X-ExtLoop1: 1
Received: from bblokx-mobl.ger.corp.intel.com (HELO delly.ger.corp.intel.com)
 ([10.249.139.199])
 by FMSMGA003.fm.intel.com with ESMTP; 04 Jun 2019 06:11:49 -0700
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  4 Jun 2019 16:11:36 +0300
Message-Id: <20190604131140.12647-4-lionel.g.landwerlin@intel.com>
X-Mailer: git-send-email 2.21.0.392.gf8f6787159e
In-Reply-To: <20190604131140.12647-1-lionel.g.landwerlin@intel.com>
References: <20190604131140.12647-1-lionel.g.landwerlin@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 3/7] drm/i915: introduce a mechanism to
 extend execbuf2
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

V2UncmUgcGxhbm5pbmcgdG8gdXNlIHRoaXMgZm9yIGEgY291cGxlIG9mIG5ldyBmZWF0dXJlIHdo
ZXJlIHdlIG5lZWQKdG8gcHJvdmlkZSBhZGRpdGlvbmFsIHBhcmFtZXRlcnMgdG8gZXhlY2J1Zi4K
ClNpZ25lZC1vZmYtYnk6IExpb25lbCBMYW5kd2VybGluIDxsaW9uZWwuZy5sYW5kd2VybGluQGlu
dGVsLmNvbT4KLS0tCiAuLi4vZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9leGVjYnVmZmVyLmMg
ICAgfCA0OSArKysrKysrKysrKysrKysrKystCiBpbmNsdWRlL3VhcGkvZHJtL2k5MTVfZHJtLmgg
ICAgICAgICAgICAgICAgICAgfCA0NCArKysrKysrKysrKysrKystLQogMiBmaWxlcyBjaGFuZ2Vk
LCA4OSBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9leGVjYnVmZmVyLmMgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9nZW0vaTkxNV9nZW1fZXhlY2J1ZmZlci5jCmluZGV4IGVkNTIyZmRmYmU3Zi4uNDgwZTIw
MDQzZDgwIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fZXhl
Y2J1ZmZlci5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9leGVjYnVm
ZmVyLmMKQEAgLTI2OSw2ICsyNjksMTAgQEAgc3RydWN0IGk5MTVfZXhlY2J1ZmZlciB7CiAJICov
CiAJaW50IGx1dF9zaXplOwogCXN0cnVjdCBobGlzdF9oZWFkICpidWNrZXRzOyAvKiogaHQgZm9y
IHJlbG9jYXRpb24gaGFuZGxlcyAqLworCisJc3RydWN0IHsKKwkJdTY0IGZsYWdzOyAvKiogQXZh
aWxhYmxlIGV4dGVuc2lvbnMgcGFyYW1ldGVycyAqLworCX0gZXh0ZW5zaW9uczsKIH07CiAKICNk
ZWZpbmUgZXhlY19lbnRyeShFQiwgVk1BKSAoJihFQiktPmV4ZWNbKFZNQSktPmV4ZWNfZmxhZ3Mg
LSAoRUIpLT5mbGFnc10pCkBAIC0xOTU4LDcgKzE5NjIsNyBAQCBzdGF0aWMgYm9vbCBpOTE1X2dl
bV9jaGVja19leGVjYnVmZmVyKHN0cnVjdCBkcm1faTkxNV9nZW1fZXhlY2J1ZmZlcjIgKmV4ZWMp
CiAJCXJldHVybiBmYWxzZTsKIAogCS8qIEtlcm5lbCBjbGlwcGluZyB3YXMgYSBEUkkxIG1pc2Zl
YXR1cmUgKi8KLQlpZiAoIShleGVjLT5mbGFncyAmIEk5MTVfRVhFQ19GRU5DRV9BUlJBWSkpIHsK
KwlpZiAoIShleGVjLT5mbGFncyAmIChJOTE1X0VYRUNfRkVOQ0VfQVJSQVkgfCBJOTE1X0VYRUNf
RVhUKSkpIHsKIAkJaWYgKGV4ZWMtPm51bV9jbGlwcmVjdHMgfHwgZXhlYy0+Y2xpcHJlY3RzX3B0
cikKIAkJCXJldHVybiBmYWxzZTsKIAl9CkBAIC0yMzM2LDYgKzIzNDAsNDIgQEAgc2lnbmFsX2Zl
bmNlX2FycmF5KHN0cnVjdCBpOTE1X2V4ZWNidWZmZXIgKmViLAogCX0KIH0KIAorc3RhdGljIGlu
dAorcGFyc2VfZXhlY2J1ZjJfZXh0ZW5zaW9ucyhzdHJ1Y3QgZHJtX2k5MTVfZ2VtX2V4ZWNidWZm
ZXIyICphcmdzLAorCQkJICBzdHJ1Y3QgaTkxNV9leGVjYnVmZmVyICplYikKK3sKKwl1NjQgaXRl
cl9wdHIgPSBhcmdzLT5jbGlwcmVjdHNfcHRyOworCisJaWYgKGFyZ3MtPm51bV9jbGlwcmVjdHMg
IT0gMCkKKwkJcmV0dXJuIC1FSU5WQUw7CisKKwl3aGlsZSAoaXRlcl9wdHIgIT0gMCkgeworCQlz
dHJ1Y3QgZHJtX2k5MTVfZ2VtX2Jhc2VfZXhlY2J1ZmZlcl9leHQgaXRlcjsKKworCQlpZiAoY29w
eV9mcm9tX3VzZXIoJml0ZXIsCisJCQkJICAgdTY0X3RvX3VzZXJfcHRyKGl0ZXJfcHRyKSwgc2l6
ZW9mKGl0ZXIpKSkKKwkJCXJldHVybiAtRUZBVUxUOworCisJCWlmIChpdGVyLnBhZCkKKwkJCXJl
dHVybiAtRUlOVkFMOworCisJCS8qIFNwZWNpZnlpbmcgdGhlIHNhbWUgZXh0ZW5zaW9uIG11bHRp
cGxlIHRpbWVzIGlzIGludmFsaWQuICovCisJCWlmIChlYi0+ZXh0ZW5zaW9ucy5mbGFncyAmIEJJ
VChpdGVyLnR5cGUpKQorCQkJcmV0dXJuIC1FSU5WQUw7CisKKwkJc3dpdGNoIChpdGVyLnR5cGUp
IHsKKwkJZGVmYXVsdDoKKwkJCXJldHVybiAtRUlOVkFMOworCQl9CisKKwkJZWItPmV4dGVuc2lv
bnMuZmxhZ3MgfD0gQklUKGl0ZXIudHlwZSk7CisKKwkJaXRlcl9wdHIgPSBpdGVyLm5leHRfcHRy
OworCX0KKworCXJldHVybiAwOworfQorCiBzdGF0aWMgaW50CiBpOTE1X2dlbV9kb19leGVjYnVm
ZmVyKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsCiAJCSAgICAgICBzdHJ1Y3QgZHJtX2ZpbGUgKmZp
bGUsCkBAIC0yMzgyLDYgKzI0MjIsMTMgQEAgaTkxNV9nZW1fZG9fZXhlY2J1ZmZlcihzdHJ1Y3Qg
ZHJtX2RldmljZSAqZGV2LAogCWlmIChhcmdzLT5mbGFncyAmIEk5MTVfRVhFQ19JU19QSU5ORUQp
CiAJCWViLmJhdGNoX2ZsYWdzIHw9IEk5MTVfRElTUEFUQ0hfUElOTkVEOwogCisJZWIuZXh0ZW5z
aW9ucy5mbGFncyA9IDA7CisJaWYgKGFyZ3MtPmZsYWdzICYgSTkxNV9FWEVDX0VYVCkgeworCQll
cnIgPSBwYXJzZV9leGVjYnVmMl9leHRlbnNpb25zKGFyZ3MsICZlYik7CisJCWlmIChlcnIpCisJ
CQlyZXR1cm4gZXJyOworCX0KKwogCWlmIChhcmdzLT5mbGFncyAmIEk5MTVfRVhFQ19GRU5DRV9J
TikgewogCQlpbl9mZW5jZSA9IHN5bmNfZmlsZV9nZXRfZmVuY2UobG93ZXJfMzJfYml0cyhhcmdz
LT5yc3ZkMikpOwogCQlpZiAoIWluX2ZlbmNlKQpkaWZmIC0tZ2l0IGEvaW5jbHVkZS91YXBpL2Ry
bS9pOTE1X2RybS5oIGIvaW5jbHVkZS91YXBpL2RybS9pOTE1X2RybS5oCmluZGV4IGUyN2E4ZWRh
OTEyMS4uMmVmNWFiMGRhYWU0IDEwMDY0NAotLS0gYS9pbmNsdWRlL3VhcGkvZHJtL2k5MTVfZHJt
LmgKKysrIGIvaW5jbHVkZS91YXBpL2RybS9pOTE1X2RybS5oCkBAIC0xMDEzLDYgKzEwMTMsMjkg
QEAgc3RydWN0IGRybV9pOTE1X2dlbV9leGVjX2ZlbmNlIHsKIAlfX3UzMiBmbGFnczsKIH07CiAK
K2VudW0gZHJtX2k5MTVfZ2VtX2Jhc2VfZXhlY2J1ZmZlcl90eXBlIHsKKwlEUk1fSTkxNV9HRU1f
QkFTRV9FWEVDQlVGRkVSX1RZUEVfTUFYIC8qIG5vbi1BQkkgKi8KK307CisKK3N0cnVjdCBkcm1f
aTkxNV9nZW1fYmFzZV9leGVjYnVmZmVyX2V4dCB7CisJLyoqCisJICogVHlwZSBvZiB0aGUgZXh0
ZW5zaW9uIG5vZGUgYXMgbGltaXRlZCBpbiBlbnVtCisJICogZHJtX2k5MTVfZ2VtX2Jhc2VfZXhl
Y2J1ZmZlcl90eXBlLgorCSAqLworCV9fdTMyIHR5cGU7CisKKwkvKioKKwkgKiBVbnVzZWQgZm9y
IG5vdy4gTXVzdCBiZSBjbGVhcmVkIHRvIHplcm8uCisJICovCisJX191MzIgcGFkOworCisJLyoq
CisJICogUG9pbnRlciB0byBhbm90aGVyIHN0cnVjdCBkcm1faTkxNV9nZW1fYmFzZV9leGVjYnVm
ZmVyX2V4dCBvciBOVUxMCisJICogdG8gdGVybWluYXRlIHRoZSBjaGFpbi4KKwkgKi8KKwlfX3U2
NCBuZXh0X3B0cjsKK307CisKIHN0cnVjdCBkcm1faTkxNV9nZW1fZXhlY2J1ZmZlcjIgewogCS8q
KgogCSAqIExpc3Qgb2YgZ2VtX2V4ZWNfb2JqZWN0MiBzdHJ1Y3RzCkBAIC0xMDI5LDggKzEwNTIs
MTQgQEAgc3RydWN0IGRybV9pOTE1X2dlbV9leGVjYnVmZmVyMiB7CiAJX191MzIgbnVtX2NsaXBy
ZWN0czsKIAkvKioKIAkgKiBUaGlzIGlzIGEgc3RydWN0IGRybV9jbGlwX3JlY3QgKmNsaXByZWN0
cyBpZiBJOTE1X0VYRUNfRkVOQ0VfQVJSQVkKLQkgKiBpcyBub3Qgc2V0LiAgSWYgSTkxNV9FWEVD
X0ZFTkNFX0FSUkFZIGlzIHNldCwgdGhlbiB0aGlzIGlzIGEKLQkgKiBzdHJ1Y3QgZHJtX2k5MTVf
Z2VtX2V4ZWNfZmVuY2UgKmZlbmNlcy4KKwkgKiAmIEk5MTVfRVhFQ19FWFQgYXJlIG5vdCBzZXQu
CisJICoKKwkgKiBJZiBJOTE1X0VYRUNfRkVOQ0VfQVJSQVkgaXMgc2V0LCB0aGVuIHRoaXMgaXMg
YSBwb2ludGVyIHRvIGFuIGFycmF5CisJICogb2Ygc3RydWN0IGRybV9pOTE1X2dlbV9leGVjX2Zl
bmNlIGFuZCBudW1fY2xpcHJlY3RzIGlzIHRoZSBsZW5ndGgKKwkgKiBvZiB0aGUgYXJyYXkuCisJ
ICoKKwkgKiBJZiBJOTE1X0VYRUNfRVhUIGlzIHNldCwgdGhlbiB0aGlzIGlzIGEgcG9pbnRlciB0
byBhIHNpbmdsZSBzdHJ1Y3QKKwkgKiBkcm1faTkxNV9nZW1fYmFzZV9leGVjYnVmZmVyX2V4dCBh
bmQgbnVtX2NsaXByZWN0cyBpcyAwLgogCSAqLwogCV9fdTY0IGNsaXByZWN0c19wdHI7CiAjZGVm
aW5lIEk5MTVfRVhFQ19SSU5HX01BU0sgICAgICAgICAgICAgICgweDNmKQpAQCAtMTE0OCw3ICsx
MTc3LDE2IEBAIHN0cnVjdCBkcm1faTkxNV9nZW1fZXhlY2J1ZmZlcjIgewogICovCiAjZGVmaW5l
IEk5MTVfRVhFQ19GRU5DRV9TVUJNSVQJCSgxIDw8IDIwKQogCi0jZGVmaW5lIF9fSTkxNV9FWEVD
X1VOS05PV05fRkxBR1MgKC0oSTkxNV9FWEVDX0ZFTkNFX1NVQk1JVCA8PCAxKSkKKy8qCisgKiBT
ZXR0aW5nIEk5MTVfRVhFQ19FWFQgaW1wbGllcyB0aGF0IGRybV9pOTE1X2dlbV9leGVjYnVmZmVy
Mi5jbGlwcmVjdHNfcHRyCisgKiBpcyB0cmVhdGVkIGFzIGEgcG9pbnRlciB0byBhbiBsaW5rZWQg
bGlzdCBvZgorICogZHJtX2k5MTVfZ2VtX2Jhc2VfZXhlY2J1ZmZlcl9leHQuIEVhY2ggZHJtX2k5
MTVfZ2VtX2Jhc2VfZXhlY2J1ZmZlcl9leHQKKyAqIG5vZGUgaXMgdGhlIGJhc2Ugb2YgYSBsYXJn
ZXIgc3RydWN0dXJlLiBUaGUgbGlzdCBvZiBzdXBwb3J0ZWQgc3RydWN0dXJlcworICogYXJlIGxp
c3RlZCBpbiB0aGUgZHJtX2k5MTVfZ2VtX2Jhc2VfZXhlY2J1ZmZlcl90eXBlIGVudW0uCisgKi8K
KyNkZWZpbmUgSTkxNV9FWEVDX0VYVAkJKDEgPDwgMjEpCisKKyNkZWZpbmUgX19JOTE1X0VYRUNf
VU5LTk9XTl9GTEFHUyAoLShJOTE1X0VYRUNfRVhUPDwxKSkKIAogI2RlZmluZSBJOTE1X0VYRUNf
Q09OVEVYVF9JRF9NQVNLCSgweGZmZmZmZmZmKQogI2RlZmluZSBpOTE1X2V4ZWNidWZmZXIyX3Nl
dF9jb250ZXh0X2lkKGViMiwgY29udGV4dCkgXAotLSAKMi4yMS4wLjM5Mi5nZjhmNjc4NzE1OWUK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
