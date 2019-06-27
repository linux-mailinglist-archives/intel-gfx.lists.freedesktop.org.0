Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 847F6584B6
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Jun 2019 16:44:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E09CA6E4EA;
	Thu, 27 Jun 2019 14:44:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B6B196E4EA
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Jun 2019 14:44:42 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Jun 2019 07:44:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,424,1557212400"; d="scan'208";a="189089210"
Received: from rosetta.fi.intel.com ([10.237.72.194])
 by fmsmga002.fm.intel.com with ESMTP; 27 Jun 2019 07:44:40 -0700
Received: by rosetta.fi.intel.com (Postfix, from userid 1000)
 id 8621E84028C; Thu, 27 Jun 2019 17:44:39 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 27 Jun 2019 17:44:38 +0300
Message-Id: <20190627144438.32458-1-mika.kuoppala@linux.intel.com>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-gfx] [PATCH 1/1] drm/i915: Fix memleak in runtime wakeref
 tracking
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
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SWYgd2UgdW50cmFjayB3YWtlcmVmcywgdGhlIGFjdHVhbCBjb3VudCBtYXkgcmVhY2ggemVyby4K
SG93ZXZlciB0aGUga3JlYWxsb2NlZCBvd25lcnMgYXJyYXkgaXMgc3RpbGwgdGhlcmUgYW5kCm5l
ZWRzIHRvIGJlIHRha2VuIGNhcmUgb2YuIEZyZWUgdGhlIG93bmVycyB1bmNvbmRpdGlvbmFsbHkK
dG8gZml4IHRoZSBsZWFrLgoKRml4ZXM6IGRiZjk5YzFmOGM3ZSAoImRybS9pOTE1OiBGb3JjZSBw
cmludGluZyB3YWtlcmVmIHRhY2tpbmcgZHVyaW5nIHBtX2NsZWFudXAiKQpSZXBvcnRlZC1ieTog
SnVoYS1QZWtrYSBIZWlra2lsYSA8anVoYXBla2thLmhlaWtraWxhQGdtYWlsLmNvbT4KQ2M6IEp1
aGEtUGVra2EgSGVpa2tpbGEgPGp1aGFwZWtrYS5oZWlra2lsYUBnbWFpbC5jb20+CkNjOiBDaHJp
cyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KQ2M6IEltcmUgRGVhayA8aW1yZS5k
ZWFrQGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogTWlrYSBLdW9wcGFsYSA8bWlrYS5rdW9wcGFs
YUBsaW51eC5pbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcnVudGlt
ZV9wbS5jIHwgMTAgKysrKy0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwg
NiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9y
dW50aW1lX3BtLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9ydW50aW1lX3BtLmMKaW5k
ZXggNTAyYzU0NDI4NTcwLi44ZDFhZWJjM2U4NTcgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2ludGVsX3J1bnRpbWVfcG0uYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRl
bF9ydW50aW1lX3BtLmMKQEAgLTIyMSwxMyArMjIxLDExIEBAIF9fdW50cmFja19hbGxfd2FrZXJl
ZnMoc3RydWN0IGludGVsX3J1bnRpbWVfcG1fZGVidWcgKmRlYnVnLAogc3RhdGljIHZvaWQKIGR1
bXBfYW5kX2ZyZWVfd2FrZXJlZl90cmFja2luZyhzdHJ1Y3QgaW50ZWxfcnVudGltZV9wbV9kZWJ1
ZyAqZGVidWcpCiB7Ci0Jc3RydWN0IGRybV9wcmludGVyIHA7CisJaWYgKGRlYnVnLT5jb3VudCkg
eworCQlzdHJ1Y3QgZHJtX3ByaW50ZXIgcCA9IGRybV9kZWJ1Z19wcmludGVyKCJpOTE1Iik7CiAK
LQlpZiAoIWRlYnVnLT5jb3VudCkKLQkJcmV0dXJuOwotCi0JcCA9IGRybV9kZWJ1Z19wcmludGVy
KCJpOTE1Iik7Ci0JX19wcmludF9pbnRlbF9ydW50aW1lX3BtX3dha2VyZWYoJnAsIGRlYnVnKTsK
KwkJX19wcmludF9pbnRlbF9ydW50aW1lX3BtX3dha2VyZWYoJnAsIGRlYnVnKTsKKwl9CiAKIAlr
ZnJlZShkZWJ1Zy0+b3duZXJzKTsKIH0KLS0gCjIuMTcuMQoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
