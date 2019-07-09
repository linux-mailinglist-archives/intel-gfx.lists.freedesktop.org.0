Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C206635F6
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Jul 2019 14:34:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 893B4896A3;
	Tue,  9 Jul 2019 12:34:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B9B6A896A3
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Jul 2019 12:34:13 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Jul 2019 05:34:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,470,1557212400"; d="scan'208";a="249135596"
Received: from mderosix-mobl.ger.corp.intel.com (HELO
 delly.ger.corp.intel.com) ([10.252.49.241])
 by orsmga001.jf.intel.com with ESMTP; 09 Jul 2019 05:34:12 -0700
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  9 Jul 2019 15:33:40 +0300
Message-Id: <20190709123351.5645-3-lionel.g.landwerlin@intel.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190709123351.5645-1-lionel.g.landwerlin@intel.com>
References: <20190709123351.5645-1-lionel.g.landwerlin@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v8 02/13] drm/i915/perf: add missing delay for
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

VGhpcyB3YXMgZHJvcHBlZCBmcm9tIHRoZSBvcmlnaW5hbCBwYXRjaCBzZXJpZXMsIHdlIHdlcmVu
J3Qgc3VyZQp3aGV0aGVyIGl0IHdhcyBuZWVkZWQgYXQgdGhlIHRpbWUuIE1vcmUgcmVjZW50IHRl
c3RzIHNob3cgaXQncwpkZWZpbml0ZWx5IG5lZWRlZCB0byBoYXZlIGFjdXJhdGUgcGVyZm9ybWFu
Y2UgZGF0YS4KClNpZ25lZC1vZmYtYnk6IExpb25lbCBMYW5kd2VybGluIDxsaW9uZWwuZy5sYW5k
d2VybGluQGludGVsLmNvbT4KRml4ZXM6IDE5ZjgxZGYyODU5ZWIxICgiZHJtL2k5MTUvcGVyZjog
QWRkIE9BIHVuaXQgc3VwcG9ydCBmb3IgR2VuIDgrIikKQWNrZWQtYnk6IENocmlzIFdpbHNvbiA8
Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
cGVyZi5jIHwgMjMgKysrKysrKysrKysrKysrKysrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCAyMyBp
bnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wZXJm
LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BlcmYuYwppbmRleCAyNzg0MmU3YmNmZWQu
LjU0NWQzYWRhZjM0MSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wZXJm
LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wZXJmLmMKQEAgLTE4MzgsNiArMTgz
OCwyOSBAQCBzdGF0aWMgaW50IGdlbjhfZW5hYmxlX21ldHJpY19zZXQoc3RydWN0IGk5MTVfcGVy
Zl9zdHJlYW0gKnN0cmVhbSkKIAogCWNvbmZpZ19vYV9yZWdzKGRldl9wcml2LCBvYV9jb25maWct
Pm11eF9yZWdzLCBvYV9jb25maWctPm11eF9yZWdzX2xlbik7CiAKKwkvKiBJdCBhcHBhcmVudGx5
IHRha2VzIGEgZmFpcmx5IGxvbmcgdGltZSBmb3IgYSBuZXcgTVVYCisJICogY29uZmlndXJhdGlv
biB0byBiZSBiZSBhcHBsaWVkIGFmdGVyIHRoZXNlIHJlZ2lzdGVyIHdyaXRlcy4KKwkgKiBUaGlz
IGRlbGF5IGR1cmF0aW9uIHdhcyBkZXJpdmVkIGVtcGlyaWNhbGx5IGJhc2VkIG9uIHRoZQorCSAq
IHJlbmRlcl9iYXNpYyBjb25maWcgYnV0IGhvcGVmdWxseSBpdCBjb3ZlcnMgdGhlIG1heGltdW0K
KwkgKiBjb25maWd1cmF0aW9uIGxhdGVuY3kuCisJICoKKwkgKiBBcyBhIGZhbGxiYWNrLCB0aGUg
Y2hlY2tzIGluIF9hcHBlbmRfb2FfcmVwb3J0cygpIHRvIHNraXAKKwkgKiBpbnZhbGlkIE9BIHJl
cG9ydHMgZG8gYWxzbyBzZWVtIHRvIHdvcmsgdG8gZGlzY2FyZCByZXBvcnRzCisJICogZ2VuZXJh
dGVkIGJlZm9yZSB0aGlzIGNvbmZpZyBoYXMgY29tcGxldGVkIC0gYWxiZWl0IG5vdAorCSAqIHNp
bGVudGx5LgorCSAqCisJICogVW5mb3J0dW5hdGVseSB0aGlzIGlzIGVzc2VudGlhbGx5IGEgbWFn
aWMgbnVtYmVyLCBzaW5jZSB3ZQorCSAqIGRvbid0IGN1cnJlbnRseSBrbm93IG9mIGEgcmVsaWFi
bGUgbWVjaGFuaXNtIGZvciBwcmVkaWN0aW5nCisJICogaG93IGxvbmcgdGhlIE1VWCBjb25maWcg
d2lsbCB0YWtlIHRvIGFwcGx5IGFuZCBiZXNpZGVzCisJICogc2VlaW5nIGludmFsaWQgcmVwb3J0
cyB3ZSBkb24ndCBrbm93IG9mIGEgcmVsaWFibGUgd2F5IHRvCisJICogZXhwbGljaXRseSBjaGVj
ayB0aGF0IHRoZSBNVVggY29uZmlnIGhhcyBsYW5kZWQuCisJICoKKwkgKiBJdCdzIGV2ZW4gcG9z
c2libGUgd2UndmUgbWlzcyBjaGFyYWN0ZXJpemVkIHRoZSB1bmRlcmx5aW5nCisJICogcHJvYmxl
bSAtIGl0IGp1c3Qgc2VlbXMgbGlrZSB0aGUgc2ltcGxlc3QgZXhwbGFuYXRpb24gd2h5CisJICog
YSBkZWxheSBhdCB0aGlzIGxvY2F0aW9uIHdvdWxkIG1pdGlnYXRlIGFueSBpbnZhbGlkIHJlcG9y
dHMuCisJICovCisJdXNsZWVwX3JhbmdlKDE1MDAwLCAyMDAwMCk7CisKIAljb25maWdfb2FfcmVn
cyhkZXZfcHJpdiwgb2FfY29uZmlnLT5iX2NvdW50ZXJfcmVncywKIAkJICAgICAgIG9hX2NvbmZp
Zy0+Yl9jb3VudGVyX3JlZ3NfbGVuKTsKIAotLSAKMi4yMi4wCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
