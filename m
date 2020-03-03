Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E7B2177D8D
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Mar 2020 18:33:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C3A606E92B;
	Tue,  3 Mar 2020 17:33:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9BA406E92B
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Mar 2020 17:33:41 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Mar 2020 09:33:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,511,1574150400"; d="scan'208";a="233816524"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga008.fm.intel.com with SMTP; 03 Mar 2020 09:33:38 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 03 Mar 2020 19:33:38 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  3 Mar 2020 19:33:12 +0200
Message-Id: <20200303173313.28117-9-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200303173313.28117-1-ville.syrjala@linux.intel.com>
References: <20200303173313.28117-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 8/9] drm/i915: Fix readout of PIPEGCMAX
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClBJ
UEVHQ01BWCBpcyBhIDExLjYgKG9yIDEuMTYgaWYgeW91IHdpbGwpIHZhbHVlLiBJZS4gaXQgY2Fu
CnJlcHJlc2VudCBhIHZhbHVlIG9mIDEuMCB3aGVuIHRoZSBtYXhpbXVtIHdlIGNhbiBzdG9yZSBp
biB0aGUKc29mdHdhcmUgTFVUIGlzIDAuZmZmZi4gQ2xhbXAgdGhlIHZhbHVlIHNvIHRoYXQgaXQg
Z2V0cwpzYXR1cmF0ZWQgdG8gdGhlIG1heCB0aGUgdWFwaSBzdXBwb3J0cy4KClNpZ25lZC1vZmYt
Ynk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Ci0tLQog
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jb2xvci5jIHwgMyArKy0KIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggICAgICAgICAgICB8IDEgLQogMiBmaWxlcyBjaGFu
Z2VkLCAyIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jb2xvci5jIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9jb2xvci5jCmluZGV4IDg3OTZmMDRlMjNhOC4uZWQ5OTk2YWFjYWZk
IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NvbG9yLmMK
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jb2xvci5jCkBAIC00NDIs
NyArNDQyLDggQEAgc3RhdGljIHZvaWQgaTk2NV9sdXRfMTBwNl9wYWNrKHN0cnVjdCBkcm1fY29s
b3JfbHV0ICplbnRyeSwgdTMyIGxkdywgdTMyIHVkdykKIAogc3RhdGljIHUxNiBpOTY1X2x1dF8x
MXA2X21heF9wYWNrKHUzMiB2YWwpCiB7Ci0JcmV0dXJuIFJFR19GSUVMRF9HRVQoUElQRUdDTUFY
X1JHQl9NQVNLLCB2YWwpOworCS8qIFBJUEVHQ01BWCBpcyAxMS42LCBjbGFtcCB0byAxMC42ICov
CisJcmV0dXJuIGNsYW1wX3ZhbCh2YWwsIDAsIDB4ZmZmZik7CiB9CiAKIHN0YXRpYyB1MzIgaWxr
X2x1dF8xMChjb25zdCBzdHJ1Y3QgZHJtX2NvbG9yX2x1dCAqY29sb3IpCmRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9yZWcuaAppbmRleCA4MGNmMDJhNmVlYzEuLjc5YWU5NjU0ZGFjOSAxMDA2NDQKLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X3JlZy5oCkBAIC01ODcwLDcgKzU4NzAsNiBAQCBlbnVtIHsKIAogI2RlZmluZSAgX1BJUEVB
R0NNQVggICAgICAgICAgIDB4NzAwMTAKICNkZWZpbmUgIF9QSVBFQkdDTUFYICAgICAgICAgICAw
eDcxMDEwCi0jZGVmaW5lIFBJUEVHQ01BWF9SR0JfTUFTSyAgICAgUkVHX0dFTk1BU0soMTUsIDAp
CiAjZGVmaW5lIFBJUEVHQ01BWChwaXBlLCBpKSAgICAgX01NSU9fUElQRTIocGlwZSwgX1BJUEVB
R0NNQVggKyAoaSkgKiA0KQogCiAjZGVmaW5lIF9QSVBFX01JU0NfQQkJCTB4NzAwMzAKLS0gCjIu
MjQuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
