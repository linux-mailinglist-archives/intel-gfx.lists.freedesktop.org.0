Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D4231430FC
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Jan 2020 18:47:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A1A36EA62;
	Mon, 20 Jan 2020 17:47:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D2E046EA9C
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Jan 2020 17:47:48 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Jan 2020 09:47:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,342,1574150400"; d="scan'208";a="244460978"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga002.jf.intel.com with SMTP; 20 Jan 2020 09:47:46 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 20 Jan 2020 19:47:46 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 20 Jan 2020 19:47:16 +0200
Message-Id: <20200120174728.21095-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200120174728.21095-1-ville.syrjala@linux.intel.com>
References: <20200120174728.21095-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 06/17] drm/i915:
 s/need_cd2x_updare/can_cd2x_update/
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCmlu
dGVsX2NkY2xrX25lZWRzX2NkMnhfdXBkYXRlKCkgaXMgbmFtZWQgcmF0aGVyIGNvbmZ1c2luZ2x5
LgpXZSBkb24ndCBoYXZlIHRvIGRvIGEgY2QyeCB1cGRhdGUsIHJhdGhlciB3ZSBhcmUgYWxsb3dl
ZCB0bwpkbyBvbmUgKGFzIG9wcG9zZWQgdG8gYSBmdWxsIFBMTCByZXByb2dyYW1taW5nIHdpdGgg
aXRzIGhlYXZ5CmhhbmRlZCBtb2Rlc2V0KS4gU28gbGV0J3MgcmVuYW1lIHRoZSBmdW5jdGlvbiB0
bwppbnRlbF9jZGNsa19jYW5fY2QyeF91cGRhdGUoKS4KClNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5
cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jZGNsay5jIHwgMTQgKysrKysrKy0tLS0tLS0KIDEgZmls
ZSBjaGFuZ2VkLCA3IGluc2VydGlvbnMoKyksIDcgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jZGNsay5jIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jZGNsay5jCmluZGV4IGY3Zjg4NmRjZDZhZS4uOWQ0Y2Y0
MTJiNjVkIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Nk
Y2xrLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jZGNsay5jCkBA
IC0xNzY3LDcgKzE3NjcsNyBAQCBib29sIGludGVsX2NkY2xrX25lZWRzX21vZGVzZXQoY29uc3Qg
c3RydWN0IGludGVsX2NkY2xrX3N0YXRlICphLAogfQogCiAvKioKLSAqIGludGVsX2NkY2xrX25l
ZWRzX2NkMnhfdXBkYXRlIC0gRGV0ZXJtaW5lIGlmIHR3byBDRENMSyBzdGF0ZXMgcmVxdWlyZSBh
IGNkMnggZGl2aWRlciB1cGRhdGUKKyAqIGludGVsX2NkY2xrX2Nhbl9jZDJ4X3VwZGF0ZSAtIERl
dGVybWluZSBpZiB0d28gQ0RDTEsgc3RhdGVzIG5lZWQgYSBjZDJ4IGRpdmlkZXIgdXBkYXRlCiAg
KiBAZGV2X3ByaXY6IE5vdCBhIENEQ0xLIHN0YXRlLCBpdCdzIHRoZSBkcm1faTkxNV9wcml2YXRl
IQogICogQGE6IGZpcnN0IENEQ0xLIHN0YXRlCiAgKiBAYjogc2Vjb25kIENEQ0xLIHN0YXRlCkBA
IC0xNzc1LDkgKzE3NzUsOSBAQCBib29sIGludGVsX2NkY2xrX25lZWRzX21vZGVzZXQoY29uc3Qg
c3RydWN0IGludGVsX2NkY2xrX3N0YXRlICphLAogICogUmV0dXJuczoKICAqIFRydWUgaWYgdGhl
IENEQ0xLIHN0YXRlcyByZXF1aXJlIGp1c3QgYSBjZDJ4IGRpdmlkZXIgdXBkYXRlLCBmYWxzZSBp
ZiBub3QuCiAgKi8KLXN0YXRpYyBib29sIGludGVsX2NkY2xrX25lZWRzX2NkMnhfdXBkYXRlKHN0
cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKLQkJCQkJICBjb25zdCBzdHJ1Y3QgaW50
ZWxfY2RjbGtfc3RhdGUgKmEsCi0JCQkJCSAgY29uc3Qgc3RydWN0IGludGVsX2NkY2xrX3N0YXRl
ICpiKQorc3RhdGljIGJvb2wgaW50ZWxfY2RjbGtfY2FuX2NkMnhfdXBkYXRlKHN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlICpkZXZfcHJpdiwKKwkJCQkJY29uc3Qgc3RydWN0IGludGVsX2NkY2xrX3N0
YXRlICphLAorCQkJCQljb25zdCBzdHJ1Y3QgaW50ZWxfY2RjbGtfc3RhdGUgKmIpCiB7CiAJLyog
T2xkZXIgaHcgZG9lc24ndCBoYXZlIHRoZSBjYXBhYmlsaXR5ICovCiAJaWYgKElOVEVMX0dFTihk
ZXZfcHJpdikgPCAxMCAmJiAhSVNfR0VOOV9MUChkZXZfcHJpdikpCkBAIC0yMzkzLDkgKzIzOTMs
OSBAQCBpbnQgaW50ZWxfbW9kZXNldF9jYWxjX2NkY2xrKHN0cnVjdCBpbnRlbF9hdG9taWNfc3Rh
dGUgKnN0YXRlKQogCX0KIAogCWlmIChpc19wb3dlcl9vZl8yKHN0YXRlLT5hY3RpdmVfcGlwZXMp
ICYmCi0JICAgIGludGVsX2NkY2xrX25lZWRzX2NkMnhfdXBkYXRlKGRldl9wcml2LAotCQkJCQkg
ICZkZXZfcHJpdi0+Y2RjbGsuYWN0dWFsLAotCQkJCQkgICZzdGF0ZS0+Y2RjbGsuYWN0dWFsKSkg
eworCSAgICBpbnRlbF9jZGNsa19jYW5fY2QyeF91cGRhdGUoZGV2X3ByaXYsCisJCQkJCSZkZXZf
cHJpdi0+Y2RjbGsuYWN0dWFsLAorCQkJCQkmc3RhdGUtPmNkY2xrLmFjdHVhbCkpIHsKIAkJc3Ry
dWN0IGludGVsX2NydGMgKmNydGM7CiAJCXN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0
YXRlOwogCi0tIAoyLjI0LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeAo=
