Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D8C0E7068
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Oct 2019 12:30:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 781916E530;
	Mon, 28 Oct 2019 11:30:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DBBFA6E5D7
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Oct 2019 11:30:48 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Oct 2019 04:30:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,239,1569308400"; d="scan'208";a="189591390"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga007.jf.intel.com with SMTP; 28 Oct 2019 04:30:47 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 28 Oct 2019 13:30:45 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 28 Oct 2019 13:30:34 +0200
Message-Id: <20191028113036.27553-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191028113036.27553-1-ville.syrjala@linux.intel.com>
References: <20191028113036.27553-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 4/6] drm/i915: Configure overlay cc_out
 precision based on crtc gamma config
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClB1
dCB0aGUgb3ZlcmxheSBjb2xvciBjb252ZXJzaW9uIHVuaXQgaW50byAxMGJpdCBtb2RlIGlmIHRo
ZQpwaXBlIGlzbid0IHVzaW5nIHRoZSA4Yml0IGxlZ2FjeSBnYW1tYS4gTm90IDEwMCUgc3VyZSB0
aGlzIGlzCndoYXQgdGhlIGludGVudGlvbiBvZiB0aGUgYml0IHdhcyBidXQgbWFrZXMgYXQgbGVh
c3Qgc29tZSBzZW5zZSB0bwptZS4KClNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmls
bGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9vdmVybGF5LmMgfCA4ICsrKysrKy0tCiAxIGZpbGUgY2hhbmdlZCwgNiBpbnNl
cnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfb3ZlcmxheS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9vdmVybGF5LmMKaW5kZXggMjM4MjkzNzRmNzUxLi5lNTE1OTJlMzVlZmUgMTAwNjQ0
Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfb3ZlcmxheS5jCisrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfb3ZlcmxheS5jCkBAIC03NzcsOSAr
Nzc3LDEzIEBAIHN0YXRpYyBpbnQgaW50ZWxfb3ZlcmxheV9kb19wdXRfaW1hZ2Uoc3RydWN0IGlu
dGVsX292ZXJsYXkgKm92ZXJsYXksCiAJaW50ZWxfZnJvbnRidWZmZXJfZmx1c2gobmV3X2JvLT5m
cm9udGJ1ZmZlciwgT1JJR0lOX0RJUlRZRkIpOwogCiAJaWYgKCFvdmVybGF5LT5hY3RpdmUpIHsK
LQkJdTMyIG9jb25maWc7CisJCWNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0
YXRlID0KKwkJCW92ZXJsYXktPmNydGMtPmNvbmZpZzsKKwkJdTMyIG9jb25maWcgPSAwOwogCi0J
CW9jb25maWcgPSBPQ09ORl9DQ19PVVRfOEJJVDsKKwkJaWYgKGNydGNfc3RhdGUtPmdhbW1hX2Vu
YWJsZSAmJgorCQkgICAgY3J0Y19zdGF0ZS0+Z2FtbWFfbW9kZSA9PSBHQU1NQV9NT0RFX01PREVf
OEJJVCkKKwkJCW9jb25maWcgfD0gT0NPTkZfQ0NfT1VUXzhCSVQ7CiAJCWlmIChJU19HRU4oZGV2
X3ByaXYsIDQpKQogCQkJb2NvbmZpZyB8PSBPQ09ORl9DU0NfTU9ERV9CVDcwOTsKIAkJb2NvbmZp
ZyB8PSBwaXBlID09IDAgPwotLSAKMi4yMS4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZng=
