Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CA81E635F5
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Jul 2019 14:34:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 423248935B;
	Tue,  9 Jul 2019 12:34:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BA4DB8935B
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Jul 2019 12:34:12 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Jul 2019 05:34:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,470,1557212400"; d="scan'208";a="249135588"
Received: from mderosix-mobl.ger.corp.intel.com (HELO
 delly.ger.corp.intel.com) ([10.252.49.241])
 by orsmga001.jf.intel.com with ESMTP; 09 Jul 2019 05:34:11 -0700
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  9 Jul 2019 15:33:39 +0300
Message-Id: <20190709123351.5645-2-lionel.g.landwerlin@intel.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190709123351.5645-1-lionel.g.landwerlin@intel.com>
References: <20190709123351.5645-1-lionel.g.landwerlin@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v8 01/13] drm/i915/perf: ensure we keep a
 reference on the driver
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

VGhlIGk5MTUgcGVyZiBzdHJlYW0gaGFzIGl0cyBvd24gZmlsZSBkZXNjcmlwdG9yIGFuZCBpcyB0
aWVkIHRvCnJlZmVyZW5jZSBvZiB0aGUgZHJpdmVyLiBXZSBoYXZlbid0IHRha2VuIGNhcmUgb2Yg
a2VlcCB0aGUgZHJpdmVyCmFsaXZlLgoKU2lnbmVkLW9mZi1ieTogTGlvbmVsIExhbmR3ZXJsaW4g
PGxpb25lbC5nLmxhbmR3ZXJsaW5AaW50ZWwuY29tPgpTdWdnZXN0ZWQtYnk6IENocmlzIFdpbHNv
biA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgpGaXhlczogZWVjNjg4ZTE0MjBkYTUgKCJkcm0v
aTkxNTogQWRkIGk5MTUgcGVyZiBpbmZyYXN0cnVjdHVyZSIpClJldmlld2VkLWJ5OiBDaHJpcyBX
aWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X3BlcmYuYyB8IDggKysrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCA4IGluc2VydGlvbnMo
KykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BlcmYuYyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfcGVyZi5jCmluZGV4IDM1N2U2M2JlYjM3My4uMjc4NDJlN2Jj
ZmVkIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BlcmYuYworKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BlcmYuYwpAQCAtMjUxNyw2ICsyNTE3LDkgQEAgc3Rh
dGljIGludCBpOTE1X3BlcmZfcmVsZWFzZShzdHJ1Y3QgaW5vZGUgKmlub2RlLCBzdHJ1Y3QgZmls
ZSAqZmlsZSkKIAlpOTE1X3BlcmZfZGVzdHJveV9sb2NrZWQoc3RyZWFtKTsKIAltdXRleF91bmxv
Y2soJmRldl9wcml2LT5wZXJmLmxvY2spOwogCisJLyogUmVsZWFzZSB0aGUgcmVmZXJlbmNlIHRo
ZSBwZXJmIHN0cmVhbSBrZXB0IG9uIHRoZSBkcml2ZXIuICovCisJZHJtX2Rldl9wdXQoJmRldl9w
cml2LT5kcm0pOworCiAJcmV0dXJuIDA7CiB9CiAKQEAgLTI2NTIsNiArMjY1NSwxMSBAQCBpOTE1
X3BlcmZfb3Blbl9pb2N0bF9sb2NrZWQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2
LAogCWlmICghKHBhcmFtLT5mbGFncyAmIEk5MTVfUEVSRl9GTEFHX0RJU0FCTEVEKSkKIAkJaTkx
NV9wZXJmX2VuYWJsZV9sb2NrZWQoc3RyZWFtKTsKIAorCS8qIFRha2UgYSByZWZlcmVuY2Ugb24g
dGhlIGRyaXZlciB0aGF0IHdpbGwgYmUga2VwdCB3aXRoIHN0cmVhbV9mZAorCSAqIHVudGlsIGl0
cyByZWxlYXNlLgorCSAqLworCWRybV9kZXZfZ2V0KCZkZXZfcHJpdi0+ZHJtKTsKKwogCXJldHVy
biBzdHJlYW1fZmQ7CiAKIGVycl9vcGVuOgotLSAKMi4yMi4wCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
