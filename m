Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D49072C0F
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jul 2019 12:07:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6818D6E4F0;
	Wed, 24 Jul 2019 10:07:26 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7CF186E4F0
 for <Intel-gfx@lists.freedesktop.org>; Wed, 24 Jul 2019 10:07:23 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Jul 2019 03:07:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,302,1559545200"; d="scan'208";a="197448639"
Received: from jsartini-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.252.0.141])
 by fmsmga002.fm.intel.com with ESMTP; 24 Jul 2019 03:07:22 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Wed, 24 Jul 2019 11:07:16 +0100
Message-Id: <20190724100716.10731-5-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190724100716.10731-1-tvrtko.ursulin@linux.intel.com>
References: <20190724100716.10731-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 5/5] drm/i915: Make pm_notify take intel_gt
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

RnJvbTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KClRoZXNlIG5v
dGlmaWNhdGlvbnMgb3BlcmF0ZSBvbiBpbnRlbF9ndCBzbyBtYWtlIHRoZSBjb2RlIHRha2Ugd2hh
dCBpdApuZWVkcy4KClNpZ25lZC1vZmYtYnk6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxp
bkBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3RfcG0uYyB8
IDggKysrKy0tLS0KIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25z
KC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3RfcG0uYyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0X3BtLmMKaW5kZXggMzFjNWUxOTEwNzQw
Li5iY2NmMzllOWZmNDAgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVs
X2d0X3BtLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3RfcG0uYwpAQCAt
MTIsOSArMTIsOSBAQAogI2luY2x1ZGUgImludGVsX3BtLmgiCiAjaW5jbHVkZSAiaW50ZWxfd2Fr
ZXJlZi5oIgogCi1zdGF0aWMgdm9pZCBwbV9ub3RpZnkoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUg
Kmk5MTUsIGludCBzdGF0ZSkKK3N0YXRpYyB2b2lkIHBtX25vdGlmeShzdHJ1Y3QgaW50ZWxfZ3Qg
Kmd0LCBpbnQgc3RhdGUpCiB7Ci0JYmxvY2tpbmdfbm90aWZpZXJfY2FsbF9jaGFpbigmaTkxNS0+
Z3QucG1fbm90aWZpY2F0aW9ucywgc3RhdGUsIGk5MTUpOworCWJsb2NraW5nX25vdGlmaWVyX2Nh
bGxfY2hhaW4oJmd0LT5wbV9ub3RpZmljYXRpb25zLCBzdGF0ZSwgZ3QtPmk5MTUpOwogfQogCiBz
dGF0aWMgaW50IGludGVsX2d0X3VucGFyayhzdHJ1Y3QgaW50ZWxfd2FrZXJlZiAqd2YpCkBAIC00
OCw3ICs0OCw3IEBAIHN0YXRpYyBpbnQgaW50ZWxfZ3RfdW5wYXJrKHN0cnVjdCBpbnRlbF93YWtl
cmVmICp3ZikKIAogCWludGVsX2d0X3F1ZXVlX2hhbmdjaGVjayhndCk7CiAKLQlwbV9ub3RpZnko
aTkxNSwgSU5URUxfR1RfVU5QQVJLKTsKKwlwbV9ub3RpZnkoZ3QsIElOVEVMX0dUX1VOUEFSSyk7
CiAKIAlyZXR1cm4gMDsKIH0KQEAgLTY4LDcgKzY4LDcgQEAgc3RhdGljIGludCBpbnRlbF9ndF9w
YXJrKHN0cnVjdCBpbnRlbF93YWtlcmVmICp3ZikKIAogCUdFTV9UUkFDRSgiXG4iKTsKIAotCXBt
X25vdGlmeShpOTE1LCBJTlRFTF9HVF9QQVJLKTsKKwlwbV9ub3RpZnkoZ3QsIElOVEVMX0dUX1BB
UkspOwogCiAJaTkxNV9wbXVfZ3RfcGFya2VkKGk5MTUpOwogCWlmIChJTlRFTF9HRU4oaTkxNSkg
Pj0gNikKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4
