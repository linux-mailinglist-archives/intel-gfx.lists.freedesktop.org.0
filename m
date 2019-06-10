Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D3313B453
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Jun 2019 14:06:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AFB9288FDA;
	Mon, 10 Jun 2019 12:06:12 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0EB6888FDA
 for <Intel-gfx@lists.freedesktop.org>; Mon, 10 Jun 2019 12:06:11 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Jun 2019 05:06:10 -0700
X-ExtLoop1: 1
Received: from jwwillia-mobl1.amr.corp.intel.com (HELO localhost.localdomain)
 ([10.252.8.43])
 by fmsmga001.fm.intel.com with ESMTP; 10 Jun 2019 05:06:09 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Mon, 10 Jun 2019 13:06:03 +0100
Message-Id: <20190610120608.15477-1-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 1/6] drm/i915: Eliminate unused mmio accessors
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

RnJvbTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KCk9uIHRoZSBw
YXRoIG9mIHJlbW92aW5nIG1taW8gYWNjZXNzb3JzIHdpdGggaW1wbGljaXQgZGV2X3ByaXYsIGVh
c3kgZmlyc3QKc3RlcCBpcyB0byByZW1vdmUgYWxsIHN1Y2ggdW51c2VkIG1hY3Jvcy4KClNpZ25l
ZC1vZmYtYnk6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+ClN1Z2dl
c3RlZC1ieTogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4KUmV2aWV3ZWQtYnk6
IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9kcnYuaCB8IDQgLS0tLQogMSBmaWxlIGNoYW5nZWQsIDQgZGVsZXRpb25zKC0p
CgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaCBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgKaW5kZXggOTE5MjA4YjMxODU5Li4yMGViMzdiNzYwYzQg
MTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgKKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaApAQCAtMjg0MiwxMiArMjg0Miw5IEBAIGV4dGVybiB2
b2lkIGludGVsX2Rpc3BsYXlfcHJpbnRfZXJyb3Jfc3RhdGUoc3RydWN0IGRybV9pOTE1X2Vycm9y
X3N0YXRlX2J1ZiAqZSwKIAlpbnRlbF91bmNvcmVfIyNvcF9fKCYoZGV2X3ByaXZfXyktPnVuY29y
ZSwgX19WQV9BUkdTX18pCiAKICNkZWZpbmUgSTkxNV9SRUFEOChyZWdfXykJICBfX0k5MTVfUkVH
X09QKHJlYWQ4LCBkZXZfcHJpdiwgKHJlZ19fKSkKLSNkZWZpbmUgSTkxNV9XUklURTgocmVnX18s
IHZhbF9fKSBfX0k5MTVfUkVHX09QKHdyaXRlOCwgZGV2X3ByaXYsIChyZWdfXyksICh2YWxfXykp
CiAKICNkZWZpbmUgSTkxNV9SRUFEMTYocmVnX18pCSAgIF9fSTkxNV9SRUdfT1AocmVhZDE2LCBk
ZXZfcHJpdiwgKHJlZ19fKSkKICNkZWZpbmUgSTkxNV9XUklURTE2KHJlZ19fLCB2YWxfXykgX19J
OTE1X1JFR19PUCh3cml0ZTE2LCBkZXZfcHJpdiwgKHJlZ19fKSwgKHZhbF9fKSkKLSNkZWZpbmUg
STkxNV9SRUFEMTZfTk9UUkFDRShyZWdfXykJICAgX19JOTE1X1JFR19PUChyZWFkMTZfbm90cmFj
ZSwgZGV2X3ByaXYsIChyZWdfXykpCi0jZGVmaW5lIEk5MTVfV1JJVEUxNl9OT1RSQUNFKHJlZ19f
LCB2YWxfXykgX19JOTE1X1JFR19PUCh3cml0ZTE2X25vdHJhY2UsIGRldl9wcml2LCAocmVnX18p
LCAodmFsX18pKQogCiAjZGVmaW5lIEk5MTVfUkVBRChyZWdfXykJIF9fSTkxNV9SRUdfT1AocmVh
ZCwgZGV2X3ByaXYsIChyZWdfXykpCiAjZGVmaW5lIEk5MTVfV1JJVEUocmVnX18sIHZhbF9fKSBf
X0k5MTVfUkVHX09QKHdyaXRlLCBkZXZfcHJpdiwgKHJlZ19fKSwgKHZhbF9fKSkKQEAgLTI5MDMs
NyArMjkwMCw2IEBAIGV4dGVybiB2b2lkIGludGVsX2Rpc3BsYXlfcHJpbnRfZXJyb3Jfc3RhdGUo
c3RydWN0IGRybV9pOTE1X2Vycm9yX3N0YXRlX2J1ZiAqZSwKICAqLwogI2RlZmluZSBJOTE1X1JF
QURfRlcocmVnX18pIF9fSTkxNV9SRUdfT1AocmVhZF9mdywgZGV2X3ByaXYsIChyZWdfXykpCiAj
ZGVmaW5lIEk5MTVfV1JJVEVfRlcocmVnX18sIHZhbF9fKSBfX0k5MTVfUkVHX09QKHdyaXRlX2Z3
LCBkZXZfcHJpdiwgKHJlZ19fKSwgKHZhbF9fKSkKLSNkZWZpbmUgSTkxNV9XUklURTY0X0ZXKHJl
Z19fLCB2YWxfXykgX19JOTE1X1JFR19PUCh3cml0ZTY0X2Z3LCBkZXZfcHJpdiwgKHJlZ19fKSwg
KHZhbF9fKSkKICNkZWZpbmUgUE9TVElOR19SRUFEX0ZXKHJlZ19fKSBfX0k5MTVfUkVHX09QKHBv
c3RpbmdfcmVhZF9mdywgZGV2X3ByaXYsIChyZWdfXykpCiAKIC8qICJCcm9hZGNhc3QgUkdCIiBw
cm9wZXJ0eSAqLwotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZng=
