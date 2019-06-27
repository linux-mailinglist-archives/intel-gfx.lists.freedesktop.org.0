Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C723B57D96
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Jun 2019 10:00:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA7F36E819;
	Thu, 27 Jun 2019 08:00:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A978D6E7E2
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Jun 2019 08:00:50 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Jun 2019 01:00:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,423,1557212400"; d="scan'208";a="313709747"
Received: from lswidere-mobl.ger.corp.intel.com (HELO
 delly.ger.corp.intel.com) ([10.249.140.121])
 by orsmga004.jf.intel.com with ESMTP; 27 Jun 2019 01:00:49 -0700
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 27 Jun 2019 11:00:36 +0300
Message-Id: <20190627080045.8814-2-lionel.g.landwerlin@intel.com>
X-Mailer: git-send-email 2.21.0.392.gf8f6787159e
In-Reply-To: <20190627080045.8814-1-lionel.g.landwerlin@intel.com>
References: <20190627080045.8814-1-lionel.g.landwerlin@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v5 01/10] drm/i915/perf: add missing delay for
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
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BlcmYuYwppbmRleCBkMjhhNWJmODBiZDcuLjkw
OWUyMjgzNWU4NCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wZXJmLmMK
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
