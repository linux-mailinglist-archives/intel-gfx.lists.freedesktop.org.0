Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 911CC31A476
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Feb 2021 19:20:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 550CE6EEA6;
	Fri, 12 Feb 2021 18:20:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2ADCE6E1D8
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Feb 2021 18:20:43 +0000 (UTC)
IronPort-SDR: aI8VWkrwuk9BYdZjZcapA7jnP3e/ju9zDdEj94qs7WnPo78KVtDRo8dzZ1lqZlNJOf0UMQnz6W
 fFVbZx50mH9g==
X-IronPort-AV: E=McAfee;i="6000,8403,9893"; a="161599187"
X-IronPort-AV: E=Sophos;i="5.81,174,1610438400"; d="scan'208";a="161599187"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2021 10:20:39 -0800
IronPort-SDR: ZGiW8cuzpjKfu6z13MTLeNl7yq4ywVl7V0hg0bGYC70sGF+xoid4yHjnY9Ut4hUJWYK+nNu3/8
 Egr94HRZE9ww==
X-IronPort-AV: E=Sophos;i="5.81,174,1610438400"; d="scan'208";a="491231837"
Received: from sarcot-mobl1.amr.corp.intel.com (HELO josouza-mobl2.intel.com)
 ([10.254.56.203])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2021 10:20:37 -0800
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 12 Feb 2021 10:21:59 -0800
Message-Id: <20210212182201.155043-1-jose.souza@intel.com>
X-Mailer: git-send-email 2.30.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/3] drm/i915/display/adl_s: Fix
 dpclka_cfgcr0_clk_off mapping
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhlIGNmZ2NyMC8xX2Nsa19vZmYgbWFwcGluZyBpcyB3cm9uZyBmb3IgYWRsLXMgd2hhdCBjb3Vs
ZCBjYXVzZQp0aGUgd3JvbmcgY2xvY2sgYmVpbmcgZGlzYWJsZWQgYW5kIGxlYXZpbmcgYSBub3Qg
bmVlZGVkIGNsb2NrCnJ1bm5pbmcgY29uc3VtaW5nIG1vcmUgcG93ZXIgdGhhbiBuZWVkZWQuCgpC
c3BlYzogNTAyODcKQnNwZWM6IDUzODEyCkJzcGVjOiA1MzcyMwpGaXhlczogZDZkMmJjOTk2ZTQ1
ICgiZHJtL2k5MTUvYWRsX3M6IENvbmZpZ3VyZSBQb3J0IGNsb2NrIHJlZ2lzdGVycyBmb3IgQURM
LVMiKQpDYzogQWRpdHlhIFN3YXJ1cCA8YWRpdHlhLnN3YXJ1cEBpbnRlbC5jb20+CkNjOiBMdWNh
cyBEZSBNYXJjaGkgPGx1Y2FzLmRlbWFyY2hpQGludGVsLmNvbT4KQ2M6IE1hdHQgUm9wZXIgPG1h
dHRoZXcuZC5yb3BlckBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IEpvc8OpIFJvYmVydG8gZGUg
U291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGRpLmMgfCAgNCArKystCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3Jl
Zy5oICAgICAgICAgIHwgMTIgKysrKysrKysrKysrCiAyIGZpbGVzIGNoYW5nZWQsIDE1IGluc2Vy
dGlvbnMoKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2RkaS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kZGkuYwppbmRleCAyZDY5MDZmNjk5NWYuLjc2MzFlMDgwMzQ5ZCAxMDA2NDQKLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYworKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jCkBAIC0xNTg1LDcgKzE1ODUsOSBAQCBoc3dfc2V0
X3NpZ25hbF9sZXZlbHMoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwKIHN0YXRpYyB1MzIgaWNs
X2RwY2xrYV9jZmdjcjBfY2xrX29mZihzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYs
CiAJCQkJICAgICBlbnVtIHBoeSBwaHkpCiB7Ci0JaWYgKElTX1JPQ0tFVExBS0UoZGV2X3ByaXYp
KSB7CisJaWYgKElTX0FMREVSTEFLRV9TKGRldl9wcml2KSkgeworCQlyZXR1cm4gQURMU19EUENM
S0FfQ0ZHQ1JfRERJX0NMS19PRkYocGh5KTsKKwl9IGVsc2UgaWYgKElTX1JPQ0tFVExBS0UoZGV2
X3ByaXYpKSB7CiAJCXJldHVybiBSS0xfRFBDTEtBX0NGR0NSMF9ERElfQ0xLX09GRihwaHkpOwog
CX0gZWxzZSBpZiAoaW50ZWxfcGh5X2lzX2NvbWJvKGRldl9wcml2LCBwaHkpKSB7CiAJCXJldHVy
biBJQ0xfRFBDTEtBX0NGR0NSMF9ERElfQ0xLX09GRihwaHkpOwpkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVn
LmgKaW5kZXggMjI0YWQ4OTdhZjM0Li43YzY5YjUwY2NjNWMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9y
ZWcuaApAQCAtMTA0MTYsNiArMTA0MTYsMTggQEAgZW51bSBza2xfcG93ZXJfZ2F0ZSB7CiAJCQkJ
CQkJQURMU19EUENMS0FfRERJSl9TRUxfTUFTSywgXAogCQkJCQkJCUFETFNfRFBDTEtBX0RESUtf
U0VMX01BU0spCiAKKyNkZWZpbmUgX0FETFNfRFBDTEtBX0RESUFfQ0xLX09GRgkJCVJFR19CSVQo
MTApCisjZGVmaW5lIF9BRExTX0RQQ0xLQV9ERElCX0NMS19PRkYJCQlSRUdfQklUKDExKQorI2Rl
ZmluZSBfQURMU19EUENMS0FfRERJSV9DTEtfT0ZGCQkJUkVHX0JJVCgyNCkKKyNkZWZpbmUgX0FE
TFNfRFBDTEtBX0RESUpfQ0xLX09GRgkJCVJFR19CSVQoNCkKKyNkZWZpbmUgX0FETFNfRFBDTEtB
X0RESUtfQ0xLX09GRgkJCVJFR19CSVQoNSkKKyNkZWZpbmUgQURMU19EUENMS0FfQ0ZHQ1JfRERJ
X0NMS19PRkYocGh5KQkJX1BJQ0soKHBoeSksIFwKKwkJCQkJCQkgICAgICBfQURMU19EUENMS0Ff
RERJQV9DTEtfT0ZGLCBcCisJCQkJCQkJICAgICAgX0FETFNfRFBDTEtBX0RESUJfQ0xLX09GRiwg
XAorCQkJCQkJCSAgICAgIF9BRExTX0RQQ0xLQV9ERElJX0NMS19PRkYsIFwKKwkJCQkJCQkgICAg
ICBfQURMU19EUENMS0FfRERJSl9DTEtfT0ZGLCBcCisJCQkJCQkJICAgICAgX0FETFNfRFBDTEtB
X0RESUtfQ0xLX09GRikKKwogLyogQ05MIFBMTCAqLwogI2RlZmluZSBEUExMMF9FTkFCTEUJCTB4
NDYwMTAKICNkZWZpbmUgRFBMTDFfRU5BQkxFCQkweDQ2MDE0Ci0tIAoyLjMwLjEKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5n
IGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
