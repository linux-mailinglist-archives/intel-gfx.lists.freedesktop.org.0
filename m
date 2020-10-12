Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BDEC28C429
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Oct 2020 23:31:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A38FB6E81A;
	Mon, 12 Oct 2020 21:31:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6160F6E7E6
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Oct 2020 21:30:56 +0000 (UTC)
IronPort-SDR: Vm4dPTA25KMlAEqK3aD5LH5ZhyIXerOZFUvAu3D0q4gWEPyjaYb/gmBw1b7v13p9H0LQ+VRCc3
 +mwzG0Gh3x0w==
X-IronPort-AV: E=McAfee;i="6000,8403,9772"; a="163169624"
X-IronPort-AV: E=Sophos;i="5.77,368,1596524400"; d="scan'208";a="163169624"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2020 14:30:55 -0700
IronPort-SDR: 0TsIwKmz11C9ZR1M+DoOwvvJuQW5+LHnAR60O8Vdcl/tUY5xhJA+rFjtBQ1me9XF281YeszC7D
 DjIVXMBidCWQ==
X-IronPort-AV: E=Sophos;i="5.77,368,1596524400"; d="scan'208";a="463245000"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.202])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2020 14:30:54 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 12 Oct 2020 14:29:55 -0700
Message-Id: <20201012212959.871513-12-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201012212959.871513-1-lucas.demarchi@intel.com>
References: <20201012212959.871513-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v7 11/15] drm/i915/dg1: Load DMC
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

RnJvbTogTWF0dCBBdHdvb2QgPG1hdHRoZXcucy5hdHdvb2RAaW50ZWwuY29tPgoKQWRkIHN1cHBv
cnQgdG8gbG9hZCBETUMgdjIuMC4yIG9uIERHMQoKV2hpbGUgd2UncmUgYXQgaXQsIG1ha2UgVEdM
IHVzZSB0aGUgc2FtZSBHRU4xMiBmaXJtd2FyZSBzaXplIGRlZmluaXRpb24KYW5kIHJlbW92ZSBv
YnNvbGV0ZSBjb21tZW50LgoKQnBlYzogNDkyMzAKCnYyOiBkbyBub3QgcmVwbGFjZSBHRU4xMl9D
U1JfTUFYX0ZXX1NJWkUgKGZyb20gSm9zw6kpCiAgICBhbmQgcmVwbGFjZSBzdGFsZSBjb21tZW50
CgpDYzogTWF0dCBSb3BlciA8bWF0dGhldy5kLnJvcGVyQGludGVsLmNvbT4KU2lnbmVkLW9mZi1i
eTogTWF0dCBBdHdvb2QgPG1hdHRoZXcucy5hdHdvb2RAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5
OiBMdWNhcyBEZSBNYXJjaGkgPGx1Y2FzLmRlbWFyY2hpQGludGVsLmNvbT4KUmV2aWV3ZWQtYnk6
IE1hdHQgUm9wZXIgPG1hdHRoZXcuZC5yb3BlckBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jc3IuYyB8IDEyICsrKysrKysrKy0tLQogMSBmaWxlIGNo
YW5nZWQsIDkgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Nzci5jIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9jc3IuYwppbmRleCBkNWRiMTY3NjQ2MTkuLjY3ZGM2NGRmNzhhNSAx
MDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jc3IuYworKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Nzci5jCkBAIC00MCwxMyArNDAs
MTYgQEAKIAogI2RlZmluZSBHRU4xMl9DU1JfTUFYX0ZXX1NJWkUJCUlDTF9DU1JfTUFYX0ZXX1NJ
WkUKIAorI2RlZmluZSBERzFfQ1NSX1BBVEgJCQkiaTkxNS9kZzFfZG1jX3ZlcjJfMDIuYmluIgor
I2RlZmluZSBERzFfQ1NSX1ZFUlNJT05fUkVRVUlSRUQJQ1NSX1ZFUlNJT04oMiwgMikKK01PRFVM
RV9GSVJNV0FSRShERzFfQ1NSX1BBVEgpOworCiAjZGVmaW5lIFJLTF9DU1JfUEFUSAkJCSJpOTE1
L3JrbF9kbWNfdmVyMl8wMi5iaW4iCiAjZGVmaW5lIFJLTF9DU1JfVkVSU0lPTl9SRVFVSVJFRAlD
U1JfVkVSU0lPTigyLCAyKQogTU9EVUxFX0ZJUk1XQVJFKFJLTF9DU1JfUEFUSCk7CiAKICNkZWZp
bmUgVEdMX0NTUl9QQVRICQkJImk5MTUvdGdsX2RtY192ZXIyXzA4LmJpbiIKICNkZWZpbmUgVEdM
X0NTUl9WRVJTSU9OX1JFUVVJUkVECUNTUl9WRVJTSU9OKDIsIDgpCi0jZGVmaW5lIFRHTF9DU1Jf
TUFYX0ZXX1NJWkUJCTB4NjAwMAogTU9EVUxFX0ZJUk1XQVJFKFRHTF9DU1JfUEFUSCk7CiAKICNk
ZWZpbmUgSUNMX0NTUl9QQVRICQkJImk5MTUvaWNsX2RtY192ZXIxXzA5LmJpbiIKQEAgLTY4Niwx
NCArNjg5LDE3IEBAIHZvaWQgaW50ZWxfY3NyX3Vjb2RlX2luaXQoc3RydWN0IGRybV9pOTE1X3By
aXZhdGUgKmRldl9wcml2KQogCSAqLwogCWludGVsX2Nzcl9ydW50aW1lX3BtX2dldChkZXZfcHJp
dik7CiAKLQlpZiAoSVNfUk9DS0VUTEFLRShkZXZfcHJpdikpIHsKKwlpZiAoSVNfREcxKGRldl9w
cml2KSkgeworCQljc3ItPmZ3X3BhdGggPSBERzFfQ1NSX1BBVEg7CisJCWNzci0+cmVxdWlyZWRf
dmVyc2lvbiA9IERHMV9DU1JfVkVSU0lPTl9SRVFVSVJFRDsKKwkJY3NyLT5tYXhfZndfc2l6ZSA9
IEdFTjEyX0NTUl9NQVhfRldfU0laRTsKKwl9IGVsc2UgaWYgKElTX1JPQ0tFVExBS0UoZGV2X3By
aXYpKSB7CiAJCWNzci0+ZndfcGF0aCA9IFJLTF9DU1JfUEFUSDsKIAkJY3NyLT5yZXF1aXJlZF92
ZXJzaW9uID0gUktMX0NTUl9WRVJTSU9OX1JFUVVJUkVEOwogCQljc3ItPm1heF9md19zaXplID0g
R0VOMTJfQ1NSX01BWF9GV19TSVpFOwogCX0gZWxzZSBpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+
PSAxMikgewogCQljc3ItPmZ3X3BhdGggPSBUR0xfQ1NSX1BBVEg7CiAJCWNzci0+cmVxdWlyZWRf
dmVyc2lvbiA9IFRHTF9DU1JfVkVSU0lPTl9SRVFVSVJFRDsKLQkJLyogQWxsb3cgdG8gbG9hZCBm
dyB2aWEgcGFyYW1ldGVyIHVzaW5nIHRoZSBsYXN0IGtub3duIHNpemUgKi8KIAkJY3NyLT5tYXhf
Zndfc2l6ZSA9IEdFTjEyX0NTUl9NQVhfRldfU0laRTsKIAl9IGVsc2UgaWYgKElTX0dFTihkZXZf
cHJpdiwgMTEpKSB7CiAJCWNzci0+ZndfcGF0aCA9IElDTF9DU1JfUEFUSDsKLS0gCjIuMjguMAoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
