Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8ED157CAE0
	for <lists+intel-gfx@lfdr.de>; Wed, 31 Jul 2019 19:49:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ECE4889805;
	Wed, 31 Jul 2019 17:48:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 914B189805
 for <intel-gfx@lists.freedesktop.org>; Wed, 31 Jul 2019 17:48:46 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 31 Jul 2019 10:48:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,330,1559545200"; d="scan'208";a="172536478"
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by fmsmga008.fm.intel.com with ESMTP; 31 Jul 2019 10:48:44 -0700
Received: from mwajdecz-MOBL1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [172.28.174.50])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 x6VHmg4v016470; Wed, 31 Jul 2019 18:48:43 +0100
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 31 Jul 2019 17:48:32 +0000
Message-Id: <20190731174833.22080-3-michal.wajdeczko@intel.com>
X-Mailer: git-send-email 2.21.0.windows.1
In-Reply-To: <20190731174833.22080-1-michal.wajdeczko@intel.com>
References: <20190731174833.22080-1-michal.wajdeczko@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 2/3] drm/i915/uc: Inject probe errors into
 intel_uc_init_hw
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

SW5qZWN0IHByb2JlIGVycm9ycyBpbnRvIGludGVsX3VjX2luaXRfaHcgdG8gbWFrZSBzdXJlIHdl
CmNvcnJlY3RseSBoYW5kbGUgYW55IHVDIGluaXRpYWxpemF0aW9uIGZhaWx1cmUuCgpUbyBhdm9p
ZCBjb21wbGFpbnMgZnJvbSBDSSBhYm91dCBpbmplY3RlZCBlcnJvcnMgdXNlCmk5MTVfcHJvYmVf
ZXJyb3IgdG8gbG93ZXIgbWVzc2FnZSBsZXZlbC4KClNpZ25lZC1vZmYtYnk6IE1pY2hhbCBXYWpk
ZWN6a28gPG1pY2hhbC53YWpkZWN6a29AaW50ZWwuY29tPgpDYzogRGFuaWVsZSBDZXJhb2xvIFNw
dXJpbyA8ZGFuaWVsZS5jZXJhb2xvc3B1cmlvQGludGVsLmNvbT4KQ2M6IENocmlzIFdpbHNvbiA8
Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3Vj
L2ludGVsX2h1Yy5jICAgfCAgNCArKysrCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRl
bF91Yy5jICAgIHwgMTggKysrKysrKysrKysrKysrKystCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC91Yy9pbnRlbF91Y19mdy5jIHwgIDUgKysrKysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
Z2VtLmMgICAgICAgICAgfCAgMiArLQogNCBmaWxlcyBjaGFuZ2VkLCAyNyBpbnNlcnRpb25zKCsp
LCAyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3Vj
L2ludGVsX2h1Yy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfaHVjLmMKaW5k
ZXggYzk1MzVjYWJhODQ0Li5hNjk2Y2UwZmVjNjIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L3VjL2ludGVsX2h1Yy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3Vj
L2ludGVsX2h1Yy5jCkBAIC0xMzksNiArMTM5LDEwIEBAIGludCBpbnRlbF9odWNfYXV0aChzdHJ1
Y3QgaW50ZWxfaHVjICpodWMpCiAJR0VNX0JVR19PTighaW50ZWxfdWNfZndfaXNfbG9hZGVkKCZo
dWMtPmZ3KSk7CiAJR0VNX0JVR19PTihpbnRlbF9odWNfaXNfYXV0aGVudGljYXRlZChodWMpKTsK
IAorCXJldCA9IGk5MTVfaW5qZWN0X2xvYWRfZXJyb3IoZ3QtPmk5MTUsIC1FTlhJTyk7CisJaWYg
KHJldCkKKwkJZ290byBmYWlsOworCiAJcmV0ID0gaW50ZWxfZ3VjX2F1dGhfaHVjKGd1YywKIAkJ
CQkgaW50ZWxfZ3VjX2dndHRfb2Zmc2V0KGd1YywgaHVjLT5yc2FfZGF0YSkpOwogCWlmIChyZXQp
IHsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX3VjLmMgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91Yy5jCmluZGV4IDY2YjIyNmJlNjc1OS4u
M2QwZTlhODkzOTUzIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRl
bF91Yy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX3VjLmMKQEAgLTQx
LDYgKzQxLDEwIEBAIHN0YXRpYyBpbnQgX19pbnRlbF91Y19yZXNldF9odyhzdHJ1Y3QgaW50ZWxf
dWMgKnVjKQogCWludCByZXQ7CiAJdTMyIGd1Y19zdGF0dXM7CiAKKwlyZXQgPSBpOTE1X2luamVj
dF9sb2FkX2Vycm9yKGd0LT5pOTE1LCAtRU5YSU8pOworCWlmIChyZXQpCisJCXJldHVybiByZXQ7
CisKIAlyZXQgPSBpbnRlbF9yZXNldF9ndWMoZ3QpOwogCWlmIChyZXQpIHsKIAkJRFJNX0VSUk9S
KCJGYWlsZWQgdG8gcmVzZXQgR3VDLCByZXQgPSAlZFxuIiwgcmV0KTsKQEAgLTI0NSw2ICsyNDks
MTAgQEAgc3RhdGljIGludCBndWNfZW5hYmxlX2NvbW11bmljYXRpb24oc3RydWN0IGludGVsX2d1
YyAqZ3VjKQogCiAJR0VNX0JVR19PTihndWNfY29tbXVuaWNhdGlvbl9lbmFibGVkKGd1YykpOwog
CisJcmV0ID0gaTkxNV9pbmplY3RfbG9hZF9lcnJvcihpOTE1LCAtRU5YSU8pOworCWlmIChyZXQp
CisJCXJldHVybiByZXQ7CisKIAlyZXQgPSBpbnRlbF9ndWNfY3RfZW5hYmxlKCZndWMtPmN0KTsK
IAlpZiAocmV0KQogCQlyZXR1cm4gcmV0OwpAQCAtNDE0LDYgKzQyMiwxMCBAQCBzdGF0aWMgaW50
IHVjX2luaXRfd29wY20oc3RydWN0IGludGVsX3VjICp1YykKIAlHRU1fQlVHX09OKCEoc2l6ZSAm
IEdVQ19XT1BDTV9TSVpFX01BU0spKTsKIAlHRU1fQlVHX09OKHNpemUgJiB+R1VDX1dPUENNX1NJ
WkVfTUFTSyk7CiAKKwllcnIgPSBpOTE1X2luamVjdF9sb2FkX2Vycm9yKGd0LT5pOTE1LCAtRU5Y
SU8pOworCWlmIChlcnIpCisJCXJldHVybiBlcnI7CisKIAltYXNrID0gR1VDX1dPUENNX1NJWkVf
TUFTSyB8IEdVQ19XT1BDTV9TSVpFX0xPQ0tFRDsKIAllcnIgPSBpbnRlbF91bmNvcmVfd3JpdGVf
YW5kX3ZlcmlmeSh1bmNvcmUsIEdVQ19XT1BDTV9TSVpFLCBzaXplLCBtYXNrLAogCQkJCQkgICAg
c2l6ZSB8IEdVQ19XT1BDTV9TSVpFX0xPQ0tFRCk7CkBAIC01MTQsNiArNTI2LDEwIEBAIGludCBp
bnRlbF91Y19pbml0X2h3KHN0cnVjdCBpbnRlbF91YyAqdWMpCiAJCQlnb3RvIGVycl9jb21tdW5p
Y2F0aW9uOwogCX0KIAorCXJldCA9IGk5MTVfaW5qZWN0X2xvYWRfZXJyb3IoaTkxNSwgLUVOWElP
KTsKKwlpZiAocmV0KQorCQlnb3RvIGVycl9jb21tdW5pY2F0aW9uOworCiAJZGV2X2luZm8oaTkx
NS0+ZHJtLmRldiwgIkd1QyBmaXJtd2FyZSB2ZXJzaW9uICV1LiV1XG4iLAogCQkgZ3VjLT5mdy5t
YWpvcl92ZXJfZm91bmQsIGd1Yy0+ZncubWlub3JfdmVyX2ZvdW5kKTsKIAlkZXZfaW5mbyhpOTE1
LT5kcm0uZGV2LCAiR3VDIHN1Ym1pc3Npb24gJXNcbiIsCkBAIC01NDAsNyArNTU2LDcgQEAgaW50
IGludGVsX3VjX2luaXRfaHcoc3RydWN0IGludGVsX3VjICp1YykKIAlpZiAoR0VNX1dBUk5fT04o
cmV0ID09IC1FSU8pKQogCQlyZXQgPSAtRUlOVkFMOwogCi0JZGV2X2VycihpOTE1LT5kcm0uZGV2
LCAiR3VDIGluaXRpYWxpemF0aW9uIGZhaWxlZCAlZFxuIiwgcmV0KTsKKwlpOTE1X3Byb2JlX2Vy
cm9yKGk5MTUsICJHdUMgaW5pdGlhbGl6YXRpb24gZmFpbGVkICVkXG4iLCByZXQpOwogCXJldHVy
biByZXQ7CiB9CiAKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVs
X3VjX2Z3LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91Y19mdy5jCmluZGV4
IGFjOTFlM2VmZDAyYi4uNzM0YjIwYmY2MzVmIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC91Yy9pbnRlbF91Y19mdy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3Vj
L2ludGVsX3VjX2Z3LmMKQEAgLTQyNCw4ICs0MjQsMTMgQEAgaW50IGludGVsX3VjX2Z3X3VwbG9h
ZChzdHJ1Y3QgaW50ZWxfdWNfZncgKnVjX2Z3LCBzdHJ1Y3QgaW50ZWxfZ3QgKmd0LAogCS8qIG1h
a2Ugc3VyZSB0aGUgc3RhdHVzIHdhcyBjbGVhcmVkIHRoZSBsYXN0IHRpbWUgd2UgcmVzZXQgdGhl
IHVjICovCiAJR0VNX0JVR19PTihpbnRlbF91Y19md19pc19sb2FkZWQodWNfZncpKTsKIAorCWVy
ciA9IGk5MTVfaW5qZWN0X2xvYWRfZXJyb3IoZ3QtPmk5MTUsIC1FTk9FWEVDKTsKKwlpZiAoZXJy
KQorCQlyZXR1cm4gZXJyOworCiAJaWYgKCFpbnRlbF91Y19md19pc19hdmFpbGFibGUodWNfZncp
KQogCQlyZXR1cm4gLUVOT0VYRUM7CisKIAkvKiBDYWxsIGN1c3RvbSBsb2FkZXIgKi8KIAlpbnRl
bF91Y19md19nZ3R0X2JpbmQodWNfZncsIGd0KTsKIAllcnIgPSB1Y19md194ZmVyKHVjX2Z3LCBn
dCwgd29wY21fb2Zmc2V0LCBkbWFfZmxhZ3MpOwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9nZW0uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtLmMKaW5kZXgg
YmIyYzk5MWI0OWQ3Li41NGExMGM4YzRkZmYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfZ2VtLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW0uYwpAQCAt
MTI0Myw3ICsxMjQzLDcgQEAgaW50IGk5MTVfZ2VtX2luaXRfaHcoc3RydWN0IGRybV9pOTE1X3By
aXZhdGUgKmk5MTUpCiAJLyogV2UgY2FuJ3QgZW5hYmxlIGNvbnRleHRzIHVudGlsIGFsbCBmaXJt
d2FyZSBpcyBsb2FkZWQgKi8KIAlyZXQgPSBpbnRlbF91Y19pbml0X2h3KCZndC0+dWMpOwogCWlm
IChyZXQpIHsKLQkJRFJNX0VSUk9SKCJFbmFibGluZyB1YyBmYWlsZWQgKCVkKVxuIiwgcmV0KTsK
KwkJaTkxNV9wcm9iZV9lcnJvcihpOTE1LCAiRW5hYmxpbmcgdWMgZmFpbGVkICglZClcbiIsIHJl
dCk7CiAJCWdvdG8gb3V0OwogCX0KIAotLSAKMi4xOS4yCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZng=
