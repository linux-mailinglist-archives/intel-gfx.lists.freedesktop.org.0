Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D491A19E09
	for <lists+intel-gfx@lfdr.de>; Fri, 10 May 2019 15:22:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9D4F189C49;
	Fri, 10 May 2019 13:22:53 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1A7A9897BC
 for <Intel-gfx@lists.freedesktop.org>; Fri, 10 May 2019 13:22:51 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 May 2019 06:22:50 -0700
X-ExtLoop1: 1
Received: from ddillonx-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.252.28.3])
 by fmsmga006.fm.intel.com with ESMTP; 10 May 2019 06:22:50 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Fri, 10 May 2019 14:22:37 +0100
Message-Id: <20190510132240.11029-4-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190510132240.11029-1-tvrtko.ursulin@linux.intel.com>
References: <20190510132240.11029-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC 3/6] drm/i915: Expose list of clients in sysfs
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

RnJvbTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KCkV4cG9zZSBh
IGxpc3Qgb2YgY2xpZW50cyB3aXRoIG9wZW4gZmlsZSBoYW5kbGVzIGluIHN5c2ZzLgoKVGhpcyB3
aWxsIGJlIGEgYmFzaXMgZm9yIGEgdG9wLWxpa2UgdXRpbGl0eSBzaG93aW5nIHBlci1jbGllbnQg
YW5kIHBlci0KZW5naW5lIEdQVSBsb2FkLgoKQ3VycmVudGx5IHdlIG9ubHkgZXhwb3NlIGVhY2gg
Y2xpZW50J3MgcGlkIGFuZCBuYW1lIHVuZGVyIG9wYXF1ZSBudW1iZXJlZApkaXJlY3RvcmllcyBp
biAvc3lzL2NsYXNzL2RybS9jYXJkMC9jbGllbnRzLy4KCkZvciBpbnN0YW5jZToKCi9zeXMvY2xh
c3MvZHJtL2NhcmQwL2NsaWVudHMvMy9uYW1lOiBYb3JnCi9zeXMvY2xhc3MvZHJtL2NhcmQwL2Ns
aWVudHMvMy9waWQ6IDU2NjQKCnYyOgogQ2hyaXMgV2lsc29uOgogKiBFbmNsb3NlIG5ldyBtZW1i
ZXJzIGludG8gZGVkaWNhdGVkIHN0cnVjdHMuCiAqIFByb3RlY3QgYWdhaW5zdCBmYWlsZWQgc3lz
ZnMgcmVnaXN0cmF0aW9uLgoKdjM6CiAqIHN5c2ZzX2F0dHJfaW5pdC4KClNpZ25lZC1vZmYtYnk6
IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9kcnYuaCAgIHwgIDE5ICsrKysrCiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X2dlbS5jICAgfCAxMjEgKysrKysrKysrKysrKysrKysrKysrKysrKysrKy0tCiBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3N5c2ZzLmMgfCAgIDggKysKIDMgZmlsZXMgY2hhbmdlZCwg
MTQwIGluc2VydGlvbnMoKyksIDggZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9kcnYuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgK
aW5kZXggZDAyNTc4MDg3MzRjLi4xZDdhOTQ1NTVhODcgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfZHJ2LmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYu
aApAQCAtMjQyLDYgKzI0MiwyMCBAQCBzdHJ1Y3QgZHJtX2k5MTVfZmlsZV9wcml2YXRlIHsKIAkv
KiogYmFuX3Njb3JlOiBBY2N1bXVsYXRlZCBzY29yZSBvZiBhbGwgY3R4IGJhbnMgYW5kIGZhc3Qg
aGFuZ3MuICovCiAJYXRvbWljX3QgYmFuX3Njb3JlOwogCXVuc2lnbmVkIGxvbmcgaGFuZ190aW1l
c3RhbXA7CisKKwlzdHJ1Y3QgaTkxNV9kcm1fY2xpZW50IHsKKwkJdW5zaWduZWQgaW50IGlkOwor
CisJCXBpZF90IHBpZDsKKwkJY2hhciAqbmFtZTsKKworCQlzdHJ1Y3Qga29iamVjdCAqcm9vdDsK
KworCQlzdHJ1Y3QgeworCQkJc3RydWN0IGRldmljZV9hdHRyaWJ1dGUgcGlkOworCQkJc3RydWN0
IGRldmljZV9hdHRyaWJ1dGUgbmFtZTsKKwkJfSBhdHRyOworCX0gY2xpZW50OwogfTsKIAogLyog
SW50ZXJmYWNlIGhpc3Rvcnk6CkBAIC0yMDU3LDYgKzIwNzEsMTEgQEAgc3RydWN0IGRybV9pOTE1
X3ByaXZhdGUgewogCiAJc3RydWN0IGk5MTVfcG11IHBtdTsKIAorCXN0cnVjdCBpOTE1X2RybV9j
bGllbnRzIHsKKwkJc3RydWN0IGtvYmplY3QgKnJvb3Q7CisJCWF0b21pY190IHNlcmlhbDsKKwl9
IGNsaWVudHM7CisKIAlzdHJ1Y3QgaTkxNV9oZGNwX2NvbXBfbWFzdGVyICpoZGNwX21hc3RlcjsK
IAlib29sIGhkY3BfY29tcF9hZGRlZDsKIApkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9nZW0uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtLmMKaW5kZXggMmZj
ZWMxYmZiMDM4Li4wYWU1NzY0YTU4ZDIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfZ2VtLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW0uYwpAQCAtNDgx
NCw2ICs0ODE0LDk2IEBAIGludCBpOTE1X2dlbV9mcmVlemVfbGF0ZShzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZSAqaTkxNSkKIAlyZXR1cm4gMDsKIH0KIAorc3RhdGljIHNzaXplX3QKK3Nob3dfY2xp
ZW50X25hbWUoc3RydWN0IGRldmljZSAqa2Rldiwgc3RydWN0IGRldmljZV9hdHRyaWJ1dGUgKmF0
dHIsIGNoYXIgKmJ1ZikKK3sKKwlzdHJ1Y3QgZHJtX2k5MTVfZmlsZV9wcml2YXRlICpmaWxlX3By
aXYgPQorCQljb250YWluZXJfb2YoYXR0ciwgc3RydWN0IGRybV9pOTE1X2ZpbGVfcHJpdmF0ZSwK
KwkJCSAgICAgY2xpZW50LmF0dHIubmFtZSk7CisKKwlyZXR1cm4gc25wcmludGYoYnVmLCBQQUdF
X1NJWkUsICIlcyIsIGZpbGVfcHJpdi0+Y2xpZW50Lm5hbWUpOworfQorCitzdGF0aWMgc3NpemVf
dAorc2hvd19jbGllbnRfcGlkKHN0cnVjdCBkZXZpY2UgKmtkZXYsIHN0cnVjdCBkZXZpY2VfYXR0
cmlidXRlICphdHRyLCBjaGFyICpidWYpCit7CisJc3RydWN0IGRybV9pOTE1X2ZpbGVfcHJpdmF0
ZSAqZmlsZV9wcml2ID0KKwkJY29udGFpbmVyX29mKGF0dHIsIHN0cnVjdCBkcm1faTkxNV9maWxl
X3ByaXZhdGUsCisJCQkgICAgIGNsaWVudC5hdHRyLnBpZCk7CisKKwlyZXR1cm4gc25wcmludGYo
YnVmLCBQQUdFX1NJWkUsICIldSIsIGZpbGVfcHJpdi0+Y2xpZW50LnBpZCk7Cit9CisKK3N0YXRp
YyBpbnQKK2k5MTVfZ2VtX2FkZF9jbGllbnQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUs
CisJCXN0cnVjdCBkcm1faTkxNV9maWxlX3ByaXZhdGUgKmZpbGVfcHJpdiwKKwkJc3RydWN0IHRh
c2tfc3RydWN0ICp0YXNrLAorCQl1bnNpZ25lZCBpbnQgc2VyaWFsKQoreworCWludCByZXQgPSAt
RU5PTUVNOworCXN0cnVjdCBkZXZpY2VfYXR0cmlidXRlICphdHRyOworCWNoYXIgaWRbMzJdOwor
CisJaWYgKCFpOTE1LT5jbGllbnRzLnJvb3QpCisJCWdvdG8gZXJyX25hbWU7CisKKwlmaWxlX3By
aXYtPmNsaWVudC5uYW1lID0ga3N0cmR1cCh0YXNrLT5jb21tLCBHRlBfS0VSTkVMKTsKKwlpZiAo
IWZpbGVfcHJpdi0+Y2xpZW50Lm5hbWUpCisJCWdvdG8gZXJyX25hbWU7CisKKwlzbnByaW50Zihp
ZCwgc2l6ZW9mKGlkKSwgIiV1Iiwgc2VyaWFsKTsKKwlmaWxlX3ByaXYtPmNsaWVudC5yb290ID0g
a29iamVjdF9jcmVhdGVfYW5kX2FkZChpZCwKKwkJCQkJCQlpOTE1LT5jbGllbnRzLnJvb3QpOwor
CWlmICghZmlsZV9wcml2LT5jbGllbnQucm9vdCkKKwkJZ290byBlcnJfY2xpZW50OworCisJYXR0
ciA9ICZmaWxlX3ByaXYtPmNsaWVudC5hdHRyLm5hbWU7CisJc3lzZnNfYXR0cl9pbml0KCZhdHRy
LT5hdHRyKTsKKwlhdHRyLT5hdHRyLm5hbWUgPSAibmFtZSI7CisJYXR0ci0+YXR0ci5tb2RlID0g
MDQ0NDsKKwlhdHRyLT5zaG93ID0gc2hvd19jbGllbnRfbmFtZTsKKworCXJldCA9IHN5c2ZzX2Ny
ZWF0ZV9maWxlKGZpbGVfcHJpdi0+Y2xpZW50LnJvb3QsCisJCQkJKHN0cnVjdCBhdHRyaWJ1dGUg
KilhdHRyKTsKKwlpZiAocmV0KQorCQlnb3RvIGVycl9hdHRyX25hbWU7CisKKwlhdHRyID0gJmZp
bGVfcHJpdi0+Y2xpZW50LmF0dHIucGlkOworCXN5c2ZzX2F0dHJfaW5pdCgmYXR0ci0+YXR0cik7
CisJYXR0ci0+YXR0ci5uYW1lID0gInBpZCI7CisJYXR0ci0+YXR0ci5tb2RlID0gMDQ0NDsKKwlh
dHRyLT5zaG93ID0gc2hvd19jbGllbnRfcGlkOworCisJcmV0ID0gc3lzZnNfY3JlYXRlX2ZpbGUo
ZmlsZV9wcml2LT5jbGllbnQucm9vdCwKKwkJCQkoc3RydWN0IGF0dHJpYnV0ZSAqKWF0dHIpOwor
CWlmIChyZXQpCisJCWdvdG8gZXJyX2F0dHJfcGlkOworCisJZmlsZV9wcml2LT5jbGllbnQucGlk
ID0gcGlkX25yKGdldF90YXNrX3BpZCh0YXNrLCBQSURUWVBFX1BJRCkpOworCisJcmV0dXJuIDA7
CisKK2Vycl9hdHRyX3BpZDoKKwlzeXNmc19yZW1vdmVfZmlsZShmaWxlX3ByaXYtPmNsaWVudC5y
b290LAorCQkJICAoc3RydWN0IGF0dHJpYnV0ZSAqKSZmaWxlX3ByaXYtPmNsaWVudC5hdHRyLm5h
bWUpOworZXJyX2F0dHJfbmFtZToKKwlrb2JqZWN0X3B1dChmaWxlX3ByaXYtPmNsaWVudC5yb290
KTsKK2Vycl9jbGllbnQ6CisJa2ZyZWUoZmlsZV9wcml2LT5jbGllbnQubmFtZSk7CitlcnJfbmFt
ZToKKwlyZXR1cm4gcmV0OworfQorCitzdGF0aWMgdm9pZCBpOTE1X2dlbV9yZW1vdmVfY2xpZW50
KHN0cnVjdCBkcm1faTkxNV9maWxlX3ByaXZhdGUgKmZpbGVfcHJpdikKK3sKKwlzeXNmc19yZW1v
dmVfZmlsZShmaWxlX3ByaXYtPmNsaWVudC5yb290LAorCQkJICAoc3RydWN0IGF0dHJpYnV0ZSAq
KSZmaWxlX3ByaXYtPmNsaWVudC5hdHRyLnBpZCk7CisJc3lzZnNfcmVtb3ZlX2ZpbGUoZmlsZV9w
cml2LT5jbGllbnQucm9vdCwKKwkJCSAgKHN0cnVjdCBhdHRyaWJ1dGUgKikmZmlsZV9wcml2LT5j
bGllbnQuYXR0ci5uYW1lKTsKKwlrb2JqZWN0X3B1dChmaWxlX3ByaXYtPmNsaWVudC5yb290KTsK
KwlrZnJlZShmaWxlX3ByaXYtPmNsaWVudC5uYW1lKTsKK30KKwogdm9pZCBpOTE1X2dlbV9yZWxl
YXNlKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsIHN0cnVjdCBkcm1fZmlsZSAqZmlsZSkKIHsKIAlz
dHJ1Y3QgZHJtX2k5MTVfZmlsZV9wcml2YXRlICpmaWxlX3ByaXYgPSBmaWxlLT5kcml2ZXJfcHJp
djsKQEAgLTQ4MjcsMzMgKzQ5MTcsNDggQEAgdm9pZCBpOTE1X2dlbV9yZWxlYXNlKHN0cnVjdCBk
cm1fZGV2aWNlICpkZXYsIHN0cnVjdCBkcm1fZmlsZSAqZmlsZSkKIAlsaXN0X2Zvcl9lYWNoX2Vu
dHJ5KHJlcXVlc3QsICZmaWxlX3ByaXYtPm1tLnJlcXVlc3RfbGlzdCwgY2xpZW50X2xpbmspCiAJ
CXJlcXVlc3QtPmZpbGVfcHJpdiA9IE5VTEw7CiAJc3Bpbl91bmxvY2soJmZpbGVfcHJpdi0+bW0u
bG9jayk7CisKKwlpOTE1X2dlbV9yZW1vdmVfY2xpZW50KGZpbGVfcHJpdik7CiB9CiAKIGludCBp
OTE1X2dlbV9vcGVuKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LCBzdHJ1Y3QgZHJtX2Zp
bGUgKmZpbGUpCiB7CisJaW50IHJldCA9IC1FTk9NRU07CiAJc3RydWN0IGRybV9pOTE1X2ZpbGVf
cHJpdmF0ZSAqZmlsZV9wcml2OwotCWludCByZXQ7CiAKIAlEUk1fREVCVUcoIlxuIik7CiAKIAlm
aWxlX3ByaXYgPSBremFsbG9jKHNpemVvZigqZmlsZV9wcml2KSwgR0ZQX0tFUk5FTCk7CiAJaWYg
KCFmaWxlX3ByaXYpCi0JCXJldHVybiAtRU5PTUVNOworCQlnb3RvIGVycl9hbGxvYzsKKworCWZp
bGVfcHJpdi0+Y2xpZW50LmlkID0gYXRvbWljX2luY19yZXR1cm4oJmk5MTUtPmNsaWVudHMuc2Vy
aWFsKTsKKwlyZXQgPSBpOTE1X2dlbV9hZGRfY2xpZW50KGk5MTUsIGZpbGVfcHJpdiwgY3VycmVu
dCwKKwkJCQkgIGZpbGVfcHJpdi0+Y2xpZW50LmlkKTsKKwlpZiAocmV0KQorCQlnb3RvIGVycl9j
bGllbnQ7CiAKIAlmaWxlLT5kcml2ZXJfcHJpdiA9IGZpbGVfcHJpdjsKKwlyZXQgPSBpOTE1X2dl
bV9jb250ZXh0X29wZW4oaTkxNSwgZmlsZSk7CisJaWYgKHJldCkKKwkJZ290byBlcnJfY29udGV4
dDsKKwogCWZpbGVfcHJpdi0+ZGV2X3ByaXYgPSBpOTE1OwogCWZpbGVfcHJpdi0+ZmlsZSA9IGZp
bGU7CisJZmlsZV9wcml2LT5ic2RfZW5naW5lID0gLTE7CisJZmlsZV9wcml2LT5oYW5nX3RpbWVz
dGFtcCA9IGppZmZpZXM7CiAKIAlzcGluX2xvY2tfaW5pdCgmZmlsZV9wcml2LT5tbS5sb2NrKTsK
IAlJTklUX0xJU1RfSEVBRCgmZmlsZV9wcml2LT5tbS5yZXF1ZXN0X2xpc3QpOwogCi0JZmlsZV9w
cml2LT5ic2RfZW5naW5lID0gLTE7Ci0JZmlsZV9wcml2LT5oYW5nX3RpbWVzdGFtcCA9IGppZmZp
ZXM7Ci0KLQlyZXQgPSBpOTE1X2dlbV9jb250ZXh0X29wZW4oaTkxNSwgZmlsZSk7Ci0JaWYgKHJl
dCkKLQkJa2ZyZWUoZmlsZV9wcml2KTsKKwlyZXR1cm4gMDsKIAorZXJyX2NvbnRleHQ6CisJaTkx
NV9nZW1fcmVtb3ZlX2NsaWVudChmaWxlX3ByaXYpOworZXJyX2NsaWVudDoKKwlhdG9taWNfZGVj
KCZpOTE1LT5jbGllbnRzLnNlcmlhbCk7CisJa2ZyZWUoZmlsZV9wcml2KTsKK2Vycl9hbGxvYzoK
IAlyZXR1cm4gcmV0OwogfQogCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X3N5c2ZzLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3N5c2ZzLmMKaW5kZXggM2VmMDdi
OTg3ZDQwLi4wNmE1NTg0MzZmNTQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfc3lzZnMuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3N5c2ZzLmMKQEAgLTU3
Niw2ICs1NzYsMTEgQEAgdm9pZCBpOTE1X3NldHVwX3N5c2ZzKHN0cnVjdCBkcm1faTkxNV9wcml2
YXRlICpkZXZfcHJpdikKIAlzdHJ1Y3QgZGV2aWNlICprZGV2ID0gZGV2X3ByaXYtPmRybS5wcmlt
YXJ5LT5rZGV2OwogCWludCByZXQ7CiAKKwlkZXZfcHJpdi0+Y2xpZW50cy5yb290ID0KKwkJa29i
amVjdF9jcmVhdGVfYW5kX2FkZCgiY2xpZW50cyIsICZrZGV2LT5rb2JqKTsKKwlpZiAoIWRldl9w
cml2LT5jbGllbnRzLnJvb3QpCisJCURSTV9FUlJPUigiUGVyLWNsaWVudCBzeXNmcyBzZXR1cCBm
YWlsZWRcbiIpOworCiAjaWZkZWYgQ09ORklHX1BNCiAJaWYgKEhBU19SQzYoZGV2X3ByaXYpKSB7
CiAJCXJldCA9IHN5c2ZzX21lcmdlX2dyb3VwKCZrZGV2LT5rb2JqLApAQCAtNjM2LDQgKzY0MSw3
IEBAIHZvaWQgaTkxNV90ZWFyZG93bl9zeXNmcyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2
X3ByaXYpCiAJc3lzZnNfdW5tZXJnZV9ncm91cCgma2Rldi0+a29iaiwgJnJjNl9hdHRyX2dyb3Vw
KTsKIAlzeXNmc191bm1lcmdlX2dyb3VwKCZrZGV2LT5rb2JqLCAmcmM2cF9hdHRyX2dyb3VwKTsK
ICNlbmRpZgorCisJaWYgKGRldl9wcml2LT5jbGllbnRzLnJvb3QpCisJCWtvYmplY3RfcHV0KGRl
dl9wcml2LT5jbGllbnRzLnJvb3QpOwogfQotLSAKMi4xOS4xCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
