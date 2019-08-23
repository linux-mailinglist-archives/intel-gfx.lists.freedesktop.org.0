Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7821F9B429
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Aug 2019 18:02:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4DFD06ECE1;
	Fri, 23 Aug 2019 16:02:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EF3966ECDC
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Aug 2019 16:02:15 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Aug 2019 09:02:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,421,1559545200"; d="scan'208";a="203807741"
Received: from jssummer-xeon.ra.intel.com ([10.23.184.90])
 by fmsmga004.fm.intel.com with ESMTP; 23 Aug 2019 09:02:15 -0700
From: Stuart Summers <stuart.summers@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 23 Aug 2019 09:03:01 -0700
Message-Id: <20190823160307.180813-6-stuart.summers@intel.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190823160307.180813-1-stuart.summers@intel.com>
References: <20190823160307.180813-1-stuart.summers@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 05/11] drm/i915: Use local variables for
 subslice_mask for device info
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

V2hlbiBzZXR0aW5nIHVwIHN1YnNsaWNlX21hc2ssIGluc3RlYWQgb2Ygb3BlcmF0aW5nIG9uIHRo
ZSBzbGljZQphcnJheSBkaXJlY3RseSwgdXNlIGEgbG9jYWwgdmFyaWFibGUgdG8gc3RhcnQgYml0
cyBwZXIgc2xpY2UsIHRoZW4KdXNlIHRoaXMgdG8gc2V0IHRoZSBwZXIgc2xpY2UgYXJyYXkgaW4g
b25lIHN0ZXAuCgpTaWduZWQtb2ZmLWJ5OiBTdHVhcnQgU3VtbWVycyA8c3R1YXJ0LnN1bW1lcnNA
aW50ZWwuY29tPgpSZXZpZXdlZC1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24u
Y28udWs+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGV2aWNlX2luZm8uYyB8IDQ5
ICsrKysrKysrKysrKystLS0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDI2IGluc2VydGlvbnMo
KyksIDIzIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2lu
dGVsX2RldmljZV9pbmZvLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kZXZpY2VfaW5m
by5jCmluZGV4IGIxYTc5ZWQ0MDhlYi4uNTI1MTVlZmU5ZjRlIDEwMDY0NAotLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pbnRlbF9kZXZpY2VfaW5mby5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2ludGVsX2RldmljZV9pbmZvLmMKQEAgLTIzNSwxOCArMjM1LDYgQEAgc3RhdGljIHZvaWQg
Z2VuMTBfc3NldV9pbmZvX2luaXQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQog
CXNzZXUtPnNsaWNlX21hc2sgPSAoZnVzZTIgJiBHRU4xMF9GMl9TX0VOQV9NQVNLKSA+PgogCQkJ
ICAgIEdFTjEwX0YyX1NfRU5BX1NISUZUOwogCi0Jc3Vic2xpY2VfbWFzayA9ICgxIDw8IDQpIC0g
MTsKLQlzdWJzbGljZV9tYXNrICY9IH4oKGZ1c2UyICYgR0VOMTBfRjJfU1NfRElTX01BU0spID4+
Ci0JCQkgICBHRU4xMF9GMl9TU19ESVNfU0hJRlQpOwotCi0JLyoKLQkgKiBTbGljZTAgY2FuIGhh
dmUgdXAgdG8gMyBzdWJzbGljZXMsIGJ1dCB0aGVyZSBhcmUgb25seSAyIGluCi0JICogc2xpY2Ux
LzIuCi0JICovCi0Jc3NldS0+c3Vic2xpY2VfbWFza1swXSA9IHN1YnNsaWNlX21hc2s7Ci0JZm9y
IChzID0gMTsgcyA8IHNzZXUtPm1heF9zbGljZXM7IHMrKykKLQkJc3NldS0+c3Vic2xpY2VfbWFz
a1tzXSA9IHN1YnNsaWNlX21hc2sgJiAweDM7Ci0KIAkvKiBTbGljZTAgKi8KIAlldV9lbiA9IH5J
OTE1X1JFQUQoR0VOOF9FVV9ESVNBQkxFMCk7CiAJZm9yIChzcyA9IDA7IHNzIDwgc3NldS0+bWF4
X3N1YnNsaWNlczsgc3MrKykKQEAgLTI3MCwxNCArMjU4LDI0IEBAIHN0YXRpYyB2b2lkIGdlbjEw
X3NzZXVfaW5mb19pbml0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKIAlldV9l
biA9IH5JOTE1X1JFQUQoR0VOMTBfRVVfRElTQUJMRTMpOwogCXNzZXVfc2V0X2V1cyhzc2V1LCA1
LCAxLCBldV9lbiAmIGV1X21hc2spOwogCi0JLyogRG8gYSBzZWNvbmQgcGFzcyB3aGVyZSB3ZSBt
YXJrIHRoZSBzdWJzbGljZXMgZGlzYWJsZWQgaWYgYWxsIHRoZWlyCi0JICogZXVzIGFyZSBvZmYu
Ci0JICovCisJc3Vic2xpY2VfbWFzayA9ICgxIDw8IDQpIC0gMTsKKwlzdWJzbGljZV9tYXNrICY9
IH4oKGZ1c2UyICYgR0VOMTBfRjJfU1NfRElTX01BU0spID4+CisJCQkgICBHRU4xMF9GMl9TU19E
SVNfU0hJRlQpOworCiAJZm9yIChzID0gMDsgcyA8IHNzZXUtPm1heF9zbGljZXM7IHMrKykgewor
CQl1MzIgc3Vic2xpY2VfbWFza193aXRoX2V1cyA9IHN1YnNsaWNlX21hc2s7CisKIAkJZm9yIChz
cyA9IDA7IHNzIDwgc3NldS0+bWF4X3N1YnNsaWNlczsgc3MrKykgewogCQkJaWYgKHNzZXVfZ2V0
X2V1cyhzc2V1LCBzLCBzcykgPT0gMCkKLQkJCQlzc2V1LT5zdWJzbGljZV9tYXNrW3NdICY9IH5C
SVQoc3MpOworCQkJCXN1YnNsaWNlX21hc2tfd2l0aF9ldXMgJj0gfkJJVChzcyk7CiAJCX0KKwor
CQkvKgorCQkgKiBTbGljZTAgY2FuIGhhdmUgdXAgdG8gMyBzdWJzbGljZXMsIGJ1dCB0aGVyZSBh
cmUgb25seSAyIGluCisJCSAqIHNsaWNlMS8yLgorCQkgKi8KKwkJc3NldS0+c3Vic2xpY2VfbWFz
a1tzXSA9IHMgPT0gMCA/IHN1YnNsaWNlX21hc2tfd2l0aF9ldXMgOgorCQkJCQkJICBzdWJzbGlj
ZV9tYXNrX3dpdGhfZXVzICYgMHgzOwogCX0KIAogCXNzZXUtPmV1X3RvdGFsID0gY29tcHV0ZV9l
dV90b3RhbChzc2V1KTsKQEAgLTMwMyw2ICszMDEsNyBAQCBzdGF0aWMgdm9pZCBjaGVycnl2aWV3
X3NzZXVfaW5mb19pbml0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKIHsKIAlz
dHJ1Y3Qgc3NldV9kZXZfaW5mbyAqc3NldSA9ICZSVU5USU1FX0lORk8oZGV2X3ByaXYpLT5zc2V1
OwogCXUzMiBmdXNlOworCXU4IHN1YnNsaWNlX21hc2sgPSAwOwogCiAJZnVzZSA9IEk5MTVfUkVB
RChDSFZfRlVTRV9HVCk7CiAKQEAgLTMxNiw3ICszMTUsNyBAQCBzdGF0aWMgdm9pZCBjaGVycnl2
aWV3X3NzZXVfaW5mb19pbml0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKIAkJ
CSgoKGZ1c2UgJiBDSFZfRkdUX0VVX0RJU19TUzBfUjFfTUFTSykgPj4KIAkJCSAgQ0hWX0ZHVF9F
VV9ESVNfU1MwX1IxX1NISUZUKSA8PCA0KTsKIAotCQlzc2V1LT5zdWJzbGljZV9tYXNrWzBdIHw9
IEJJVCgwKTsKKwkJc3Vic2xpY2VfbWFzayB8PSBCSVQoMCk7CiAJCXNzZXVfc2V0X2V1cyhzc2V1
LCAwLCAwLCB+ZGlzYWJsZWRfbWFzayk7CiAJfQogCkBAIC0zMjcsMTAgKzMyNiwxMiBAQCBzdGF0
aWMgdm9pZCBjaGVycnl2aWV3X3NzZXVfaW5mb19pbml0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRl
ICpkZXZfcHJpdikKIAkJCSgoKGZ1c2UgJiBDSFZfRkdUX0VVX0RJU19TUzFfUjFfTUFTSykgPj4K
IAkJCSAgQ0hWX0ZHVF9FVV9ESVNfU1MxX1IxX1NISUZUKSA8PCA0KTsKIAotCQlzc2V1LT5zdWJz
bGljZV9tYXNrWzBdIHw9IEJJVCgxKTsKKwkJc3Vic2xpY2VfbWFzayB8PSBCSVQoMSk7CiAJCXNz
ZXVfc2V0X2V1cyhzc2V1LCAwLCAxLCB+ZGlzYWJsZWRfbWFzayk7CiAJfQogCisJc3NldS0+c3Vi
c2xpY2VfbWFza1swXSA9IHN1YnNsaWNlX21hc2s7CisKIAlzc2V1LT5ldV90b3RhbCA9IGNvbXB1
dGVfZXVfdG90YWwoc3NldSk7CiAKIAkvKgpAQCAtNTQwLDYgKzU0MSw3IEBAIHN0YXRpYyB2b2lk
IGhhc3dlbGxfc3NldV9pbmZvX2luaXQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2
KQogewogCXN0cnVjdCBzc2V1X2Rldl9pbmZvICpzc2V1ID0gJlJVTlRJTUVfSU5GTyhkZXZfcHJp
diktPnNzZXU7CiAJdTMyIGZ1c2UxOworCXU4IHN1YnNsaWNlX21hc2sgPSAwOwogCWludCBzLCBz
czsKIAogCS8qCkBAIC01NTIsMTYgKzU1NCwxNSBAQCBzdGF0aWMgdm9pZCBoYXN3ZWxsX3NzZXVf
aW5mb19pbml0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKIAkJLyogZmFsbCB0
aHJvdWdoICovCiAJY2FzZSAxOgogCQlzc2V1LT5zbGljZV9tYXNrID0gQklUKDApOwotCQlzc2V1
LT5zdWJzbGljZV9tYXNrWzBdID0gQklUKDApOworCQlzdWJzbGljZV9tYXNrID0gQklUKDApOwog
CQlicmVhazsKIAljYXNlIDI6CiAJCXNzZXUtPnNsaWNlX21hc2sgPSBCSVQoMCk7Ci0JCXNzZXUt
PnN1YnNsaWNlX21hc2tbMF0gPSBCSVQoMCkgfCBCSVQoMSk7CisJCXN1YnNsaWNlX21hc2sgPSBC
SVQoMCkgfCBCSVQoMSk7CiAJCWJyZWFrOwogCWNhc2UgMzoKIAkJc3NldS0+c2xpY2VfbWFzayA9
IEJJVCgwKSB8IEJJVCgxKTsKLQkJc3NldS0+c3Vic2xpY2VfbWFza1swXSA9IEJJVCgwKSB8IEJJ
VCgxKTsKLQkJc3NldS0+c3Vic2xpY2VfbWFza1sxXSA9IEJJVCgwKSB8IEJJVCgxKTsKKwkJc3Vi
c2xpY2VfbWFzayA9IEJJVCgwKSB8IEJJVCgxKTsKIAkJYnJlYWs7CiAJfQogCkBAIC01ODMsMTAg
KzU4NCwxMiBAQCBzdGF0aWMgdm9pZCBoYXN3ZWxsX3NzZXVfaW5mb19pbml0KHN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlICpkZXZfcHJpdikKIAl9CiAKIAlpbnRlbF9zc2V1X3NldF9pbmZvKHNzZXUs
IGh3ZWlnaHQ4KHNzZXUtPnNsaWNlX21hc2spLAotCQkJICAgIGh3ZWlnaHQ4KHNzZXUtPnN1YnNs
aWNlX21hc2tbMF0pLAorCQkJICAgIGh3ZWlnaHQ4KHN1YnNsaWNlX21hc2spLAogCQkJICAgIHNz
ZXUtPmV1X3Blcl9zdWJzbGljZSk7CiAKIAlmb3IgKHMgPSAwOyBzIDwgc3NldS0+bWF4X3NsaWNl
czsgcysrKSB7CisJCXNzZXUtPnN1YnNsaWNlX21hc2tbc10gPSBzdWJzbGljZV9tYXNrOworCiAJ
CWZvciAoc3MgPSAwOyBzcyA8IHNzZXUtPm1heF9zdWJzbGljZXM7IHNzKyspIHsKIAkJCXNzZXVf
c2V0X2V1cyhzc2V1LCBzLCBzcywKIAkJCQkgICAgICgxVUwgPDwgc3NldS0+ZXVfcGVyX3N1YnNs
aWNlKSAtIDEpOwotLSAKMi4yMi4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZng=
