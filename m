Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CDEAE2930B6
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Oct 2020 23:44:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0551D6EB39;
	Mon, 19 Oct 2020 21:44:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D5886EB37
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 Oct 2020 21:44:01 +0000 (UTC)
IronPort-SDR: BMYhSySARsEmd1qecro4cDZhw5gn6FlCTzJk1jhBg7qEu2CZj6BRiRU5Hd296fodb8+A3JAdp/
 XwVbJxbLzrew==
X-IronPort-AV: E=McAfee;i="6000,8403,9779"; a="146964404"
X-IronPort-AV: E=Sophos;i="5.77,395,1596524400"; d="scan'208";a="146964404"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2020 14:44:01 -0700
IronPort-SDR: HT7wDjk195z/Y0tWG+tT8FBAjcD+MyeAkr/ClxrF9D98kDj4k3ipBBAjp8vClZT9TnQbxNQm9n
 D+pdkR2/B6Yw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,395,1596524400"; d="scan'208";a="392159866"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga001.jf.intel.com with SMTP; 19 Oct 2020 14:43:56 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 20 Oct 2020 00:43:55 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 20 Oct 2020 00:43:37 +0300
Message-Id: <20201019214337.19330-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20201019214337.19330-1-ville.syrjala@linux.intel.com>
References: <20201019214337.19330-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 7/7] drm/i915: FIXMEs for bigjoiner readout
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClNp
Z25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5j
b20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYyAgICAgfCAg
NyArKysrKysrCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyB8
IDE0ICsrKysrKysrKysrKysrCiAyIGZpbGVzIGNoYW5nZWQsIDIxIGluc2VydGlvbnMoKykKCmRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYwppbmRleCA0NDA3ZGRiY2ExZmYu
Ljg1NDBmMTA0NzdiMiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kZGkuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5j
CkBAIC00NjAyLDYgKzQ2MDIsMTMgQEAgc3RhdGljIGludCBpbnRlbF9kZGlfY29tcHV0ZV9jb25m
aWcoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsCiAJZW51bSBwb3J0IHBvcnQgPSBlbmNv
ZGVyLT5wb3J0OwogCWludCByZXQ7CiAKKwkvKgorCSAqIEZJWE1FIHNldHVwIGNwdV90cmFuc2Nv
ZGVyIGNvcnJlY3RseSBmb3IgYmlnam9pbmVyLgorCSAqIE5vdCAxMDAlIHN1cmUgd2Ugd2FudCB0
byBjYWxsIHRoaXMgZm9yIGJvdGggcGlwZXMsIGlmCisJICogbm90IHdlIG5lZWQgdG8gZG8gdGhl
IGNwdV90cmFuc2NvZGVyIGFzc2lnbm1lbnQgcHJvcGVybHkKKwkgKiB3aGVyZSB3ZSBkbyB0aGUg
bWFzdGVyLT5zbGF2ZSBzdGF0ZSBjb3B5LiBXaGljaCB0aGVuIGhhcworCSAqIGJlIGRvbmUgYWZ0
ZXIgdGhpcyBndXkgaGFzIGJlZW4gY2FsbGVkIGZvciB0aGUgbWFzdGVyLgorCSAqLwogCWlmIChI
QVNfVFJBTlNDT0RFUihkZXZfcHJpdiwgVFJBTlNDT0RFUl9FRFApICYmIHBvcnQgPT0gUE9SVF9B
KQogCQlwaXBlX2NvbmZpZy0+Y3B1X3RyYW5zY29kZXIgPSBUUkFOU0NPREVSX0VEUDsKIApkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwppbmRleCBkMzk3MjU0
NTM4NzYuLmMwMTE0YWZhODBkMyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kaXNwbGF5LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kaXNwbGF5LmMKQEAgLTU4NTUsNiArNTg1NSwxMiBAQCBpbnRlbF9nZXRfY3J0Y19uZXdf
ZW5jb2Rlcihjb25zdCBzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwKIAlpbnQgbnVt
X2VuY29kZXJzID0gMDsKIAlpbnQgaTsKIAorCS8qIEZJWE1FIGhhbmRsZSBiaWdqb2luZXIgZm9y
IGhzd19jcnRjX2NvbXB1dGVfY2xvY2soKSAqLworI2lmIDAKKwlpZiAoYmlnam9pbmVyX3NsYXZl
KQorCQljcnRjID0gbWFzdGVyOworI2VuZGlmCisKIAlmb3JfZWFjaF9uZXdfY29ubmVjdG9yX2lu
X3N0YXRlKCZzdGF0ZS0+YmFzZSwgY29ubmVjdG9yLCBjb25uZWN0b3Jfc3RhdGUsIGkpIHsKIAkJ
aWYgKGNvbm5lY3Rvcl9zdGF0ZS0+Y3J0YyAhPSAmY3J0Yy0+YmFzZSkKIAkJCWNvbnRpbnVlOwpA
QCAtMTQ1MTYsNiArMTQ1MjIsNyBAQCB2ZXJpZnlfY3J0Y19zdGF0ZShzdHJ1Y3QgaW50ZWxfY3J0
YyAqY3J0YywKIAkJCSIoZXhwZWN0ZWQgJWksIGZvdW5kICVpKVxuIiwKIAkJCW5ld19jcnRjX3N0
YXRlLT5ody5hY3RpdmUsIGNydGMtPmFjdGl2ZSk7CiAKKwkvKiBGSVhNRSBoYW5kbGUgYmlnam9p
bmVyICovCiAJZm9yX2VhY2hfZW5jb2Rlcl9vbl9jcnRjKGRldiwgJmNydGMtPmJhc2UsIGVuY29k
ZXIpIHsKIAkJZW51bSBwaXBlIHBpcGU7CiAJCWJvb2wgYWN0aXZlOwpAQCAtMTg4NDMsNiArMTg4
NTAsMTMgQEAgc3RhdGljIHZvaWQgaW50ZWxfbW9kZXNldF9yZWFkb3V0X2h3X3N0YXRlKHN0cnVj
dCBkcm1fZGV2aWNlICpkZXYpCiAJCQllbmNvZGVyLT5nZXRfY29uZmlnKGVuY29kZXIsIGNydGNf
c3RhdGUpOwogCQkJaWYgKGVuY29kZXItPnN5bmNfc3RhdGUpCiAJCQkJZW5jb2Rlci0+c3luY19z
dGF0ZShlbmNvZGVyLCBjcnRjX3N0YXRlKTsKKworCQkJLyogRklYTUUgaGFuZGxlIGJpZ2pvaW5l
ciAqLworCQkJY3J0YyA9IE5VTEw7Ly9iaWdqb2luZXJfc2xhdmU7CisJCQlpZiAoY3J0Yykgewor
CQkJCWNydGNfc3RhdGUgPSB0b19pbnRlbF9jcnRjX3N0YXRlKGNydGMtPmJhc2Uuc3RhdGUpOwor
CQkJCWVuY29kZXItPmdldF9jb25maWcoZW5jb2RlciwgY3J0Y19zdGF0ZSk7CisJCQl9CiAJCX0g
ZWxzZSB7CiAJCQllbmNvZGVyLT5iYXNlLmNydGMgPSBOVUxMOwogCQl9Ci0tIAoyLjI2LjIKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
