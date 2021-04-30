Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BACF36FDD7
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Apr 2021 17:35:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A521F6F555;
	Fri, 30 Apr 2021 15:35:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DBAD26F550
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Apr 2021 15:34:59 +0000 (UTC)
IronPort-SDR: UdOUlvhk3fUafYMpO+8sPHoPbqvQxc4LCpxDSuwMjG7v3RK6cOLOCkOr21dabdHdWqh/ErLfJV
 fHD5OvQX/MQg==
X-IronPort-AV: E=McAfee;i="6200,9189,9970"; a="177459383"
X-IronPort-AV: E=Sophos;i="5.82,263,1613462400"; d="scan'208";a="177459383"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2021 08:34:59 -0700
IronPort-SDR: JD7L7frmKj0uyinte5IeUUlyNp4x1hiwHwDq6741hYBK+4pwADKp3hGWnaJtIoHmTTJBXH8LXZ
 t5aAqrwQh0xg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,263,1613462400"; d="scan'208";a="527676319"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga001.fm.intel.com with SMTP; 30 Apr 2021 08:34:57 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 30 Apr 2021 18:34:56 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 30 Apr 2021 18:34:43 +0300
Message-Id: <20210430153444.29270-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.3
In-Reply-To: <20210430153444.29270-1-ville.syrjala@linux.intel.com>
References: <20210430153444.29270-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 4/5] drm/i915: Use intel_de_rmw() in
 bxt/glk/cnl+ cdclk programming
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
MTQgKysrKy0tLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyksIDEwIGRl
bGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfY2RjbGsuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY2RjbGsuYwpp
bmRleCBkN2QwNTE5NjhhZjYuLmFiNjhhMmQ3MDgzMCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jZGNsay5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfY2RjbGsuYwpAQCAtMTQ3MiwxMiArMTQ3Miw5IEBAIHN0YXRpYyB2b2lk
IGJ4dF9kZV9wbGxfZGlzYWJsZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiBz
dGF0aWMgdm9pZCBieHRfZGVfcGxsX2VuYWJsZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2
X3ByaXYsIGludCB2Y28pCiB7CiAJaW50IHJhdGlvID0gRElWX1JPVU5EX0NMT1NFU1QodmNvLCBk
ZXZfcHJpdi0+Y2RjbGsuaHcucmVmKTsKLQl1MzIgdmFsOwogCi0JdmFsID0gaW50ZWxfZGVfcmVh
ZChkZXZfcHJpdiwgQlhUX0RFX1BMTF9DVEwpOwotCXZhbCAmPSB+QlhUX0RFX1BMTF9SQVRJT19N
QVNLOwotCXZhbCB8PSBCWFRfREVfUExMX1JBVElPKHJhdGlvKTsKLQlpbnRlbF9kZV93cml0ZShk
ZXZfcHJpdiwgQlhUX0RFX1BMTF9DVEwsIHZhbCk7CisJaW50ZWxfZGVfcm13KGRldl9wcml2LCBC
WFRfREVfUExMX0NUTCwKKwkJICAgICBCWFRfREVfUExMX1JBVElPX01BU0ssIEJYVF9ERV9QTExf
UkFUSU8ocmF0aW8pKTsKIAogCWludGVsX2RlX3dyaXRlKGRldl9wcml2LCBCWFRfREVfUExMX0VO
QUJMRSwgQlhUX0RFX1BMTF9QTExfRU5BQkxFKTsKIApAQCAtMTQ5MSwxMSArMTQ4OCw4IEBAIHN0
YXRpYyB2b2lkIGJ4dF9kZV9wbGxfZW5hYmxlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZf
cHJpdiwgaW50IHZjbykKIAogc3RhdGljIHZvaWQgY25sX2NkY2xrX3BsbF9kaXNhYmxlKHN0cnVj
dCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKIHsKLQl1MzIgdmFsOwotCi0JdmFsID0gaW50
ZWxfZGVfcmVhZChkZXZfcHJpdiwgQlhUX0RFX1BMTF9FTkFCTEUpOwotCXZhbCAmPSB+QlhUX0RF
X1BMTF9QTExfRU5BQkxFOwotCWludGVsX2RlX3dyaXRlKGRldl9wcml2LCBCWFRfREVfUExMX0VO
QUJMRSwgdmFsKTsKKwlpbnRlbF9kZV9ybXcoZGV2X3ByaXYsIEJYVF9ERV9QTExfRU5BQkxFLAor
CQkgICAgIEJYVF9ERV9QTExfUExMX0VOQUJMRSwgMCk7CiAKIAkvKiBUaW1lb3V0IDIwMHVzICov
CiAJaWYgKHdhaXRfZm9yKChpbnRlbF9kZV9yZWFkKGRldl9wcml2LCBCWFRfREVfUExMX0VOQUJM
RSkgJiBCWFRfREVfUExMX0xPQ0spID09IDAsIDEpKQotLSAKMi4yNi4zCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
