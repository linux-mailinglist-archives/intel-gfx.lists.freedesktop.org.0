Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EEB311728D1
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Feb 2020 20:40:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C12C6E082;
	Thu, 27 Feb 2020 19:39:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BE2E26E082
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Feb 2020 19:39:57 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Feb 2020 11:39:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,493,1574150400"; d="scan'208";a="285431542"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by FMSMGA003.fm.intel.com with SMTP; 27 Feb 2020 11:39:55 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 27 Feb 2020 21:39:54 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 27 Feb 2020 21:39:54 +0200
Message-Id: <20200227193954.5585-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Lock gmbus/aux mutexes while changing
 cdclk
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCmdt
YnVzL2F1eCBtYXkgYmUgY2xvY2tlZCBieSBjZGNsaywgdGh1cyB3ZSBzaG91bGQgbWFrZSBzdXJl
IG5vCnRyYW5zZmVycyBhcmUgb25nb2luZyB3aGlsZSB0aGUgY2RjbGsgZnJlcXVlbmN5IGlzIGJl
aW5nIGNoYW5nZWQuCldlIGRvIHRoYXQgYnkgc2ltcGx5IGdyYWJiaW5nIGFsbCB0aGUgZ21idXMv
YXV4IG11dGV4ZXMuIE5vIG9uZQplbHNlIHNob3VsZCBiZSBob2xkaW5nIGFueSBtb3JlIHRoYW4g
b25lIG9mIHRob3NlIGF0IGEgdGltZSBzbwp0aGUgbG9jayBvcmRlcmluZyBoZXJlIHNob3VsZG4n
dCBtYXR0ZXIuCgpTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFA
bGludXguaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
Y2RjbGsuYyB8IDIzICsrKysrKysrKysrKysrKysrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCAyMyBp
bnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9jZGNsay5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jZGNsay5j
CmluZGV4IDA3NDFkNjQzNDU1Yi4uZjY5YmY0YTRlYjFjIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NkY2xrLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9jZGNsay5jCkBAIC0xODY4LDYgKzE4NjgsOSBAQCBzdGF0aWMgdm9p
ZCBpbnRlbF9zZXRfY2RjbGsoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAogCQkJ
ICAgIGNvbnN0IHN0cnVjdCBpbnRlbF9jZGNsa19jb25maWcgKmNkY2xrX2NvbmZpZywKIAkJCSAg
ICBlbnVtIHBpcGUgcGlwZSkKIHsKKwlzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlcjsKKwl1
bnNpZ25lZCBpbnQgYXV4X211dGV4X2xvY2tjbGFzcyA9IDA7CisKIAlpZiAoIWludGVsX2NkY2xr
X2NoYW5nZWQoJmRldl9wcml2LT5jZGNsay5odywgY2RjbGtfY29uZmlnKSkKIAkJcmV0dXJuOwog
CkBAIC0xODc2LDggKzE4NzksMjggQEAgc3RhdGljIHZvaWQgaW50ZWxfc2V0X2NkY2xrKHN0cnVj
dCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKIAogCWludGVsX2R1bXBfY2RjbGtfY29uZmln
KGNkY2xrX2NvbmZpZywgIkNoYW5naW5nIENEQ0xLIHRvIik7CiAKKwkvKgorCSAqIExvY2sgYXV4
L2dtYnVzIHdoaWxlIHdlIGNoYW5nZSBjZGNsayBpbiBjYXNlIHRob3NlCisJICogZnVuY3Rpb25z
IHVzZSBjZGNsay4gTm90IGFsbCBwbGF0Zm9ybXMvcG9ydHMgZG8sCisJICogYnV0IHdlJ2xsIGxv
Y2sgdGhlbSBhbGwgZm9yIHNpbXBsaWNpdHkuCisJICovCisJbXV0ZXhfbG9jaygmZGV2X3ByaXYt
PmdtYnVzX211dGV4KTsKKwlmb3JfZWFjaF9pbnRlbF9kcCgmZGV2X3ByaXYtPmRybSwgZW5jb2Rl
cikgeworCQlzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwID0gZW5jX3RvX2ludGVsX2RwKGVuY29k
ZXIpOworCisJCW11dGV4X2xvY2tfbmVzdGVkKCZpbnRlbF9kcC0+YXV4Lmh3X211dGV4LAorCQkJ
CSAgYXV4X211dGV4X2xvY2tjbGFzcysrKTsKKwl9CisKIAlkZXZfcHJpdi0+ZGlzcGxheS5zZXRf
Y2RjbGsoZGV2X3ByaXYsIGNkY2xrX2NvbmZpZywgcGlwZSk7CiAKKwlmb3JfZWFjaF9pbnRlbF9k
cCgmZGV2X3ByaXYtPmRybSwgZW5jb2RlcikgeworCQlzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2Rw
ID0gZW5jX3RvX2ludGVsX2RwKGVuY29kZXIpOworCisJCW11dGV4X3VubG9jaygmaW50ZWxfZHAt
PmF1eC5od19tdXRleCk7CisJfQorCW11dGV4X3VubG9jaygmZGV2X3ByaXYtPmdtYnVzX211dGV4
KTsKKwogCWlmIChkcm1fV0FSTigmZGV2X3ByaXYtPmRybSwKIAkJICAgICBpbnRlbF9jZGNsa19j
aGFuZ2VkKCZkZXZfcHJpdi0+Y2RjbGsuaHcsIGNkY2xrX2NvbmZpZyksCiAJCSAgICAgImNkY2xr
IHN0YXRlIGRvZXNuJ3QgbWF0Y2ghXG4iKSkgewotLSAKMi4yNC4xCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
