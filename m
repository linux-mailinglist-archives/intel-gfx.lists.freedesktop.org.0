Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B292CDDA7
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Oct 2019 10:49:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 18AAE6E4EC;
	Mon,  7 Oct 2019 08:49:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 425436E4F4
 for <intel-gfx@lists.freedesktop.org>; Mon,  7 Oct 2019 08:49:27 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Oct 2019 01:49:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,267,1566889200"; d="scan'208";a="199467427"
Received: from vanderss-mobl1.ger.corp.intel.com (HELO
 skylake-nuc.ger.corp.intel.com) ([10.249.254.190])
 by FMSMGA003.fm.intel.com with ESMTP; 07 Oct 2019 01:49:25 -0700
From: Abdiel Janulgue <abdiel.janulgue@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  7 Oct 2019 11:48:43 +0300
Message-Id: <20191007084845.1554-3-abdiel.janulgue@linux.intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191007084845.1554-1-abdiel.janulgue@linux.intel.com>
References: <20190826122102.32400-1-abdiel.janulgue@linux.intel.com>
 <20191007084845.1554-1-abdiel.janulgue@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 3/5] drm/i915: Introduce
 DRM_I915_GEM_MMAP_OFFSET
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
Cc: Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhpcyBpcyByZWFsbHkganVzdCBhbiBhbGlhcyBvZiBtbWFwX2d0dC4gQWRkIGEgbmV3IENQVSBt
bWFwCmltcGxlbWVudGF0aW9uIHRoYXQgYWxsb3dzIG11bHRpcGxlIGZhdWx0IGhhbmRsZXJzIHRo
YXQgZGVwZW5kcyBvbgp0aGUgb2JqZWN0J3MgYmFja2luZyBwYWdlcy4KCk5vdGUgdGhhdCB3ZSBt
dWx0aXBsZXggbW1hcF9ndHQgYW5kIG1tYXBfb2Zmc2V0IHRocm91Z2ggdGhlIHNhbWUgaW9jdGws
CmFuZCB1c2UgdGhlIHplcm8gZXh0ZW5kaW5nIGJlaGF2aW91ciBvZiBkcm0gdG8gZGlmZmVyZW50
aWF0ZSBiZXR3ZWVuCnRoZW0sIHdoZW4gd2UgaW5zcGVjdCB0aGUgZmxhZ3MuCgpTaWduZWQtb2Zm
LWJ5OiBBYmRpZWwgSmFudWxndWUgPGFiZGllbC5qYW51bGd1ZUBsaW51eC5pbnRlbC5jb20+ClNp
Z25lZC1vZmYtYnk6IE1hdHRoZXcgQXVsZCA8bWF0dGhldy5hdWxkQGludGVsLmNvbT4KQ2M6IEpv
b25hcyBMYWh0aW5lbiA8am9vbmFzLmxhaHRpbmVuQGxpbnV4LmludGVsLmNvbT4KLS0tCiBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fbW1hbi5jICAgICAgfCAzNiArKysrKysrKysr
KysrKysrKy0tCiAuLi4vZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9vYmplY3RfdHlwZXMuaCAg
fCAgMyArKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYyAgICAgICAgICAgICAgIHwg
IDIgKy0KIGluY2x1ZGUvdWFwaS9kcm0vaTkxNV9kcm0uaCAgICAgICAgICAgICAgICAgICB8IDI4
ICsrKysrKysrKysrKysrKwogNCBmaWxlcyBjaGFuZ2VkLCA2NiBpbnNlcnRpb25zKCspLCAzIGRl
bGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dl
bV9tbWFuLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fbW1hbi5jCmluZGV4
IGFmNDM3N2E4MDUwMi4uYWUxZTY4NzQwOGRhIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9nZW0vaTkxNV9nZW1fbW1hbi5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9p
OTE1X2dlbV9tbWFuLmMKQEAgLTE0NCw2ICsxNDQsOSBAQCBzdGF0aWMgdW5zaWduZWQgaW50IHRp
bGVfcm93X3BhZ2VzKGNvbnN0IHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmopCiAgKiAz
IC0gUmVtb3ZlIGltcGxpY2l0IHNldC1kb21haW4oR1RUKSBhbmQgc3luY2hyb25pc2F0aW9uIG9u
IGluaXRpYWwKICAqICAgICBwYWdlZmF1bHQ7IHN3YXBpbiByZW1haW5zIHRyYW5zcGFyZW50Lgog
ICoKKyAqIDQgLSBTdXBwb3J0IG11bHRpcGxlIGZhdWx0IGhhbmRsZXJzIHBlciBvYmplY3QgZGVw
ZW5kaW5nIG9uIG9iamVjdCdzCisgKiAgICAgYmFja2luZyBzdG9yYWdlIChhLmsuYS4gTU1BUF9P
RkZTRVQpLgorICoKICAqIFJlc3RyaWN0aW9uczoKICAqCiAgKiAgKiBzbm9vcGFibGUgb2JqZWN0
cyBjYW5ub3QgYmUgYWNjZXNzZWQgdmlhIHRoZSBHVFQuIEl0IGNhbiBjYXVzZSBtYWNoaW5lCkBA
IC0xNzEsNyArMTc0LDcgQEAgc3RhdGljIHVuc2lnbmVkIGludCB0aWxlX3Jvd19wYWdlcyhjb25z
dCBzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqKQogICovCiBpbnQgaTkxNV9nZW1fbW1h
cF9ndHRfdmVyc2lvbih2b2lkKQogewotCXJldHVybiAzOworCXJldHVybiA0OwogfQogCiBzdGF0
aWMgaW5saW5lIHN0cnVjdCBpOTE1X2dndHRfdmlldwpAQCAtNTQ1LDYgKzU0OCwyNyBAQCBfX2Fz
c2lnbl9nZW1fb2JqZWN0X21tYXBfZGF0YShzdHJ1Y3QgZHJtX2ZpbGUgKmZpbGUsCiAJcmV0dXJu
IHJldDsKIH0KIAorc3RhdGljIGludCBnZW1fbW1hcF9vZmZzZXQoc3RydWN0IGRybV9kZXZpY2Ug
KmRldiwgdm9pZCAqZGF0YSwKKwkJCSAgIHN0cnVjdCBkcm1fZmlsZSAqZmlsZSkKK3sKKwlzdHJ1
Y3QgZHJtX2k5MTVfZ2VtX21tYXBfb2Zmc2V0ICphcmdzID0gZGF0YTsKKwllbnVtIGk5MTVfbW1h
cF90eXBlIHR5cGU7CisKKwlpZiAoKGFyZ3MtPmZsYWdzICYgKEk5MTVfTU1BUF9PRkZTRVRfV0Mg
fCBJOTE1X01NQVBfT0ZGU0VUX1dCKSkgJiYKKwkgICAgIWJvb3RfY3B1X2hhcyhYODZfRkVBVFVS
RV9QQVQpKQorCQlyZXR1cm4gLUVOT0RFVjsKKworCWlmIChhcmdzLT5mbGFncyAmIEk5MTVfTU1B
UF9PRkZTRVRfV0MpCisJCXR5cGUgPSBJOTE1X01NQVBfVFlQRV9PRkZTRVRfV0M7CisJZWxzZSBp
ZiAoYXJncy0+ZmxhZ3MgJiBJOTE1X01NQVBfT0ZGU0VUX1dCKQorCQl0eXBlID0gSTkxNV9NTUFQ
X1RZUEVfT0ZGU0VUX1dCOworCWVsc2UgaWYgKGFyZ3MtPmZsYWdzICYgSTkxNV9NTUFQX09GRlNF
VF9VQykKKwkJdHlwZSA9IEk5MTVfTU1BUF9UWVBFX09GRlNFVF9VQzsKKworCXJldHVybiBfX2Fz
c2lnbl9nZW1fb2JqZWN0X21tYXBfZGF0YShmaWxlLCBhcmdzLT5oYW5kbGUsIHR5cGUsCisJCQkJ
CSAgICAgJmFyZ3MtPm9mZnNldCk7Cit9CisKIC8qKgogICogaTkxNV9nZW1fbW1hcF9ndHRfaW9j
dGwgLSBwcmVwYXJlIGFuIG9iamVjdCBmb3IgR1RUIG1tYXAnaW5nCiAgKiBAZGV2OiBEUk0gZGV2
aWNlCkBAIC01NjQsNyArNTg4LDE1IEBAIGludAogaTkxNV9nZW1fbW1hcF9ndHRfaW9jdGwoc3Ry
dWN0IGRybV9kZXZpY2UgKmRldiwgdm9pZCAqZGF0YSwKIAkJCXN0cnVjdCBkcm1fZmlsZSAqZmls
ZSkKIHsKLQlzdHJ1Y3QgZHJtX2k5MTVfZ2VtX21tYXBfZ3R0ICphcmdzID0gZGF0YTsKKwlzdHJ1
Y3QgZHJtX2k5MTVfZ2VtX21tYXBfb2Zmc2V0ICphcmdzID0gZGF0YTsKKwlzdHJ1Y3QgZHJtX2k5
MTVfcHJpdmF0ZSAqaTkxNSA9IHRvX2k5MTUoZGV2KTsKKworCWlmIChhcmdzLT5mbGFncyAmIEk5
MTVfTU1BUF9PRkZTRVRfRkxBR1MpCisJCXJldHVybiBnZW1fbW1hcF9vZmZzZXQoZGV2LCBkYXRh
LCBmaWxlKTsKKworCWlmICghSEFTX01BUFBBQkxFX0FQRVJUVVJFKGk5MTUpKQorCQkvKiBObyBh
cGVydHVyZSwgY2Fubm90IG1tYXAgdmlhIGxlZ2FjeSBHVFQgKi8KKwkJcmV0dXJuIC1FTk9ERVY7
CiAKIAlyZXR1cm4gX19hc3NpZ25fZ2VtX29iamVjdF9tbWFwX2RhdGEoZmlsZSwgYXJncy0+aGFu
ZGxlLAogCQkJCQkgICAgIEk5MTVfTU1BUF9UWVBFX0dUVCwKZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9vYmplY3RfdHlwZXMuaCBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2dlbS9pOTE1X2dlbV9vYmplY3RfdHlwZXMuaAppbmRleCA3NDU0NGVjYTVlMmMuLjE4
ZTg5MWY0ZTlkMyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2Vt
X29iamVjdF90eXBlcy5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9v
YmplY3RfdHlwZXMuaApAQCAtNjQsNiArNjQsOSBAQCBzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVj
dF9vcHMgewogCiBlbnVtIGk5MTVfbW1hcF90eXBlIHsKIAlJOTE1X01NQVBfVFlQRV9HVFQgPSAw
LAorCUk5MTVfTU1BUF9UWVBFX09GRlNFVF9XQywKKwlJOTE1X01NQVBfVFlQRV9PRkZTRVRfV0Is
CisJSTkxNV9NTUFQX1RZUEVfT0ZGU0VUX1VDLAogfTsKIAogc3RydWN0IGk5MTVfbW1hcF9vZmZz
ZXQgewpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMKaW5kZXggY2M3MGFiYTZhYzI2Li45MTgyZGE1NzE4
MmIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMKKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYwpAQCAtMjY5Niw3ICsyNjk2LDcgQEAgc3RhdGlj
IGNvbnN0IHN0cnVjdCBkcm1faW9jdGxfZGVzYyBpOTE1X2lvY3Rsc1tdID0gewogCURSTV9JT0NU
TF9ERUZfRFJWKEk5MTVfR0VNX1BSRUFELCBpOTE1X2dlbV9wcmVhZF9pb2N0bCwgRFJNX1JFTkRF
Ul9BTExPVyksCiAJRFJNX0lPQ1RMX0RFRl9EUlYoSTkxNV9HRU1fUFdSSVRFLCBpOTE1X2dlbV9w
d3JpdGVfaW9jdGwsIERSTV9SRU5ERVJfQUxMT1cpLAogCURSTV9JT0NUTF9ERUZfRFJWKEk5MTVf
R0VNX01NQVAsIGk5MTVfZ2VtX21tYXBfaW9jdGwsIERSTV9SRU5ERVJfQUxMT1cpLAotCURSTV9J
T0NUTF9ERUZfRFJWKEk5MTVfR0VNX01NQVBfR1RULCBpOTE1X2dlbV9tbWFwX2d0dF9pb2N0bCwg
RFJNX1JFTkRFUl9BTExPVyksCisJRFJNX0lPQ1RMX0RFRl9EUlYoSTkxNV9HRU1fTU1BUF9PRkZT
RVQsIGk5MTVfZ2VtX21tYXBfZ3R0X2lvY3RsLCBEUk1fUkVOREVSX0FMTE9XKSwKIAlEUk1fSU9D
VExfREVGX0RSVihJOTE1X0dFTV9TRVRfRE9NQUlOLCBpOTE1X2dlbV9zZXRfZG9tYWluX2lvY3Rs
LCBEUk1fUkVOREVSX0FMTE9XKSwKIAlEUk1fSU9DVExfREVGX0RSVihJOTE1X0dFTV9TV19GSU5J
U0gsIGk5MTVfZ2VtX3N3X2ZpbmlzaF9pb2N0bCwgRFJNX1JFTkRFUl9BTExPVyksCiAJRFJNX0lP
Q1RMX0RFRl9EUlYoSTkxNV9HRU1fU0VUX1RJTElORywgaTkxNV9nZW1fc2V0X3RpbGluZ19pb2N0
bCwgRFJNX1JFTkRFUl9BTExPVyksCmRpZmYgLS1naXQgYS9pbmNsdWRlL3VhcGkvZHJtL2k5MTVf
ZHJtLmggYi9pbmNsdWRlL3VhcGkvZHJtL2k5MTVfZHJtLmgKaW5kZXggMzBjNTQyMTQ0MDE2Li5i
Yzg1NjU2YWI3ZmQgMTAwNjQ0Ci0tLSBhL2luY2x1ZGUvdWFwaS9kcm0vaTkxNV9kcm0uaAorKysg
Yi9pbmNsdWRlL3VhcGkvZHJtL2k5MTVfZHJtLmgKQEAgLTM1OSw2ICszNTksNyBAQCB0eXBlZGVm
IHN0cnVjdCBfZHJtX2k5MTVfc2FyZWEgewogI2RlZmluZSBEUk1fSTkxNV9RVUVSWQkJCTB4MzkK
ICNkZWZpbmUgRFJNX0k5MTVfR0VNX1ZNX0NSRUFURQkJMHgzYQogI2RlZmluZSBEUk1fSTkxNV9H
RU1fVk1fREVTVFJPWQkJMHgzYgorI2RlZmluZSBEUk1fSTkxNV9HRU1fTU1BUF9PRkZTRVQJRFJN
X0k5MTVfR0VNX01NQVBfR1RUCiAvKiBNdXN0IGJlIGtlcHQgY29tcGFjdCAtLSBubyBob2xlcyAq
LwogCiAjZGVmaW5lIERSTV9JT0NUTF9JOTE1X0lOSVQJCURSTV9JT1coIERSTV9DT01NQU5EX0JB
U0UgKyBEUk1fSTkxNV9JTklULCBkcm1faTkxNV9pbml0X3QpCkBAIC00MjEsNiArNDIyLDcgQEAg
dHlwZWRlZiBzdHJ1Y3QgX2RybV9pOTE1X3NhcmVhIHsKICNkZWZpbmUgRFJNX0lPQ1RMX0k5MTVf
UVVFUlkJCQlEUk1fSU9XUihEUk1fQ09NTUFORF9CQVNFICsgRFJNX0k5MTVfUVVFUlksIHN0cnVj
dCBkcm1faTkxNV9xdWVyeSkKICNkZWZpbmUgRFJNX0lPQ1RMX0k5MTVfR0VNX1ZNX0NSRUFURQlE
Uk1fSU9XUihEUk1fQ09NTUFORF9CQVNFICsgRFJNX0k5MTVfR0VNX1ZNX0NSRUFURSwgc3RydWN0
IGRybV9pOTE1X2dlbV92bV9jb250cm9sKQogI2RlZmluZSBEUk1fSU9DVExfSTkxNV9HRU1fVk1f
REVTVFJPWQlEUk1fSU9XIChEUk1fQ09NTUFORF9CQVNFICsgRFJNX0k5MTVfR0VNX1ZNX0RFU1RS
T1ksIHN0cnVjdCBkcm1faTkxNV9nZW1fdm1fY29udHJvbCkKKyNkZWZpbmUgRFJNX0lPQ1RMX0k5
MTVfR0VNX01NQVBfT0ZGU0VUCQlEUk1fSU9XUihEUk1fQ09NTUFORF9CQVNFICsgRFJNX0k5MTVf
R0VNX01NQVBfT0ZGU0VULCBzdHJ1Y3QgZHJtX2k5MTVfZ2VtX21tYXBfb2Zmc2V0KQogCiAvKiBB
bGxvdyBkcml2ZXJzIHRvIHN1Ym1pdCBiYXRjaGJ1ZmZlcnMgZGlyZWN0bHkgdG8gaGFyZHdhcmUs
IHJlbHlpbmcKICAqIG9uIHRoZSBzZWN1cml0eSBtZWNoYW5pc21zIHByb3ZpZGVkIGJ5IGhhcmR3
YXJlLgpAQCAtNjExLDYgKzYxMyw3IEBAIHR5cGVkZWYgc3RydWN0IGRybV9pOTE1X2lycV93YWl0
IHsKICAqIFNlZSBJOTE1X0VYRUNfRkVOQ0VfT1VUIGFuZCBJOTE1X0VYRUNfRkVOQ0VfU1VCTUlU
LgogICovCiAjZGVmaW5lIEk5MTVfUEFSQU1fSEFTX0VYRUNfU1VCTUlUX0ZFTkNFIDUzCisKIC8q
IE11c3QgYmUga2VwdCBjb21wYWN0IC0tIG5vIGhvbGVzIGFuZCB3ZWxsIGRvY3VtZW50ZWQgKi8K
IAogdHlwZWRlZiBzdHJ1Y3QgZHJtX2k5MTVfZ2V0cGFyYW0gewpAQCAtNzg2LDYgKzc4OSwzMSBA
QCBzdHJ1Y3QgZHJtX2k5MTVfZ2VtX21tYXBfZ3R0IHsKIAlfX3U2NCBvZmZzZXQ7CiB9OwogCitz
dHJ1Y3QgZHJtX2k5MTVfZ2VtX21tYXBfb2Zmc2V0IHsKKwkvKiogSGFuZGxlIGZvciB0aGUgb2Jq
ZWN0IGJlaW5nIG1hcHBlZC4gKi8KKwlfX3UzMiBoYW5kbGU7CisJX191MzIgcGFkOworCS8qKgor
CSAqIEZha2Ugb2Zmc2V0IHRvIHVzZSBmb3Igc3Vic2VxdWVudCBtbWFwIGNhbGwKKwkgKgorCSAq
IFRoaXMgaXMgYSBmaXhlZC1zaXplIHR5cGUgZm9yIDMyLzY0IGNvbXBhdGliaWxpdHkuCisJICov
CisJX191NjQgb2Zmc2V0OworCisJLyoqCisJICogRmxhZ3MgZm9yIGV4dGVuZGVkIGJlaGF2aW91
ci4KKwkgKgorCSAqIEl0IGlzIG1hbmRhdG9yeSB0aGF0IGVpdGhlciBvbmUgb2YgdGhlIF9XQy9f
V0IgZmxhZ3MKKwkgKiBzaG91bGQgYmUgcGFzc2VkIGhlcmUuCisJICovCisJX191NjQgZmxhZ3M7
CisjZGVmaW5lIEk5MTVfTU1BUF9PRkZTRVRfV0MgKDEgPDwgMCkKKyNkZWZpbmUgSTkxNV9NTUFQ
X09GRlNFVF9XQiAoMSA8PCAxKQorI2RlZmluZSBJOTE1X01NQVBfT0ZGU0VUX1VDICgxIDw8IDIp
CisjZGVmaW5lIEk5MTVfTU1BUF9PRkZTRVRfRkxBR1MgXAorCShJOTE1X01NQVBfT0ZGU0VUX1dD
IHwgSTkxNV9NTUFQX09GRlNFVF9XQiB8IEk5MTVfTU1BUF9PRkZTRVRfVUMpCit9OworCiBzdHJ1
Y3QgZHJtX2k5MTVfZ2VtX3NldF9kb21haW4gewogCS8qKiBIYW5kbGUgZm9yIHRoZSBvYmplY3Qg
Ki8KIAlfX3UzMiBoYW5kbGU7Ci0tIAoyLjIzLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeA==
