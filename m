Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4089F5CD6F
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Jul 2019 12:23:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0251289A0F;
	Tue,  2 Jul 2019 10:23:24 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C774A89A0F
 for <Intel-gfx@lists.freedesktop.org>; Tue,  2 Jul 2019 10:23:22 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Jul 2019 03:23:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,443,1557212400"; d="scan'208";a="154391528"
Received: from dglazik-mobl2.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.251.94.160])
 by orsmga007.jf.intel.com with ESMTP; 02 Jul 2019 03:23:20 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Tue,  2 Jul 2019 11:23:10 +0100
Message-Id: <20190702102313.9333-1-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/3] More mmio and intel_gt cleanups and
 refactorings
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
Cc: Paulo Zanoni <paulo.r.zanoni@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KCkEgbWluaS1z
ZXJpZXMgd2hpY2ggY29udmVydHMgdG8gaW50ZWxfZ3QgYW5kIHJlbW92ZXMgc29tZSBsZWdhY3kg
bW1pbyBhY2Nlc3NvcnMKbW9zdGx5IGFyb3VuZCBpbnRlcnJ1cHQgYW5kIFJQUyBoYW5kbGluZyBh
cmVhcy4KCkFsbCBwYXRjaGVzIHdlcmUgYWN0dWFsbHkgc3RhcnRlZCBieSBQYXVsbyBhbmQgSSBo
YXZlIGF0dHJpYnV0ZWQgdGhhdCB3aXRoIHRoZQpDby1hdXRob3JlZC1ieSB0YWcuIEJ1dCBnaXZl
biByZWJhc2VzIGFuZCBzb21lIG90aGVyIGNoYW5nZXMgSSBtYWRlLCBJIGRpZCB0YWtlCmF1dGhv
cnNoaXAuIFBhdWxvIHBsZWFzZSBzdGF0ZSB5b3VyIHByZWZlcmVuY2UgLSBhcmUgeW91IGhhcHB5
IHdpdGggdGhpcyBvcgp5b3Ugd291bGQgcHJlZmVyIEkgc3dhcCBvdXIgbmFtZXMgYmV0d2VlbiB0
aGUgYXV0aG9yIGFuZCBjby1hdXRob3JlZCB0YWdzPwoKVHZydGtvIFVyc3VsaW4gKDMpOgogIGRy
bS9pOTE1OiBSZXdvcmsgc29tZSBpbnRlcnJ1cHQgaGFuZGxpbmcgZnVuY3Rpb25zIHRvIHRha2Ug
aW50ZWxfZ3QKICBkcm0vaTkxNTogUmVtb3ZlIHNvbWUgbGVnYWN5IG1taW8gYWNjZXNzb3JzIGZy
b20gaW50ZXJydXB0IGhhbmRsaW5nCiAgZHJtL2k5MTU6IE1vdmUgZGV2X3ByaXYtPnBtX2l7bSxl
fXIgaW50byBpbnRlbF9ndAoKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0X3R5cGVz
LmggICB8ICAgMyArCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9yaW5nYnVmZmVyLmMg
fCAgIDQgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmggICAgICAgICAgICB8ICAg
MiAtCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2lycS5jICAgICAgICAgICAgfCAyNzYgKysr
KysrKysrKystLS0tLS0tLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2lycS5oICAgICAg
ICAgICAgfCAgIDQgKy0KIDUgZmlsZXMgY2hhbmdlZCwgMTUyIGluc2VydGlvbnMoKyksIDEzNyBk
ZWxldGlvbnMoLSkKCi0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeA==
