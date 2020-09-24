Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C67C02779AF
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Sep 2020 21:48:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 383EB6EB59;
	Thu, 24 Sep 2020 19:48:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 724466EB59
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Sep 2020 19:48:14 +0000 (UTC)
IronPort-SDR: ZCaSKEWWVYCskTwXhe2YPMkhxRUf2r5Jz7Fhu7gLlWHxdK9ibAgJ6G+dp2QZQVAJAMY4ffTdup
 z8aibfYNGSLw==
X-IronPort-AV: E=McAfee;i="6000,8403,9754"; a="141336761"
X-IronPort-AV: E=Sophos;i="5.77,299,1596524400"; d="scan'208";a="141336761"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2020 12:48:13 -0700
IronPort-SDR: GBq1u4969bRBP6gTTFl32mUngtu4L3SC2EHWY9VnGThtIl+eYI+cHCsOivnfHu8ew7e/WU1elB
 MfiBbtJRSs/g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,299,1596524400"; d="scan'208";a="310498991"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga006.jf.intel.com with SMTP; 24 Sep 2020 12:48:11 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 24 Sep 2020 22:48:10 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 24 Sep 2020 22:48:10 +0300
Message-Id: <20200924194810.10293-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Implement display WA #1142:kbl, cfl,
 cml
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCklt
cGxlbWVudCBkaXNwbGF5IHcvYSAjMTE0Mi4gVGhpcyBzdXBwb3NlZGx5IGZpeGVzIHNvbWUgdW5k
ZXJydW5zCndpdGggRkJDK1ZUZC4gQnNwZWMgc2F5cyB3ZSBzaG91bGQgdXNlIHRoZSBzYW1lIHBy
b2dyYW1taW5nIHJlZ2FyZGxlc3MKb2YgY2lyY3Vtc3RhbmNlcy4gQXBwYXJlbnRseSB3ZSBzaG91
bGQgZmxpcCB0aGUgbWFnaWMgYml0cyBiZWZvcmUKdHVybmluZyBvbiBhbnkgcGxhbmVzIHNvIGxl
dCdzIHB1dCB0aGlzIGludG8gdGhlIGVhcmx5IHcvYXMuCgpDYzogTGVlIFNoYXduIEMgPHNoYXdu
LmMubGVlQGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5z
eXJqYWxhQGxpbnV4LmludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2Rpc3BsYXkuYyB8IDkgKysrKysrKysrCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X3JlZy5oICAgICAgICAgICAgICB8IDMgKysrCiAyIGZpbGVzIGNoYW5nZWQsIDEyIGluc2VydGlv
bnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rp
c3BsYXkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCmlu
ZGV4IDVhOWQ5MzNlNDI1YS4uOWQ2NDE4N2NmZDU2IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwpAQCAtMTg2NzcsNiArMTg2NzcsMTUgQEAgc3RhdGlj
IHZvaWQgaW50ZWxfZWFybHlfZGlzcGxheV93YXMoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRl
dl9wcml2KQogCQlpbnRlbF9kZV93cml0ZShkZXZfcHJpdiwgQ0hJQ0tFTl9QQVIxXzEsCiAJCQkg
ICAgICAgaW50ZWxfZGVfcmVhZChkZXZfcHJpdiwgQ0hJQ0tFTl9QQVIxXzEpIHwgRk9SQ0VfQVJC
X0lETEVfUExBTkVTKTsKIAl9CisKKwlpZiAoSVNfS0FCWUxBS0UoZGV2X3ByaXYpIHx8IElTX0NP
RkZFRUxBS0UoZGV2X3ByaXYpIHx8IElTX0NPTUVUTEFLRShkZXZfcHJpdikpIHsKKwkJLyogRGlz
cGxheSBXQSAjMTE0MjprYmwsY2ZsLGNtbCAqLworCQlpbnRlbF9kZV9ybXcoZGV2X3ByaXYsIENI
SUNLRU5fUEFSMV8xLAorCQkJICAgICBLQkxfQVJCX0ZJTExfU1BBUkVfMjIsIEtCTF9BUkJfRklM
TF9TUEFSRV8yMik7CisJCWludGVsX2RlX3JtdyhkZXZfcHJpdiwgQ0hJQ0tFTl9NSVNDXzIsCisJ
CQkgICAgIEtCTF9BUkJfRklMTF9TUEFSRV8xMyB8IEtCTF9BUkJfRklMTF9TUEFSRV8xNCwKKwkJ
CSAgICAgS0JMX0FSQl9GSUxMX1NQQVJFXzE0KTsKKwl9CiB9CiAKIHN0YXRpYyB2b2lkIGlieF9z
YW5pdGl6ZV9wY2hfaGRtaV9wb3J0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwK
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X3JlZy5oCmluZGV4IGQ4MDVkNGRhNjE4MS4uM2Y5N2NjMGZjYmYxIDEw
MDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCisrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKQEAgLTc4NjUsNiArNzg2NSw3IEBAIGVudW0gewogIyBk
ZWZpbmUgQ0hJQ0tFTjNfREdNR19ET05FX0ZJWF9ESVNBQkxFCQkoMSA8PCAyKQogCiAjZGVmaW5l
IENISUNLRU5fUEFSMV8xCQkJX01NSU8oMHg0MjA4MCkKKyNkZWZpbmUgIEtCTF9BUkJfRklMTF9T
UEFSRV8yMgkJUkVHX0JJVCgyMikKICNkZWZpbmUgIERJU19SQU1fQllQQVNTX1BTUjJfTUFOX1RS
QUNLCSgxIDw8IDE2KQogI2RlZmluZSAgU0tMX0RFX0NPTVBSRVNTRURfSEFTSF9NT0RFCSgxIDw8
IDE1KQogI2RlZmluZSAgRFBBX01BU0tfVkJMQU5LX1NSRAkJKDEgPDwgMTUpCkBAIC03ODc3LDYg
Kzc4NzgsOCBAQCBlbnVtIHsKIAogI2RlZmluZSBDSElDS0VOX01JU0NfMgkJX01NSU8oMHg0MjA4
NCkKICNkZWZpbmUgIENOTF9DT01QX1BXUl9ET1dOCSgxIDw8IDIzKQorI2RlZmluZSAgS0JMX0FS
Ql9GSUxMX1NQQVJFXzE0CVJFR19CSVQoMTQpCisjZGVmaW5lICBLQkxfQVJCX0ZJTExfU1BBUkVf
MTMJUkVHX0JJVCgxMykKICNkZWZpbmUgIEdMS19DTDJfUFdSX0RPV04JKDEgPDwgMTIpCiAjZGVm
aW5lICBHTEtfQ0wxX1BXUl9ET1dOCSgxIDw8IDExKQogI2RlZmluZSAgR0xLX0NMMF9QV1JfRE9X
TgkoMSA8PCAxMCkKLS0gCjIuMjYuMgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4Cg==
