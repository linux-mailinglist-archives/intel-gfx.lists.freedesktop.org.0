Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 432A512BBD5
	for <lists+intel-gfx@lfdr.de>; Sat, 28 Dec 2019 00:52:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 011C76E0D5;
	Fri, 27 Dec 2019 23:52:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 186486E0D2
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Dec 2019 23:52:23 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Dec 2019 15:52:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,364,1571727600"; d="scan'208";a="220631251"
Received: from ideak-desk.fi.intel.com ([10.237.72.183])
 by orsmga003.jf.intel.com with ESMTP; 27 Dec 2019 15:52:20 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sat, 28 Dec 2019 01:51:47 +0200
Message-Id: <20191227235147.32366-3-imre.deak@intel.com>
X-Mailer: git-send-email 2.23.1
In-Reply-To: <20191227235147.32366-1-imre.deak@intel.com>
References: <20191227235147.32366-1-imre.deak@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/3] drm/i915: Add debug message for FB
 plane[0].offset!=0 error
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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

UHJpbnQgYSBkZWJ1ZyBtZXNzYWdlIGlmIHRoZSBGQiBwbGFuZVswXSBvZmZzZXQgaXMgbm90IDAg
YXMgZXhwZWN0ZWQsIHRvCmhlbHAgdW5kZXJzdGFpbmRpbmcgYW4gYWRkIEZCIElPQ1RMIGZhaWwu
CgpDYzogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+CkNjOiBWaWxsZSBT
eXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBJ
bXJlIERlYWsgPGltcmUuZGVha0BpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgfCA1ICsrKystCiAxIGZpbGUgY2hhbmdlZCwgNCBpbnNl
cnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2Rpc3BsYXkuYwppbmRleCBkZTM4MmJiYTlhOTEuLjNkMmY3ZTEyZGNjMSAxMDA2NDQK
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKQEAgLTE2NzIzLDgg
KzE2NzIzLDExIEBAIHN0YXRpYyBpbnQgaW50ZWxfZnJhbWVidWZmZXJfaW5pdChzdHJ1Y3QgaW50
ZWxfZnJhbWVidWZmZXIgKmludGVsX2ZiLAogCX0KIAogCS8qIEZJWE1FIG5lZWQgdG8gYWRqdXN0
IExJTk9GRi9USUxFT0ZGIGFjY29yZGluZ2x5LiAqLwotCWlmIChtb2RlX2NtZC0+b2Zmc2V0c1sw
XSAhPSAwKQorCWlmIChtb2RlX2NtZC0+b2Zmc2V0c1swXSAhPSAwKSB7CisJCURSTV9ERUJVR19L
TVMoInBsYW5lIDAgb2Zmc2V0ICgweCUwOHgpIG11c3QgYmUgMFxuIiwKKwkJCSAgICAgIG1vZGVf
Y21kLT5vZmZzZXRzWzBdKTsKIAkJZ290byBlcnI7CisJfQogCiAJZHJtX2hlbHBlcl9tb2RlX2Zp
bGxfZmJfc3RydWN0KCZkZXZfcHJpdi0+ZHJtLCBmYiwgbW9kZV9jbWQpOwogCi0tIAoyLjIzLjEK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
