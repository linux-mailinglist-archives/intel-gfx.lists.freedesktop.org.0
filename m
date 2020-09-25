Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C737D27893A
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Sep 2020 15:17:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C7A36ECEF;
	Fri, 25 Sep 2020 13:17:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 74A5C6ECF2
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Sep 2020 13:17:17 +0000 (UTC)
IronPort-SDR: mhIPaPkxLMbEvcpO0wj27awdhksX82Hm9TOKxqur131y7OqHnTP4JH9AgizYIr9ko16A8T9UUx
 MlncWwFQX6QA==
X-IronPort-AV: E=McAfee;i="6000,8403,9754"; a="162419550"
X-IronPort-AV: E=Sophos;i="5.77,302,1596524400"; d="scan'208";a="162419550"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Sep 2020 06:17:17 -0700
IronPort-SDR: B8+Z/uaoyuEoZXYzS/gWTCz9IiIPwu4hiqXC24ig+QjRuy5x7aN4sQjoX7dpaUxu1PwRcMNcOa
 HhMERElD31tA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,302,1596524400"; d="scan'208";a="339496118"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga008.jf.intel.com with SMTP; 25 Sep 2020 06:17:15 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 25 Sep 2020 16:17:14 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 25 Sep 2020 16:16:53 +0300
Message-Id: <20200925131656.10022-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200925131656.10022-1-ville.syrjala@linux.intel.com>
References: <20200925131656.10022-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 6/9] drm/i915: Shuffle chv_cgm_gamma_pack()
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
bWEgZnVuY3Rpb25zLgoKUmV2aWV3ZWQtYnk6IFVtYSBTaGFua2FyIDx1bWEuc2hhbmthckBpbnRl
bC5jb20+ClNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51
eC5pbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jb2xv
ci5jIHwgMTQgKysrKysrKy0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCA3IGluc2VydGlvbnMoKyks
IDcgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9jb2xvci5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jb2xv
ci5jCmluZGV4IDM3YTRmZWRlN2JjMC4uMjYwYmJiZDViYmYyIDEwMDY0NAotLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NvbG9yLmMKKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9jb2xvci5jCkBAIC0xMDMwLDEzICsxMDMwLDYgQEAgc3RhdGlj
IHUzMiBjaHZfY2dtX2RlZ2FtbWFfdWR3KGNvbnN0IHN0cnVjdCBkcm1fY29sb3JfbHV0ICpjb2xv
cikKIAlyZXR1cm4gZHJtX2NvbG9yX2x1dF9leHRyYWN0KGNvbG9yLT5yZWQsIDE0KTsKIH0KIAot
c3RhdGljIHZvaWQgY2h2X2NnbV9nYW1tYV9wYWNrKHN0cnVjdCBkcm1fY29sb3JfbHV0ICplbnRy
eSwgdTMyIGxkdywgdTMyIHVkdykKLXsKLQllbnRyeS0+Z3JlZW4gPSBpbnRlbF9jb2xvcl9sdXRf
cGFjayhSRUdfRklFTERfR0VUKENHTV9QSVBFX0dBTU1BX0dSRUVOX01BU0ssIGxkdyksIDEwKTsK
LQllbnRyeS0+Ymx1ZSA9IGludGVsX2NvbG9yX2x1dF9wYWNrKFJFR19GSUVMRF9HRVQoQ0dNX1BJ
UEVfR0FNTUFfQkxVRV9NQVNLLCBsZHcpLCAxMCk7Ci0JZW50cnktPnJlZCA9IGludGVsX2NvbG9y
X2x1dF9wYWNrKFJFR19GSUVMRF9HRVQoQ0dNX1BJUEVfR0FNTUFfUkVEX01BU0ssIHVkdyksIDEw
KTsKLX0KLQogc3RhdGljIHZvaWQgY2h2X2xvYWRfY2dtX2RlZ2FtbWEoc3RydWN0IGludGVsX2Ny
dGMgKmNydGMsCiAJCQkJIGNvbnN0IHN0cnVjdCBkcm1fcHJvcGVydHlfYmxvYiAqYmxvYikKIHsK
QEAgLTEwNjQsNiArMTA1NywxMyBAQCBzdGF0aWMgdTMyIGNodl9jZ21fZ2FtbWFfdWR3KGNvbnN0
IHN0cnVjdCBkcm1fY29sb3JfbHV0ICpjb2xvcikKIAlyZXR1cm4gZHJtX2NvbG9yX2x1dF9leHRy
YWN0KGNvbG9yLT5yZWQsIDEwKTsKIH0KIAorc3RhdGljIHZvaWQgY2h2X2NnbV9nYW1tYV9wYWNr
KHN0cnVjdCBkcm1fY29sb3JfbHV0ICplbnRyeSwgdTMyIGxkdywgdTMyIHVkdykKK3sKKwllbnRy
eS0+Z3JlZW4gPSBpbnRlbF9jb2xvcl9sdXRfcGFjayhSRUdfRklFTERfR0VUKENHTV9QSVBFX0dB
TU1BX0dSRUVOX01BU0ssIGxkdyksIDEwKTsKKwllbnRyeS0+Ymx1ZSA9IGludGVsX2NvbG9yX2x1
dF9wYWNrKFJFR19GSUVMRF9HRVQoQ0dNX1BJUEVfR0FNTUFfQkxVRV9NQVNLLCBsZHcpLCAxMCk7
CisJZW50cnktPnJlZCA9IGludGVsX2NvbG9yX2x1dF9wYWNrKFJFR19GSUVMRF9HRVQoQ0dNX1BJ
UEVfR0FNTUFfUkVEX01BU0ssIHVkdyksIDEwKTsKK30KKwogc3RhdGljIHZvaWQgY2h2X2xvYWRf
Y2dtX2dhbW1hKHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjLAogCQkJICAgICAgIGNvbnN0IHN0cnVj
dCBkcm1fcHJvcGVydHlfYmxvYiAqYmxvYikKIHsKLS0gCjIuMjYuMgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
