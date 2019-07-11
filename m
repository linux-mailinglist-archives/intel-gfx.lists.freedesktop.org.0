Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F05A64F9C
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jul 2019 02:39:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D548189C5E;
	Thu, 11 Jul 2019 00:38:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A4D1789C60
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Jul 2019 00:38:51 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Jul 2019 17:38:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,476,1557212400"; d="scan'208";a="193232389"
Received: from ldmartin-desk1.jf.intel.com (HELO ldmartin-desk1.intel.com)
 ([10.24.8.246])
 by fmsmga002.fm.intel.com with ESMTP; 10 Jul 2019 17:38:51 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 10 Jul 2019 17:38:28 -0700
Message-Id: <20190711003833.17420-16-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190711003833.17420-1-lucas.demarchi@intel.com>
References: <20190711003833.17420-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 16/21] drm/i915/gen12: MBUS B credit change
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

RnJvbTogUm9kcmlnbyBWaXZpIDxyb2RyaWdvLnZpdmlAaW50ZWwuY29tPgoKUHJldmlvdXNseSwg
dGhlIHJlY29tbWVuZGVkIEIgY3JlZGl0IGZvciBhbGwgcGxhdGZvcm1zIHdhcyAyNCAvIG51bWJl
cgpvZiBwaXBlcywgd2hpY2ggd291bGQgZ2l2ZSA2IGZvciBuZXdlciBwbGF0Zm9ybXMgd2l0aCA0
IHBpcGVzLiBIb3dldmVyIDYKaXMgbm90IGVub3VnaCBhbmQgd2UgbmVlZCAxMiBvbiB0aGVzZSBj
YXNlcy4KCldlIGFsc28gbmVlZCBhIGRpZmZlcmVudCBCVyBjcmVkaXQgZm9yIHRoZXNlIHBsYXRm
b3Jtcy4KCkNjOiBBcnRodXIgSiBSdW55YW4gPGFydGh1ci5qLnJ1bnlhbkBpbnRlbC5jb20+ClNp
Z25lZC1vZmYtYnk6IFJvZHJpZ28gVml2aSA8cm9kcmlnby52aXZpQGludGVsLmNvbT4KU2lnbmVk
LW9mZi1ieTogTHVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+ClJldmll
d2VkLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgpM
aW5rOiBodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvcGF0Y2gvbXNnaWQvMjAxOTA3
MDgyMzE2MjkuOTI5Ni0yMy1sdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20KLS0tCiBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyB8IDEwICsrKysrKysrLS0KIDEgZmls
ZSBjaGFuZ2VkLCA4IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwppbmRleCA1MDBiYjNmZDI5MzkuLjhh
YjZhZWY0YTY3YyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kaXNwbGF5LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNw
bGF5LmMKQEAgLTY0MjMsOCArNjQyMywxNCBAQCBzdGF0aWMgdm9pZCBpY2xfcGlwZV9tYnVzX2Vu
YWJsZShzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YykKIAl1MzIgdmFsOwogCiAJdmFsID0gTUJVU19E
Qk9YX0FfQ1JFRElUKDIpOwotCXZhbCB8PSBNQlVTX0RCT1hfQldfQ1JFRElUKDEpOwotCXZhbCB8
PSBNQlVTX0RCT1hfQl9DUkVESVQoOCk7CisKKwlpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSAx
MikgeworCQl2YWwgfD0gTUJVU19EQk9YX0JXX0NSRURJVCgyKTsKKwkJdmFsIHw9IE1CVVNfREJP
WF9CX0NSRURJVCgxMik7CisJfSBlbHNlIHsKKwkJdmFsIHw9IE1CVVNfREJPWF9CV19DUkVESVQo
MSk7CisJCXZhbCB8PSBNQlVTX0RCT1hfQl9DUkVESVQoOCk7CisJfQogCiAJSTkxNV9XUklURShQ
SVBFX01CVVNfREJPWF9DVEwocGlwZSksIHZhbCk7CiB9Ci0tIAoyLjIxLjAKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
