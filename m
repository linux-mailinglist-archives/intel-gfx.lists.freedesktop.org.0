Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CCD3C20AA0C
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Jun 2020 03:00:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0297A6E379;
	Fri, 26 Jun 2020 01:00:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D18986E379
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 Jun 2020 01:00:31 +0000 (UTC)
IronPort-SDR: 061xoilsABBjZGGFu1x8VdSJC/mg2ZaQC3XMtn9bheCkixbZygYiMNlnXT+lDImULFEmsoWs7p
 Br3CUk9zqnwg==
X-IronPort-AV: E=McAfee;i="6000,8403,9663"; a="145199129"
X-IronPort-AV: E=Sophos;i="5.75,281,1589266800"; d="scan'208";a="145199129"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2020 18:00:31 -0700
IronPort-SDR: Fv9hW1r7SxOW5KFajAVl0MXbca/ltZnRwxzSglHOWVNlDPWMaaWiV/QjL19SgE8SYCqivvo3s1
 FBy1uFIXz9AQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,281,1589266800"; d="scan'208";a="319887736"
Received: from josouza-mobl2.jf.intel.com (HELO josouza-MOBL2.intel.com)
 ([10.24.14.51])
 by FMSMGA003.fm.intel.com with ESMTP; 25 Jun 2020 18:00:30 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 25 Jun 2020 18:01:47 -0700
Message-Id: <20200626010151.221388-1-jose.souza@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 1/5] drm/i915: Add plane damage clips property
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
aW5nIGl0IHRvCkdFTjEyKy4KClJldmlld2VkLWJ5OiBHd2FuLWd5ZW9uZyBNdW4gPGd3YW4tZ3ll
b25nLm11bkBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEg
PGpvc2Uuc291emFAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZGlzcGxheS5jIHwgNCArKysrCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX3Nwcml0ZS5jICB8IDQgKysrKwogMiBmaWxlcyBjaGFuZ2VkLCA4IGluc2VydGlvbnMoKykK
CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXku
YyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCmluZGV4IGEx
MWJiNjc1ZjliMy4uYjY2MDA4YjgwNTg5IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2Rpc3BsYXkuYwpAQCAtMzUsNiArMzUsNyBAQAogI2luY2x1ZGUgPGRybS9kcm1f
YXRvbWljLmg+CiAjaW5jbHVkZSA8ZHJtL2RybV9hdG9taWNfaGVscGVyLmg+CiAjaW5jbHVkZSA8
ZHJtL2RybV9hdG9taWNfdWFwaS5oPgorI2luY2x1ZGUgPGRybS9kcm1fZGFtYWdlX2hlbHBlci5o
PgogI2luY2x1ZGUgPGRybS9kcm1fZHBfaGVscGVyLmg+CiAjaW5jbHVkZSA8ZHJtL2RybV9lZGlk
Lmg+CiAjaW5jbHVkZSA8ZHJtL2RybV9mb3VyY2MuaD4KQEAgLTE2NDc1LDYgKzE2NDc2LDkgQEAg
aW50ZWxfY3Vyc29yX3BsYW5lX2NyZWF0ZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3By
aXYsCiAJenBvcyA9IFJVTlRJTUVfSU5GTyhkZXZfcHJpdiktPm51bV9zcHJpdGVzW3BpcGVdICsg
MTsKIAlkcm1fcGxhbmVfY3JlYXRlX3pwb3NfaW1tdXRhYmxlX3Byb3BlcnR5KCZjdXJzb3ItPmJh
c2UsIHpwb3MpOwogCisJaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0gMTIpCisJCWRybV9wbGFu
ZV9lbmFibGVfZmJfZGFtYWdlX2NsaXBzKCZjdXJzb3ItPmJhc2UpOworCiAJZHJtX3BsYW5lX2hl
bHBlcl9hZGQoJmN1cnNvci0+YmFzZSwgJmludGVsX3BsYW5lX2hlbHBlcl9mdW5jcyk7CiAKIAly
ZXR1cm4gY3Vyc29yOwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9zcHJpdGUuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfc3ByaXRl
LmMKaW5kZXggM2NkNDYxYmY5MTMxLi5kMDM4NjBmZWYyZDcgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfc3ByaXRlLmMKKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9zcHJpdGUuYwpAQCAtMzQsNiArMzQsNyBAQAogI2luY2x1ZGUg
PGRybS9kcm1fYXRvbWljX2hlbHBlci5oPgogI2luY2x1ZGUgPGRybS9kcm1fY29sb3JfbWdtdC5o
PgogI2luY2x1ZGUgPGRybS9kcm1fY3J0Yy5oPgorI2luY2x1ZGUgPGRybS9kcm1fZGFtYWdlX2hl
bHBlci5oPgogI2luY2x1ZGUgPGRybS9kcm1fZm91cmNjLmg+CiAjaW5jbHVkZSA8ZHJtL2RybV9w
bGFuZV9oZWxwZXIuaD4KICNpbmNsdWRlIDxkcm0vZHJtX3JlY3QuaD4KQEAgLTMxNTYsNiArMzE1
Nyw5IEBAIHNrbF91bml2ZXJzYWxfcGxhbmVfY3JlYXRlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRl
ICpkZXZfcHJpdiwKIAogCWRybV9wbGFuZV9jcmVhdGVfenBvc19pbW11dGFibGVfcHJvcGVydHko
JnBsYW5lLT5iYXNlLCBwbGFuZV9pZCk7CiAKKwlpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSAx
MikKKwkJZHJtX3BsYW5lX2VuYWJsZV9mYl9kYW1hZ2VfY2xpcHMoJnBsYW5lLT5iYXNlKTsKKwog
CWRybV9wbGFuZV9oZWxwZXJfYWRkKCZwbGFuZS0+YmFzZSwgJmludGVsX3BsYW5lX2hlbHBlcl9m
dW5jcyk7CiAKIAlyZXR1cm4gcGxhbmU7Ci0tIAoyLjI3LjAKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
