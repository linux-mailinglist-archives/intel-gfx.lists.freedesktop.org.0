Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E62612F4C49
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Jan 2021 14:37:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 19E9A6E454;
	Wed, 13 Jan 2021 13:37:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 795926E454
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Jan 2021 13:37:11 +0000 (UTC)
IronPort-SDR: eBJe0ebzJ7lRckiZkrodJEuADrKFr34nVbjx5IHDXJagi32jmaIplbVl72xyf2LtqSE3AvVRd/
 POqZGKkfQzZQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9862"; a="165289615"
X-IronPort-AV: E=Sophos;i="5.79,344,1602572400"; d="scan'208";a="165289615"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2021 05:37:10 -0800
IronPort-SDR: Meoc2gokIyXTsULf1jJaUU7Z/cAN4qMZEBHRRXUdyRXv5pOaShtUfFU7/HYs1K/v1I9BoRsZR0
 XlgS6k6WPGWw==
X-IronPort-AV: E=Sophos;i="5.79,344,1602572400"; d="scan'208";a="381855571"
Received: from reparras-mobl1.amr.corp.intel.com (HELO
 josouza-mobl2.intel.com) ([10.255.253.133])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2021 05:37:07 -0800
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 13 Jan 2021 05:37:59 -0800
Message-Id: <20210113133759.72055-1-jose.souza@intel.com>
X-Mailer: git-send-email 2.30.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/dg1: Apply WA 1409120013 and
 14011059788
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

REcxIGlzIG1pc3NpbmcgdGhvc2UgdHdvIFdBIHNvIGluc3RlYWQgb2YgY29weSBhbmQgcGFzdGUg
aXQgdG8gdGhlIERHMQpmdW5jdGlvbiwgaGVyZSBjYWxsaW5nIHRoZSBmdW5jdGlvbiB0aGF0IGlt
cGxlbWVudHMgaXQuCgpXaGlsZSBhdCBpdCBhbHNvIHJlbmFtaW5nIHRnbF9pbml0X2Nsb2NrX2dh
dGluZyB0bwpnZW4xMmxwX2luaXRfY2xvY2tfZ2F0aW5nIGFzIGl0IGlzIGFsc28gdXNlZCBieSBE
RzEsIFJLTCBhbmQgQURMLVMuCgpDYzogTWF0dCBSb3BlciA8bWF0dGhldy5kLnJvcGVyQGludGVs
LmNvbT4KU2lnbmVkLW9mZi1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBp
bnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYyB8IDEyICsrKysr
KystLS0tLQogMSBmaWxlIGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKSwgNSBkZWxldGlvbnMoLSkK
CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaW50ZWxfcG0uYwppbmRleCBiYmM3M2RmN2Y3NTMuLjk5MmZjZThiOGQxMyAx
MDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYworKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jCkBAIC03MTAzLDI0ICs3MTAzLDI2IEBAIHN0YXRpYyB2
b2lkIGljbF9pbml0X2Nsb2NrX2dhdGluZyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3By
aXYpCiAJCQkgMCwgQ05MX0RFTEFZX1BNUlNQKTsKIH0KIAotc3RhdGljIHZvaWQgdGdsX2luaXRf
Y2xvY2tfZ2F0aW5nKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKK3N0YXRpYyB2
b2lkIGdlbjEybHBfaW5pdF9jbG9ja19nYXRpbmcoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRl
dl9wcml2KQogewotCS8qIFdhXzE0MDkxMjAwMTM6dGdsICovCisJLyogV2FfMTQwOTEyMDAxMzp0
Z2wscmtsLGFkbF9zLGRnMSAqLwogCWludGVsX3VuY29yZV93cml0ZSgmZGV2X3ByaXYtPnVuY29y
ZSwgSUxLX0RQRkNfQ0hJQ0tFTiwKLQkJICAgSUxLX0RQRkNfQ0hJQ0tFTl9DT01QX0RVTU1ZX1BJ
WEVMKTsKKwkJCSAgIElMS19EUEZDX0NISUNLRU5fQ09NUF9EVU1NWV9QSVhFTCk7CiAKIAkvKiBX
YV8xNDA5ODI1Mzc2OnRnbCAocHJlLXByb2QpKi8KIAlpZiAoSVNfVEdMX0RJU1BfUkVWSUQoZGV2
X3ByaXYsIFRHTF9SRVZJRF9BMCwgVEdMX1JFVklEX0IxKSkKIAkJaW50ZWxfdW5jb3JlX3dyaXRl
KCZkZXZfcHJpdi0+dW5jb3JlLCBHRU45X0NMS0dBVEVfRElTXzMsIGludGVsX3VuY29yZV9yZWFk
KCZkZXZfcHJpdi0+dW5jb3JlLCBHRU45X0NMS0dBVEVfRElTXzMpIHwKIAkJCSAgIFRHTF9WUkhf
R0FUSU5HX0RJUyk7CiAKLQkvKiBXYV8xNDAxMTA1OTc4ODp0Z2wgKi8KKwkvKiBXYV8xNDAxMTA1
OTc4ODp0Z2wscmtsLGFkbF9zLGRnMSAqLwogCWludGVsX3VuY29yZV9ybXcoJmRldl9wcml2LT51
bmNvcmUsIEdFTjEwX0RGUl9SQVRJT19FTl9BTkRfQ0hJQ0tFTiwKIAkJCSAwLCBERlJfRElTQUJM
RSk7CiB9CiAKIHN0YXRpYyB2b2lkIGRnMV9pbml0X2Nsb2NrX2dhdGluZyhzdHJ1Y3QgZHJtX2k5
MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiB7CisJZ2VuMTJscF9pbml0X2Nsb2NrX2dhdGluZyhkZXZf
cHJpdik7CisKIAkvKiBXYV8xNDA5ODM2Njg2OmRnMVthMF0gKi8KIAlpZiAoSVNfREcxX1JFVklE
KGRldl9wcml2LCBERzFfUkVWSURfQTAsIERHMV9SRVZJRF9BMCkpCiAJCWludGVsX3VuY29yZV93
cml0ZSgmZGV2X3ByaXYtPnVuY29yZSwgR0VOOV9DTEtHQVRFX0RJU18zLCBpbnRlbF91bmNvcmVf
cmVhZCgmZGV2X3ByaXYtPnVuY29yZSwgR0VOOV9DTEtHQVRFX0RJU18zKSB8CkBAIC03NTgzLDcg
Kzc1ODUsNyBAQCB2b2lkIGludGVsX2luaXRfY2xvY2tfZ2F0aW5nX2hvb2tzKHN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlICpkZXZfcHJpdikKIAlpZiAoSVNfREcxKGRldl9wcml2KSkKIAkJZGV2X3By
aXYtPmRpc3BsYXkuaW5pdF9jbG9ja19nYXRpbmcgPSBkZzFfaW5pdF9jbG9ja19nYXRpbmc7CiAJ
ZWxzZSBpZiAoSVNfR0VOKGRldl9wcml2LCAxMikpCi0JCWRldl9wcml2LT5kaXNwbGF5LmluaXRf
Y2xvY2tfZ2F0aW5nID0gdGdsX2luaXRfY2xvY2tfZ2F0aW5nOworCQlkZXZfcHJpdi0+ZGlzcGxh
eS5pbml0X2Nsb2NrX2dhdGluZyA9IGdlbjEybHBfaW5pdF9jbG9ja19nYXRpbmc7CiAJZWxzZSBp
ZiAoSVNfR0VOKGRldl9wcml2LCAxMSkpCiAJCWRldl9wcml2LT5kaXNwbGF5LmluaXRfY2xvY2tf
Z2F0aW5nID0gaWNsX2luaXRfY2xvY2tfZ2F0aW5nOwogCWVsc2UgaWYgKElTX0NBTk5PTkxBS0Uo
ZGV2X3ByaXYpKQotLSAKMi4zMC4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZngK
