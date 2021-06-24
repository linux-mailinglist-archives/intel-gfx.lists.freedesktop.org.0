Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AC37F3B2A64
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Jun 2021 10:31:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 02EB66EB0E;
	Thu, 24 Jun 2021 08:31:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 01EC46EB0E
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Jun 2021 08:31:26 +0000 (UTC)
IronPort-SDR: z4YXXbcKCIVvcCqL0IsNjmA1VYvOegG8lh83WNhU0qb/fWqvPiEPSU+NHQvQD1MCSB5pGjrWcR
 2muxmiCRjG1w==
X-IronPort-AV: E=McAfee;i="6200,9189,10024"; a="194726213"
X-IronPort-AV: E=Sophos;i="5.83,296,1616482800"; d="scan'208";a="194726213"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2021 01:31:26 -0700
IronPort-SDR: YyeBTQbDBCqCJCMRiBu/mZPcnA5YNyHOhwcm1HwjDIEgmJOVty0hcJ8zSm6ZfUsSXYGLp66LSW
 SZ5Il3FQb4xw==
X-IronPort-AV: E=Sophos;i="5.83,296,1616482800"; d="scan'208";a="423999187"
Received: from ryanmcla-mobl.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.213.220.55])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2021 01:31:23 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 24 Jun 2021 09:31:13 +0100
Message-Id: <20210624083113.365039-2-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.3
In-Reply-To: <20210624083113.365039-1-matthew.auld@intel.com>
References: <20210624083113.365039-1-matthew.auld@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/dg1: Double memory bandwidth
 available
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

RnJvbTogQ2xpbnQgVGF5bG9yIDxjbGludG9uLmEudGF5bG9yQGludGVsLmNvbT4KClVzZSBNQ0hC
QVIgR2Vhcl90eXBlIGluZm9ybWF0aW9uIHRvIGNvbXB1dGUgbWVtb3J5IGJhbmR3aWR0aCBhdmFp
bGFibGUKZHVyaW5nIE1DSEJBUiBjYWxjdWxhdGlvbnMuCgpUZXN0ZWQtYnk6IFN3YXRpIFNoYXJt
YSA8c3dhdGkyLnNoYXJtYUBpbnRlbC5jb20+CkNjOiBMdWNhcyBEZSBNYXJjaGkgPGx1Y2FzLmRl
bWFyY2hpQGludGVsLmNvbT4KQ2M6IFN3YXRpIFNoYXJtYSA8c3dhdGkyLnNoYXJtYUBpbnRlbC5j
b20+CkNjOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgpT
aWduZWQtb2ZmLWJ5OiBDbGludCBUYXlsb3IgPGNsaW50b24uYS50YXlsb3JAaW50ZWwuY29tPgpT
aWduZWQtb2ZmLWJ5OiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPgpTaWduZWQt
b2ZmLWJ5OiBNYXR0aGV3IEF1bGQgPG1hdHRoZXcuYXVsZEBpbnRlbC5jb20+Ci0tLQogZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9idy5jIHwgOCArKysrKysrKwogMSBmaWxlIGNo
YW5nZWQsIDggaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfYncuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
YncuYwppbmRleCA2MmE3MGYzNjRmMmIuLjYwM2JjMzY2OWUzZCAxMDA2NDQKLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9idy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfYncuYwpAQCAtNDEsNiArNDEsOSBAQCBzdHJ1Y3QgaW50ZWxfcWd2
X2luZm8gewogI2RlZmluZSAgREcxX0RSQU1fVF9SUF9NQVNLICgweDdGIDw8IDApCiAjZGVmaW5l
ICBERzFfRFJBTV9UX1JQX1NISUZUIDAKIAorI2RlZmluZSAgSUNMX0dFQVJfVFlQRV9NQVNLICgw
eDAxIDw8IDE2KQorI2RlZmluZSAgSUNMX0dFQVJfVFlQRV9TSElGVCAxNgorCiBzdGF0aWMgaW50
IGRnMV9tY2hiYXJfcmVhZF9xZ3ZfcG9pbnRfaW5mbyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAq
ZGV2X3ByaXYsCiAJCQkJCSAgc3RydWN0IGludGVsX3Fndl9wb2ludCAqc3AsCiAJCQkJCSAgaW50
IHBvaW50KQpAQCAtNTUsNiArNTgsMTEgQEAgc3RhdGljIGludCBkZzFfbWNoYmFyX3JlYWRfcWd2
X3BvaW50X2luZm8oc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAogCWVsc2UKIAkJ
ZGNsa19yZWZlcmVuY2UgPSA4OyAvKiA4ICogMTYuNjY2IE1IeiA9IDEzMyBNSHogKi8KIAlzcC0+
ZGNsayA9IGRjbGtfcmF0aW8gKiBkY2xrX3JlZmVyZW5jZTsKKworCXZhbCA9IGludGVsX3VuY29y
ZV9yZWFkKCZkZXZfcHJpdi0+dW5jb3JlLCBTS0xfTUNfQklPU19EQVRBXzBfMF8wX01DSEJBUl9Q
Q1UpOworCWlmICgodmFsICYgSUNMX0dFQVJfVFlQRV9NQVNLKSA+PiBJQ0xfR0VBUl9UWVBFX1NI
SUZUKQorCQlzcC0+ZGNsayAqPSAyOworCiAJaWYgKHNwLT5kY2xrID09IDApCiAJCXJldHVybiAt
RUlOVkFMOwogCi0tIAoyLjI2LjMKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeAo=
