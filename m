Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E5BB20FFB7
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jun 2020 23:56:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE2026E526;
	Tue, 30 Jun 2020 21:56:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D11AF6E52E
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jun 2020 21:56:40 +0000 (UTC)
IronPort-SDR: uAG1DEZptT2bBw0FHdw18ynEJCi+YDw6sYtWsak+IKxhVW0XrIWXTAsfnYsVlBHynt0OBPYeNF
 u0+zAQltz/ew==
X-IronPort-AV: E=McAfee;i="6000,8403,9668"; a="133853554"
X-IronPort-AV: E=Sophos;i="5.75,298,1589266800"; d="scan'208";a="133853554"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2020 14:56:40 -0700
IronPort-SDR: nOFWRREJyJNmNMj2dxahSA7/kUMwiECt3SE1b18XJNkJ5lPoQkBRMoQmlno9F66/gKCnl0x52t
 ufY/tbut0iqg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,298,1589266800"; d="scan'208";a="313554766"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga002.fm.intel.com with SMTP; 30 Jun 2020 14:56:38 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 01 Jul 2020 00:56:37 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  1 Jul 2020 00:56:01 +0300
Message-Id: <20200630215601.28557-13-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200630215601.28557-1-ville.syrjala@linux.intel.com>
References: <20200630215601.28557-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 12/12] drm/i915: Nuke pointless variable
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCk5v
IHBvaW50IGluIGFzc2lnbmluZyB0aGUgZnVuY3Rpb24gcmV0dXJuIHZhbHVlIHRvIGEgbG9jYWwK
dmFyaWFibGUgaWYgd2UncmUganVzdCBnb2luZyB0byB1c2UgaXQgdGhlIG9uZSB0aW1lLgoKU2ln
bmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNv
bT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hvdHBsdWcuYyB8IDMg
Ky0tCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDIgZGVsZXRpb25zKC0pCgpkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9ob3RwbHVnLmMgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hvdHBsdWcuYwppbmRleCA4YThlNzcz
MTRhNGUuLjkzODQ2NmIyYzlkMSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9ob3RwbHVnLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9ob3RwbHVnLmMKQEAgLTQ4MCw3ICs0ODAsNiBAQCB2b2lkIGludGVsX2hwZF9pcnFfaGFu
ZGxlcihzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCiAJICogb25seSB0aGUgb25l
IG9mIHRoZW0gKERQKSB3aWxsIGhhdmUgLT5ocGRfcHVsc2UoKS4KIAkgKi8KIAlmb3JfZWFjaF9p
bnRlbF9lbmNvZGVyKCZkZXZfcHJpdi0+ZHJtLCBlbmNvZGVyKSB7Ci0JCWJvb2wgaGFzX2hwZF9w
dWxzZSA9IGludGVsX2VuY29kZXJfaGFzX2hwZF9wdWxzZShlbmNvZGVyKTsKIAkJZW51bSBwb3J0
IHBvcnQgPSBlbmNvZGVyLT5wb3J0OwogCQlib29sIGxvbmdfaHBkOwogCkBAIC00ODgsNyArNDg3
LDcgQEAgdm9pZCBpbnRlbF9ocGRfaXJxX2hhbmRsZXIoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUg
KmRldl9wcml2LAogCQlpZiAoIShCSVQocGluKSAmIHBpbl9tYXNrKSkKIAkJCWNvbnRpbnVlOwog
Ci0JCWlmICghaGFzX2hwZF9wdWxzZSkKKwkJaWYgKCFpbnRlbF9lbmNvZGVyX2hhc19ocGRfcHVs
c2UoZW5jb2RlcikpCiAJCQljb250aW51ZTsKIAogCQlsb25nX2hwZCA9IGxvbmdfbWFzayAmIEJJ
VChwaW4pOwotLSAKMi4yNi4yCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZngK
