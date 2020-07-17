Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 855322245A3
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jul 2020 23:14:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B94C76E0A2;
	Fri, 17 Jul 2020 21:13:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 266EF6E0A2
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Jul 2020 21:13:52 +0000 (UTC)
IronPort-SDR: /hJLh42xxVMYZhQaXs9bU0XfNlviqCpc1Gj8Q1EzWA3z6jk7ucW1csOmp5mAvEP3dMA8DQff9d
 JLEOU6vNo40A==
X-IronPort-AV: E=McAfee;i="6000,8403,9685"; a="137147775"
X-IronPort-AV: E=Sophos;i="5.75,364,1589266800"; d="scan'208";a="137147775"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2020 14:13:51 -0700
IronPort-SDR: II0fOUD3Ic/yVVLsu0h4hmmMGxZxpQNSzCCEXIthttuITTgarG/h+OuY3oCn1WDOx98i058ZnX
 GeO7W6X9REyg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,364,1589266800"; d="scan'208";a="326952128"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga007.jf.intel.com with SMTP; 17 Jul 2020 14:13:49 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Sat, 18 Jul 2020 00:13:49 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sat, 18 Jul 2020 00:13:26 +0300
Message-Id: <20200717211345.26851-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200717211345.26851-1-ville.syrjala@linux.intel.com>
References: <20200717211345.26851-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 01/20] drm/i915: Fix state checker
 hw.active/hw.enable readout
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClBy
ZXZpb3VzbHkgaW50ZWxfZHVtcF9waXBlX2NvbmZpZygpIHVzZWQgdG8gZHVtcCB0aGUgZnVsbCBj
cnRjIHN0YXRlCndoZXRoZXIgb3Igbm90IHRoZSBjcnRjIHdhcyBsb2dpY2FsbHkgZW5hYmxlZCBv
ciBub3QuIEFzIHRoYXQgbWVhbnQKb2NjYXNpb25hbGx5IGR1bXBpbmcgY29uZnVzaW5nIHN0YWxl
IGdhcmJhZ2UgSSBjaGFuZ2VkIGl0IHRvCmNoZWNrIHdoZXRoZXIgdGhlIGNydGMgaXMgbG9naWNh
bGx5IGVuYWJsZWQgb3Igbm90LiBIb3dldmVyIEkgZGlkCm5vdCByZWFsaXplIHRoYXQgdGhlIHN0
YXRlIGNoZWNrZXIgcmVhZG91dCBjb2RlIGRvZXMgbm90CnBvcHVsYXRlIGNydGNfc3RhdGUuaHcu
e2FjdGl2ZSxlbmFibGVkfS4gSGVuY2UgdGhlIHN0YXRlIGNoZWNrZXIKZHVtcCB3b3VsZCBvbmx5
IGdpdmUgdXMgYSBmdWxsIGR1bXAgb2YgdGhlIHN3IHN0YXRlIGJ1dCBub3QgdGhlIGh3CnN0YXRl
LiBGaXggdGhhdCBieSBwb3B1bGF0aW5nIHRob3NlIGJpdHMgb2YgdGhlIGh3IHN0YXRlIGFzIHdl
bGwuCgpGaXhlczogMTBkNzVmNTQyOGZkICgiZHJtL2k5MTU6IEZpeCBwbGFuZSBzdGF0ZSBkdW1w
cyIpClNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5p
bnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5
LmMgfCAxNSArKysrKysrKystLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCA5IGluc2VydGlvbnMoKyks
IDYgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kaXNwbGF5LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rp
c3BsYXkuYwppbmRleCA3MjllYzZlMGQ0M2EuLmFlMGFmNDUyZDc3NiAxMDA2NDQKLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKQEAgLTE0MjQ0LDcgKzE0MjQ0LDYg
QEAgdmVyaWZ5X2NydGNfc3RhdGUoc3RydWN0IGludGVsX2NydGMgKmNydGMsCiAJc3RydWN0IGlu
dGVsX2VuY29kZXIgKmVuY29kZXI7CiAJc3RydWN0IGludGVsX2NydGNfc3RhdGUgKnBpcGVfY29u
ZmlnID0gb2xkX2NydGNfc3RhdGU7CiAJc3RydWN0IGRybV9hdG9taWNfc3RhdGUgKnN0YXRlID0g
b2xkX2NydGNfc3RhdGUtPnVhcGkuc3RhdGU7Ci0JYm9vbCBhY3RpdmU7CiAKIAlfX2RybV9hdG9t
aWNfaGVscGVyX2NydGNfZGVzdHJveV9zdGF0ZSgmb2xkX2NydGNfc3RhdGUtPnVhcGkpOwogCWlu
dGVsX2NydGNfZnJlZV9od19zdGF0ZShvbGRfY3J0Y19zdGF0ZSk7CkBAIC0xNDI1NCwxNiArMTQy
NTMsMTkgQEAgdmVyaWZ5X2NydGNfc3RhdGUoc3RydWN0IGludGVsX2NydGMgKmNydGMsCiAJZHJt
X2RiZ19rbXMoJmRldl9wcml2LT5kcm0sICJbQ1JUQzolZDolc11cbiIsIGNydGMtPmJhc2UuYmFz
ZS5pZCwKIAkJICAgIGNydGMtPmJhc2UubmFtZSk7CiAKLQlhY3RpdmUgPSBkZXZfcHJpdi0+ZGlz
cGxheS5nZXRfcGlwZV9jb25maWcoY3J0YywgcGlwZV9jb25maWcpOworCXBpcGVfY29uZmlnLT5o
dy5lbmFibGUgPSBuZXdfY3J0Y19zdGF0ZS0+aHcuZW5hYmxlOworCisJcGlwZV9jb25maWctPmh3
LmFjdGl2ZSA9CisJCWRldl9wcml2LT5kaXNwbGF5LmdldF9waXBlX2NvbmZpZyhjcnRjLCBwaXBl
X2NvbmZpZyk7CiAKIAkvKiB3ZSBrZWVwIGJvdGggcGlwZXMgZW5hYmxlZCBvbiA4MzAgKi8KLQlp
ZiAoSVNfSTgzMChkZXZfcHJpdikpCi0JCWFjdGl2ZSA9IG5ld19jcnRjX3N0YXRlLT5ody5hY3Rp
dmU7CisJaWYgKElTX0k4MzAoZGV2X3ByaXYpICYmIHBpcGVfY29uZmlnLT5ody5hY3RpdmUpCisJ
CXBpcGVfY29uZmlnLT5ody5hY3RpdmUgPSBuZXdfY3J0Y19zdGF0ZS0+aHcuYWN0aXZlOwogCi0J
STkxNV9TVEFURV9XQVJOKG5ld19jcnRjX3N0YXRlLT5ody5hY3RpdmUgIT0gYWN0aXZlLAorCUk5
MTVfU1RBVEVfV0FSTihuZXdfY3J0Y19zdGF0ZS0+aHcuYWN0aXZlICE9IHBpcGVfY29uZmlnLT5o
dy5hY3RpdmUsCiAJCQkiY3J0YyBhY3RpdmUgc3RhdGUgZG9lc24ndCBtYXRjaCB3aXRoIGh3IHN0
YXRlICIKIAkJCSIoZXhwZWN0ZWQgJWksIGZvdW5kICVpKVxuIiwKLQkJCW5ld19jcnRjX3N0YXRl
LT5ody5hY3RpdmUsIGFjdGl2ZSk7CisJCQluZXdfY3J0Y19zdGF0ZS0+aHcuYWN0aXZlLCBwaXBl
X2NvbmZpZy0+aHcuYWN0aXZlKTsKIAogCUk5MTVfU1RBVEVfV0FSTihjcnRjLT5hY3RpdmUgIT0g
bmV3X2NydGNfc3RhdGUtPmh3LmFjdGl2ZSwKIAkJCSJ0cmFuc2l0aW9uYWwgYWN0aXZlIHN0YXRl
IGRvZXMgbm90IG1hdGNoIGF0b21pYyBodyBzdGF0ZSAiCkBAIC0xNDI3Miw2ICsxNDI3NCw3IEBA
IHZlcmlmeV9jcnRjX3N0YXRlKHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjLAogCiAJZm9yX2VhY2hf
ZW5jb2Rlcl9vbl9jcnRjKGRldiwgJmNydGMtPmJhc2UsIGVuY29kZXIpIHsKIAkJZW51bSBwaXBl
IHBpcGU7CisJCWJvb2wgYWN0aXZlOwogCiAJCWFjdGl2ZSA9IGVuY29kZXItPmdldF9od19zdGF0
ZShlbmNvZGVyLCAmcGlwZSk7CiAJCUk5MTVfU1RBVEVfV0FSTihhY3RpdmUgIT0gbmV3X2NydGNf
c3RhdGUtPmh3LmFjdGl2ZSwKLS0gCjIuMjYuMgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4Cg==
