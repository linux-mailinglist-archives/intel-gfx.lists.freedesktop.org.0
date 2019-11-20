Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BA6FF104712
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Nov 2019 00:49:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2220F6EA75;
	Wed, 20 Nov 2019 23:49:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DCB906EA70
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Nov 2019 23:48:57 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Nov 2019 15:48:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,223,1571727600"; d="scan'208";a="197044510"
Received: from josouza-mobl.jf.intel.com (HELO josouza-MOBL.intel.com)
 ([10.98.40.70])
 by orsmga007.jf.intel.com with ESMTP; 20 Nov 2019 15:48:57 -0800
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 20 Nov 2019 15:48:52 -0800
Message-Id: <20191120234853.348731-2-jose.souza@intel.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191120234853.348731-1-jose.souza@intel.com>
References: <20191120234853.348731-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/3] drm/i915/display: Check the old state to
 find port sync slave
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

SWYgdGhlIENSVEMgaXMgZ29pbmcgZnJvbSBlbmFibGVkIHRvIGRpc2FibGVkIGFuZCBpdCBpcyBh
IHBvcnQgc3luYwpzbGF2ZSwgaXQgbmVlZHMgdG8gY2hlY2sgdG8gdGhlIG9sZCBzdGF0ZSB0byBi
ZSBkaXNhYmxlZCBiZWZvcmUgdGhlCnBvcnQgc3luYyBtYXN0ZXIuCgpDYzogTWFuYXNpIE5hdmFy
ZSA8bWFuYXNpLmQubmF2YXJlQGludGVsLmNvbT4KQ2M6IE1hdHQgUm9wZXIgPG1hdHRoZXcuZC5y
b3BlckBpbnRlbC5jb20+CkNjOiBNYWFydGVuIExhbmtob3JzdCA8bWFhcnRlbi5sYW5raG9yc3RA
bGludXguaW50ZWwuY29tPgpDYzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4
LmludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5z
b3V6YUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
aXNwbGF5LmMgfCA0ICsrLS0KIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIgZGVs
ZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kaXNwbGF5LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXku
YwppbmRleCAxYjFmYmI2ZDhhY2MuLjgwMWI5NzVjN2QzOSAxMDA2NDQKLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKQEAgLTE0NDYwLDkgKzE0NDYwLDkgQEAgc3Rh
dGljIHZvaWQgaW50ZWxfY29tbWl0X21vZGVzZXRfZGlzYWJsZXMoc3RydWN0IGludGVsX2F0b21p
Y19zdGF0ZSAqc3RhdGUpCiAJCSAqIHNsYXZlIENSVENzIGFyZSBkaXNhYmxlZCBmaXJzdCBhbmQg
dGhlbiBtYXN0ZXIgQ1JUQyBzaW5jZQogCQkgKiBTbGF2ZSB2YmxhbmtzIGFyZSBtYXNrZWQgdGls
bCBNYXN0ZXIgVmJsYW5rcy4KIAkJICovCi0JCWlmICghaXNfdHJhbnNfcG9ydF9zeW5jX21vZGUo
bmV3X2NydGNfc3RhdGUpKQorCQlpZiAoIWlzX3RyYW5zX3BvcnRfc3luY19tb2RlKG9sZF9jcnRj
X3N0YXRlKSkKIAkJCWNvbnRpbnVlOwotCQlpZiAoaXNfdHJhbnNfcG9ydF9zeW5jX21hc3Rlcihu
ZXdfY3J0Y19zdGF0ZSkpCisJCWlmIChpc190cmFuc19wb3J0X3N5bmNfbWFzdGVyKG9sZF9jcnRj
X3N0YXRlKSkKIAkJCWNvbnRpbnVlOwogCiAJCWludGVsX3ByZV9wbGFuZV91cGRhdGUob2xkX2Ny
dGNfc3RhdGUsIG5ld19jcnRjX3N0YXRlKTsKLS0gCjIuMjQuMAoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
