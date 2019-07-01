Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B19395B51A
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Jul 2019 08:34:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F03B489F6B;
	Mon,  1 Jul 2019 06:34:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7A00289F6F
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Jul 2019 06:34:42 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Jun 2019 23:34:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,437,1557212400"; d="scan'208";a="153988757"
Received: from amanna.iind.intel.com ([10.223.74.216])
 by orsmga007.jf.intel.com with ESMTP; 30 Jun 2019 23:34:40 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  1 Jul 2019 11:56:30 +0530
Message-Id: <20190701062632.456-14-animesh.manna@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190701062632.456-1-animesh.manna@intel.com>
References: <20190701062632.456-1-animesh.manna@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 13/15] drm/i915/dsb: Cleanup of DSB context.
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
Cc: Jani Nikula <jani.nikula@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RFNCIGNvbnRleHQgZGVzdHJveWVkIHVzaW5nIGludGVsX2RzYl9wdXQoKSBpbiBjbGVhbnVwIGZ1
bmN0aW9uLgoKQ2M6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5j
b20+CkNjOiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPgpDYzogUm9kcmlnbyBW
aXZpIDxyb2RyaWdvLnZpdmlAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBBbmltZXNoIE1hbm5h
IDxhbmltZXNoLm1hbm5hQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2Rpc3BsYXkuYyB8IDE3ICsrKysrKysrKysrKysrKysrCiAxIGZpbGUgY2hhbmdl
ZCwgMTcgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGlzcGxheS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kaXNwbGF5LmMKaW5kZXggNmRlYTYxNjg5MjkwLi43YzJkYWJjNDZkMWYgMTAwNjQ0Ci0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCisrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCkBAIC0xMzcyNCw2ICsxMzcy
NCwyMiBAQCBzdGF0aWMgdm9pZCBpbnRlbF9wcmVwYXJlX2RzYihzdHJ1Y3QgZHJtX2F0b21pY19z
dGF0ZSAqc3RhdGUpCiAJfQogfQogCitzdGF0aWMgdm9pZCBpbnRlbF9jbGVhbnVwX2RzYihzdHJ1
Y3QgZHJtX2F0b21pY19zdGF0ZSAqc3RhdGUpCit7CisJc3RydWN0IGRybV9jcnRjX3N0YXRlICpj
cnRjX3N0YXRlOworCXN0cnVjdCBkcm1fY3J0YyAqY3J0YzsKKwlzdHJ1Y3QgaW50ZWxfY3J0Y19z
dGF0ZSAqY29uZmlnOworCWludCBpOworCisJaWYgKCFzdGF0ZSkKKwkJcmV0dXJuOworCisJZm9y
X2VhY2hfbmV3X2NydGNfaW5fc3RhdGUoc3RhdGUsIGNydGMsIGNydGNfc3RhdGUsIGkpIHsKKwkJ
Y29uZmlnID0gdG9faW50ZWxfY3J0Y19zdGF0ZShjcnRjX3N0YXRlKTsKKwkJaW50ZWxfZHNiX3B1
dChjb25maWctPmRzYik7CisJfQorfQorCiBzdGF0aWMgdm9pZCBpbnRlbF9hdG9taWNfaGVscGVy
X2ZyZWVfc3RhdGUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQogewogCXN0cnVj
dCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLCAqbmV4dDsKQEAgLTEzNzcyLDYgKzEzNzg4LDcg
QEAgc3RhdGljIHZvaWQgaW50ZWxfYXRvbWljX2NsZWFudXBfd29yayhzdHJ1Y3Qgd29ya19zdHJ1
Y3QgKndvcmspCiAJCWNvbnRhaW5lcl9vZih3b3JrLCBzdHJ1Y3QgZHJtX2F0b21pY19zdGF0ZSwg
Y29tbWl0X3dvcmspOwogCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0gdG9faTkxNShz
dGF0ZS0+ZGV2KTsKIAorCWludGVsX2NsZWFudXBfZHNiKHN0YXRlKTsKIAlkcm1fYXRvbWljX2hl
bHBlcl9jbGVhbnVwX3BsYW5lcygmaTkxNS0+ZHJtLCBzdGF0ZSk7CiAJZHJtX2F0b21pY19oZWxw
ZXJfY29tbWl0X2NsZWFudXBfZG9uZShzdGF0ZSk7CiAJZHJtX2F0b21pY19zdGF0ZV9wdXQoc3Rh
dGUpOwotLSAKMi4yMS4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZng=
