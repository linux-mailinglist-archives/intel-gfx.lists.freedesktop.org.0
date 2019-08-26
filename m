Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E0919C97E
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Aug 2019 08:36:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 554576E183;
	Mon, 26 Aug 2019 06:36:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 643B26E183
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Aug 2019 06:36:51 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Aug 2019 23:36:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,431,1559545200"; d="scan'208";a="174112019"
Received: from genxfsim-shark-bay-client-platform.iind.intel.com
 ([10.223.34.144])
 by orsmga008.jf.intel.com with ESMTP; 25 Aug 2019 23:36:48 -0700
From: Swati Sharma <swati2.sharma@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 26 Aug 2019 11:56:08 +0530
Message-Id: <1566800772-18412-7-git-send-email-swati2.sharma@intel.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1566800772-18412-1-git-send-email-swati2.sharma@intel.com>
References: <1566800772-18412-1-git-send-email-swati2.sharma@intel.com>
Subject: [Intel-gfx] [v8][PATCH 06/10] drm/i91/display: Extract
 i965_read_luts()
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
Cc: jani.nikula@intel.com, daniel.vetter@ffwll.ch, ankit.k.nautiyal@intel.com
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Rm9yIGk5NjUsIGhhdmUgaHcgcmVhZCBvdXQgdG8gY3JlYXRlIGh3IGJsb2Igb2YgZ2FtbWEKbHV0
IHZhbHVlcy4KClNpZ25lZC1vZmYtYnk6IFN3YXRpIFNoYXJtYSA8c3dhdGkyLnNoYXJtYUBpbnRl
bC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jb2xvci5jIHwg
MzkgKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X3JlZy5oICAgICAgICAgICAgfCAgMyArKysKIDIgZmlsZXMgY2hhbmdlZCwgNDIgaW5zZXJ0
aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
Y29sb3IuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY29sb3IuYwppbmRl
eCA0NWUwZWU4Li5jNzdiYmVkIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2NvbG9yLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9jb2xvci5jCkBAIC0xNTcxLDYgKzE1NzEsNDQgQEAgdm9pZCBpOXh4X3JlYWRfbHV0cyhzdHJ1
Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkKIAljcnRjX3N0YXRlLT5iYXNlLmdhbW1h
X2x1dCA9IGk5eHhfcmVhZF9sdXRfOChjcnRjX3N0YXRlKTsKIH0KIAorc3RhdGljIHN0cnVjdCBk
cm1fcHJvcGVydHlfYmxvYiAqCitpOTY1X3JlYWRfZ2FtbWFfbHV0XzEwcDYoc3RydWN0IGludGVs
X2NydGNfc3RhdGUgKmNydGNfc3RhdGUpCit7CisJc3RydWN0IGludGVsX2NydGMgKmNydGMgPSB0
b19pbnRlbF9jcnRjKGNydGNfc3RhdGUtPmJhc2UuY3J0Yyk7CisJc3RydWN0IGRybV9pOTE1X3By
aXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShjcnRjLT5iYXNlLmRldik7CisJdTMyIGksIHZhbDEs
IHZhbDIsIGx1dF9zaXplID0gSU5URUxfSU5GTyhkZXZfcHJpdiktPmNvbG9yLmdhbW1hX2x1dF9z
aXplOworCWVudW0gcGlwZSBwaXBlID0gY3J0Yy0+cGlwZTsKKwlzdHJ1Y3QgZHJtX3Byb3BlcnR5
X2Jsb2IgKmJsb2I7CisJc3RydWN0IGRybV9jb2xvcl9sdXQgKmJsb2JfZGF0YTsKKworCWJsb2Ig
PSBkcm1fcHJvcGVydHlfY3JlYXRlX2Jsb2IoJmRldl9wcml2LT5kcm0sCisJCQkJCXNpemVvZihz
dHJ1Y3QgZHJtX2NvbG9yX2x1dCkgKiBsdXRfc2l6ZSwKKwkJCQkJTlVMTCk7CisJaWYgKElTX0VS
UihibG9iKSkKKwkJcmV0dXJuIE5VTEw7CisKKwlibG9iX2RhdGEgPSBibG9iLT5kYXRhOworCisJ
Zm9yIChpID0gMDsgaSA8IGx1dF9zaXplIC0gMTsgaSsrKSB7CisJCXZhbDEgPSBJOTE1X1JFQUQo
UEFMRVRURShwaXBlLCAyICogaSArIDApKTsKKwkJdmFsMiA9IEk5MTVfUkVBRChQQUxFVFRFKHBp
cGUsIDIgKiBpICsgMSkpOworCisJCWJsb2JfZGF0YVtpXS5yZWQgPSBSRUdfRklFTERfR0VUKFBB
TEVUVEVfUkVEX01BU0ssIHZhbDEpIDw8IDggfCBSRUdfRklFTERfR0VUKFBBTEVUVEVfUkVEX01B
U0ssIHZhbDIpOworCQlibG9iX2RhdGFbaV0uZ3JlZW4gPSBSRUdfRklFTERfR0VUKFBBTEVUVEVf
R1JFRU5fTUFTSywgdmFsMSkgPDwgOCB8IFJFR19GSUVMRF9HRVQoUEFMRVRURV9HUkVFTl9NQVNL
LCB2YWwyKTsKKwkJYmxvYl9kYXRhW2ldLmJsdWUgPSBSRUdfRklFTERfR0VUKFBBTEVUVEVfQkxV
RV9NQVNLLCB2YWwxKSA8PCA4IHwgUkVHX0ZJRUxEX0dFVChQQUxFVFRFX0JMVUVfTUFTSywgdmFs
MikgOworCX0KKworCXJldHVybiBibG9iOworfQorCitzdGF0aWMgdm9pZCBpOTY1X3JlYWRfbHV0
cyhzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkKK3sKKwlpZiAoY3J0Y19zdGF0
ZS0+Z2FtbWFfbW9kZSA9PSBHQU1NQV9NT0RFX01PREVfOEJJVCkKKwkJY3J0Y19zdGF0ZS0+YmFz
ZS5nYW1tYV9sdXQgPSBpOXh4X3JlYWRfbHV0XzgoY3J0Y19zdGF0ZSk7CisJZWxzZQorCQljcnRj
X3N0YXRlLT5iYXNlLmdhbW1hX2x1dCA9IGk5NjVfcmVhZF9nYW1tYV9sdXRfMTBwNihjcnRjX3N0
YXRlKTsKK30KKwogdm9pZCBpbnRlbF9jb2xvcl9pbml0KHN0cnVjdCBpbnRlbF9jcnRjICpjcnRj
KQogewogCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoY3J0Yy0+
YmFzZS5kZXYpOwpAQCAtMTU4Niw2ICsxNjI0LDcgQEAgdm9pZCBpbnRlbF9jb2xvcl9pbml0KHN0
cnVjdCBpbnRlbF9jcnRjICpjcnRjKQogCQl9IGVsc2UgaWYgKElOVEVMX0dFTihkZXZfcHJpdikg
Pj0gNCkgewogCQkJZGV2X3ByaXYtPmRpc3BsYXkuY29sb3JfY2hlY2sgPSBpOXh4X2NvbG9yX2No
ZWNrOwogCQkJZGV2X3ByaXYtPmRpc3BsYXkuY29sb3JfY29tbWl0ID0gaTl4eF9jb2xvcl9jb21t
aXQ7CisJCQlkZXZfcHJpdi0+ZGlzcGxheS5yZWFkX2x1dHMgPSBpOTY1X3JlYWRfbHV0czsKIAkJ
CWRldl9wcml2LT5kaXNwbGF5LmxvYWRfbHV0cyA9IGk5NjVfbG9hZF9sdXRzOwogCQl9IGVsc2Ug
ewogCQkJZGV2X3ByaXYtPmRpc3BsYXkuY29sb3JfY2hlY2sgPSBpOXh4X2NvbG9yX2NoZWNrOwpk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfcmVnLmgKaW5kZXggYjY4N2ZhYS4uYjMwYjBjNmIgMTAwNjQ0Ci0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9yZWcuaApAQCAtMzU1OCw2ICszNTU4LDkgQEAgc3RhdGljIGlubGluZSBib29sIGk5
MTVfbW1pb19yZWdfdmFsaWQoaTkxNV9yZWdfdCByZWcpCiAjZGVmaW5lIF9QQUxFVFRFX0EJCTB4
YTAwMAogI2RlZmluZSBfUEFMRVRURV9CCQkweGE4MDAKICNkZWZpbmUgX0NIVl9QQUxFVFRFX0MJ
CTB4YzAwMAorI2RlZmluZSBQQUxFVFRFX1JFRF9NQVNLICAgICAgICBSRUdfR0VOTUFTSygyMywg
MTYpCisjZGVmaW5lIFBBTEVUVEVfR1JFRU5fTUFTSyAgICAgIFJFR19HRU5NQVNLKDE1LCA4KQor
I2RlZmluZSBQQUxFVFRFX0JMVUVfTUFTSyAgICAgICBSRUdfR0VOTUFTSyg3LCAwKQogI2RlZmlu
ZSBQQUxFVFRFKHBpcGUsIGkpCV9NTUlPKERJU1BMQVlfTU1JT19CQVNFKGRldl9wcml2KSArIFwK
IAkJCQkgICAgICBfUElDSygocGlwZSksIF9QQUxFVFRFX0EsCQlcCiAJCQkJCSAgICBfUEFMRVRU
RV9CLCBfQ0hWX1BBTEVUVEVfQykgKyBcCi0tIAoxLjkuMQoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
