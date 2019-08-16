Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 17A148FFA6
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Aug 2019 12:03:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE0316E2C8;
	Fri, 16 Aug 2019 10:03:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DDF9D6E2C8
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Aug 2019 10:03:28 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Aug 2019 03:03:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,391,1559545200"; d="scan'208";a="182138382"
Received: from oploder-mobl.ger.corp.intel.com (HELO
 mwahaha-bdw.ger.corp.intel.com) ([10.252.6.232])
 by orsmga006.jf.intel.com with ESMTP; 16 Aug 2019 03:03:27 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 16 Aug 2019 11:03:26 +0100
Message-Id: <20190816100326.6671-1-matthew.auld@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/buddy: tidy up i915_buddy_fini
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

SWYgd2UgYXJlIGxlYWtpbmcgbm9kZXMgZG9uJ3QgaGlkZSBpdC4gQWxzbyBzdG9wIHRyeWluZyB0
byBiZQoiZGVmZW5zaXZlIiBhbmQgaW5zdGVhZCBlbWJyYWNlIEthc2FuIGV0IGFsLgoKU2lnbmVk
LW9mZi1ieTogTWF0dGhldyBBdWxkIDxtYXR0aGV3LmF1bGRAaW50ZWwuY29tPgpDYzogQ2hyaXMg
V2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9idWRkeS5jIHwgNyArLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24o
KyksIDYgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9idWRkeS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9idWRkeS5jCmluZGV4IGI2Nzlh
YjZmZDg4OS4uNTk5NTI0N2ZkZjc2IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X2J1ZGR5LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9idWRkeS5jCkBAIC0x
NzEsMTUgKzE3MSwxMCBAQCBpbnQgaTkxNV9idWRkeV9pbml0KHN0cnVjdCBpOTE1X2J1ZGR5X21t
ICptbSwgdTY0IHNpemUsIHU2NCBjaHVua19zaXplKQogCiB2b2lkIGk5MTVfYnVkZHlfZmluaShz
dHJ1Y3QgaTkxNV9idWRkeV9tbSAqbW0pCiB7Ci0JaW50IGVyciA9IDA7CiAJaW50IGk7CiAKIAlm
b3IgKGkgPSAwOyBpIDwgbW0tPm5fcm9vdHM7ICsraSkgewotCQlpZiAoIWk5MTVfYnVkZHlfYmxv
Y2tfaXNfZnJlZShtbS0+cm9vdHNbaV0pKSB7Ci0JCQllcnIgPSAtRUJVU1k7Ci0JCQljb250aW51
ZTsKLQkJfQotCisJCUdFTV9XQVJOX09OKCFpOTE1X2J1ZGR5X2Jsb2NrX2lzX2ZyZWUobW0tPnJv
b3RzW2ldKSk7CiAJCWk5MTVfYmxvY2tfZnJlZShtbS0+cm9vdHNbaV0pOwogCX0KIAotLSAKMi4y
MC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
