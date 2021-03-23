Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DF51346364
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Mar 2021 16:51:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1DA3F6EAE3;
	Tue, 23 Mar 2021 15:51:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl
 [IPv6:2a02:2308::216:3eff:fe92:dfa3])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 85CB76EADD
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Mar 2021 15:51:17 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 23 Mar 2021 16:50:23 +0100
Message-Id: <20210323155059.628690-35-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.31.0
In-Reply-To: <20210323155059.628690-1-maarten.lankhorst@linux.intel.com>
References: <20210323155059.628690-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v9 34/70] drm/i915: Add ww locking around
 vm_access()
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
 dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

aTkxNV9nZW1fb2JqZWN0X3Bpbl9tYXAgcG90ZW50aWFsbHkgbmVlZHMgYSB3dyBjb250ZXh0LCBz
byBlbnN1cmUgd2UKaGF2ZSBvbmUgd2UgY2FuIHJldm9rZS4KClNpZ25lZC1vZmYtYnk6IE1hYXJ0
ZW4gTGFua2hvcnN0IDxtYWFydGVuLmxhbmtob3JzdEBsaW51eC5pbnRlbC5jb20+ClJldmlld2Vk
LWJ5OiBUaG9tYXMgSGVsbHN0csO2bSA8dGhvbWFzLmhlbGxzdHJvbUBsaW51eC5pbnRlbC5jb20+
Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX21tYW4uYyB8IDI0ICsrKysr
KysrKysrKysrKysrKysrKystLQogMSBmaWxlIGNoYW5nZWQsIDIyIGluc2VydGlvbnMoKyksIDIg
ZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVf
Z2VtX21tYW4uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9tbWFuLmMKaW5k
ZXggMTYzMjA4YTYyNjBkLi4yNTYxYTJmMWU1NGYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2dlbS9pOTE1X2dlbV9tbWFuLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2Vt
L2k5MTVfZ2VtX21tYW4uYwpAQCAtNDIxLDcgKzQyMSw5IEBAIHZtX2FjY2VzcyhzdHJ1Y3Qgdm1f
YXJlYV9zdHJ1Y3QgKmFyZWEsIHVuc2lnbmVkIGxvbmcgYWRkciwKIHsKIAlzdHJ1Y3QgaTkxNV9t
bWFwX29mZnNldCAqbW1vID0gYXJlYS0+dm1fcHJpdmF0ZV9kYXRhOwogCXN0cnVjdCBkcm1faTkx
NV9nZW1fb2JqZWN0ICpvYmogPSBtbW8tPm9iajsKKwlzdHJ1Y3QgaTkxNV9nZW1fd3dfY3R4IHd3
OwogCXZvaWQgKnZhZGRyOworCWludCBlcnIgPSAwOwogCiAJaWYgKGk5MTVfZ2VtX29iamVjdF9p
c19yZWFkb25seShvYmopICYmIHdyaXRlKQogCQlyZXR1cm4gLUVBQ0NFUzsKQEAgLTQzMCwxMCAr
NDMyLDE4IEBAIHZtX2FjY2VzcyhzdHJ1Y3Qgdm1fYXJlYV9zdHJ1Y3QgKmFyZWEsIHVuc2lnbmVk
IGxvbmcgYWRkciwKIAlpZiAoYWRkciA+PSBvYmotPmJhc2Uuc2l6ZSkKIAkJcmV0dXJuIC1FSU5W
QUw7CiAKKwlpOTE1X2dlbV93d19jdHhfaW5pdCgmd3csIHRydWUpOworcmV0cnk6CisJZXJyID0g
aTkxNV9nZW1fb2JqZWN0X2xvY2sob2JqLCAmd3cpOworCWlmIChlcnIpCisJCWdvdG8gb3V0Owor
CiAJLyogQXMgdGhpcyBpcyBwcmltYXJpbHkgZm9yIGRlYnVnZ2luZywgbGV0J3MgZm9jdXMgb24g
c2ltcGxpY2l0eSAqLwogCXZhZGRyID0gaTkxNV9nZW1fb2JqZWN0X3Bpbl9tYXAob2JqLCBJOTE1
X01BUF9GT1JDRV9XQyk7Ci0JaWYgKElTX0VSUih2YWRkcikpCi0JCXJldHVybiBQVFJfRVJSKHZh
ZGRyKTsKKwlpZiAoSVNfRVJSKHZhZGRyKSkgeworCQllcnIgPSBQVFJfRVJSKHZhZGRyKTsKKwkJ
Z290byBvdXQ7CisJfQogCiAJaWYgKHdyaXRlKSB7CiAJCW1lbWNweSh2YWRkciArIGFkZHIsIGJ1
ZiwgbGVuKTsKQEAgLTQ0Myw2ICs0NTMsMTYgQEAgdm1fYWNjZXNzKHN0cnVjdCB2bV9hcmVhX3N0
cnVjdCAqYXJlYSwgdW5zaWduZWQgbG9uZyBhZGRyLAogCX0KIAogCWk5MTVfZ2VtX29iamVjdF91
bnBpbl9tYXAob2JqKTsKK291dDoKKwlpZiAoZXJyID09IC1FREVBRExLKSB7CisJCWVyciA9IGk5
MTVfZ2VtX3d3X2N0eF9iYWNrb2ZmKCZ3dyk7CisJCWlmICghZXJyKQorCQkJZ290byByZXRyeTsK
Kwl9CisJaTkxNV9nZW1fd3dfY3R4X2ZpbmkoJnd3KTsKKworCWlmIChlcnIpCisJCXJldHVybiBl
cnI7CiAKIAlyZXR1cm4gbGVuOwogfQotLSAKMi4zMS4wCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZngK
