Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 790B15B513
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Jul 2019 08:34:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC1AE89F53;
	Mon,  1 Jul 2019 06:34:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BA37C89F53
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Jul 2019 06:34:31 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Jun 2019 23:34:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,437,1557212400"; d="scan'208";a="153988726"
Received: from amanna.iind.intel.com ([10.223.74.216])
 by orsmga007.jf.intel.com with ESMTP; 30 Jun 2019 23:34:29 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  1 Jul 2019 11:56:27 +0530
Message-Id: <20190701062632.456-11-animesh.manna@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190701062632.456-1-animesh.manna@intel.com>
References: <20190701062632.456-1-animesh.manna@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 10/15] drm/i915/dsb: function to trigger
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
MTUvaW50ZWxfZHNiLmMgfCA0MyArKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKwogZHJp
dmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZHNiLmggfCAgMSArCiAyIGZpbGVzIGNoYW5nZWQsIDQ0
IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9k
c2IuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RzYi5jCmluZGV4IDMzYzgxMjAxOWNl
Yy4uMDI3MGY0ZmVmNjAwIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9k
c2IuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kc2IuYwpAQCAtMTkwLDMgKzE5
MCw0NiBAQCB2b2lkIGludGVsX2RzYl9yZWdfd3JpdGUoc3RydWN0IGludGVsX2RzYiAqZHNiLCBp
OTE1X3JlZ190IHJlZywgdTMyIHZhbCkKIAkJCQlEU0JfT1BDT0RFX1NISUZUKSB8IERTQl9CWVRF
X0VOIHwKIAkJCQlpOTE1X21taW9fcmVnX29mZnNldChyZWcpOwogfQorCit2b2lkIGludGVsX2Rz
Yl9jb21taXQoc3RydWN0IGludGVsX2RzYiAqZHNiKQoreworCXN0cnVjdCBpbnRlbF9jcnRjICpj
cnRjID0gZHNiLT5jcnRjOworCXN0cnVjdCBkcm1fZGV2aWNlICpkZXYgPSBjcnRjLT5iYXNlLmRl
djsKKwlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGRldik7CisJ
ZW51bSBwaXBlIHBpcGUgPSBjcnRjLT5waXBlOworCXUzMiBjbWRfYnVmX3RhaWwsIGNtZF9idWZf
c2l6ZTsKKworCWlmICghZHNiLT5mcmVlX3BvcykKKwkJcmV0dXJuOworCisJaWYgKCFpbnRlbF9k
c2JfZW5hYmxlX2VuZ2luZShkc2IpKQorCQlnb3RvIHJlc2V0OworCisJaWYgKGlzX2RzYl9idXN5
KGRzYikpIHsKKwkJRFJNX0RFQlVHX0tNUygiSEVBRF9QVFIgd3JpdGUgZmFpbGVkIC0gZHNiIGVu
Z2luZSBpcyBidXN5LlxuIik7CisJCWdvdG8gcmVzZXQ7CisJfQorCUk5MTVfV1JJVEUoRFNCX0hF
QURfUFRSKHBpcGUsIGRzYi0+aWQpLCBkc2ItPmNtZF9idWZfaGVhZCk7CisKKwljbWRfYnVmX3Np
emUgPSBkc2ItPmZyZWVfcG9zICogNDsKKwljbWRfYnVmX3RhaWwgPSByb3VuZF91cCgoZHNiLT5j
bWRfYnVmX2hlYWQgKyBjbWRfYnVmX3NpemUpLAorCQkJCUNBQ0hFTElORV9CWVRFUyk7CisKKwlp
ZiAoaXNfZHNiX2J1c3koZHNiKSkgeworCQlEUk1fREVCVUdfS01TKCJUQUlMX1BUUiB3cml0ZSBm
YWlsZWQgLSBkc2IgZW5naW5lIGlzIGJ1c3kuXG4iKTsKKwkJZ290byByZXNldDsKKwl9CisJRFJN
X0RFQlVHX0tNUygiRFNCIGV4ZWN1dGlvbiBzdGFydGVkIC0gYnVmLXNpemUgJXUsIGhlYWQgMHgl
eCwiCisJCSAgICAgICJ0YWlsIDB4JXhcbiIsIGNtZF9idWZfc2l6ZSwgZHNiLT5jbWRfYnVmX2hl
YWQsCisJCSAgICAgIGNtZF9idWZfdGFpbCk7CisJSTkxNV9XUklURShEU0JfVEFJTF9QVFIocGlw
ZSwgZHNiLT5pZCksIGNtZF9idWZfdGFpbCk7CisJaWYgKHdhaXRfZm9yKCFpc19kc2JfYnVzeShk
c2IpLCAxKSkgeworCQlEUk1fRVJST1IoIlRpbWVkIG91dCB3YWl0aW5nIGZvciBEU0Igd29ya2xv
YWQgY29tcGxldGlvbi5cbiIpOworCQlnb3RvIHJlc2V0OworCX0KKworcmVzZXQ6CisJbWVtc2V0
KGRzYi0+Y21kX2J1ZiwgMCwgRFNCX0JVRl9TSVpFKTsKKwlkc2ItPmZyZWVfcG9zID0gMDsKKwlp
bnRlbF9kc2JfZGlzYWJsZV9lbmdpbmUoZHNiKTsKK30KZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2ludGVsX2RzYi5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZHNiLmgK
aW5kZXggMWZhODkzY2M4YzJlLi43MzMwYWRkM2M5NmYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2ludGVsX2RzYi5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Rz
Yi5oCkBAIC00Miw1ICs0Miw2IEBAIHN0cnVjdCBpbnRlbF9kc2Igewogc3RydWN0IGludGVsX2Rz
YiAqCiBpbnRlbF9kc2JfZ2V0KHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjKTsKIHZvaWQgaW50ZWxf
ZHNiX3JlZ193cml0ZShzdHJ1Y3QgaW50ZWxfZHNiICpkc2IsIGk5MTVfcmVnX3QgcmVnLCB1MzIg
dmFsKTsKK3ZvaWQgaW50ZWxfZHNiX2NvbW1pdChzdHJ1Y3QgaW50ZWxfZHNiICpkc2IpOwogCiAj
ZW5kaWYKLS0gCjIuMjEuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4
