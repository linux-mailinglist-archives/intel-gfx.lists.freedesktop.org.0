Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 219B067673
	for <lists+intel-gfx@lfdr.de>; Sat, 13 Jul 2019 00:16:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DAFDD6E39C;
	Fri, 12 Jul 2019 22:16:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EB9E96E39C
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Jul 2019 22:16:46 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Jul 2019 15:16:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,484,1557212400"; d="scan'208";a="318124505"
Received: from mdroper-desk.fm.intel.com ([10.105.128.126])
 by orsmga004.jf.intel.com with ESMTP; 12 Jul 2019 15:16:46 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 12 Jul 2019 15:16:41 -0700
Message-Id: <20190712221641.21031-1-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/ehl: Map MCC pins based on PHY,
 not port
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

Tm93IHRoYXQgd2UgZGlzdGluZ3Vpc2ggYmV0d2VlbiBwaHkgYW5kIHBvcnQoZGRpKSwgbWNjX3Bv
cnRfdG9fZGRjX3BpbgpzaG91bGQgdXNlIHRoZSBwaHksIG5vdCB0aGUgRERJLCBmb3IgZGV0ZXJt
aW5pbmcgRERDIHBpbnMuCgpDYzogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBp
bnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IE1hdHQgUm9wZXIgPG1hdHRoZXcuZC5yb3BlckBpbnRl
bC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9oZG1pLmMgfCAx
MSArKysrKystLS0tLQogMSBmaWxlIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKSwgNSBkZWxldGlv
bnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hk
bWkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaGRtaS5jCmluZGV4IDc3
YWYwZGZkOTNjZS4uMDk4ZWEyYzVkODMxIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2hkbWkuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2hkbWkuYwpAQCAtMjk0MywyMCArMjk0MywyMSBAQCBzdGF0aWMgdTggaWNsX3BvcnRf
dG9fZGRjX3BpbihzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsIGVudW0gcG9ydCBw
b3J0KQogCiBzdGF0aWMgdTggbWNjX3BvcnRfdG9fZGRjX3BpbihzdHJ1Y3QgZHJtX2k5MTVfcHJp
dmF0ZSAqZGV2X3ByaXYsIGVudW0gcG9ydCBwb3J0KQogeworCWVudW0gcGh5IHBoeSA9IGludGVs
X3BvcnRfdG9fcGh5KGRldl9wcml2LCBwb3J0KTsKIAl1OCBkZGNfcGluOwogCi0Jc3dpdGNoIChw
b3J0KSB7Ci0JY2FzZSBQT1JUX0E6CisJc3dpdGNoIChwaHkpIHsKKwljYXNlIFBIWV9BOgogCQlk
ZGNfcGluID0gR01CVVNfUElOXzFfQlhUOwogCQlicmVhazsKLQljYXNlIFBPUlRfQjoKKwljYXNl
IFBIWV9COgogCQlkZGNfcGluID0gR01CVVNfUElOXzJfQlhUOwogCQlicmVhazsKLQljYXNlIFBP
UlRfQzoKKwljYXNlIFBIWV9DOgogCQlkZGNfcGluID0gR01CVVNfUElOXzlfVEMxX0lDUDsKIAkJ
YnJlYWs7CiAJZGVmYXVsdDoKLQkJTUlTU0lOR19DQVNFKHBvcnQpOworCQlNSVNTSU5HX0NBU0Uo
cGh5KTsKIAkJZGRjX3BpbiA9IEdNQlVTX1BJTl8xX0JYVDsKIAkJYnJlYWs7CiAJfQotLSAKMi4y
MC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
