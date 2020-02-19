Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D70BC1649E8
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Feb 2020 17:18:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C2E66EC49;
	Wed, 19 Feb 2020 16:18:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0863A6EC49
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Feb 2020 16:18:30 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Feb 2020 08:18:30 -0800
X-IronPort-AV: E=Sophos;i="5.70,461,1574150400"; d="scan'208";a="239732237"
Received: from mwiniars-main.igk.intel.com (HELO localhost) ([172.28.172.64])
 by orsmga006-auth.jf.intel.com with
 ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 19 Feb 2020 08:18:28 -0800
From: =?UTF-8?q?Micha=C5=82=20Winiarski?= <michal.winiarski@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 19 Feb 2020 17:18:21 +0100
Message-Id: <20200219161822.24592-1-michal.winiarski@intel.com>
X-Mailer: git-send-email 2.21.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/pmu: Avoid using globals for CPU
 hotplug state
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QXR0ZW1wdGluZyB0byBiaW5kIC8gdW5iaW5kIG1vZHVsZSBmcm9tIGRldmljZXMgd2hlcmUgd2Ug
aGF2ZSBib3RoCmludGVncmF0ZWQgYW5kIGRpc2NyZWV0ZSBHUFUgaGFuZGxlZCBieSBpOTE1IGNh
biBsZWFkIHRvIGxlYWtzIGFuZAp3YXJuaW5ncyBmcm9tIGNwdWhwOgpFcnJvcjogUmVtb3Zpbmcg
c3RhdGUgWFhYIHdoaWNoIGhhcyBpbnN0YW5jZXMgbGVmdC4KCkxldCdzIG1vdmUgdGhlIHN0YXRl
IHRvIGk5MTVfcG11LgoKRml4ZXM6IDA1NDg4NjczYTRkNCAoImRybS9pOTE1L3BtdTogU3VwcG9y
dCBtdWx0aXBsZSBHUFVzIikKU2lnbmVkLW9mZi1ieTogTWljaGHFgiBXaW5pYXJza2kgPG1pY2hh
bC53aW5pYXJza2lAaW50ZWwuY29tPgpDYzogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxz
b24uY28udWs+CkNjOiBNaWNoYWwgV2FqZGVjemtvIDxtaWNoYWwud2FqZGVjemtvQGludGVsLmNv
bT4KQ2M6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+ClJldmlld2Vk
LWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KLS0tCiBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X3BtdS5jIHwgMTggKysrKysrKysrLS0tLS0tLS0tCiBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X3BtdS5oIHwgIDcgKysrKystLQogMiBmaWxlcyBjaGFuZ2VkLCAx
NCBpbnNlcnRpb25zKCspLCAxMSBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X3BtdS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wbXUuYwpp
bmRleCBhM2I2MWZiOTYyMjYuLjEyZjQ4MThjNzhiOCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9wbXUuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BtdS5j
CkBAIC0xMDQyLDcgKzEwNDIsNyBAQCBzdGF0aWMgdm9pZCBmcmVlX2V2ZW50X2F0dHJpYnV0ZXMo
c3RydWN0IGk5MTVfcG11ICpwbXUpCiAKIHN0YXRpYyBpbnQgaTkxNV9wbXVfY3B1X29ubGluZSh1
bnNpZ25lZCBpbnQgY3B1LCBzdHJ1Y3QgaGxpc3Rfbm9kZSAqbm9kZSkKIHsKLQlzdHJ1Y3QgaTkx
NV9wbXUgKnBtdSA9IGhsaXN0X2VudHJ5X3NhZmUobm9kZSwgdHlwZW9mKCpwbXUpLCBub2RlKTsK
KwlzdHJ1Y3QgaTkxNV9wbXUgKnBtdSA9IGhsaXN0X2VudHJ5X3NhZmUobm9kZSwgdHlwZW9mKCpw
bXUpLCBjcHVocC5ub2RlKTsKIAogCUdFTV9CVUdfT04oIXBtdS0+YmFzZS5ldmVudF9pbml0KTsK
IApAQCAtMTA1NSw3ICsxMDU1LDcgQEAgc3RhdGljIGludCBpOTE1X3BtdV9jcHVfb25saW5lKHVu
c2lnbmVkIGludCBjcHUsIHN0cnVjdCBobGlzdF9ub2RlICpub2RlKQogCiBzdGF0aWMgaW50IGk5
MTVfcG11X2NwdV9vZmZsaW5lKHVuc2lnbmVkIGludCBjcHUsIHN0cnVjdCBobGlzdF9ub2RlICpu
b2RlKQogewotCXN0cnVjdCBpOTE1X3BtdSAqcG11ID0gaGxpc3RfZW50cnlfc2FmZShub2RlLCB0
eXBlb2YoKnBtdSksIG5vZGUpOworCXN0cnVjdCBpOTE1X3BtdSAqcG11ID0gaGxpc3RfZW50cnlf
c2FmZShub2RlLCB0eXBlb2YoKnBtdSksIGNwdWhwLm5vZGUpOwogCXVuc2lnbmVkIGludCB0YXJn
ZXQ7CiAKIAlHRU1fQlVHX09OKCFwbXUtPmJhc2UuZXZlbnRfaW5pdCk7CkBAIC0xMDcyLDggKzEw
NzIsNiBAQCBzdGF0aWMgaW50IGk5MTVfcG11X2NwdV9vZmZsaW5lKHVuc2lnbmVkIGludCBjcHUs
IHN0cnVjdCBobGlzdF9ub2RlICpub2RlKQogCXJldHVybiAwOwogfQogCi1zdGF0aWMgZW51bSBj
cHVocF9zdGF0ZSBjcHVocF9zbG90ID0gQ1BVSFBfSU5WQUxJRDsKLQogc3RhdGljIGludCBpOTE1
X3BtdV9yZWdpc3Rlcl9jcHVocF9zdGF0ZShzdHJ1Y3QgaTkxNV9wbXUgKnBtdSkKIHsKIAllbnVt
IGNwdWhwX3N0YXRlIHNsb3Q7CkBAIC0xMDg3LDIxICsxMDg1LDIyIEBAIHN0YXRpYyBpbnQgaTkx
NV9wbXVfcmVnaXN0ZXJfY3B1aHBfc3RhdGUoc3RydWN0IGk5MTVfcG11ICpwbXUpCiAJCXJldHVy
biByZXQ7CiAKIAlzbG90ID0gcmV0OwotCXJldCA9IGNwdWhwX3N0YXRlX2FkZF9pbnN0YW5jZShz
bG90LCAmcG11LT5ub2RlKTsKKwlyZXQgPSBjcHVocF9zdGF0ZV9hZGRfaW5zdGFuY2Uoc2xvdCwg
JnBtdS0+Y3B1aHAubm9kZSk7CiAJaWYgKHJldCkgewogCQljcHVocF9yZW1vdmVfbXVsdGlfc3Rh
dGUoc2xvdCk7CiAJCXJldHVybiByZXQ7CiAJfQogCi0JY3B1aHBfc2xvdCA9IHNsb3Q7CisJcG11
LT5jcHVocC5zbG90ID0gc2xvdDsKIAlyZXR1cm4gMDsKIH0KIAogc3RhdGljIHZvaWQgaTkxNV9w
bXVfdW5yZWdpc3Rlcl9jcHVocF9zdGF0ZShzdHJ1Y3QgaTkxNV9wbXUgKnBtdSkKIHsKLQlXQVJO
X09OKGNwdWhwX3Nsb3QgPT0gQ1BVSFBfSU5WQUxJRCk7Ci0JV0FSTl9PTihjcHVocF9zdGF0ZV9y
ZW1vdmVfaW5zdGFuY2UoY3B1aHBfc2xvdCwgJnBtdS0+bm9kZSkpOwotCWNwdWhwX3JlbW92ZV9t
dWx0aV9zdGF0ZShjcHVocF9zbG90KTsKKwlXQVJOX09OKHBtdS0+Y3B1aHAuc2xvdCA9PSBDUFVI
UF9JTlZBTElEKTsKKwlXQVJOX09OKGNwdWhwX3N0YXRlX3JlbW92ZV9pbnN0YW5jZShwbXUtPmNw
dWhwLnNsb3QsICZwbXUtPmNwdWhwLm5vZGUpKTsKKwljcHVocF9yZW1vdmVfbXVsdGlfc3RhdGUo
cG11LT5jcHVocC5zbG90KTsKKwlwbXUtPmNwdWhwLnNsb3QgPSBDUFVIUF9JTlZBTElEOwogfQog
CiBzdGF0aWMgYm9vbCBpc19pZ3Aoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCkBAIC0x
MTI4LDYgKzExMjcsNyBAQCB2b2lkIGk5MTVfcG11X3JlZ2lzdGVyKHN0cnVjdCBkcm1faTkxNV9w
cml2YXRlICppOTE1KQogCXNwaW5fbG9ja19pbml0KCZwbXUtPmxvY2spOwogCWhydGltZXJfaW5p
dCgmcG11LT50aW1lciwgQ0xPQ0tfTU9OT1RPTklDLCBIUlRJTUVSX01PREVfUkVMKTsKIAlwbXUt
PnRpbWVyLmZ1bmN0aW9uID0gaTkxNV9zYW1wbGU7CisJcG11LT5jcHVocC5zbG90ID0gQ1BVSFBf
SU5WQUxJRDsKIAogCWlmICghaXNfaWdwKGk5MTUpKSB7CiAJCXBtdS0+bmFtZSA9IGthc3ByaW50
ZihHRlBfS0VSTkVMLApkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wbXUu
aCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcG11LmgKaW5kZXggNmMxNjQ3YzVkYWYyLi4y
MDcwNTgzOTFjZWMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcG11LmgK
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wbXUuaApAQCAtMzksOSArMzksMTIgQEAg
c3RydWN0IGk5MTVfcG11X3NhbXBsZSB7CiAKIHN0cnVjdCBpOTE1X3BtdSB7CiAJLyoqCi0JICog
QG5vZGU6IExpc3Qgbm9kZSBmb3IgQ1BVIGhvdHBsdWcgaGFuZGxpbmcuCisJICogQGNwdWhwOiBT
dHJ1Y3QgdXNlZCBmb3IgQ1BVIGhvdHBsdWcgaGFuZGxpbmcuCiAJICovCi0Jc3RydWN0IGhsaXN0
X25vZGUgbm9kZTsKKwlzdHJ1Y3QgeworCQlzdHJ1Y3QgaGxpc3Rfbm9kZSBub2RlOworCQllbnVt
IGNwdWhwX3N0YXRlIHNsb3Q7CisJfSBjcHVocDsKIAkvKioKIAkgKiBAYmFzZTogUE1VIGJhc2Uu
CiAJICovCi0tIAoyLjIxLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeAo=
