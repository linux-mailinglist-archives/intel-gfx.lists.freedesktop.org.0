Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 065A315AD03
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Feb 2020 17:17:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E0976F53D;
	Wed, 12 Feb 2020 16:17:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 73A676F53D
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Feb 2020 16:17:45 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Feb 2020 08:17:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,433,1574150400"; d="scan'208";a="237749820"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga006.jf.intel.com with SMTP; 12 Feb 2020 08:17:42 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 12 Feb 2020 18:17:41 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 12 Feb 2020 18:17:31 +0200
Message-Id: <20200212161738.28141-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200212161738.28141-1-ville.syrjala@linux.intel.com>
References: <20200212161738.28141-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 1/8] drm/i915: Parametrize PFIT_PIPE
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCk1h
a2UgdGhlIFBGSVRfUElQRSBzdHVmZiBsZXNzIHVnbHkgdmlhIHBhcmFtZXRyaXphdGlvbi4KClNp
Z25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5j
b20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wYW5lbC5jIHwgMyAr
LS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggICAgICAgICAgICB8IDEgKwogMiBm
aWxlcyBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wYW5lbC5jIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wYW5lbC5jCmluZGV4IGNiYTJmMWMyNTU3Zi4uOGIw
NzMwZjRjNDQyIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X3BhbmVsLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wYW5lbC5j
CkBAIC00MzQsOCArNDM0LDcgQEAgdm9pZCBpbnRlbF9nbWNoX3BhbmVsX2ZpdHRpbmcoc3RydWN0
IGludGVsX2NydGMgKmludGVsX2NydGMsCiAJLyogOTY1KyB3YW50cyBmdXp6eSBmaXR0aW5nICov
CiAJLyogRklYTUU6IGhhbmRsZSBtdWx0aXBsZSBwYW5lbHMgYnkgZmFpbGluZyBncmFjZWZ1bGx5
ICovCiAJaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0gNCkKLQkJcGZpdF9jb250cm9sIHw9ICgo
aW50ZWxfY3J0Yy0+cGlwZSA8PCBQRklUX1BJUEVfU0hJRlQpIHwKLQkJCQkgUEZJVF9GSUxURVJf
RlVaWlkpOworCQlwZml0X2NvbnRyb2wgfD0gUEZJVF9QSVBFKGludGVsX2NydGMtPnBpcGUpIHwg
UEZJVF9GSUxURVJfRlVaWlk7CiAKIG91dDoKIAlpZiAoKHBmaXRfY29udHJvbCAmIFBGSVRfRU5B
QkxFKSA9PSAwKSB7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5o
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAppbmRleCBiMDljMWQ2ZGMwYWEuLmZh
Zjg5NDVhNTFiMCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAor
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCkBAIC00OTI4LDYgKzQ5MjgsNyBA
QCBlbnVtIHsKICNkZWZpbmUgICBQRklUX0VOQUJMRQkJKDEgPDwgMzEpCiAjZGVmaW5lICAgUEZJ
VF9QSVBFX01BU0sJKDMgPDwgMjkpCiAjZGVmaW5lICAgUEZJVF9QSVBFX1NISUZUCTI5CisjZGVm
aW5lICAgUEZJVF9QSVBFKHBpcGUpCSgocGlwZSkgPDwgMjkpCiAjZGVmaW5lICAgVkVSVF9JTlRF
UlBfRElTQUJMRQkoMCA8PCAxMCkKICNkZWZpbmUgICBWRVJUX0lOVEVSUF9CSUxJTkVBUgkoMSA8
PCAxMCkKICNkZWZpbmUgICBWRVJUX0lOVEVSUF9NQVNLCSgzIDw8IDEwKQotLSAKMi4yNC4xCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
