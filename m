Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CD317E019
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Aug 2019 18:23:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9EEFD6E72E;
	Thu,  1 Aug 2019 16:23:37 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 62B206E732
 for <Intel-gfx@lists.freedesktop.org>; Thu,  1 Aug 2019 16:23:35 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 01 Aug 2019 09:23:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,334,1559545200"; d="scan'208";a="163665981"
Received: from gadevlin-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.251.95.57])
 by orsmga007.jf.intel.com with ESMTP; 01 Aug 2019 09:23:34 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Thu,  1 Aug 2019 17:23:30 +0100
Message-Id: <20190801162330.2729-4-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190801162330.2729-1-tvrtko.ursulin@linux.intel.com>
References: <20190801162330.2729-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 4/4] drm/i915/pmu: Make get_rc6 take intel_gt
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

RnJvbTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KClJDNiBpcyBh
IEdUIHN0YXRlIHNvIG1ha2UgdGhlIGZ1bmN0aW9uIHBhcmFtZXRlciByZWZsZWN0IHRoYXQuCgpT
aWduZWQtb2ZmLWJ5OiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgpS
ZXZpZXdlZC1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Ci0tLQog
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wbXUuYyB8IDEyICsrKysrKystLS0tLQogMSBmaWxl
IGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKSwgNSBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BtdS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9wbXUuYwppbmRleCA1Y2Y5YTQ3YTBjNDMuLmUwZTAxODBiY2E3YyAxMDA2NDQKLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wbXUuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X3BtdS5jCkBAIC00MzEsOCArNDMxLDkgQEAgc3RhdGljIGludCBpOTE1X3BtdV9ldmVudF9p
bml0KHN0cnVjdCBwZXJmX2V2ZW50ICpldmVudCkKIAlyZXR1cm4gMDsKIH0KIAotc3RhdGljIHU2
NCBfX2dldF9yYzYoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCitzdGF0aWMgdTY0IF9f
Z2V0X3JjNihzdHJ1Y3QgaW50ZWxfZ3QgKmd0KQogeworCXN0cnVjdCBkcm1faTkxNV9wcml2YXRl
ICppOTE1ID0gZ3QtPmk5MTU7CiAJdTY0IHZhbDsKIAogCXZhbCA9IGludGVsX3JjNl9yZXNpZGVu
Y3lfbnMoaTkxNSwKQEAgLTQ0OSw5ICs0NTAsMTAgQEAgc3RhdGljIHU2NCBfX2dldF9yYzYoc3Ry
dWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCiAJcmV0dXJuIHZhbDsKIH0KIAotc3RhdGljIHU2
NCBnZXRfcmM2KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQorc3RhdGljIHU2NCBnZXRf
cmM2KHN0cnVjdCBpbnRlbF9ndCAqZ3QpCiB7CiAjaWYgSVNfRU5BQkxFRChDT05GSUdfUE0pCisJ
c3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSBndC0+aTkxNTsKIAlzdHJ1Y3QgaW50ZWxf
cnVudGltZV9wbSAqcnBtID0gJmk5MTUtPnJ1bnRpbWVfcG07CiAJc3RydWN0IGk5MTVfcG11ICpw
bXUgPSAmaTkxNS0+cG11OwogCWludGVsX3dha2VyZWZfdCB3YWtlcmVmOwpAQCAtNDYwLDcgKzQ2
Miw3IEBAIHN0YXRpYyB1NjQgZ2V0X3JjNihzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkK
IAogCXdha2VyZWYgPSBpbnRlbF9ydW50aW1lX3BtX2dldF9pZl9pbl91c2UocnBtKTsKIAlpZiAo
d2FrZXJlZikgewotCQl2YWwgPSBfX2dldF9yYzYoaTkxNSk7CisJCXZhbCA9IF9fZ2V0X3JjNihn
dCk7CiAJCWludGVsX3J1bnRpbWVfcG1fcHV0KHJwbSwgd2FrZXJlZik7CiAKIAkJLyoKQEAgLTUy
Myw3ICs1MjUsNyBAQCBzdGF0aWMgdTY0IGdldF9yYzYoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUg
Kmk5MTUpCiAKIAlyZXR1cm4gdmFsOwogI2Vsc2UKLQlyZXR1cm4gX19nZXRfcmM2KGk5MTUpOwor
CXJldHVybiBfX2dldF9yYzYoZ3QpOwogI2VuZGlmCiB9CiAKQEAgLTU2Niw3ICs1NjgsNyBAQCBz
dGF0aWMgdTY0IF9faTkxNV9wbXVfZXZlbnRfcmVhZChzdHJ1Y3QgcGVyZl9ldmVudCAqZXZlbnQp
CiAJCQl2YWwgPSBjb3VudF9pbnRlcnJ1cHRzKGk5MTUpOwogCQkJYnJlYWs7CiAJCWNhc2UgSTkx
NV9QTVVfUkM2X1JFU0lERU5DWToKLQkJCXZhbCA9IGdldF9yYzYoaTkxNSk7CisJCQl2YWwgPSBn
ZXRfcmM2KCZpOTE1LT5ndCk7CiAJCQlicmVhazsKIAkJfQogCX0KLS0gCjIuMjAuMQoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
