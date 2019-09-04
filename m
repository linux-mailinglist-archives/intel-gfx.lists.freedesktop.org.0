Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 88E67A7E13
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Sep 2019 10:42:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 75BDE8997C;
	Wed,  4 Sep 2019 08:42:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8F3CA8997C
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Sep 2019 08:42:56 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Sep 2019 01:42:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,465,1559545200"; d="scan'208";a="383393275"
Received: from gksingh.iind.intel.com ([10.66.179.29])
 by fmsmga006.fm.intel.com with ESMTP; 04 Sep 2019 01:42:55 -0700
From: Gaurav K Singh <gaurav.k.singh@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  4 Sep 2019 14:16:10 +0530
Message-Id: <1567586770-6898-1-git-send-email-gaurav.k.singh@intel.com>
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
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5jCmluZGV4IDE2ZWQ0NGJmZDczNC4uZGQy
MjRiODJiZjAyIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2ZiYy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMKQEAg
LTEwOTcsNiArMTA5Nyw4IEBAIHZvaWQgaW50ZWxfZmJjX2VuYWJsZShzdHJ1Y3QgaW50ZWxfY3J0
YyAqY3J0YywKIAkJaWYgKGZiYy0+Y3J0YyA9PSBjcnRjKSB7CiAJCQlXQVJOX09OKCFjcnRjX3N0
YXRlLT5lbmFibGVfZmJjKTsKIAkJCVdBUk5fT04oZmJjLT5hY3RpdmUpOworCQkJaWYgKElTX0dF
TihkZXZfcHJpdiwgOSkpCisJCQkJaW50ZWxfd2FpdF9mb3JfdmJsYW5rKGRldl9wcml2LCBjcnRj
LT5waXBlKTsKIAkJfQogCQlnb3RvIG91dDsKIAl9CkBAIC0xMTM3LDggKzExMzksMTEgQEAgdm9p
ZCBpbnRlbF9mYmNfZGlzYWJsZShzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YykKIAkJcmV0dXJuOwog
CiAJbXV0ZXhfbG9jaygmZmJjLT5sb2NrKTsKLQlpZiAoZmJjLT5jcnRjID09IGNydGMpCisJaWYg
KGZiYy0+Y3J0YyA9PSBjcnRjKSB7CiAJCV9faW50ZWxfZmJjX2Rpc2FibGUoZGV2X3ByaXYpOwor
CQlpZiAoSVNfR0VOKGRldl9wcml2LCA5KSkKKwkJCWludGVsX3dhaXRfZm9yX3ZibGFuayhkZXZf
cHJpdiwgY3J0Yy0+cGlwZSk7CisJfQogCW11dGV4X3VubG9jaygmZmJjLT5sb2NrKTsKIH0KIAot
LSAKMS45LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
