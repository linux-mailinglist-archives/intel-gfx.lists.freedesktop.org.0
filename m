Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EFAA7D8056
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Oct 2019 21:31:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 647406E890;
	Tue, 15 Oct 2019 19:31:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B6ECC6E891
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Oct 2019 19:31:13 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Oct 2019 12:31:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,300,1566889200"; d="scan'208";a="207655628"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga002.jf.intel.com with SMTP; 15 Oct 2019 12:31:11 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 15 Oct 2019 22:31:10 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 15 Oct 2019 22:30:33 +0300
Message-Id: <20191015193035.25982-12-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191015193035.25982-1-ville.syrjala@linux.intel.com>
References: <20191015193035.25982-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 11/13] drm/i915: Move more cdclk state
 handling into intel_modeset_calc_cdclk()
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkVu
Y2Fwc3VsYXRlIHRoZSBjZGNsayBzdGF0ZSBoYW5kbGluZyBhIGJpdCBiZXR0ZXIgYnkgcGVyZm9y
bWluZwp0aGUgY29weSBmcm9tIGRldl9wcml2LT5jZGNsayBpbnRvIHRoZSBjdXJyZW50IGludGVs
X2F0b21pY19zdGF0ZQp3aXRoaW4gdGhlIGNkY2xrIGNvZGUuCgpTaWduZWQtb2ZmLWJ5OiBWaWxs
ZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgotLS0KIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY2RjbGsuYyAgIHwgNyArKysrKysrCiBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyB8IDYgLS0tLS0tCiAyIGZpbGVz
IGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKSwgNiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NkY2xrLmMgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2NkY2xrLmMKaW5kZXggMGNhZWYyNTkyYTdlLi4yN2FkZGJk
MzVkOWMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY2Rj
bGsuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NkY2xrLmMKQEAg
LTIzMjUsNiArMjMyNSwxMyBAQCBpbnQgaW50ZWxfbW9kZXNldF9jYWxjX2NkY2xrKHN0cnVjdCBp
bnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlKQogCWVudW0gcGlwZSBwaXBlOwogCWludCByZXQ7CiAK
KwkvKiBrZWVwIHRoZSBjdXJyZW50IHNldHRpbmcgKi8KKwlpZiAoIXN0YXRlLT5jZGNsay5mb3Jj
ZV9taW5fY2RjbGtfY2hhbmdlZCkKKwkJc3RhdGUtPmNkY2xrLmZvcmNlX21pbl9jZGNsayA9IGRl
dl9wcml2LT5jZGNsay5mb3JjZV9taW5fY2RjbGs7CisKKwlzdGF0ZS0+Y2RjbGsubG9naWNhbCA9
IGRldl9wcml2LT5jZGNsay5sb2dpY2FsOworCXN0YXRlLT5jZGNsay5hY3R1YWwgPSBkZXZfcHJp
di0+Y2RjbGsuYWN0dWFsOworCiAJcmV0ID0gZGV2X3ByaXYtPmRpc3BsYXkubW9kZXNldF9jYWxj
X2NkY2xrKHN0YXRlKTsKIAlpZiAocmV0KQogCQlyZXR1cm4gcmV0OwpkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwppbmRleCAyYTc3ZDVkNTA1MWEuLjk0ZmVj
MDk1OGYzOSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
aXNwbGF5LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5
LmMKQEAgLTEzNTI1LDE0ICsxMzUyNSw4IEBAIHN0YXRpYyBpbnQgaW50ZWxfbW9kZXNldF9jaGVj
a3Moc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUpCiAJc3RydWN0IGludGVsX2NydGMg
KmNydGM7CiAJaW50IHJldCwgaTsKIAotCS8qIGtlZXAgdGhlIGN1cnJlbnQgc2V0dGluZyAqLwot
CWlmICghc3RhdGUtPmNkY2xrLmZvcmNlX21pbl9jZGNsa19jaGFuZ2VkKQotCQlzdGF0ZS0+Y2Rj
bGsuZm9yY2VfbWluX2NkY2xrID0gZGV2X3ByaXYtPmNkY2xrLmZvcmNlX21pbl9jZGNsazsKLQog
CXN0YXRlLT5tb2Rlc2V0ID0gdHJ1ZTsKIAlzdGF0ZS0+YWN0aXZlX3BpcGVzID0gZGV2X3ByaXYt
PmFjdGl2ZV9waXBlczsKLQlzdGF0ZS0+Y2RjbGsubG9naWNhbCA9IGRldl9wcml2LT5jZGNsay5s
b2dpY2FsOwotCXN0YXRlLT5jZGNsay5hY3R1YWwgPSBkZXZfcHJpdi0+Y2RjbGsuYWN0dWFsOwog
CiAJZm9yX2VhY2hfb2xkbmV3X2ludGVsX2NydGNfaW5fc3RhdGUoc3RhdGUsIGNydGMsIG9sZF9j
cnRjX3N0YXRlLAogCQkJCQkgICAgbmV3X2NydGNfc3RhdGUsIGkpIHsKLS0gCjIuMjEuMAoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
