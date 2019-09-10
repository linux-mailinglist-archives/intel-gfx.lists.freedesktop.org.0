Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 64C9BAED3D
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Sep 2019 16:38:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BBCD66E0F6;
	Tue, 10 Sep 2019 14:38:40 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DAD256E0ED
 for <Intel-gfx@lists.freedesktop.org>; Tue, 10 Sep 2019 14:38:37 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Sep 2019 07:38:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,489,1559545200"; d="scan'208";a="175328640"
Received: from dudibroo-mobl2.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.252.31.14])
 by orsmga007.jf.intel.com with ESMTP; 10 Sep 2019 07:38:36 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Tue, 10 Sep 2019 15:38:21 +0100
Message-Id: <20190910143823.10686-3-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190910143823.10686-1-tvrtko.ursulin@linux.intel.com>
References: <20190910143823.10686-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/4] drm/i915: Make wait_for_timelines take
 struct intel_gt
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

RnJvbTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KClRpbWVsaW5l
cyBsaXZlIGluIHN0cnVjdCBpbnRlbF9ndCBzbyBtYWtlIHdhaXRfZm9yX3RpbWVsaW5lcyB0YWtl
CmV4YWN0bHkgd2hhdCBpdCBuZWVkcy4KClNpZ25lZC1vZmYtYnk6IFR2cnRrbyBVcnN1bGluIDx0
dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+CkNjOiBBbmRpIFNoeXRpIDxhbmRpLnNoeXRpQGludGVs
LmNvbT4KQ2M6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgotLS0KIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtLmMgfCAxMSArKysrKystLS0tLQogMSBmaWxlIGNo
YW5nZWQsIDYgaW5zZXJ0aW9ucygrKSwgNSBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9n
ZW0uYwppbmRleCBkYjI2ODE1MTRhMGIuLjJkYTk1NDRmYTlhNCAxMDA2NDQKLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9nZW0uYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X2dlbS5jCkBAIC04ODgsMTAgKzg4OCw5IEBAIHZvaWQgaTkxNV9nZW1fcnVudGltZV9zdXNwZW5k
KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQogfQogCiBzdGF0aWMgbG9uZwotd2FpdF9m
b3JfdGltZWxpbmVzKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LAotCQkgICB1bnNpZ25l
ZCBpbnQgd2FpdCwgbG9uZyB0aW1lb3V0KQord2FpdF9mb3JfdGltZWxpbmVzKHN0cnVjdCBpbnRl
bF9ndCAqZ3QsIHVuc2lnbmVkIGludCB3YWl0LCBsb25nIHRpbWVvdXQpCiB7Ci0Jc3RydWN0IGlu
dGVsX2d0X3RpbWVsaW5lcyAqdGltZWxpbmVzID0gJmk5MTUtPmd0LnRpbWVsaW5lczsKKwlzdHJ1
Y3QgaW50ZWxfZ3RfdGltZWxpbmVzICp0aW1lbGluZXMgPSAmZ3QtPnRpbWVsaW5lczsKIAlzdHJ1
Y3QgaW50ZWxfdGltZWxpbmUgKnRsOwogCXVuc2lnbmVkIGxvbmcgZmxhZ3M7CiAKQEAgLTkzNCwx
NSArOTMzLDE3IEBAIHdhaXRfZm9yX3RpbWVsaW5lcyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAq
aTkxNSwKIGludCBpOTE1X2dlbV93YWl0X2Zvcl9pZGxlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRl
ICppOTE1LAogCQkJICAgdW5zaWduZWQgaW50IGZsYWdzLCBsb25nIHRpbWVvdXQpCiB7CisJc3Ry
dWN0IGludGVsX2d0ICpndCA9ICZpOTE1LT5ndDsKKwogCS8qIElmIHRoZSBkZXZpY2UgaXMgYXNs
ZWVwLCB3ZSBoYXZlIG5vIHJlcXVlc3RzIG91dHN0YW5kaW5nICovCi0JaWYgKCFpbnRlbF9ndF9w
bV9pc19hd2FrZSgmaTkxNS0+Z3QpKQorCWlmICghaW50ZWxfZ3RfcG1faXNfYXdha2UoZ3QpKQog
CQlyZXR1cm4gMDsKIAogCUdFTV9UUkFDRSgiZmxhZ3M9JXggKCVzKSwgdGltZW91dD0lbGQlc1xu
IiwKIAkJICBmbGFncywgZmxhZ3MgJiBJOTE1X1dBSVRfTE9DS0VEID8gImxvY2tlZCIgOiAidW5s
b2NrZWQiLAogCQkgIHRpbWVvdXQsIHRpbWVvdXQgPT0gTUFYX1NDSEVEVUxFX1RJTUVPVVQgPyAi
IChmb3JldmVyKSIgOiAiIik7CiAKLQl0aW1lb3V0ID0gd2FpdF9mb3JfdGltZWxpbmVzKGk5MTUs
IGZsYWdzLCB0aW1lb3V0KTsKKwl0aW1lb3V0ID0gd2FpdF9mb3JfdGltZWxpbmVzKGd0LCBmbGFn
cywgdGltZW91dCk7CiAJaWYgKHRpbWVvdXQgPCAwKQogCQlyZXR1cm4gdGltZW91dDsKIAotLSAK
Mi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
