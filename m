Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EBF98391648
	for <lists+intel-gfx@lfdr.de>; Wed, 26 May 2021 13:33:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 977F76ECB0;
	Wed, 26 May 2021 11:33:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 258106EC9B;
 Wed, 26 May 2021 11:33:34 +0000 (UTC)
IronPort-SDR: OhiS7Cjifk3M7GZc5si5+l5EPHiJmOjNV6a22ZvoDseSRi3gqk9kB2ozYXqN92G5Y9T1nGwbW9
 VaXaKSsxWVOw==
X-IronPort-AV: E=McAfee;i="6200,9189,9995"; a="223627312"
X-IronPort-AV: E=Sophos;i="5.82,331,1613462400"; d="scan'208";a="223627312"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2021 04:33:33 -0700
IronPort-SDR: INIuZPLrLCvJ+EidnzV6lBklVC6QVkAhos9VeuqOZFfuJnhCfNEX3SHRkvKmJ3RQSuGDjv1u8J
 PYDsTcp4RcGg==
X-IronPort-AV: E=Sophos;i="5.82,331,1613462400"; d="scan'208";a="633457933"
Received: from pegilssx-mobl.ger.corp.intel.com (HELO thellst-mobl1.intel.com)
 ([10.249.254.205])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2021 04:33:31 -0700
From: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Wed, 26 May 2021 13:32:54 +0200
Message-Id: <20210526113259.1661914-11-thomas.hellstrom@linux.intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210526113259.1661914-1-thomas.hellstrom@linux.intel.com>
References: <20210526113259.1661914-1-thomas.hellstrom@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4 10/15] drm/ttm,
 drm/amdgpu: Allow the driver some control over swapping
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
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

V2UgYXJlIGNhbGxpbmcgdGhlIGV2aWN0aW9uX3ZhbHVhYmxlIGRyaXZlciBjYWxsYmFjayBhdCBl
dmljdGlvbiB0aW1lIHRvCmRldGVybWluZSB3aGV0aGVyIHdlIGFjdHVhbGx5IGNhbiBldmljdCBh
IGJ1ZmZlciBvYmplY3QuClRoZSB1cGNvbWluZyBpOTE1IFRUTSBiYWNrZW5kIG5lZWRzIHRoZSBz
YW1lIGZ1bmN0aW9uYWxpdHkgZm9yIHN3YXBvdXQsCmFuZCB0aGF0IG1pZ2h0IGFjdHVhbGx5IGJl
IGJlbmVmaWNpYWwgdG8gb3RoZXIgZHJpdmVycyBhcyB3ZWxsLgoKQWRkIGFuIGV2aWN0aW9uX3Zh
bHVhYmxlIGNhbGwgYWxzbyBpbiB0aGUgc3dhcG91dCBwYXRoLiBUcnkgdG8ga2VlcCB0aGUKY3Vy
cmVudCBiZWhhdmlvdXIgZm9yIGFsbCBkcml2ZXJzIGJ5IHJldHVybmluZyB0cnVlIGlmIHRoZSBi
dWZmZXIgb2JqZWN0CmlzIGFscmVhZHkgaW4gdGhlIFRUTV9QTF9TWVNURU0gcGxhY2VtZW50LiBX
ZSBjaGFuZ2UgYmVoYXZpb3VyIGZvciB0aGUKY2FzZSB3aGVyZSBhIGJ1ZmZlciBvYmplY3QgaXMg
aW4gYSBUVCBiYWNrZWQgcGxhY2VtZW50IHdoZW4gc3dhcHBlZCBvdXQsCmluIHdoaWNoIGNhc2Ug
dGhlIGRyaXZlcnMgbm9ybWFsIGV2aWN0aW9uX3ZhbHVhYmxlIHBhdGggaXMgcnVuLgoKRmluYWxs
eSBtYWtlIHN1cmUgd2UgZG9uJ3QgdHJ5IHRvIHN3YXBvdXQgYSBibyB0aGF0IHdhcyByZWNlbnRs
eSBwdXJnZWQKYW5kIHRoZXJlZm9yZSB1bnBvcHVsYXRlZC4KClJldmlld2VkLWJ5OiBNYWFydGVu
IExhbmtob3JzdCA8bWFhcnRlbi5sYW5raG9yc3RAbGludXguaW50ZWwuY29tPgpDYzogQ2hyaXN0
aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPgpTaWduZWQtb2ZmLWJ5OiBUaG9t
YXMgSGVsbHN0csO2bSA8dGhvbWFzLmhlbGxzdHJvbUBsaW51eC5pbnRlbC5jb20+Ci0tLQp2MzoK
LSBEb24ndCBleHBvcnQgdHRtX3R0X3VucG9wdWxhdGUKLSBGaXggY29uZnVzaW9uIHJlYWRpbmcg
dGhlIGxvY2tlZCBwb2ludGVyIGluc3RlYWQgb2YgdGhlIHZhbHVlCiAgcG9pbnRlZCB0byBpbiB0
dG1fYm9fZXZpY3Rfc3dhcG91dF9hbGxvd2FibGUgKFJlcG9ydGVkIGJ5CiAgTWFhcnRlbiBMYW5r
aG9yc3QpCi0tLQogZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X3R0bS5jIHwgIDQg
KysrCiBkcml2ZXJzL2dwdS9kcm0vdHRtL3R0bV9iby5jICAgICAgICAgICAgfCA0MyArKysrKysr
KysrKysrKysrLS0tLS0tLS0tCiBkcml2ZXJzL2dwdS9kcm0vdHRtL3R0bV90dC5jICAgICAgICAg
ICAgfCAgMyArKwogMyBmaWxlcyBjaGFuZ2VkLCAzNCBpbnNlcnRpb25zKCspLCAxNiBkZWxldGlv
bnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfdHRt
LmMgYi9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfdHRtLmMKaW5kZXggM2JjM2Fl
YmZlZjdjLi40NWQxOTRiZmZjM2YgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1k
Z3B1L2FtZGdwdV90dG0uYworKysgYi9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVf
dHRtLmMKQEAgLTEzNDgsNiArMTM0OCwxMCBAQCBzdGF0aWMgYm9vbCBhbWRncHVfdHRtX2JvX2V2
aWN0aW9uX3ZhbHVhYmxlKHN0cnVjdCB0dG1fYnVmZmVyX29iamVjdCAqYm8sCiAJc3RydWN0IGRt
YV9mZW5jZSAqZjsKIAlpbnQgaTsKIAorCS8qIFN3YXBvdXQ/ICovCisJaWYgKGJvLT5tZW0ubWVt
X3R5cGUgPT0gVFRNX1BMX1NZU1RFTSkKKwkJcmV0dXJuIHRydWU7CisKIAlpZiAoYm8tPnR5cGUg
PT0gdHRtX2JvX3R5cGVfa2VybmVsICYmCiAJICAgICFhbWRncHVfdm1fZXZpY3RhYmxlKHR0bV90
b19hbWRncHVfYm8oYm8pKSkKIAkJcmV0dXJuIGZhbHNlOwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL3R0bS90dG1fYm8uYyBiL2RyaXZlcnMvZ3B1L2RybS90dG0vdHRtX2JvLmMKaW5kZXgg
YmUwNDA2NDY2NDYwLi4xYjJkMDYyMjY2ZWQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS90
dG0vdHRtX2JvLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL3R0bS90dG1fYm8uYwpAQCAtNTM2LDYg
KzUzNiwxMCBAQCBzdGF0aWMgaW50IHR0bV9ib19ldmljdChzdHJ1Y3QgdHRtX2J1ZmZlcl9vYmpl
Y3QgKmJvLAogYm9vbCB0dG1fYm9fZXZpY3Rpb25fdmFsdWFibGUoc3RydWN0IHR0bV9idWZmZXJf
b2JqZWN0ICpibywKIAkJCSAgICAgIGNvbnN0IHN0cnVjdCB0dG1fcGxhY2UgKnBsYWNlKQogewor
CWRtYV9yZXN2X2Fzc2VydF9oZWxkKGJvLT5iYXNlLnJlc3YpOworCWlmIChiby0+bWVtLm1lbV90
eXBlID09IFRUTV9QTF9TWVNURU0pCisJCXJldHVybiB0cnVlOworCiAJLyogRG9uJ3QgZXZpY3Qg
dGhpcyBCTyBpZiBpdCdzIG91dHNpZGUgb2YgdGhlCiAJICogcmVxdWVzdGVkIHBsYWNlbWVudCBy
YW5nZQogCSAqLwpAQCAtNTU4LDcgKzU2Miw5IEBAIEVYUE9SVF9TWU1CT0wodHRtX2JvX2V2aWN0
aW9uX3ZhbHVhYmxlKTsKICAqIGIuIE90aGVyd2lzZSwgdHJ5bG9jayBpdC4KICAqLwogc3RhdGlj
IGJvb2wgdHRtX2JvX2V2aWN0X3N3YXBvdXRfYWxsb3dhYmxlKHN0cnVjdCB0dG1fYnVmZmVyX29i
amVjdCAqYm8sCi0JCQlzdHJ1Y3QgdHRtX29wZXJhdGlvbl9jdHggKmN0eCwgYm9vbCAqbG9ja2Vk
LCBib29sICpidXN5KQorCQkJCQkgICBzdHJ1Y3QgdHRtX29wZXJhdGlvbl9jdHggKmN0eCwKKwkJ
CQkJICAgY29uc3Qgc3RydWN0IHR0bV9wbGFjZSAqcGxhY2UsCisJCQkJCSAgIGJvb2wgKmxvY2tl
ZCwgYm9vbCAqYnVzeSkKIHsKIAlib29sIHJldCA9IGZhbHNlOwogCkBAIC01NzYsNiArNTgyLDE0
IEBAIHN0YXRpYyBib29sIHR0bV9ib19ldmljdF9zd2Fwb3V0X2FsbG93YWJsZShzdHJ1Y3QgdHRt
X2J1ZmZlcl9vYmplY3QgKmJvLAogCQkJKmJ1c3kgPSAhcmV0OwogCX0KIAorCWlmIChyZXQgJiYg
cGxhY2UgJiYgIWJvLT5iZGV2LT5mdW5jcy0+ZXZpY3Rpb25fdmFsdWFibGUoYm8sIHBsYWNlKSkg
eworCQlyZXQgPSBmYWxzZTsKKwkJaWYgKCpsb2NrZWQpIHsKKwkJCWRtYV9yZXN2X3VubG9jayhi
by0+YmFzZS5yZXN2KTsKKwkJCSpsb2NrZWQgPSBmYWxzZTsKKwkJfQorCX0KKwogCXJldHVybiBy
ZXQ7CiB9CiAKQEAgLTYzMCwyMCArNjQ0LDE0IEBAIGludCB0dG1fbWVtX2V2aWN0X2ZpcnN0KHN0
cnVjdCB0dG1fZGV2aWNlICpiZGV2LAogCQlsaXN0X2Zvcl9lYWNoX2VudHJ5KGJvLCAmbWFuLT5s
cnVbaV0sIGxydSkgewogCQkJYm9vbCBidXN5OwogCi0JCQlpZiAoIXR0bV9ib19ldmljdF9zd2Fw
b3V0X2FsbG93YWJsZShibywgY3R4LCAmbG9ja2VkLAotCQkJCQkJCSAgICAmYnVzeSkpIHsKKwkJ
CWlmICghdHRtX2JvX2V2aWN0X3N3YXBvdXRfYWxsb3dhYmxlKGJvLCBjdHgsIHBsYWNlLAorCQkJ
CQkJCSAgICAmbG9ja2VkLCAmYnVzeSkpIHsKIAkJCQlpZiAoYnVzeSAmJiAhYnVzeV9ibyAmJiB0
aWNrZXQgIT0KIAkJCQkgICAgZG1hX3Jlc3ZfbG9ja2luZ19jdHgoYm8tPmJhc2UucmVzdikpCiAJ
CQkJCWJ1c3lfYm8gPSBibzsKIAkJCQljb250aW51ZTsKIAkJCX0KIAotCQkJaWYgKHBsYWNlICYm
ICFiZGV2LT5mdW5jcy0+ZXZpY3Rpb25fdmFsdWFibGUoYm8sCi0JCQkJCQkJCSAgICAgIHBsYWNl
KSkgewotCQkJCWlmIChsb2NrZWQpCi0JCQkJCWRtYV9yZXN2X3VubG9jayhiby0+YmFzZS5yZXN2
KTsKLQkJCQljb250aW51ZTsKLQkJCX0KIAkJCWlmICghdHRtX2JvX2dldF91bmxlc3NfemVybyhi
bykpIHsKIAkJCQlpZiAobG9ja2VkKQogCQkJCQlkbWFfcmVzdl91bmxvY2soYm8tPmJhc2UucmVz
dik7CkBAIC0xMTQwLDEwICsxMTQ4LDE4IEBAIEVYUE9SVF9TWU1CT0wodHRtX2JvX3dhaXQpOwog
aW50IHR0bV9ib19zd2Fwb3V0KHN0cnVjdCB0dG1fYnVmZmVyX29iamVjdCAqYm8sIHN0cnVjdCB0
dG1fb3BlcmF0aW9uX2N0eCAqY3R4LAogCQkgICBnZnBfdCBnZnBfZmxhZ3MpCiB7CisJc3RydWN0
IHR0bV9wbGFjZSBwbGFjZSA9IHt9OwogCWJvb2wgbG9ja2VkOwogCWludCByZXQ7CiAKLQlpZiAo
IXR0bV9ib19ldmljdF9zd2Fwb3V0X2FsbG93YWJsZShibywgY3R4LCAmbG9ja2VkLCBOVUxMKSkK
KwkvKgorCSAqIFdoaWxlIHRoZSBibyBtYXkgYWxyZWFkeSByZXNpZGUgaW4gU1lTVEVNIHBsYWNl
bWVudCwgc2V0CisJICogU1lTVEVNIGFzIG5ldyBwbGFjZW1lbnQgdG8gY292ZXIgYWxzbyB0aGUg
bW92ZSBmdXJ0aGVyIGJlbG93LgorCSAqIFRoZSBkcml2ZXIgbWF5IHVzZSB0aGUgZmFjdCB0aGF0
IHdlJ3JlIG1vdmluZyBmcm9tIFNZU1RFTQorCSAqIGFzIGFuIGluZGljYXRpb24gdGhhdCB3ZSdy
ZSBhYm91dCB0byBzd2FwIG91dC4KKwkgKi8KKwlwbGFjZS5tZW1fdHlwZSA9IFRUTV9QTF9TWVNU
RU07CisJaWYgKCF0dG1fYm9fZXZpY3Rfc3dhcG91dF9hbGxvd2FibGUoYm8sIGN0eCwgJnBsYWNl
LCAmbG9ja2VkLCBOVUxMKSkKIAkJcmV0dXJuIC1FQlVTWTsKIAogCWlmICghdHRtX2JvX2dldF91
bmxlc3NfemVybyhibykpIHsKQEAgLTExNjgsMTIgKzExODQsNyBAQCBpbnQgdHRtX2JvX3N3YXBv
dXQoc3RydWN0IHR0bV9idWZmZXJfb2JqZWN0ICpibywgc3RydWN0IHR0bV9vcGVyYXRpb25fY3R4
ICpjdHgsCiAJaWYgKGJvLT5tZW0ubWVtX3R5cGUgIT0gVFRNX1BMX1NZU1RFTSkgewogCQlzdHJ1
Y3QgdHRtX29wZXJhdGlvbl9jdHggY3R4ID0geyBmYWxzZSwgZmFsc2UgfTsKIAkJc3RydWN0IHR0
bV9yZXNvdXJjZSBldmljdF9tZW07Ci0JCXN0cnVjdCB0dG1fcGxhY2UgcGxhY2UsIGhvcDsKLQot
CQltZW1zZXQoJnBsYWNlLCAwLCBzaXplb2YocGxhY2UpKTsKLQkJbWVtc2V0KCZob3AsIDAsIHNp
emVvZihob3ApKTsKLQotCQlwbGFjZS5tZW1fdHlwZSA9IFRUTV9QTF9TWVNURU07CisJCXN0cnVj
dCB0dG1fcGxhY2UgaG9wID0ge307CiAKIAkJcmV0ID0gdHRtX3Jlc291cmNlX2FsbG9jKGJvLCAm
cGxhY2UsICZldmljdF9tZW0pOwogCQlpZiAodW5saWtlbHkocmV0KSkKZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS90dG0vdHRtX3R0LmMgYi9kcml2ZXJzL2dwdS9kcm0vdHRtL3R0bV90dC5j
CmluZGV4IDkxM2IzMzBhMjM0Yi4uZDk3OTNjYmI2ZDEzIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dw
dS9kcm0vdHRtL3R0bV90dC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS90dG0vdHRtX3R0LmMKQEAg
LTI2Myw2ICsyNjMsOSBAQCBpbnQgdHRtX3R0X3N3YXBvdXQoc3RydWN0IHR0bV9kZXZpY2UgKmJk
ZXYsIHN0cnVjdCB0dG1fdHQgKnR0bSwKIAlzdHJ1Y3QgcGFnZSAqdG9fcGFnZTsKIAlpbnQgaSwg
cmV0OwogCisJaWYgKCF0dG1fdHRfaXNfcG9wdWxhdGVkKHR0bSkpCisJCXJldHVybiAwOworCiAJ
c3dhcF9zdG9yYWdlID0gc2htZW1fZmlsZV9zZXR1cCgidHRtIHN3YXAiLCBzaXplLCAwKTsKIAlp
ZiAoSVNfRVJSKHN3YXBfc3RvcmFnZSkpIHsKIAkJcHJfZXJyKCJGYWlsZWQgYWxsb2NhdGluZyBz
d2FwIHN0b3JhZ2VcbiIpOwotLSAKMi4zMS4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZngK
