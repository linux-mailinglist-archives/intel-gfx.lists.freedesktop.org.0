Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A7C5E62C8A
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Jul 2019 01:17:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 80A746E053;
	Mon,  8 Jul 2019 23:17:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CE2146E045
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Jul 2019 23:16:58 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Jul 2019 16:16:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,468,1557212400"; d="scan'208";a="316859655"
Received: from ldmartin-desk1.jf.intel.com (HELO ldmartin-desk1.intel.com)
 ([10.24.8.246])
 by orsmga004.jf.intel.com with ESMTP; 08 Jul 2019 16:16:57 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  8 Jul 2019 16:16:25 -0700
Message-Id: <20190708231629.9296-22-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190708231629.9296-1-lucas.demarchi@intel.com>
References: <20190708231629.9296-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 21/25] drm/i915/tgl: apply Display WA #1178
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
YXJjaGkgPGx1Y2FzLmRlbWFyY2hpQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93ZXIuYyB8IDExICsrKysrKysrLS0tCiBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oICAgICAgICAgICAgICAgICAgICB8ICA0ICsrKy0KIDIg
ZmlsZXMgY2hhbmdlZCwgMTEgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKCmRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93ZXIuYyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5jCmluZGV4
IDQ1NWY5YWFiMTg4ZC4uYmUzZDRkMWVlY2UyIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93ZXIuYworKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93ZXIuYwpAQCAtNDUzLDYgKzQ1Myw3IEBAIGlj
bF9jb21ib19waHlfYXV4X3Bvd2VyX3dlbGxfZW5hYmxlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRl
ICpkZXZfcHJpdiwKIAlpbnQgcHdfaWR4ID0gcG93ZXJfd2VsbC0+ZGVzYy0+aHN3LmlkeDsKIAll
bnVtIHBvcnQgcG9ydCA9IElDTF9BVVhfUFdfVE9fUE9SVChwd19pZHgpOwogCXUzMiB2YWw7CisJ
aW50IHdhX2lkeF9tYXg7CiAKIAl2YWwgPSBJOTE1X1JFQUQocmVncy0+ZHJpdmVyKTsKIAlJOTE1
X1dSSVRFKHJlZ3MtPmRyaXZlciwgdmFsIHwgSFNXX1BXUl9XRUxMX0NUTF9SRVEocHdfaWR4KSk7
CkBAIC00NjIsOSArNDYzLDEzIEBAIGljbF9jb21ib19waHlfYXV4X3Bvd2VyX3dlbGxfZW5hYmxl
KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKIAogCWhzd193YWl0X2Zvcl9wb3dl
cl93ZWxsX2VuYWJsZShkZXZfcHJpdiwgcG93ZXJfd2VsbCk7CiAKLQkvKiBEaXNwbGF5IFdBICMx
MTc4OiBpY2wgKi8KLQlpZiAoSVNfSUNFTEFLRShkZXZfcHJpdikgJiYKLQkgICAgcHdfaWR4ID49
IElDTF9QV19DVExfSURYX0FVWF9BICYmIHB3X2lkeCA8PSBJQ0xfUFdfQ1RMX0lEWF9BVVhfQiAm
JgorCS8qIERpc3BsYXkgV0EgIzExNzg6IGljbCwgdGdsICovCisJaWYgKElTX1RJR0VSTEFLRShk
ZXZfcHJpdikpCisJCXdhX2lkeF9tYXggPSBJQ0xfUFdfQ1RMX0lEWF9BVVhfQzsKKwllbHNlCisJ
CXdhX2lkeF9tYXggPSBJQ0xfUFdfQ1RMX0lEWF9BVVhfQjsKKworCWlmIChwd19pZHggPj0gSUNM
X1BXX0NUTF9JRFhfQVVYX0EgJiYgcHdfaWR4IDw9IHdhX2lkeF9tYXggJiYKIAkgICAgIWludGVs
X2Jpb3NfaXNfcG9ydF9lZHAoZGV2X3ByaXYsIHBvcnQpKSB7CiAJCXZhbCA9IEk5MTVfUkVBRChJ
Q0xfQVVYX0FOQU9WUkQxKHB3X2lkeCkpOwogCQl2YWwgfD0gSUNMX0FVWF9BTkFPVlJEMV9FTkFC
TEUgfCBJQ0xfQVVYX0FOQU9WUkQxX0xET19CWVBBU1M7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X3JlZy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaApp
bmRleCBjY2ZiOTVlMmFhMDMuLmZiY2M3OTgxYzhjNCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9yZWcuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5o
CkBAIC05MjQ2LDkgKzkyNDYsMTEgQEAgZW51bSBza2xfcG93ZXJfZ2F0ZSB7CiAjZGVmaW5lIF9J
Q0xfQVVYX1JFR19JRFgocHdfaWR4KQkoKHB3X2lkeCkgLSBJQ0xfUFdfQ1RMX0lEWF9BVVhfQSkK
ICNkZWZpbmUgX0lDTF9BVVhfQU5BT1ZSRDFfQQkJMHgxNjIzOTgKICNkZWZpbmUgX0lDTF9BVVhf
QU5BT1ZSRDFfQgkJMHg2QzM5OAorI2RlZmluZSBfVEdMX0FVWF9BTkFPVlJEMV9DCQkweDE2MDM5
OAogI2RlZmluZSBJQ0xfQVVYX0FOQU9WUkQxKHB3X2lkeCkJX01NSU8oX1BJQ0soX0lDTF9BVVhf
UkVHX0lEWChwd19pZHgpLCBcCiAJCQkJCQkgICAgX0lDTF9BVVhfQU5BT1ZSRDFfQSwgXAotCQkJ
CQkJICAgIF9JQ0xfQVVYX0FOQU9WUkQxX0IpKQorCQkJCQkJICAgIF9JQ0xfQVVYX0FOQU9WUkQx
X0IsIFwKKwkJCQkJCSAgICBfVEdMX0FVWF9BTkFPVlJEMV9DKSkKICNkZWZpbmUgICBJQ0xfQVVY
X0FOQU9WUkQxX0xET19CWVBBU1MJKDEgPDwgNykKICNkZWZpbmUgICBJQ0xfQVVYX0FOQU9WUkQx
X0VOQUJMRQkoMSA8PCAwKQogCi0tIAoyLjIxLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeA==
