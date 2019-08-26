Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 18EEF9C981
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Aug 2019 08:37:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 24DBA6E188;
	Mon, 26 Aug 2019 06:36:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AB1526E185
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Aug 2019 06:36:54 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Aug 2019 23:36:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,431,1559545200"; d="scan'208";a="174112024"
Received: from genxfsim-shark-bay-client-platform.iind.intel.com
 ([10.223.34.144])
 by orsmga008.jf.intel.com with ESMTP; 25 Aug 2019 23:36:51 -0700
From: Swati Sharma <swati2.sharma@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 26 Aug 2019 11:56:09 +0530
Message-Id: <1566800772-18412-8-git-send-email-swati2.sharma@intel.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1566800772-18412-1-git-send-email-swati2.sharma@intel.com>
References: <1566800772-18412-1-git-send-email-swati2.sharma@intel.com>
Subject: [Intel-gfx] [v8][PATCH 07/10] drm/i915/display: Extract
 chv_read_luts()
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

Rm9yIGNoZXJyeXZpZXcsIGhhdmUgaHcgcmVhZCBvdXQgdG8gY3JlYXRlIGh3IGJsb2Igb2YgZ2Ft
bWEKbHV0IHZhbHVlcy4KClNpZ25lZC1vZmYtYnk6IFN3YXRpIFNoYXJtYSA8c3dhdGkyLnNoYXJt
YUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jb2xv
ci5jIHwgMzkgKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrCiBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X3JlZy5oICAgICAgICAgICAgfCAgMyArKysKIDIgZmlsZXMgY2hhbmdlZCwgNDIg
aW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfY29sb3IuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY29sb3Iu
YwppbmRleCBjNzdiYmVkLi4xZWMyZmEwIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2NvbG9yLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9jb2xvci5jCkBAIC0xNjA5LDYgKzE2MDksNDQgQEAgc3RhdGljIHZvaWQgaTk2NV9y
ZWFkX2x1dHMoc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpCiAJCWNydGNfc3Rh
dGUtPmJhc2UuZ2FtbWFfbHV0ID0gaTk2NV9yZWFkX2dhbW1hX2x1dF8xMHA2KGNydGNfc3RhdGUp
OwogfQogCitzdGF0aWMgc3RydWN0IGRybV9wcm9wZXJ0eV9ibG9iICoKK2Nodl9yZWFkX2NnbV9n
YW1tYV9sdXQoc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpCit7CisJc3RydWN0
IGludGVsX2NydGMgKmNydGMgPSB0b19pbnRlbF9jcnRjKGNydGNfc3RhdGUtPmJhc2UuY3J0Yyk7
CisJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShjcnRjLT5iYXNl
LmRldik7CisJdTMyIGksIHZhbCwgbHV0X3NpemUgPSBJTlRFTF9JTkZPKGRldl9wcml2KS0+Y29s
b3IuZ2FtbWFfbHV0X3NpemU7CisJZW51bSBwaXBlIHBpcGUgPSBjcnRjLT5waXBlOworCXN0cnVj
dCBkcm1fcHJvcGVydHlfYmxvYiAqYmxvYjsKKwlzdHJ1Y3QgZHJtX2NvbG9yX2x1dCAqYmxvYl9k
YXRhOworCisJYmxvYiA9IGRybV9wcm9wZXJ0eV9jcmVhdGVfYmxvYigmZGV2X3ByaXYtPmRybSwK
KwkJCQkJc2l6ZW9mKHN0cnVjdCBkcm1fY29sb3JfbHV0KSAqIGx1dF9zaXplLAorCQkJCQlOVUxM
KTsKKwlpZiAoSVNfRVJSKGJsb2IpKQorCQlyZXR1cm4gTlVMTDsKKworCWJsb2JfZGF0YSA9IGJs
b2ItPmRhdGE7CisKKwlmb3IgKGkgPSAwOyBpIDwgbHV0X3NpemU7IGkrKykgeworCQl2YWwgPSBJ
OTE1X1JFQUQoQ0dNX1BJUEVfR0FNTUEocGlwZSwgaSwgMCkpOworCQlibG9iX2RhdGFbaV0uZ3Jl
ZW4gPSBpbnRlbF9jb2xvcl9sdXRfcGFjayhSRUdfRklFTERfR0VUKENHTV9QSVBFX0dBTU1BX0dS
RUVOX01BU0ssIHZhbCksIDEwKTsKKwkJYmxvYl9kYXRhW2ldLmJsdWUgPSBpbnRlbF9jb2xvcl9s
dXRfcGFjayhSRUdfRklFTERfR0VUKENHTV9QSVBFX0dBTU1BX0JMVUVfTUFTSywgdmFsKSwgMTAp
OworCisJCXZhbCA9IEk5MTVfUkVBRChDR01fUElQRV9HQU1NQShwaXBlLCBpLCAxKSk7CisJCWJs
b2JfZGF0YVtpXS5yZWQgPSBpbnRlbF9jb2xvcl9sdXRfcGFjayhSRUdfRklFTERfR0VUKENHTV9Q
SVBFX0dBTU1BX1JFRF9NQVNLLCB2YWwpLCAxMCk7CisJfQorCisJcmV0dXJuIGJsb2I7Cit9CisK
K3N0YXRpYyB2b2lkIGNodl9yZWFkX2x1dHMoc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNf
c3RhdGUpCit7CisJaWYgKGNydGNfc3RhdGUtPmdhbW1hX21vZGUgPT0gR0FNTUFfTU9ERV9NT0RF
XzhCSVQpCisJCWNydGNfc3RhdGUtPmJhc2UuZ2FtbWFfbHV0ID0gaTl4eF9yZWFkX2x1dF84KGNy
dGNfc3RhdGUpOworCWVsc2UKKwkJY3J0Y19zdGF0ZS0+YmFzZS5nYW1tYV9sdXQgPSBjaHZfcmVh
ZF9jZ21fZ2FtbWFfbHV0KGNydGNfc3RhdGUpOworfQorCiB2b2lkIGludGVsX2NvbG9yX2luaXQo
c3RydWN0IGludGVsX2NydGMgKmNydGMpCiB7CiAJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRl
dl9wcml2ID0gdG9faTkxNShjcnRjLT5iYXNlLmRldik7CkBAIC0xNjIxLDYgKzE2NTksNyBAQCB2
b2lkIGludGVsX2NvbG9yX2luaXQoc3RydWN0IGludGVsX2NydGMgKmNydGMpCiAJCQlkZXZfcHJp
di0+ZGlzcGxheS5jb2xvcl9jaGVjayA9IGNodl9jb2xvcl9jaGVjazsKIAkJCWRldl9wcml2LT5k
aXNwbGF5LmNvbG9yX2NvbW1pdCA9IGk5eHhfY29sb3JfY29tbWl0OwogCQkJZGV2X3ByaXYtPmRp
c3BsYXkubG9hZF9sdXRzID0gY2h2X2xvYWRfbHV0czsKKwkJCWRldl9wcml2LT5kaXNwbGF5LnJl
YWRfbHV0cyA9IGNodl9yZWFkX2x1dHM7CiAJCX0gZWxzZSBpZiAoSU5URUxfR0VOKGRldl9wcml2
KSA+PSA0KSB7CiAJCQlkZXZfcHJpdi0+ZGlzcGxheS5jb2xvcl9jaGVjayA9IGk5eHhfY29sb3Jf
Y2hlY2s7CiAJCQlkZXZfcHJpdi0+ZGlzcGxheS5jb2xvcl9jb21taXQgPSBpOXh4X2NvbG9yX2Nv
bW1pdDsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCmluZGV4IGIzMGIwYzZiLi5lNzZlNzc5IDEwMDY0
NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCisrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfcmVnLmgKQEAgLTEwMzA3LDYgKzEwMzA3LDkgQEAgZW51bSBza2xfcG93
ZXJfZ2F0ZSB7CiAjZGVmaW5lICAgQ0dNX1BJUEVfTU9ERV9HQU1NQQkoMSA8PCAyKQogI2RlZmlu
ZSAgIENHTV9QSVBFX01PREVfQ1NDCSgxIDw8IDEpCiAjZGVmaW5lICAgQ0dNX1BJUEVfTU9ERV9E
RUdBTU1BCSgxIDw8IDApCisjZGVmaW5lICAgQ0dNX1BJUEVfR0FNTUFfUkVEX01BU0sgICBSRUdf
R0VOTUFTSyg5LCAwKQorI2RlZmluZSAgIENHTV9QSVBFX0dBTU1BX0dSRUVOX01BU0sgUkVHX0dF
Tk1BU0soMjUsIDE2KQorI2RlZmluZSAgIENHTV9QSVBFX0dBTU1BX0JMVUVfTUFTSyAgUkVHX0dF
Tk1BU0soOSwgMCkKIAogI2RlZmluZSBfQ0dNX1BJUEVfQl9DU0NfQ09FRkYwMQkoVkxWX0RJU1BM
QVlfQkFTRSArIDB4Njk5MDApCiAjZGVmaW5lIF9DR01fUElQRV9CX0NTQ19DT0VGRjIzCShWTFZf
RElTUExBWV9CQVNFICsgMHg2OTkwNCkKLS0gCjEuOS4xCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZng=
