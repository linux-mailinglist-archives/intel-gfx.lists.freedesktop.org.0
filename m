Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 49F198C535
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Aug 2019 02:43:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E36756E11A;
	Wed, 14 Aug 2019 00:43:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A9A356E11A
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Aug 2019 00:43:02 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Aug 2019 17:43:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,382,1559545200"; d="scan'208";a="167224826"
Received: from dong-desktop.sh.intel.com ([10.239.160.29])
 by orsmga007.jf.intel.com with ESMTP; 13 Aug 2019 17:43:00 -0700
From: Dong Yang <dong.yang@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 14 Aug 2019 08:44:48 +0800
Message-Id: <20190814004448.1504-1-dong.yang@intel.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Remove i915 ggtt WA since GT E0
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
ZSBzdGVwcGluZyBHVCBFMC4KClNpZ25lZC1vZmYtYnk6IFlhbmcsIERvbmcgPGRvbmcueWFuZ0Bp
bnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaCB8IDQgKysrLQog
MSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmggYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X2Rydi5oCmluZGV4IDVmM2U1YzEzZmJhYS4uOTU1MTliYWM4OTQ4IDEwMDY0NAotLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfZHJ2LmgKQEAgLTIxNDEsNiArMjE0MSw4IEBAIElTX1NVQlBMQVRGT1JNKGNvbnN0
IHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LAogI2RlZmluZSBCWFRfUkVWSURfQjAJCTB4
MwogI2RlZmluZSBCWFRfUkVWSURfQl9MQVNUCTB4OAogI2RlZmluZSBCWFRfUkVWSURfQzAJCTB4
OQorI2RlZmluZSBCWFRfUkVWSURfRDAJCTB4QworI2RlZmluZSBCWFRfUkVWSURfRTAJCTB4RAog
CiAjZGVmaW5lIElTX0JYVF9SRVZJRChkZXZfcHJpdiwgc2luY2UsIHVudGlsKSBcCiAJKElTX0JS
T1hUT04oZGV2X3ByaXYpICYmIElTX1JFVklEKGRldl9wcml2LCBzaW5jZSwgdW50aWwpKQpAQCAt
MjM1Nyw3ICsyMzU5LDcgQEAgc3RhdGljIGlubGluZSBib29sIGludGVsX3NjYW5vdXRfbmVlZHNf
dnRkX3dhKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKIHN0YXRpYyBpbmxpbmUg
Ym9vbAogaW50ZWxfZ2d0dF91cGRhdGVfbmVlZHNfdnRkX3dhKHN0cnVjdCBkcm1faTkxNV9wcml2
YXRlICpkZXZfcHJpdikKIHsKLQlyZXR1cm4gSVNfQlJPWFRPTihkZXZfcHJpdikgJiYgaW50ZWxf
dnRkX2FjdGl2ZSgpOworCXJldHVybiBJU19CWFRfUkVWSUQoZGV2X3ByaXYsIDAsIEJYVF9SRVZJ
RF9EMCkgJiYgaW50ZWxfdnRkX2FjdGl2ZSgpOwogfQogCiAvKiBpOTE1X2Rydi5jICovCi0tIAoy
LjIyLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
