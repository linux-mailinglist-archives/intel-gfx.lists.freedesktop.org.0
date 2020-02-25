Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C7BC916EC40
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Feb 2020 18:13:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1F13A6EB58;
	Tue, 25 Feb 2020 17:13:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C4BE76EB58
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Feb 2020 17:13:49 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Feb 2020 09:11:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,484,1574150400"; d="scan'208";a="271385113"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga002.fm.intel.com with SMTP; 25 Feb 2020 09:11:52 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 25 Feb 2020 19:11:52 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 25 Feb 2020 19:11:14 +0200
Message-Id: <20200225171125.28885-10-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200225171125.28885-1-ville.syrjala@linux.intel.com>
References: <20200225171125.28885-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 09/20] drm/i915: Nuke skl_ddb_get_hw_state()
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCnNr
bF9kZGJfZ2V0X2h3X3N0YXRlKCkgaXMgcmVkdW5kYW50IGFuZCBraW5kYSBjYWxsZWQgaW4gdGh3
IHdyb25nCnNwb3QgYW55d2F5LiBKdXN0IGtpbGwgaXQuCgpDYzogU3RhbmlzbGF2IExpc292c2tp
eSA8c3RhbmlzbGF2Lmxpc292c2tpeUBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5
cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaW50ZWxfcG0uYyB8IDcgLS0tLS0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50
ZWxfcG0uaCB8IDEgLQogMiBmaWxlcyBjaGFuZ2VkLCA4IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pbnRlbF9wbS5jCmluZGV4IGQ0NzMwZDliNGUxYi4uODdmODhlYTZiN2FlIDEwMDY0NAotLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2ludGVsX3BtLmMKQEAgLTQxMTcsMTIgKzQxMTcsNiBAQCB2b2lkIHNrbF9waXBlX2RkYl9n
ZXRfaHdfc3RhdGUoc3RydWN0IGludGVsX2NydGMgKmNydGMsCiAJaW50ZWxfZGlzcGxheV9wb3dl
cl9wdXQoZGV2X3ByaXYsIHBvd2VyX2RvbWFpbiwgd2FrZXJlZik7CiB9CiAKLXZvaWQgc2tsX2Rk
Yl9nZXRfaHdfc3RhdGUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQotewotCWRl
dl9wcml2LT5kYnVmLmVuYWJsZWRfc2xpY2VzID0KLQkJaW50ZWxfZW5hYmxlZF9kYnVmX3NsaWNl
c19tYXNrKGRldl9wcml2KTsKLX0KLQogLyoKICAqIERldGVybWluZXMgdGhlIGRvd25zY2FsZSBh
bW91bnQgb2YgYSBwbGFuZSBmb3IgdGhlIHB1cnBvc2VzIG9mIHdhdGVybWFyayBjYWxjdWxhdGlv
bnMuCiAgKiBUaGUgYnNwZWMgZGVmaW5lcyBkb3duc2NhbGUgYW1vdW50IGFzOgpAQCAtNTkxMCw3
ICs1OTA0LDYgQEAgdm9pZCBza2xfd21fZ2V0X2h3X3N0YXRlKHN0cnVjdCBkcm1faTkxNV9wcml2
YXRlICpkZXZfcHJpdikKIAlzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YzsKIAlzdHJ1Y3QgaW50ZWxf
Y3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZTsKIAotCXNrbF9kZGJfZ2V0X2h3X3N0YXRlKGRldl9wcml2
KTsKIAlmb3JfZWFjaF9pbnRlbF9jcnRjKCZkZXZfcHJpdi0+ZHJtLCBjcnRjKSB7CiAJCWNydGNf
c3RhdGUgPSB0b19pbnRlbF9jcnRjX3N0YXRlKGNydGMtPmJhc2Uuc3RhdGUpOwogCmRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5oIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaW50ZWxfcG0uaAppbmRleCBmYWRmN2NiYzQ0YzQuLjEwNTRhMGFiMWU0MCAxMDA2NDQKLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uaAorKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pbnRlbF9wbS5oCkBAIC0zOCw3ICszOCw2IEBAIHU4IGludGVsX2VuYWJsZWRfZGJ1Zl9z
bGljZXNfbWFzayhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpOwogdm9pZCBza2xf
cGlwZV9kZGJfZ2V0X2h3X3N0YXRlKHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjLAogCQkJICAgICAg
IHN0cnVjdCBza2xfZGRiX2VudHJ5ICpkZGJfeSwKIAkJCSAgICAgICBzdHJ1Y3Qgc2tsX2RkYl9l
bnRyeSAqZGRiX3V2KTsKLXZvaWQgc2tsX2RkYl9nZXRfaHdfc3RhdGUoc3RydWN0IGRybV9pOTE1
X3ByaXZhdGUgKmRldl9wcml2KTsKIHZvaWQgc2tsX3BpcGVfd21fZ2V0X2h3X3N0YXRlKHN0cnVj
dCBpbnRlbF9jcnRjICpjcnRjLAogCQkJICAgICAgc3RydWN0IHNrbF9waXBlX3dtICpvdXQpOwog
dm9pZCBnNHhfd21fc2FuaXRpemUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KTsK
LS0gCjIuMjQuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
Cg==
