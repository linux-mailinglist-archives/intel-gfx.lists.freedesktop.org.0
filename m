Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1856A1F4674
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Jun 2020 20:41:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8BBC88999A;
	Tue,  9 Jun 2020 18:41:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 292358999A
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Jun 2020 18:41:48 +0000 (UTC)
IronPort-SDR: XhADe3pV1BUfCos0nCpMCnq2cO9Yg6mWRu/V0ecSP4CnoXw/zGAKHOSCLNQBeBht4sjr9D+cxJ
 T10OBrxqe8qA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2020 11:41:47 -0700
IronPort-SDR: DzWxGwXaphsEtF/HfdAkDEple+tz/INydMrwk9yqJMfvCaNCGLBBdkwJxret4ajzhC8K5SEI/r
 iTt1/1dXacnw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,493,1583222400"; d="scan'208";a="270975401"
Received: from ideak-desk.fi.intel.com ([10.237.72.183])
 by orsmga003.jf.intel.com with ESMTP; 09 Jun 2020 11:41:46 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  9 Jun 2020 21:41:40 +0300
Message-Id: <20200609184140.4937-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.23.1
In-Reply-To: <20200608182650.13642-1-imre.deak@intel.com>
References: <20200608182650.13642-1-imre.deak@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Fix the i915_dsc_fec_support debugfs
 file for DP MST connectors
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

RFNDIGlzIG5vdCBzdXBwb3J0ZWQgb24gRFAgTVNUIHN0cmVhbXMgc28ganVzdCBkb24ndCBhZGQg
dGhpcyBlbnRyeSBmb3IKTVNUIGNvbm5lY3RvcnMuCgpUaGlzIGFsc28gZml4ZXMgYW4gT09QUywg
Y2F1c2VkIGJ5IHRoZSBlbmNvZGVyLT5kaWdwb3J0IGNhc3QsIHdoaWNoIGlzCm5vdCB2YWxpZCBm
b3IgTVNUIGVuY29kZXJzLgoKdjI6Ci0gQ2hlY2sgZW5jb2Rlciwgd2hpY2ggaXMgdW5zZXQgZm9y
IGFuIE1TVCBjb25uZWN0b3IsIGJlZm9yZSBpdCBnZXRzCiAgZW5hYmxlZC4KdjM6Ci0gSnVzdCBk
b24ndCBhZGQgdGhpcyBkZWJ1Z2ZzIGZpbGUgZm9yIE1TVCBjb25uZWN0b3JzLiAoVmlsbGUpCgpD
YzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KU2lnbmVk
LW9mZi1ieTogSW1yZSBEZWFrIDxpbXJlLmRlYWtAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9kZWJ1Z2ZzLmMgfCAzICsrLQogMSBmaWxl
IGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9kZWJ1Z2ZzLmMgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfZGVidWdmcy5jCmluZGV4IDJi
NjQwZDhhYjlkMi4uMjhkZDcxN2U5NDNhIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfZGVidWdmcy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9kZWJ1Z2ZzLmMKQEAgLTIyMTgsNyArMjIxOCw4IEBA
IGludCBpbnRlbF9jb25uZWN0b3JfZGVidWdmc19hZGQoc3RydWN0IGRybV9jb25uZWN0b3IgKmNv
bm5lY3RvcikKIAl9CiAKIAlpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSAxMCAmJgotCSAgICAo
Y29ubmVjdG9yLT5jb25uZWN0b3JfdHlwZSA9PSBEUk1fTU9ERV9DT05ORUNUT1JfRGlzcGxheVBv
cnQgfHwKKwkgICAgKChjb25uZWN0b3ItPmNvbm5lY3Rvcl90eXBlID09IERSTV9NT0RFX0NPTk5F
Q1RPUl9EaXNwbGF5UG9ydCAmJgorCSAgICAgICF0b19pbnRlbF9jb25uZWN0b3IoY29ubmVjdG9y
KS0+bXN0X3BvcnQpIHx8CiAJICAgICBjb25uZWN0b3ItPmNvbm5lY3Rvcl90eXBlID09IERSTV9N
T0RFX0NPTk5FQ1RPUl9lRFApKQogCQlkZWJ1Z2ZzX2NyZWF0ZV9maWxlKCJpOTE1X2RzY19mZWNf
c3VwcG9ydCIsIFNfSVJVR08sIHJvb3QsCiAJCQkJICAgIGNvbm5lY3RvciwgJmk5MTVfZHNjX2Zl
Y19zdXBwb3J0X2ZvcHMpOwotLSAKMi4yMy4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZngK
