Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 78A9834B28
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Jun 2019 16:59:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C6E3C8982D;
	Tue,  4 Jun 2019 14:59:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 848308982D
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Jun 2019 14:59:23 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Jun 2019 07:59:23 -0700
X-ExtLoop1: 1
Received: from ideak-desk.fi.intel.com ([10.237.72.204])
 by orsmga003.jf.intel.com with ESMTP; 04 Jun 2019 07:59:22 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  4 Jun 2019 17:58:09 +0300
Message-Id: <20190604145826.16424-7-imre.deak@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190604145826.16424-1-imre.deak@intel.com>
References: <20190604145826.16424-1-imre.deak@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 06/23] drm/i915: Fix the TBT AUX power well
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
ayA8aW1yZS5kZWFrQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9k
aXNwbGF5X3Bvd2VyLmMgfCAxMSArKysrKysrKystLQogMSBmaWxlIGNoYW5nZWQsIDkgaW5zZXJ0
aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kaXNw
bGF5X3Bvd2VyLmMKaW5kZXggMjQ5YTVmYTU1ZGY2Li4xNGNmMDRiZjBiZjQgMTAwNjQ0Ci0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Rpc3BsYXlfcG93ZXIuYworKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmMKQEAgLTQ0MiwxNiArNDQyLDIzIEBA
IGljbF9jb21ib19waHlfYXV4X3Bvd2VyX3dlbGxfZGlzYWJsZShzdHJ1Y3QgZHJtX2k5MTVfcHJp
dmF0ZSAqZGV2X3ByaXYsCiAjZGVmaW5lIElDTF9BVVhfUFdfVE9fQ0gocHdfaWR4KQlcCiAJKChw
d19pZHgpIC0gSUNMX1BXX0NUTF9JRFhfQVVYX0EgKyBBVVhfQ0hfQSkKIAorI2RlZmluZSBJQ0xf
VEJUX0FVWF9QV19UT19DSChwd19pZHgpCVwKKwkoKHB3X2lkeCkgLSBJQ0xfUFdfQ1RMX0lEWF9B
VVhfVEJUMSArIEFVWF9DSF9DKQorCiBzdGF0aWMgdm9pZAogaWNsX3RjX3BoeV9hdXhfcG93ZXJf
d2VsbF9lbmFibGUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAogCQkJCSBzdHJ1
Y3QgaTkxNV9wb3dlcl93ZWxsICpwb3dlcl93ZWxsKQogewotCWVudW0gYXV4X2NoIGF1eF9jaCA9
IElDTF9BVVhfUFdfVE9fQ0gocG93ZXJfd2VsbC0+ZGVzYy0+aHN3LmlkeCk7CisJaW50IHB3X2lk
eCA9IHBvd2VyX3dlbGwtPmRlc2MtPmhzdy5pZHg7CisJYm9vbCBpc190YnQgPSBwb3dlcl93ZWxs
LT5kZXNjLT5oc3cuaXNfdGNfdGJ0OworCWVudW0gYXV4X2NoIGF1eF9jaDsKIAl1MzIgdmFsOwog
CisJYXV4X2NoID0gaXNfdGJ0ID8gSUNMX1RCVF9BVVhfUFdfVE9fQ0gocHdfaWR4KSA6CisJCQkg
IElDTF9BVVhfUFdfVE9fQ0gocHdfaWR4KTsKIAl2YWwgPSBJOTE1X1JFQUQoRFBfQVVYX0NIX0NU
TChhdXhfY2gpKTsKIAl2YWwgJj0gfkRQX0FVWF9DSF9DVExfVEJUX0lPOwotCWlmIChwb3dlcl93
ZWxsLT5kZXNjLT5oc3cuaXNfdGNfdGJ0KQorCWlmIChpc190YnQpCiAJCXZhbCB8PSBEUF9BVVhf
Q0hfQ1RMX1RCVF9JTzsKIAlJOTE1X1dSSVRFKERQX0FVWF9DSF9DVEwoYXV4X2NoKSwgdmFsKTsK
IAotLSAKMi4xNy4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
Zng=
