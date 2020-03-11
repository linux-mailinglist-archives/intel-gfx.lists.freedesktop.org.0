Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E08D2181393
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Mar 2020 09:48:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 897866E448;
	Wed, 11 Mar 2020 08:48:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 39A456E448
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Mar 2020 08:48:22 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Mar 2020 01:48:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,540,1574150400"; d="scan'208";a="245972632"
Received: from unknown (HELO genxfsim-desktop.iind.intel.com) ([10.223.74.178])
 by orsmga006.jf.intel.com with ESMTP; 11 Mar 2020 01:48:20 -0700
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 11 Mar 2020 14:06:32 +0530
Message-Id: <20200311083632.3249-1-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Enable non-contiguous pipe fusing
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QWxsb3cgMy1kaXNwbGF5IHBpcGVzIFNLVSBzeXN0ZW0gd2l0aCBhbnkgY29tYmluYXRpb24KaW4g
SU5URUxfSU5GTyBwaXBlIG1hc2suCkIuU3BlYzo1MDA3NQoKY2hhbmdlcyBzaW5jZSBSRkM6Ci0g
dXNpbmcgaW50ZWxfcGlwZV9tYXNrX2lzX3ZhbGlkKCkgZnVuY3Rpb24gdG8gY2hlY2sgaW50ZWdy
aXR5IG9mCiAgcGlwZV9tYXNrLiBbVmlsbGVdCnYyOgotIHNpbXBsaWZ5IGNvbmRpdGlvbiBpbiBp
bnRlbF9waXBlX21hc2tfaXNfdmFsaWQoKS4gW1ZpbGxlXQp2MzoKLSByZW1vdmVkIG5vbi1jb250
aWd1b3VzIHBpcGUgZnVzaW5nIGNoZWNrLiBbTHVjYXNdCgpDYzogVmlsbGUgU3lyasOkbMOkIDx2
aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KQ2M6IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMu
ZGVtYXJjaGlAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBBbnNodW1hbiBHdXB0YSA8YW5zaHVt
YW4uZ3VwdGFAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Rldmlj
ZV9pbmZvLmMgfCAxMiArLS0tLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigr
KSwgMTEgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50
ZWxfZGV2aWNlX2luZm8uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RldmljZV9pbmZv
LmMKaW5kZXggZDdmZTEyNzM0ZGI4Li45ZmY4OWUxNDJmZjEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2ludGVsX2RldmljZV9pbmZvLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaW50ZWxfZGV2aWNlX2luZm8uYwpAQCAtOTk4LDE3ICs5OTgsNyBAQCB2b2lkIGludGVsX2Rl
dmljZV9pbmZvX3J1bnRpbWVfaW5pdChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYp
CiAJCSAgICAoZGZzbSAmIFRHTF9ERlNNX1BJUEVfRF9ESVNBQkxFKSkKIAkJCWVuYWJsZWRfbWFz
ayAmPSB+QklUKFBJUEVfRCk7CiAKLQkJLyoKLQkJICogQXQgbGVhc3Qgb25lIHBpcGUgc2hvdWxk
IGJlIGVuYWJsZWQgYW5kIGlmIHRoZXJlIGFyZQotCQkgKiBkaXNhYmxlZCBwaXBlcywgdGhleSBz
aG91bGQgYmUgdGhlIGxhc3Qgb25lcywgd2l0aCBubyBob2xlcwotCQkgKiBpbiB0aGUgbWFzay4K
LQkJICovCi0JCWlmIChlbmFibGVkX21hc2sgPT0gMCB8fCAhaXNfcG93ZXJfb2ZfMihlbmFibGVk
X21hc2sgKyAxKSkKLQkJCWRybV9lcnIoJmRldl9wcml2LT5kcm0sCi0JCQkJImludmFsaWQgcGlw
ZSBmdXNlIGNvbmZpZ3VyYXRpb246IGVuYWJsZWRfbWFzaz0weCV4XG4iLAotCQkJCWVuYWJsZWRf
bWFzayk7Ci0JCWVsc2UKLQkJCWluZm8tPnBpcGVfbWFzayA9IGVuYWJsZWRfbWFzazsKKwkJaW5m
by0+cGlwZV9tYXNrID0gZW5hYmxlZF9tYXNrOwogCiAJCWlmIChkZnNtICYgU0tMX0RGU01fRElT
UExBWV9IRENQX0RJU0FCTEUpCiAJCQlpbmZvLT5kaXNwbGF5Lmhhc19oZGNwID0gMDsKLS0gCjIu
MjUuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
