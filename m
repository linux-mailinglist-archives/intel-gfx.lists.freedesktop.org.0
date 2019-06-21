Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 136814EBC2
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Jun 2019 17:18:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0442F6E8DB;
	Fri, 21 Jun 2019 15:18:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DC3AC6E8DB
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Jun 2019 15:18:55 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 Jun 2019 08:18:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,400,1557212400"; d="scan'208";a="162688864"
Received: from mdroper-desk.fm.intel.com ([10.105.128.126])
 by fmsmga007.fm.intel.com with ESMTP; 21 Jun 2019 08:18:54 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 21 Jun 2019 08:18:47 -0700
Message-Id: <20190621151847.31302-1-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.17.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/ehl: Add one additional PCH ID to MCC
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

VGhlcmUncyBvbmUgYWRkaXRpb25hbCBJRCB0aGF0IHdlIHNob3VsZCB0cmVhdCBhcyBNdWxlIENy
ZWVrIENhbnlvbi4KCkNjOiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVs
LmNvbT4KU2lnbmVkLW9mZi1ieTogTWF0dCBSb3BlciA8bWF0dGhldy5kLnJvcGVyQGludGVsLmNv
bT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jIHwgMSArCiBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X2Rydi5oIHwgMSArCiAyIGZpbGVzIGNoYW5nZWQsIDIgaW5zZXJ0aW9u
cygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jCmluZGV4IDhmODRlZDI2ZTk3Mi4uMmU2Mzg5MTY4
ODU0IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jCisrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMKQEAgLTIxOSw2ICsyMTksNyBAQCBpbnRlbF9w
Y2hfdHlwZShjb25zdCBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsIHVuc2lnbmVk
IHNob3J0IGlkKQogCQlXQVJOX09OKCFJU19JQ0VMQUtFKGRldl9wcml2KSk7CiAJCXJldHVybiBQ
Q0hfSUNQOwogCWNhc2UgSU5URUxfUENIX01DQ19ERVZJQ0VfSURfVFlQRToKKwljYXNlIElOVEVM
X1BDSF9NQ0MyX0RFVklDRV9JRF9UWVBFOgogCQlEUk1fREVCVUdfS01TKCJGb3VuZCBNdWxlIENy
ZWVrIENhbnlvbiBQQ0hcbiIpOwogCQlXQVJOX09OKCFJU19FTEtIQVJUTEFLRShkZXZfcHJpdikp
OwogCQlyZXR1cm4gUENIX01DQzsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfZHJ2LmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oCmluZGV4IDI3MzRmNjJh
YjE5YS4uYTA0NjliYmU2YzhlIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X2Rydi5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgKQEAgLTIzNTMsNiAr
MjM1Myw3IEBAIElTX1NVQlBMQVRGT1JNKGNvbnN0IHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpp
OTE1LAogI2RlZmluZSBJTlRFTF9QQ0hfQ01QX0RFVklDRV9JRF9UWVBFCQkweDAyODAKICNkZWZp
bmUgSU5URUxfUENIX0lDUF9ERVZJQ0VfSURfVFlQRQkJMHgzNDgwCiAjZGVmaW5lIElOVEVMX1BD
SF9NQ0NfREVWSUNFX0lEX1RZUEUJCTB4NEIwMAorI2RlZmluZSBJTlRFTF9QQ0hfTUNDMl9ERVZJ
Q0VfSURfVFlQRQkJMHgzODgwCiAjZGVmaW5lIElOVEVMX1BDSF9QMlhfREVWSUNFX0lEX1RZUEUJ
CTB4NzEwMAogI2RlZmluZSBJTlRFTF9QQ0hfUDNYX0RFVklDRV9JRF9UWVBFCQkweDcwMDAKICNk
ZWZpbmUgSU5URUxfUENIX1FFTVVfREVWSUNFX0lEX1RZUEUJCTB4MjkwMCAvKiBxZW11IHEzNSBo
YXMgMjkxOCAqLwotLSAKMi4xNy4yCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZng=
