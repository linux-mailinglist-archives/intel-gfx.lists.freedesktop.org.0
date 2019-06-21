Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CF474DEED
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Jun 2019 04:02:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AFE416E7F1;
	Fri, 21 Jun 2019 02:01:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 16F956E7F1
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Jun 2019 02:01:57 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Jun 2019 19:01:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,398,1557212400"; d="scan'208";a="183272176"
Received: from mdroper-desk.fm.intel.com ([10.105.128.126])
 by fmsmga004.fm.intel.com with ESMTP; 20 Jun 2019 19:01:56 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 20 Jun 2019 19:01:28 -0700
Message-Id: <20190621020132.1164-2-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.17.2
In-Reply-To: <20190621020132.1164-1-matthew.d.roper@intel.com>
References: <20190621020132.1164-1-matthew.d.roper@intel.com>
Subject: [Intel-gfx] [PATCH 1/5] drm/i915/icl: Drop port parameter to
 icl_get_combo_buf_trans()
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
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhlIHBvcnQgcGFyYW1ldGVyIGhhc24ndCBiZWVuIHVzZWQgc2luY2UgdGhlIGxhc3QgYnNwZWMg
cGh5IHByb2dyYW1taW5nCnVwZGF0ZS4gIERyb3AgaXQgdG8gbWFrZSBzb21lIHVwY29taW5nIGNo
YW5nZXMgc2ltcGxlci4KClJlZmVyZW5jZXM6IDk2NTljMWFmNDUxYSAoImRybS9pOTE1L2ljbDog
Y29tYm8gcG9ydCB2c3dpbmcgcHJvZ3JhbW1pbmcgY2hhbmdlcyBwZXIgQlNQRUMiKQpDYzogQ2xp
bnQgVGF5bG9yIDxjbGludG9uLmEudGF5bG9yQGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogTWF0
dCBSb3BlciA8bWF0dGhldy5kLnJvcGVyQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jIHwgMTIgKysrKysrLS0tLS0tCiAxIGZpbGUgY2hhbmdl
ZCwgNiBpbnNlcnRpb25zKCspLCA2IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2RkaS5jCmluZGV4IDc5MjVhMTc2ZjkwMC4uNTkzODA2ZDQ0YWQ0IDEwMDY0
NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jCisrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMKQEAgLTg0Niw4ICs4NDYsOCBA
QCBjbmxfZ2V0X2J1Zl90cmFuc19lZHAoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2
LCBpbnQgKm5fZW50cmllcykKIH0KIAogc3RhdGljIGNvbnN0IHN0cnVjdCBjbmxfZGRpX2J1Zl90
cmFucyAqCi1pY2xfZ2V0X2NvbWJvX2J1Zl90cmFucyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAq
ZGV2X3ByaXYsIGVudW0gcG9ydCBwb3J0LAotCQkJaW50IHR5cGUsIGludCByYXRlLCBpbnQgKm5f
ZW50cmllcykKK2ljbF9nZXRfY29tYm9fYnVmX3RyYW5zKHN0cnVjdCBkcm1faTkxNV9wcml2YXRl
ICpkZXZfcHJpdiwgaW50IHR5cGUsIGludCByYXRlLAorCQkJaW50ICpuX2VudHJpZXMpCiB7CiAJ
aWYgKHR5cGUgPT0gSU5URUxfT1VUUFVUX0hETUkpIHsKIAkJKm5fZW50cmllcyA9IEFSUkFZX1NJ
WkUoaWNsX2NvbWJvX3BoeV9kZGlfdHJhbnNsYXRpb25zX2hkbWkpOwpAQCAtODcyLDcgKzg3Miw3
IEBAIHN0YXRpYyBpbnQgaW50ZWxfZGRpX2hkbWlfbGV2ZWwoc3RydWN0IGRybV9pOTE1X3ByaXZh
dGUgKmRldl9wcml2LCBlbnVtIHBvcnQgcG9yCiAKIAlpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+
PSAxMSkgewogCQlpZiAoaW50ZWxfcG9ydF9pc19jb21ib3BoeShkZXZfcHJpdiwgcG9ydCkpCi0J
CQlpY2xfZ2V0X2NvbWJvX2J1Zl90cmFucyhkZXZfcHJpdiwgcG9ydCwgSU5URUxfT1VUUFVUX0hE
TUksCisJCQlpY2xfZ2V0X2NvbWJvX2J1Zl90cmFucyhkZXZfcHJpdiwgSU5URUxfT1VUUFVUX0hE
TUksCiAJCQkJCQkwLCAmbl9lbnRyaWVzKTsKIAkJZWxzZQogCQkJbl9lbnRyaWVzID0gQVJSQVlf
U0laRShpY2xfbWdfcGh5X2RkaV90cmFuc2xhdGlvbnMpOwpAQCAtMjIzMSw3ICsyMjMxLDcgQEAg
dTggaW50ZWxfZGRpX2RwX3ZvbHRhZ2VfbWF4KHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVy
KQogCiAJaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0gMTEpIHsKIAkJaWYgKGludGVsX3BvcnRf
aXNfY29tYm9waHkoZGV2X3ByaXYsIHBvcnQpKQotCQkJaWNsX2dldF9jb21ib19idWZfdHJhbnMo
ZGV2X3ByaXYsIHBvcnQsIGVuY29kZXItPnR5cGUsCisJCQlpY2xfZ2V0X2NvbWJvX2J1Zl90cmFu
cyhkZXZfcHJpdiwgZW5jb2Rlci0+dHlwZSwKIAkJCQkJCWludGVsX2RwLT5saW5rX3JhdGUsICZu
X2VudHJpZXMpOwogCQllbHNlCiAJCQluX2VudHJpZXMgPSBBUlJBWV9TSVpFKGljbF9tZ19waHlf
ZGRpX3RyYW5zbGF0aW9ucyk7CkBAIC0yNDIwLDggKzI0MjAsOCBAQCBzdGF0aWMgdm9pZCBpY2xf
ZGRpX2NvbWJvX3Zzd2luZ19wcm9ncmFtKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJp
diwKIAl1MzIgbl9lbnRyaWVzLCB2YWw7CiAJaW50IGxuOwogCi0JZGRpX3RyYW5zbGF0aW9ucyA9
IGljbF9nZXRfY29tYm9fYnVmX3RyYW5zKGRldl9wcml2LCBwb3J0LCB0eXBlLAotCQkJCQkJICAg
cmF0ZSwgJm5fZW50cmllcyk7CisJZGRpX3RyYW5zbGF0aW9ucyA9IGljbF9nZXRfY29tYm9fYnVm
X3RyYW5zKGRldl9wcml2LCB0eXBlLCByYXRlLAorCQkJCQkJICAgJm5fZW50cmllcyk7CiAJaWYg
KCFkZGlfdHJhbnNsYXRpb25zKQogCQlyZXR1cm47CiAKLS0gCjIuMTcuMgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
