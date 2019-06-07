Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D1C84386C8
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Jun 2019 11:12:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 91C6189CF5;
	Fri,  7 Jun 2019 09:12:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7EF6689CE2
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Jun 2019 09:12:49 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Jun 2019 02:12:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,562,1557212400"; d="scan'208";a="182609362"
Received: from kseeloff-mobl1.amr.corp.intel.com (HELO
 ldmartin-desk.fios-router.home) ([10.254.23.10])
 by fmsmga002.fm.intel.com with ESMTP; 07 Jun 2019 02:12:48 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  7 Jun 2019 02:12:29 -0700
Message-Id: <20190607091230.1489-9-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190607091230.1489-1-lucas.demarchi@intel.com>
References: <20190607091230.1489-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 8/9] drm/i915/dmc: remove redundant return in
 parse_csr_fw()
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

cGFyc2VfY3NyX2Z3KCkgaXMgcmVzcG9uc2libGUgdG8gc2V0IHVwIHNldmVyYWwgZmllbGRzIGlu
IHN0cnVjdCBpbnRlbF9jc3IsCmluY2x1ZGluZyB0aGUgcGF5bG9hZC4gV2UgZG9uJ3QgbmVlZCB0
byBhc3NpZ24gaXQgYWdhaW4uCgpTaWduZWQtb2ZmLWJ5OiBMdWNhcyBEZSBNYXJjaGkgPGx1Y2Fz
LmRlbWFyY2hpQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9jc3Iu
YyB8IDE3ICsrKysrKy0tLS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCsp
LCAxMSBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRl
bF9jc3IuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Nzci5jCmluZGV4IDBiMTk3OGEy
Zjg3ZC4uNzYwOGU0ZTI5NTBkIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRl
bF9jc3IuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9jc3IuYwpAQCAtNTU3LDcg
KzU1Nyw3IEBAIHN0YXRpYyB1MzIgcGFyc2VfY3NyX2Z3X2NzcyhzdHJ1Y3QgaW50ZWxfY3NyICpj
c3IsCiAJcmV0dXJuIHNpemVvZihzdHJ1Y3QgaW50ZWxfY3NzX2hlYWRlcik7CiB9CiAKLXN0YXRp
YyB1MzIgKnBhcnNlX2Nzcl9mdyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCitz
dGF0aWMgdm9pZCBwYXJzZV9jc3JfZncoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2
LAogCQkJIGNvbnN0IHN0cnVjdCBmaXJtd2FyZSAqZncpCiB7CiAJc3RydWN0IGludGVsX2Nzc19o
ZWFkZXIgKmNzc19oZWFkZXI7CkBAIC01NjksMTMgKzU2OSwxMyBAQCBzdGF0aWMgdTMyICpwYXJz
ZV9jc3JfZncoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAogCXUzMiByOwogCiAJ
aWYgKCFmdykKLQkJcmV0dXJuIE5VTEw7CisJCXJldHVybjsKIAogCS8qIEV4dHJhY3QgQ1NTIEhl
YWRlciBpbmZvcm1hdGlvbiAqLwogCWNzc19oZWFkZXIgPSAoc3RydWN0IGludGVsX2Nzc19oZWFk
ZXIgKilmdy0+ZGF0YTsKIAlyID0gcGFyc2VfY3NyX2Z3X2Nzcyhjc3IsIGNzc19oZWFkZXIsIGZ3
LT5zaXplKTsKIAlpZiAoIXIpCi0JCXJldHVybiBOVUxMOworCQlyZXR1cm47CiAKIAlyZWFkY291
bnQgKz0gcjsKIApAQCAtNTgzLDE3ICs1ODMsMTMgQEAgc3RhdGljIHUzMiAqcGFyc2VfY3NyX2Z3
KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKIAlwYWNrYWdlX2hlYWRlciA9IChz
dHJ1Y3QgaW50ZWxfcGFja2FnZV9oZWFkZXIgKikmZnctPmRhdGFbcmVhZGNvdW50XTsKIAlyID0g
cGFyc2VfY3NyX2Z3X3BhY2thZ2UoY3NyLCBwYWNrYWdlX2hlYWRlciwgc2ksIGZ3LT5zaXplIC0g
cmVhZGNvdW50KTsKIAlpZiAoIXIpCi0JCXJldHVybiBOVUxMOworCQlyZXR1cm47CiAKIAlyZWFk
Y291bnQgKz0gcjsKIAogCS8qIEV4dHJhY3QgZG1jX2hlYWRlciBpbmZvcm1hdGlvbiAqLwogCWRt
Y19oZWFkZXIgPSAoc3RydWN0IGludGVsX2RtY19oZWFkZXJfYmFzZSAqKSZmdy0+ZGF0YVtyZWFk
Y291bnRdOwotCXIgPSBwYXJzZV9jc3JfZndfZG1jKGNzciwgZG1jX2hlYWRlciwgZnctPnNpemUg
LSByZWFkY291bnQpOwotCWlmICghcikKLQkJcmV0dXJuIE5VTEw7Ci0KLQlyZXR1cm4gY3NyLT5k
bWNfcGF5bG9hZDsKKwlwYXJzZV9jc3JfZndfZG1jKGNzciwgZG1jX2hlYWRlciwgZnctPnNpemUg
LSByZWFkY291bnQpOwogfQogCiBzdGF0aWMgdm9pZCBpbnRlbF9jc3JfcnVudGltZV9wbV9nZXQo
c3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQpAQCAtNjIxLDggKzYxNyw3IEBAIHN0
YXRpYyB2b2lkIGNzcl9sb2FkX3dvcmtfZm4oc3RydWN0IHdvcmtfc3RydWN0ICp3b3JrKQogCWNz
ciA9ICZkZXZfcHJpdi0+Y3NyOwogCiAJcmVxdWVzdF9maXJtd2FyZSgmZncsIGRldl9wcml2LT5j
c3IuZndfcGF0aCwgJmRldl9wcml2LT5kcm0ucGRldi0+ZGV2KTsKLQlpZiAoZncpCi0JCWRldl9w
cml2LT5jc3IuZG1jX3BheWxvYWQgPSBwYXJzZV9jc3JfZncoZGV2X3ByaXYsIGZ3KTsKKwlwYXJz
ZV9jc3JfZncoZGV2X3ByaXYsIGZ3KTsKIAogCWlmIChkZXZfcHJpdi0+Y3NyLmRtY19wYXlsb2Fk
KSB7CiAJCWludGVsX2Nzcl9sb2FkX3Byb2dyYW0oZGV2X3ByaXYpOwotLSAKMi4yMS4wCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
