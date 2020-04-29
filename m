Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 063F61BD924
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Apr 2020 12:10:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4D1666ECC5;
	Wed, 29 Apr 2020 10:10:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B82776ECC5
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Apr 2020 10:10:52 +0000 (UTC)
IronPort-SDR: /GkoQpDLmcdi0jEVDOt1qbuQcYTfQxcecnZr7tKbsjL3AOkjJhsZAni8KF2vDupbS7Tpwsg4b1
 HyP4qmoqWJoQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2020 03:10:52 -0700
IronPort-SDR: I1xQc/gj91jc1ddmQqsLQLJ0S6NirLVdx286/0jPOF2FiuioDw0WJEfk/mXwykKy8fZtNAKK+b
 9X4Te6D5cmUQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,331,1583222400"; d="scan'208";a="247955420"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga007.fm.intel.com with SMTP; 29 Apr 2020 03:10:50 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 29 Apr 2020 13:10:49 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 29 Apr 2020 13:10:27 +0300
Message-Id: <20200429101034.8208-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200429101034.8208-1-ville.syrjala@linux.intel.com>
References: <20200429101034.8208-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 05/12] drm/i915/fbc: Enable fbc on i865
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClVu
bGlrZSBhbGwgdGhlIG90aGVyIHByZS1zbmIgZGVza3RvcCBwbGF0Zm9ybXMgaTg2NSBhY3R1YWxs
eQpzdXBwb3J0cyBGQkMuIExldCdzIGVuYWJsZSBpdC4KClF1b3RlIGZyb20gdGhlIHNwZWM6CiJE
ZXZTREcgcHJvdmlkZXMgdGhlIHNhbWUgUnVuLUxlbmd0aCBFbmNvZGVkIEZyYW1lIEJ1ZmZlcgog
Q29tcHJlc3Npb24gKFJMRUZCQykgZnVuY3Rpb24gYXMgZXhpc3RzIGluIERldk1HTS4iCgpBcyBp
ODY1IG9ubHkgaGFzIHRoZSBvbmUgcGlwZSB3ZSB3YW50IHRvIHNraXAgbWFzc2FnaW5nIHRoZQpw
bGFuZTwtPnBpcGUgYXNzaWdubWVudCBhaW1lZCBhdCBnZXR0aW5nIEZCQytMVkRTIHdvcmtpbmcg
b24KdGhlIG1vYmlsZSBwbGF0Zm9ybXMuCgpTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6Qg
PHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIHwgMyArKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfcGNpLmMgICAgICAgICAgICAgIHwgMSArCiAyIGZpbGVzIGNoYW5nZWQsIDMgaW5zZXJ0aW9u
cygrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGlzcGxheS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kaXNwbGF5LmMKaW5kZXggZTVmYTQ5MzM3ODgzLi5hMGQxMDU3ZDc1ZWUgMTAwNjQ0Ci0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCisrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCkBAIC0xNjE4Niw3ICsxNjE4
Niw4IEBAIGludGVsX3ByaW1hcnlfcGxhbmVfY3JlYXRlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRl
ICpkZXZfcHJpdiwgZW51bSBwaXBlIHBpcGUpCiAJICogT24gZ2VuMi8zIG9ubHkgcGxhbmUgQSBj
YW4gZG8gRkJDLCBidXQgdGhlIHBhbmVsIGZpdHRlciBhbmQgTFZEUwogCSAqIHBvcnQgaXMgaG9v
a2VkIHRvIHBpcGUgQi4gSGVuY2Ugd2Ugd2FudCBwbGFuZSBBIGZlZWRpbmcgcGlwZSBCLgogCSAq
LwotCWlmIChIQVNfRkJDKGRldl9wcml2KSAmJiBJTlRFTF9HRU4oZGV2X3ByaXYpIDwgNCkKKwlp
ZiAoSEFTX0ZCQyhkZXZfcHJpdikgJiYgSU5URUxfR0VOKGRldl9wcml2KSA8IDQgJiYKKwkgICAg
SU5URUxfTlVNX1BJUEVTKGRldl9wcml2KSA9PSAyKQogCQlwbGFuZS0+aTl4eF9wbGFuZSA9IChl
bnVtIGk5eHhfcGxhbmVfaWQpICFwaXBlOwogCWVsc2UKIAkJcGxhbmUtPmk5eHhfcGxhbmUgPSAo
ZW51bSBpOXh4X3BsYW5lX2lkKSBwaXBlOwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9wY2kuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGNpLmMKaW5kZXggMWZh
ZjlkNmVjMGE0Li43MWFmZTdiYzNkMmQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfcGNpLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wY2kuYwpAQCAtMjE3
LDYgKzIxNyw3IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgaW50ZWxfZGV2aWNlX2luZm8gaTg1eF9p
bmZvID0gewogc3RhdGljIGNvbnN0IHN0cnVjdCBpbnRlbF9kZXZpY2VfaW5mbyBpODY1Z19pbmZv
ID0gewogCUk4NDVfRkVBVFVSRVMsCiAJUExBVEZPUk0oSU5URUxfSTg2NUcpLAorCS5kaXNwbGF5
Lmhhc19mYmMgPSAxLAogfTsKIAogI2RlZmluZSBHRU4zX0ZFQVRVUkVTIFwKLS0gCjIuMjQuMQoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
