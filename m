Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 39D59E3AE5
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Oct 2019 20:24:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5CCC26E5D5;
	Thu, 24 Oct 2019 18:24:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 965DA6E5D5
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Oct 2019 18:24:41 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Oct 2019 11:24:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,225,1569308400"; d="scan'208";a="373305045"
Received: from helsinki.fi.intel.com ([10.237.66.157])
 by orsmga005.jf.intel.com with ESMTP; 24 Oct 2019 11:24:39 -0700
From: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 24 Oct 2019 21:24:22 +0300
Message-Id: <20191024182423.958952-5-gwan-gyeong.mun@intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191024182423.958952-1-gwan-gyeong.mun@intel.com>
References: <20191024182423.958952-1-gwan-gyeong.mun@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 4/5] drm/i915/dp: Stop sending of HDR Metadata
 Infoframe when it is not needed
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

SXQgcHJldmVudHMgc2VuZGluZyBIRFIgTWV0YWRhdGEgSW5mb2ZyYW1lIFNEUCBwYWNrZXQgdG8g
YSByZWNlaXZlciB3aGVuCkhEUiBNZXRhZGF0YSBJbmZvZnJhbWUgU0RQIGlzIG5vdCBuZWVkZWQu
CgpTaWduZWQtb2ZmLWJ5OiBHd2FuLWd5ZW9uZyBNdW4gPGd3YW4tZ3llb25nLm11bkBpbnRlbC5j
b20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jIHwgMTAgKysr
KysrKysrLQogMSBmaWxlIGNoYW5nZWQsIDkgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQoK
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYwppbmRleCBlZDY4NDU0ODViNDEu
LjcyOWYxZThjYjQ5YSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kcC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYwpA
QCAtNDc1Myw4ICs0NzUzLDE2IEBAIHZvaWQgaW50ZWxfZHBfaGRyX21ldGFkYXRhX2VuYWJsZShz
dHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLAogCQkJCSAgY29uc3Qgc3RydWN0IGludGVsX2NydGNf
c3RhdGUgKmNydGNfc3RhdGUsCiAJCQkJICBjb25zdCBzdHJ1Y3QgZHJtX2Nvbm5lY3Rvcl9zdGF0
ZSAqY29ubl9zdGF0ZSkKIHsKLQlpZiAoIWNvbm5fc3RhdGUtPmhkcl9vdXRwdXRfbWV0YWRhdGEp
CisJaWYgKCFjb25uX3N0YXRlLT5oZHJfb3V0cHV0X21ldGFkYXRhKSB7CisJCXN0cnVjdCBpbnRl
bF9kaWdpdGFsX3BvcnQgKmludGVsX2RpZ19wb3J0ID0gZHBfdG9fZGlnX3BvcnQoaW50ZWxfZHAp
OworCQlzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciA9ICZpbnRlbF9kaWdfcG9ydC0+YmFz
ZTsKKworCQkgICAgaWYgKGludGVsX2luZm9mcmFtZV9lbmFibGVkKGVuY29kZXIsIGNydGNfc3Rh
dGUsCisJCQkJCQlIRE1JX1BBQ0tFVF9UWVBFX0dBTVVUX01FVEFEQVRBKSkKKwkJCWludGVsX2Vu
YWJsZV9pbmZvZnJhbWUoZW5jb2RlciwgZmFsc2UsIGNydGNfc3RhdGUsCisJCQkJCSAgICAgICBI
RE1JX1BBQ0tFVF9UWVBFX0dBTVVUX01FVEFEQVRBKTsKIAkJcmV0dXJuOworCX0KIAogCWludGVs
X2RwX3NldHVwX2hkcl9tZXRhZGF0YV9pbmZvZnJhbWVfc2RwKGludGVsX2RwLAogCQkJCQkJICBj
cnRjX3N0YXRlLAotLSAKMi4yMy4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZng=
