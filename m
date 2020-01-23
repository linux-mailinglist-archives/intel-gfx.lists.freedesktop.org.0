Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C9B314693C
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Jan 2020 14:36:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD49E6FCBB;
	Thu, 23 Jan 2020 13:36:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 483606FCBA
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Jan 2020 13:36:41 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Jan 2020 05:36:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,354,1574150400"; d="scan'208";a="216259582"
Received: from unknown (HELO genxfsim-desktop.iind.intel.com) ([10.223.74.178])
 by orsmga007.jf.intel.com with ESMTP; 23 Jan 2020 05:36:39 -0800
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 23 Jan 2020 18:56:59 +0530
Message-Id: <20200123132659.725-7-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20200123132659.725-1-anshuman.gupta@intel.com>
References: <20200123132659.725-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC 6/6] drm/i915: Enable 3 display pipes support
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QWxsb3cgMy1kaXNwbGF5IHBpcGVzIFNLVSBzeXN0ZW0gd2l0aCBhbnkgY29tYmluYXRpb24KaW4g
SU5URUxfSU5GTyBwaXBlIG1hc2suCkIuU3BlYzo1MDA3NQoKQ2M6IFZpbGxlIFN5cmrDpGzDpCA8
dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IEFuc2h1bWFuIEd1
cHRhIDxhbnNodW1hbi5ndXB0YUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUv
aW50ZWxfZGV2aWNlX2luZm8uYyB8IDcgKysrKy0tLQogMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0
aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pbnRlbF9kZXZpY2VfaW5mby5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGV2aWNl
X2luZm8uYwppbmRleCBmY2RhY2Q2ZDRhYTUuLjQ1OTA0N2M5OGU4MiAxMDA2NDQKLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGV2aWNlX2luZm8uYworKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pbnRlbF9kZXZpY2VfaW5mby5jCkBAIC05OTcsMTAgKzk5NywxMSBAQCB2b2lkIGlu
dGVsX2RldmljZV9pbmZvX3J1bnRpbWVfaW5pdChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2
X3ByaXYpCiAKIAkJLyoKIAkJICogQXQgbGVhc3Qgb25lIHBpcGUgc2hvdWxkIGJlIGVuYWJsZWQg
YW5kIGlmIHRoZXJlIGFyZQotCQkgKiBkaXNhYmxlZCBwaXBlcywgdGhleSBzaG91bGQgYmUgdGhl
IGxhc3Qgb25lcywgd2l0aCBubyBob2xlcwotCQkgKiBpbiB0aGUgbWFzay4KKwkJICogZGlzYWJs
ZWQgcGlwZXMsIHVwIHRvIERpc3BsYXkgR2VuPD0xMiwgdGhleSBzaG91bGQgYmUgdGhlCisJCSAq
IGxhc3Qgb25lcywgd2l0aCBubyBob2xzZXMgaW4gdGhlIG1hc2suCiAJCSAqLwotCQlpZiAoZW5h
YmxlZF9tYXNrID09IDAgfHwgIWlzX3Bvd2VyX29mXzIoZW5hYmxlZF9tYXNrICsgMSkpCisJCWlm
IChlbmFibGVkX21hc2sgPT0gMCB8fCAoIWlzX3Bvd2VyX29mXzIoZW5hYmxlZF9tYXNrICsgMSkg
JiYKKwkJICAgIChJTlRFTF9HRU4oZGV2X3ByaXYpIDw9IDExIHx8IElTX1RJR0VSTEFLRShkZXZf
cHJpdikpKSkKIAkJCWRybV9lcnIoJmRldl9wcml2LT5kcm0sCiAJCQkJImludmFsaWQgcGlwZSBm
dXNlIGNvbmZpZ3VyYXRpb246IGVuYWJsZWRfbWFzaz0weCV4XG4iLAogCQkJCWVuYWJsZWRfbWFz
ayk7Ci0tIAoyLjI0LjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LWdmeAo=
