Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6281535E10
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Jun 2019 15:39:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6AE438994D;
	Wed,  5 Jun 2019 13:39:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AD8438994D
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Jun 2019 13:39:06 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Jun 2019 06:39:06 -0700
X-ExtLoop1: 1
Received: from mkopansk-mobl1.ger.corp.intel.com (HELO
 delly.ger.corp.intel.com) ([10.249.139.46])
 by fmsmga008.fm.intel.com with ESMTP; 05 Jun 2019 06:39:05 -0700
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  5 Jun 2019 16:38:47 +0300
Message-Id: <20190605133852.4493-4-lionel.g.landwerlin@intel.com>
X-Mailer: git-send-email 2.21.0.392.gf8f6787159e
In-Reply-To: <20190605133852.4493-1-lionel.g.landwerlin@intel.com>
References: <20190605133852.4493-1-lionel.g.landwerlin@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4 3/7] drm/i915: introduce a mechanism to
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
ICAgfCAzMCArKysrKysrKysrKysrKysrKystCiBpbmNsdWRlL3VhcGkvZHJtL2k5MTVfZHJtLmgg
ICAgICAgICAgICAgICAgICAgfCAyNSArKysrKysrKysrKysrKy0tCiAyIGZpbGVzIGNoYW5nZWQs
IDUxIGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2V4ZWNidWZmZXIuYyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2dlbS9pOTE1X2dlbV9leGVjYnVmZmVyLmMKaW5kZXggZWQ1MjJmZGZiZTdmLi5hOTYxZmFi
NzBmYjIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9leGVj
YnVmZmVyLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2V4ZWNidWZm
ZXIuYwpAQCAtMjAsNiArMjAsNyBAQAogI2luY2x1ZGUgImk5MTVfZ2VtX2NsZmx1c2guaCIKICNp
bmNsdWRlICJpOTE1X2dlbV9jb250ZXh0LmgiCiAjaW5jbHVkZSAiaTkxNV90cmFjZS5oIgorI2lu
Y2x1ZGUgImk5MTVfdXNlcl9leHRlbnNpb25zLmgiCiAjaW5jbHVkZSAiaW50ZWxfZHJ2LmgiCiAj
aW5jbHVkZSAiaW50ZWxfZnJvbnRidWZmZXIuaCIKIApAQCAtMjY5LDYgKzI3MCwxMCBAQCBzdHJ1
Y3QgaTkxNV9leGVjYnVmZmVyIHsKIAkgKi8KIAlpbnQgbHV0X3NpemU7CiAJc3RydWN0IGhsaXN0
X2hlYWQgKmJ1Y2tldHM7IC8qKiBodCBmb3IgcmVsb2NhdGlvbiBoYW5kbGVzICovCisKKwlzdHJ1
Y3QgeworCQl1NjQgZmxhZ3M7IC8qKiBBdmFpbGFibGUgZXh0ZW5zaW9ucyBwYXJhbWV0ZXJzICov
CisJfSBleHRlbnNpb25zOwogfTsKIAogI2RlZmluZSBleGVjX2VudHJ5KEVCLCBWTUEpICgmKEVC
KS0+ZXhlY1soVk1BKS0+ZXhlY19mbGFncyAtIChFQiktPmZsYWdzXSkKQEAgLTE5NTgsNyArMTk2
Myw3IEBAIHN0YXRpYyBib29sIGk5MTVfZ2VtX2NoZWNrX2V4ZWNidWZmZXIoc3RydWN0IGRybV9p
OTE1X2dlbV9leGVjYnVmZmVyMiAqZXhlYykKIAkJcmV0dXJuIGZhbHNlOwogCiAJLyogS2VybmVs
IGNsaXBwaW5nIHdhcyBhIERSSTEgbWlzZmVhdHVyZSAqLwotCWlmICghKGV4ZWMtPmZsYWdzICYg
STkxNV9FWEVDX0ZFTkNFX0FSUkFZKSkgeworCWlmICghKGV4ZWMtPmZsYWdzICYgKEk5MTVfRVhF
Q19GRU5DRV9BUlJBWSB8IEk5MTVfRVhFQ19FWFQpKSkgewogCQlpZiAoZXhlYy0+bnVtX2NsaXBy
ZWN0cyB8fCBleGVjLT5jbGlwcmVjdHNfcHRyKQogCQkJcmV0dXJuIGZhbHNlOwogCX0KQEAgLTIz
MzYsNiArMjM0MSwyMiBAQCBzaWduYWxfZmVuY2VfYXJyYXkoc3RydWN0IGk5MTVfZXhlY2J1ZmZl
ciAqZWIsCiAJfQogfQogCitzdGF0aWMgY29uc3QgaTkxNV91c2VyX2V4dGVuc2lvbl9mbiBleGVj
YnVmX2V4dGVuc2lvbnNbXSA9IHsKK307CisKK3N0YXRpYyBpbnQKK3BhcnNlX2V4ZWNidWYyX2V4
dGVuc2lvbnMoc3RydWN0IGRybV9pOTE1X2dlbV9leGVjYnVmZmVyMiAqYXJncywKKwkJCSAgc3Ry
dWN0IGk5MTVfZXhlY2J1ZmZlciAqZWIpCit7CisJaWYgKGFyZ3MtPm51bV9jbGlwcmVjdHMgIT0g
MCkKKwkJcmV0dXJuIC1FSU5WQUw7CisKKwlyZXR1cm4gaTkxNV91c2VyX2V4dGVuc2lvbnModTY0
X3RvX3VzZXJfcHRyKGFyZ3MtPmNsaXByZWN0c19wdHIpLAorCQkJCSAgICBleGVjYnVmX2V4dGVu
c2lvbnMsCisJCQkJICAgIEFSUkFZX1NJWkUoZXhlY2J1Zl9leHRlbnNpb25zKSwKKwkJCQkgICAg
ZWIpOworfQorCiBzdGF0aWMgaW50CiBpOTE1X2dlbV9kb19leGVjYnVmZmVyKHN0cnVjdCBkcm1f
ZGV2aWNlICpkZXYsCiAJCSAgICAgICBzdHJ1Y3QgZHJtX2ZpbGUgKmZpbGUsCkBAIC0yMzgyLDYg
KzI0MDMsMTMgQEAgaTkxNV9nZW1fZG9fZXhlY2J1ZmZlcihzdHJ1Y3QgZHJtX2RldmljZSAqZGV2
LAogCWlmIChhcmdzLT5mbGFncyAmIEk5MTVfRVhFQ19JU19QSU5ORUQpCiAJCWViLmJhdGNoX2Zs
YWdzIHw9IEk5MTVfRElTUEFUQ0hfUElOTkVEOwogCisJZWIuZXh0ZW5zaW9ucy5mbGFncyA9IDA7
CisJaWYgKGFyZ3MtPmZsYWdzICYgSTkxNV9FWEVDX0VYVCkgeworCQllcnIgPSBwYXJzZV9leGVj
YnVmMl9leHRlbnNpb25zKGFyZ3MsICZlYik7CisJCWlmIChlcnIpCisJCQlyZXR1cm4gZXJyOwor
CX0KKwogCWlmIChhcmdzLT5mbGFncyAmIEk5MTVfRVhFQ19GRU5DRV9JTikgewogCQlpbl9mZW5j
ZSA9IHN5bmNfZmlsZV9nZXRfZmVuY2UobG93ZXJfMzJfYml0cyhhcmdzLT5yc3ZkMikpOwogCQlp
ZiAoIWluX2ZlbmNlKQpkaWZmIC0tZ2l0IGEvaW5jbHVkZS91YXBpL2RybS9pOTE1X2RybS5oIGIv
aW5jbHVkZS91YXBpL2RybS9pOTE1X2RybS5oCmluZGV4IGUyN2E4ZWRhOTEyMS4uZWZhMTk1ZDY5
OTRlIDEwMDY0NAotLS0gYS9pbmNsdWRlL3VhcGkvZHJtL2k5MTVfZHJtLmgKKysrIGIvaW5jbHVk
ZS91YXBpL2RybS9pOTE1X2RybS5oCkBAIC0xMDEzLDYgKzEwMTMsMTAgQEAgc3RydWN0IGRybV9p
OTE1X2dlbV9leGVjX2ZlbmNlIHsKIAlfX3UzMiBmbGFnczsKIH07CiAKK2VudW0gZHJtX2k5MTVf
Z2VtX2V4ZWNidWZmZXJfZXh0IHsKKwlEUk1fSTkxNV9HRU1fRVhFQ0JVRkZFUl9FWFRfTUFYIC8q
IG5vbi1BQkkgKi8KK307CisKIHN0cnVjdCBkcm1faTkxNV9nZW1fZXhlY2J1ZmZlcjIgewogCS8q
KgogCSAqIExpc3Qgb2YgZ2VtX2V4ZWNfb2JqZWN0MiBzdHJ1Y3RzCkBAIC0xMDI5LDggKzEwMzMs
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
MTU4LDE2IEBAIHN0cnVjdCBkcm1faTkxNV9nZW1fZXhlY2J1ZmZlcjIgewogICovCiAjZGVmaW5l
IEk5MTVfRVhFQ19GRU5DRV9TVUJNSVQJCSgxIDw8IDIwKQogCi0jZGVmaW5lIF9fSTkxNV9FWEVD
X1VOS05PV05fRkxBR1MgKC0oSTkxNV9FWEVDX0ZFTkNFX1NVQk1JVCA8PCAxKSkKKy8qCisgKiBT
ZXR0aW5nIEk5MTVfRVhFQ19FWFQgaW1wbGllcyB0aGF0IGRybV9pOTE1X2dlbV9leGVjYnVmZmVy
Mi5jbGlwcmVjdHNfcHRyCisgKiBpcyB0cmVhdGVkIGFzIGEgcG9pbnRlciB0byBhbiBsaW5rZWQg
bGlzdCBvZiBpOTE1X3VzZXJfZXh0ZW5zaW9uLiBFYWNoCisgKiBpOTE1X3VzZXJfZXh0ZW5zaW9u
IG5vZGUgaXMgdGhlIGJhc2Ugb2YgYSBsYXJnZXIgc3RydWN0dXJlLiBUaGUgbGlzdCBvZgorICog
c3VwcG9ydGVkIHN0cnVjdHVyZXMgYXJlIGxpc3RlZCBpbiB0aGUgZHJtX2k5MTVfZ2VtX2V4ZWNi
dWZmZXJfZXh0CisgKiBlbnVtLgorICovCisjZGVmaW5lIEk5MTVfRVhFQ19FWFQJCSgxIDw8IDIx
KQorCisjZGVmaW5lIF9fSTkxNV9FWEVDX1VOS05PV05fRkxBR1MgKC0oSTkxNV9FWEVDX0VYVDw8
MSkpCiAKICNkZWZpbmUgSTkxNV9FWEVDX0NPTlRFWFRfSURfTUFTSwkoMHhmZmZmZmZmZikKICNk
ZWZpbmUgaTkxNV9leGVjYnVmZmVyMl9zZXRfY29udGV4dF9pZChlYjIsIGNvbnRleHQpIFwKLS0g
CjIuMjEuMC4zOTIuZ2Y4ZjY3ODcxNTllCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZng=
