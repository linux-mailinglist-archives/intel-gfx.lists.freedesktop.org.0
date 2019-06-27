Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A66FF582FB
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Jun 2019 14:55:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE7746E287;
	Thu, 27 Jun 2019 12:55:27 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F2CFE6E21A;
 Thu, 27 Jun 2019 12:55:25 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Jun 2019 05:55:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,423,1557212400"; d="scan'208";a="185257874"
Received: from czwolak-mobl2.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.252.4.8])
 by fmsmga004.fm.intel.com with ESMTP; 27 Jun 2019 05:55:24 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Thu, 27 Jun 2019 13:55:21 +0100
Message-Id: <20190627125521.10782-1-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] lib: Silence Valgrind warning in
 synce_fence_status
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
Cc: Intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KCkxldCBWYWxn
cmluZCBrbm93IHRoZSBpb2N0bCBpbml0aWFsaXplcyB0aGUgcGFzc2VkIGluIGluZm8gYmxvY2sg
dG8gcmVkdWNlCnRoZSBub2lzZSB3aGlsZSBkZWJ1Z2dpbmcuCgpTaWduZWQtb2ZmLWJ5OiBUdnJ0
a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgotLS0KIGxpYi9zd19zeW5jLmMg
fCAxMSArKysrKysrKysrKwogMSBmaWxlIGNoYW5nZWQsIDExIGluc2VydGlvbnMoKykKCmRpZmYg
LS1naXQgYS9saWIvc3dfc3luYy5jIGIvbGliL3N3X3N5bmMuYwppbmRleCBmMjA4NjAzMzEyYzIu
LjczZjNmNzAxNWQ5ZCAxMDA2NDQKLS0tIGEvbGliL3N3X3N5bmMuYworKysgYi9saWIvc3dfc3lu
Yy5jCkBAIC00MSw2ICs0MSwxNSBAQAogI2luY2x1ZGUgImRybXRlc3QuaCIKICNpbmNsdWRlICJp
b2N0bF93cmFwcGVycy5oIgogCisjaWZkZWYgSEFWRV9WQUxHUklORAorI2luY2x1ZGUgPHZhbGdy
aW5kL3ZhbGdyaW5kLmg+CisjaW5jbHVkZSA8dmFsZ3JpbmQvbWVtY2hlY2suaD4KKworI2RlZmlu
ZSBWRyh4KSB4CisjZWxzZQorI2RlZmluZSBWRyh4KSBkbyB7fSB3aGlsZSAoMCkKKyNlbmRpZgor
CiAvKioKICAqIFNFQ1RJT046c3dfc3luYwogICogQHNob3J0X2Rlc2NyaXB0aW9uOiBTb2Z0d2Fy
ZSBzeW5jIChmZW5jaW5nKSBzdXBwb3J0IGxpYnJhcnkKQEAgLTIxOCw2ICsyMjcsOCBAQCBpbnQg
c3luY19mZW5jZV9zdGF0dXMoaW50IGZlbmNlKQogCWlmIChmaWxlX2luZm8ubnVtX2ZlbmNlcyAh
PSAxKQogCQlyZXR1cm4gLUVJTlZBTDsKIAorCVZHKFZBTEdSSU5EX01BS0VfTUVNX0RFRklORUQo
JmZlbmNlX2luZm8sIHNpemVvZihmZW5jZV9pbmZvKSkpOworCiAJcmV0dXJuIGZlbmNlX2luZm8u
c3RhdHVzOwogfQogCi0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeA==
