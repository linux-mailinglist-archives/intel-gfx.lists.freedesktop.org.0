Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DA18E3226
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Oct 2019 14:21:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA53E6E356;
	Thu, 24 Oct 2019 12:21:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8C5CF6E356
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Oct 2019 12:21:44 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Oct 2019 05:21:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,224,1569308400"; d="scan'208";a="210362740"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga002.jf.intel.com with SMTP; 24 Oct 2019 05:21:41 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 24 Oct 2019 15:21:41 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 24 Oct 2019 15:21:37 +0300
Message-Id: <20191024122138.25065-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191024122138.25065-1-ville.syrjala@linux.intel.com>
References: <20191024122138.25065-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/3] drm/i915: Add CHICKEN_TRANS_D
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkFk
ZCBDSElDS0VOX1RSQU5TIGRlZmluaXRpb24gZm9yIHRyYW5zY29kZXIgRC4KClNpZ25lZC1vZmYt
Ynk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Ci0tLQog
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCB8IDQgKysrLQogMSBmaWxlIGNoYW5nZWQs
IDMgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfcmVnLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCmlu
ZGV4IDM4MDcxZDBjODAyMC4uNTBjMmZhMGYyY2FiIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X3JlZy5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgK
QEAgLTc2MjAsMTEgKzc2MjAsMTMgQEAgZW51bSB7CiAjZGVmaW5lIF9DSElDS0VOX1RSQU5TX0IJ
MHg0MjBjNAogI2RlZmluZSBfQ0hJQ0tFTl9UUkFOU19DCTB4NDIwYzgKICNkZWZpbmUgX0NISUNL
RU5fVFJBTlNfRURQCTB4NDIwY2MKKyNkZWZpbmUgX0NISUNLRU5fVFJBTlNfRAkweDQyMGQ4CiAj
ZGVmaW5lIENISUNLRU5fVFJBTlModHJhbnMpCV9NTUlPKF9QSUNLKCh0cmFucyksIFwKIAkJCQkJ
ICAgIFtUUkFOU0NPREVSX0VEUF0gPSBfQ0hJQ0tFTl9UUkFOU19FRFAsIFwKIAkJCQkJICAgIFtU
UkFOU0NPREVSX0FdID0gX0NISUNLRU5fVFJBTlNfQSwgXAogCQkJCQkgICAgW1RSQU5TQ09ERVJf
Ql0gPSBfQ0hJQ0tFTl9UUkFOU19CLCBcCi0JCQkJCSAgICBbVFJBTlNDT0RFUl9DXSA9IF9DSElD
S0VOX1RSQU5TX0MpKQorCQkJCQkgICAgW1RSQU5TQ09ERVJfQ10gPSBfQ0hJQ0tFTl9UUkFOU19D
LCBcCisJCQkJCSAgICBbVFJBTlNDT0RFUl9EXSA9IF9DSElDS0VOX1RSQU5TX0QpKQogI2RlZmlu
ZSAgVlNDX0RBVEFfU0VMX1NPRlRXQVJFX0NPTlRST0wJKDEgPDwgMjUpIC8qIEdMSyBhbmQgQ05M
KyAqLwogI2RlZmluZSAgRERJX1RSQUlOSU5HX09WRVJSSURFX0VOQUJMRQkoMSA8PCAxOSkKICNk
ZWZpbmUgIERESV9UUkFJTklOR19PVkVSUklERV9WQUxVRQkoMSA8PCAxOCkKLS0gCjIuMjEuMAoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
