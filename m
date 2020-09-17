Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CEC0426E786
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Sep 2020 23:43:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E5B516E065;
	Thu, 17 Sep 2020 21:43:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4BD106E065
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Sep 2020 21:43:38 +0000 (UTC)
IronPort-SDR: DyQLPhoWcYsANE3v3Hrn2FXMmdal7Jig2q55borCfOHMjnCyjbxW9W6srRgAWmcPqIrsYzaGR8
 ZH4nEdog1rXQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9747"; a="157185198"
X-IronPort-AV: E=Sophos;i="5.77,272,1596524400"; d="scan'208";a="157185198"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2020 14:43:37 -0700
IronPort-SDR: 0ILARRZsT2ORuVoisnlH5mb1IxDB/0OJiGTi1BlLVVLi0z54Qw3HfmPG+iF18aASq/bF7bQWEz
 iiIlOVLxkFHg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,272,1596524400"; d="scan'208";a="344508263"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by FMSMGA003.fm.intel.com with SMTP; 17 Sep 2020 14:43:36 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 18 Sep 2020 00:43:35 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 18 Sep 2020 00:43:33 +0300
Message-Id: <20200917214335.3569-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/3] drm/i915: Extract intel_dp_output_format()
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClJl
ZmFjdG9yIHRoZSBvdXRwdXRfZm9ybWF0IGNhbGN1bGF0aW9uIGludG8gYSBoZWxwZXIgc28gdGhh
dAp3ZSBjYW4gcmV1c2UgaXQgZm9yIG1vZGUgdmFsaWRhdGlvbiBhcyB3ZWxsLgoKU2lnbmVkLW9m
Zi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KLS0t
CiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMgfCAzMiArKysrKysrKysr
KysrKystLS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgMjAgaW5zZXJ0aW9ucygrKSwgMTIgZGVs
ZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kcC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jCmluZGV4IGJm
MWU5Y2YxYzBmMy4uYWQ5YjhiMTZmYWRiIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2RwLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kcC5jCkBAIC01OTIsNiArNTkyLDIyIEBAIHN0YXRpYyB1OCBpbnRlbF9kcF9kc2NfZ2V0
X3NsaWNlX2NvdW50KHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsCiAJcmV0dXJuIDA7CiB9CiAK
K3N0YXRpYyBlbnVtIGludGVsX291dHB1dF9mb3JtYXQKK2ludGVsX2RwX291dHB1dF9mb3JtYXQo
c3RydWN0IGRybV9jb25uZWN0b3IgKmNvbm5lY3RvciwKKwkJICAgICAgIGNvbnN0IHN0cnVjdCBk
cm1fZGlzcGxheV9tb2RlICptb2RlKQoreworCXN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAgPSBp
bnRlbF9hdHRhY2hlZF9kcCh0b19pbnRlbF9jb25uZWN0b3IoY29ubmVjdG9yKSk7CisJY29uc3Qg
c3RydWN0IGRybV9kaXNwbGF5X2luZm8gKmluZm8gPSAmY29ubmVjdG9yLT5kaXNwbGF5X2luZm87
CisKKwlpZiAoIWRybV9tb2RlX2lzXzQyMF9vbmx5KGluZm8sIG1vZGUpKQorCQlyZXR1cm4gSU5U
RUxfT1VUUFVUX0ZPUk1BVF9SR0I7CisKKwlpZiAoaW50ZWxfZHAtPmRmcC55Y2Jjcl80NDRfdG9f
NDIwKQorCQlyZXR1cm4gSU5URUxfT1VUUFVUX0ZPUk1BVF9ZQ0JDUjQ0NDsKKwllbHNlCisJCXJl
dHVybiBJTlRFTF9PVVRQVVRfRk9STUFUX1lDQkNSNDIwOworfQorCiBzdGF0aWMgYm9vbCBpbnRl
bF9kcF9oZGlzcGxheV9iYWQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAogCQkJ
CSAgaW50IGhkaXNwbGF5KQogewpAQCAtMjQzMCwyNyArMjQ0NiwyMCBAQCBpbnRlbF9kcF9jb21w
dXRlX2xpbmtfY29uZmlnKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyLAogfQogCiBzdGF0
aWMgaW50Ci1pbnRlbF9kcF95Y2JjcjQyMF9jb25maWcoc3RydWN0IGludGVsX2RwICppbnRlbF9k
cCwKLQkJCSBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwKK2ludGVsX2RwX3lj
YmNyNDIwX2NvbmZpZyhzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwKIAkJCSBj
b25zdCBzdHJ1Y3QgZHJtX2Nvbm5lY3Rvcl9zdGF0ZSAqY29ubl9zdGF0ZSkKIHsKIAlzdHJ1Y3Qg
ZHJtX2Nvbm5lY3RvciAqY29ubmVjdG9yID0gY29ubl9zdGF0ZS0+Y29ubmVjdG9yOwotCWNvbnN0
IHN0cnVjdCBkcm1fZGlzcGxheV9pbmZvICppbmZvID0gJmNvbm5lY3Rvci0+ZGlzcGxheV9pbmZv
OwogCWNvbnN0IHN0cnVjdCBkcm1fZGlzcGxheV9tb2RlICphZGp1c3RlZF9tb2RlID0KIAkJJmNy
dGNfc3RhdGUtPmh3LmFkanVzdGVkX21vZGU7CiAKIAlpZiAoIWNvbm5lY3Rvci0+eWNiY3JfNDIw
X2FsbG93ZWQpCiAJCXJldHVybiAwOwogCi0JaWYgKCFkcm1fbW9kZV9pc180MjBfb25seShpbmZv
LCBhZGp1c3RlZF9tb2RlKSkKLQkJcmV0dXJuIDA7CisJY3J0Y19zdGF0ZS0+b3V0cHV0X2Zvcm1h
dCA9IGludGVsX2RwX291dHB1dF9mb3JtYXQoY29ubmVjdG9yLCBhZGp1c3RlZF9tb2RlKTsKIAot
CWlmIChpbnRlbF9kcC0+ZGZwLnljYmNyXzQ0NF90b180MjApIHsKLQkJY3J0Y19zdGF0ZS0+b3V0
cHV0X2Zvcm1hdCA9IElOVEVMX09VVFBVVF9GT1JNQVRfWUNCQ1I0NDQ7CisJaWYgKGNydGNfc3Rh
dGUtPm91dHB1dF9mb3JtYXQgIT0gSU5URUxfT1VUUFVUX0ZPUk1BVF9ZQ0JDUjQyMCkKIAkJcmV0
dXJuIDA7Ci0JfQotCi0JY3J0Y19zdGF0ZS0+b3V0cHV0X2Zvcm1hdCA9IElOVEVMX09VVFBVVF9G
T1JNQVRfWUNCQ1I0MjA7CiAKIAlyZXR1cm4gaW50ZWxfcGNoX3BhbmVsX2ZpdHRpbmcoY3J0Y19z
dGF0ZSwgY29ubl9zdGF0ZSk7CiB9CkBAIC0yNzEwLDggKzI3MTksNyBAQCBpbnRlbF9kcF9jb21w
dXRlX2NvbmZpZyhzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwKIAlpZiAobHNwY29uLT5h
Y3RpdmUpCiAJCWxzcGNvbl95Y2JjcjQyMF9jb25maWcoJmludGVsX2Nvbm5lY3Rvci0+YmFzZSwg
cGlwZV9jb25maWcpOwogCWVsc2UKLQkJcmV0ID0gaW50ZWxfZHBfeWNiY3I0MjBfY29uZmlnKGlu
dGVsX2RwLCBwaXBlX2NvbmZpZywKLQkJCQkJICAgICAgIGNvbm5fc3RhdGUpOworCQlyZXQgPSBp
bnRlbF9kcF95Y2JjcjQyMF9jb25maWcocGlwZV9jb25maWcsIGNvbm5fc3RhdGUpOwogCWlmIChy
ZXQpCiAJCXJldHVybiByZXQ7CiAKLS0gCjIuMjYuMgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
