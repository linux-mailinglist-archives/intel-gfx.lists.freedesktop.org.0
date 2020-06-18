Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 559B31FDA75
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jun 2020 02:43:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E1C36E7EF;
	Thu, 18 Jun 2020 00:43:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 805F16E223
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Jun 2020 00:42:51 +0000 (UTC)
IronPort-SDR: sFO/7VSFXXNFLq2vSW5UDx6pDUh1b/tGUfeoalW9NkmYqRYru+0+MYQti4Cpq6bPOykutQWn2O
 C3MzbYHGaU8g==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2020 17:42:51 -0700
IronPort-SDR: sPTwzYI5vsnEF9IGuY2DV2lU9qD0gaW/f88K4tE9E/9zOtiyxCBKnj+pQ2CylRTshfj6VoYo2Y
 U5BmAFrKlBzQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,524,1583222400"; d="scan'208";a="477011853"
Received: from ldmartin1-desk.jf.intel.com ([10.165.21.151])
 by fmsmga006.fm.intel.com with ESMTP; 17 Jun 2020 17:42:51 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 17 Jun 2020 17:42:16 -0700
Message-Id: <20200618004240.16263-9-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200618004240.16263-1-lucas.demarchi@intel.com>
References: <20200618004240.16263-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 08/32] drm/i915/dg1: Add DG1 PCI IDs
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogQWJkaWVsIEphbnVsZ3VlIDxhYmRpZWwuamFudWxndWVAbGludXguaW50ZWwuY29tPgoK
QnNwZWM6IDQ0NDYzCgpDYzogTWF0dGhldyBBdWxkIDxtYXR0aGV3LmF1bGRAaW50ZWwuY29tPgpD
YzogSmFtZXMgQXVzbXVzIDxqYW1lcy5hdXNtdXNAaW50ZWwuY29tPgpDYzogSm9vbmFzIExhaHRp
bmVuIDxqb29uYXMubGFodGluZW5AbGludXguaW50ZWwuY29tPgpDYzogTWF0dCBSb3BlciA8bWF0
dGhldy5kLnJvcGVyQGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogQWJkaWVsIEphbnVsZ3VlIDxh
YmRpZWwuamFudWxndWVAbGludXguaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBMdWNhcyBEZSBN
YXJjaGkgPGx1Y2FzLmRlbWFyY2hpQGludGVsLmNvbT4KUmV2aWV3ZWQtYnk6IEpvc8OpIFJvYmVy
dG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfcGNpLmMgfCAzICsrLQogaW5jbHVkZS9kcm0vaTkxNV9wY2lpZHMuaCAgICAgICB8
IDQgKysrKwogMiBmaWxlcyBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkK
CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BjaS5jIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9wY2kuYwppbmRleCA1OGNjZWVhYTBmZmE1Li44ZDViMjM5NDZkN2Rk
IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BjaS5jCisrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfcGNpLmMKQEAgLTkwMCw3ICs5MDAsNyBAQCBzdGF0aWMgY29u
c3Qgc3RydWN0IGludGVsX2RldmljZV9pbmZvIHJrbF9pbmZvID0gewogCS5oYXNfbWFzdGVyX3Vu
aXRfaXJxID0gMSwgXAogCS5pc19kZ2Z4ID0gMQogCi1zdGF0aWMgY29uc3Qgc3RydWN0IGludGVs
X2RldmljZV9pbmZvIGludGVsX2RnMV9pbmZvID0geworc3RhdGljIGNvbnN0IHN0cnVjdCBpbnRl
bF9kZXZpY2VfaW5mbyBkZzFfaW5mbyA9IHsKIAlHRU4xMl9ER0ZYX0ZFQVRVUkVTLAogCVBMQVRG
T1JNKElOVEVMX0RHMSksCiAJLnBpcGVfbWFzayA9IEJJVChQSVBFX0EpIHwgQklUKFBJUEVfQikg
fCBCSVQoUElQRV9DKSB8IEJJVChQSVBFX0QpLApAQCAtOTg1LDYgKzk4NSw3IEBAIHN0YXRpYyBj
b25zdCBzdHJ1Y3QgcGNpX2RldmljZV9pZCBwY2lpZGxpc3RbXSA9IHsKIAlJTlRFTF9FSExfSURT
KCZlaGxfaW5mbyksCiAJSU5URUxfVEdMXzEyX0lEUygmdGdsX2luZm8pLAogCUlOVEVMX1JLTF9J
RFMoJnJrbF9pbmZvKSwKKwlJTlRFTF9ERzFfSURTKCZkZzFfaW5mbyksCiAJezAsIDAsIDB9CiB9
OwogTU9EVUxFX0RFVklDRV9UQUJMRShwY2ksIHBjaWlkbGlzdCk7CmRpZmYgLS1naXQgYS9pbmNs
dWRlL2RybS9pOTE1X3BjaWlkcy5oIGIvaW5jbHVkZS9kcm0vaTkxNV9wY2lpZHMuaAppbmRleCBi
Yzk4OWRlMmFhYzJiLi5mNDRmZTgyMjg4MGQyIDEwMDY0NAotLS0gYS9pbmNsdWRlL2RybS9pOTE1
X3BjaWlkcy5oCisrKyBiL2luY2x1ZGUvZHJtL2k5MTVfcGNpaWRzLmgKQEAgLTYxNCw0ICs2MTQs
OCBAQAogCUlOVEVMX1ZHQV9ERVZJQ0UoMHg0QzkwLCBpbmZvKSwgXAogCUlOVEVMX1ZHQV9ERVZJ
Q0UoMHg0QzlBLCBpbmZvKQogCisvKiBERzEgKi8KKyNkZWZpbmUgSU5URUxfREcxX0lEUyhpbmZv
KSBcCisJSU5URUxfVkdBX0RFVklDRSgweDQ5MDUsIGluZm8pCisKICNlbmRpZiAvKiBfSTkxNV9Q
Q0lJRFNfSCAqLwotLSAKMi4yNi4yCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZngK
