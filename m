Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D66B462C91
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Jul 2019 01:17:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 760616E05F;
	Mon,  8 Jul 2019 23:17:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F25B66E04A
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Jul 2019 23:16:58 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Jul 2019 16:16:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,468,1557212400"; d="scan'208";a="316859658"
Received: from ldmartin-desk1.jf.intel.com (HELO ldmartin-desk1.intel.com)
 ([10.24.8.246])
 by orsmga004.jf.intel.com with ESMTP; 08 Jul 2019 16:16:57 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  8 Jul 2019 16:16:26 -0700
Message-Id: <20190708231629.9296-23-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190708231629.9296-1-lucas.demarchi@intel.com>
References: <20190708231629.9296-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 22/25] drm/i915/gen12: MBUS B credit change
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
LW9mZi1ieTogTHVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+Ci0tLQog
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgfCAxMCArKysrKysr
Ky0tCiAxIGZpbGUgY2hhbmdlZCwgOCBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQoKZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKaW5kZXggOWNjZjU4
ZmY0ZGJhLi45YTVkMDRhMmFiM2UgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGlzcGxheS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZGlzcGxheS5jCkBAIC02NDIzLDggKzY0MjMsMTQgQEAgc3RhdGljIHZvaWQgaWNsX3Bp
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
