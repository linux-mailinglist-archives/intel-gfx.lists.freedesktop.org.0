Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A86126124A
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Sep 2020 16:02:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E9D36E830;
	Tue,  8 Sep 2020 14:02:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 802116E830
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Sep 2020 14:02:23 +0000 (UTC)
IronPort-SDR: Qdk53by8p5qlLPUVt48qCwp11MBPmHBSZ/DG41+yH6zcSGJw4SVxNWXh43wx1gXJfoJL2QWV3J
 c0iqOQsU5Naw==
X-IronPort-AV: E=McAfee;i="6000,8403,9737"; a="145851631"
X-IronPort-AV: E=Sophos;i="5.76,405,1592895600"; d="scan'208";a="145851631"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2020 07:02:22 -0700
IronPort-SDR: h9YO6eI/7Jn3a4/l2YzRn/2iWkw0z5ztnz2gvs19Jyo0S93ubpJrrDBdMiOHabYDfUdIrepT2Z
 YJwnSvStX/ag==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,405,1592895600"; d="scan'208";a="336423378"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga002.fm.intel.com with SMTP; 08 Sep 2020 07:02:19 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 08 Sep 2020 17:02:18 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  8 Sep 2020 17:02:10 +0300
Message-Id: <20200908140210.31048-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200908140210.31048-1-ville.syrjala@linux.intel.com>
References: <20200908140210.31048-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 4/4] drm/i915: Nuke CACHE_MODE_0 save/restore
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClRo
ZSBDQUNIRV9NT0RFXzAgc2F2ZS9yZXN0b3JlIHdhcyBhZGRlZCB3aXRob3V0IGV4cGxhbmF0aW9u
IGluCmNvbW1pdCAxZjg0ZTU1MGE4NzAgKCJkcm0vaTkxNSBtb3JlIHJlZ2lzdGVycyBmb3IgUzMg
KERTUENMS19HQVRFX0QsCkNBQ0hFX01PREVfMCwgTUlfQVJCX1NUQVRFKSIpLiBJZiB0aGVyZSBh
cmUgYW55IGJpdHMgd2UgY2FyZSBhYm91dAp0aG9zZSBzaG91bGQgYmUgc2V0IGV4cGxpY2l0bHkg
ZHVyaW5nIHNvbWUgYXBwcm9wcmlhdGUgaW5pdCBmdW5jdGlvbi4KTGV0J3MgYXNzdW1lIGl0J3Mg
YWxsIGdvb2QgYW5kIGp1c3QgbnVrZSB0aGlzIG1hZ2ljIHNhdmUvcmVzdG9yZS4KClNpZ25lZC1v
ZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Ci0t
LQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaCAgICAgfCAxIC0KIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfc3VzcGVuZC5jIHwgOSAtLS0tLS0tLS0KIDIgZmlsZXMgY2hhbmdlZCwg
MTAgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9k
cnYuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgKaW5kZXggY2Y1MTI0NmI1NDAy
Li41MzdjNzgwYWY4NTggMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2
LmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaApAQCAtNTM3LDcgKzUzNyw2
IEBAIHN0cnVjdCBpbnRlbF9nbWJ1cyB7CiAKIHN0cnVjdCBpOTE1X3N1c3BlbmRfc2F2ZWRfcmVn
aXN0ZXJzIHsKIAl1MzIgc2F2ZURTUEFSQjsKLQl1MzIgc2F2ZUNBQ0hFX01PREVfMDsKIAl1MzIg
c2F2ZVNXRjBbMTZdOwogCXUzMiBzYXZlU1dGMVsxNl07CiAJdTMyIHNhdmVTV0YzWzNdOwpkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9zdXNwZW5kLmMgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X3N1c3BlbmQuYwppbmRleCAzNGM3ZDdiY2NlYzUuLjkzMmM3ZGY2NGRk
MyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9zdXNwZW5kLmMKKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9zdXNwZW5kLmMKQEAgLTYyLDEwICs2Miw2IEBAIGlu
dCBpOTE1X3NhdmVfc3RhdGUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQogCQlw
Y2lfcmVhZF9jb25maWdfd29yZChwZGV2LCBHQ0RHTUJVUywKIAkJCQkgICAgICZkZXZfcHJpdi0+
cmVnZmlsZS5zYXZlR0NER01CVVMpOwogCi0JLyogQ2FjaGUgbW9kZSBzdGF0ZSAqLwotCWlmIChJ
TlRFTF9HRU4oZGV2X3ByaXYpIDwgNykKLQkJZGV2X3ByaXYtPnJlZ2ZpbGUuc2F2ZUNBQ0hFX01P
REVfMCA9IEk5MTVfUkVBRChDQUNIRV9NT0RFXzApOwotCiAJLyogU2NyYXRjaCBzcGFjZSAqLwog
CWlmIChJU19HRU4oZGV2X3ByaXYsIDIpICYmIElTX01PQklMRShkZXZfcHJpdikpIHsKIAkJZm9y
IChpID0gMDsgaSA8IDc7IGkrKykgewpAQCAtOTksMTEgKzk1LDYgQEAgaW50IGk5MTVfcmVzdG9y
ZV9zdGF0ZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiAJCQkJICAgICAgZGV2
X3ByaXYtPnJlZ2ZpbGUuc2F2ZUdDREdNQlVTKTsKIAlpOTE1X3Jlc3RvcmVfZGlzcGxheShkZXZf
cHJpdik7CiAKLQkvKiBDYWNoZSBtb2RlIHN0YXRlICovCi0JaWYgKElOVEVMX0dFTihkZXZfcHJp
dikgPCA3KQotCQlJOTE1X1dSSVRFKENBQ0hFX01PREVfMCwgZGV2X3ByaXYtPnJlZ2ZpbGUuc2F2
ZUNBQ0hFX01PREVfMCB8Ci0JCQkgICAweGZmZmYwMDAwKTsKLQogCS8qIFNjcmF0Y2ggc3BhY2Ug
Ki8KIAlpZiAoSVNfR0VOKGRldl9wcml2LCAyKSAmJiBJU19NT0JJTEUoZGV2X3ByaXYpKSB7CiAJ
CWZvciAoaSA9IDA7IGkgPCA3OyBpKyspIHsKLS0gCjIuMjYuMgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
