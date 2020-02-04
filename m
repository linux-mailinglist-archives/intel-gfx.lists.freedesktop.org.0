Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 61280151D9C
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Feb 2020 16:48:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 050CD6E86C;
	Tue,  4 Feb 2020 15:48:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 92CD66E86C
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Feb 2020 15:48:07 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Feb 2020 07:48:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,402,1574150400"; d="scan'208";a="235205061"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga006.jf.intel.com with SMTP; 04 Feb 2020 07:48:04 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 04 Feb 2020 17:48:03 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  4 Feb 2020 17:48:03 +0200
Message-Id: <20200204154803.25403-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Fix the docs for
 intel_set_cdclk_post_plane_update()
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCnMv
YmVmb3JlL2FmdGVyLyBhZ2FpbiBhZnRlciBhY2NpZGVudGFsbHkgY2hhbmdpbmcgaXQgdGhlCm90
aGVyIHdheSBpbiBjb21taXQgNTYwNGU5Y2VhZWQ1ICgiZHJtL2k5MTU6IFNpbXBsaWZ5CmludGVs
X3NldF9jZGNsa197cHJlLHBvc3R9X3BsYW5lX3VwZGF0ZSgpIGNhbGxpbmcgY29udmVudGlvbiIp
CgpDYzogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+ClNpZ25l
ZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+
Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jZGNsay5jIHwgMiArLQog
MSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jZGNsay5jIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jZGNsay5jCmluZGV4IDcxNTRhMjI4ODMxMC4uM2Fk
NWYzNjQ0N2U5IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2NkY2xrLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jZGNsay5j
CkBAIC0xODk1LDcgKzE4OTUsNyBAQCBpbnRlbF9zZXRfY2RjbGtfcHJlX3BsYW5lX3VwZGF0ZShz
dHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSkKICAqIGludGVsX3NldF9jZGNsa19wb3N0
X3BsYW5lX3VwZGF0ZSAtIFB1c2ggdGhlIENEQ0xLIHN0YXRlIHRvIHRoZSBoYXJkd2FyZQogICog
QHN0YXRlOiBpbnRlbCBhdG9taWMgc3RhdGUKICAqCi0gKiBQcm9ncmFtIHRoZSBoYXJkd2FyZSBi
ZWZvcmUgdXBkYXRpbmcgdGhlIEhXIHBsYW5lIHN0YXRlIGJhc2VkIG9uIHRoZQorICogUHJvZ3Jh
bSB0aGUgaGFyZHdhcmUgYWZ0ZXIgdXBkYXRpbmcgdGhlIEhXIHBsYW5lIHN0YXRlIGJhc2VkIG9u
IHRoZQogICogbmV3IENEQ0xLIHN0YXRlLCBpZiBuZWNlc3NhcnkuCiAgKi8KIHZvaWQKLS0gCjIu
MjQuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
