Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CEC465F26
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jul 2019 19:56:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 554846E26D;
	Thu, 11 Jul 2019 17:56:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4D3026E284
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Jul 2019 17:55:54 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Jul 2019 10:55:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,479,1557212400"; d="scan'208";a="156894697"
Received: from ldmartin-desk1.jf.intel.com (HELO ldmartin-desk1.intel.com)
 ([10.24.8.246])
 by orsmga007.jf.intel.com with ESMTP; 11 Jul 2019 10:55:52 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 11 Jul 2019 10:31:09 -0700
Message-Id: <20190711173115.28296-16-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190711173115.28296-1-lucas.demarchi@intel.com>
References: <20190711173115.28296-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 15/21] drm/i915/tgl: apply Display WA #1178
 to fix type C dongles
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

QWRkIHBvcnQgQyB0byB3b3JrYXJvdW5kIHRvIGNvdmVyIFRpZ2VyIExha2UuCgpDYzogUm9kcmln
byBWaXZpIDxyb2RyaWdvLnZpdmlAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBMdWNhcyBEZSBN
YXJjaGkgPGx1Y2FzLmRlbWFyY2hpQGludGVsLmNvbT4KUmV2aWV3ZWQtYnk6IFJvZHJpZ28gVml2
aSA8cm9kcmlnby52aXZpQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2Rpc3BsYXlfcG93ZXIuYyB8IDcgKysrKysrKwogZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9yZWcuaCAgICAgICAgICAgICAgICAgICAgfCA0ICsrKy0KIDIgZmlsZXMgY2hhbmdl
ZCwgMTAgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5jIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmMKaW5kZXggMTJhYTljZTA4ZDk1
Li4wNjE0MzI4NjJjN2QgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZGlzcGxheV9wb3dlci5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZGlzcGxheV9wb3dlci5jCkBAIC00NTMsNiArNDUzLDcgQEAgaWNsX2NvbWJvX3BoeV9h
dXhfcG93ZXJfd2VsbF9lbmFibGUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAog
CWludCBwd19pZHggPSBwb3dlcl93ZWxsLT5kZXNjLT5oc3cuaWR4OwogCWVudW0gcGh5IHBoeSA9
IElDTF9BVVhfUFdfVE9fUEhZKHB3X2lkeCk7CiAJdTMyIHZhbDsKKwlpbnQgd2FfaWR4X21heDsK
IAogCXZhbCA9IEk5MTVfUkVBRChyZWdzLT5kcml2ZXIpOwogCUk5MTVfV1JJVEUocmVncy0+ZHJp
dmVyLCB2YWwgfCBIU1dfUFdSX1dFTExfQ1RMX1JFUShwd19pZHgpKTsKQEAgLTQ2Miw2ICs0NjMs
MTIgQEAgaWNsX2NvbWJvX3BoeV9hdXhfcG93ZXJfd2VsbF9lbmFibGUoc3RydWN0IGRybV9pOTE1
X3ByaXZhdGUgKmRldl9wcml2LAogCiAJaHN3X3dhaXRfZm9yX3Bvd2VyX3dlbGxfZW5hYmxlKGRl
dl9wcml2LCBwb3dlcl93ZWxsKTsKIAorCS8qIERpc3BsYXkgV0EgIzExNzg6IGljbCwgdGdsICov
CisJaWYgKElTX1RJR0VSTEFLRShkZXZfcHJpdikpCisJCXdhX2lkeF9tYXggPSBJQ0xfUFdfQ1RM
X0lEWF9BVVhfQzsKKwllbHNlCisJCXdhX2lkeF9tYXggPSBJQ0xfUFdfQ1RMX0lEWF9BVVhfQjsK
KwogCS8qIERpc3BsYXkgV0EgIzExNzg6IGljbCAqLwogCWlmIChJU19JQ0VMQUtFKGRldl9wcml2
KSAmJgogCSAgICBwd19pZHggPj0gSUNMX1BXX0NUTF9JRFhfQVVYX0EgJiYgcHdfaWR4IDw9IElD
TF9QV19DVExfSURYX0FVWF9CICYmCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X3JlZy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAppbmRleCBjYTcwYmU0
MGE0NjcuLmFkOTZjNWI0OTc1YyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9yZWcuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCkBAIC05MjQ0LDkg
KzkyNDQsMTEgQEAgZW51bSBza2xfcG93ZXJfZ2F0ZSB7CiAjZGVmaW5lIF9JQ0xfQVVYX1JFR19J
RFgocHdfaWR4KQkoKHB3X2lkeCkgLSBJQ0xfUFdfQ1RMX0lEWF9BVVhfQSkKICNkZWZpbmUgX0lD
TF9BVVhfQU5BT1ZSRDFfQQkJMHgxNjIzOTgKICNkZWZpbmUgX0lDTF9BVVhfQU5BT1ZSRDFfQgkJ
MHg2QzM5OAorI2RlZmluZSBfVEdMX0FVWF9BTkFPVlJEMV9DCQkweDE2MDM5OAogI2RlZmluZSBJ
Q0xfQVVYX0FOQU9WUkQxKHB3X2lkeCkJX01NSU8oX1BJQ0soX0lDTF9BVVhfUkVHX0lEWChwd19p
ZHgpLCBcCiAJCQkJCQkgICAgX0lDTF9BVVhfQU5BT1ZSRDFfQSwgXAotCQkJCQkJICAgIF9JQ0xf
QVVYX0FOQU9WUkQxX0IpKQorCQkJCQkJICAgIF9JQ0xfQVVYX0FOQU9WUkQxX0IsIFwKKwkJCQkJ
CSAgICBfVEdMX0FVWF9BTkFPVlJEMV9DKSkKICNkZWZpbmUgICBJQ0xfQVVYX0FOQU9WUkQxX0xE
T19CWVBBU1MJKDEgPDwgNykKICNkZWZpbmUgICBJQ0xfQVVYX0FOQU9WUkQxX0VOQUJMRQkoMSA8
PCAwKQogCi0tIAoyLjIxLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeA==
