Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 060BED7AE4
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Oct 2019 18:11:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5AB8C6E847;
	Tue, 15 Oct 2019 16:11:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9AC476E847
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Oct 2019 16:11:45 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Oct 2019 09:11:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,300,1566889200"; d="scan'208";a="189390704"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.135])
 by orsmga008.jf.intel.com with ESMTP; 15 Oct 2019 09:11:44 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 15 Oct 2019 09:11:31 -0700
Message-Id: <20191015161131.21239-1-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/ehl: Don't forget to set TC long
 detect function
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
Cc: Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

U2luY2UgRUhMJ3MgTUNDIFBDSCByZXVzZXMgb25lIG9mIHRoZSBUQyBwaW5zIHdlIG5lZWQgdG8g
c3VwcGx5IGEgVEMKbG9uZyBkZXRlY3QgZnVuY3Rpb24gd2hlbiBoYW5kbGluZyB0aGUgaW50ZXJy
dXB0cy4KCkZpeGVzOiA1MzQ0OGFlZDdiODAgKCJkcm0vaTkxNS9laGw6IFBvcnQgQydzIGhvdHBs
dWcgaW50ZXJydXB0IGlzIGFzc29jaWF0ZWQgd2l0aCBUQzEgYml0cyIpClJlcG9ydGVkLWJ5OiBr
YnVpbGQgdGVzdCByb2JvdCA8bGtwQGludGVsLmNvbT4KUmVwb3J0ZWQtYnk6IERhbiBDYXJwZW50
ZXIgPGRhbi5jYXJwZW50ZXJAb3JhY2xlLmNvbT4KQ2M6IFZpdmVrIEthc2lyZWRkeSA8dml2ZWsu
a2FzaXJlZGR5QGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogTWF0dCBSb3BlciA8bWF0dGhldy5k
LnJvcGVyQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2lycS5jIHwg
MSArCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKykKCmRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X2lycS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9pcnEu
YwppbmRleCBhN2M5NjhiMDFhZjMuLmFmNzQyNmNkOGRlOSAxMDA2NDQKLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9pcnEuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2ly
cS5jCkBAIC0yMjUxLDYgKzIyNTEsNyBAQCBzdGF0aWMgdm9pZCBpY3BfaXJxX2hhbmRsZXIoc3Ry
dWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LCB1MzIgcGNoX2lpcikKIAl9IGVsc2UgaWYg
KEhBU19QQ0hfTUNDKGRldl9wcml2KSkgewogCQlkZGlfaG90cGx1Z190cmlnZ2VyID0gcGNoX2lp
ciAmIFNERV9ERElfTUFTS19JQ1A7CiAJCXRjX2hvdHBsdWdfdHJpZ2dlciA9IHBjaF9paXIgJiBT
REVfVENfSE9UUExVR19JQ1AoUE9SVF9UQzEpOworCQl0Y19wb3J0X2hvdHBsdWdfbG9uZ19kZXRl
Y3QgPSBpY3BfdGNfcG9ydF9ob3RwbHVnX2xvbmdfZGV0ZWN0OwogCQlwaW5zID0gaHBkX2ljcDsK
IAl9IGVsc2UgewogCQlkZGlfaG90cGx1Z190cmlnZ2VyID0gcGNoX2lpciAmIFNERV9ERElfTUFT
S19JQ1A7Ci0tIAoyLjIxLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeA==
