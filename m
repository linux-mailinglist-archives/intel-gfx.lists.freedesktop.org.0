Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EA556261249
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Sep 2020 16:02:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5CA776E82F;
	Tue,  8 Sep 2020 14:02:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DA9036E82F
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Sep 2020 14:02:18 +0000 (UTC)
IronPort-SDR: OpdV1ADhvsfWSQ/9T0zDVL2g6LwsfDOGly2eY81eOa4jmRh6Q66hWEkQQfH/Lvk5mfjMkO7nFH
 PEWgjDWkwvZA==
X-IronPort-AV: E=McAfee;i="6000,8403,9737"; a="155618300"
X-IronPort-AV: E=Sophos;i="5.76,405,1592895600"; d="scan'208";a="155618300"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2020 07:02:18 -0700
IronPort-SDR: Jl+Cqk9kLA8VzL3aUE+2ct65BAzjHS1AcFdof4hKB/Lh0f8Ocuj1fh9tamOBQVtzVutdThGGO+
 dcaKQUlCoD5g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,405,1592895600"; d="scan'208";a="284519441"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga007.fm.intel.com with SMTP; 08 Sep 2020 07:02:16 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 08 Sep 2020 17:02:16 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  8 Sep 2020 17:02:09 +0300
Message-Id: <20200908140210.31048-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200908140210.31048-1-ville.syrjala@linux.intel.com>
References: <20200908140210.31048-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/4] drm/i915: Nuke MI_ARB_STATE save/restore
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCk9y
aWdpbmFsbHkgYWRkZWQgaW4gY29tbWl0IDFmODRlNTUwYTg3MCAoImRybS9pOTE1IG1vcmUgcmVn
aXN0ZXJzIGZvcgpTMyAoRFNQQ0xLX0dBVEVfRCwgQ0FDSEVfTU9ERV8wLCBNSV9BUkJfU1RBVEUp
IikgdG8gZml4IHNvbWUgdW5kZXJydW5zLgpJIHN1c3BlY3QgdGhhdCB3YXMgZHVlIHRvIHRoZSB0
cmlja2xlIGZlZWQgc2V0dGluZ3MgZ2V0dGluZyBjbG9iYmVyZWQKZHVyaW5nIHN1c3BlbmQuIFdl
J3ZlIGJlZW4gZGlzYWJsaW5nIHRyaWNrbGUgZmVlZCBleHBsaWNpdGx5IHNpbmNlCmNvbW1pdCAy
MGY5NDk2NzBmNTEgKCJkcm0vaTkxNTogRGlzYWJsZSB0cmlja2xlIGZlZWQgdmlhIE1JX0FSQl9T
VEFURQpmb3IgdGhlIGdlbjQiKSBzbyB0aGlzIG1hZ2ljIHNhdmUvcmVzdG9yZSBzaG91bGQgbm8g
bG9uZ2VyIGJlIG5lZWRlZC4KClNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUu
c3lyamFsYUBsaW51eC5pbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9k
cnYuaCAgICAgfCAxIC0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfc3VzcGVuZC5jIHwgNiAt
LS0tLS0KIDIgZmlsZXMgY2hhbmdlZCwgNyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9k
cnYuaAppbmRleCAzOTE3YmIxYTYxNTcuLmNmNTEyNDZiNTQwMiAxMDA2NDQKLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X2Rydi5oCkBAIC01MzgsNyArNTM4LDYgQEAgc3RydWN0IGludGVsX2dtYnVzIHsKIHN0cnVjdCBp
OTE1X3N1c3BlbmRfc2F2ZWRfcmVnaXN0ZXJzIHsKIAl1MzIgc2F2ZURTUEFSQjsKIAl1MzIgc2F2
ZUNBQ0hFX01PREVfMDsKLQl1MzIgc2F2ZU1JX0FSQl9TVEFURTsKIAl1MzIgc2F2ZVNXRjBbMTZd
OwogCXUzMiBzYXZlU1dGMVsxNl07CiAJdTMyIHNhdmVTV0YzWzNdOwpkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9zdXNwZW5kLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X3N1c3BlbmQuYwppbmRleCA1OTJjMjMwZTY5MTQuLjM0YzdkN2JjY2VjNSAxMDA2NDQKLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9zdXNwZW5kLmMKKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9zdXNwZW5kLmMKQEAgLTY2LDkgKzY2LDYgQEAgaW50IGk5MTVfc2F2ZV9z
dGF0ZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiAJaWYgKElOVEVMX0dFTihk
ZXZfcHJpdikgPCA3KQogCQlkZXZfcHJpdi0+cmVnZmlsZS5zYXZlQ0FDSEVfTU9ERV8wID0gSTkx
NV9SRUFEKENBQ0hFX01PREVfMCk7CiAKLQkvKiBNZW1vcnkgQXJiaXRyYXRpb24gc3RhdGUgKi8K
LQlkZXZfcHJpdi0+cmVnZmlsZS5zYXZlTUlfQVJCX1NUQVRFID0gSTkxNV9SRUFEKE1JX0FSQl9T
VEFURSk7Ci0KIAkvKiBTY3JhdGNoIHNwYWNlICovCiAJaWYgKElTX0dFTihkZXZfcHJpdiwgMikg
JiYgSVNfTU9CSUxFKGRldl9wcml2KSkgewogCQlmb3IgKGkgPSAwOyBpIDwgNzsgaSsrKSB7CkBA
IC0xMDcsOSArMTA0LDYgQEAgaW50IGk5MTVfcmVzdG9yZV9zdGF0ZShzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZSAqZGV2X3ByaXYpCiAJCUk5MTVfV1JJVEUoQ0FDSEVfTU9ERV8wLCBkZXZfcHJpdi0+
cmVnZmlsZS5zYXZlQ0FDSEVfTU9ERV8wIHwKIAkJCSAgIDB4ZmZmZjAwMDApOwogCi0JLyogTWVt
b3J5IGFyYml0cmF0aW9uIHN0YXRlICovCi0JSTkxNV9XUklURShNSV9BUkJfU1RBVEUsIGRldl9w
cml2LT5yZWdmaWxlLnNhdmVNSV9BUkJfU1RBVEUgfCAweGZmZmYwMDAwKTsKLQogCS8qIFNjcmF0
Y2ggc3BhY2UgKi8KIAlpZiAoSVNfR0VOKGRldl9wcml2LCAyKSAmJiBJU19NT0JJTEUoZGV2X3By
aXYpKSB7CiAJCWZvciAoaSA9IDA7IGkgPCA3OyBpKyspIHsKLS0gCjIuMjYuMgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcg
bGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
