Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B649A176163
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Mar 2020 18:44:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BACE66E5CE;
	Mon,  2 Mar 2020 17:44:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 193DB6E5CE
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Mar 2020 17:44:45 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Mar 2020 09:44:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,507,1574150400"; d="scan'208";a="233442885"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga008.fm.intel.com with SMTP; 02 Mar 2020 09:44:42 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 02 Mar 2020 19:44:42 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  2 Mar 2020 19:44:42 +0200
Message-Id: <20200302174442.5803-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200227193954.5585-1-ville.syrjala@linux.intel.com>
References: <20200227193954.5585-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2] drm/i915: Lock gmbus/aux mutexes while
 changing cdclk
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
dCBtYXR0ZXIuCgp2MjogVXNlIG11dGV4X2xvY2tfbmVzdF9sb2NrKCkgKENocmlzKQoKQ2M6IENo
cmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgpTaWduZWQtb2ZmLWJ5OiBWaWxs
ZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgotLS0KIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY2RjbGsuYyB8IDIyICsrKysrKysrKysrKysrKysr
KysrKysKIDEgZmlsZSBjaGFuZ2VkLCAyMiBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jZGNsay5jIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9jZGNsay5jCmluZGV4IDA3NDFkNjQzNDU1Yi4uOTc5YTAyNDFm
ZGNiIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NkY2xr
LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jZGNsay5jCkBAIC0x
ODY4LDYgKzE4NjgsOCBAQCBzdGF0aWMgdm9pZCBpbnRlbF9zZXRfY2RjbGsoc3RydWN0IGRybV9p
OTE1X3ByaXZhdGUgKmRldl9wcml2LAogCQkJICAgIGNvbnN0IHN0cnVjdCBpbnRlbF9jZGNsa19j
b25maWcgKmNkY2xrX2NvbmZpZywKIAkJCSAgICBlbnVtIHBpcGUgcGlwZSkKIHsKKwlzdHJ1Y3Qg
aW50ZWxfZW5jb2RlciAqZW5jb2RlcjsKKwogCWlmICghaW50ZWxfY2RjbGtfY2hhbmdlZCgmZGV2
X3ByaXYtPmNkY2xrLmh3LCBjZGNsa19jb25maWcpKQogCQlyZXR1cm47CiAKQEAgLTE4NzYsOCAr
MTg3OCwyOCBAQCBzdGF0aWMgdm9pZCBpbnRlbF9zZXRfY2RjbGsoc3RydWN0IGRybV9pOTE1X3By
aXZhdGUgKmRldl9wcml2LAogCiAJaW50ZWxfZHVtcF9jZGNsa19jb25maWcoY2RjbGtfY29uZmln
LCAiQ2hhbmdpbmcgQ0RDTEsgdG8iKTsKIAorCS8qCisJICogTG9jayBhdXgvZ21idXMgd2hpbGUg
d2UgY2hhbmdlIGNkY2xrIGluIGNhc2UgdGhvc2UKKwkgKiBmdW5jdGlvbnMgdXNlIGNkY2xrLiBO
b3QgYWxsIHBsYXRmb3Jtcy9wb3J0cyBkbywKKwkgKiBidXQgd2UnbGwgbG9jayB0aGVtIGFsbCBm
b3Igc2ltcGxpY2l0eS4KKwkgKi8KKwltdXRleF9sb2NrKCZkZXZfcHJpdi0+Z21idXNfbXV0ZXgp
OworCWZvcl9lYWNoX2ludGVsX2RwKCZkZXZfcHJpdi0+ZHJtLCBlbmNvZGVyKSB7CisJCXN0cnVj
dCBpbnRlbF9kcCAqaW50ZWxfZHAgPSBlbmNfdG9faW50ZWxfZHAoZW5jb2Rlcik7CisKKwkJbXV0
ZXhfbG9ja19uZXN0X2xvY2soJmludGVsX2RwLT5hdXguaHdfbXV0ZXgsCisJCQkJICAgICAmZGV2
X3ByaXYtPmdtYnVzX211dGV4KTsKKwl9CisKIAlkZXZfcHJpdi0+ZGlzcGxheS5zZXRfY2RjbGso
ZGV2X3ByaXYsIGNkY2xrX2NvbmZpZywgcGlwZSk7CiAKKwlmb3JfZWFjaF9pbnRlbF9kcCgmZGV2
X3ByaXYtPmRybSwgZW5jb2RlcikgeworCQlzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwID0gZW5j
X3RvX2ludGVsX2RwKGVuY29kZXIpOworCisJCW11dGV4X3VubG9jaygmaW50ZWxfZHAtPmF1eC5o
d19tdXRleCk7CisJfQorCW11dGV4X3VubG9jaygmZGV2X3ByaXYtPmdtYnVzX211dGV4KTsKKwog
CWlmIChkcm1fV0FSTigmZGV2X3ByaXYtPmRybSwKIAkJICAgICBpbnRlbF9jZGNsa19jaGFuZ2Vk
KCZkZXZfcHJpdi0+Y2RjbGsuaHcsIGNkY2xrX2NvbmZpZyksCiAJCSAgICAgImNkY2xrIHN0YXRl
IGRvZXNuJ3QgbWF0Y2ghXG4iKSkgewotLSAKMi4yNC4xCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZngK
