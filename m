Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FDF9391642
	for <lists+intel-gfx@lfdr.de>; Wed, 26 May 2021 13:33:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8ECD26ECA7;
	Wed, 26 May 2021 11:33:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AEF196ECAC;
 Wed, 26 May 2021 11:33:27 +0000 (UTC)
IronPort-SDR: uVN0/D1+1BgUYRbtf4OcZLWtfEvCaNlsLnmxatgBK+SxgfdItjoqIv5rfJk4F7wBj2J0SC51Hh
 0QuF2eb27QuQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9995"; a="223627290"
X-IronPort-AV: E=Sophos;i="5.82,331,1613462400"; d="scan'208";a="223627290"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2021 04:33:27 -0700
IronPort-SDR: c41UAX4xL/3nu545ZSztT4mWZTqW8+XMrewrbJOmDO5t+hESgm6cbXPi7l4hUQCQqlceyJbtlN
 BCX6TISXQR4g==
X-IronPort-AV: E=Sophos;i="5.82,331,1613462400"; d="scan'208";a="633457899"
Received: from pegilssx-mobl.ger.corp.intel.com (HELO thellst-mobl1.intel.com)
 ([10.249.254.205])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2021 04:33:25 -0700
From: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Wed, 26 May 2021 13:32:51 +0200
Message-Id: <20210526113259.1661914-8-thomas.hellstrom@linux.intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210526113259.1661914-1-thomas.hellstrom@linux.intel.com>
References: <20210526113259.1661914-1-thomas.hellstrom@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4 07/15] drm,
 drm/i915: Move the memcpy_from_wc functionality to core drm
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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
Cc: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 Matthew Auld <matthew.auld@intel.com>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

TWVtY3B5IGZyb20gd2Mgd2lsbCBiZSB1c2VkIGFzIHdlbGwgYnkgVFRNIG1lbWNweS4KTW92ZSBp
dCB0byBjb3JlIGRybSwgYW5kIG1ha2UgdGhlIGludGVyZmFjZSBkbyB0aGUgcmlnaHQgdGhpbmcK
ZXZlbiBvbiAhWDg2LgoKQ2M6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1k
LmNvbT4KQ2M6IERhbmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJAZmZ3bGwuY2g+CkNjOiBEYXZl
IEFpcmxpZSA8YWlybGllZEBnbWFpbC5jb20+ClNpZ25lZC1vZmYtYnk6IFRob21hcyBIZWxsc3Ry
w7ZtIDx0aG9tYXMuaGVsbHN0cm9tQGxpbnV4LmludGVsLmNvbT4KUmV2aWV3ZWQtYnk6IE1hdHRo
ZXcgQXVsZCA8bWF0dGhldy5hdWxkQGludGVsLmNvbT4KLS0tCnY0OgotIEZpeCAhWDg2IHBhdGgg
KFJlcG9ydGVkIGJ5IE1hdHRoZXcgQXVsZCkKLS0tCiBkcml2ZXJzL2dwdS9kcm0vTWFrZWZpbGUg
ICAgICAgICAgICAgICAgICAgICAgfCAgMiArLQogZHJpdmVycy9ncHUvZHJtL2RybV9kcnYuYyAg
ICAgICAgICAgICAgICAgICAgIHwgIDIgKwogLi4uL2RybS97aTkxNS9pOTE1X21lbWNweS5jID0+
IGRybV9tZW1jcHkuY30gIHwgNjMgKysrKysrKysrKysrLS0tLS0KIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L01ha2VmaWxlICAgICAgICAgICAgICAgICB8ICAxIC0KIC4uLi9ncHUvZHJtL2k5MTUvZ2Vt
L2k5MTVfZ2VtX2V4ZWNidWZmZXIuYyAgICB8ICA0ICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9n
ZW0vaTkxNV9nZW1fb2JqZWN0LmMgICAgfCAgNSArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qv
c2VsZnRlc3RfcmVzZXQuYyAgICAgIHwgIDcgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3Vj
L2ludGVsX2d1Y19sb2cuYyAgICB8IDExICstLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9j
bWRfcGFyc2VyLmMgICAgICAgIHwgIDQgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2
LmMgICAgICAgICAgICAgICB8ICAyIC0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ3B1X2Vy
cm9yLmMgICAgICAgICB8ICA4ICstLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9tZW1jcHku
aCAgICAgICAgICAgIHwgMzQgLS0tLS0tLS0tLQogLi4uL2RybS9pOTE1L3NlbGZ0ZXN0cy9pbnRl
bF9tZW1vcnlfcmVnaW9uLmMgIHwgIDcgKy0KIGluY2x1ZGUvZHJtL2RybV9tZW1jcHkuaCAgICAg
ICAgICAgICAgICAgICAgICB8IDY4ICsrKysrKysrKysrKysrKysrKysKIDE0IGZpbGVzIGNoYW5n
ZWQsIDE0MiBpbnNlcnRpb25zKCspLCA3NiBkZWxldGlvbnMoLSkKIHJlbmFtZSBkcml2ZXJzL2dw
dS9kcm0ve2k5MTUvaTkxNV9tZW1jcHkuYyA9PiBkcm1fbWVtY3B5LmN9ICg3MCUpCiBkZWxldGUg
bW9kZSAxMDA2NDQgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9tZW1jcHkuaAogY3JlYXRlIG1v
ZGUgMTAwNjQ0IGluY2x1ZGUvZHJtL2RybV9tZW1jcHkuaAoKZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9NYWtlZmlsZSBiL2RyaXZlcnMvZ3B1L2RybS9NYWtlZmlsZQppbmRleCBhOTFjYzc2
ODQ5MDQuLmYzYWI4NTg2YzNkNyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL01ha2VmaWxl
CisrKyBiL2RyaXZlcnMvZ3B1L2RybS9NYWtlZmlsZQpAQCAtMTgsNyArMTgsNyBAQCBkcm0teSAg
ICAgICA6PQlkcm1fYXBlcnR1cmUubyBkcm1fYXV0aC5vIGRybV9jYWNoZS5vIFwKIAkJZHJtX2R1
bWJfYnVmZmVycy5vIGRybV9tb2RlX2NvbmZpZy5vIGRybV92YmxhbmsubyBcCiAJCWRybV9zeW5j
b2JqLm8gZHJtX2xlYXNlLm8gZHJtX3dyaXRlYmFjay5vIGRybV9jbGllbnQubyBcCiAJCWRybV9j
bGllbnRfbW9kZXNldC5vIGRybV9hdG9taWNfdWFwaS5vIGRybV9oZGNwLm8gXAotCQlkcm1fbWFu
YWdlZC5vIGRybV92Ymxhbmtfd29yay5vCisJCWRybV9tYW5hZ2VkLm8gZHJtX3ZibGFua193b3Jr
Lm8gZHJtX21lbWNweS5vIFwKIAogZHJtLSQoQ09ORklHX0RSTV9MRUdBQ1kpICs9IGRybV9hZ3Bz
dXBwb3J0Lm8gZHJtX2J1ZnMubyBkcm1fY29udGV4dC5vIGRybV9kbWEubyBcCiAJCQkgICAgZHJt
X2xlZ2FjeV9taXNjLm8gZHJtX2xvY2subyBkcm1fbWVtb3J5Lm8gZHJtX3NjYXR0ZXIubyBcCmRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vZHJtX2Rydi5jIGIvZHJpdmVycy9ncHUvZHJtL2Ry
bV9kcnYuYwppbmRleCAzZDhkNjhhOThiOTUuLjM1MWNjMjkwMGNmMSAxMDA2NDQKLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2RybV9kcnYuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vZHJtX2Rydi5jCkBA
IC00MCw2ICs0MCw3IEBACiAjaW5jbHVkZSA8ZHJtL2RybV9kcnYuaD4KICNpbmNsdWRlIDxkcm0v
ZHJtX2ZpbGUuaD4KICNpbmNsdWRlIDxkcm0vZHJtX21hbmFnZWQuaD4KKyNpbmNsdWRlIDxkcm0v
ZHJtX21lbWNweS5oPgogI2luY2x1ZGUgPGRybS9kcm1fbW9kZV9vYmplY3QuaD4KICNpbmNsdWRl
IDxkcm0vZHJtX3ByaW50Lmg+CiAKQEAgLTEwNDEsNiArMTA0Miw3IEBAIHN0YXRpYyBpbnQgX19p
bml0IGRybV9jb3JlX2luaXQodm9pZCkKIAogCWRybV9jb25uZWN0b3JfaWRhX2luaXQoKTsKIAlp
ZHJfaW5pdCgmZHJtX21pbm9yc19pZHIpOworCWRybV9tZW1jcHlfaW5pdF9lYXJseSgpOwogCiAJ
cmV0ID0gZHJtX3N5c2ZzX2luaXQoKTsKIAlpZiAocmV0IDwgMCkgewpkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9tZW1jcHkuYyBiL2RyaXZlcnMvZ3B1L2RybS9kcm1fbWVt
Y3B5LmMKc2ltaWxhcml0eSBpbmRleCA3MCUKcmVuYW1lIGZyb20gZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9tZW1jcHkuYwpyZW5hbWUgdG8gZHJpdmVycy9ncHUvZHJtL2RybV9tZW1jcHkuYwpp
bmRleCAxYjAyMWE0OTAyZGUuLjc0MDM3Nzc0OWNhYSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9tZW1jcHkuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vZHJtX21lbWNweS5j
CkBAIC0xLDMgKzEsNCBAQAorLy8gU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IE1JVAogLyoKICAq
IENvcHlyaWdodCDCqSAyMDE2IEludGVsIENvcnBvcmF0aW9uCiAgKgpAQCAtMjIsMTYgKzIzLDEy
IEBACiAgKgogICovCiAKKyNpZmRlZiBDT05GSUdfWDg2CisjaW5jbHVkZSA8bGludXgvZG1hLWJ1
Zi1tYXAuaD4KICNpbmNsdWRlIDxsaW51eC9rZXJuZWwuaD4KICNpbmNsdWRlIDxhc20vZnB1L2Fw
aS5oPgogCi0jaW5jbHVkZSAiaTkxNV9tZW1jcHkuaCIKLQotI2lmIElTX0VOQUJMRUQoQ09ORklH
X0RSTV9JOTE1X0RFQlVHKQotI2RlZmluZSBDSV9CVUdfT04oZXhwcikgQlVHX09OKGV4cHIpCi0j
ZWxzZQotI2RlZmluZSBDSV9CVUdfT04oZXhwcikgQlVJTERfQlVHX09OX0lOVkFMSUQoZXhwcikK
LSNlbmRpZgorI2luY2x1ZGUgImRybS9kcm1fbWVtY3B5LmgiCiAKIHN0YXRpYyBERUZJTkVfU1RB
VElDX0tFWV9GQUxTRShoYXNfbW92bnRkcWEpOwogCkBAIC05NCwyMyArOTEsMjQgQEAgc3RhdGlj
IHZvaWQgX19tZW1jcHlfbnRkcXUodm9pZCAqZHN0LCBjb25zdCB2b2lkICpzcmMsIHVuc2lnbmVk
IGxvbmcgbGVuKQogfQogCiAvKioKLSAqIGk5MTVfbWVtY3B5X2Zyb21fd2M6IHBlcmZvcm0gYW4g
YWNjZWxlcmF0ZWQgKmFsaWduZWQqIHJlYWQgZnJvbSBXQworICogZHJtX21lbWNweV9mcm9tX3dj
OiBwZXJmb3JtIGFuIGFjY2VsZXJhdGVkICphbGlnbmVkKiByZWFkIGZyb20gV0MKICAqIEBkc3Q6
IGRlc3RpbmF0aW9uIHBvaW50ZXIKICAqIEBzcmM6IHNvdXJjZSBwb2ludGVyCiAgKiBAbGVuOiBo
b3cgbWFueSBieXRlcyB0byBjb3B5CiAgKgotICogaTkxNV9tZW1jcHlfZnJvbV93YyBjb3BpZXMg
QGxlbiBieXRlcyBmcm9tIEBzcmMgdG8gQGRzdCB1c2luZworICogZHJtX21lbWNweV9mcm9tX3dj
IGNvcGllcyBAbGVuIGJ5dGVzIGZyb20gQHNyYyB0byBAZHN0IHVzaW5nCiAgKiBub24tdGVtcG9y
YWwgaW5zdHJ1Y3Rpb25zIHdoZXJlIGF2YWlsYWJsZS4gTm90ZSB0aGF0IGFsbCBhcmd1bWVudHMK
ICAqIChAc3JjLCBAZHN0KSBtdXN0IGJlIGFsaWduZWQgdG8gMTYgYnl0ZXMgYW5kIEBsZW4gbXVz
dCBiZSBhIG11bHRpcGxlCiAgKiBvZiAxNi4KICAqCiAgKiBUbyB0ZXN0IHdoZXRoZXIgYWNjZWxl
cmF0ZWQgcmVhZHMgZnJvbSBXQyBhcmUgc3VwcG9ydGVkLCB1c2UKLSAqIGk5MTVfbWVtY3B5X2Zy
b21fd2MoTlVMTCwgTlVMTCwgMCk7CisgKiBkcm1fbWVtY3B5X2Zyb21fd2MoTlVMTCwgTlVMTCwg
MCk7CisgKiBUaGlzIGludGVyZmFjZSBpcyBpbnRlbmRlZCBmb3IgbWVtcmVtYXBwZWQgbWVtb3J5
IHdpdGhvdXQgdGhlIF9faW9tZW0gdGFnLgogICoKICAqIFJldHVybnMgdHJ1ZSBpZiB0aGUgY29w
eSB3YXMgc3VjY2Vzc2Z1bCwgZmFsc2UgaWYgdGhlIHByZWNvbmRpdGlvbnMKICAqIGFyZSBub3Qg
bWV0LgogICovCi1ib29sIGk5MTVfbWVtY3B5X2Zyb21fd2Modm9pZCAqZHN0LCBjb25zdCB2b2lk
ICpzcmMsIHVuc2lnbmVkIGxvbmcgbGVuKQorYm9vbCBkcm1fbWVtY3B5X2Zyb21fd2Modm9pZCAq
ZHN0LCBjb25zdCB2b2lkICpzcmMsIHVuc2lnbmVkIGxvbmcgbGVuKQogewogCWlmICh1bmxpa2Vs
eSgoKHVuc2lnbmVkIGxvbmcpZHN0IHwgKHVuc2lnbmVkIGxvbmcpc3JjIHwgbGVuKSAmIDE1KSkK
IAkJcmV0dXJuIGZhbHNlOwpAQCAtMTIzLDI0ICsxMjEsNTMgQEAgYm9vbCBpOTE1X21lbWNweV9m
cm9tX3djKHZvaWQgKmRzdCwgY29uc3Qgdm9pZCAqc3JjLCB1bnNpZ25lZCBsb25nIGxlbikKIAog
CXJldHVybiBmYWxzZTsKIH0KK0VYUE9SVF9TWU1CT0woZHJtX21lbWNweV9mcm9tX3djKTsKIAog
LyoqCi0gKiBpOTE1X3VuYWxpZ25lZF9tZW1jcHlfZnJvbV93YzogcGVyZm9ybSBhIG1vc3RseSBh
Y2NlbGVyYXRlZCByZWFkIGZyb20gV0MKKyAqIGRybV9tZW1jcHlfZnJvbV93Y19kYm06IHBlcmZv
cm0gYW4gYWNjZWxlcmF0ZWQgKmFsaWduZWQqIHJlYWQgZnJvbSBXQyB3aXRoCisgKiBzdHJ1Y3Qg
ZG1hX2J1Zl9tYXAgYXJndW1lbnRzLgorICogQGRzdDogZGVzdGluYXRpb24gbWFwCisgKiBAc3Jj
OiBzb3VyY2UgbWFwCisgKiBAbGVuOiBob3cgbWFueSBieXRlcyB0byBjb3B5CisgKgorICogVGhp
cyBpcyBpZGVudGljYWwgdG8gZHJtX21lbWNweV9mcm9tX3djLCBleGNlcHQgaXQncyBpbnRlbmRl
ZCBmb3IKKyAqIHBvdGVudGlhbGx5IGlvcmVtYXBwZWQgbWVtb3J5IHJhdGhlciB0aGFuIG1lbXJl
bWFwcGVkIG1lbW9yeS4KKyAqCisgKiBSZXR1cm5zIHRydWUgaWYgdGhlIGNvcHkgd2FzIHN1Y2Nl
c3NmdWwsIGZhbHNlIGlmIHRoZSBwcmVjb25kaXRpb25zCisgKiBhcmUgbm90IG1ldC4KKyAqLwor
Ym9vbCBkcm1fbWVtY3B5X2Zyb21fd2NfZGJtKHN0cnVjdCBkbWFfYnVmX21hcCAqZHN0LAorCQkJ
ICAgIGNvbnN0IHN0cnVjdCBkbWFfYnVmX21hcCAqc3JjLAorCQkJICAgIHVuc2lnbmVkIGxvbmcg
bGVuKQoreworCS8qIEZvciBYODYgd2UgY2FuIHNhZmVseSBkcm9wIF9faW9tZW0gKi8KKwlyZXR1
cm4gZHJtX21lbWNweV9mcm9tX3djKGRzdC0+aXNfaW9tZW0gPworCQkJCSAgKHZvaWQgX19mb3Jj
ZSAqKWRzdC0+dmFkZHJfaW9tZW0gOgorCQkJCSAgZHN0LT52YWRkciwKKwkJCQkgIHNyYy0+aXNf
aW9tZW0gPworCQkJCSAgKHZvaWQgY29uc3QgX19mb3JjZSAqKXNyYy0+dmFkZHJfaW9tZW0gOgor
CQkJCSAgc3JjLT52YWRkciwKKwkJCQkgIGxlbik7Cit9CitFWFBPUlRfU1lNQk9MKGRybV9tZW1j
cHlfZnJvbV93Y19kYm0pOworCisvKioKKyAqIGRybV91bmFsaWduZWRfbWVtY3B5X2Zyb21fd2M6
IHBlcmZvcm0gYSBtb3N0bHkgYWNjZWxlcmF0ZWQgcmVhZCBmcm9tIFdDCiAgKiBAZHN0OiBkZXN0
aW5hdGlvbiBwb2ludGVyCiAgKiBAc3JjOiBzb3VyY2UgcG9pbnRlcgogICogQGxlbjogaG93IG1h
bnkgYnl0ZXMgdG8gY29weQogICoKLSAqIExpa2UgaTkxNV9tZW1jcHlfZnJvbV93YygpLCB0aGUg
dW5hbGlnbmVkIHZhcmlhbnQgY29waWVzIEBsZW4gYnl0ZXMgZnJvbQorICogTGlrZSBkcm1fbWVt
Y3B5X2Zyb21fd2MoKSwgdGhlIHVuYWxpZ25lZCB2YXJpYW50IGNvcGllcyBAbGVuIGJ5dGVzIGZy
b20KICAqIEBzcmMgdG8gQGRzdCB1c2luZyAqIG5vbi10ZW1wb3JhbCBpbnN0cnVjdGlvbnMgd2hl
cmUgYXZhaWxhYmxlLCBidXQKICAqIGFjY2VwdHMgdGhhdCBpdHMgYXJndW1lbnRzIG1heSBub3Qg
YmUgYWxpZ25lZCwgYnV0IGFyZSB2YWxpZCBmb3IgdGhlCiAgKiBwb3RlbnRpYWwgMTYtYnl0ZSBy
ZWFkIHBhc3QgdGhlIGVuZC4KKyAqCisgKiBUaGlzIGludGVyZmFjZSBpcyBpbnRlbmRlZCBmb3Ig
bXJlbWFwcGVkIG1lbW9yeSB3aXRob3V0IHRoZSBfX2lvbWVtIHRhZy4KICAqLwotdm9pZCBpOTE1
X3VuYWxpZ25lZF9tZW1jcHlfZnJvbV93Yyh2b2lkICpkc3QsIGNvbnN0IHZvaWQgKnNyYywgdW5z
aWduZWQgbG9uZyBsZW4pCit2b2lkIGRybV91bmFsaWduZWRfbWVtY3B5X2Zyb21fd2Modm9pZCAq
ZHN0LCBjb25zdCB2b2lkICpzcmMsIHVuc2lnbmVkIGxvbmcgbGVuKQogewogCXVuc2lnbmVkIGxv
bmcgYWRkcjsKIAotCUNJX0JVR19PTighaTkxNV9oYXNfbWVtY3B5X2Zyb21fd2MoKSk7Ci0KIAlh
ZGRyID0gKHVuc2lnbmVkIGxvbmcpc3JjOwogCWlmICghSVNfQUxJR05FRChhZGRyLCAxNikpIHsK
IAkJdW5zaWduZWQgbG9uZyB4ID0gbWluKEFMSUdOKGFkZHIsIDE2KSAtIGFkZHIsIGxlbik7CkBA
IC0xNTUsOCArMTgyLDkgQEAgdm9pZCBpOTE1X3VuYWxpZ25lZF9tZW1jcHlfZnJvbV93Yyh2b2lk
ICpkc3QsIGNvbnN0IHZvaWQgKnNyYywgdW5zaWduZWQgbG9uZyBsZW4KIAlpZiAobGlrZWx5KGxl
bikpCiAJCV9fbWVtY3B5X250ZHF1KGRzdCwgc3JjLCBESVZfUk9VTkRfVVAobGVuLCAxNikpOwog
fQorRVhQT1JUX1NZTUJPTChkcm1fdW5hbGlnbmVkX21lbWNweV9mcm9tX3djKTsKIAotdm9pZCBp
OTE1X21lbWNweV9pbml0X2Vhcmx5KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikK
K3ZvaWQgZHJtX21lbWNweV9pbml0X2Vhcmx5KHZvaWQpCiB7CiAJLyoKIAkgKiBTb21lIGh5cGVy
dmlzb3JzIChlLmcuIEtWTSkgZG9uJ3Qgc3VwcG9ydCBWRVgtcHJlZml4IGluc3RydWN0aW9ucwpA
QCAtMTY2LDMgKzE5NCw0IEBAIHZvaWQgaTkxNV9tZW1jcHlfaW5pdF9lYXJseShzdHJ1Y3QgZHJt
X2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiAJICAgICFib290X2NwdV9oYXMoWDg2X0ZFQVRVUkVf
SFlQRVJWSVNPUikpCiAJCXN0YXRpY19icmFuY2hfZW5hYmxlKCZoYXNfbW92bnRkcWEpOwogfQor
I2VuZGlmCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9NYWtlZmlsZSBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L01ha2VmaWxlCmluZGV4IDRmMjJjYWMxYzQ5Yi4uZWJjMTliZDVmZmY0
IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9NYWtlZmlsZQorKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9NYWtlZmlsZQpAQCAtNjEsNyArNjEsNiBAQCBpOTE1LXkgKz0gaTkxNV9k
cnYubyBcCiAjIGNvcmUgbGlicmFyeSBjb2RlCiBpOTE1LXkgKz0gXAogCWRtYV9yZXN2X3V0aWxz
Lm8gXAotCWk5MTVfbWVtY3B5Lm8gXAogCWk5MTVfbW0ubyBcCiAJaTkxNV9zd19mZW5jZS5vIFwK
IAlpOTE1X3N3X2ZlbmNlX3dvcmsubyBcCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9nZW0vaTkxNV9nZW1fZXhlY2J1ZmZlci5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5
MTVfZ2VtX2V4ZWNidWZmZXIuYwppbmRleCAyOTcxNDM1MTFmOTkuLjc3Mjg1ZTQyMWZiOCAxMDA2
NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2V4ZWNidWZmZXIuYwor
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fZXhlY2J1ZmZlci5jCkBAIC0x
MCw2ICsxMCw3IEBACiAjaW5jbHVkZSA8bGludXgvdWFjY2Vzcy5oPgogCiAjaW5jbHVkZSA8ZHJt
L2RybV9zeW5jb2JqLmg+CisjaW5jbHVkZSA8ZHJtL2RybV9tZW1jcHkuaD4KIAogI2luY2x1ZGUg
ImRpc3BsYXkvaW50ZWxfZnJvbnRidWZmZXIuaCIKIApAQCAtMjgsNyArMjksNiBAQAogI2luY2x1
ZGUgImk5MTVfc3dfZmVuY2Vfd29yay5oIgogI2luY2x1ZGUgImk5MTVfdHJhY2UuaCIKICNpbmNs
dWRlICJpOTE1X3VzZXJfZXh0ZW5zaW9ucy5oIgotI2luY2x1ZGUgImk5MTVfbWVtY3B5LmgiCiAK
IHN0cnVjdCBlYl92bWEgewogCXN0cnVjdCBpOTE1X3ZtYSAqdm1hOwpAQCAtMjUwMyw3ICsyNTAz
LDcgQEAgc3RhdGljIGludCBlYl9wYXJzZV9waXBlbGluZShzdHJ1Y3QgaTkxNV9leGVjYnVmZmVy
ICplYiwKIAkJIShiYXRjaC0+Y2FjaGVfY29oZXJlbnQgJiBJOTE1X0JPX0NBQ0hFX0NPSEVSRU5U
X0ZPUl9SRUFEKTsKIAogCXB3LT5iYXRjaF9tYXAgPSBFUlJfUFRSKC1FTk9ERVYpOwotCWlmIChu
ZWVkc19jbGZsdXNoICYmIGk5MTVfaGFzX21lbWNweV9mcm9tX3djKCkpCisJaWYgKG5lZWRzX2Ns
Zmx1c2ggJiYgZHJtX2hhc19tZW1jcHlfZnJvbV93YygpKQogCQlwdy0+YmF0Y2hfbWFwID0gaTkx
NV9nZW1fb2JqZWN0X3Bpbl9tYXAoYmF0Y2gsIEk5MTVfTUFQX1dDKTsKIAogCWlmIChJU19FUlIo
cHctPmJhdGNoX21hcCkpIHsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9p
OTE1X2dlbV9vYmplY3QuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9vYmpl
Y3QuYwppbmRleCA1NzA2ZDQ3MTY5MmQuLmU5MjQ3YWZiMDMyMCAxMDA2NDQKLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdC5jCisrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2dlbS9pOTE1X2dlbV9vYmplY3QuYwpAQCAtMjQsNiArMjQsOCBAQAogCiAjaW5jbHVk
ZSA8bGludXgvc2NoZWQvbW0uaD4KIAorI2luY2x1ZGUgPGRybS9kcm1fbWVtY3B5Lmg+CisKICNp
bmNsdWRlICJkaXNwbGF5L2ludGVsX2Zyb250YnVmZmVyLmgiCiAjaW5jbHVkZSAiaTkxNV9kcnYu
aCIKICNpbmNsdWRlICJpOTE1X2dlbV9jbGZsdXNoLmgiCkBAIC0zMSw3ICszMyw2IEBACiAjaW5j
bHVkZSAiaTkxNV9nZW1fbW1hbi5oIgogI2luY2x1ZGUgImk5MTVfZ2VtX29iamVjdC5oIgogI2lu
Y2x1ZGUgImk5MTVfZ2xvYmFscy5oIgotI2luY2x1ZGUgImk5MTVfbWVtY3B5LmgiCiAjaW5jbHVk
ZSAiaTkxNV90cmFjZS5oIgogCiBzdGF0aWMgc3RydWN0IGk5MTVfZ2xvYmFsX29iamVjdCB7CkBA
IC0zNzQsNyArMzc1LDcgQEAgaTkxNV9nZW1fb2JqZWN0X3JlYWRfZnJvbV9wYWdlX2lvbWFwKHN0
cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmosIHU2NCBvZmZzZXQKIAkJCQkgICAgUEFHRV9T
SVpFKTsKIAogCXNyY19wdHIgPSBzcmNfbWFwICsgb2Zmc2V0X2luX3BhZ2Uob2Zmc2V0KTsKLQlp
ZiAoIWk5MTVfbWVtY3B5X2Zyb21fd2MoZHN0LCAodm9pZCBfX2ZvcmNlICopc3JjX3B0ciwgc2l6
ZSkpCisJaWYgKCFkcm1fbWVtY3B5X2Zyb21fd2MoZHN0LCAodm9pZCBfX2ZvcmNlICopc3JjX3B0
ciwgc2l6ZSkpCiAJCW1lbWNweV9mcm9taW8oZHN0LCBzcmNfcHRyLCBzaXplKTsKIAogCWlvX21h
cHBpbmdfdW5tYXAoc3JjX21hcCk7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC9zZWxmdGVzdF9yZXNldC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRlc3RfcmVz
ZXQuYwppbmRleCA4Nzg0MjU3ZWM4MDguLjkyYWRhNjdhMzgzNSAxMDA2NDQKLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRlc3RfcmVzZXQuYworKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC9zZWxmdGVzdF9yZXNldC5jCkBAIC01LDkgKzUsMTAgQEAKIAogI2luY2x1ZGUgPGxp
bnV4L2NyYzMyLmg+CiAKKyNpbmNsdWRlIDxkcm0vZHJtX21lbWNweS5oPgorCiAjaW5jbHVkZSAi
Z2VtL2k5MTVfZ2VtX3N0b2xlbi5oIgogCi0jaW5jbHVkZSAiaTkxNV9tZW1jcHkuaCIKICNpbmNs
dWRlICJpOTE1X3NlbGZ0ZXN0LmgiCiAjaW5jbHVkZSAiaW50ZWxfZ3B1X2NvbW1hbmRzLmgiCiAj
aW5jbHVkZSAic2VsZnRlc3RzL2lndF9yZXNldC5oIgpAQCAtOTksNyArMTAwLDcgQEAgX19pZ3Rf
cmVzZXRfc3RvbGVuKHN0cnVjdCBpbnRlbF9ndCAqZ3QsCiAJCQltZW1zZXRfaW8ocywgU1RBQ0tf
TUFHSUMsIFBBR0VfU0laRSk7CiAKIAkJaW4gPSAodm9pZCBfX2ZvcmNlICopczsKLQkJaWYgKGk5
MTVfbWVtY3B5X2Zyb21fd2ModG1wLCBpbiwgUEFHRV9TSVpFKSkKKwkJaWYgKGRybV9tZW1jcHlf
ZnJvbV93Yyh0bXAsIGluLCBQQUdFX1NJWkUpKQogCQkJaW4gPSB0bXA7CiAJCWNyY1twYWdlXSA9
IGNyYzMyX2xlKDAsIGluLCBQQUdFX1NJWkUpOwogCkBAIC0xMzUsNyArMTM2LDcgQEAgX19pZ3Rf
cmVzZXRfc3RvbGVuKHN0cnVjdCBpbnRlbF9ndCAqZ3QsCiAJCQkJICAgICAgUEFHRV9TSVpFKTsK
IAogCQlpbiA9ICh2b2lkIF9fZm9yY2UgKilzOwotCQlpZiAoaTkxNV9tZW1jcHlfZnJvbV93Yyh0
bXAsIGluLCBQQUdFX1NJWkUpKQorCQlpZiAoZHJtX21lbWNweV9mcm9tX3djKHRtcCwgaW4sIFBB
R0VfU0laRSkpCiAJCQlpbiA9IHRtcDsKIAkJeCA9IGNyYzMyX2xlKDAsIGluLCBQQUdFX1NJWkUp
OwogCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9ndWNfbG9n
LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9ndWNfbG9nLmMKaW5kZXggYzM2
ZDVlYjViYmI5Li5mMDQ1ZTQyYmU2Y2EgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L3VjL2ludGVsX2d1Y19sb2cuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9p
bnRlbF9ndWNfbG9nLmMKQEAgLTUsOSArNSwxMCBAQAogCiAjaW5jbHVkZSA8bGludXgvZGVidWdm
cy5oPgogCisjaW5jbHVkZSA8ZHJtL2RybV9tZW1jcHkuaD4KKwogI2luY2x1ZGUgImd0L2ludGVs
X2d0LmgiCiAjaW5jbHVkZSAiaTkxNV9kcnYuaCIKLSNpbmNsdWRlICJpOTE1X21lbWNweS5oIgog
I2luY2x1ZGUgImludGVsX2d1Y19sb2cuaCIKIAogc3RhdGljIHZvaWQgZ3VjX2xvZ19jYXB0dXJl
X2xvZ3Moc3RydWN0IGludGVsX2d1Y19sb2cgKmxvZyk7CkBAIC0yOTUsMTMgKzI5NiwxMyBAQCBz
dGF0aWMgdm9pZCBndWNfcmVhZF91cGRhdGVfbG9nX2J1ZmZlcihzdHJ1Y3QgaW50ZWxfZ3VjX2xv
ZyAqbG9nKQogCiAJCS8qIEp1c3QgY29weSB0aGUgbmV3bHkgd3JpdHRlbiBkYXRhICovCiAJCWlm
IChyZWFkX29mZnNldCA+IHdyaXRlX29mZnNldCkgewotCQkJaTkxNV9tZW1jcHlfZnJvbV93Yyhk
c3RfZGF0YSwgc3JjX2RhdGEsIHdyaXRlX29mZnNldCk7CisJCQlkcm1fbWVtY3B5X2Zyb21fd2Mo
ZHN0X2RhdGEsIHNyY19kYXRhLCB3cml0ZV9vZmZzZXQpOwogCQkJYnl0ZXNfdG9fY29weSA9IGJ1
ZmZlcl9zaXplIC0gcmVhZF9vZmZzZXQ7CiAJCX0gZWxzZSB7CiAJCQlieXRlc190b19jb3B5ID0g
d3JpdGVfb2Zmc2V0IC0gcmVhZF9vZmZzZXQ7CiAJCX0KLQkJaTkxNV9tZW1jcHlfZnJvbV93Yyhk
c3RfZGF0YSArIHJlYWRfb2Zmc2V0LAotCQkJCSAgICBzcmNfZGF0YSArIHJlYWRfb2Zmc2V0LCBi
eXRlc190b19jb3B5KTsKKwkJZHJtX21lbWNweV9mcm9tX3djKGRzdF9kYXRhICsgcmVhZF9vZmZz
ZXQsCisJCQkJICAgc3JjX2RhdGEgKyByZWFkX29mZnNldCwgYnl0ZXNfdG9fY29weSk7CiAKIAkJ
c3JjX2RhdGEgKz0gYnVmZmVyX3NpemU7CiAJCWRzdF9kYXRhICs9IGJ1ZmZlcl9zaXplOwpAQCAt
NTY5LDcgKzU3MCw3IEBAIGludCBpbnRlbF9ndWNfbG9nX3JlbGF5X29wZW4oc3RydWN0IGludGVs
X2d1Y19sb2cgKmxvZykKIAkgKiBpdCBzaG91bGQgYmUgcHJlc2VudCBvbiB0aGUgY2hpcHNldHMg
c3VwcG9ydGluZyBHdUMgYmFzZWQKIAkgKiBzdWJtaXNzc2lvbnMuCiAJICovCi0JaWYgKCFpOTE1
X2hhc19tZW1jcHlfZnJvbV93YygpKSB7CisJaWYgKCFkcm1faGFzX21lbWNweV9mcm9tX3djKCkp
IHsKIAkJcmV0ID0gLUVOWElPOwogCQlnb3RvIG91dF91bmxvY2s7CiAJfQpkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9jbWRfcGFyc2VyLmMgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X2NtZF9wYXJzZXIuYwppbmRleCA1YjRiMmJkNDZlN2MuLjk4NjUzZjFhMmIxZCAx
MDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9jbWRfcGFyc2VyLmMKKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9jbWRfcGFyc2VyLmMKQEAgLTI0LDEyICsyNCwxMiBA
QAogICogICAgQnJhZCBWb2xraW4gPGJyYWRsZXkuZC52b2xraW5AaW50ZWwuY29tPgogICoKICAq
LworI2luY2x1ZGUgPGRybS9kcm1fbWVtY3B5Lmg+CiAKICNpbmNsdWRlICJndC9pbnRlbF9lbmdp
bmUuaCIKICNpbmNsdWRlICJndC9pbnRlbF9ncHVfY29tbWFuZHMuaCIKIAogI2luY2x1ZGUgImk5
MTVfZHJ2LmgiCi0jaW5jbHVkZSAiaTkxNV9tZW1jcHkuaCIKIAogLyoqCiAgKiBET0M6IGJhdGNo
IGJ1ZmZlciBjb21tYW5kIHBhcnNlcgpAQCAtMTE1Miw3ICsxMTUyLDcgQEAgc3RhdGljIHUzMiAq
Y29weV9iYXRjaChzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqZHN0X29iaiwKIAogCWlmIChz
cmMpIHsKIAkJR0VNX0JVR19PTighbmVlZHNfY2xmbHVzaCk7Ci0JCWk5MTVfdW5hbGlnbmVkX21l
bWNweV9mcm9tX3djKGRzdCwgc3JjICsgb2Zmc2V0LCBsZW5ndGgpOworCQlkcm1fdW5hbGlnbmVk
X21lbWNweV9mcm9tX3djKGRzdCwgc3JjICsgb2Zmc2V0LCBsZW5ndGgpOwogCX0gZWxzZSB7CiAJ
CXN0cnVjdCBzY2F0dGVybGlzdCAqc2c7CiAJCXZvaWQgKnB0cjsKZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Ry
di5jCmluZGV4IDMwYzM0OTEzN2JlMi4uNjg2MzllZDBiZGVjIDEwMDY0NAotLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
ZHJ2LmMKQEAgLTcyLDcgKzcyLDYgQEAKICNpbmNsdWRlICJpOTE1X2Rydi5oIgogI2luY2x1ZGUg
Imk5MTVfaW9jMzIuaCIKICNpbmNsdWRlICJpOTE1X2lycS5oIgotI2luY2x1ZGUgImk5MTVfbWVt
Y3B5LmgiCiAjaW5jbHVkZSAiaTkxNV9wZXJmLmgiCiAjaW5jbHVkZSAiaTkxNV9xdWVyeS5oIgog
I2luY2x1ZGUgImk5MTVfc3VzcGVuZC5oIgpAQCAtMzI1LDcgKzMyNCw2IEBAIHN0YXRpYyBpbnQg
aTkxNV9kcml2ZXJfZWFybHlfcHJvYmUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2
KQogCW11dGV4X2luaXQoJmRldl9wcml2LT5wcHNfbXV0ZXgpOwogCW11dGV4X2luaXQoJmRldl9w
cml2LT5oZGNwX2NvbXBfbXV0ZXgpOwogCi0JaTkxNV9tZW1jcHlfaW5pdF9lYXJseShkZXZfcHJp
dik7CiAJaW50ZWxfcnVudGltZV9wbV9pbml0X2Vhcmx5KCZkZXZfcHJpdi0+cnVudGltZV9wbSk7
CiAKIAlyZXQgPSBpOTE1X3dvcmtxdWV1ZXNfaW5pdChkZXZfcHJpdik7CmRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dwdV9lcnJvci5jIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9ncHVfZXJyb3IuYwppbmRleCA4Yjk2NGUzNTVjYjUuLjdjMWI0NDU0NWJhYiAxMDA2
NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9ncHVfZXJyb3IuYworKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dwdV9lcnJvci5jCkBAIC0zNCw2ICszNCw3IEBACiAjaW5j
bHVkZSA8bGludXgvdXRzbmFtZS5oPgogI2luY2x1ZGUgPGxpbnV4L3psaWIuaD4KIAorI2luY2x1
ZGUgPGRybS9kcm1fbWVtY3B5Lmg+CiAjaW5jbHVkZSA8ZHJtL2RybV9wcmludC5oPgogCiAjaW5j
bHVkZSAiZGlzcGxheS9pbnRlbF9kbWMuaCIKQEAgLTQ2LDcgKzQ3LDYgQEAKIAogI2luY2x1ZGUg
Imk5MTVfZHJ2LmgiCiAjaW5jbHVkZSAiaTkxNV9ncHVfZXJyb3IuaCIKLSNpbmNsdWRlICJpOTE1
X21lbWNweS5oIgogI2luY2x1ZGUgImk5MTVfc2NhdHRlcmxpc3QuaCIKIAogI2RlZmluZSBBTExP
V19GQUlMIChHRlBfS0VSTkVMIHwgX19HRlBfUkVUUllfTUFZRkFJTCB8IF9fR0ZQX05PV0FSTikK
QEAgLTI1NSw3ICsyNTUsNyBAQCBzdGF0aWMgYm9vbCBjb21wcmVzc19pbml0KHN0cnVjdCBpOTE1
X3ZtYV9jb21wcmVzcyAqYykKIAl9CiAKIAljLT50bXAgPSBOVUxMOwotCWlmIChpOTE1X2hhc19t
ZW1jcHlfZnJvbV93YygpKQorCWlmIChkcm1faGFzX21lbWNweV9mcm9tX3djKCkpCiAJCWMtPnRt
cCA9IHBvb2xfYWxsb2MoJmMtPnBvb2wsIEFMTE9XX0ZBSUwpOwogCiAJcmV0dXJuIHRydWU7CkBA
IC0yOTUsNyArMjk1LDcgQEAgc3RhdGljIGludCBjb21wcmVzc19wYWdlKHN0cnVjdCBpOTE1X3Zt
YV9jb21wcmVzcyAqYywKIAlzdHJ1Y3Qgel9zdHJlYW1fcyAqenN0cmVhbSA9ICZjLT56c3RyZWFt
OwogCiAJenN0cmVhbS0+bmV4dF9pbiA9IHNyYzsKLQlpZiAod2MgJiYgYy0+dG1wICYmIGk5MTVf
bWVtY3B5X2Zyb21fd2MoYy0+dG1wLCBzcmMsIFBBR0VfU0laRSkpCisJaWYgKHdjICYmIGMtPnRt
cCAmJiBkcm1fbWVtY3B5X2Zyb21fd2MoYy0+dG1wLCBzcmMsIFBBR0VfU0laRSkpCiAJCXpzdHJl
YW0tPm5leHRfaW4gPSBjLT50bXA7CiAJenN0cmVhbS0+YXZhaWxfaW4gPSBQQUdFX1NJWkU7CiAK
QEAgLTM5NSw3ICszOTUsNyBAQCBzdGF0aWMgaW50IGNvbXByZXNzX3BhZ2Uoc3RydWN0IGk5MTVf
dm1hX2NvbXByZXNzICpjLAogCWlmICghcHRyKQogCQlyZXR1cm4gLUVOT01FTTsKIAotCWlmICgh
KHdjICYmIGk5MTVfbWVtY3B5X2Zyb21fd2MocHRyLCBzcmMsIFBBR0VfU0laRSkpKQorCWlmICgh
KHdjICYmIGRybV9tZW1jcHlfZnJvbV93YyhwdHIsIHNyYywgUEFHRV9TSVpFKSkpCiAJCW1lbWNw
eShwdHIsIHNyYywgUEFHRV9TSVpFKTsKIAlkc3QtPnBhZ2VzW2RzdC0+cGFnZV9jb3VudCsrXSA9
IHB0cjsKIAljb25kX3Jlc2NoZWQoKTsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfbWVtY3B5LmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X21lbWNweS5oCmRlbGV0
ZWQgZmlsZSBtb2RlIDEwMDY0NAppbmRleCAzZGYwNjNhMzI5M2IuLjAwMDAwMDAwMDAwMAotLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X21lbWNweS5oCisrKyAvZGV2L251bGwKQEAgLTEs
MzQgKzAsMCBAQAotLyogU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IE1JVCAqLwotLyoKLSAqIENv
cHlyaWdodCDCqSAyMDE5IEludGVsIENvcnBvcmF0aW9uCi0gKi8KLQotI2lmbmRlZiBfX0k5MTVf
TUVNQ1BZX0hfXwotI2RlZmluZSBfX0k5MTVfTUVNQ1BZX0hfXwotCi0jaW5jbHVkZSA8bGludXgv
dHlwZXMuaD4KLQotc3RydWN0IGRybV9pOTE1X3ByaXZhdGU7Ci0KLXZvaWQgaTkxNV9tZW1jcHlf
aW5pdF9lYXJseShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSk7Ci0KLWJvb2wgaTkxNV9t
ZW1jcHlfZnJvbV93Yyh2b2lkICpkc3QsIGNvbnN0IHZvaWQgKnNyYywgdW5zaWduZWQgbG9uZyBs
ZW4pOwotdm9pZCBpOTE1X3VuYWxpZ25lZF9tZW1jcHlfZnJvbV93Yyh2b2lkICpkc3QsIGNvbnN0
IHZvaWQgKnNyYywgdW5zaWduZWQgbG9uZyBsZW4pOwotCi0vKiBUaGUgbW92bnRkcWEgaW5zdHJ1
Y3Rpb25zIHVzZWQgZm9yIG1lbWNweS1mcm9tLXdjIHJlcXVpcmUgMTYtYnl0ZSBhbGlnbm1lbnQs
Ci0gKiBhcyB3ZWxsIGFzIFNTRTQuMSBzdXBwb3J0LiBpOTE1X21lbWNweV9mcm9tX3djKCkgd2ls
bCByZXBvcnQgaWYgaXQgY2Fubm90Ci0gKiBwZXJmb3JtIHRoZSBvcGVyYXRpb24uIFRvIGNoZWNr
IGJlZm9yZWhhbmQsIHBhc3MgaW4gdGhlIHBhcmFtZXRlcnMgdG8KLSAqIHRvIGk5MTVfY2FuX21l
bWNweV9mcm9tX3djKCkgLSBzaW5jZSB3ZSBvbmx5IGNhcmUgYWJvdXQgdGhlIGxvdyA0IGJpdHMs
Ci0gKiB5b3Ugb25seSBuZWVkIHRvIHBhc3MgaW4gdGhlIG1pbm9yIG9mZnNldHMsIHBhZ2UtYWxp
Z25lZCBwb2ludGVycyBhcmUKLSAqIGFsd2F5cyB2YWxpZC4KLSAqCi0gKiBGb3IganVzdCBjaGVj
a2luZyBmb3IgU1NFNC4xLCBpbiB0aGUgZm9yZWtub3dsZWRnZSB0aGF0IHRoZSBmdXR1cmUgdXNl
Ci0gKiB3aWxsIGJlIGNvcnJlY3RseSBhbGlnbmVkLCBqdXN0IHVzZSBpOTE1X2hhc19tZW1jcHlf
ZnJvbV93YygpLgotICovCi0jZGVmaW5lIGk5MTVfY2FuX21lbWNweV9mcm9tX3djKGRzdCwgc3Jj
LCBsZW4pIFwKLQlpOTE1X21lbWNweV9mcm9tX3djKCh2b2lkICopKCh1bnNpZ25lZCBsb25nKShk
c3QpIHwgKHVuc2lnbmVkIGxvbmcpKHNyYykgfCAobGVuKSksIE5VTEwsIDApCi0KLSNkZWZpbmUg
aTkxNV9oYXNfbWVtY3B5X2Zyb21fd2MoKSBcCi0JaTkxNV9tZW1jcHlfZnJvbV93YyhOVUxMLCBO
VUxMLCAwKQotCi0jZW5kaWYgLyogX19JOTE1X01FTUNQWV9IX18gKi8KZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9pbnRlbF9tZW1vcnlfcmVnaW9uLmMgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvaW50ZWxfbWVtb3J5X3JlZ2lvbi5jCmluZGV4IGM4
NWQ1MTZiODVjZC4uNmJiMzk5ZTliZTc4IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9zZWxmdGVzdHMvaW50ZWxfbWVtb3J5X3JlZ2lvbi5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L3NlbGZ0ZXN0cy9pbnRlbF9tZW1vcnlfcmVnaW9uLmMKQEAgLTYsNiArNiw4IEBACiAjaW5j
bHVkZSA8bGludXgvcHJpbWVfbnVtYmVycy5oPgogI2luY2x1ZGUgPGxpbnV4L3NvcnQuaD4KIAor
I2luY2x1ZGUgPGRybS9kcm1fbWVtY3B5Lmg+CisKICNpbmNsdWRlICIuLi9pOTE1X3NlbGZ0ZXN0
LmgiCiAKICNpbmNsdWRlICJtb2NrX2RybS5oIgpAQCAtMjAsNyArMjIsNiBAQAogI2luY2x1ZGUg
ImdlbS9zZWxmdGVzdHMvbW9ja19jb250ZXh0LmgiCiAjaW5jbHVkZSAiZ3QvaW50ZWxfZW5naW5l
X3VzZXIuaCIKICNpbmNsdWRlICJndC9pbnRlbF9ndC5oIgotI2luY2x1ZGUgImk5MTVfbWVtY3B5
LmgiCiAjaW5jbHVkZSAic2VsZnRlc3RzL2lndF9mbHVzaF90ZXN0LmgiCiAjaW5jbHVkZSAic2Vs
ZnRlc3RzL2k5MTVfcmFuZG9tLmgiCiAKQEAgLTkwMSw3ICs5MDIsNyBAQCBzdGF0aWMgaW5saW5l
IHZvaWQgaWd0X21lbWNweSh2b2lkICpkc3QsIGNvbnN0IHZvaWQgKnNyYywgc2l6ZV90IHNpemUp
CiAKIHN0YXRpYyBpbmxpbmUgdm9pZCBpZ3RfbWVtY3B5X2Zyb21fd2Modm9pZCAqZHN0LCBjb25z
dCB2b2lkICpzcmMsIHNpemVfdCBzaXplKQogewotCWk5MTVfbWVtY3B5X2Zyb21fd2MoZHN0LCBz
cmMsIHNpemUpOworCWRybV9tZW1jcHlfZnJvbV93Yyhkc3QsIHNyYywgc2l6ZSk7CiB9CiAKIHN0
YXRpYyBpbnQgX3BlcmZfbWVtY3B5KHN0cnVjdCBpbnRlbF9tZW1vcnlfcmVnaW9uICpzcmNfbXIs
CkBAIC05MjUsNyArOTI2LDcgQEAgc3RhdGljIGludCBfcGVyZl9tZW1jcHkoc3RydWN0IGludGVs
X21lbW9yeV9yZWdpb24gKnNyY19tciwKIAkJewogCQkJIm1lbWNweV9mcm9tX3djIiwKIAkJCWln
dF9tZW1jcHlfZnJvbV93YywKLQkJCSFpOTE1X2hhc19tZW1jcHlfZnJvbV93YygpLAorCQkJIWRy
bV9oYXNfbWVtY3B5X2Zyb21fd2MoKSwKIAkJfSwKIAl9OwogCXN0cnVjdCBkcm1faTkxNV9nZW1f
b2JqZWN0ICpzcmMsICpkc3Q7CmRpZmYgLS1naXQgYS9pbmNsdWRlL2RybS9kcm1fbWVtY3B5Lmgg
Yi9pbmNsdWRlL2RybS9kcm1fbWVtY3B5LmgKbmV3IGZpbGUgbW9kZSAxMDA2NDQKaW5kZXggMDAw
MDAwMDAwMDAwLi5mZTVlZDFlODljZTYKLS0tIC9kZXYvbnVsbAorKysgYi9pbmNsdWRlL2RybS9k
cm1fbWVtY3B5LmgKQEAgLTAsMCArMSw2OCBAQAorLyogU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6
IE1JVCAqLworLyoKKyAqIENvcHlyaWdodCDCqSAyMDE5IEludGVsIENvcnBvcmF0aW9uCisgKi8K
KworI2lmbmRlZiBfX0RSTV9NRU1DUFlfSF9fCisjZGVmaW5lIF9fRFJNX01FTUNQWV9IX18KKwor
I2luY2x1ZGUgPGxpbnV4L3R5cGVzLmg+CisKK3N0cnVjdCBkbWFfYnVmX21hcDsKKworI2lmZGVm
IENPTkZJR19YODYKK2Jvb2wgZHJtX21lbWNweV9mcm9tX3djKHZvaWQgKmRzdCwgY29uc3Qgdm9p
ZCAqc3JjLCB1bnNpZ25lZCBsb25nIGxlbik7Citib29sIGRybV9tZW1jcHlfZnJvbV93Y19kYm0o
c3RydWN0IGRtYV9idWZfbWFwICpkc3QsCisJCQkgICAgY29uc3Qgc3RydWN0IGRtYV9idWZfbWFw
ICpzcmMsCisJCQkgICAgdW5zaWduZWQgbG9uZyBsZW4pOwordm9pZCBkcm1fdW5hbGlnbmVkX21l
bWNweV9mcm9tX3djKHZvaWQgKmRzdCwgY29uc3Qgdm9pZCAqc3JjLCB1bnNpZ25lZCBsb25nIGxl
bik7CisKKy8qIFRoZSBtb3ZudGRxYSBpbnN0cnVjdGlvbnMgdXNlZCBmb3IgbWVtY3B5LWZyb20t
d2MgcmVxdWlyZSAxNi1ieXRlIGFsaWdubWVudCwKKyAqIGFzIHdlbGwgYXMgU1NFNC4xIHN1cHBv
cnQuIGRybV9tZW1jcHlfZnJvbV93YygpIHdpbGwgcmVwb3J0IGlmIGl0IGNhbm5vdAorICogcGVy
Zm9ybSB0aGUgb3BlcmF0aW9uLiBUbyBjaGVjayBiZWZvcmVoYW5kLCBwYXNzIGluIHRoZSBwYXJh
bWV0ZXJzIHRvCisgKiBkcm1fY2FuX21lbWNweV9mcm9tX3djKCkgLSBzaW5jZSB3ZSBvbmx5IGNh
cmUgYWJvdXQgdGhlIGxvdyA0IGJpdHMsCisgKiB5b3Ugb25seSBuZWVkIHRvIHBhc3MgaW4gdGhl
IG1pbm9yIG9mZnNldHMsIHBhZ2UtYWxpZ25lZCBwb2ludGVycyBhcmUKKyAqIGFsd2F5cyB2YWxp
ZC4KKyAqCisgKiBGb3IganVzdCBjaGVja2luZyBmb3IgU1NFNC4xLCBpbiB0aGUgZm9yZWtub3ds
ZWRnZSB0aGF0IHRoZSBmdXR1cmUgdXNlCisgKiB3aWxsIGJlIGNvcnJlY3RseSBhbGlnbmVkLCBq
dXN0IHVzZSBkcm1faGFzX21lbWNweV9mcm9tX3djKCkuCisgKi8KKyNkZWZpbmUgZHJtX2Nhbl9t
ZW1jcHlfZnJvbV93Yyhkc3QsIHNyYywgbGVuKSBcCisJZHJtX21lbWNweV9mcm9tX3djKCh2b2lk
ICopKCh1bnNpZ25lZCBsb25nKShkc3QpIHwgKHVuc2lnbmVkIGxvbmcpKHNyYykgfCAobGVuKSks
IE5VTEwsIDApCisKKyNkZWZpbmUgZHJtX2hhc19tZW1jcHlfZnJvbV93YygpIFwKKwlkcm1fbWVt
Y3B5X2Zyb21fd2MoTlVMTCwgTlVMTCwgMCkKKwordm9pZCBkcm1fbWVtY3B5X2luaXRfZWFybHko
dm9pZCk7CisKKyNlbHNlCisKK3N0YXRpYyBpbmxpbmUKK2Jvb2wgZHJtX21lbWNweV9mcm9tX3dj
KHZvaWQgKmRzdCwgY29uc3Qgdm9pZCAqc3JjLCB1bnNpZ25lZCBsb25nIGxlbikKK3sKKwlyZXR1
cm4gZmFsc2U7Cit9CisKK3N0YXRpYyBpbmxpbmUKK2Jvb2wgZHJtX21lbWNweV9mcm9tX3djX2Ri
bSh2b2lkICpkc3QsIGNvbnN0IHZvaWQgKnNyYywgdW5zaWduZWQgbG9uZyBsZW4pCit7CisJcmV0
dXJuIGZhbHNlOworfQorCitzdGF0aWMgaW5saW5lCitib29sIGRybV9jYW5fbWVtY3B5X2Zyb21f
d2NfZGJtKHZvaWQgKmRzdCwgY29uc3Qgdm9pZCAqc3JjLCB1bnNpZ25lZCBsb25nIGxlbikKK3sK
KwlyZXR1cm4gZmFsc2U7Cit9CisKK3N0YXRpYyBpbmxpbmUKK2Jvb2wgZHJtX2hhc19tZW1jcHlf
ZnJvbV93Yyh2b2lkKQoreworCXJldHVybiBmYWxzZTsKK30KKworI2RlZmluZSBkcm1faGFzX21l
bWNweV9mcm9tX3djKCkgKGZhbHNlKQorI2RlZmluZSBkcm1fdW5hbGlnbmVkX21lbWNweV9mcm9t
X3djKF9kc3QsIF9zcmMsIF9sZW4pIFdBUk5fT04oMSkKKyNkZWZpbmUgZHJtX21lbWNweV9pbml0
X2Vhcmx5KCkgZG8ge30gd2hpbGUgKDApCisjZW5kaWYgLyogQ09ORklHX1g4NiAqLworI2VuZGlm
IC8qIF9fRFJNX01FTUNQWV9IX18gKi8KLS0gCjIuMzEuMQoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
