Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A39EB72C11
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jul 2019 12:07:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E41916E4F5;
	Wed, 24 Jul 2019 10:07:31 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A11FE6E4F0
 for <Intel-gfx@lists.freedesktop.org>; Wed, 24 Jul 2019 10:07:22 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Jul 2019 03:07:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,302,1559545200"; d="scan'208";a="197448634"
Received: from jsartini-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.252.0.141])
 by fmsmga002.fm.intel.com with ESMTP; 24 Jul 2019 03:07:21 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Wed, 24 Jul 2019 11:07:15 +0100
Message-Id: <20190724100716.10731-4-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190724100716.10731-1-tvrtko.ursulin@linux.intel.com>
References: <20190724100716.10731-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 4/5] drm/i915: Avoid round-trip via i915 in
 intel_gt_park
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

RnJvbTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KCkJvdGggaW4g
dGhlIGNvbnRhaW5lcl9vZiBhbmQgZ2V0dGluZyB0byBndC0+YXdha2UgdGhlcmUgaXMgbm8gbmVl
ZCB0byBnbwp2aWEgaTkxNSBzaW5jZSBib3RoIHRoZSB3YWtlcmVmIGFuZCBhd2FrZSBhcmUgbWVt
YmVycyBvZiBndC4KClNpZ25lZC1vZmYtYnk6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxp
bkBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3RfcG0uYyB8
IDYgKysrLS0tCiAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygt
KQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0X3BtLmMgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndF9wbS5jCmluZGV4IDY1YzBkMGM5ZDU0My4u
MzFjNWUxOTEwNzQwIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9n
dF9wbS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0X3BtLmMKQEAgLTYy
LDkgKzYyLDkgQEAgdm9pZCBpbnRlbF9ndF9wbV9nZXQoc3RydWN0IGludGVsX2d0ICpndCkKIAog
c3RhdGljIGludCBpbnRlbF9ndF9wYXJrKHN0cnVjdCBpbnRlbF93YWtlcmVmICp3ZikKIHsKLQlz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9Ci0JCWNvbnRhaW5lcl9vZih3ZiwgdHlwZW9m
KCppOTE1KSwgZ3Qud2FrZXJlZik7Ci0JaW50ZWxfd2FrZXJlZl90IHdha2VyZWYgPSBmZXRjaF9h
bmRfemVybygmaTkxNS0+Z3QuYXdha2UpOworCXN0cnVjdCBpbnRlbF9ndCAqZ3QgPSBjb250YWlu
ZXJfb2Yod2YsIHR5cGVvZigqZ3QpLCB3YWtlcmVmKTsKKwlpbnRlbF93YWtlcmVmX3Qgd2FrZXJl
ZiA9IGZldGNoX2FuZF96ZXJvKCZndC0+YXdha2UpOworCXN0cnVjdCBkcm1faTkxNV9wcml2YXRl
ICppOTE1ID0gZ3QtPmk5MTU7CiAKIAlHRU1fVFJBQ0UoIlxuIik7CiAKLS0gCjIuMjAuMQoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
