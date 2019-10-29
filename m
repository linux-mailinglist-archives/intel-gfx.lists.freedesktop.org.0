Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 80CFEE8222
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Oct 2019 08:22:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE7596E0DB;
	Tue, 29 Oct 2019 07:22:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 558F56E0D3
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Oct 2019 07:22:33 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 29 Oct 2019 08:22:19 +0100
Message-Id: <20191029072229.27092-2-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191029072229.27092-1-maarten.lankhorst@linux.intel.com>
References: <20191029072229.27092-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 02/12] drm/i915: Handle a few more cases for crtc
 hw/uapi split, v3.
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

V2UgYXJlIHN0aWxsIGxvb2tpbmcgYXQgZHJtX2NydGNfc3RhdGUgaW4gYSBmZXcgcGxhY2VzLCBj
b252ZXJ0IHRob3NlCnRvIHVzZSBpbnRlbF9jcnRjX3N0YXRlIGluc3RlYWQuCgpDaGFuZ2VzIHNp
bmNlIHYxOgotIE1vdmUgdG8gYmVmb3JlIHVhcGkvaHcgc3BsaXQuCi0gQWRkIGh1bmtzIGZvciBp
bnRlbF9wbS5jIGFzIHdlbGwuCkNoYW5nZXMgc2luY2UgdjI6Ci0gSW5jb3Jwb3JhdGUgVmlsbGUn
cyBmZWVkYmFjay4KClNpZ25lZC1vZmYtYnk6IE1hYXJ0ZW4gTGFua2hvcnN0IDxtYWFydGVuLmxh
bmtob3JzdEBsaW51eC5pbnRlbC5jb20+ClJldmlld2VkLWJ5OiBNYXR0IFJvcGVyIDxtYXR0aGV3
LmQucm9wZXJAaW50ZWwuY29tPgpSZXZpZXdlZC1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5z
eXJqYWxhQGxpbnV4LmludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2Rpc3BsYXkuYyB8IDE1ICsrKysrKysrLS0tLS0tLQogZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kcF9tc3QuYyAgfCAxMiArKysrKysrKy0tLS0KIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMgICAgIHwgMTYgKysrKysrKy0tLS0tLS0tLQog
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYyAgICAgICAgICAgICAgfCAgNiArKy0tLS0K
IDQgZmlsZXMgY2hhbmdlZCwgMjUgaW5zZXJ0aW9ucygrKSwgMjQgZGVsZXRpb25zKC0pCgpkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwppbmRleCA5ZGNlMmU5
ZTUzNzYuLjlhN2MxNWZhZDM2NyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kaXNwbGF5LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kaXNwbGF5LmMKQEAgLTE2NzIwLDggKzE2NzIwLDcgQEAgc3RhdGljIGludCBpbnRlbF9p
bml0aWFsX2NvbW1pdChzdHJ1Y3QgZHJtX2RldmljZSAqZGV2KQogewogCXN0cnVjdCBkcm1fYXRv
bWljX3N0YXRlICpzdGF0ZSA9IE5VTEw7CiAJc3RydWN0IGRybV9tb2Rlc2V0X2FjcXVpcmVfY3R4
IGN0eDsKLQlzdHJ1Y3QgZHJtX2NydGMgKmNydGM7Ci0Jc3RydWN0IGRybV9jcnRjX3N0YXRlICpj
cnRjX3N0YXRlOworCXN0cnVjdCBpbnRlbF9jcnRjICpjcnRjOwogCWludCByZXQgPSAwOwogCiAJ
c3RhdGUgPSBkcm1fYXRvbWljX3N0YXRlX2FsbG9jKGRldik7CkBAIC0xNjczMywxNSArMTY3MzIs
MTcgQEAgc3RhdGljIGludCBpbnRlbF9pbml0aWFsX2NvbW1pdChzdHJ1Y3QgZHJtX2RldmljZSAq
ZGV2KQogcmV0cnk6CiAJc3RhdGUtPmFjcXVpcmVfY3R4ID0gJmN0eDsKIAotCWRybV9mb3JfZWFj
aF9jcnRjKGNydGMsIGRldikgewotCQljcnRjX3N0YXRlID0gZHJtX2F0b21pY19nZXRfY3J0Y19z
dGF0ZShzdGF0ZSwgY3J0Yyk7CisJZm9yX2VhY2hfaW50ZWxfY3J0YyhkZXYsIGNydGMpIHsKKwkJ
c3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUgPQorCQkJaW50ZWxfYXRvbWljX2dl
dF9jcnRjX3N0YXRlKHN0YXRlLCBjcnRjKTsKKwogCQlpZiAoSVNfRVJSKGNydGNfc3RhdGUpKSB7
CiAJCQlyZXQgPSBQVFJfRVJSKGNydGNfc3RhdGUpOwogCQkJZ290byBvdXQ7CiAJCX0KIAotCQlp
ZiAoY3J0Y19zdGF0ZS0+YWN0aXZlKSB7Ci0JCQlyZXQgPSBkcm1fYXRvbWljX2FkZF9hZmZlY3Rl
ZF9wbGFuZXMoc3RhdGUsIGNydGMpOworCQlpZiAoY3J0Y19zdGF0ZS0+YmFzZS5hY3RpdmUpIHsK
KwkJCXJldCA9IGRybV9hdG9taWNfYWRkX2FmZmVjdGVkX3BsYW5lcyhzdGF0ZSwgJmNydGMtPmJh
c2UpOwogCQkJaWYgKHJldCkKIAkJCQlnb3RvIG91dDsKIApAQCAtMTY3NTEsNyArMTY3NTIsNyBA
QCBzdGF0aWMgaW50IGludGVsX2luaXRpYWxfY29tbWl0KHN0cnVjdCBkcm1fZGV2aWNlICpkZXYp
CiAJCQkgKiBoYXZpbmcgYSBwcm9wZXIgTFVUIGxvYWRlZC4gUmVtb3ZlIG9uY2Ugd2UKIAkJCSAq
IGhhdmUgcmVhZG91dCBmb3IgcGlwZSBnYW1tYSBlbmFibGUuCiAJCQkgKi8KLQkJCWNydGNfc3Rh
dGUtPmNvbG9yX21nbXRfY2hhbmdlZCA9IHRydWU7CisJCQljcnRjX3N0YXRlLT5iYXNlLmNvbG9y
X21nbXRfY2hhbmdlZCA9IHRydWU7CiAJCX0KIAl9CiAKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbXN0LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2RwX21zdC5jCmluZGV4IGE5OTYyODQ2YTUwMy4uNDJkMjYyMTRmYjIzIDEw
MDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX21zdC5jCisr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbXN0LmMKQEAgLTE2OCw3
ICsxNjgsNiBAQCBpbnRlbF9kcF9tc3RfYXRvbWljX2NoZWNrKHN0cnVjdCBkcm1fY29ubmVjdG9y
ICpjb25uZWN0b3IsCiAJc3RydWN0IGludGVsX2Nvbm5lY3RvciAqaW50ZWxfY29ubmVjdG9yID0K
IAkJdG9faW50ZWxfY29ubmVjdG9yKGNvbm5lY3Rvcik7CiAJc3RydWN0IGRybV9jcnRjICpuZXdf
Y3J0YyA9IG5ld19jb25uX3N0YXRlLT5jcnRjOwotCXN0cnVjdCBkcm1fY3J0Y19zdGF0ZSAqY3J0
Y19zdGF0ZTsKIAlzdHJ1Y3QgZHJtX2RwX21zdF90b3BvbG9neV9tZ3IgKm1ncjsKIAlpbnQgcmV0
OwogCkBAIC0xODMsMTEgKzE4MiwxNiBAQCBpbnRlbF9kcF9tc3RfYXRvbWljX2NoZWNrKHN0cnVj
dCBkcm1fY29ubmVjdG9yICpjb25uZWN0b3IsCiAJICogY29ubmVjdG9yCiAJICovCiAJaWYgKG5l
d19jcnRjKSB7Ci0JCWNydGNfc3RhdGUgPSBkcm1fYXRvbWljX2dldF9uZXdfY3J0Y19zdGF0ZShz
dGF0ZSwgbmV3X2NydGMpOworCQlzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICppbnRlbF9zdGF0
ZSA9CisJCQl0b19pbnRlbF9hdG9taWNfc3RhdGUoc3RhdGUpOworCQlzdHJ1Y3QgaW50ZWxfY3J0
YyAqaW50ZWxfY3J0YyA9IHRvX2ludGVsX2NydGMobmV3X2NydGMpOworCQlzdHJ1Y3QgaW50ZWxf
Y3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSA9CisJCQlpbnRlbF9hdG9taWNfZ2V0X25ld19jcnRjX3N0
YXRlKGludGVsX3N0YXRlLAorCQkJCQkJCWludGVsX2NydGMpOwogCiAJCWlmICghY3J0Y19zdGF0
ZSB8fAotCQkgICAgIWRybV9hdG9taWNfY3J0Y19uZWVkc19tb2Rlc2V0KGNydGNfc3RhdGUpIHx8
Ci0JCSAgICBjcnRjX3N0YXRlLT5lbmFibGUpCisJCSAgICAhZHJtX2F0b21pY19jcnRjX25lZWRz
X21vZGVzZXQoJmNydGNfc3RhdGUtPmJhc2UpIHx8CisJCSAgICBjcnRjX3N0YXRlLT5iYXNlLmVu
YWJsZSkKIAkJCXJldHVybiAwOwogCX0KIApkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9wc3IuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfcHNyLmMKaW5kZXggNmE5ZjMyMmQzZmNhLi4zNTlhNjA3NjJiNDkgMTAwNjQ0Ci0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMKKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYwpAQCAtMjYsNiArMjYsNyBAQAogI2luY2x1ZGUg
ImRpc3BsYXkvaW50ZWxfZHAuaCIKIAogI2luY2x1ZGUgImk5MTVfZHJ2LmgiCisjaW5jbHVkZSAi
aW50ZWxfYXRvbWljLmgiCiAjaW5jbHVkZSAiaW50ZWxfZGlzcGxheV90eXBlcy5oIgogI2luY2x1
ZGUgImludGVsX3Bzci5oIgogI2luY2x1ZGUgImludGVsX3Nwcml0ZS5oIgpAQCAtMTA5Niw3ICsx
MDk3LDcgQEAgc3RhdGljIGludCBpbnRlbF9wc3JfZmFzdHNldF9mb3JjZShzdHJ1Y3QgZHJtX2k5
MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiAJc3RydWN0IGRybV9kZXZpY2UgKmRldiA9ICZkZXZfcHJp
di0+ZHJtOwogCXN0cnVjdCBkcm1fbW9kZXNldF9hY3F1aXJlX2N0eCBjdHg7CiAJc3RydWN0IGRy
bV9hdG9taWNfc3RhdGUgKnN0YXRlOwotCXN0cnVjdCBkcm1fY3J0YyAqY3J0YzsKKwlzdHJ1Y3Qg
aW50ZWxfY3J0YyAqY3J0YzsKIAlpbnQgZXJyOwogCiAJc3RhdGUgPSBkcm1fYXRvbWljX3N0YXRl
X2FsbG9jKGRldik7CkBAIC0xMTA3LDIxICsxMTA4LDE4IEBAIHN0YXRpYyBpbnQgaW50ZWxfcHNy
X2Zhc3RzZXRfZm9yY2Uoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQogCXN0YXRl
LT5hY3F1aXJlX2N0eCA9ICZjdHg7CiAKIHJldHJ5OgotCWRybV9mb3JfZWFjaF9jcnRjKGNydGMs
IGRldikgewotCQlzdHJ1Y3QgZHJtX2NydGNfc3RhdGUgKmNydGNfc3RhdGU7Ci0JCXN0cnVjdCBp
bnRlbF9jcnRjX3N0YXRlICppbnRlbF9jcnRjX3N0YXRlOworCWZvcl9lYWNoX2ludGVsX2NydGMo
ZGV2LCBjcnRjKSB7CisJCXN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlID0KKwkJ
CWludGVsX2F0b21pY19nZXRfY3J0Y19zdGF0ZShzdGF0ZSwgY3J0Yyk7CiAKLQkJY3J0Y19zdGF0
ZSA9IGRybV9hdG9taWNfZ2V0X2NydGNfc3RhdGUoc3RhdGUsIGNydGMpOwogCQlpZiAoSVNfRVJS
KGNydGNfc3RhdGUpKSB7CiAJCQllcnIgPSBQVFJfRVJSKGNydGNfc3RhdGUpOwogCQkJZ290byBl
cnJvcjsKIAkJfQogCi0JCWludGVsX2NydGNfc3RhdGUgPSB0b19pbnRlbF9jcnRjX3N0YXRlKGNy
dGNfc3RhdGUpOwotCi0JCWlmIChjcnRjX3N0YXRlLT5hY3RpdmUgJiYgaW50ZWxfY3J0Y19zdGF0
ZS0+aGFzX3BzcikgeworCQlpZiAoY3J0Y19zdGF0ZS0+YmFzZS5hY3RpdmUgJiYgY3J0Y19zdGF0
ZS0+aGFzX3BzcikgewogCQkJLyogTWFyayBtb2RlIGFzIGNoYW5nZWQgdG8gdHJpZ2dlciBhIHBp
cGUtPnVwZGF0ZSgpICovCi0JCQljcnRjX3N0YXRlLT5tb2RlX2NoYW5nZWQgPSB0cnVlOworCQkJ
Y3J0Y19zdGF0ZS0+YmFzZS5tb2RlX2NoYW5nZWQgPSB0cnVlOwogCQkJYnJlYWs7CiAJCX0KIAl9
CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaW50ZWxfcG0uYwppbmRleCAwM2EyMzZhZDZhNmIuLjhiYTFmM2FjZWFlZCAx
MDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYworKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jCkBAIC0zMDczLDExICszMDczLDkgQEAgc3RhdGljIGJv
b2wgaWxrX3ZhbGlkYXRlX3BpcGVfd20oY29uc3Qgc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRl
dl9wcml2LAogLyogQ29tcHV0ZSBuZXcgd2F0ZXJtYXJrcyBmb3IgdGhlIHBpcGUgKi8KIHN0YXRp
YyBpbnQgaWxrX2NvbXB1dGVfcGlwZV93bShzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19z
dGF0ZSkKIHsKLQlzdHJ1Y3QgZHJtX2F0b21pY19zdGF0ZSAqc3RhdGUgPSBjcnRjX3N0YXRlLT5i
YXNlLnN0YXRlOworCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUo
Y3J0Y19zdGF0ZS0+YmFzZS5jcnRjLT5kZXYpOwogCXN0cnVjdCBpbnRlbF9jcnRjICppbnRlbF9j
cnRjID0gdG9faW50ZWxfY3J0YyhjcnRjX3N0YXRlLT5iYXNlLmNydGMpOwogCXN0cnVjdCBpbnRl
bF9waXBlX3dtICpwaXBlX3dtOwotCXN0cnVjdCBkcm1fZGV2aWNlICpkZXYgPSBzdGF0ZS0+ZGV2
OwotCWNvbnN0IHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoZGV2
KTsKIAlzdHJ1Y3QgaW50ZWxfcGxhbmUgKnBsYW5lOwogCWNvbnN0IHN0cnVjdCBpbnRlbF9wbGFu
ZV9zdGF0ZSAqcGxhbmVfc3RhdGU7CiAJY29uc3Qgc3RydWN0IGludGVsX3BsYW5lX3N0YXRlICpw
cmlzdGF0ZSA9IE5VTEw7CkBAIC0zNzcyLDcgKzM3NzAsNyBAQCBib29sIGludGVsX2Nhbl9lbmFi
bGVfc2FndihzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSkKIAljcnRjID0gaW50ZWxf
Z2V0X2NydGNfZm9yX3BpcGUoZGV2X3ByaXYsIHBpcGUpOwogCWNydGNfc3RhdGUgPSB0b19pbnRl
bF9jcnRjX3N0YXRlKGNydGMtPmJhc2Uuc3RhdGUpOwogCi0JaWYgKGNydGMtPmJhc2Uuc3RhdGUt
PmFkanVzdGVkX21vZGUuZmxhZ3MgJiBEUk1fTU9ERV9GTEFHX0lOVEVSTEFDRSkKKwlpZiAoY3J0
Y19zdGF0ZS0+YmFzZS5hZGp1c3RlZF9tb2RlLmZsYWdzICYgRFJNX01PREVfRkxBR19JTlRFUkxB
Q0UpCiAJCXJldHVybiBmYWxzZTsKIAogCWZvcl9lYWNoX2ludGVsX3BsYW5lX29uX2NydGMoZGV2
LCBjcnRjLCBwbGFuZSkgewotLSAKMi4yMy4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZng=
