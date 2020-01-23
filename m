Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F2575145FDC
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Jan 2020 01:23:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1449A6F94F;
	Thu, 23 Jan 2020 00:23:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C8C1F6F94F
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Jan 2020 00:23:13 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Jan 2020 16:23:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,351,1574150400"; d="scan'208";a="229572058"
Received: from labuser-z97x-ud5h.jf.intel.com ([10.165.21.211])
 by orsmga006.jf.intel.com with ESMTP; 22 Jan 2020 16:23:13 -0800
From: Manasi Navare <manasi.d.navare@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 22 Jan 2020 16:24:15 -0800
Message-Id: <20200123002415.31478-2-manasi.d.navare@intel.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20200123002415.31478-1-manasi.d.navare@intel.com>
References: <20200123002415.31478-1-manasi.d.navare@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/dp: Modeset only the tiled
 connectors with CRTC
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

Q2M6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+CkZpeGVz
OiBhNjAzZjViZDE2OTEgKCJkcm0vaTkxNS9kcDogTWFrZSBzdXJlIGFsbCB0aWxlZCBjb25uZWN0
b3JzIGdldCBhZGRlZCB0byB0aGUgc3RhdGUgd2l0aCBmdWxsIG1vZGVzZXQiKQpDbG9zZXM6IGh0
dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9kcm0vaW50ZWwvaXNzdWVzLzUxNgpTaWduZWQt
b2ZmLWJ5OiBNYW5hc2kgTmF2YXJlIDxtYW5hc2kuZC5uYXZhcmVAaW50ZWwuY29tPgotLS0KIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIHwgMTAgKysrKysrKy0t
LQogMSBmaWxlIGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKCmRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCmluZGV4IDc5ZjkwNTQw
NzhlYS4uYzhkNmY2ZThmYzdmIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2Rpc3BsYXkuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2Rpc3BsYXkuYwpAQCAtMTMxNTUsMTEgKzEzMTU1LDEyIEBAIGludGVsX21vZGVzZXRfcGlw
ZV9jb25maWcoc3RydWN0IGludGVsX2NydGNfc3RhdGUgKnBpcGVfY29uZmlnKQogCX0KIAogCS8q
IEdldCB0b3RhbCBudW1iZXIgb2YgdGlsZWQgY29ubmVjdG9ycyBpbiBzdGF0ZSB0aGF0IGJlbG9u
ZyB0bwotCSAqIHRoaXMgdGlsZSBncm91cC4KKwkgKiB0aGlzIHRpbGUgZ3JvdXAgYW5kIHRoYXQg
aGF2ZSBhIENSVEMKIAkgKi8KIAlmb3JfZWFjaF9uZXdfY29ubmVjdG9yX2luX3N0YXRlKHN0YXRl
LCBjb25uZWN0b3IsIGNvbm5lY3Rvcl9zdGF0ZSwgaSkgewogCQlpZiAoY29ubmVjdG9yLT5oYXNf
dGlsZSAmJgotCQkgICAgY29ubmVjdG9yLT50aWxlX2dyb3VwLT5pZCA9PSB0aWxlX2dyb3VwX2lk
KQorCQkgICAgY29ubmVjdG9yLT50aWxlX2dyb3VwLT5pZCA9PSB0aWxlX2dyb3VwX2lkICYmCisJ
CSAgICBjb25uZWN0b3Jfc3RhdGUtPmNydGMpCiAJCQludW1fdGlsZWRfY29ubnMrKzsKIAl9CiAK
QEAgLTE0NTA3LDEzICsxNDUwOCwxNCBAQCBpbnRlbF9tb2Rlc2V0X2FsbF90aWxlcyhzdHJ1Y3Qg
aW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwgaW50IHRpbGVfZ3JwX2lkKQogCQkJY29udGludWU7
CiAJCWNvbm5fc3RhdGUgPSBkcm1fYXRvbWljX2dldF9jb25uZWN0b3Jfc3RhdGUoJnN0YXRlLT5i
YXNlLAogCQkJCQkJCSAgICBjb25uZWN0b3IpOworCiAJCWlmIChJU19FUlIoY29ubl9zdGF0ZSkp
IHsKIAkJCXJldCA9ICBQVFJfRVJSKGNvbm5fc3RhdGUpOwogCQkJYnJlYWs7CiAJCX0KIAogCQlp
ZiAoIWNvbm5fc3RhdGUtPmNydGMpCi0JCQljb250aW51ZTsKKwkJCWJyZWFrOwogCiAJCWNydGNf
c3RhdGUgPSBkcm1fYXRvbWljX2dldF9jcnRjX3N0YXRlKCZzdGF0ZS0+YmFzZSwKIAkJCQkJCSAg
ICAgICBjb25uX3N0YXRlLT5jcnRjKTsKQEAgLTE0NTUwLDYgKzE0NTUyLDggQEAgaW50ZWxfYXRv
bWljX2NoZWNrX3RpbGVkX2Nvbm5zKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlKQog
CQkJY29udGludWU7CiAJCWlmICghaW50ZWxfY29ubmVjdG9yX25lZWRzX21vZGVzZXQoc3RhdGUs
IGNvbm5lY3RvcikpCiAJCQljb250aW51ZTsKKwkJaWYgKCFuZXdfY29ubl9zdGF0ZS0+Y3J0YykK
KwkJCWNvbnRpbnVlOwogCiAJCXJldCA9IGludGVsX21vZGVzZXRfYWxsX3RpbGVzKHN0YXRlLCBj
b25uZWN0b3ItPnRpbGVfZ3JvdXAtPmlkKTsKIAkJaWYgKHJldCkKLS0gCjIuMTkuMQoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
