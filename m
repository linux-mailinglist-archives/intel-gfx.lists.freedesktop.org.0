Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A551521B484
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jul 2020 14:00:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 05FE76EC16;
	Fri, 10 Jul 2020 12:00:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CFCFD6EC16
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Jul 2020 12:00:37 +0000 (UTC)
IronPort-SDR: boqb1jBq3/qfOgLCbUKosAtaptiR6Y7ZJOS7OEujERe0AHWh5RMhr1/X0gMsprHq/RIXN+osxt
 N9BMALMnLKKQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9677"; a="209716670"
X-IronPort-AV: E=Sophos;i="5.75,335,1589266800"; d="scan'208";a="209716670"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2020 05:00:37 -0700
IronPort-SDR: o7sqA5uIToqYoQo488YMEhSWDuYjf+yVlySQ29iit5NEbaLCh7JQzR8GI9XNh2XJ7ECUcVHFz2
 u49QhNx003ZA==
X-IronPort-AV: E=Sophos;i="5.75,335,1589266800"; d="scan'208";a="458257939"
Received: from nmartino-mobl1.ger.corp.intel.com (HELO
 mwahaha-bdw.ger.corp.intel.com) ([10.255.207.224])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2020 05:00:35 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 10 Jul 2020 12:57:34 +0100
Message-Id: <20200710115757.290984-38-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200710115757.290984-1-matthew.auld@intel.com>
References: <20200710115757.290984-1-matthew.auld@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC 37/60] drm/i915/lmem: allocate cmd ring in lmem
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
Cc: Michel Thierry <michel.thierry@intel.com>,
 Abdiel Janulgue <abdiel.janulgue@linux.intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogTWljaGVsIFRoaWVycnkgPG1pY2hlbC50aGllcnJ5QGludGVsLmNvbT4KClNpZ25lZC1v
ZmYtYnk6IE1pY2hlbCBUaGllcnJ5IDxtaWNoZWwudGhpZXJyeUBpbnRlbC5jb20+ClNpZ25lZC1v
ZmYtYnk6IE1hdHRoZXcgQXVsZCA8bWF0dGhldy5hdWxkQGludGVsLmNvbT4KQ2M6IEpvb25hcyBM
YWh0aW5lbiA8am9vbmFzLmxhaHRpbmVuQGxpbnV4LmludGVsLmNvbT4KQ2M6IEFiZGllbCBKYW51
bGd1ZSA8YWJkaWVsLmphbnVsZ3VlQGxpbnV4LmludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9ndC9pbnRlbF9yaW5nLmMgfCAxNSArKysrKysrKysrKy0tLS0KIDEgZmlsZSBjaGFu
Z2VkLCAxMSBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3JpbmcuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L2ludGVsX3JpbmcuYwppbmRleCBiZGIzMjQxNjdlZjMuLjYyN2Q2MDM0YzI0NCAxMDA2NDQKLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmluZy5jCisrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L2ludGVsX3JpbmcuYwpAQCAtNCw2ICs0LDcgQEAKICAqIENvcHlyaWdodCDC
qSAyMDE5IEludGVsIENvcnBvcmF0aW9uCiAgKi8KIAorI2luY2x1ZGUgImdlbS9pOTE1X2dlbV9s
bWVtLmgiCiAjaW5jbHVkZSAiZ2VtL2k5MTVfZ2VtX29iamVjdC5oIgogI2luY2x1ZGUgImk5MTVf
ZHJ2LmgiCiAjaW5jbHVkZSAiaTkxNV92bWEuaCIKQEAgLTEwMiwxMCArMTAzLDE2IEBAIHN0YXRp
YyBzdHJ1Y3QgaTkxNV92bWEgKmNyZWF0ZV9yaW5nX3ZtYShzdHJ1Y3QgaTkxNV9nZ3R0ICpnZ3R0
LCBpbnQgc2l6ZSkKIAlzdHJ1Y3QgaTkxNV92bWEgKnZtYTsKIAogCW9iaiA9IEVSUl9QVFIoLUVO
T0RFVik7Ci0JaWYgKGk5MTVfZ2d0dF9oYXNfYXBlcnR1cmUoZ2d0dCkpCi0JCW9iaiA9IGk5MTVf
Z2VtX29iamVjdF9jcmVhdGVfc3RvbGVuKGk5MTUsIHNpemUpOwotCWlmIChJU19FUlIob2JqKSkK
LQkJb2JqID0gaTkxNV9nZW1fb2JqZWN0X2NyZWF0ZV9pbnRlcm5hbChpOTE1LCBzaXplKTsKKwlp
ZiAoSEFTX0xNRU0oaTkxNSkpIHsKKwkJb2JqID0gaTkxNV9nZW1fb2JqZWN0X2NyZWF0ZV9sbWVt
KGk5MTUsIHNpemUsCisJCQkJCQkgIEk5MTVfQk9fQUxMT0NfQ09OVElHVU9VUyB8CisJCQkJCQkg
IEk5MTVfQk9fQUxMT0NfVk9MQVRJTEUpOworCX0gZWxzZSB7CisJCWlmIChpOTE1X2dndHRfaGFz
X2FwZXJ0dXJlKGdndHQpKQorCQkJb2JqID0gaTkxNV9nZW1fb2JqZWN0X2NyZWF0ZV9zdG9sZW4o
aTkxNSwgc2l6ZSk7CisJCWlmIChJU19FUlIob2JqKSkKKwkJCW9iaiA9IGk5MTVfZ2VtX29iamVj
dF9jcmVhdGVfaW50ZXJuYWwoaTkxNSwgc2l6ZSk7CisJfQogCWlmIChJU19FUlIob2JqKSkKIAkJ
cmV0dXJuIEVSUl9DQVNUKG9iaik7CiAKLS0gCjIuMjYuMgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
