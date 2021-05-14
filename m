Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 99C0D380D62
	for <lists+intel-gfx@lfdr.de>; Fri, 14 May 2021 17:37:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D71626F395;
	Fri, 14 May 2021 15:37:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B69A6EF2E
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 May 2021 15:37:21 +0000 (UTC)
IronPort-SDR: IMt9H+wRU7Cr38cTLvOSHllrTSG1py0gNfRKvhFCgg26RTzOIfoKvz2wI7VdjACT+uC/IdiNYK
 nRYWuSpQqZkA==
X-IronPort-AV: E=McAfee;i="6200,9189,9984"; a="200243925"
X-IronPort-AV: E=Sophos;i="5.82,300,1613462400"; d="scan'208";a="200243925"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2021 08:37:19 -0700
IronPort-SDR: iS8xp1Q2cFEU0chaba/ku81uJI+eRe0IcdGRClRwxv3qfma+BOgAbqfpfMYa6OkAnveekFDMQC
 oZChQJPRDRBg==
X-IronPort-AV: E=Sophos;i="5.82,300,1613462400"; d="scan'208";a="610796573"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.168])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2021 08:37:18 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 14 May 2021 08:37:02 -0700
Message-Id: <20210514153711.2359617-11-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20210514153711.2359617-1-matthew.d.roper@intel.com>
References: <20210514153711.2359617-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 10/19] drm/i915/adl_p: Enable modular fia
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

RnJvbTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+CgpBbGRl
cmxha2UgUCBoYXZlIG1vZHVsYXIgRklBIGxpa2UgVEdMIGJ1dCBpdCBpcyBhbHdheXMgbW9kdWxh
ciBpbiBhbGwKc2t1cywgbm90IGxpa2UgVEdMIHRoYXQgd2UgaGFkIHRvIHJlYWQgYSByZWdpc3Rl
ciB0byBjaGVjayBpZiBpdCBpcwptb25vbGl0aGljIG9yIG1vZHVsYXIuCgpCU3BlYzogNTU0ODAK
QlNwZWM6IDUwNTcyCkNjOiBJbXJlIERlYWsgPGltcmUuZGVha0BpbnRlbC5jb20+ClNpZ25lZC1v
ZmYtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPgpTaWdu
ZWQtb2ZmLWJ5OiBDbGludG9uIFRheWxvciA8Q2xpbnRvbi5BLlRheWxvckBpbnRlbC5jb20+ClNp
Z25lZC1vZmYtYnk6IE1hdHQgUm9wZXIgPG1hdHRoZXcuZC5yb3BlckBpbnRlbC5jb20+ClJldmll
d2VkLWJ5OiBJbXJlIERlYWsgPGltcmUuZGVha0BpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF90Yy5jIHwgNCArKysrCiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X3BjaS5jICAgICAgICAgfCAxICsKIDIgZmlsZXMgY2hhbmdlZCwgNSBpbnNlcnRpb25z
KCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF90Yy5j
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF90Yy5jCmluZGV4IGQyZDUyNDMy
OTUwOS4uZTMyNTQ2M2FjZGRkIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX3RjLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF90
Yy5jCkBAIC02MjQsNiArNjI0LDEwIEBAIHRjX2hhc19tb2R1bGFyX2ZpYShzdHJ1Y3QgZHJtX2k5
MTVfcHJpdmF0ZSAqaTkxNSwgc3RydWN0IGludGVsX2RpZ2l0YWxfcG9ydCAqZGlnCiAJaWYgKCFJ
TlRFTF9JTkZPKGk5MTUpLT5kaXNwbGF5Lmhhc19tb2R1bGFyX2ZpYSkKIAkJcmV0dXJuIGZhbHNl
OwogCisJLyogVE9ETzogY2hlY2sgaWYgaW4gcmVhbCBIVyBNT0RVTEFSX0ZJQV9NQVNLIGlzIHNl
dCwgaWYgc28gcmVtb3ZlIHRoaXMgYmxvY2sgKi8KKwlpZiAoSVNfQUxERVJMQUtFX1AoaTkxNSkp
CisJCXJldHVybiB0cnVlOworCiAJd2FrZXJlZiA9IHRjX2NvbGRfYmxvY2soZGlnX3BvcnQpOwog
CXZhbCA9IGludGVsX3VuY29yZV9yZWFkKCZpOTE1LT51bmNvcmUsIFBPUlRfVFhfREZMRVhEUFNQ
KEZJQTEpKTsKIAl0Y19jb2xkX3VuYmxvY2soZGlnX3BvcnQsIHdha2VyZWYpOwpkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wY2kuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfcGNpLmMKaW5kZXggM2ExY2VjMmJhOGNhLi41NzQ4ODFjMGUzMzkgMTAwNjQ0Ci0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGNpLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9wY2kuYwpAQCAtOTU0LDYgKzk1NCw3IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgaW50
ZWxfZGV2aWNlX2luZm8gYWRsX3BfaW5mbyA9IHsKIAlYRV9MUERfRkVBVFVSRVMsCiAJUExBVEZP
Uk0oSU5URUxfQUxERVJMQUtFX1ApLAogCS5yZXF1aXJlX2ZvcmNlX3Byb2JlID0gMSwKKwkuZGlz
cGxheS5oYXNfbW9kdWxhcl9maWEgPSAxLAogCS5wbGF0Zm9ybV9lbmdpbmVfbWFzayA9CiAJCUJJ
VChSQ1MwKSB8IEJJVChCQ1MwKSB8IEJJVChWRUNTMCkgfCBCSVQoVkNTMCkgfCBCSVQoVkNTMiks
CiAJLnBwZ3R0X3NpemUgPSA0OCwKLS0gCjIuMjUuNAoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
