Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BDA1513F51F
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jan 2020 19:54:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D56E46EE91;
	Thu, 16 Jan 2020 18:54:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F17046EE91
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Jan 2020 18:54:24 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Jan 2020 10:54:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,327,1574150400"; d="scan'208";a="259590282"
Received: from josouza-mobl.jf.intel.com (HELO josouza-MOBL.intel.com)
 ([10.24.12.138])
 by fmsmga001.fm.intel.com with ESMTP; 16 Jan 2020 10:54:23 -0800
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 16 Jan 2020 10:54:19 -0800
Message-Id: <20200116185421.66585-1-jose.souza@intel.com>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH rebased 1/3] drm/i915/dc3co: Do the full
 calculation of DC3CO exit only once
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

VGhpcyB3aWxsIGNhbGN1bGFldCB0aGUgREMzQ08gZXhpdCBkZWxheSBvbmx5IG9uY2UgcGVyIGZ1
bGwgbW9kZXNldC4KCkNjOiBJbXJlIERlYWsgPGltcmUuZGVha0BpbnRlbC5jb20+CkNjOiBBbnNo
dW1hbiBHdXB0YSA8YW5zaHVtYW4uZ3VwdGFAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBKb3PD
qSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jIHwgMTAgKysrKy0tLS0tLQogMSBmaWxlIGNo
YW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgNiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9wc3IuYwppbmRleCAxZDJmZDFhODkyNWEuLmU2NGUwYzRjODBkYyAx
MDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYworKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jCkBAIC04MDIsNyArODAy
LDkgQEAgc3RhdGljIHZvaWQgaW50ZWxfcHNyX2VuYWJsZV9sb2NrZWQoc3RydWN0IGRybV9pOTE1
X3ByaXZhdGUgKmRldl9wcml2LAogCWRldl9wcml2LT5wc3IuYnVzeV9mcm9udGJ1ZmZlcl9iaXRz
ID0gMDsKIAlkZXZfcHJpdi0+cHNyLnBpcGUgPSB0b19pbnRlbF9jcnRjKGNydGNfc3RhdGUtPnVh
cGkuY3J0YyktPnBpcGU7CiAJZGV2X3ByaXYtPnBzci5kYzNjb19lbmFibGVkID0gISFjcnRjX3N0
YXRlLT5kYzNjb19leGl0bGluZTsKLQlkZXZfcHJpdi0+cHNyLmRjM2NvX2V4aXRfZGVsYXkgPSBp
bnRlbF9nZXRfZnJhbWVfdGltZV91cyhjcnRjX3N0YXRlKTsKKwkvKiBEQzUvREM2IHJlcXVpcmVk
IGlkbGUgZnJhbWVzID0gNiAqLworCXZhbCA9IHVzZWNzX3RvX2ppZmZpZXMoaW50ZWxfZ2V0X2Zy
YW1lX3RpbWVfdXMoY3J0Y19zdGF0ZSkgKiA2KTsKKwlkZXZfcHJpdi0+cHNyLmRjM2NvX2V4aXRf
ZGVsYXkgPSB2YWw7CiAJZGV2X3ByaXYtPnBzci50cmFuc2NvZGVyID0gY3J0Y19zdGF0ZS0+Y3B1
X3RyYW5zY29kZXI7CiAKIAkvKgpAQCAtMTI3Nyw4ICsxMjc5LDYgQEAgc3RhdGljIHZvaWQKIHRn
bF9kYzNjb19mbHVzaChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCiAJCXVuc2ln
bmVkIGludCBmcm9udGJ1ZmZlcl9iaXRzLCBlbnVtIGZiX29wX29yaWdpbiBvcmlnaW4pCiB7Ci0J
dTMyIGRlbGF5OwotCiAJbXV0ZXhfbG9jaygmZGV2X3ByaXYtPnBzci5sb2NrKTsKIAogCWlmICgh
ZGV2X3ByaXYtPnBzci5kYzNjb19lbmFibGVkKQpAQCAtMTI5NiwxMCArMTI5Niw4IEBAIHRnbF9k
YzNjb19mbHVzaChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCiAJCWdvdG8gdW5s
b2NrOwogCiAJdGdsX3BzcjJfZW5hYmxlX2RjM2NvKGRldl9wcml2KTsKLQkvKiBEQzUvREM2IHJl
cXVpcmVkIGlkbGUgZnJhbWVzID0gNiAqLwotCWRlbGF5ID0gNiAqIGRldl9wcml2LT5wc3IuZGMz
Y29fZXhpdF9kZWxheTsKIAltb2RfZGVsYXllZF93b3JrKHN5c3RlbV93cSwgJmRldl9wcml2LT5w
c3IuaWRsZV93b3JrLAotCQkJIHVzZWNzX3RvX2ppZmZpZXMoZGVsYXkpKTsKKwkJCSBkZXZfcHJp
di0+cHNyLmRjM2NvX2V4aXRfZGVsYXkpOwogCiB1bmxvY2s6CiAJbXV0ZXhfdW5sb2NrKCZkZXZf
cHJpdi0+cHNyLmxvY2spOwotLSAKMi4yNS4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZngK
