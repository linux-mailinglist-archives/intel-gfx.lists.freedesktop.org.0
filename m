Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 531A497265
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Aug 2019 08:40:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 69C076E90E;
	Wed, 21 Aug 2019 06:40:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E4D796E912
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Aug 2019 06:40:23 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Aug 2019 23:40:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,411,1559545200"; d="scan'208";a="195935787"
Received: from amanna.iind.intel.com ([10.223.74.216])
 by fmsmga001.fm.intel.com with ESMTP; 20 Aug 2019 23:40:22 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 21 Aug 2019 12:02:30 +0530
Message-Id: <20190821063236.19705-11-animesh.manna@intel.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190821063236.19705-1-animesh.manna@intel.com>
References: <20190821063236.19705-1-animesh.manna@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 10/15] drm/i915/dsb: function to trigger
 workload execution of DSB.
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
Cc: Jani Nikula <jani.nikula@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QmF0Y2ggYnVmZmVyIHdpbGwgYmUgY3JlYXRlZCB0aHJvdWdoIGRzYi1yZWctd3JpdGUgZnVuY3Rp
b24gd2hpY2ggY2FuIGhhdmUKc2luZ2xlL211bHRpcGxlIHJlcXVlc3QgYmFzZWQgb24gdXNlY2Fz
ZSBhbmQgb25jZSB0aGUgYnVmZmVyIGlzIHJlYWR5CmNvbW1pdCBmdW5jdGlvbiB3aWxsIHRyaWdn
ZXIgdGhlIGV4ZWN1dGlvbiBvZiB0aGUgYmF0Y2ggYnVmZmVyLiBBbGwKdGhlIHJlZ2lzdGVycyB3
aWxsIGJlIHVwZGF0ZWQgc2ltdWx0YW5lb3VzbHkuCgpDYzogSW1yZSBEZWFrIDxpbXJlLmRlYWtA
aW50ZWwuY29tPgpDYzogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4KQ2M6IFJv
ZHJpZ28gVml2aSA8cm9kcmlnby52aXZpQGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogQW5pbWVz
aCBNYW5uYSA8YW5pbWVzaC5tYW5uYUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kc2IuYyB8IDQzICsrKysrKysrKysrKysrKysrKysrKysrKwogZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2IuaCB8ICAxICsKIDIgZmlsZXMgY2hh
bmdlZCwgNDQgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZHNiLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2RzYi5jCmluZGV4IGY5N2QwYzA2YTA0OS4uN2UwYTliMzdmNzAyIDEwMDY0NAotLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzYi5jCisrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmMKQEAgLTE5MSwzICsxOTEsNDYgQEAgdm9pZCBpbnRl
bF9kc2JfcmVnX3dyaXRlKHN0cnVjdCBpbnRlbF9kc2IgKmRzYiwgaTkxNV9yZWdfdCByZWcsIHUz
MiB2YWwpCiAJCQkJRFNCX09QQ09ERV9TSElGVCkgfCBEU0JfQllURV9FTiB8CiAJCQkJaTkxNV9t
bWlvX3JlZ19vZmZzZXQocmVnKTsKIH0KKwordm9pZCBpbnRlbF9kc2JfY29tbWl0KHN0cnVjdCBp
bnRlbF9kc2IgKmRzYikKK3sKKwlzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YyA9IGRzYi0+Y3J0YzsK
KwlzdHJ1Y3QgZHJtX2RldmljZSAqZGV2ID0gY3J0Yy0+YmFzZS5kZXY7CisJc3RydWN0IGRybV9p
OTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShkZXYpOworCWVudW0gcGlwZSBwaXBlID0g
Y3J0Yy0+cGlwZTsKKwl1MzIgY21kX2J1Zl90YWlsLCBjbWRfYnVmX3NpemU7CisKKwlpZiAoIWRz
Yi0+ZnJlZV9wb3MpCisJCXJldHVybjsKKworCWlmICghaW50ZWxfZHNiX2VuYWJsZV9lbmdpbmUo
ZHNiKSkKKwkJZ290byByZXNldDsKKworCWlmIChpc19kc2JfYnVzeShkc2IpKSB7CisJCURSTV9E
RUJVR19LTVMoIkhFQURfUFRSIHdyaXRlIGZhaWxlZCAtIGRzYiBlbmdpbmUgaXMgYnVzeS5cbiIp
OworCQlnb3RvIHJlc2V0OworCX0KKwlJOTE1X1dSSVRFKERTQl9IRUFEX1BUUihwaXBlLCBkc2It
PmlkKSwgZHNiLT5jbWRfYnVmX2hlYWQpOworCisJY21kX2J1Zl9zaXplID0gZHNiLT5mcmVlX3Bv
cyAqIDQ7CisJY21kX2J1Zl90YWlsID0gcm91bmRfdXAoKGRzYi0+Y21kX2J1Zl9oZWFkICsgY21k
X2J1Zl9zaXplKSwKKwkJCQlDQUNIRUxJTkVfQllURVMpOworCisJaWYgKGlzX2RzYl9idXN5KGRz
YikpIHsKKwkJRFJNX0RFQlVHX0tNUygiVEFJTF9QVFIgd3JpdGUgZmFpbGVkIC0gZHNiIGVuZ2lu
ZSBpcyBidXN5LlxuIik7CisJCWdvdG8gcmVzZXQ7CisJfQorCURSTV9ERUJVR19LTVMoIkRTQiBl
eGVjdXRpb24gc3RhcnRlZCAtIGJ1Zi1zaXplICV1LCBoZWFkIDB4JXgsIgorCQkgICAgICAidGFp
bCAweCV4XG4iLCBjbWRfYnVmX3NpemUsIGRzYi0+Y21kX2J1Zl9oZWFkLAorCQkgICAgICBjbWRf
YnVmX3RhaWwpOworCUk5MTVfV1JJVEUoRFNCX1RBSUxfUFRSKHBpcGUsIGRzYi0+aWQpLCBjbWRf
YnVmX3RhaWwpOworCWlmICh3YWl0X2ZvcighaXNfZHNiX2J1c3koZHNiKSwgMSkpIHsKKwkJRFJN
X0VSUk9SKCJUaW1lZCBvdXQgd2FpdGluZyBmb3IgRFNCIHdvcmtsb2FkIGNvbXBsZXRpb24uXG4i
KTsKKwkJZ290byByZXNldDsKKwl9CisKK3Jlc2V0OgorCW1lbXNldChkc2ItPmNtZF9idWYsIDAs
IERTQl9CVUZfU0laRSk7CisJZHNiLT5mcmVlX3BvcyA9IDA7CisJaW50ZWxfZHNiX2Rpc2FibGVf
ZW5naW5lKGRzYik7Cit9CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2RzYi5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2IuaApp
bmRleCAxZmE4OTNjYzhjMmUuLjczMzBhZGQzYzk2ZiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2IuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2RzYi5oCkBAIC00Miw1ICs0Miw2IEBAIHN0cnVjdCBpbnRlbF9kc2Igewog
c3RydWN0IGludGVsX2RzYiAqCiBpbnRlbF9kc2JfZ2V0KHN0cnVjdCBpbnRlbF9jcnRjICpjcnRj
KTsKIHZvaWQgaW50ZWxfZHNiX3JlZ193cml0ZShzdHJ1Y3QgaW50ZWxfZHNiICpkc2IsIGk5MTVf
cmVnX3QgcmVnLCB1MzIgdmFsKTsKK3ZvaWQgaW50ZWxfZHNiX2NvbW1pdChzdHJ1Y3QgaW50ZWxf
ZHNiICpkc2IpOwogCiAjZW5kaWYKLS0gCjIuMjIuMAoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4
