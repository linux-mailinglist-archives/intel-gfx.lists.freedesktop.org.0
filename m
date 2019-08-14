Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D54E98CD38
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Aug 2019 09:52:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3A9196E285;
	Wed, 14 Aug 2019 07:52:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BEDCB6E285
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Aug 2019 07:52:21 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Aug 2019 00:52:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,384,1559545200"; d="scan'208";a="184191486"
Received: from dong-desktop.sh.intel.com ([10.239.160.29])
 by FMSMGA003.fm.intel.com with ESMTP; 14 Aug 2019 00:52:19 -0700
From: dong.yang@intel.com
To: intel-gfx@lists.freedesktop.org
Date: Wed, 14 Aug 2019 15:54:05 +0800
Message-Id: <20190814075405.16822-1-dong.yang@intel.com>
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
ZSBzdGVwcGluZyBHVCBFMC4KCnYyOiBhZGQgY29tbWVudCBpbiBjb2RlLCBieToKSm9vbmFzIExh
aHRpbmVuIDxqb29uYXMubGFodGluZW5AbGludXguaW50ZWwuY29tPgoKU2lnbmVkLW9mZi1ieTog
WWFuZywgRG9uZyA8ZG9uZy55YW5nQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X2Rydi5oIHwgNSArKysrLQogMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwg
MSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2
LmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oCmluZGV4IDVmM2U1YzEzZmJhYS4u
YTBkZmQxOTI2YjFiIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5o
CisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgKQEAgLTIxNDEsNiArMjE0MSw4
IEBAIElTX1NVQlBMQVRGT1JNKGNvbnN0IHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LAog
I2RlZmluZSBCWFRfUkVWSURfQjAJCTB4MwogI2RlZmluZSBCWFRfUkVWSURfQl9MQVNUCTB4OAog
I2RlZmluZSBCWFRfUkVWSURfQzAJCTB4OQorI2RlZmluZSBCWFRfUkVWSURfRDAJCTB4QworI2Rl
ZmluZSBCWFRfUkVWSURfRTAJCTB4RAogCiAjZGVmaW5lIElTX0JYVF9SRVZJRChkZXZfcHJpdiwg
c2luY2UsIHVudGlsKSBcCiAJKElTX0JST1hUT04oZGV2X3ByaXYpICYmIElTX1JFVklEKGRldl9w
cml2LCBzaW5jZSwgdW50aWwpKQpAQCAtMjM1Nyw3ICsyMzU5LDggQEAgc3RhdGljIGlubGluZSBi
b29sIGludGVsX3NjYW5vdXRfbmVlZHNfdnRkX3dhKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpk
ZXZfcHJpdikKIHN0YXRpYyBpbmxpbmUgYm9vbAogaW50ZWxfZ2d0dF91cGRhdGVfbmVlZHNfdnRk
X3dhKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKIHsKLQlyZXR1cm4gSVNfQlJP
WFRPTihkZXZfcHJpdikgJiYgaW50ZWxfdnRkX2FjdGl2ZSgpOworCS8qIEJyb3h0b24gc3RlcHBp
bmdzIHN0YXJ0aW5nIGZyb20gRTAgaGF2ZSBmaXhlZCB0aGUgYnVnLiAqLworCXJldHVybiBJU19C
WFRfUkVWSUQoZGV2X3ByaXYsIDAsIEJYVF9SRVZJRF9EMCkgJiYgaW50ZWxfdnRkX2FjdGl2ZSgp
OwogfQogCiAvKiBpOTE1X2Rydi5jICovCi0tIAoyLjIyLjAKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
