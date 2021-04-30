Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 150BB36FDD4
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Apr 2021 17:34:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D8BEA6F54F;
	Fri, 30 Apr 2021 15:34:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EDBCE6F54F
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Apr 2021 15:34:52 +0000 (UTC)
IronPort-SDR: iAsDUaIprl5URNFy7ZsNqp99YPBz0+Bh62Mk/2o8hGzfR//wypUS1EdzFpoweskUNFNTT8/0SN
 UuX4e964Unnw==
X-IronPort-AV: E=McAfee;i="6200,9189,9970"; a="258581746"
X-IronPort-AV: E=Sophos;i="5.82,263,1613462400"; d="scan'208";a="258581746"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2021 08:34:52 -0700
IronPort-SDR: 2AbXwUUDQEsum1KE6iBgVL09v46IMU9duIPVzMlQEV9by50vTCJ5HRkZFLC0aNYb3gfTxip8oU
 5mPGCXTt//Ug==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,263,1613462400"; d="scan'208";a="431486608"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga008.jf.intel.com with SMTP; 30 Apr 2021 08:34:50 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 30 Apr 2021 18:34:50 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 30 Apr 2021 18:34:41 +0300
Message-Id: <20210430153444.29270-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.3
In-Reply-To: <20210430153444.29270-1-ville.syrjala@linux.intel.com>
References: <20210430153444.29270-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/5] drm/i915: Use intel_de_rmw() in bdw cdclk
 programming
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClJl
cGxhY2UgdGhlIGhhbmQgcm9sbGVkIHJtdyBzZXF1ZW5jZXMgd2l0aCBpbnRlbF9kZV9ybXcoKS4K
ClNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRl
bC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jZGNsay5jIHwg
MTcgKysrKysrLS0tLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKyksIDEx
IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfY2RjbGsuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY2RjbGsu
YwppbmRleCBkNTMxNGY5YWNmODMuLjFlZjhkYTJiZjg1NiAxMDA2NDQKLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jZGNsay5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfY2RjbGsuYwpAQCAtNzQ1LDcgKzc0NSw2IEBAIHN0YXRpYyB2b2lk
IGJkd19zZXRfY2RjbGsoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAogCQkJICBl
bnVtIHBpcGUgcGlwZSkKIHsKIAlpbnQgY2RjbGsgPSBjZGNsa19jb25maWctPmNkY2xrOwotCXUz
MiB2YWw7CiAJaW50IHJldDsKIAogCWlmIChkcm1fV0FSTigmZGV2X3ByaXYtPmRybSwKQEAgLTc2
NSw5ICs3NjQsOCBAQCBzdGF0aWMgdm9pZCBiZHdfc2V0X2NkY2xrKHN0cnVjdCBkcm1faTkxNV9w
cml2YXRlICpkZXZfcHJpdiwKIAkJcmV0dXJuOwogCX0KIAotCXZhbCA9IGludGVsX2RlX3JlYWQo
ZGV2X3ByaXYsIExDUExMX0NUTCk7Ci0JdmFsIHw9IExDUExMX0NEX1NPVVJDRV9GQ0xLOwotCWlu
dGVsX2RlX3dyaXRlKGRldl9wcml2LCBMQ1BMTF9DVEwsIHZhbCk7CisJaW50ZWxfZGVfcm13KGRl
dl9wcml2LCBMQ1BMTF9DVEwsCisJCSAgICAgMCwgTENQTExfQ0RfU09VUkNFX0ZDTEspOwogCiAJ
LyoKIAkgKiBBY2NvcmRpbmcgdG8gdGhlIHNwZWMsIGl0IHNob3VsZCBiZSBlbm91Z2ggdG8gcG9s
bCBmb3IgdGhpcyAxIHVzLgpAQCAtNzc3LDE0ICs3NzUsMTEgQEAgc3RhdGljIHZvaWQgYmR3X3Nl
dF9jZGNsayhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCiAJCQlMQ1BMTF9DRF9T
T1VSQ0VfRkNMS19ET05FLCAxMDApKQogCQlkcm1fZXJyKCZkZXZfcHJpdi0+ZHJtLCAiU3dpdGNo
aW5nIHRvIEZDTEsgZmFpbGVkXG4iKTsKIAotCXZhbCA9IGludGVsX2RlX3JlYWQoZGV2X3ByaXYs
IExDUExMX0NUTCk7Ci0JdmFsICY9IH5MQ1BMTF9DTEtfRlJFUV9NQVNLOwotCXZhbCB8PSBiZHdf
Y2RjbGtfZnJlcV9zZWwoY2RjbGspOwotCWludGVsX2RlX3dyaXRlKGRldl9wcml2LCBMQ1BMTF9D
VEwsIHZhbCk7CisJaW50ZWxfZGVfcm13KGRldl9wcml2LCBMQ1BMTF9DVEwsCisJCSAgICAgTENQ
TExfQ0xLX0ZSRVFfTUFTSywgYmR3X2NkY2xrX2ZyZXFfc2VsKGNkY2xrKSk7CiAKLQl2YWwgPSBp
bnRlbF9kZV9yZWFkKGRldl9wcml2LCBMQ1BMTF9DVEwpOwotCXZhbCAmPSB+TENQTExfQ0RfU09V
UkNFX0ZDTEs7Ci0JaW50ZWxfZGVfd3JpdGUoZGV2X3ByaXYsIExDUExMX0NUTCwgdmFsKTsKKwlp
bnRlbF9kZV9ybXcoZGV2X3ByaXYsIExDUExMX0NUTCwKKwkJICAgICBMQ1BMTF9DRF9TT1VSQ0Vf
RkNMSywgMCk7CiAKIAlpZiAod2FpdF9mb3JfdXMoKGludGVsX2RlX3JlYWQoZGV2X3ByaXYsIExD
UExMX0NUTCkgJgogCQkJIExDUExMX0NEX1NPVVJDRV9GQ0xLX0RPTkUpID09IDAsIDEpKQotLSAK
Mi4yNi4zCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
