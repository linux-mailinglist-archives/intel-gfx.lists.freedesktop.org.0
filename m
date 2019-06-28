Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DEA9B59DE5
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Jun 2019 16:37:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7C4FE6E93B;
	Fri, 28 Jun 2019 14:37:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 179766E938
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Jun 2019 14:36:55 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Jun 2019 07:36:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,428,1557212400"; d="scan'208";a="165079391"
Received: from ideak-desk.fi.intel.com ([10.237.68.142])
 by orsmga003.jf.intel.com with ESMTP; 28 Jun 2019 07:36:53 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 28 Jun 2019 17:36:18 +0300
Message-Id: <20190628143635.22066-7-imre.deak@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190628143635.22066-1-imre.deak@intel.com>
References: <20190628143635.22066-1-imre.deak@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 06/23] drm/i915: Fix the TBT AUX power well
 enabling
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

Rml4IHRoZSBtYXBwaW5nIGZyb20gYSBUQlQgQVVYIHBvd2VyIHdlbGwgaW5kZXggdG8gdGhlIERQ
X0FVWF9DSF9DVEwKcmVnaXN0ZXIuCgpGaXhlczogYzczNzVkOTU0MmYxICgiZHJtL2k5MTU6IENv
bmZpZ3VyZSBBVVhfQ0hfQ1RMIHdoZW4gZW5hYmxpbmcgdGhlIEFVWCBwb3dlciBkb21haW4iKQpD
YzogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+CkNjOiBSb2Ry
aWdvIFZpdmkgPHJvZHJpZ28udml2aUBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IEltcmUgRGVh
ayA8aW1yZS5kZWFrQGludGVsLmNvbT4KUmV2aWV3ZWQtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291
emEgPGpvc2Uuc291emFAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZGlzcGxheV9wb3dlci5jIHwgMTEgKysrKysrKysrLS0KIDEgZmlsZSBjaGFuZ2Vk
LCA5IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmMgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93ZXIuYwppbmRleCAyMTc3ODdkMTA3MTgu
LmZkMTNjZDY4ZGVhZSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kaXNwbGF5X3Bvd2VyLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kaXNwbGF5X3Bvd2VyLmMKQEAgLTQ0NCwxNiArNDQ0LDIzIEBAIGljbF9jb21ib19waHlf
YXV4X3Bvd2VyX3dlbGxfZGlzYWJsZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYs
CiAjZGVmaW5lIElDTF9BVVhfUFdfVE9fQ0gocHdfaWR4KQlcCiAJKChwd19pZHgpIC0gSUNMX1BX
X0NUTF9JRFhfQVVYX0EgKyBBVVhfQ0hfQSkKIAorI2RlZmluZSBJQ0xfVEJUX0FVWF9QV19UT19D
SChwd19pZHgpCVwKKwkoKHB3X2lkeCkgLSBJQ0xfUFdfQ1RMX0lEWF9BVVhfVEJUMSArIEFVWF9D
SF9DKQorCiBzdGF0aWMgdm9pZAogaWNsX3RjX3BoeV9hdXhfcG93ZXJfd2VsbF9lbmFibGUoc3Ry
dWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAogCQkJCSBzdHJ1Y3QgaTkxNV9wb3dlcl93
ZWxsICpwb3dlcl93ZWxsKQogewotCWVudW0gYXV4X2NoIGF1eF9jaCA9IElDTF9BVVhfUFdfVE9f
Q0gocG93ZXJfd2VsbC0+ZGVzYy0+aHN3LmlkeCk7CisJaW50IHB3X2lkeCA9IHBvd2VyX3dlbGwt
PmRlc2MtPmhzdy5pZHg7CisJYm9vbCBpc190YnQgPSBwb3dlcl93ZWxsLT5kZXNjLT5oc3cuaXNf
dGNfdGJ0OworCWVudW0gYXV4X2NoIGF1eF9jaDsKIAl1MzIgdmFsOwogCisJYXV4X2NoID0gaXNf
dGJ0ID8gSUNMX1RCVF9BVVhfUFdfVE9fQ0gocHdfaWR4KSA6CisJCQkgIElDTF9BVVhfUFdfVE9f
Q0gocHdfaWR4KTsKIAl2YWwgPSBJOTE1X1JFQUQoRFBfQVVYX0NIX0NUTChhdXhfY2gpKTsKIAl2
YWwgJj0gfkRQX0FVWF9DSF9DVExfVEJUX0lPOwotCWlmIChwb3dlcl93ZWxsLT5kZXNjLT5oc3cu
aXNfdGNfdGJ0KQorCWlmIChpc190YnQpCiAJCXZhbCB8PSBEUF9BVVhfQ0hfQ1RMX1RCVF9JTzsK
IAlJOTE1X1dSSVRFKERQX0FVWF9DSF9DVEwoYXV4X2NoKSwgdmFsKTsKIAotLSAKMi4xNy4xCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
