Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D5956336A
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Jul 2019 11:32:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 36E3489F4F;
	Tue,  9 Jul 2019 09:32:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 11DB089D84
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Jul 2019 09:32:30 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Jul 2019 02:32:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,470,1557212400"; d="scan'208";a="185876182"
Received: from unknown (HELO delly.ger.corp.intel.com) ([10.252.37.9])
 by fmsmga001.fm.intel.com with ESMTP; 09 Jul 2019 02:32:28 -0700
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  9 Jul 2019 12:31:57 +0300
Message-Id: <20190709093208.20470-2-lionel.g.landwerlin@intel.com>
X-Mailer: git-send-email 2.21.0.392.gf8f6787159e
In-Reply-To: <20190709093208.20470-1-lionel.g.landwerlin@intel.com>
References: <20190709093208.20470-1-lionel.g.landwerlin@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v7 01/12] drm/i915/perf: ensure we keep a
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
aTkxNTogQWRkIGk5MTUgcGVyZiBpbmZyYXN0cnVjdHVyZSIpCi0tLQogZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9wZXJmLmMgfCA4ICsrKysrKysrCiAxIGZpbGUgY2hhbmdlZCwgOCBpbnNlcnRp
b25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wZXJmLmMgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BlcmYuYwppbmRleCAzNTdlNjNiZWIzNzMuLjI3ODQy
ZTdiY2ZlZCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wZXJmLmMKKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wZXJmLmMKQEAgLTI1MTcsNiArMjUxNyw5IEBA
IHN0YXRpYyBpbnQgaTkxNV9wZXJmX3JlbGVhc2Uoc3RydWN0IGlub2RlICppbm9kZSwgc3RydWN0
IGZpbGUgKmZpbGUpCiAJaTkxNV9wZXJmX2Rlc3Ryb3lfbG9ja2VkKHN0cmVhbSk7CiAJbXV0ZXhf
dW5sb2NrKCZkZXZfcHJpdi0+cGVyZi5sb2NrKTsKIAorCS8qIFJlbGVhc2UgdGhlIHJlZmVyZW5j
ZSB0aGUgcGVyZiBzdHJlYW0ga2VwdCBvbiB0aGUgZHJpdmVyLiAqLworCWRybV9kZXZfcHV0KCZk
ZXZfcHJpdi0+ZHJtKTsKKwogCXJldHVybiAwOwogfQogCkBAIC0yNjUyLDYgKzI2NTUsMTEgQEAg
aTkxNV9wZXJmX29wZW5faW9jdGxfbG9ja2VkKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZf
cHJpdiwKIAlpZiAoIShwYXJhbS0+ZmxhZ3MgJiBJOTE1X1BFUkZfRkxBR19ESVNBQkxFRCkpCiAJ
CWk5MTVfcGVyZl9lbmFibGVfbG9ja2VkKHN0cmVhbSk7CiAKKwkvKiBUYWtlIGEgcmVmZXJlbmNl
IG9uIHRoZSBkcml2ZXIgdGhhdCB3aWxsIGJlIGtlcHQgd2l0aCBzdHJlYW1fZmQKKwkgKiB1bnRp
bCBpdHMgcmVsZWFzZS4KKwkgKi8KKwlkcm1fZGV2X2dldCgmZGV2X3ByaXYtPmRybSk7CisKIAly
ZXR1cm4gc3RyZWFtX2ZkOwogCiBlcnJfb3BlbjoKLS0gCjIuMjEuMC4zOTIuZ2Y4ZjY3ODcxNTll
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
