Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DE4C1E321C
	for <lists+intel-gfx@lfdr.de>; Wed, 27 May 2020 00:12:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BD5B56E20F;
	Tue, 26 May 2020 22:12:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 01D536E20F
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 May 2020 22:12:44 +0000 (UTC)
IronPort-SDR: yqFOuHqtOq2VwYvTPjl2RP+ul+cK8Q03F7eN/jXfRbkcmdHixz+kRvyPloAKK9cH2RiOb/qsgK
 SNrCu1trbU8Q==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2020 15:12:44 -0700
IronPort-SDR: wObfcacfX9e9you1Kgrzau7Tf5fazzjqBdJQVgzfSajMxMPEUrwaUWDDEgQCsiAEfBCgiPpwMg
 NfHzwMlyEOcA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,439,1583222400"; d="scan'208";a="310381860"
Received: from josouza-mobl2.jf.intel.com (HELO josouza-MOBL2.intel.com)
 ([10.24.14.40])
 by FMSMGA003.fm.intel.com with ESMTP; 26 May 2020 15:12:44 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 26 May 2020 15:14:43 -0700
Message-Id: <20200526221447.64110-2-jose.souza@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200526221447.64110-1-jose.souza@intel.com>
References: <20200526221447.64110-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/6] drm/i915: Add plane damage clips property
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

VGhpcyBwcm9wZXJ0eSB3aWxsIGJlIHVzZWQgYnkgUFNSMiBzb2Z0d2FyZSB0cmFja2luZywgYWRk
aW5nIGl0IHRvCkdFTjEyKy4KClNpZ25lZC1vZmYtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEg
PGpvc2Uuc291emFAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZGlzcGxheS5jIHwgNCArKysrCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX3Nwcml0ZS5jICB8IDQgKysrKwogMiBmaWxlcyBjaGFuZ2VkLCA4IGluc2VydGlvbnMoKykK
CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXku
YyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCmluZGV4IGY0
MGI5MDk5NTJjYy4uYjY5ODc4MzM0MDQwIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2Rpc3BsYXkuYwpAQCAtMzUsNiArMzUsNyBAQAogI2luY2x1ZGUgPGRybS9kcm1f
YXRvbWljLmg+CiAjaW5jbHVkZSA8ZHJtL2RybV9hdG9taWNfaGVscGVyLmg+CiAjaW5jbHVkZSA8
ZHJtL2RybV9hdG9taWNfdWFwaS5oPgorI2luY2x1ZGUgPGRybS9kcm1fZGFtYWdlX2hlbHBlci5o
PgogI2luY2x1ZGUgPGRybS9kcm1fZHBfaGVscGVyLmg+CiAjaW5jbHVkZSA8ZHJtL2RybV9lZGlk
Lmg+CiAjaW5jbHVkZSA8ZHJtL2RybV9mb3VyY2MuaD4KQEAgLTE2NDc2LDYgKzE2NDc3LDkgQEAg
aW50ZWxfY3Vyc29yX3BsYW5lX2NyZWF0ZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3By
aXYsCiAJenBvcyA9IFJVTlRJTUVfSU5GTyhkZXZfcHJpdiktPm51bV9zcHJpdGVzW3BpcGVdICsg
MTsKIAlkcm1fcGxhbmVfY3JlYXRlX3pwb3NfaW1tdXRhYmxlX3Byb3BlcnR5KCZjdXJzb3ItPmJh
c2UsIHpwb3MpOwogCisJaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0gMTIpCisJCWRybV9wbGFu
ZV9lbmFibGVfZmJfZGFtYWdlX2NsaXBzKCZjdXJzb3ItPmJhc2UpOworCiAJZHJtX3BsYW5lX2hl
bHBlcl9hZGQoJmN1cnNvci0+YmFzZSwgJmludGVsX3BsYW5lX2hlbHBlcl9mdW5jcyk7CiAKIAly
ZXR1cm4gY3Vyc29yOwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9zcHJpdGUuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfc3ByaXRl
LmMKaW5kZXggNTcxYzM2ZjkyOWJkLi44YmUwNmNiMjU5OTkgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfc3ByaXRlLmMKKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9zcHJpdGUuYwpAQCAtMzQsNiArMzQsNyBAQAogI2luY2x1ZGUg
PGRybS9kcm1fYXRvbWljX2hlbHBlci5oPgogI2luY2x1ZGUgPGRybS9kcm1fY29sb3JfbWdtdC5o
PgogI2luY2x1ZGUgPGRybS9kcm1fY3J0Yy5oPgorI2luY2x1ZGUgPGRybS9kcm1fZGFtYWdlX2hl
bHBlci5oPgogI2luY2x1ZGUgPGRybS9kcm1fZm91cmNjLmg+CiAjaW5jbHVkZSA8ZHJtL2RybV9w
bGFuZV9oZWxwZXIuaD4KICNpbmNsdWRlIDxkcm0vZHJtX3JlY3QuaD4KQEAgLTMxNTEsNiArMzE1
Miw5IEBAIHNrbF91bml2ZXJzYWxfcGxhbmVfY3JlYXRlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRl
ICpkZXZfcHJpdiwKIAogCWRybV9wbGFuZV9jcmVhdGVfenBvc19pbW11dGFibGVfcHJvcGVydHko
JnBsYW5lLT5iYXNlLCBwbGFuZV9pZCk7CiAKKwlpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSAx
MikKKwkJZHJtX3BsYW5lX2VuYWJsZV9mYl9kYW1hZ2VfY2xpcHMoJnBsYW5lLT5iYXNlKTsKKwog
CWRybV9wbGFuZV9oZWxwZXJfYWRkKCZwbGFuZS0+YmFzZSwgJmludGVsX3BsYW5lX2hlbHBlcl9m
dW5jcyk7CiAKIAlyZXR1cm4gcGxhbmU7Ci0tIAoyLjI2LjIKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
