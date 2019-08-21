Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7073F97263
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Aug 2019 08:40:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D45246E911;
	Wed, 21 Aug 2019 06:40:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 51AC76E90D
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Aug 2019 06:40:21 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Aug 2019 23:40:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,411,1559545200"; d="scan'208";a="195935755"
Received: from amanna.iind.intel.com ([10.223.74.216])
 by fmsmga001.fm.intel.com with ESMTP; 20 Aug 2019 23:40:19 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 21 Aug 2019 12:02:29 +0530
Message-Id: <20190821063236.19705-10-animesh.manna@intel.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190821063236.19705-1-animesh.manna@intel.com>
References: <20190821063236.19705-1-animesh.manna@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 09/15] drm/i915/dsb: functions to
 enable/disable DSB engine.
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
Cc: Michel Thierry <michel.thierry@intel.com>,
 Jani Nikula <jani.nikula@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RFNCIHdpbGwgYmUgdXNlZCBmb3IgcGVyZm9ybWFuY2UgaW1wcm92ZW1lbnQgZm9yIHNvbWUgc3Bl
Y2lhbCBzY2VuYXJpby4KRFNCIGVuZ2luZSB3aWxsIGJlIGVuYWJsZWQgYmFzZWQgb24gbmVlZCBh
bmQgYWZ0ZXIgY29tcGxldGlvbiBvZiBpdHMgd29yawp3aWxsIGJlIGRpc2FibGVkLiBBcGkgYWRk
ZWQgZm9yIGVuYWJsZS9kaXNhYmxlIG9wZXJhdGlvbiBieSB1c2luZyBEU0JfQ1RSTApyZWdpc3Rl
ci4KCkNjOiBNaWNoZWwgVGhpZXJyeSA8bWljaGVsLnRoaWVycnlAaW50ZWwuY29tPgpDYzogSmFu
aSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4KQ2M6IFJvZHJpZ28gVml2aSA8cm9kcmln
by52aXZpQGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogQW5pbWVzaCBNYW5uYSA8YW5pbWVzaC5t
YW5uYUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
c2IuYyB8IDQwICsrKysrKysrKysrKysrKysrKysrKysrKwogMSBmaWxlIGNoYW5nZWQsIDQwIGlu
c2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2RzYi5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2IuYwppbmRl
eCA0YTM4Mjc3ZGM0YjEuLmY5N2QwYzA2YTA0OSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kc2IuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2RzYi5jCkBAIC0zMyw2ICszMyw0NiBAQCBzdGF0aWMgaW5saW5lIGJvb2wgaXNf
ZHNiX2J1c3koc3RydWN0IGludGVsX2RzYiAqZHNiKQogCXJldHVybiBEU0JfU1RBVFVTICYgSTkx
NV9SRUFEKERTQl9DVFJMKHBpcGUsIGRzYi0+aWQpKTsKIH0KIAorc3RhdGljIGJvb2wgaW50ZWxf
ZHNiX2VuYWJsZV9lbmdpbmUoc3RydWN0IGludGVsX2RzYiAqZHNiKQoreworCXN0cnVjdCBpbnRl
bF9jcnRjICpjcnRjID0gZHNiLT5jcnRjOworCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZf
cHJpdiA9IHRvX2k5MTUoY3J0Yy0+YmFzZS5kZXYpOworCWVudW0gcGlwZSBwaXBlID0gY3J0Yy0+
cGlwZTsKKwl1MzIgZHNiX2N0cmw7CisKKwlkc2JfY3RybCA9IEk5MTVfUkVBRChEU0JfQ1RSTChw
aXBlLCBkc2ItPmlkKSk7CisKKwlpZiAoRFNCX1NUQVRVUyAmIGRzYl9jdHJsKSB7CisJCURSTV9E
RUJVR19LTVMoIkRTQiBlbmdpbmUgaXMgYnVzeS5cbiIpOworCQlyZXR1cm4gZmFsc2U7CisJfQor
CisJZHNiX2N0cmwgfD0gRFNCX0VOQUJMRTsKKwlJOTE1X1dSSVRFKERTQl9DVFJMKHBpcGUsIGRz
Yi0+aWQpLCBkc2JfY3RybCk7CisKKwlyZXR1cm4gdHJ1ZTsKK30KKworc3RhdGljIGJvb2wgaW50
ZWxfZHNiX2Rpc2FibGVfZW5naW5lKHN0cnVjdCBpbnRlbF9kc2IgKmRzYikKK3sKKwlzdHJ1Y3Qg
aW50ZWxfY3J0YyAqY3J0YyA9IGRzYi0+Y3J0YzsKKwlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAq
ZGV2X3ByaXYgPSB0b19pOTE1KGNydGMtPmJhc2UuZGV2KTsKKwllbnVtIHBpcGUgcGlwZSA9IGNy
dGMtPnBpcGU7CisJdTMyIGRzYl9jdHJsOworCisJZHNiX2N0cmwgPSBJOTE1X1JFQUQoRFNCX0NU
UkwocGlwZSwgZHNiLT5pZCkpOworCisJaWYgKERTQl9TVEFUVVMgJiBkc2JfY3RybCkgeworCQlE
Uk1fREVCVUdfS01TKCJEU0IgZW5naW5lIGlzIGJ1c3kuXG4iKTsKKwkJcmV0dXJuIGZhbHNlOwor
CX0KKworCWRzYl9jdHJsICY9IH5EU0JfRU5BQkxFOworCUk5MTVfV1JJVEUoRFNCX0NUUkwocGlw
ZSwgZHNiLT5pZCksIGRzYl9jdHJsKTsKKworCXJldHVybiB0cnVlOworfQorCiBzdHJ1Y3QgaW50
ZWxfZHNiICoKIGludGVsX2RzYl9nZXQoc3RydWN0IGludGVsX2NydGMgKmNydGMpCiB7Ci0tIAoy
LjIyLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
