Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0049175C0F
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Jul 2019 02:24:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 000366E83C;
	Fri, 26 Jul 2019 00:24:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EFAB46E83F
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 Jul 2019 00:24:24 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Jul 2019 17:24:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,308,1559545200"; d="scan'208";a="194046848"
Received: from ldmartin-desk1.jf.intel.com (HELO ldmartin-desk1.intel.com)
 ([10.24.9.40])
 by fmsmga004.fm.intel.com with ESMTP; 25 Jul 2019 17:24:24 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 25 Jul 2019 17:24:12 -0700
Message-Id: <20190726002412.5827-4-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190726002412.5827-1-lucas.demarchi@intel.com>
References: <20190726002412.5827-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/3] drm/i915/tgl: add support for reading the
 timestamp frequency
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
Cc: Michel Thierry <michel.thierry@intel.com>,
 Paulo Zanoni <paulo.r.zanoni@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogTWljaGVsIFRoaWVycnkgPG1pY2hlbC50aGllcnJ5QGludGVsLmNvbT4KClRoZXJlIGFy
ZSBubyBjaGFuZ2VzIHdpdGggcmVzcGVjdCB0byBHRU4xMSwgd2hpY2ggUGF1bG8gd3JvdGUuCgpU
aGlzIGdldHMgcmlkIG9mIHRoZSAiTWlzc2luZyBzd2l0Y2ggY2FzZSBpbiByZWFkX3RpbWVzdGFt
cF9mcmVxdWVuY3kiCm1lc3NhZ2UgYXQgYm9vdCBmb3IgVGlnZXIgTGFrZS4KCkNjOiBQYXVsbyBa
YW5vbmkgPHBhdWxvLnIuemFub25pQGludGVsLmNvbT4KQ2M6IExpb25lbCBMYW5kd2VybGluIDxs
aW9uZWwuZy5sYW5kd2VybGluQGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogTWljaGVsIFRoaWVy
cnkgPG1pY2hlbC50aGllcnJ5QGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogTHVjYXMgRGUgTWFy
Y2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUv
aW50ZWxfZGV2aWNlX2luZm8uYyB8IDIgKy0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigr
KSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVs
X2RldmljZV9pbmZvLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kZXZpY2VfaW5mby5j
CmluZGV4IGY5OWM5ZmQ0OTdiMi4uYTMwMTdkMTZiN2YzIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pbnRlbF9kZXZpY2VfaW5mby5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2ludGVsX2RldmljZV9pbmZvLmMKQEAgLTcxNiw3ICs3MTYsNyBAQCBzdGF0aWMgdTMyIHJlYWRf
dGltZXN0YW1wX2ZyZXF1ZW5jeShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiAJ
CX0KIAogCQlyZXR1cm4gZnJlcTsKLQl9IGVsc2UgaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPD0g
MTEpIHsKKwl9IGVsc2UgaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPD0gMTIpIHsKIAkJdTMyIGN0
Y19yZWcgPSBJOTE1X1JFQUQoQ1RDX01PREUpOwogCQl1MzIgZnJlcSA9IDA7CiAKLS0gCjIuMjEu
MAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
