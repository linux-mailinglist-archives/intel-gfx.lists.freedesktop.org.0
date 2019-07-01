Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AB7445BAC4
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Jul 2019 13:34:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 070528995F;
	Mon,  1 Jul 2019 11:34:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AE805898EA
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Jul 2019 11:34:44 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 01 Jul 2019 04:34:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,439,1557212400"; d="scan'208";a="186455036"
Received: from unknown (HELO delly.ger.corp.intel.com) ([10.249.141.63])
 by fmsmga004.fm.intel.com with ESMTP; 01 Jul 2019 04:34:43 -0700
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  1 Jul 2019 14:34:27 +0300
Message-Id: <20190701113437.4043-2-lionel.g.landwerlin@intel.com>
X-Mailer: git-send-email 2.21.0.392.gf8f6787159e
In-Reply-To: <20190701113437.4043-1-lionel.g.landwerlin@intel.com>
References: <20190701113437.4043-1-lionel.g.landwerlin@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v6 01/11] drm/i915/perf: add missing delay for
 OA muxes configuration
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

U2lnbmVkLW9mZi1ieTogTGlvbmVsIExhbmR3ZXJsaW4gPGxpb25lbC5nLmxhbmR3ZXJsaW5AaW50
ZWwuY29tPgpGaXhlczogMTlmODFkZjI4NTllYjEgKCJkcm0vaTkxNS9wZXJmOiBBZGQgT0EgdW5p
dCBzdXBwb3J0IGZvciBHZW4gOCsiKQotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGVy
Zi5jIHwgMjMgKysrKysrKysrKysrKysrKysrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCAyMyBpbnNl
cnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wZXJmLmMg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BlcmYuYwppbmRleCAzNTdlNjNiZWIzNzMuLjIw
OTQzNTg4NjBkNSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wZXJmLmMK
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wZXJmLmMKQEAgLTE4MzgsNiArMTgzOCwy
OSBAQCBzdGF0aWMgaW50IGdlbjhfZW5hYmxlX21ldHJpY19zZXQoc3RydWN0IGk5MTVfcGVyZl9z
dHJlYW0gKnN0cmVhbSkKIAogCWNvbmZpZ19vYV9yZWdzKGRldl9wcml2LCBvYV9jb25maWctPm11
eF9yZWdzLCBvYV9jb25maWctPm11eF9yZWdzX2xlbik7CiAKKwkvKiBJdCBhcHBhcmVudGx5IHRh
a2VzIGEgZmFpcmx5IGxvbmcgdGltZSBmb3IgYSBuZXcgTVVYCisJICogY29uZmlndXJhdGlvbiB0
byBiZSBiZSBhcHBsaWVkIGFmdGVyIHRoZXNlIHJlZ2lzdGVyIHdyaXRlcy4KKwkgKiBUaGlzIGRl
bGF5IGR1cmF0aW9uIHdhcyBkZXJpdmVkIGVtcGlyaWNhbGx5IGJhc2VkIG9uIHRoZQorCSAqIHJl
bmRlcl9iYXNpYyBjb25maWcgYnV0IGhvcGVmdWxseSBpdCBjb3ZlcnMgdGhlIG1heGltdW0KKwkg
KiBjb25maWd1cmF0aW9uIGxhdGVuY3kuCisJICoKKwkgKiBBcyBhIGZhbGxiYWNrLCB0aGUgY2hl
Y2tzIGluIF9hcHBlbmRfb2FfcmVwb3J0cygpIHRvIHNraXAKKwkgKiBpbnZhbGlkIE9BIHJlcG9y
dHMgZG8gYWxzbyBzZWVtIHRvIHdvcmsgdG8gZGlzY2FyZCByZXBvcnRzCisJICogZ2VuZXJhdGVk
IGJlZm9yZSB0aGlzIGNvbmZpZyBoYXMgY29tcGxldGVkIC0gYWxiZWl0IG5vdAorCSAqIHNpbGVu
dGx5LgorCSAqCisJICogVW5mb3J0dW5hdGVseSB0aGlzIGlzIGVzc2VudGlhbGx5IGEgbWFnaWMg
bnVtYmVyLCBzaW5jZSB3ZQorCSAqIGRvbid0IGN1cnJlbnRseSBrbm93IG9mIGEgcmVsaWFibGUg
bWVjaGFuaXNtIGZvciBwcmVkaWN0aW5nCisJICogaG93IGxvbmcgdGhlIE1VWCBjb25maWcgd2ls
bCB0YWtlIHRvIGFwcGx5IGFuZCBiZXNpZGVzCisJICogc2VlaW5nIGludmFsaWQgcmVwb3J0cyB3
ZSBkb24ndCBrbm93IG9mIGEgcmVsaWFibGUgd2F5IHRvCisJICogZXhwbGljaXRseSBjaGVjayB0
aGF0IHRoZSBNVVggY29uZmlnIGhhcyBsYW5kZWQuCisJICoKKwkgKiBJdCdzIGV2ZW4gcG9zc2li
bGUgd2UndmUgbWlzcyBjaGFyYWN0ZXJpemVkIHRoZSB1bmRlcmx5aW5nCisJICogcHJvYmxlbSAt
IGl0IGp1c3Qgc2VlbXMgbGlrZSB0aGUgc2ltcGxlc3QgZXhwbGFuYXRpb24gd2h5CisJICogYSBk
ZWxheSBhdCB0aGlzIGxvY2F0aW9uIHdvdWxkIG1pdGlnYXRlIGFueSBpbnZhbGlkIHJlcG9ydHMu
CisJICovCisJdXNsZWVwX3JhbmdlKDE1MDAwLCAyMDAwMCk7CisKIAljb25maWdfb2FfcmVncyhk
ZXZfcHJpdiwgb2FfY29uZmlnLT5iX2NvdW50ZXJfcmVncywKIAkJICAgICAgIG9hX2NvbmZpZy0+
Yl9jb3VudGVyX3JlZ3NfbGVuKTsKIAotLSAKMi4yMS4wLjM5Mi5nZjhmNjc4NzE1OWUKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWls
aW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
