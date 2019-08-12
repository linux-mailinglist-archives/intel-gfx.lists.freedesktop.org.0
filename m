Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3268189587
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Aug 2019 05:06:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 252FE6E41F;
	Mon, 12 Aug 2019 03:06:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D32BA6E41F
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Aug 2019 03:06:25 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Aug 2019 20:06:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,375,1559545200"; d="scan'208";a="375092461"
Received: from dong-desktop.sh.intel.com ([10.239.160.29])
 by fmsmga005.fm.intel.com with ESMTP; 11 Aug 2019 20:06:23 -0700
From: Dong Yang <dong.yang@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 12 Aug 2019 11:08:10 +0800
Message-Id: <20190812030810.15878-1-dong.yang@intel.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Remove i915 ggtt WA since GT E
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
Cc: Yang@freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogIllhbmcsIERvbmciIDxkb25nLnlhbmdAaW50ZWwuY29tPgoKVGhlIEFQTCBhbHJlYWR5
IGZpeGVkIHRoaXMgYnVnIHNpbmNlIEdUIEUsIGJ1ZyBleGlzdCBmcm9tCjAgdG8gRCwgYXBwbHkg
V0EgYWNjb3JkaW5nIEdUIHN0ZXBwaW5nLgoKU2lnbmVkLW9mZi1ieTogWWFuZywgRG9uZyA8ZG9u
Zy55YW5nQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oIHwg
NCArKystCiAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCgpk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaCBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfZHJ2LmgKaW5kZXggNWYzZTVjMTNmYmFhLi45NTUxOWJhYzg5NDggMTAw
NjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgKKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9kcnYuaApAQCAtMjE0MSw2ICsyMTQxLDggQEAgSVNfU1VCUExBVEZP
Uk0oY29uc3Qgc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsCiAjZGVmaW5lIEJYVF9SRVZJ
RF9CMAkJMHgzCiAjZGVmaW5lIEJYVF9SRVZJRF9CX0xBU1QJMHg4CiAjZGVmaW5lIEJYVF9SRVZJ
RF9DMAkJMHg5CisjZGVmaW5lIEJYVF9SRVZJRF9EMAkJMHhDCisjZGVmaW5lIEJYVF9SRVZJRF9F
MAkJMHhECiAKICNkZWZpbmUgSVNfQlhUX1JFVklEKGRldl9wcml2LCBzaW5jZSwgdW50aWwpIFwK
IAkoSVNfQlJPWFRPTihkZXZfcHJpdikgJiYgSVNfUkVWSUQoZGV2X3ByaXYsIHNpbmNlLCB1bnRp
bCkpCkBAIC0yMzU3LDcgKzIzNTksNyBAQCBzdGF0aWMgaW5saW5lIGJvb2wgaW50ZWxfc2Nhbm91
dF9uZWVkc192dGRfd2Eoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQogc3RhdGlj
IGlubGluZSBib29sCiBpbnRlbF9nZ3R0X3VwZGF0ZV9uZWVkc192dGRfd2Eoc3RydWN0IGRybV9p
OTE1X3ByaXZhdGUgKmRldl9wcml2KQogewotCXJldHVybiBJU19CUk9YVE9OKGRldl9wcml2KSAm
JiBpbnRlbF92dGRfYWN0aXZlKCk7CisJcmV0dXJuIElTX0JYVF9SRVZJRChkZXZfcHJpdiwgMCwg
QlhUX1JFVklEX0QwKSAmJiBpbnRlbF92dGRfYWN0aXZlKCk7CiB9CiAKIC8qIGk5MTVfZHJ2LmMg
Ki8KLS0gCjIuMjIuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4
