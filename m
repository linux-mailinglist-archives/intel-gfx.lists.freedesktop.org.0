Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A1DFAD890
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Sep 2019 14:11:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A3E4F89612;
	Mon,  9 Sep 2019 12:11:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C78AB89650
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Sep 2019 12:11:45 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Sep 2019 05:11:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,484,1559545200"; d="scan'208";a="359468884"
Received: from genxfsim-shark-bay-client-platform.iind.intel.com
 ([10.223.34.144])
 by orsmga005.jf.intel.com with ESMTP; 09 Sep 2019 05:11:42 -0700
From: Swati Sharma <swati2.sharma@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  9 Sep 2019 17:31:41 +0530
Message-Id: <1568030503-26747-2-git-send-email-swati2.sharma@intel.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1568030503-26747-1-git-send-email-swati2.sharma@intel.com>
References: <1568030503-26747-1-git-send-email-swati2.sharma@intel.com>
Subject: [Intel-gfx] [v2][PATCH 1/3] drm/i915/display: Add gamma precision
 function for CHV
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

aW50ZWxfY29sb3JfZ2V0X2dhbW1hX2JpdF9wcmVjaXNpb24oKSBpcyBleHRlbmRlZCBmb3IKY2hl
cnJ5dmlldyBieSBhZGRpbmcgY2h2X2dhbW1hX3ByZWNpc2lvbigpLCBpOTY1IHdpbGwgdXNlIGV4
aXN0aW5nCmk5eHhfZ2FtbWFfcHJlY2lzaW9uKCkgZnVuYyBvbmx5LgoKU2lnbmVkLW9mZi1ieTog
U3dhdGkgU2hhcm1hIDxzd2F0aTIuc2hhcm1hQGludGVsLmNvbT4KUmV2aWV3ZWQtYnk6IEphbmkg
TmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9jb2xvci5jIHwgMjUgKysrKysrKysrKysrKysrKysrKy0tLS0tLQogMSBm
aWxlIGNoYW5nZWQsIDE5IGluc2VydGlvbnMoKyksIDYgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jb2xvci5jIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jb2xvci5jCmluZGV4IDZkNjQxZTEuLjRkOWE1Njgg
MTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY29sb3IuYwor
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NvbG9yLmMKQEAgLTE0MDAs
NiArMTQwMCwxNCBAQCBzdGF0aWMgaW50IGlsa19nYW1tYV9wcmVjaXNpb24oY29uc3Qgc3RydWN0
IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpCiAJfQogfQogCitzdGF0aWMgaW50IGNodl9n
YW1tYV9wcmVjaXNpb24oY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUp
Cit7CisJaWYgKGNydGNfc3RhdGUtPmNnbV9tb2RlICYgQ0dNX1BJUEVfTU9ERV9HQU1NQSkKKwkJ
cmV0dXJuIDEwOworCWVsc2UKKwkJcmV0dXJuIGk5eHhfZ2FtbWFfcHJlY2lzaW9uKGNydGNfc3Rh
dGUpOworfQorCiBzdGF0aWMgaW50IGdsa19nYW1tYV9wcmVjaXNpb24oY29uc3Qgc3RydWN0IGlu
dGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpCiB7CiAJc3dpdGNoIChjcnRjX3N0YXRlLT5nYW1t
YV9tb2RlKSB7CkBAIC0xNDIxLDEyICsxNDI5LDE3IEBAIGludCBpbnRlbF9jb2xvcl9nZXRfZ2Ft
bWFfYml0X3ByZWNpc2lvbihjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0
CiAJaWYgKCFjcnRjX3N0YXRlLT5nYW1tYV9lbmFibGUpCiAJCXJldHVybiAwOwogCi0JaWYgKEhB
U19HTUNIKGRldl9wcml2KSAmJiAhSVNfQ0hFUlJZVklFVyhkZXZfcHJpdikpCi0JCXJldHVybiBp
OXh4X2dhbW1hX3ByZWNpc2lvbihjcnRjX3N0YXRlKTsKLQllbHNlIGlmIChJU19DQU5OT05MQUtF
KGRldl9wcml2KSB8fCBJU19HRU1JTklMQUtFKGRldl9wcml2KSkKLQkJcmV0dXJuIGdsa19nYW1t
YV9wcmVjaXNpb24oY3J0Y19zdGF0ZSk7Ci0JZWxzZSBpZiAoSVNfSVJPTkxBS0UoZGV2X3ByaXYp
KQotCQlyZXR1cm4gaWxrX2dhbW1hX3ByZWNpc2lvbihjcnRjX3N0YXRlKTsKKwlpZiAoSEFTX0dN
Q0goZGV2X3ByaXYpKSB7CisJCWlmIChJU19DSEVSUllWSUVXKGRldl9wcml2KSkKKwkJCXJldHVy
biBjaHZfZ2FtbWFfcHJlY2lzaW9uKGNydGNfc3RhdGUpOworCQllbHNlCisJCQlyZXR1cm4gaTl4
eF9nYW1tYV9wcmVjaXNpb24oY3J0Y19zdGF0ZSk7CisJfSBlbHNlIHsKKwkJaWYgKElTX0NBTk5P
TkxBS0UoZGV2X3ByaXYpIHx8IElTX0dFTUlOSUxBS0UoZGV2X3ByaXYpKQorCQkJcmV0dXJuIGds
a19nYW1tYV9wcmVjaXNpb24oY3J0Y19zdGF0ZSk7CisJCWVsc2UgaWYgKElTX0lST05MQUtFKGRl
dl9wcml2KSkKKwkJCXJldHVybiBpbGtfZ2FtbWFfcHJlY2lzaW9uKGNydGNfc3RhdGUpOworCX0K
IAogCXJldHVybiAwOwogfQotLSAKMS45LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLWdmeA==
