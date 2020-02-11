Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 04B95159650
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Feb 2020 18:39:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 38FE86F3F0;
	Tue, 11 Feb 2020 17:39:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 753B06F3E9
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Feb 2020 17:39:46 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Feb 2020 09:36:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,428,1574150400"; d="scan'208";a="380503877"
Received: from unknown (HELO genxfsim-desktop.iind.intel.com) ([10.223.74.178])
 by orsmga004.jf.intel.com with ESMTP; 11 Feb 2020 09:36:40 -0800
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 11 Feb 2020 22:55:26 +0530
Message-Id: <20200211172532.14287-2-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20200211172532.14287-1-anshuman.gupta@intel.com>
References: <20200211172532.14287-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 1/7] drm/i915: Iterate over pipe and skip the
 disabled one
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SXQgc2hvdWxkIG5vdCBiZSBhc3N1bWVkIHRoYXQgYSBkaXNhYmxlZCBkaXNwbGF5IHBpcGUgd2ls
bCBiZQphbHdheXMgbGFzdCB0aGUgcGlwZS4KZm9yX2VhY2hfcGlwZSgpIHNob3VsZCBpdGVyYXRl
IG92ZXIgSTkxNV9NQVhfUElQRVMgYW5kIGNoZWNrCmZvciB0aGUgZGlzYWJsZWQgcGlwZSBhbmQg
c2tpcCB0aGF0IHBpcGUgc28gdGhhdCBpdCBzaG91bGQgbm90CmluaXRpYWxpemUgdGhlIGludGVs
IGNydGMgZm9yIGFueSBkaXNhYmxlZCBwaXBlcy4KCkJlbG93IGNvbXBpbGF0aW9uIGVycm9yIHJl
cXVpcmUgdG8gYmUgaGFuZGxlIGR1ZSB0byBjaGFuZ2UgaW4KZm9yX2VhY2hfcGlwZSgpIG1hY3Jv
Lgoic3VnZ2VzdCBleHBsaWNpdCBicmFjZXMgdG8gYXZvaWQgYW1iaWd1b3VzIOKAmGVsc2XigJkg
Wy1XZXJyb3I9ZGFuZ2xpbmctZWxzZV0iCgpDYzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJq
YWxhQGxpbnV4LmludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogQW5zaHVtYW4gR3VwdGEgPGFuc2h1
bWFuLmd1cHRhQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2Rpc3BsYXkuaCB8IDUgKysrLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfaXJxLmMg
ICAgICAgICAgICAgIHwgNiArKysrLS0KIDIgZmlsZXMgY2hhbmdlZCwgNyBpbnNlcnRpb25zKCsp
LCA0IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZGlzcGxheS5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
aXNwbGF5LmgKaW5kZXggNzU0MzhhMTM2ZDU4Li43YTUzMWU0ODViNTMgMTAwNjQ0Ci0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5oCisrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5oCkBAIC0zMTMsMTAgKzMxMywxMSBA
QCBlbnVtIHBoeV9maWEgewogfTsKIAogI2RlZmluZSBmb3JfZWFjaF9waXBlKF9fZGV2X3ByaXYs
IF9fcCkgXAotCWZvciAoKF9fcCkgPSAwOyAoX19wKSA8IElOVEVMX05VTV9QSVBFUyhfX2Rldl9w
cml2KTsgKF9fcCkrKykKKwlmb3IgKChfX3ApID0gMDsgKF9fcCkgPCBJOTE1X01BWF9QSVBFUzsg
KF9fcCkrKykgXAorCQlmb3JfZWFjaF9pZigoSU5URUxfSU5GTyhfX2Rldl9wcml2KS0+cGlwZV9t
YXNrKSAmIEJJVChfX3ApKQogCiAjZGVmaW5lIGZvcl9lYWNoX3BpcGVfbWFza2VkKF9fZGV2X3By
aXYsIF9fcCwgX19tYXNrKSBcCi0JZm9yICgoX19wKSA9IDA7IChfX3ApIDwgSU5URUxfTlVNX1BJ
UEVTKF9fZGV2X3ByaXYpOyAoX19wKSsrKSBcCisJZm9yX2VhY2hfcGlwZShfX2Rldl9wcml2LCBf
X3ApIFwKIAkJZm9yX2VhY2hfaWYoKF9fbWFzaykgJiBCSVQoX19wKSkKIAogI2RlZmluZSBmb3Jf
ZWFjaF9jcHVfdHJhbnNjb2Rlcl9tYXNrZWQoX19kZXZfcHJpdiwgX190LCBfX21hc2spIFwKZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfaXJxLmMgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X2lycS5jCmluZGV4IDNkMGNkMDk2MGJkMi4uYTI2ZjJiZjFiNmVhIDEwMDY0
NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2lycS5jCisrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfaXJxLmMKQEAgLTE3MzksMTEgKzE3MzksMTIgQEAgc3RhdGljIHZvaWQg
aWJ4X2lycV9oYW5kbGVyKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwgdTMyIHBj
aF9paXIpCiAJaWYgKHBjaF9paXIgJiBTREVfUE9JU09OKQogCQlkcm1fZXJyKCZkZXZfcHJpdi0+
ZHJtLCAiUENIIHBvaXNvbiBpbnRlcnJ1cHRcbiIpOwogCi0JaWYgKHBjaF9paXIgJiBTREVfRkRJ
X01BU0spCisJaWYgKHBjaF9paXIgJiBTREVfRkRJX01BU0spIHsKIAkJZm9yX2VhY2hfcGlwZShk
ZXZfcHJpdiwgcGlwZSkKIAkJCWRybV9kYmcoJmRldl9wcml2LT5kcm0sICIgIHBpcGUgJWMgRkRJ
IElJUjogMHglMDh4XG4iLAogCQkJCXBpcGVfbmFtZShwaXBlKSwKIAkJCQlJOTE1X1JFQUQoRkRJ
X1JYX0lJUihwaXBlKSkpOworCX0KIAogCWlmIChwY2hfaWlyICYgKFNERV9UUkFOU0JfQ1JDX0RP
TkUgfCBTREVfVFJBTlNBX0NSQ19ET05FKSkKIAkJZHJtX2RiZygmZGV2X3ByaXYtPmRybSwgIlBD
SCB0cmFuc2NvZGVyIENSQyBkb25lIGludGVycnVwdFxuIik7CkBAIC0xODIzLDExICsxODI0LDEy
IEBAIHN0YXRpYyB2b2lkIGNwdF9pcnFfaGFuZGxlcihzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAq
ZGV2X3ByaXYsIHUzMiBwY2hfaWlyKQogCWlmIChwY2hfaWlyICYgU0RFX0FVRElPX0NQX0NIR19D
UFQpCiAJCWRybV9kYmcoJmRldl9wcml2LT5kcm0sICJBdWRpbyBDUCBjaGFuZ2UgaW50ZXJydXB0
XG4iKTsKIAotCWlmIChwY2hfaWlyICYgU0RFX0ZESV9NQVNLX0NQVCkKKwlpZiAocGNoX2lpciAm
IFNERV9GRElfTUFTS19DUFQpIHsKIAkJZm9yX2VhY2hfcGlwZShkZXZfcHJpdiwgcGlwZSkKIAkJ
CWRybV9kYmcoJmRldl9wcml2LT5kcm0sICIgIHBpcGUgJWMgRkRJIElJUjogMHglMDh4XG4iLAog
CQkJCXBpcGVfbmFtZShwaXBlKSwKIAkJCQlJOTE1X1JFQUQoRkRJX1JYX0lJUihwaXBlKSkpOwor
CX0KIAogCWlmIChwY2hfaWlyICYgU0RFX0VSUk9SX0NQVCkKIAkJY3B0X3NlcnJfaW50X2hhbmRs
ZXIoZGV2X3ByaXYpOwotLSAKMi4yNC4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZngK
