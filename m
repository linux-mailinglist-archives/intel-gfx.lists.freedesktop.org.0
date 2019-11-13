Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B93CFB40E
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Nov 2019 16:46:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 013216E9FF;
	Wed, 13 Nov 2019 15:46:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8620D6E9FF
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Nov 2019 15:46:54 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Nov 2019 07:46:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,300,1569308400"; d="scan'208";a="194707093"
Received: from sdsadara-mobl3.ger.corp.intel.com (HELO
 delly.ger.corp.intel.com) ([10.252.42.245])
 by orsmga007.jf.intel.com with ESMTP; 13 Nov 2019 07:46:51 -0800
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 13 Nov 2019 17:46:39 +0200
Message-Id: <20191113154639.27144-1-lionel.g.landwerlin@intel.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/perf: don't forget noa wait after oa
 config
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

SSdtIG9ic2VydmluZyBpbmNvaGVyZW5jZSBtZXRyaWMgdmFsdWVzLCBjaGFuZ2luZyBmcm9tIHJ1
biB0byBydW4uCgpJdCBhcHBlYXJzIHRoZSBwYXRjaGVzIGludHJvZHVjaW5nIG5vYSB3YWl0ICYg
cmVjb25maWd1cmF0aW9uIGZyb20KY29tbWFuZCBzdHJlYW0gc3dpdGNoZWQgcGxhY2VzIGluIHRo
ZSBzZXJpZXMgbXVsdGlwbGUgdGltZXMgZHVyaW5nIHRoZQpyZXZpZXcuIFRoaXMgbGVhZCB0byB0
aGUgZGVwZW5kZW5jeSBvZiBvbmUgb250byB0aGUgb3JkZXIgdG8gZ28KbWlzc2luZy4uLgoKU2ln
bmVkLW9mZi1ieTogTGlvbmVsIExhbmR3ZXJsaW4gPGxpb25lbC5nLmxhbmR3ZXJsaW5AaW50ZWwu
Y29tPgpGaXhlczogMTVkMGFjZTFmODc2ICgiZHJtL2k5MTUvcGVyZjogZXhlY3V0ZSBPQSBjb25m
aWd1cmF0aW9uIGZyb20gY29tbWFuZCBzdHJlYW0iKQotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfcGVyZi5jIHwgOSArKysrKysrLS0KIDEgZmlsZSBjaGFuZ2VkLCA3IGluc2VydGlvbnMo
KyksIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9wZXJmLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BlcmYuYwppbmRleCA1MDcyMzZi
ZDQxYWUuLjMxZTQ3ZWUyMzM1NyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9wZXJmLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wZXJmLmMKQEAgLTE4NzAs
NyArMTg3MCw3IEBAIGFsbG9jX29hX2NvbmZpZ19idWZmZXIoc3RydWN0IGk5MTVfcGVyZl9zdHJl
YW0gKnN0cmVhbSwKIAljb25maWdfbGVuZ3RoICs9IG51bV9scmlfZHdvcmRzKG9hX2NvbmZpZy0+
bXV4X3JlZ3NfbGVuKTsKIAljb25maWdfbGVuZ3RoICs9IG51bV9scmlfZHdvcmRzKG9hX2NvbmZp
Zy0+Yl9jb3VudGVyX3JlZ3NfbGVuKTsKIAljb25maWdfbGVuZ3RoICs9IG51bV9scmlfZHdvcmRz
KG9hX2NvbmZpZy0+ZmxleF9yZWdzX2xlbik7Ci0JY29uZmlnX2xlbmd0aCsrOyAvKiBNSV9CQVRD
SF9CVUZGRVJfRU5EICovCisJY29uZmlnX2xlbmd0aCArPSAzOyAvKiBNSV9CQVRDSF9CVUZGRVJf
U1RBUlQgKi8KIAljb25maWdfbGVuZ3RoID0gQUxJR04oc2l6ZW9mKHUzMikgKiBjb25maWdfbGVu
Z3RoLCBJOTE1X0dUVF9QQUdFX1NJWkUpOwogCiAJb2JqID0gaTkxNV9nZW1fb2JqZWN0X2NyZWF0
ZV9zaG1lbShzdHJlYW0tPnBlcmYtPmk5MTUsIGNvbmZpZ19sZW5ndGgpOwpAQCAtMTg5NSw3ICsx
ODk1LDEyIEBAIGFsbG9jX29hX2NvbmZpZ19idWZmZXIoc3RydWN0IGk5MTVfcGVyZl9zdHJlYW0g
KnN0cmVhbSwKIAkJCSAgICAgb2FfY29uZmlnLT5mbGV4X3JlZ3MsCiAJCQkgICAgIG9hX2NvbmZp
Zy0+ZmxleF9yZWdzX2xlbik7CiAKLQkqY3MrKyA9IE1JX0JBVENIX0JVRkZFUl9FTkQ7CisJLyog
SnVtcCBpbnRvIHRoZSBhY3RpdmUgd2FpdC4gKi8KKwkqY3MrKyA9IChJTlRFTF9HRU4oc3RyZWFt
LT5wZXJmLT5pOTE1KSA8IDggPworCQkgTUlfQkFUQ0hfQlVGRkVSX1NUQVJUIDoKKwkJIE1JX0JB
VENIX0JVRkZFUl9TVEFSVF9HRU44KTsKKwkqY3MrKyA9IGk5MTVfZ2d0dF9vZmZzZXQoc3RyZWFt
LT5ub2Ffd2FpdCk7CisJKmNzKysgPSAwOwogCiAJaTkxNV9nZW1fb2JqZWN0X2ZsdXNoX21hcChv
YmopOwogCWk5MTVfZ2VtX29iamVjdF91bnBpbl9tYXAob2JqKTsKLS0gCjIuMjQuMAoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
