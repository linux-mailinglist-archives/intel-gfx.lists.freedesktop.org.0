Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E4982245AB
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jul 2020 23:14:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B02FC6E220;
	Fri, 17 Jul 2020 21:14:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9CFEE6E213
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Jul 2020 21:14:11 +0000 (UTC)
IronPort-SDR: SQTyvKIFwB20eSWZJfRCb7rQbMh7WB4xt5wZsDLA+Yua3isMJPKm1JRKmRpkNECr2tTXI6QsQd
 gKDYzSKIbPJw==
X-IronPort-AV: E=McAfee;i="6000,8403,9685"; a="148843840"
X-IronPort-AV: E=Sophos;i="5.75,364,1589266800"; d="scan'208";a="148843840"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2020 14:14:09 -0700
IronPort-SDR: ehqGtyxQtgcCBEdC1GXm1C0kg/Nrv0SLHRUqoAC262uUrSe8PbcE4rLnSOaMGtps2Wp+Xreu+9
 zqXI5vFYjCaw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,364,1589266800"; d="scan'208";a="317452833"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga008.jf.intel.com with SMTP; 17 Jul 2020 14:14:03 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Sat, 18 Jul 2020 00:14:02 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sat, 18 Jul 2020 00:13:31 +0300
Message-Id: <20200717211345.26851-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200717211345.26851-1-ville.syrjala@linux.intel.com>
References: <20200717211345.26851-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 06/20] drm/i915: Shuffle chv_cgm_gamma_pack()
 around a bit
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCk1v
dmUgY2h2X2NnbV9nYW1tYV9wYWNrKCkgbmV4dCB0byB0aGUgb3RoZXIgQ0dNIGdhbW1hIGZ1bmN0
aW9ucy4KUmlnaHQgbm93IGl0J3Mgc3R1Y2sgaW4gdGhlIG1pZGRsZSBvZiB0aGUgQ0dNIGRlZ2Ft
bWEgZnVuY3Rpb25zLgoKU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJq
YWxhQGxpbnV4LmludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2NvbG9yLmMgfCAxNCArKysrKysrLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDcgaW5zZXJ0
aW9ucygrKSwgNyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2NvbG9yLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2NvbG9yLmMKaW5kZXggMzdhNGZlZGU3YmMwLi4yNjBiYmJkNWJiZjIgMTAwNjQ0Ci0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY29sb3IuYworKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NvbG9yLmMKQEAgLTEwMzAsMTMgKzEwMzAsNiBA
QCBzdGF0aWMgdTMyIGNodl9jZ21fZGVnYW1tYV91ZHcoY29uc3Qgc3RydWN0IGRybV9jb2xvcl9s
dXQgKmNvbG9yKQogCXJldHVybiBkcm1fY29sb3JfbHV0X2V4dHJhY3QoY29sb3ItPnJlZCwgMTQp
OwogfQogCi1zdGF0aWMgdm9pZCBjaHZfY2dtX2dhbW1hX3BhY2soc3RydWN0IGRybV9jb2xvcl9s
dXQgKmVudHJ5LCB1MzIgbGR3LCB1MzIgdWR3KQotewotCWVudHJ5LT5ncmVlbiA9IGludGVsX2Nv
bG9yX2x1dF9wYWNrKFJFR19GSUVMRF9HRVQoQ0dNX1BJUEVfR0FNTUFfR1JFRU5fTUFTSywgbGR3
KSwgMTApOwotCWVudHJ5LT5ibHVlID0gaW50ZWxfY29sb3JfbHV0X3BhY2soUkVHX0ZJRUxEX0dF
VChDR01fUElQRV9HQU1NQV9CTFVFX01BU0ssIGxkdyksIDEwKTsKLQllbnRyeS0+cmVkID0gaW50
ZWxfY29sb3JfbHV0X3BhY2soUkVHX0ZJRUxEX0dFVChDR01fUElQRV9HQU1NQV9SRURfTUFTSywg
dWR3KSwgMTApOwotfQotCiBzdGF0aWMgdm9pZCBjaHZfbG9hZF9jZ21fZGVnYW1tYShzdHJ1Y3Qg
aW50ZWxfY3J0YyAqY3J0YywKIAkJCQkgY29uc3Qgc3RydWN0IGRybV9wcm9wZXJ0eV9ibG9iICpi
bG9iKQogewpAQCAtMTA2NCw2ICsxMDU3LDEzIEBAIHN0YXRpYyB1MzIgY2h2X2NnbV9nYW1tYV91
ZHcoY29uc3Qgc3RydWN0IGRybV9jb2xvcl9sdXQgKmNvbG9yKQogCXJldHVybiBkcm1fY29sb3Jf
bHV0X2V4dHJhY3QoY29sb3ItPnJlZCwgMTApOwogfQogCitzdGF0aWMgdm9pZCBjaHZfY2dtX2dh
bW1hX3BhY2soc3RydWN0IGRybV9jb2xvcl9sdXQgKmVudHJ5LCB1MzIgbGR3LCB1MzIgdWR3KQor
eworCWVudHJ5LT5ncmVlbiA9IGludGVsX2NvbG9yX2x1dF9wYWNrKFJFR19GSUVMRF9HRVQoQ0dN
X1BJUEVfR0FNTUFfR1JFRU5fTUFTSywgbGR3KSwgMTApOworCWVudHJ5LT5ibHVlID0gaW50ZWxf
Y29sb3JfbHV0X3BhY2soUkVHX0ZJRUxEX0dFVChDR01fUElQRV9HQU1NQV9CTFVFX01BU0ssIGxk
dyksIDEwKTsKKwllbnRyeS0+cmVkID0gaW50ZWxfY29sb3JfbHV0X3BhY2soUkVHX0ZJRUxEX0dF
VChDR01fUElQRV9HQU1NQV9SRURfTUFTSywgdWR3KSwgMTApOworfQorCiBzdGF0aWMgdm9pZCBj
aHZfbG9hZF9jZ21fZ2FtbWEoc3RydWN0IGludGVsX2NydGMgKmNydGMsCiAJCQkgICAgICAgY29u
c3Qgc3RydWN0IGRybV9wcm9wZXJ0eV9ibG9iICpibG9iKQogewotLSAKMi4yNi4yCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
