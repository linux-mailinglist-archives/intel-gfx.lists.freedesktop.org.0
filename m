Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 893842AC5C2
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Nov 2020 21:10:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 13BA78934B;
	Mon,  9 Nov 2020 20:10:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B1A688930B
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Nov 2020 20:10:37 +0000 (UTC)
IronPort-SDR: 6NJHoaJGOZ9MlEAkGKgOiatFegK5gv9VuE+uKzKLC61rSo+KELyCWWO86ot/JSXtpCZF6lhHtl
 9dY7wrkiN5kQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9800"; a="157647098"
X-IronPort-AV: E=Sophos;i="5.77,464,1596524400"; d="scan'208";a="157647098"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2020 12:10:37 -0800
IronPort-SDR: CsDtdeMJVFL0Df8hXIIEVeFPcw2xmfIYFzgebTRRVBTMpjGfxmwnGOU2ugddAEwbY8T4d6e2Kl
 6xi4yu8r6aoA==
X-IronPort-AV: E=Sophos;i="5.77,464,1596524400"; d="scan'208";a="355830353"
Received: from labuser-z97x-ud5h.jf.intel.com ([10.165.21.211])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-SHA;
 09 Nov 2020 12:10:36 -0800
From: Manasi Navare <manasi.d.navare@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  9 Nov 2020 12:12:42 -0800
Message-Id: <20201109201246.17117-3-manasi.d.navare@intel.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20201109201246.17117-1-manasi.d.navare@intel.com>
References: <20201109201246.17117-1-manasi.d.navare@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v8 3/7] drm/i915/dp: Add a wrapper function
 around get_pipe_config
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

Q3JlYXRlIGEgbmV3IGZ1bmN0aW9uIGludGVsX2NydGNfZ2V0X3BpcGVfY29uZmlnKCkKdGhhdCBj
YWxscyBwbGF0Zm9ybSBzcGVjaWZpYyBob29rcyBmb3IgZ2V0X3BpcGVfY29uZmlnKCkKTm8gZnVu
Y3Rpb25hbCBjaGFuZ2UgaGVyZS4KClN1Z2dlc3RlZC1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxs
ZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogTWFuYXNpIE5hdmFyZSA8
bWFuYXNpLmQubmF2YXJlQGludGVsLmNvbT4KUmV2aWV3ZWQtYnk6IFZpbGxlIFN5cmrDpGzDpCA8
dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgfCAxNCArKysrKysrKysrKy0tLQogMSBmaWxlIGNoYW5n
ZWQsIDExIGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwppbmRleCBlOGVmMmM1N2ZmMDUuLjE1MzBmYWYx
NDNmNSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNw
bGF5LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMK
QEAgLTExNDc5LDYgKzExNDc5LDE0IEBAIHN0YXRpYyBib29sIGhzd19nZXRfcGlwZV9jb25maWco
c3RydWN0IGludGVsX2NydGMgKmNydGMsCiAJcmV0dXJuIGFjdGl2ZTsKIH0KIAorc3RhdGljIGJv
b2wgaW50ZWxfY3J0Y19nZXRfcGlwZV9jb25maWcoc3RydWN0IGludGVsX2NydGMgKmNydGMsCisJ
CQkJICAgICAgIHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpwaXBlX2NvbmZpZykKK3sKKwlzdHJ1
Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGNydGMtPmJhc2UuZGV2KTsK
KworCXJldHVybiBkZXZfcHJpdi0+ZGlzcGxheS5nZXRfcGlwZV9jb25maWcoY3J0YywgcGlwZV9j
b25maWcpOworfQorCiBzdGF0aWMgdTMyIGludGVsX2N1cnNvcl9iYXNlKGNvbnN0IHN0cnVjdCBp
bnRlbF9wbGFuZV9zdGF0ZSAqcGxhbmVfc3RhdGUpCiB7CiAJc3RydWN0IGRybV9pOTE1X3ByaXZh
dGUgKmRldl9wcml2ID0KQEAgLTEyNDc1LDcgKzEyNDgzLDcgQEAgaW50ZWxfZW5jb2Rlcl9jdXJy
ZW50X21vZGUoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIpCiAJCXJldHVybiBOVUxMOwog
CX0KIAotCWlmICghZGV2X3ByaXYtPmRpc3BsYXkuZ2V0X3BpcGVfY29uZmlnKGNydGMsIGNydGNf
c3RhdGUpKSB7CisJaWYgKCFpbnRlbF9jcnRjX2dldF9waXBlX2NvbmZpZyhjcnRjLCBjcnRjX3N0
YXRlKSkgewogCQlrZnJlZShjcnRjX3N0YXRlKTsKIAkJa2ZyZWUobW9kZSk7CiAJCXJldHVybiBO
VUxMOwpAQCAtMTQ0OTUsNyArMTQ1MDMsNyBAQCB2ZXJpZnlfY3J0Y19zdGF0ZShzdHJ1Y3QgaW50
ZWxfY3J0YyAqY3J0YywKIAlwaXBlX2NvbmZpZy0+aHcuZW5hYmxlID0gbmV3X2NydGNfc3RhdGUt
Pmh3LmVuYWJsZTsKIAogCXBpcGVfY29uZmlnLT5ody5hY3RpdmUgPQotCQlkZXZfcHJpdi0+ZGlz
cGxheS5nZXRfcGlwZV9jb25maWcoY3J0YywgcGlwZV9jb25maWcpOworCQlpbnRlbF9jcnRjX2dl
dF9waXBlX2NvbmZpZyhjcnRjLCBwaXBlX2NvbmZpZyk7CiAKIAkvKiB3ZSBrZWVwIGJvdGggcGlw
ZXMgZW5hYmxlZCBvbiA4MzAgKi8KIAlpZiAoSVNfSTgzMChkZXZfcHJpdikgJiYgcGlwZV9jb25m
aWctPmh3LmFjdGl2ZSkKQEAgLTE4ODA4LDcgKzE4ODE2LDcgQEAgc3RhdGljIHZvaWQgaW50ZWxf
bW9kZXNldF9yZWFkb3V0X2h3X3N0YXRlKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYpCiAJCWludGVs
X2NydGNfc3RhdGVfcmVzZXQoY3J0Y19zdGF0ZSwgY3J0Yyk7CiAKIAkJY3J0Y19zdGF0ZS0+aHcu
YWN0aXZlID0gY3J0Y19zdGF0ZS0+aHcuZW5hYmxlID0KLQkJCWRldl9wcml2LT5kaXNwbGF5Lmdl
dF9waXBlX2NvbmZpZyhjcnRjLCBjcnRjX3N0YXRlKTsKKwkJCWludGVsX2NydGNfZ2V0X3BpcGVf
Y29uZmlnKGNydGMsIGNydGNfc3RhdGUpOwogCiAJCWNydGMtPmJhc2UuZW5hYmxlZCA9IGNydGNf
c3RhdGUtPmh3LmVuYWJsZTsKIAkJY3J0Yy0+YWN0aXZlID0gY3J0Y19zdGF0ZS0+aHcuYWN0aXZl
OwotLSAKMi4xOS4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
ZngK
