Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F1D14BBF43
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Sep 2019 02:02:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 665DA6E9D4;
	Tue, 24 Sep 2019 00:02:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A45356E9C7
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Sep 2019 00:01:55 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Sep 2019 17:01:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,542,1559545200"; d="scan'208";a="388663957"
Received: from invictus.jf.intel.com ([10.54.75.159])
 by fmsmga005.fm.intel.com with ESMTP; 23 Sep 2019 17:01:53 -0700
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 23 Sep 2019 17:03:24 -0700
Message-Id: <20190924000328.29571-8-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190924000328.29571-1-radhakrishna.sripada@intel.com>
References: <20190924000328.29571-1-radhakrishna.sripada@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 07/11] drm/i915: Skip rotated offset
 adjustment for unsupported modifiers
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
Cc: nanley.g.chery@intel.com, dhinakaran.pandiyan@intel.com,
 ville.syrjala@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogRGhpbmFrYXJhbiBQYW5kaXlhbiA8ZGhpbmFrYXJhbi5wYW5kaXlhbkBpbnRlbC5jb20+
CgpEdXJpbmcgZnJhbWVidWZmZXIgY3JlYXRpb24sIHdlIHByZS1jb21wdXRlIG9mZnNldHMgZm9y
IDkwLzI3MCBwbGFuZQpyb3RhdGlvbi4gSG93ZXZlciwgb25seSBZIGFuZCBZZiBtb2RpZmllcnMg
c3VwcG9ydCA5MC8yNzAgcm90YXRpb24uIFNvLApza2lwIHRoZSBjYWxjdWxhdGlvbnMgZm9yIG90
aGVyIG1vZGlmaWVycy4KCkNjOiBNYXR0IFJvcGVyIDxtYXR0aGV3LmQucm9wZXJAaW50ZWwuY29t
PgpDYzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KU2ln
bmVkLW9mZi1ieTogRGhpbmFrYXJhbiBQYW5kaXlhbiA8ZGhpbmFrYXJhbi5wYW5kaXlhbkBpbnRl
bC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMg
fCA0ICsrKy0KIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkK
CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXku
YyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCmluZGV4IGUx
ZjUxNzAyMDViZi4uYzdlNDFmYjA0OTE5IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2Rpc3BsYXkuYwpAQCAtMjc4NCw3ICsyNzg0LDkgQEAgaW50ZWxfZmlsbF9mYl9p
bmZvKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKIAkJCQkJCSAgICAgIHRpbGVf
c2l6ZSk7CiAJCW9mZnNldCAvPSB0aWxlX3NpemU7CiAKLQkJaWYgKCFpc19zdXJmYWNlX2xpbmVh
cihmYi0+bW9kaWZpZXIsIGkpKSB7CisJCS8qIFkgb3IgWWYgbW9kaWZpZXJzIHJlcXVpcmVkIGZv
ciA5MC8yNzAgcm90YXRpb24gKi8KKwkJaWYgKGZiLT5tb2RpZmllciA9PSBJOTE1X0ZPUk1BVF9N
T0RfWV9USUxFRCB8fAorCQkgICAgZmItPm1vZGlmaWVyID09IEk5MTVfRk9STUFUX01PRF9ZZl9U
SUxFRCkgewogCQkJdW5zaWduZWQgaW50IHRpbGVfd2lkdGgsIHRpbGVfaGVpZ2h0OwogCQkJdW5z
aWduZWQgaW50IHBpdGNoX3RpbGVzOwogCQkJc3RydWN0IGRybV9yZWN0IHI7Ci0tIAoyLjIwLjEK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
