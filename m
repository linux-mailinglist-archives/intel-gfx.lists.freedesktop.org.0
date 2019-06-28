Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AF0B59DE0
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Jun 2019 16:36:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4F5566E936;
	Fri, 28 Jun 2019 14:36:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5F2126E931
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Jun 2019 14:36:45 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Jun 2019 07:36:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,428,1557212400"; d="scan'208";a="165079316"
Received: from ideak-desk.fi.intel.com ([10.237.68.142])
 by orsmga003.jf.intel.com with ESMTP; 28 Jun 2019 07:36:42 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 28 Jun 2019 17:36:13 +0300
Message-Id: <20190628143635.22066-2-imre.deak@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190628143635.22066-1-imre.deak@intel.com>
References: <20190628143635.22066-1-imre.deak@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 01/23] drm/i915/icl: Add support to read out
 the TBT PLL HW state
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>,
 Paulo Zanoni <paulo.r.zanoni@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QWRkIHN1cHBvcnQgdG8gcmVhZCBvdXQgdGhlIFRCVCBQTEwgSFcgc3RhdGUuCgpDYzogVmFuZGl0
YSBLdWxrYXJuaSA8dmFuZGl0YS5rdWxrYXJuaUBpbnRlbC5jb20+CkNjOiBQYXVsbyBaYW5vbmkg
PHBhdWxvLnIuemFub25pQGludGVsLmNvbT4KQ2M6IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVt
YXJjaGlAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBJbXJlIERlYWsgPGltcmUuZGVha0BpbnRl
bC5jb20+ClJldmlld2VkLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGlu
dGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXku
YyB8IDExICsrKysrKysrKy0tCiAxIGZpbGUgY2hhbmdlZCwgOSBpbnNlcnRpb25zKCspLCAyIGRl
bGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGlzcGxheS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5
LmMKaW5kZXggZTU1YmQ3NTUyOGMxLi5jZmM2ZjZiNTYzNWYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCisrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCkBAIC05OTM5LDEzICs5OTM5LDIwIEBAIHN0
YXRpYyB2b2lkIGljZWxha2VfZ2V0X2RkaV9wbGwoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRl
dl9wcml2LAogCWVudW0gaW50ZWxfZHBsbF9pZCBpZDsKIAl1MzIgdGVtcDsKIAotCS8qIFRPRE86
IFRCVCBwbGwgbm90IGltcGxlbWVudGVkLiAqLwogCWlmIChpbnRlbF9wb3J0X2lzX2NvbWJvcGh5
KGRldl9wcml2LCBwb3J0KSkgewogCQl0ZW1wID0gSTkxNV9SRUFEKERQQ0xLQV9DRkdDUjBfSUNM
KSAmCiAJCSAgICAgICBEUENMS0FfQ0ZHQ1IwX0RESV9DTEtfU0VMX01BU0socG9ydCk7CiAJCWlk
ID0gdGVtcCA+PiBEUENMS0FfQ0ZHQ1IwX0RESV9DTEtfU0VMX1NISUZUKHBvcnQpOwogCX0gZWxz
ZSBpZiAoaW50ZWxfcG9ydF9pc190YyhkZXZfcHJpdiwgcG9ydCkpIHsKLQkJaWQgPSBpY2xfdGNf
cG9ydF90b19wbGxfaWQoaW50ZWxfcG9ydF90b190YyhkZXZfcHJpdiwgcG9ydCkpOworCQl1MzIg
Y2xrX3NlbCA9IEk5MTVfUkVBRChERElfQ0xLX1NFTChwb3J0KSkgJiBERElfQ0xLX1NFTF9NQVNL
OworCisJCWlmIChjbGtfc2VsID09IERESV9DTEtfU0VMX01HKSB7CisJCQlpZCA9IGljbF90Y19w
b3J0X3RvX3BsbF9pZChpbnRlbF9wb3J0X3RvX3RjKGRldl9wcml2LAorCQkJCQkJCQkgICAgcG9y
dCkpOworCQl9IGVsc2UgeworCQkJV0FSTl9PTihjbGtfc2VsIDwgRERJX0NMS19TRUxfVEJUXzE2
Mik7CisJCQlpZCA9IERQTExfSURfSUNMX1RCVFBMTDsKKwkJfQogCX0gZWxzZSB7CiAJCVdBUk4o
MSwgIkludmFsaWQgcG9ydCAleFxuIiwgcG9ydCk7CiAJCXJldHVybjsKLS0gCjIuMTcuMQoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
