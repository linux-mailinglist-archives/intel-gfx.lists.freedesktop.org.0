Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 01158E0B11
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Oct 2019 19:56:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 591D06E8B6;
	Tue, 22 Oct 2019 17:56:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BD23C6E8B6
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Oct 2019 17:56:00 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Oct 2019 10:56:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,217,1569308400"; d="scan'208";a="197194754"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga007.fm.intel.com with SMTP; 22 Oct 2019 10:55:58 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 22 Oct 2019 20:55:57 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 22 Oct 2019 20:55:47 +0300
Message-Id: <20191022175554.18012-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191022175554.18012-1-ville.syrjala@linux.intel.com>
References: <20191022175554.18012-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/8] drm/i915: Parametrize PFIT_PIPE
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.23
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCk1h
a2UgdGhlIFBGSVRfUElQRSBzdHVmZiBsZXNzIHVnbHkgdmlhIHBhcmFtZXRyaXphdGlvbi4KClNp
Z25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5j
b20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wYW5lbC5jIHwgMyAr
LS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggICAgICAgICAgICB8IDEgKwogMiBm
aWxlcyBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wYW5lbC5jIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wYW5lbC5jCmluZGV4IGJjMTRlOWMwMjg1YS4uNDYw
MTQxNmM2MDNlIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X3BhbmVsLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wYW5lbC5j
CkBAIC00MzAsOCArNDMwLDcgQEAgdm9pZCBpbnRlbF9nbWNoX3BhbmVsX2ZpdHRpbmcoc3RydWN0
IGludGVsX2NydGMgKmludGVsX2NydGMsCiAJLyogOTY1KyB3YW50cyBmdXp6eSBmaXR0aW5nICov
CiAJLyogRklYTUU6IGhhbmRsZSBtdWx0aXBsZSBwYW5lbHMgYnkgZmFpbGluZyBncmFjZWZ1bGx5
ICovCiAJaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0gNCkKLQkJcGZpdF9jb250cm9sIHw9ICgo
aW50ZWxfY3J0Yy0+cGlwZSA8PCBQRklUX1BJUEVfU0hJRlQpIHwKLQkJCQkgUEZJVF9GSUxURVJf
RlVaWlkpOworCQlwZml0X2NvbnRyb2wgfD0gUEZJVF9QSVBFKGludGVsX2NydGMtPnBpcGUpIHwg
UEZJVF9GSUxURVJfRlVaWlk7CiAKIG91dDoKIAlpZiAoKHBmaXRfY29udHJvbCAmIFBGSVRfRU5B
QkxFKSA9PSAwKSB7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5o
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAppbmRleCA4NTVkYjg4ODUxNmMuLmZl
MDQzYzM3ZTc2YiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAor
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCkBAIC00ODE5LDYgKzQ4MTksNyBA
QCBlbnVtIHsKICNkZWZpbmUgICBQRklUX0VOQUJMRQkJKDEgPDwgMzEpCiAjZGVmaW5lICAgUEZJ
VF9QSVBFX01BU0sJKDMgPDwgMjkpCiAjZGVmaW5lICAgUEZJVF9QSVBFX1NISUZUCTI5CisjZGVm
aW5lICAgUEZJVF9QSVBFKHBpcGUpCSgocGlwZSkgPDwgMjkpCiAjZGVmaW5lICAgVkVSVF9JTlRF
UlBfRElTQUJMRQkoMCA8PCAxMCkKICNkZWZpbmUgICBWRVJUX0lOVEVSUF9CSUxJTkVBUgkoMSA8
PCAxMCkKICNkZWZpbmUgICBWRVJUX0lOVEVSUF9NQVNLCSgzIDw8IDEwKQotLSAKMi4yMS4wCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
