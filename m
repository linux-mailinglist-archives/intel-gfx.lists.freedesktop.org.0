Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 58A613B5AF7
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Jun 2021 11:10:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 244086E321;
	Mon, 28 Jun 2021 09:10:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2B82F6E321;
 Mon, 28 Jun 2021 09:10:10 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10028"; a="271774903"
X-IronPort-AV: E=Sophos;i="5.83,305,1616482800"; d="scan'208";a="271774903"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jun 2021 02:10:09 -0700
X-IronPort-AV: E=Sophos;i="5.83,305,1616482800"; d="scan'208";a="419097203"
Received: from danielmi-mobl2.ger.corp.intel.com (HELO
 thellst-mobl1.intel.com) ([10.249.254.242])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jun 2021 02:10:08 -0700
From: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Mon, 28 Jun 2021 11:09:43 +0200
Message-Id: <20210628090943.45690-6-thomas.hellstrom@linux.intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210628090943.45690-1-thomas.hellstrom@linux.intel.com>
References: <20210628090943.45690-1-thomas.hellstrom@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 5/5] drm/i915/gem: Migrate to system at
 dma-buf map time
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
Cc: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 matthew.auld@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VW50aWwgd2Ugc3VwcG9ydCBwMnAgZG1hIG9yIGFzIGEgY29tcGxlbWVudCB0byB0aGF0LCBtaWdy
YXRlIGRhdGEKdG8gc3lzdGVtIG1lbW9yeSBhdCBkbWEtYnVmIG1hcCB0aW1lIGlmIHBvc3NpYmxl
LgoKdjI6Ci0gUmViYXNlIG9uIGR5bmFtaWMgZXhwb3J0ZXIuIFVwZGF0ZSB0aGUgaWd0X2RtYWJ1
Zl9pbXBvcnRfc2FtZV9kcml2ZXIKICBzZWxmdGVzdCB0byBtaWdyYXRlIGlmIHdlIGFyZSBMTUVN
IGNhcGFibGUuCgpTaWduZWQtb2ZmLWJ5OiBUaG9tYXMgSGVsbHN0csO2bSA8dGhvbWFzLmhlbGxz
dHJvbUBsaW51eC5pbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVf
Z2VtX2RtYWJ1Zi5jICAgICAgICAgICB8IDcgKysrKysrLQogZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z2VtL3NlbGZ0ZXN0cy9pOTE1X2dlbV9kbWFidWYuYyB8IDQgKysrLQogMiBmaWxlcyBjaGFuZ2Vk
LCA5IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2RtYWJ1Zi5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z2VtL2k5MTVfZ2VtX2RtYWJ1Zi5jCmluZGV4IDFkMWVlYjE2N2QyOC4uNTIwN2FhM2FmMDA5IDEw
MDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fZG1hYnVmLmMKKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2RtYWJ1Zi5jCkBAIC0yOSw3ICsy
OSwxMiBAQCBzdGF0aWMgc3RydWN0IHNnX3RhYmxlICppOTE1X2dlbV9tYXBfZG1hX2J1ZihzdHJ1
Y3QgZG1hX2J1Zl9hdHRhY2htZW50ICphdHRhY2htZQogCiAJYXNzZXJ0X29iamVjdF9oZWxkKG9i
aik7CiAKLQlyZXQgPSBpOTE1X2dlbV9vYmplY3RfcGluX3BhZ2VzKG9iaik7CisJaWYgKCFpOTE1
X2dlbV9vYmplY3RfY2FuX21pZ3JhdGUob2JqLCBJTlRFTF9SRUdJT05fU01FTSkpCisJCXJldHVy
biBFUlJfUFRSKC1FT1BOT1RTVVBQKTsKKworCXJldCA9IGk5MTVfZ2VtX29iamVjdF9taWdyYXRl
KG9iaiwgTlVMTCwgSU5URUxfUkVHSU9OX1NNRU0pOworCWlmICghcmV0KQorCQlyZXQgPSBpOTE1
X2dlbV9vYmplY3RfcGluX3BhZ2VzKG9iaik7CiAJaWYgKHJldCkKIAkJZ290byBlcnI7CiAKZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9zZWxmdGVzdHMvaTkxNV9nZW1fZG1h
YnVmLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL2k5MTVfZ2VtX2RtYWJ1
Zi5jCmluZGV4IDI0NzM1ZDZjMTJhMi4uYjYyNzhkYmE5OGQwIDEwMDY0NAotLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL2k5MTVfZ2VtX2RtYWJ1Zi5jCisrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2dlbS9zZWxmdGVzdHMvaTkxNV9nZW1fZG1hYnVmLmMKQEAgLTk0LDcg
Kzk0LDkgQEAgc3RhdGljIGludCBpZ3RfZG1hYnVmX2ltcG9ydF9zYW1lX2RyaXZlcih2b2lkICph
cmcpCiAJaW50IGVycjsKIAogCWZvcmNlX2RpZmZlcmVudF9kZXZpY2VzID0gdHJ1ZTsKLQlvYmog
PSBpOTE1X2dlbV9vYmplY3RfY3JlYXRlX3NobWVtKGk5MTUsIFBBR0VfU0laRSk7CisJb2JqID0g
aTkxNV9nZW1fb2JqZWN0X2NyZWF0ZV9sbWVtKGk5MTUsIFBBR0VfU0laRSwgMCk7CisJaWYgKElT
X0VSUihvYmopKQorCQlvYmogPSBpOTE1X2dlbV9vYmplY3RfY3JlYXRlX3NobWVtKGk5MTUsIFBB
R0VfU0laRSk7CiAJaWYgKElTX0VSUihvYmopKQogCQlnb3RvIG91dF9yZXQ7CiAKLS0gCjIuMzEu
MQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
