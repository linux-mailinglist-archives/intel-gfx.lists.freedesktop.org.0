Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C4D0D5B512
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Jul 2019 08:34:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 365C889E23;
	Mon,  1 Jul 2019 06:34:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 99A3B89E19
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Jul 2019 06:34:27 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Jun 2019 23:34:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,437,1557212400"; d="scan'208";a="153988708"
Received: from amanna.iind.intel.com ([10.223.74.216])
 by orsmga007.jf.intel.com with ESMTP; 30 Jun 2019 23:34:25 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  1 Jul 2019 11:56:26 +0530
Message-Id: <20190701062632.456-10-animesh.manna@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190701062632.456-1-animesh.manna@intel.com>
References: <20190701062632.456-1-animesh.manna@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 09/15] drm/i915/dsb: functions to enable/disable
 DSB engine.
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
YW5uYUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZHNiLmMgfCA0
MCArKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKwogMSBmaWxlIGNoYW5nZWQsIDQwIGlu
c2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kc2Iu
YyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RzYi5jCmluZGV4IDlhZDRmYzhiOWYxZS4u
MzNjODEyMDE5Y2VjIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kc2Iu
YworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kc2IuYwpAQCAtMzIsNiArMzIsNDYg
QEAgc3RhdGljIGlubGluZSBib29sIGlzX2RzYl9idXN5KHN0cnVjdCBpbnRlbF9kc2IgKmRzYikK
IAlyZXR1cm4gRFNCX1NUQVRVUyAmIEk5MTVfUkVBRChEU0JfQ1RSTChwaXBlLCBkc2ItPmlkKSk7
CiB9CiAKK3N0YXRpYyBib29sIGludGVsX2RzYl9lbmFibGVfZW5naW5lKHN0cnVjdCBpbnRlbF9k
c2IgKmRzYikKK3sKKwlzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YyA9IGRzYi0+Y3J0YzsKKwlzdHJ1
Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGNydGMtPmJhc2UuZGV2KTsK
KwllbnVtIHBpcGUgcGlwZSA9IGNydGMtPnBpcGU7CisJdTMyIGRzYl9jdHJsOworCisJZHNiX2N0
cmwgPSBJOTE1X1JFQUQoRFNCX0NUUkwocGlwZSwgZHNiLT5pZCkpOworCisJaWYgKERTQl9TVEFU
VVMgJiBkc2JfY3RybCkgeworCQlEUk1fREVCVUdfS01TKCJEU0IgZW5naW5lIGlzIGJ1c3kuXG4i
KTsKKwkJcmV0dXJuIGZhbHNlOworCX0KKworCWRzYl9jdHJsIHw9IERTQl9FTkFCTEU7CisJSTkx
NV9XUklURShEU0JfQ1RSTChwaXBlLCBkc2ItPmlkKSwgZHNiX2N0cmwpOworCisJcmV0dXJuIHRy
dWU7Cit9CisKK3N0YXRpYyBib29sIGludGVsX2RzYl9kaXNhYmxlX2VuZ2luZShzdHJ1Y3QgaW50
ZWxfZHNiICpkc2IpCit7CisJc3RydWN0IGludGVsX2NydGMgKmNydGMgPSBkc2ItPmNydGM7CisJ
c3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShjcnRjLT5iYXNlLmRl
dik7CisJZW51bSBwaXBlIHBpcGUgPSBjcnRjLT5waXBlOworCXUzMiBkc2JfY3RybDsKKworCWRz
Yl9jdHJsID0gSTkxNV9SRUFEKERTQl9DVFJMKHBpcGUsIGRzYi0+aWQpKTsKKworCWlmIChEU0Jf
U1RBVFVTICYgZHNiX2N0cmwpIHsKKwkJRFJNX0RFQlVHX0tNUygiRFNCIGVuZ2luZSBpcyBidXN5
LlxuIik7CisJCXJldHVybiBmYWxzZTsKKwl9CisKKwlkc2JfY3RybCAmPSB+RFNCX0VOQUJMRTsK
KwlJOTE1X1dSSVRFKERTQl9DVFJMKHBpcGUsIGRzYi0+aWQpLCBkc2JfY3RybCk7CisKKwlyZXR1
cm4gdHJ1ZTsKK30KKwogc3RydWN0IGludGVsX2RzYiAqCiBpbnRlbF9kc2JfZ2V0KHN0cnVjdCBp
bnRlbF9jcnRjICpjcnRjKQogewotLSAKMi4yMS4wCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZng=
