Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AE9D5566C
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Jun 2019 19:55:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 975B86E1E8;
	Tue, 25 Jun 2019 17:55:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5BC836E1CE
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Jun 2019 17:55:07 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Jun 2019 10:55:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,416,1557212400"; d="scan'208";a="360469346"
Received: from mvaitla-mobl.amr.corp.intel.com (HELO ldmartin-desk1.intel.com)
 ([10.251.139.12])
 by fmsmga006.fm.intel.com with ESMTP; 25 Jun 2019 10:55:07 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 25 Jun 2019 10:54:34 -0700
Message-Id: <20190625175437.14840-26-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190625175437.14840-1-lucas.demarchi@intel.com>
References: <20190625175437.14840-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 25/28] drm/i915/gen12: MBUS B credit change
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

RnJvbTogUm9kcmlnbyBWaXZpIDxyb2RyaWdvLnZpdmlAaW50ZWwuY29tPgoKUHJldmlvdXNseSwg
dGhlIHJlY29tbWVuZGVkIEIgY3JlZGl0IGZvciBhbGwgcGxhdGZvcm1zIHdhcyAyNCAvIG51bWJl
cgpvZiBwaXBlcywgd2hpY2ggd291bGQgZ2l2ZSA2IGZvciBuZXdlciBwbGF0Zm9ybXMgd2l0aCA0
IHBpcGVzLiBIb3dldmVyIDYKaXMgbm90IGVub3VnaCBhbmQgd2UgbmVlZCAxMiBvbiB0aGVzZSBj
YXNlcy4KCldlIGFsc28gbmVlZCBhIGRpZmZlcmVudCBCVyBjcmVkaXQgZm9yIHRoZXNlIHBsYXRm
b3Jtcy4KCkNjOiBBcnRodXIgSiBSdW55YW4gPGFydGh1ci5qLnJ1bnlhbkBpbnRlbC5jb20+ClNp
Z25lZC1vZmYtYnk6IFJvZHJpZ28gVml2aSA8cm9kcmlnby52aXZpQGludGVsLmNvbT4KU2lnbmVk
LW9mZi1ieTogTHVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+Ci0tLQog
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgfCAxMCArKysrKysr
Ky0tCiAxIGZpbGUgY2hhbmdlZCwgOCBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQoKZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKaW5kZXggYWRiY2Nl
M2IwNWIwLi4xZThiZTkzNDViNGEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGlzcGxheS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZGlzcGxheS5jCkBAIC02MzEwLDggKzYzMTAsMTQgQEAgc3RhdGljIHZvaWQgaWNsX3Bp
cGVfbWJ1c19lbmFibGUoc3RydWN0IGludGVsX2NydGMgKmNydGMpCiAJdTMyIHZhbDsKIAogCXZh
bCA9IE1CVVNfREJPWF9BX0NSRURJVCgyKTsKLQl2YWwgfD0gTUJVU19EQk9YX0JXX0NSRURJVCgx
KTsKLQl2YWwgfD0gTUJVU19EQk9YX0JfQ1JFRElUKDgpOworCisJaWYgKElOVEVMX0dFTihkZXZf
cHJpdikgPj0gMTIpIHsKKwkJdmFsIHw9IE1CVVNfREJPWF9CV19DUkVESVQoMik7CisJCXZhbCB8
PSBNQlVTX0RCT1hfQl9DUkVESVQoMTIpOworCX0gZWxzZSB7CisJCXZhbCB8PSBNQlVTX0RCT1hf
QldfQ1JFRElUKDEpOworCQl2YWwgfD0gTUJVU19EQk9YX0JfQ1JFRElUKDgpOworCX0KIAogCUk5
MTVfV1JJVEUoUElQRV9NQlVTX0RCT1hfQ1RMKHBpcGUpLCB2YWwpOwogfQotLSAKMi4yMS4wCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
