Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FCA48E241
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Aug 2019 03:01:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A55B86E87F;
	Thu, 15 Aug 2019 01:01:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C13536E87F
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Aug 2019 01:01:30 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Aug 2019 18:01:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,387,1559545200"; d="scan'208";a="352090036"
Received: from dong-desktop.sh.intel.com ([10.239.160.29])
 by orsmga005.jf.intel.com with ESMTP; 14 Aug 2019 18:01:28 -0700
From: dong.yang@intel.com
To: intel-gfx@lists.freedesktop.org
Date: Thu, 15 Aug 2019 09:03:16 +0800
Message-Id: <20190815010316.23181-1-dong.yang@intel.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2] drm/i915: Remove i915 ggtt WA since GT E0
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
Cc: Yang@freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogIllhbmcsIERvbmciIDxkb25nLnlhbmdAaW50ZWwuY29tPgoKQnJveHRvbiBzdGVwcGlu
Z3Mgc3RhcnRpbmcgZnJvbSBHVCBFMCBoYXZlIGZpeGVkIHRoZSBidWcsIHJlbW92ZQpXQSBzaW5j
ZSBzdGVwcGluZyBHVCBFMC4KCnYyOiB1c2UgQlhUX1JFVklEX0RfTEFTVCByZXBsYWNlIEJYVF9S
RVZJRF9EMCwgYnk6Ckpvb25hcyBMYWh0aW5lbiA8am9vbmFzLmxhaHRpbmVuQGxpbnV4LmludGVs
LmNvbT4KClNpZ25lZC1vZmYtYnk6IFlhbmcsIERvbmcgPGRvbmcueWFuZ0BpbnRlbC5jb20+Ci0t
LQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaCB8IDQgKysrLQogMSBmaWxlIGNoYW5n
ZWQsIDMgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfZHJ2LmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5o
CmluZGV4IDVmM2U1YzEzZmJhYS4uYjFjZGE5ZGNiZWE0IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X2Rydi5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2
LmgKQEAgLTIxNDEsNiArMjE0MSw4IEBAIElTX1NVQlBMQVRGT1JNKGNvbnN0IHN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlICppOTE1LAogI2RlZmluZSBCWFRfUkVWSURfQjAJCTB4MwogI2RlZmluZSBC
WFRfUkVWSURfQl9MQVNUCTB4OAogI2RlZmluZSBCWFRfUkVWSURfQzAJCTB4OQorI2RlZmluZSBC
WFRfUkVWSURfRF9MQVNUCTB4QworI2RlZmluZSBCWFRfUkVWSURfRTAJCTB4RAogCiAjZGVmaW5l
IElTX0JYVF9SRVZJRChkZXZfcHJpdiwgc2luY2UsIHVudGlsKSBcCiAJKElTX0JST1hUT04oZGV2
X3ByaXYpICYmIElTX1JFVklEKGRldl9wcml2LCBzaW5jZSwgdW50aWwpKQpAQCAtMjM1Nyw3ICsy
MzU5LDcgQEAgc3RhdGljIGlubGluZSBib29sIGludGVsX3NjYW5vdXRfbmVlZHNfdnRkX3dhKHN0
cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKIHN0YXRpYyBpbmxpbmUgYm9vbAogaW50
ZWxfZ2d0dF91cGRhdGVfbmVlZHNfdnRkX3dhKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZf
cHJpdikKIHsKLQlyZXR1cm4gSVNfQlJPWFRPTihkZXZfcHJpdikgJiYgaW50ZWxfdnRkX2FjdGl2
ZSgpOworCXJldHVybiBJU19CWFRfUkVWSUQoZGV2X3ByaXYsIDAsIEJYVF9SRVZJRF9EX0xBU1Qp
ICYmIGludGVsX3Z0ZF9hY3RpdmUoKTsKIH0KIAogLyogaTkxNV9kcnYuYyAqLwotLSAKMi4yMi4w
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
