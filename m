Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 39037358E67
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Apr 2021 22:30:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 205D26E21D;
	Thu,  8 Apr 2021 20:30:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4815D6E21D
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Apr 2021 20:29:59 +0000 (UTC)
IronPort-SDR: vD4IsFdEhCWTOm0KcXtbtuo+ljgUDQVAKtgXP9cecMP+oe54nyQQnrhDBqBMBIayfVtRvTLkrc
 GsWpSo6n4Brg==
X-IronPort-AV: E=McAfee;i="6000,8403,9948"; a="193741504"
X-IronPort-AV: E=Sophos;i="5.82,207,1613462400"; d="scan'208";a="193741504"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2021 13:29:58 -0700
IronPort-SDR: LsCqv2ankWiYuDTTZq1zidOaOFGOsxa52qOE3AJv2PJ1zj5oczHFqd41uPHN3vglot+3mVL4Nt
 q4jywuVDFfOA==
X-IronPort-AV: E=Sophos;i="5.82,207,1613462400"; d="scan'208";a="520009038"
Received: from muweizha-mobl.amr.corp.intel.com (HELO josouza-mobl2.intel.com)
 ([10.254.2.85])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2021 13:29:58 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  8 Apr 2021 13:31:49 -0700
Message-Id: <20210408203150.237947-2-jose.souza@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210408203150.237947-1-jose.souza@intel.com>
References: <20210408203150.237947-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH CI 2/3] drm/i915: Do not set any power wells
 when there is no display
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
Cc: Jani Nikula <jani.nikula@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UG93ZXIgd2VsbHMgYXJlIG9ubHkgcGFydCBvZiBkaXNwbGF5IGJsb2NrIGFuZCBub3QgbmVjZXNz
YXJ5IHdoZW4KcnVubmluZyBhIGhlYWRsZXNzIGRyaXZlci4KClJldmlld2VkLWJ5OiBSYWRoYWty
aXNobmEgU3JpcGFkYSA8cmFkaGFrcmlzaG5hLnNyaXBhZGFAaW50ZWwuY29tPgpDYzogTHVjYXMg
RGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IEpvc8Op
IFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBK
YW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5jIHwgNSArKysrLQogMSBmaWxlIGNoYW5n
ZWQsIDQgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5jIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmMKaW5kZXggOTQxOWFlOGM2MTEx
Li41MzMxMWI5NzY0ZGMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZGlzcGxheV9wb3dlci5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZGlzcGxheV9wb3dlci5jCkBAIC00Njc0LDcgKzQ2NzQsMTAgQEAgaW50IGludGVsX3Bv
d2VyX2RvbWFpbnNfaW5pdChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiAJICog
VGhlIGVuYWJsaW5nIG9yZGVyIHdpbGwgYmUgZnJvbSBsb3dlciB0byBoaWdoZXIgaW5kZXhlZCB3
ZWxscywKIAkgKiB0aGUgZGlzYWJsaW5nIG9yZGVyIGlzIHJldmVyc2VkLgogCSAqLwotCWlmIChJ
U19BTERFUkxBS0VfUyhkZXZfcHJpdikgfHwgSVNfREcxKGRldl9wcml2KSkgeworCWlmICghSEFT
X0RJU1BMQVkoZGV2X3ByaXYpKSB7CisJCXBvd2VyX2RvbWFpbnMtPnBvd2VyX3dlbGxfY291bnQg
PSAwOworCQllcnIgPSAwOworCX0gZWxzZSBpZiAoSVNfQUxERVJMQUtFX1MoZGV2X3ByaXYpIHx8
IElTX0RHMShkZXZfcHJpdikpIHsKIAkJZXJyID0gc2V0X3Bvd2VyX3dlbGxzX21hc2socG93ZXJf
ZG9tYWlucywgdGdsX3Bvd2VyX3dlbGxzLAogCQkJCQkgICBCSVRfVUxMKFRHTF9ESVNQX1BXX1RD
X0NPTERfT0ZGKSk7CiAJfSBlbHNlIGlmIChJU19ST0NLRVRMQUtFKGRldl9wcml2KSkgewotLSAK
Mi4zMS4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
