Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 416D8E4AE3
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Oct 2019 14:17:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD7D36E9CE;
	Fri, 25 Oct 2019 12:17:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 557DD6E9CE
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Oct 2019 12:17:25 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Oct 2019 05:17:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,228,1569308400"; d="scan'208";a="198008702"
Received: from apeterat-mobl.ger.corp.intel.com (HELO
 delly.ger.corp.intel.com) ([10.252.42.107])
 by fmsmga007.fm.intel.com with ESMTP; 25 Oct 2019 05:17:22 -0700
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 25 Oct 2019 15:17:18 +0300
Message-Id: <20191025121718.18806-1-lionel.g.landwerlin@intel.com>
X-Mailer: git-send-email 2.24.0.rc0.303.g954a862665
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: capture aux page table error register
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

VEdMIGludHJvZHVjZWQgYSBmZWF0dXJlIGluIHdoaWNoIHdlIG1hcCB0aGUgbWFpbiBzdXJmYWNl
IHRvIHRoZQphdXhpbGxpYXJ5IHN1cmZhY2UuIElmIHdlIHNjcmV3IHVwIHRoZSBwYWdlIHRhYmxl
cywgdGhlIEhXIGhhcyBhCnJlZ2lzdGVyIHRvIHRlbGwgdXMgd2hpY2ggZW5naW5lIGVuY291bnRl
cnMgYSBmYXVsdCBpbiB0aGUgcGFnZSB0YWJsZQp3YWxrLgoKU2lnbmVkLW9mZi1ieTogTGlvbmVs
IExhbmR3ZXJsaW4gPGxpb25lbC5nLmxhbmR3ZXJsaW5AaW50ZWwuY29tPgotLS0KIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfZ3B1X2Vycm9yLmMgfCA4ICsrKysrKysrCiBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X2dwdV9lcnJvci5oIHwgMSArCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X3JlZy5oICAgICAgIHwgMiArKwogMyBmaWxlcyBjaGFuZ2VkLCAxMSBpbnNlcnRpb25zKCspCgpk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9ncHVfZXJyb3IuYyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfZ3B1X2Vycm9yLmMKaW5kZXggNWNmNGVlZDVhZGQ4Li4wYzRk
OGE4OTVmZWIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ3B1X2Vycm9y
LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9ncHVfZXJyb3IuYwpAQCAtNzQxLDYg
Kzc0MSw5IEBAIHN0YXRpYyB2b2lkIF9fZXJyX3ByaW50X3RvX3NnbChzdHJ1Y3QgZHJtX2k5MTVf
ZXJyb3Jfc3RhdGVfYnVmICptLAogCWlmIChJU19HRU5fUkFOR0UobS0+aTkxNSwgOCwgMTEpKQog
CQllcnJfcHJpbnRmKG0sICJHVFRfQ0FDSEVfRU46IDB4JTA4eFxuIiwgZXJyb3ItPmd0dF9jYWNo
ZSk7CiAKKwlpZiAoSVNfVElHRVJMQUtFKG0tPmk5MTUpKQorCQllcnJfcHJpbnRmKG0sICJBVVhf
RVJSX0RCRzogMHglMDh4XG4iLCBlcnJvci0+YXV4X2Vycl9kYmcpOworCiAJZm9yIChlZSA9IGVy
cm9yLT5lbmdpbmU7IGVlOyBlZSA9IGVlLT5uZXh0KQogCQllcnJvcl9wcmludF9lbmdpbmUobSwg
ZWUsIGVycm9yLT5lcG9jaCk7CiAKQEAgLTE1NjMsNiArMTU2NiwxMSBAQCBzdGF0aWMgdm9pZCBj
YXB0dXJlX3JlZ19zdGF0ZShzdHJ1Y3QgaTkxNV9ncHVfc3RhdGUgKmVycm9yKQogCWlmIChJU19H
RU5fUkFOR0UoaTkxNSwgOCwgMTEpKQogCQllcnJvci0+Z3R0X2NhY2hlID0gaW50ZWxfdW5jb3Jl
X3JlYWQodW5jb3JlLCBIU1dfR1RUX0NBQ0hFX0VOKTsKIAorCWlmIChJU19USUdFUkxBS0UoaTkx
NSkpIHsKKwkJZXJyb3ItPmF1eF9lcnJfZGJnID0gaW50ZWxfdW5jb3JlX3JlYWQodW5jb3JlLAor
CQkJCQkJICAgICAgIEdFTjEyX0FVWF9FUlJfREJHKTsKKwl9CisKIAkvKiA0OiBFdmVyeXRoaW5n
IGVsc2UgKi8KIAlpZiAoSU5URUxfR0VOKGk5MTUpID49IDExKSB7CiAJCWVycm9yLT5pZXIgPSBp
bnRlbF91bmNvcmVfcmVhZCh1bmNvcmUsIEdFTjhfREVfTUlTQ19JRVIpOwpkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9ncHVfZXJyb3IuaCBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfZ3B1X2Vycm9yLmgKaW5kZXggN2YxY2QwYjFmZWY3Li5lMGMzOGIwMWVkMTggMTAw
NjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ3B1X2Vycm9yLmgKKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9ncHVfZXJyb3IuaApAQCAtNzUsNiArNzUsNyBAQCBzdHJ1
Y3QgaTkxNV9ncHVfc3RhdGUgewogCXUzMiBnYWJfY3RsOwogCXUzMiBnZnhfbW9kZTsKIAl1MzIg
Z3R0X2NhY2hlOworCXUzMiBhdXhfZXJyX2RiZzsgLyogdGlnZXJsYWtlICovCiAKIAl1MzIgbmZl
bmNlOwogCXU2NCBmZW5jZVtJOTE1X01BWF9OVU1fRkVOQ0VTXTsKZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3Jl
Zy5oCmluZGV4IDg1NWRiODg4NTE2Yy4uNjJiMGI1OWJmMDJlIDEwMDY0NAotLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
cmVnLmgKQEAgLTI2MDIsNiArMjYwMiw4IEBAIHN0YXRpYyBpbmxpbmUgYm9vbCBpOTE1X21taW9f
cmVnX3ZhbGlkKGk5MTVfcmVnX3QgcmVnKQogI2RlZmluZSAgIEZBVUxUX1ZBX0hJR0hfQklUUwkJ
KDB4ZiA8PCAwKQogI2RlZmluZSAgIEZBVUxUX0dUVF9TRUwJCQkoMSA8PCA0KQogCisjZGVmaW5l
IEdFTjEyX0FVWF9FUlJfREJHCQlfTU1JTygweDQzZjQpCisKICNkZWZpbmUgRlBHQV9EQkcJCV9N
TUlPKDB4NDIzMDApCiAjZGVmaW5lICAgRlBHQV9EQkdfUk1fTk9DTEFJTQkoMSA8PCAzMSkKIAot
LSAKMi4yNC4wLnJjMC4zMDMuZzk1NGE4NjI2NjUKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeA==
