Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3859DD90C8
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Oct 2019 14:26:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 938526E0B8;
	Wed, 16 Oct 2019 12:26:06 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6F9AA6E0B8
 for <Intel-gfx@lists.freedesktop.org>; Wed, 16 Oct 2019 12:26:05 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Oct 2019 05:26:04 -0700
X-IronPort-AV: E=Sophos;i="5.67,303,1566889200"; d="scan'208";a="202057048"
Received: from dwiesing-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.31.172])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Oct 2019 05:26:03 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Wed, 16 Oct 2019 13:25:55 +0100
Message-Id: <20191016122557.9315-1-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/3] drm/i915: Make i915_gem_load_power_context
 take struct intel_gt
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

RnJvbTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KClRoZSBjb2Rl
IHVuZGVybmVhdGggd29ya3Mgb24gaW50ZWxfZ3QgYW5kIGFsc28gcmVuYW1lIHRvCmk5MTVfZ2Vt
X2xvYWRfZ3RfcG93ZXJfY29udGV4dCB0byBzaWduaWZ5IGl0IGlzIG9wZXJhdGluZyBvbiBHVC4K
ClNpZ25lZC1vZmYtYnk6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+
CkNjOiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KLS0tCiBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fcG0uYyB8IDI0ICsrKysrKysrKysrKystLS0tLS0t
LS0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3BtLmggfCAgMyArKy0KIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtLmMgICAgICAgIHwgIDIgKy0KIDMgZmlsZXMgY2hh
bmdlZCwgMTYgaW5zZXJ0aW9ucygrKSwgMTMgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3BtLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9nZW0vaTkxNV9nZW1fcG0uYwppbmRleCA3OTg3YjU0ZmIxZjUuLmIyYzE4Njc0YzQ1NSAxMDA2
NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3BtLmMKKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3BtLmMKQEAgLTU2LDkgKzU2LDkgQEAgc3Rh
dGljIGJvb2wgc3dpdGNoX3RvX2tlcm5lbF9jb250ZXh0X3N5bmMoc3RydWN0IGludGVsX2d0ICpn
dCkKIAlyZXR1cm4gcmVzdWx0OwogfQogCi1ib29sIGk5MTVfZ2VtX2xvYWRfcG93ZXJfY29udGV4
dChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkKK2Jvb2wgaTkxNV9nZW1fbG9hZF9ndF9w
b3dlcl9jb250ZXh0KHN0cnVjdCBpbnRlbF9ndCAqZ3QpCiB7Ci0JcmV0dXJuIHN3aXRjaF90b19r
ZXJuZWxfY29udGV4dF9zeW5jKCZpOTE1LT5ndCk7CisJcmV0dXJuIHN3aXRjaF90b19rZXJuZWxf
Y29udGV4dF9zeW5jKGd0KTsKIH0KIAogc3RhdGljIHZvaWQgdXNlcl9mb3JjZXdha2Uoc3RydWN0
IGludGVsX2d0ICpndCwgYm9vbCBzdXNwZW5kKQpAQCAtMTcyLDExICsxNzIsMTMgQEAgdm9pZCBp
OTE1X2dlbV9zdXNwZW5kX2xhdGUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCiAKIHZv
aWQgaTkxNV9nZW1fcmVzdW1lKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQogeworCXN0
cnVjdCBpbnRlbF9ndCAqZ3QgPSAmaTkxNS0+Z3Q7CisKIAlHRU1fVFJBQ0UoIlxuIik7CiAKLQlp
bnRlbF91bmNvcmVfZm9yY2V3YWtlX2dldCgmaTkxNS0+dW5jb3JlLCBGT1JDRVdBS0VfQUxMKTsK
KwlpbnRlbF91bmNvcmVfZm9yY2V3YWtlX2dldChndC0+dW5jb3JlLCBGT1JDRVdBS0VfQUxMKTsK
IAotCWlmIChpbnRlbF9ndF9pbml0X2h3KCZpOTE1LT5ndCkpCisJaWYgKGludGVsX2d0X2luaXRf
aHcoZ3QpKQogCQlnb3RvIGVycl93ZWRnZWQ7CiAKIAkvKgpAQCAtMTg0LDI2ICsxODYsMjYgQEAg
dm9pZCBpOTE1X2dlbV9yZXN1bWUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCiAJICog
Z3VhcmFudGVlIHRoYXQgdGhlIGNvbnRleHQgaW1hZ2UgaXMgY29tcGxldGUuIFNvIGxldCdzIGp1
c3QgcmVzZXQKIAkgKiBpdCBhbmQgc3RhcnQgYWdhaW4uCiAJICovCi0JaWYgKGludGVsX2d0X3Jl
c3VtZSgmaTkxNS0+Z3QpKQorCWlmIChpbnRlbF9ndF9yZXN1bWUoZ3QpKQogCQlnb3RvIGVycl93
ZWRnZWQ7CiAKLQlpbnRlbF91Y19yZXN1bWUoJmk5MTUtPmd0LnVjKTsKKwlpbnRlbF91Y19yZXN1
bWUoJmd0LT51Yyk7CiAKIAkvKiBBbHdheXMgcmVsb2FkIGEgY29udGV4dCBmb3IgcG93ZXJzYXZp
bmcuICovCi0JaWYgKCFpOTE1X2dlbV9sb2FkX3Bvd2VyX2NvbnRleHQoaTkxNSkpCisJaWYgKCFp
OTE1X2dlbV9sb2FkX2d0X3Bvd2VyX2NvbnRleHQoZ3QpKQogCQlnb3RvIGVycl93ZWRnZWQ7CiAK
LQl1c2VyX2ZvcmNld2FrZSgmaTkxNS0+Z3QsIGZhbHNlKTsKKwl1c2VyX2ZvcmNld2FrZShndCwg
ZmFsc2UpOwogCiBvdXRfdW5sb2NrOgotCWludGVsX3VuY29yZV9mb3JjZXdha2VfcHV0KCZpOTE1
LT51bmNvcmUsIEZPUkNFV0FLRV9BTEwpOworCWludGVsX3VuY29yZV9mb3JjZXdha2VfcHV0KGd0
LT51bmNvcmUsIEZPUkNFV0FLRV9BTEwpOwogCXJldHVybjsKIAogZXJyX3dlZGdlZDoKLQlpZiAo
IWludGVsX2d0X2lzX3dlZGdlZCgmaTkxNS0+Z3QpKSB7CisJaWYgKCFpbnRlbF9ndF9pc193ZWRn
ZWQoZ3QpKSB7CiAJCWRldl9lcnIoaTkxNS0+ZHJtLmRldiwKIAkJCSJGYWlsZWQgdG8gcmUtaW5p
dGlhbGl6ZSBHUFUsIGRlY2xhcmluZyBpdCB3ZWRnZWQhXG4iKTsKLQkJaW50ZWxfZ3Rfc2V0X3dl
ZGdlZCgmaTkxNS0+Z3QpOworCQlpbnRlbF9ndF9zZXRfd2VkZ2VkKGd0KTsKIAl9CiAJZ290byBv
dXRfdW5sb2NrOwogfQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVf
Z2VtX3BtLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fcG0uaAppbmRleCA2
ZjdkNWQxMWFjM2IuLjM4ZWFjZTRjYjZiYSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ2VtL2k5MTVfZ2VtX3BtLmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVf
Z2VtX3BtLmgKQEAgLTEwLDExICsxMCwxMiBAQAogI2luY2x1ZGUgPGxpbnV4L3R5cGVzLmg+CiAK
IHN0cnVjdCBkcm1faTkxNV9wcml2YXRlOworc3RydWN0IGludGVsX2d0Owogc3RydWN0IHdvcmtf
c3RydWN0OwogCiB2b2lkIGk5MTVfZ2VtX2luaXRfX3BtKHN0cnVjdCBkcm1faTkxNV9wcml2YXRl
ICppOTE1KTsKIAotYm9vbCBpOTE1X2dlbV9sb2FkX3Bvd2VyX2NvbnRleHQoc3RydWN0IGRybV9p
OTE1X3ByaXZhdGUgKmk5MTUpOworYm9vbCBpOTE1X2dlbV9sb2FkX2d0X3Bvd2VyX2NvbnRleHQo
c3RydWN0IGludGVsX2d0ICpndCk7CiB2b2lkIGk5MTVfZ2VtX3Jlc3VtZShzdHJ1Y3QgZHJtX2k5
MTVfcHJpdmF0ZSAqaTkxNSk7CiAKIHZvaWQgaTkxNV9nZW1faWRsZV93b3JrX2hhbmRsZXIoc3Ry
dWN0IHdvcmtfc3RydWN0ICp3b3JrKTsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfZ2VtLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbS5jCmluZGV4IDBkZGJk
M2E1ZmI4ZC4uYzRlYmMyMWM2ODIwIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X2dlbS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtLmMKQEAgLTExMzIs
NyArMTEzMiw3IEBAIHN0YXRpYyBpbnQgX19pbnRlbF9lbmdpbmVzX3JlY29yZF9kZWZhdWx0cyhz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkKIAl9CiAKIAkvKiBGbHVzaCB0aGUgZGVmYXVs
dCBjb250ZXh0IGltYWdlIHRvIG1lbW9yeSwgYW5kIGVuYWJsZSBwb3dlcnNhdmluZy4gKi8KLQlp
ZiAoIWk5MTVfZ2VtX2xvYWRfcG93ZXJfY29udGV4dChpOTE1KSkgeworCWlmICghaTkxNV9nZW1f
bG9hZF9ndF9wb3dlcl9jb250ZXh0KCZpOTE1LT5ndCkpIHsKIAkJZXJyID0gLUVJTzsKIAkJZ290
byBvdXQ7CiAJfQotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZng=
