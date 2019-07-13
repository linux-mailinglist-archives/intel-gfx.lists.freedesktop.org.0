Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 839ED6777C
	for <lists+intel-gfx@lfdr.de>; Sat, 13 Jul 2019 03:10:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D1CE16E3BF;
	Sat, 13 Jul 2019 01:10:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C39956E39C
 for <intel-gfx@lists.freedesktop.org>; Sat, 13 Jul 2019 01:09:45 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Jul 2019 18:09:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,484,1557212400"; d="scan'208";a="341850919"
Received: from dhoyan-mobl.amr.corp.intel.com (HELO ldmartin-desk1.intel.com)
 ([10.252.197.100])
 by orsmga005.jf.intel.com with ESMTP; 12 Jul 2019 18:09:45 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 12 Jul 2019 18:09:25 -0700
Message-Id: <20190713010940.17711-8-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190713010940.17711-1-lucas.demarchi@intel.com>
References: <20190713010940.17711-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 07/22] drm/i915/dmc: Load DMC on TGL
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

RnJvbTogQW51c2hhIFNyaXZhdHNhIDxhbnVzaGEuc3JpdmF0c2FAaW50ZWwuY29tPgoKQWRkIFN1
cHBvcnQgdG8gbG9hZCBETUMgdjIuMDIgb24gVEdMLgoKU2lnbmVkLW9mZi1ieTogQW51c2hhIFNy
aXZhdHNhIDxhbnVzaGEuc3JpdmF0c2FAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBMdWNhcyBE
ZSBNYXJjaGkgPGx1Y2FzLmRlbWFyY2hpQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9pbnRlbF9jc3IuYyB8IDcgKysrKysrKwogMSBmaWxlIGNoYW5nZWQsIDcgaW5zZXJ0aW9u
cygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Nzci5jIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfY3NyLmMKaW5kZXggNmVmNzQ1MzE1ODhhLi44NjViOTg3
ZGVlOGUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Nzci5jCisrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Nzci5jCkBAIC0zOSw2ICszOSwxMSBAQAogCiAj
ZGVmaW5lIEdFTjEyX0NTUl9NQVhfRldfU0laRQkJSUNMX0NTUl9NQVhfRldfU0laRQogCisjZGVm
aW5lIFRHTF9DU1JfUEFUSAkJCSJpOTE1L3RnbF9kbWNfdmVyMl8wMi5iaW4iCisjZGVmaW5lIFRH
TF9DU1JfVkVSU0lPTl9SRVFVSVJFRAlDU1JfVkVSU0lPTigyLCAyKQorI2RlZmluZSBUR0xfQ1NS
X01BWF9GV19TSVpFCQkweDYwMDAKK01PRFVMRV9GSVJNV0FSRShUR0xfQ1NSX1BBVEgpOworCiAj
ZGVmaW5lIElDTF9DU1JfUEFUSAkJCSJpOTE1L2ljbF9kbWNfdmVyMV8wNy5iaW4iCiAjZGVmaW5l
IElDTF9DU1JfVkVSU0lPTl9SRVFVSVJFRAlDU1JfVkVSU0lPTigxLCA3KQogI2RlZmluZSBJQ0xf
Q1NSX01BWF9GV19TSVpFCQkweDYwMDAKQEAgLTY3NCw2ICs2NzksOCBAQCB2b2lkIGludGVsX2Nz
cl91Y29kZV9pbml0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKIAlpbnRlbF9j
c3JfcnVudGltZV9wbV9nZXQoZGV2X3ByaXYpOwogCiAJaWYgKElOVEVMX0dFTihkZXZfcHJpdikg
Pj0gMTIpIHsKKwkJY3NyLT5md19wYXRoID0gVEdMX0NTUl9QQVRIOworCQljc3ItPnJlcXVpcmVk
X3ZlcnNpb24gPSBUR0xfQ1NSX1ZFUlNJT05fUkVRVUlSRUQ7CiAJCS8qIEFsbG93IHRvIGxvYWQg
ZncgdmlhIHBhcmFtZXRlciB1c2luZyB0aGUgbGFzdCBrbm93biBzaXplICovCiAJCWNzci0+bWF4
X2Z3X3NpemUgPSBHRU4xMl9DU1JfTUFYX0ZXX1NJWkU7CiAJfSBlbHNlIGlmIChJU19HRU4oZGV2
X3ByaXYsIDExKSkgewotLSAKMi4yMS4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZng=
