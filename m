Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BC9FA96CF
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Sep 2019 01:02:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D096289CB5;
	Wed,  4 Sep 2019 23:02:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AD42B89CBA
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Sep 2019 23:02:46 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Sep 2019 16:02:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,468,1559545200"; d="scan'208";a="182643938"
Received: from josouza-mobl.jf.intel.com (HELO josouza-MOBL.intel.com)
 ([10.24.9.135])
 by fmsmga008.fm.intel.com with ESMTP; 04 Sep 2019 16:02:46 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  4 Sep 2019 16:02:41 -0700
Message-Id: <20190904230241.20638-2-jose.souza@intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190904230241.20638-1-jose.souza@intel.com>
References: <20190904230241.20638-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/mst: Do not hardcoded the crtcs
 that encoder can connect
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGlnZXIgTGFrZSBoYXMgdXAgdG8gNCBwaXBlcyBzbyB0aGUgbWFzayB3b3VsZCBuZWVkIHRvIGJl
IDB4ZiBpbnN0ZWFkIG9mCjB4Ny4gRG8gbm90IGhhcmRjb2RlIHRoZSBtYXNrIHNvIGl0IGFsbG93
cyB0aGUgZmFrZSBNU1QgZW5jb2RlcnMgdG8KY29ubmVjdCB0byBhbGwgcGlwZXMgbm8gbWF0dGVy
IGhvdyBtYW55IHRoZSBwbGF0Zm9ybSBoYXMuCgpJdGVyYXRpbmcgb3ZlciBhbGwgcGlwZXMgdG8g
a2VlcCBjb25zaXN0ZW50IHdpdGggaW50ZWxfZGRpX2luaXQoKS4KCkluaXRpYWx5IHRoaXMgcGF0
Y2ggd2FzIHJlcGxhY2VkIGJ5IGNvbW1pdCA0ZWFjZWVhM2EwMGYgKCJkcm0vaTkxNToKRml4IERQ
LU1TVCBjcnRjX21hc2siKSBidXQgdXNlcnNwYWNlIGl0IG5vdCBjb3JyZWN0bHkgdXNpbmcKZW5j
b2Rlci5wb3NzaWJsZV9jcnRjcyBhbmQgaXQgd2FzIHJldmVydGVkIGJ5CmNvbW1pdCBlODM4YmZh
OGUxNzAgKCJSZXZlcnQgImRybS9pOTE1OiBGaXggRFAtTVNUIGNydGNfbWFzayIiKQoKVXNlcnNw
YWNlIHNob3VsZCBiZSBmaXhlZCBidXQgaXQgbWlnaHQgdGFrZSBhIHdoaWxlLCBzbyBicmluZ2lu
ZyB0aGlzCnBhdGNoIGJhY2sgZm9yIG5vdy4KCkNjOiBMdWNhcyBEZSBNYXJjaGkgPGx1Y2FzLmRl
bWFyY2hpQGludGVsLmNvbT4KQ2M6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51
eC5pbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uu
c291emFAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBMdWNhcyBEZSBNYXJjaGkgPGx1Y2FzLmRl
bWFyY2hpQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2RwX21zdC5jIHwgNSArKysrLQogMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgMSBk
ZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZHBfbXN0LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX21zdC5j
CmluZGV4IDM3MzY2ZjgxMjU1Yi4uNzkyYmNhY2UzZWRmIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX21zdC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZHBfbXN0LmMKQEAgLTU5OSw2ICs1OTksOCBAQCBpbnRlbF9kcF9j
cmVhdGVfZmFrZV9tc3RfZW5jb2RlcihzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9wb3J0ICppbnRlbF9k
aWdfcG9ydCwgZW51bQogCXN0cnVjdCBpbnRlbF9kcF9tc3RfZW5jb2RlciAqaW50ZWxfbXN0Owog
CXN0cnVjdCBpbnRlbF9lbmNvZGVyICppbnRlbF9lbmNvZGVyOwogCXN0cnVjdCBkcm1fZGV2aWNl
ICpkZXYgPSBpbnRlbF9kaWdfcG9ydC0+YmFzZS5iYXNlLmRldjsKKwlzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGRldik7CisJZW51bSBwaXBlIHBpcGVfaXRlcjsK
IAogCWludGVsX21zdCA9IGt6YWxsb2Moc2l6ZW9mKCppbnRlbF9tc3QpLCBHRlBfS0VSTkVMKTsK
IApAQCAtNjE1LDggKzYxNyw5IEBAIGludGVsX2RwX2NyZWF0ZV9mYWtlX21zdF9lbmNvZGVyKHN0
cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgKmludGVsX2RpZ19wb3J0LCBlbnVtCiAJaW50ZWxfZW5j
b2Rlci0+dHlwZSA9IElOVEVMX09VVFBVVF9EUF9NU1Q7CiAJaW50ZWxfZW5jb2Rlci0+cG93ZXJf
ZG9tYWluID0gaW50ZWxfZGlnX3BvcnQtPmJhc2UucG93ZXJfZG9tYWluOwogCWludGVsX2VuY29k
ZXItPnBvcnQgPSBpbnRlbF9kaWdfcG9ydC0+YmFzZS5wb3J0OwotCWludGVsX2VuY29kZXItPmNy
dGNfbWFzayA9IDB4NzsKIAlpbnRlbF9lbmNvZGVyLT5jbG9uZWFibGUgPSAwOworCWZvcl9lYWNo
X3BpcGUoZGV2X3ByaXYsIHBpcGVfaXRlcikKKwkJaW50ZWxfZW5jb2Rlci0+Y3J0Y19tYXNrIHw9
IEJJVChwaXBlX2l0ZXIpOwogCiAJaW50ZWxfZW5jb2Rlci0+Y29tcHV0ZV9jb25maWcgPSBpbnRl
bF9kcF9tc3RfY29tcHV0ZV9jb25maWc7CiAJaW50ZWxfZW5jb2Rlci0+ZGlzYWJsZSA9IGludGVs
X21zdF9kaXNhYmxlX2RwOwotLSAKMi4yMy4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZng=
