Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CAA416F53D
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Feb 2020 02:45:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5821B6E094;
	Wed, 26 Feb 2020 01:45:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EB64F6E07B
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Feb 2020 01:45:21 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Feb 2020 17:45:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,486,1574150400"; d="scan'208";a="438261794"
Received: from josouza-mobl2.jf.intel.com (HELO josouza-MOBL2.intel.com)
 ([10.24.14.234])
 by fmsmga006.fm.intel.com with ESMTP; 25 Feb 2020 17:45:21 -0800
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 25 Feb 2020 17:46:03 -0800
Message-Id: <20200226014603.42190-14-jose.souza@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200226014603.42190-1-jose.souza@intel.com>
References: <20200226014603.42190-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 14/14] drm/i915/tgl: Implement Wa_1407901919
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

VGhpcyB3aWxsIGZpeCBhIG1lbW9yeSBjb2hlcmVuY2UgaXNzdWUuCgpCU3BlYzogNTI4OTAKU2ln
bmVkLW9mZi1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+
Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYyB8ICA2ICsr
KysrKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCAgICAgICAgICAgICB8IDIwICsr
KysrKysrKysrLS0tLS0tLS0tCiAyIGZpbGVzIGNoYW5nZWQsIDE3IGluc2VydGlvbnMoKyksIDkg
ZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxf
d29ya2Fyb3VuZHMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRz
LmMKaW5kZXggMTY0YjVlODJlM2UzLi5iM2JiM2RkOTBmMDIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMKKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYwpAQCAtNjA2LDYgKzYwNiwxMiBAQCBzdGF0aWMg
dm9pZCB0Z2xfY3R4X3dvcmthcm91bmRzX2luaXQoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5n
aW5lLAogCXdhX2FkZCh3YWwsIEZGX01PREUyLCBGRl9NT0RFMl9URFNfVElNRVJfTUFTSywgdmFs
LAogCSAgICAgICBJU19UR0xfR1RfUkVWSUQoZW5naW5lLT5pOTE1LCBUR0xfR1RfUkVWSURfQTAs
CiAJCQkgICAgICAgVEdMX0dUX1JFVklEX0EwKSA/IDAgOiBGRl9NT0RFMl9URFNfVElNRVJfTUFT
Syk7CisKKwkvKiBXYV8xNDA3OTAxOTE5OnRnbCAqLworCXdhX2FkZCh3YWwsIElDTF9IRENfTU9E
RSwgSERDX0NPSEVSRU5UX0FDQ0VTU19MMV9DQUNIRV9ESVMgfAorCSAgICAgICBIRENfRElTX0wx
X0lOVkFMX0ZPUl9OT05fTDFfQ0FDSEVBQkxFX1csIDAsCisJICAgICAgIEhEQ19DT0hFUkVOVF9B
Q0NFU1NfTDFfQ0FDSEVfRElTIHwKKwkgICAgICAgSERDX0RJU19MMV9JTlZBTF9GT1JfTk9OX0wx
X0NBQ0hFQUJMRV9XKTsKIH0KIAogc3RhdGljIHZvaWQKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfcmVnLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCmlu
ZGV4IGUyYWJkOTEwYWU4MC4uM2Y1OTI2MzZmOTgyIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X3JlZy5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgK
QEAgLTc4OTIsMTUgKzc4OTIsMTcgQEAgZW51bSB7CiAjZGVmaW5lICBHRU44X0xRU0NfRkxVU0hf
Q09IRVJFTlRfTElORVMJCSgxIDw8IDIxKQogCiAvKiBHRU44IGNoaWNrZW4gKi8KLSNkZWZpbmUg
SERDX0NISUNLRU4wCQkJCV9NTUlPKDB4NzMwMCkKLSNkZWZpbmUgQ05MX0hEQ19DSElDS0VOMAkJ
CV9NTUlPKDB4RTVGMCkKLSNkZWZpbmUgSUNMX0hEQ19NT0RFCQkJCV9NTUlPKDB4RTVGNCkKLSNk
ZWZpbmUgIEhEQ19GT1JDRV9DU1JfTk9OX0NPSEVSRU5UX09WUl9ESVNBQkxFCSgxIDw8IDE1KQot
I2RlZmluZSAgSERDX0ZFTkNFX0RFU1RfU0xNX0RJU0FCTEUJCSgxIDw8IDE0KQotI2RlZmluZSAg
SERDX0RPTk9UX0ZFVENIX01FTV9XSEVOX01BU0tFRAkoMSA8PCAxMSkKLSNkZWZpbmUgIEhEQ19G
T1JDRV9DT05URVhUX1NBVkVfUkVTVE9SRV9OT05fQ09IRVJFTlQJKDEgPDwgNSkKLSNkZWZpbmUg
IEhEQ19GT1JDRV9OT05fQ09IRVJFTlQJCQkoMSA8PCA0KQotI2RlZmluZSAgSERDX0JBUlJJRVJf
UEVSRk9STUFOQ0VfRElTQUJMRQkoMSA8PCAxMCkKKyNkZWZpbmUgSERDX0NISUNLRU4wCQkJCQlf
TU1JTygweDczMDApCisjZGVmaW5lIENOTF9IRENfQ0hJQ0tFTjAJCQkJX01NSU8oMHhFNUYwKQor
I2RlZmluZSBJQ0xfSERDX01PREUJCQkJCV9NTUlPKDB4RTVGNCkKKyNkZWZpbmUgIEhEQ19GT1JD
RV9DU1JfTk9OX0NPSEVSRU5UX09WUl9ESVNBQkxFCQlSRUdfQklUKDE1KQorI2RlZmluZSAgSERD
X0ZFTkNFX0RFU1RfU0xNX0RJU0FCTEUJCQlSRUdfQklUKDE0KQorI2RlZmluZSAgSERDX0RJU19M
MV9JTlZBTF9GT1JfTk9OX0wxX0NBQ0hFQUJMRV9XCVJFR19CSVQoMTMpCisjZGVmaW5lICBIRENf
Q09IRVJFTlRfQUNDRVNTX0wxX0NBQ0hFX0RJUwkJUkVHX0JJVCgxMikKKyNkZWZpbmUgIEhEQ19E
T05PVF9GRVRDSF9NRU1fV0hFTl9NQVNLRUQJCVJFR19CSVQoMTEpCisjZGVmaW5lICBIRENfRk9S
Q0VfQ09OVEVYVF9TQVZFX1JFU1RPUkVfTk9OX0NPSEVSRU5UCVJFR19CSVQoNSkKKyNkZWZpbmUg
IEhEQ19GT1JDRV9OT05fQ09IRVJFTlQJCQkJUkVHX0JJVCg0KQorI2RlZmluZSAgSERDX0JBUlJJ
RVJfUEVSRk9STUFOQ0VfRElTQUJMRQkJUkVHX0JJVCgxMCkKIAogI2RlZmluZSBHRU44X0hEQ19D
SElDS0VOMQkJCV9NTUlPKDB4NzMwNCkKIAotLSAKMi4yNS4xCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
