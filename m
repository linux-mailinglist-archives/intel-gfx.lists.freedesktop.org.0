Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AD8F565F1D
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jul 2019 19:56:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 27A9A6E281;
	Thu, 11 Jul 2019 17:55:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 498606E26D
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Jul 2019 17:55:53 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Jul 2019 10:55:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,479,1557212400"; d="scan'208";a="156894662"
Received: from ldmartin-desk1.jf.intel.com (HELO ldmartin-desk1.intel.com)
 ([10.24.8.246])
 by orsmga007.jf.intel.com with ESMTP; 11 Jul 2019 10:55:51 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 11 Jul 2019 10:30:58 -0700
Message-Id: <20190711173115.28296-5-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190711173115.28296-1-lucas.demarchi@intel.com>
References: <20190711173115.28296-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 04/21] drm/i915/tgl: Add TGL PCH detection in
 virtualized environment
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

RnJvbTogTWFoZXNoIEt1bWFyIDxtYWhlc2gxLmt1bWFyQGludGVsLmNvbT4KCkFzc3VtZSBQQ0hf
VEdQIHdoZW4gcGxhdGZvcm0gaXMgVEdMLgoKQ2M6IFJvZHJpZ28gVml2aSA8cm9kcmlnby52aXZp
QGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogTWFoZXNoIEt1bWFyIDxtYWhlc2gxLmt1bWFyQGlu
dGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogTHVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBp
bnRlbC5jb20+ClJldmlld2VkLWJ5OiBBbnVzaGEgU3JpdmF0c2EgPGFudXNoYS5zcml2YXRzYUBp
bnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYyB8IDQgKysrLQog
MSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X2Rydi5jCmluZGV4IGJjZWRkMmQ4ZTI2Ny4uOTI2YmJmMmQxNjliIDEwMDY0NAotLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfZHJ2LmMKQEAgLTI1NSw3ICsyNTUsOSBAQCBpbnRlbF92aXJ0X2RldGVjdF9wY2go
Y29uc3Qgc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQogCSAqIG1ha2UgYW4gZWR1
Y2F0ZWQgZ3Vlc3MgYXMgdG8gd2hpY2ggUENIIGlzIHJlYWxseSB0aGVyZS4KIAkgKi8KIAotCWlm
IChJU19FTEtIQVJUTEFLRShkZXZfcHJpdikpCisJaWYgKElTX1RJR0VSTEFLRShkZXZfcHJpdikp
CisJCWlkID0gSU5URUxfUENIX1RHUF9ERVZJQ0VfSURfVFlQRTsKKwllbHNlIGlmIChJU19FTEtI
QVJUTEFLRShkZXZfcHJpdikpCiAJCWlkID0gSU5URUxfUENIX01DQ19ERVZJQ0VfSURfVFlQRTsK
IAllbHNlIGlmIChJU19JQ0VMQUtFKGRldl9wcml2KSkKIAkJaWQgPSBJTlRFTF9QQ0hfSUNQX0RF
VklDRV9JRF9UWVBFOwotLSAKMi4yMS4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZng=
