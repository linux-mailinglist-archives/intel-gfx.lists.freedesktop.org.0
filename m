Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 44B5BA7C28
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Sep 2019 08:58:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0332989956;
	Wed,  4 Sep 2019 06:58:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D0A3089956
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Sep 2019 06:58:26 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Sep 2019 23:58:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,465,1559545200"; d="scan'208";a="185017357"
Received: from gksingh.iind.intel.com ([10.66.179.29])
 by orsmga003.jf.intel.com with ESMTP; 03 Sep 2019 23:58:25 -0700
From: Gaurav K Singh <gaurav.k.singh@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  4 Sep 2019 12:31:39 +0530
Message-Id: <1567580499-1886-1-git-send-email-gaurav.k.singh@intel.com>
X-Mailer: git-send-email 1.9.1
Subject: [Intel-gfx] [PATCH] drm/i915: Fix corruption lines on the screen on
 Gen9 chromebooks
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
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gR2VuOSBjaHJvbWVib29rcywgd2UgYXJlIHNlZWluZyB0aGUgc2NyZWVuIHNob3dzIHNldmVy
YWwKbGFyZ2UgYmx1ZSBob3Jpem9udGFsIHN0cmlwZXMgb3ZlciB0aGUgdG9wLiBBbHNvLCBjb3Jy
dXB0aW9uIGhhcHBlbnMKd2hlbiB3ZSBzd2l0Y2ggZnJvbSBhIGNocm9tZSBicm93c2VyIHRhYiB0
byBWVDIgbW9kZShieSBwcmVzc2luZyBDdHJsK0FsdCtGMikKYW5kIHRoZW4gYmFjayB0byBjaHJv
bWUgdGFiLgoKQXMgcGVyIHRoZSBkaXNwbGF5IHdvcmthcm91bmQgIzEyMDAsIEZCQyBuZWVkcyB3
YWl0IGZvciB2YmxhbmsKYmVmb3JlIGVuYWJsaW5nIGFuZCBiZWZvcmUgZGlzYWJsaW5nIEZCQy4K
ClNpZ25lZC1vZmYtYnk6IEdhdXJhdiBLIFNpbmdoIDxnYXVyYXYuay5zaW5naEBpbnRlbC5jb20+
Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmMuYyB8IDcgKysrKysr
LQogMSBmaWxlIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5jCmluZGV4IDE2ZWQ0NGJmZDczNC4uNzFm
MjU2OGVhNWEzIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2ZiYy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMKQEAg
LTEwOTcsNiArMTA5Nyw4IEBAIHZvaWQgaW50ZWxfZmJjX2VuYWJsZShzdHJ1Y3QgaW50ZWxfY3J0
YyAqY3J0YywKIAkJaWYgKGZiYy0+Y3J0YyA9PSBjcnRjKSB7CiAJCQlXQVJOX09OKCFjcnRjX3N0
YXRlLT5lbmFibGVfZmJjKTsKIAkJCVdBUk5fT04oZmJjLT5hY3RpdmUpOworCQkJaWYgKElTX0dF
TjkoZGV2X3ByaXYpKQorCQkJCWludGVsX3dhaXRfZm9yX3ZibGFuayhkZXZfcHJpdiwgY3J0Yy0+
cGlwZSk7CiAJCX0KIAkJZ290byBvdXQ7CiAJfQpAQCAtMTEzNyw4ICsxMTM5LDExIEBAIHZvaWQg
aW50ZWxfZmJjX2Rpc2FibGUoc3RydWN0IGludGVsX2NydGMgKmNydGMpCiAJCXJldHVybjsKIAog
CW11dGV4X2xvY2soJmZiYy0+bG9jayk7Ci0JaWYgKGZiYy0+Y3J0YyA9PSBjcnRjKQorCWlmIChm
YmMtPmNydGMgPT0gY3J0YykgewogCQlfX2ludGVsX2ZiY19kaXNhYmxlKGRldl9wcml2KTsKKwkJ
aWYgKElTX0dFTjkoZGV2X3ByaXYpKQorCQkJaW50ZWxfd2FpdF9mb3JfdmJsYW5rKGRldl9wcml2
LCBjcnRjLT5waXBlKTsKKwl9CiAJbXV0ZXhfdW5sb2NrKCZmYmMtPmxvY2spOwogfQogCi0tIAox
LjkuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
