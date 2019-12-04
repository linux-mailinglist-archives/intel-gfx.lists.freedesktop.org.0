Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D4B731120F6
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Dec 2019 02:15:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0CBA16E882;
	Wed,  4 Dec 2019 01:15:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from huawei.com (szxga05-in.huawei.com [45.249.212.191])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8D0E76E072;
 Wed,  4 Dec 2019 01:04:28 +0000 (UTC)
Received: from DGGEMS411-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id ACC5A1C5290A53DC4202;
 Wed,  4 Dec 2019 09:04:24 +0800 (CST)
Received: from localhost.localdomain.localdomain (10.175.113.25) by
 DGGEMS411-HUB.china.huawei.com (10.3.19.211) with Microsoft SMTP Server id
 14.3.439.0; Wed, 4 Dec 2019 09:04:14 +0800
From: Mao Wenan <maowenan@huawei.com>
To: <jani.nikula@linux.intel.com>, <joonas.lahtinen@linux.intel.com>,
 <rodrigo.vivi@intel.com>, <airlied@linux.ie>, <daniel@ffwll.ch>
Date: Wed, 4 Dec 2019 09:01:54 +0800
Message-ID: <20191204010154.152396-1-maowenan@huawei.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Originating-IP: [10.175.113.25]
X-CFilter-Loop: Reflected
X-Mailman-Approved-At: Wed, 04 Dec 2019 01:15:52 +0000
Subject: [Intel-gfx] [PATCH -next] drm/i915/perf: drop pointless static
 qualifier in i915_perf_add_config_ioctl()
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
Cc: intel-gfx@lists.freedesktop.org, kernel-janitors@vger.kernel.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Mao Wenan <maowenan@huawei.com>, Hulk Robot <hulkci@huawei.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhlcmUgaXMgbm8gbmVlZCB0byBoYXZlIHRoZSAnVCAqdicgdmFyaWFibGUgc3RhdGljCnNpbmNl
IG5ldyB2YWx1ZSBhbHdheXMgYmUgYXNzaWduZWQgYmVmb3JlIHVzZSBpdC4KClJlcG9ydGVkLWJ5
OiBIdWxrIFJvYm90IDxodWxrY2lAaHVhd2VpLmNvbT4KU2lnbmVkLW9mZi1ieTogTWFvIFdlbmFu
IDxtYW93ZW5hbkBodWF3ZWkuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGVy
Zi5jIHwgMiArLQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0p
CgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wZXJmLmMgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X3BlcmYuYwppbmRleCA2NWQ3YzJlNTk5ZGUuLjcwMGY2YTlmMmZm
YiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wZXJmLmMKKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wZXJmLmMKQEAgLTM5NTUsNyArMzk1NSw3IEBAIGludCBp
OTE1X3BlcmZfYWRkX2NvbmZpZ19pb2N0bChzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LCB2b2lkICpk
YXRhLAogCXN0cnVjdCBpOTE1X3BlcmYgKnBlcmYgPSAmdG9faTkxNShkZXYpLT5wZXJmOwogCXN0
cnVjdCBkcm1faTkxNV9wZXJmX29hX2NvbmZpZyAqYXJncyA9IGRhdGE7CiAJc3RydWN0IGk5MTVf
b2FfY29uZmlnICpvYV9jb25maWcsICp0bXA7Ci0Jc3RhdGljIHN0cnVjdCBpOTE1X29hX3JlZyAq
cmVnczsKKwlzdHJ1Y3QgaTkxNV9vYV9yZWcgKnJlZ3M7CiAJaW50IGVyciwgaWQ7CiAKIAlpZiAo
IXBlcmYtPmk5MTUpIHsKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4
