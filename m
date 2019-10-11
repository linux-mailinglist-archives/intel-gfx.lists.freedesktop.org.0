Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F861D35FA
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Oct 2019 02:29:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B4F86E042;
	Fri, 11 Oct 2019 00:29:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B9A816E042
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Oct 2019 00:29:47 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Oct 2019 17:29:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,281,1566889200"; d="scan'208";a="193379118"
Received: from orsmsx105.amr.corp.intel.com ([10.22.225.132])
 by fmsmga008.fm.intel.com with ESMTP; 10 Oct 2019 17:29:46 -0700
Received: from orsmsx154.amr.corp.intel.com (10.22.226.12) by
 ORSMSX105.amr.corp.intel.com (10.22.225.132) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 10 Oct 2019 17:29:46 -0700
Received: from vkasired-desk2.fm.intel.com (10.22.254.139) by
 ORSMSX154.amr.corp.intel.com (10.22.226.12) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 10 Oct 2019 17:29:46 -0700
From: Vivek Kasireddy <vivek.kasireddy@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Date: Thu, 10 Oct 2019 17:26:18 -0700
Message-ID: <20191011002618.3087-1-vivek.kasireddy@intel.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-Originating-IP: [10.22.254.139]
Subject: [Intel-gfx] [PATCH] drm/i915/ehl: Port C's hotplug interrupt is
 associated with TC1 bits
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

T24gc29tZSBwbGF0Zm9ybXMgdGhhdCBoYXZlIHRoZSBNQ0MgUENILCBQb3J0IEMncyBob3RwbHVn
IGludGVycnVwdApiaXRzIGFyZSBtYXBwZWQgdG8gVEMxIGJpdHMuCgpTdWdnZXN0ZWQtYnk6IE1h
dHQgUm9wZXIgPG1hdHRoZXcuZC5yb3BlckBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IFZpdmVr
IEthc2lyZWRkeSA8dml2ZWsua2FzaXJlZGR5QGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMgfCAzICsrKwogZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9pcnEuYyAgICAgICAgIHwgOCArKysrLS0tLQogMiBmaWxlcyBjaGFuZ2VkLCA3IGluc2Vy
dGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kcC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kcC5jCmluZGV4IDBlNDVjNjFkNzMzMS4uNjU5NGYyYWYxMjU3IDEwMDY0NAotLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMKKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jCkBAIC01MjgyLDYgKzUyODIsOSBAQCBzdGF0aWMgYm9v
bCBpY2xfY29tYm9fcG9ydF9jb25uZWN0ZWQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9w
cml2LAogewogCWVudW0gcG9ydCBwb3J0ID0gaW50ZWxfZGlnX3BvcnQtPmJhc2UucG9ydDsKIAor
CWlmIChIQVNfUENIX01DQyhkZXZfcHJpdikgJiYgcG9ydCA9PSBQT1JUX0MpCisJCXJldHVybiBJ
OTE1X1JFQUQoU0RFSVNSKSAmIFNERV9UQ19IT1RQTFVHX0lDUChQT1JUX1RDMSk7CisKIAlyZXR1
cm4gSTkxNV9SRUFEKFNERUlTUikgJiBTREVfRERJX0hPVFBMVUdfSUNQKHBvcnQpOwogfQogCmRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2lycS5jIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9pcnEuYwppbmRleCAzYWY3Zjc5MTRjNDAuLmE3Yzk2OGIwMWFmMyAxMDA2
NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9pcnEuYworKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X2lycS5jCkBAIC0yMjQ5LDggKzIyNDksOCBAQCBzdGF0aWMgdm9pZCBp
Y3BfaXJxX2hhbmRsZXIoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LCB1MzIgcGNo
X2lpcikKIAkJdGNfcG9ydF9ob3RwbHVnX2xvbmdfZGV0ZWN0ID0gdGdwX3RjX3BvcnRfaG90cGx1
Z19sb25nX2RldGVjdDsKIAkJcGlucyA9IGhwZF90Z3A7CiAJfSBlbHNlIGlmIChIQVNfUENIX01D
QyhkZXZfcHJpdikpIHsKLQkJZGRpX2hvdHBsdWdfdHJpZ2dlciA9IHBjaF9paXIgJiBTREVfRERJ
X01BU0tfVEdQOwotCQl0Y19ob3RwbHVnX3RyaWdnZXIgPSAwOworCQlkZGlfaG90cGx1Z190cmln
Z2VyID0gcGNoX2lpciAmIFNERV9ERElfTUFTS19JQ1A7CisJCXRjX2hvdHBsdWdfdHJpZ2dlciA9
IHBjaF9paXIgJiBTREVfVENfSE9UUExVR19JQ1AoUE9SVF9UQzEpOwogCQlwaW5zID0gaHBkX2lj
cDsKIAl9IGVsc2UgewogCQlkZGlfaG90cGx1Z190cmlnZ2VyID0gcGNoX2lpciAmIFNERV9ERElf
TUFTS19JQ1A7CkBAIC0zMzc3LDggKzMzNzcsOCBAQCBzdGF0aWMgdm9pZCBpY3BfaHBkX2lycV9z
ZXR1cChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCiBzdGF0aWMgdm9pZCBtY2Nf
aHBkX2lycV9zZXR1cChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiB7CiAJaWNw
X2hwZF9pcnFfc2V0dXAoZGV2X3ByaXYsCi0JCQkgIFNERV9ERElfTUFTS19UR1AsIDAsCi0JCQkg
IFRHUF9ERElfSFBEX0VOQUJMRV9NQVNLLCAwLAorCQkJICBTREVfRERJX01BU0tfSUNQLCBTREVf
VENfSE9UUExVR19JQ1AoUE9SVF9UQzEpLAorCQkJICBJQ1BfRERJX0hQRF9FTkFCTEVfTUFTSywg
SUNQX1RDX0hQRF9FTkFCTEUoUE9SVF9UQzEpLAogCQkJICBocGRfaWNwKTsKIH0KIAotLSAKMi4y
MS4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
