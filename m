Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ABAA067772
	for <lists+intel-gfx@lfdr.de>; Sat, 13 Jul 2019 03:10:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 54A476E3AC;
	Sat, 13 Jul 2019 01:09:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 84F1C6E369
 for <intel-gfx@lists.freedesktop.org>; Sat, 13 Jul 2019 01:09:46 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Jul 2019 18:09:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,484,1557212400"; d="scan'208";a="341850939"
Received: from dhoyan-mobl.amr.corp.intel.com (HELO ldmartin-desk1.intel.com)
 ([10.252.197.100])
 by orsmga005.jf.intel.com with ESMTP; 12 Jul 2019 18:09:46 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 12 Jul 2019 18:09:31 -0700
Message-Id: <20190713010940.17711-14-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190713010940.17711-1-lucas.demarchi@intel.com>
References: <20190713010940.17711-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 13/22] drm/i915/gen12: add support for reading
 the timestamp frequency
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
Cc: Paulo Zanoni <paulo.r.zanoni@intel.com>,
 Michel Thierry <michel.thierry@intel.com>
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
