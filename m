Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CA02129971
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Dec 2019 18:33:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6E95A6E332;
	Mon, 23 Dec 2019 17:33:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7C7096E316
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Dec 2019 17:33:06 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Dec 2019 09:33:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,348,1571727600"; d="scan'208";a="417324856"
Received: from ldmartin1-desk.jf.intel.com ([10.165.21.151])
 by fmsmga005.fm.intel.com with ESMTP; 23 Dec 2019 09:33:05 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 23 Dec 2019 09:32:43 -0800
Message-Id: <20191223173244.30742-10-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191223173244.30742-1-lucas.demarchi@intel.com>
References: <20191223173244.30742-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 09/10] drm/i915: prefer 3-letter acronym for
 ivybridge
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

V2UgYXJlIGN1cnJlbnRseSB1c2luZyBhIG1peCBvZiBwbGF0Zm9ybSBuYW1lIGFuZCBhY3Jvbnlt
IHRvIG5hbWUgdGhlCmZ1bmN0aW9ucy4gTGV0J3MgcHJlZmVyIHRoZSBhY3JvbnltIGFzIGl0IHNo
b3VsZCBiZSBjbGVhciB3aGF0IHBsYXRmb3JtCml0J3MgYWJvdXQgYW5kIGl0J3Mgc2hvcnRlciwg
c28gaXQgZG9lc24ndCBnbyBvdmVyIDgwIGNvbHVtbnMgaW4gYSBmZXcKY2FzZXMuIFRoaXMgY29u
dmVydHMgaXZ5YnJpZGdlIHRvIGl2YiB3aGVyZSBhcHByb3ByaWF0ZS4KClNpZ25lZC1vZmYtYnk6
IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPgpBY2tlZC1ieTogSmFu
aSBOaWt1bGEgPGphbmkubmlrdWxhQGxpbnV4LmludGVsLmNvbT4KQWNrZWQtYnk6IFZpbGxlIFN5
cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgICAgICAgfCAgNCArKy0tCiBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZpZm9fdW5kZXJydW4uYyB8IDEyICsrKysrKy0t
LS0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9pcnEuYyAgICAgICAgICAgICAgICAgICAg
fCAgNiArKystLS0KIDMgZmlsZXMgY2hhbmdlZCwgMTEgaW5zZXJ0aW9ucygrKSwgMTEgZGVsZXRp
b25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
aXNwbGF5LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwpp
bmRleCA1MDkzZmQwOGYzODEuLmZhZjZkMjUyN2E1MCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKQEAgLTU1NDAsNyArNTU0MCw3IEBAIHN0YXRpYyB2
b2lkIGNwdF9zZXRfZmRpX2JjX2JpZnVyY2F0aW9uKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpk
ZXZfcHJpdiwgYm9vbCBlCiAJUE9TVElOR19SRUFEKFNPVVRIX0NISUNLRU4xKTsKIH0KIAotc3Rh
dGljIHZvaWQgaXZ5YnJpZGdlX3VwZGF0ZV9mZGlfYmNfYmlmdXJjYXRpb24oY29uc3Qgc3RydWN0
IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpCitzdGF0aWMgdm9pZCBpdmJfdXBkYXRlX2Zk
aV9iY19iaWZ1cmNhdGlvbihjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0
ZSkKIHsKIAlzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YyA9IHRvX2ludGVsX2NydGMoY3J0Y19zdGF0
ZS0+dWFwaS5jcnRjKTsKIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19p
OTE1KGNydGMtPmJhc2UuZGV2KTsKQEAgLTU2MTMsNyArNTYxMyw3IEBAIHN0YXRpYyB2b2lkIGls
a19wY2hfZW5hYmxlKGNvbnN0IHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLAogCWFz
c2VydF9wY2hfdHJhbnNjb2Rlcl9kaXNhYmxlZChkZXZfcHJpdiwgcGlwZSk7CiAKIAlpZiAoSVNf
SVZZQlJJREdFKGRldl9wcml2KSkKLQkJaXZ5YnJpZGdlX3VwZGF0ZV9mZGlfYmNfYmlmdXJjYXRp
b24oY3J0Y19zdGF0ZSk7CisJCWl2Yl91cGRhdGVfZmRpX2JjX2JpZnVyY2F0aW9uKGNydGNfc3Rh
dGUpOwogCiAJLyogV3JpdGUgdGhlIFRVIHNpemUgYml0cyBiZWZvcmUgZmRpIGxpbmsgdHJhaW5p
bmcsIHNvIHRoYXQgZXJyb3IKIAkgKiBkZXRlY3Rpb24gd29ya3MuICovCmRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZpZm9fdW5kZXJydW4uYyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmlmb191bmRlcnJ1bi5jCmluZGV4IDFmODBm
Mjc1ZjNmMi4uNmM4M2IzNTA1MjVkIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2ZpZm9fdW5kZXJydW4uYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2ZpZm9fdW5kZXJydW4uYwpAQCAtMTM5LDcgKzEzOSw3IEBAIHN0YXRpYyB2
b2lkIGlsa19zZXRfZmlmb191bmRlcnJ1bl9yZXBvcnRpbmcoc3RydWN0IGRybV9kZXZpY2UgKmRl
diwKIAkJaWxrX2Rpc2FibGVfZGlzcGxheV9pcnEoZGV2X3ByaXYsIGJpdCk7CiB9CiAKLXN0YXRp
YyB2b2lkIGl2eWJyaWRnZV9jaGVja19maWZvX3VuZGVycnVucyhzdHJ1Y3QgaW50ZWxfY3J0YyAq
Y3J0YykKK3N0YXRpYyB2b2lkIGl2Yl9jaGVja19maWZvX3VuZGVycnVucyhzdHJ1Y3QgaW50ZWxf
Y3J0YyAqY3J0YykKIHsKIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19p
OTE1KGNydGMtPmJhc2UuZGV2KTsKIAllbnVtIHBpcGUgcGlwZSA9IGNydGMtPnBpcGU7CkBAIC0x
NTcsOSArMTU3LDkgQEAgc3RhdGljIHZvaWQgaXZ5YnJpZGdlX2NoZWNrX2ZpZm9fdW5kZXJydW5z
KHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjKQogCURSTV9FUlJPUigiZmlmbyB1bmRlcnJ1biBvbiBw
aXBlICVjXG4iLCBwaXBlX25hbWUocGlwZSkpOwogfQogCi1zdGF0aWMgdm9pZCBpdnlicmlkZ2Vf
c2V0X2ZpZm9fdW5kZXJydW5fcmVwb3J0aW5nKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsCi0JCQkJ
CQkgIGVudW0gcGlwZSBwaXBlLAotCQkJCQkJICBib29sIGVuYWJsZSwgYm9vbCBvbGQpCitzdGF0
aWMgdm9pZCBpdmJfc2V0X2ZpZm9fdW5kZXJydW5fcmVwb3J0aW5nKHN0cnVjdCBkcm1fZGV2aWNl
ICpkZXYsCisJCQkJCSAgICBlbnVtIHBpcGUgcGlwZSwgYm9vbCBlbmFibGUsCisJCQkJCSAgICBi
b29sIG9sZCkKIHsKIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1
KGRldik7CiAJaWYgKGVuYWJsZSkgewpAQCAtMjY2LDcgKzI2Niw3IEBAIHN0YXRpYyBib29sIF9f
aW50ZWxfc2V0X2NwdV9maWZvX3VuZGVycnVuX3JlcG9ydGluZyhzdHJ1Y3QgZHJtX2RldmljZSAq
ZGV2LAogCWVsc2UgaWYgKElTX0dFTl9SQU5HRShkZXZfcHJpdiwgNSwgNikpCiAJCWlsa19zZXRf
Zmlmb191bmRlcnJ1bl9yZXBvcnRpbmcoZGV2LCBwaXBlLCBlbmFibGUpOwogCWVsc2UgaWYgKElT
X0dFTihkZXZfcHJpdiwgNykpCi0JCWl2eWJyaWRnZV9zZXRfZmlmb191bmRlcnJ1bl9yZXBvcnRp
bmcoZGV2LCBwaXBlLCBlbmFibGUsIG9sZCk7CisJCWl2Yl9zZXRfZmlmb191bmRlcnJ1bl9yZXBv
cnRpbmcoZGV2LCBwaXBlLCBlbmFibGUsIG9sZCk7CiAJZWxzZSBpZiAoSU5URUxfR0VOKGRldl9w
cml2KSA+PSA4KQogCQliZHdfc2V0X2ZpZm9fdW5kZXJydW5fcmVwb3J0aW5nKGRldiwgcGlwZSwg
ZW5hYmxlKTsKIApAQCAtNDI3LDcgKzQyNyw3IEBAIHZvaWQgaW50ZWxfY2hlY2tfY3B1X2ZpZm9f
dW5kZXJydW5zKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKIAkJaWYgKEhBU19H
TUNIKGRldl9wcml2KSkKIAkJCWk5eHhfY2hlY2tfZmlmb191bmRlcnJ1bnMoY3J0Yyk7CiAJCWVs
c2UgaWYgKElTX0dFTihkZXZfcHJpdiwgNykpCi0JCQlpdnlicmlkZ2VfY2hlY2tfZmlmb191bmRl
cnJ1bnMoY3J0Yyk7CisJCQlpdmJfY2hlY2tfZmlmb191bmRlcnJ1bnMoY3J0Yyk7CiAJfQogCiAJ
c3Bpbl91bmxvY2tfaXJxKCZkZXZfcHJpdi0+aXJxX2xvY2spOwpkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9pcnEuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfaXJx
LmMKaW5kZXggMmQ2MzI0ZDI5MjJhLi5hZmM2YWFkOWJmOGMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfaXJxLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9p
cnEuYwpAQCAtODkzLDcgKzg5Myw3IEBAIGludCBpbnRlbF9nZXRfY3J0Y19zY2FubGluZShzdHJ1
Y3QgaW50ZWxfY3J0YyAqY3J0YykKIH0KIAogLyoqCi0gKiBpdnlicmlkZ2VfcGFyaXR5X3dvcmsg
LSBXb3JrcXVldWUgY2FsbGVkIHdoZW4gYSBwYXJpdHkgZXJyb3IgaW50ZXJydXB0CisgKiBpdmJf
cGFyaXR5X3dvcmsgLSBXb3JrcXVldWUgY2FsbGVkIHdoZW4gYSBwYXJpdHkgZXJyb3IgaW50ZXJy
dXB0CiAgKiBvY2N1cnJlZC4KICAqIEB3b3JrOiB3b3JrcXVldWUgc3RydWN0CiAgKgpAQCAtOTAx
LDcgKzkwMSw3IEBAIGludCBpbnRlbF9nZXRfY3J0Y19zY2FubGluZShzdHJ1Y3QgaW50ZWxfY3J0
YyAqY3J0YykKICAqIHRoaXMgZXZlbnQsIHVzZXJzcGFjZSBzaG91bGQgdHJ5IHRvIHJlbWFwIHRo
ZSBiYWQgcm93cyBzaW5jZSBzdGF0aXN0aWNhbGx5CiAgKiBpdCBpcyBsaWtlbHkgdGhlIHNhbWUg
cm93IGlzIG1vcmUgbGlrZWx5IHRvIGdvIGJhZCBhZ2Fpbi4KICAqLwotc3RhdGljIHZvaWQgaXZ5
YnJpZGdlX3Bhcml0eV93b3JrKHN0cnVjdCB3b3JrX3N0cnVjdCAqd29yaykKK3N0YXRpYyB2b2lk
IGl2Yl9wYXJpdHlfd29yayhzdHJ1Y3Qgd29ya19zdHJ1Y3QgKndvcmspCiB7CiAJc3RydWN0IGRy
bV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0KIAkJY29udGFpbmVyX29mKHdvcmssIHR5cGVvZigq
ZGV2X3ByaXYpLCBsM19wYXJpdHkuZXJyb3Jfd29yayk7CkBAIC0zODk5LDcgKzM4OTksNyBAQCB2
b2lkIGludGVsX2lycV9pbml0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKIAog
CWludGVsX2hwZF9pbml0X3dvcmsoZGV2X3ByaXYpOwogCi0JSU5JVF9XT1JLKCZkZXZfcHJpdi0+
bDNfcGFyaXR5LmVycm9yX3dvcmssIGl2eWJyaWRnZV9wYXJpdHlfd29yayk7CisJSU5JVF9XT1JL
KCZkZXZfcHJpdi0+bDNfcGFyaXR5LmVycm9yX3dvcmssIGl2Yl9wYXJpdHlfd29yayk7CiAJZm9y
IChpID0gMDsgaSA8IE1BWF9MM19TTElDRVM7ICsraSkKIAkJZGV2X3ByaXYtPmwzX3Bhcml0eS5y
ZW1hcF9pbmZvW2ldID0gTlVMTDsKIAotLSAKMi4yNC4wCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZngK
