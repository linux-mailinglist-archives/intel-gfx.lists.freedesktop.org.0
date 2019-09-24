Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D251BD4E8
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Sep 2019 00:27:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6EDF189D49;
	Tue, 24 Sep 2019 22:27:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A9C2C89D49
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Sep 2019 22:27:54 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Sep 2019 15:27:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,545,1559545200"; d="scan'208";a="272775575"
Received: from jausmus-gentoo-dev6.jf.intel.com (HELO jausmus-gentoo-dev6)
 ([10.54.75.43])
 by orsmga001.jf.intel.com with SMTP; 24 Sep 2019 15:27:52 -0700
Received: by jausmus-gentoo-dev6 (sSMTP sendmail emulation);
 Tue, 24 Sep 2019 15:28:30 -0700
From: James Ausmus <james.ausmus@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 24 Sep 2019 15:28:29 -0700
Message-Id: <20190924222829.13142-1-james.ausmus@intel.com>
X-Mailer: git-send-email 2.22.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2] drm/i915/tgl: Add memory type decoding for
 bandwidth checking
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

VGhlIG1lbW9yeSB0eXBlIHZhbHVlcyBoYXZlIGNoYW5nZWQgaW4gVEdMLCBzbyB3ZSBuZWVkIHRv
IHRyYW5zbGF0ZSB0aGVtCmRpZmZlcmVudGx5IHRoYW4gSUNMLiBXaGlsZSB3ZSdyZSBtb3Zpbmcg
aXQsIGZpeCB1cCB0aGUgSUNMIHRyYW5zbGF0aW9uCmZvciBMUEREUjQuCgpCU3BlYzogNTM5OTgK
CnYyOiBGaXggdXAgSUNMIExQRERSNCBlbnRyeSAoVmlsbGUpOyBEcm9wIHVudXNlZCB2YWx1ZXMg
ZnJvbSBUR0wgKFZpbGxlKQoKQ2M6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51
eC5pbnRlbC5jb20+CkNjOiBTdGFuaXNsYXYgTGlzb3Zza2l5IDxzdGFuaXNsYXYubGlzb3Zza2l5
QGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogSmFtZXMgQXVzbXVzIDxqYW1lcy5hdXNtdXNAaW50
ZWwuY29tPgpSZXZpZXdlZC1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4
LmludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2J3LmMg
fCA1NSArKysrKysrKysrKysrKysrKystLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgMzkgaW5zZXJ0
aW9ucygrKSwgMTYgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9idy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9idy5jCmluZGV4IGNkNThlNDdhYjdiMi4uMjJlODNmODU3ZGU4IDEwMDY0NAotLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2J3LmMKKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9idy5jCkBAIC0zNSwyMiArMzUsNDUgQEAgc3RhdGljIGludCBp
Y2xfcGNvZGVfcmVhZF9tZW1fZ2xvYmFsX2luZm8oc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRl
dl9wcml2LAogCWlmIChyZXQpCiAJCXJldHVybiByZXQ7CiAKLQlzd2l0Y2ggKHZhbCAmIDB4Zikg
ewotCWNhc2UgMDoKLQkJcWktPmRyYW1fdHlwZSA9IElOVEVMX0RSQU1fRERSNDsKLQkJYnJlYWs7
Ci0JY2FzZSAxOgotCQlxaS0+ZHJhbV90eXBlID0gSU5URUxfRFJBTV9ERFIzOwotCQlicmVhazsK
LQljYXNlIDI6Ci0JCXFpLT5kcmFtX3R5cGUgPSBJTlRFTF9EUkFNX0xQRERSMzsKLQkJYnJlYWs7
Ci0JY2FzZSAzOgotCQlxaS0+ZHJhbV90eXBlID0gSU5URUxfRFJBTV9MUEREUjM7Ci0JCWJyZWFr
OwotCWRlZmF1bHQ6Ci0JCU1JU1NJTkdfQ0FTRSh2YWwgJiAweGYpOwotCQlicmVhazsKKwlpZiAo
SVNfR0VOKGRldl9wcml2LCAxMikpIHsKKwkJc3dpdGNoICh2YWwgJiAweGYpIHsKKwkJY2FzZSAw
OgorCQkJcWktPmRyYW1fdHlwZSA9IElOVEVMX0RSQU1fRERSNDsKKwkJCWJyZWFrOworCQljYXNl
IDM6CisJCQlxaS0+ZHJhbV90eXBlID0gSU5URUxfRFJBTV9MUEREUjQ7CisJCQlicmVhazsKKwkJ
Y2FzZSA0OgorCQkJcWktPmRyYW1fdHlwZSA9IElOVEVMX0RSQU1fRERSMzsKKwkJCWJyZWFrOwor
CQljYXNlIDU6CisJCQlxaS0+ZHJhbV90eXBlID0gSU5URUxfRFJBTV9MUEREUjM7CisJCQlicmVh
azsKKwkJZGVmYXVsdDoKKwkJCU1JU1NJTkdfQ0FTRSh2YWwgJiAweGYpOworCQkJYnJlYWs7CisJ
CX0KKwl9IGVsc2UgaWYgKElTX0dFTihkZXZfcHJpdiwgMTEpKSB7CisJCXN3aXRjaCAodmFsICYg
MHhmKSB7CisJCWNhc2UgMDoKKwkJCXFpLT5kcmFtX3R5cGUgPSBJTlRFTF9EUkFNX0REUjQ7CisJ
CQlicmVhazsKKwkJY2FzZSAxOgorCQkJcWktPmRyYW1fdHlwZSA9IElOVEVMX0RSQU1fRERSMzsK
KwkJCWJyZWFrOworCQljYXNlIDI6CisJCQlxaS0+ZHJhbV90eXBlID0gSU5URUxfRFJBTV9MUERE
UjM7CisJCQlicmVhazsKKwkJY2FzZSAzOgorCQkJcWktPmRyYW1fdHlwZSA9IElOVEVMX0RSQU1f
TFBERFI0OworCQkJYnJlYWs7CisJCWRlZmF1bHQ6CisJCQlNSVNTSU5HX0NBU0UodmFsICYgMHhm
KTsKKwkJCWJyZWFrOworCQl9CisJfSBlbHNlIHsKKwkJTUlTU0lOR19DQVNFKElOVEVMX0dFTihk
ZXZfcHJpdikpOworCQlxaS0+ZHJhbV90eXBlID0gSU5URUxfRFJBTV9MUEREUjM7IC8qIENvbnNl
cnZhdGl2ZSBkZWZhdWx0ICovCiAJfQogCiAJcWktPm51bV9jaGFubmVscyA9ICh2YWwgJiAweGYw
KSA+PiA0OwotLSAKMi4yMi4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZng=
