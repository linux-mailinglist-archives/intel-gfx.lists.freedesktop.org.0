Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A9B8494FBD
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Aug 2019 23:18:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7FAB76E2BA;
	Mon, 19 Aug 2019 21:18:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A6E606E29E
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 Aug 2019 21:17:58 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Aug 2019 14:17:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,406,1559545200"; d="scan'208";a="329496181"
Received: from jssummer-xeon.ra.intel.com ([10.23.184.90])
 by orsmga004.jf.intel.com with ESMTP; 19 Aug 2019 14:17:57 -0700
From: Stuart Summers <stuart.summers@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 19 Aug 2019 14:18:42 -0700
Message-Id: <20190819211849.34085-3-stuart.summers@intel.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190819211849.34085-1-stuart.summers@intel.com>
References: <20190819211849.34085-1-stuart.summers@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/9] drm/i915: Add function to set SSEU info per
 platform
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

QWRkIGEgbmV3IGZ1bmN0aW9uIHRvIGFsbG93IGVhY2ggcGxhdGZvcm0gdG8gc2V0IG1heGltdW0K
c2xpY2UsIHN1YnNsaWNlLCBhbmQgRVUgaW5mb3JtYXRpb24gdG8gcmVkdWNlIGNvZGUgZHVwbGlj
YXRpb24uCgpTaWduZWQtb2ZmLWJ5OiBTdHVhcnQgU3VtbWVycyA8c3R1YXJ0LnN1bW1lcnNAaW50
ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3NzZXUuYyAgICAgfCAg
OCArKysrKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfc3NldS5oICAgICB8ICAzICsr
CiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RlYnVnZnMuYyAgICAgIHwgIDYgKystLQogZHJp
dmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGV2aWNlX2luZm8uYyB8IDM5ICsrKysrKysrKy0tLS0t
LS0tLS0tLS0tLQogNCBmaWxlcyBjaGFuZ2VkLCAyOCBpbnNlcnRpb25zKCspLCAyOCBkZWxldGlv
bnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9zc2V1LmMg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9zc2V1LmMKaW5kZXggNmJmMmQ4N2RhMTA5
Li42NzI3MDc5ZWI5YjYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVs
X3NzZXUuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9zc2V1LmMKQEAgLTgs
NiArOCwxNCBAQAogI2luY2x1ZGUgImludGVsX2xyY19yZWcuaCIKICNpbmNsdWRlICJpbnRlbF9z
c2V1LmgiCiAKK3ZvaWQgaW50ZWxfc3NldV9zZXRfaW5mbyhzdHJ1Y3Qgc3NldV9kZXZfaW5mbyAq
c3NldSwgdTggbWF4X3NsaWNlcywKKwkJCSB1OCBtYXhfc3Vic2xpY2VzLCB1OCBtYXhfZXVzX3Bl
cl9zdWJzbGljZSkKK3sKKwlzc2V1LT5tYXhfc2xpY2VzID0gbWF4X3NsaWNlczsKKwlzc2V1LT5t
YXhfc3Vic2xpY2VzID0gbWF4X3N1YnNsaWNlczsKKwlzc2V1LT5tYXhfZXVzX3Blcl9zdWJzbGlj
ZSA9IG1heF9ldXNfcGVyX3N1YnNsaWNlOworfQorCiB1bnNpZ25lZCBpbnQKIGludGVsX3NzZXVf
c3Vic2xpY2VfdG90YWwoY29uc3Qgc3RydWN0IHNzZXVfZGV2X2luZm8gKnNzZXUpCiB7CmRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9zc2V1LmggYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC9pbnRlbF9zc2V1LmgKaW5kZXggYjUwZDA0MDFhNGUyLi42NGU0N2RhZDA3
YmUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3NzZXUuaAorKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9zc2V1LmgKQEAgLTYzLDYgKzYzLDkgQEAg
aW50ZWxfc3NldV9mcm9tX2RldmljZV9pbmZvKGNvbnN0IHN0cnVjdCBzc2V1X2Rldl9pbmZvICpz
c2V1KQogCXJldHVybiB2YWx1ZTsKIH0KIAordm9pZCBpbnRlbF9zc2V1X3NldF9pbmZvKHN0cnVj
dCBzc2V1X2Rldl9pbmZvICpzc2V1LCB1OCBtYXhfc2xpY2VzLAorCQkJIHU4IG1heF9zdWJzbGlj
ZXMsIHU4IG1heF9ldXNfcGVyX3N1YnNsaWNlKTsKKwogdW5zaWduZWQgaW50CiBpbnRlbF9zc2V1
X3N1YnNsaWNlX3RvdGFsKGNvbnN0IHN0cnVjdCBzc2V1X2Rldl9pbmZvICpzc2V1KTsKIApkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kZWJ1Z2ZzLmMgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X2RlYnVnZnMuYwppbmRleCBiNTJjMDRmNDRmMzIuLmFiZjBmNmJhMjEz
YyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kZWJ1Z2ZzLmMKKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kZWJ1Z2ZzLmMKQEAgLTM5NDUsOSArMzk0NSw5IEBA
IHN0YXRpYyBpbnQgaTkxNV9zc2V1X3N0YXR1cyhzdHJ1Y3Qgc2VxX2ZpbGUgKm0sIHZvaWQgKnVu
dXNlZCkKIAogCXNlcV9wdXRzKG0sICJTU0VVIERldmljZSBTdGF0dXNcbiIpOwogCW1lbXNldCgm
c3NldSwgMCwgc2l6ZW9mKHNzZXUpKTsKLQlzc2V1Lm1heF9zbGljZXMgPSBpbmZvLT5zc2V1Lm1h
eF9zbGljZXM7Ci0Jc3NldS5tYXhfc3Vic2xpY2VzID0gaW5mby0+c3NldS5tYXhfc3Vic2xpY2Vz
OwotCXNzZXUubWF4X2V1c19wZXJfc3Vic2xpY2UgPSBpbmZvLT5zc2V1Lm1heF9ldXNfcGVyX3N1
YnNsaWNlOworCWludGVsX3NzZXVfc2V0X2luZm8oJnNzZXUsIGluZm8tPnNzZXUubWF4X3NsaWNl
cywKKwkJCSAgICBpbmZvLT5zc2V1Lm1heF9zdWJzbGljZXMsCisJCQkgICAgaW5mby0+c3NldS5t
YXhfZXVzX3Blcl9zdWJzbGljZSk7CiAKIAl3aXRoX2ludGVsX3J1bnRpbWVfcG0oJmRldl9wcml2
LT5ydW50aW1lX3BtLCB3YWtlcmVmKSB7CiAJCWlmIChJU19DSEVSUllWSUVXKGRldl9wcml2KSkK
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RldmljZV9pbmZvLmMgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kZXZpY2VfaW5mby5jCmluZGV4IGY5OWM5ZmQ0OTdi
Mi4uOWE3OWQ5ZDU0N2M1IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9k
ZXZpY2VfaW5mby5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RldmljZV9pbmZv
LmMKQEAgLTE5MSwxNSArMTkxLDEwIEBAIHN0YXRpYyB2b2lkIGdlbjExX3NzZXVfaW5mb19pbml0
KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKIAl1OCBldV9lbjsKIAlpbnQgczsK
IAotCWlmIChJU19FTEtIQVJUTEFLRShkZXZfcHJpdikpIHsKLQkJc3NldS0+bWF4X3NsaWNlcyA9
IDE7Ci0JCXNzZXUtPm1heF9zdWJzbGljZXMgPSA0OwotCQlzc2V1LT5tYXhfZXVzX3Blcl9zdWJz
bGljZSA9IDg7Ci0JfSBlbHNlIHsKLQkJc3NldS0+bWF4X3NsaWNlcyA9IDE7Ci0JCXNzZXUtPm1h
eF9zdWJzbGljZXMgPSA4OwotCQlzc2V1LT5tYXhfZXVzX3Blcl9zdWJzbGljZSA9IDg7Ci0JfQor
CWlmIChJU19FTEtIQVJUTEFLRShkZXZfcHJpdikpCisJCWludGVsX3NzZXVfc2V0X2luZm8oc3Nl
dSwgMSwgNCwgOCk7CisJZWxzZQorCQlpbnRlbF9zc2V1X3NldF9pbmZvKHNzZXUsIDEsIDgsIDgp
OwogCiAJc19lbiA9IEk5MTVfUkVBRChHRU4xMV9HVF9TTElDRV9FTkFCTEUpICYgR0VOMTFfR1Rf
U19FTkFfTUFTSzsKIAlzc19lbiA9IH5JOTE1X1JFQUQoR0VOMTFfR1RfU1VCU0xJQ0VfRElTQUJM
RSk7CkBAIC0yMzYsMTEgKzIzMSwxMCBAQCBzdGF0aWMgdm9pZCBnZW4xMF9zc2V1X2luZm9faW5p
dChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiAJY29uc3QgaW50IGV1X21hc2sg
PSAweGZmOwogCXUzMiBzdWJzbGljZV9tYXNrLCBldV9lbjsKIAorCWludGVsX3NzZXVfc2V0X2lu
Zm8oc3NldSwgNiwgNCwgOCk7CisKIAlzc2V1LT5zbGljZV9tYXNrID0gKGZ1c2UyICYgR0VOMTBf
RjJfU19FTkFfTUFTSykgPj4KIAkJCSAgICBHRU4xMF9GMl9TX0VOQV9TSElGVDsKLQlzc2V1LT5t
YXhfc2xpY2VzID0gNjsKLQlzc2V1LT5tYXhfc3Vic2xpY2VzID0gNDsKLQlzc2V1LT5tYXhfZXVz
X3Blcl9zdWJzbGljZSA9IDg7CiAKIAlzdWJzbGljZV9tYXNrID0gKDEgPDwgNCkgLSAxOwogCXN1
YnNsaWNlX21hc2sgJj0gfigoZnVzZTIgJiBHRU4xMF9GMl9TU19ESVNfTUFTSykgPj4KQEAgLTMx
NCw5ICszMDgsNyBAQCBzdGF0aWMgdm9pZCBjaGVycnl2aWV3X3NzZXVfaW5mb19pbml0KHN0cnVj
dCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKIAlmdXNlID0gSTkxNV9SRUFEKENIVl9GVVNF
X0dUKTsKIAogCXNzZXUtPnNsaWNlX21hc2sgPSBCSVQoMCk7Ci0Jc3NldS0+bWF4X3NsaWNlcyA9
IDE7Ci0Jc3NldS0+bWF4X3N1YnNsaWNlcyA9IDI7Ci0Jc3NldS0+bWF4X2V1c19wZXJfc3Vic2xp
Y2UgPSA4OworCWludGVsX3NzZXVfc2V0X2luZm8oc3NldSwgMSwgMiwgOCk7CiAKIAlpZiAoIShm
dXNlICYgQ0hWX0ZHVF9ESVNBQkxFX1NTMCkpIHsKIAkJdTggZGlzYWJsZWRfbWFzayA9CkBAIC0z
NzIsOSArMzY0LDggQEAgc3RhdGljIHZvaWQgZ2VuOV9zc2V1X2luZm9faW5pdChzdHJ1Y3QgZHJt
X2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiAJc3NldS0+c2xpY2VfbWFzayA9IChmdXNlMiAmIEdF
TjhfRjJfU19FTkFfTUFTSykgPj4gR0VOOF9GMl9TX0VOQV9TSElGVDsKIAogCS8qIEJYVCBoYXMg
YSBzaW5nbGUgc2xpY2UgYW5kIGF0IG1vc3QgMyBzdWJzbGljZXMuICovCi0Jc3NldS0+bWF4X3Ns
aWNlcyA9IElTX0dFTjlfTFAoZGV2X3ByaXYpID8gMSA6IDM7Ci0Jc3NldS0+bWF4X3N1YnNsaWNl
cyA9IElTX0dFTjlfTFAoZGV2X3ByaXYpID8gMyA6IDQ7Ci0Jc3NldS0+bWF4X2V1c19wZXJfc3Vi
c2xpY2UgPSA4OworCWludGVsX3NzZXVfc2V0X2luZm8oc3NldSwgSVNfR0VOOV9MUChkZXZfcHJp
dikgPyAxIDogMywKKwkJCSAgICBJU19HRU45X0xQKGRldl9wcml2KSA/IDMgOiA0LCA4KTsKIAog
CS8qCiAJICogVGhlIHN1YnNsaWNlIGRpc2FibGUgZmllbGQgaXMgZ2xvYmFsLCBpLmUuIGl0IGFw
cGxpZXMKQEAgLTQ3Myw5ICs0NjQsNyBAQCBzdGF0aWMgdm9pZCBicm9hZHdlbGxfc3NldV9pbmZv
X2luaXQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQogCiAJZnVzZTIgPSBJOTE1
X1JFQUQoR0VOOF9GVVNFMik7CiAJc3NldS0+c2xpY2VfbWFzayA9IChmdXNlMiAmIEdFTjhfRjJf
U19FTkFfTUFTSykgPj4gR0VOOF9GMl9TX0VOQV9TSElGVDsKLQlzc2V1LT5tYXhfc2xpY2VzID0g
MzsKLQlzc2V1LT5tYXhfc3Vic2xpY2VzID0gMzsKLQlzc2V1LT5tYXhfZXVzX3Blcl9zdWJzbGlj
ZSA9IDg7CisJaW50ZWxfc3NldV9zZXRfaW5mbyhzc2V1LCAzLCAzLCA4KTsKIAogCS8qCiAJICog
VGhlIHN1YnNsaWNlIGRpc2FibGUgZmllbGQgaXMgZ2xvYmFsLCBpLmUuIGl0IGFwcGxpZXMKQEAg
LTU3Nyw5ICs1NjYsNiBAQCBzdGF0aWMgdm9pZCBoYXN3ZWxsX3NzZXVfaW5mb19pbml0KHN0cnVj
dCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKIAkJYnJlYWs7CiAJfQogCi0Jc3NldS0+bWF4
X3NsaWNlcyA9IGh3ZWlnaHQ4KHNzZXUtPnNsaWNlX21hc2spOwotCXNzZXUtPm1heF9zdWJzbGlj
ZXMgPSBod2VpZ2h0OChzc2V1LT5zdWJzbGljZV9tYXNrWzBdKTsKLQogCWZ1c2UxID0gSTkxNV9S
RUFEKEhTV19QQVZQX0ZVU0UxKTsKIAlzd2l0Y2ggKChmdXNlMSAmIEhTV19GMV9FVV9ESVNfTUFT
SykgPj4gSFNXX0YxX0VVX0RJU19TSElGVCkgewogCWRlZmF1bHQ6CkBAIC01OTYsNyArNTgyLDEw
IEBAIHN0YXRpYyB2b2lkIGhhc3dlbGxfc3NldV9pbmZvX2luaXQoc3RydWN0IGRybV9pOTE1X3By
aXZhdGUgKmRldl9wcml2KQogCQlzc2V1LT5ldV9wZXJfc3Vic2xpY2UgPSA2OwogCQlicmVhazsK
IAl9Ci0Jc3NldS0+bWF4X2V1c19wZXJfc3Vic2xpY2UgPSBzc2V1LT5ldV9wZXJfc3Vic2xpY2U7
CisKKwlpbnRlbF9zc2V1X3NldF9pbmZvKHNzZXUsIGh3ZWlnaHQ4KHNzZXUtPnNsaWNlX21hc2sp
LAorCQkJICAgIGh3ZWlnaHQ4KHNzZXUtPnN1YnNsaWNlX21hc2tbMF0pLAorCQkJICAgIHNzZXUt
PmV1X3Blcl9zdWJzbGljZSk7CiAKIAlmb3IgKHMgPSAwOyBzIDwgc3NldS0+bWF4X3NsaWNlczsg
cysrKSB7CiAJCWZvciAoc3MgPSAwOyBzcyA8IHNzZXUtPm1heF9zdWJzbGljZXM7IHNzKyspIHsK
LS0gCjIuMjIuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
