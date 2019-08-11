Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 966FC890A4
	for <lists+intel-gfx@lfdr.de>; Sun, 11 Aug 2019 10:22:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8B19689EA6;
	Sun, 11 Aug 2019 08:22:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6AC3889EA6
 for <intel-gfx@lists.freedesktop.org>; Sun, 11 Aug 2019 08:22:44 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Aug 2019 01:22:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,372,1559545200"; d="scan'208";a="327055976"
Received: from genxfsim-desktop.iind.intel.com ([10.223.74.120])
 by orsmga004.jf.intel.com with ESMTP; 11 Aug 2019 01:22:42 -0700
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sun, 11 Aug 2019 13:49:08 +0530
Message-Id: <20190811081908.9114-1-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2] drm/i915/icl: Remove DDI IO power domain
 from PG3 power domains
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

VGhlIERESS1JTyBwb3dlciB3ZWxscyAoUFdSX1dFTExfQ1RMX0RESSkgYXJlIGJhY2tpbmcKdGhl
IElPL1BIWSBmdW5jdGlvbmFsaXR5LCB3aGljaCBkb2Vzbid0IG5lZWQgdGhlIFBHMwpwb3dlciBw
b3dlciB3ZWxsLiBBY2NvcmRpbmdseSBmaXhpbmcgdXAgdGhlIGxpc3Qgb2YKUEczIHBvd2VyIGRv
bWFpbnMuCgp2MjogUmVtb3ZlZCAiRERJIEUvRiBJTyJwb3dlciBkb21haW4gYXMgd2VsbCBbSW1y
ZV0KCkNjOiBJbXJlIERlYWsgPGltcmUuZGVha0BpbnRlbC5jb20+CkNjOiBWaWxsZSBTeXJqw6Rs
w6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBBbnNodW1h
biBHdXB0YSA8YW5zaHVtYW4uZ3VwdGFAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5jIHwgNSAtLS0tLQogMSBmaWxlIGNoYW5n
ZWQsIDUgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2Rpc3BsYXlfcG93ZXIuYwppbmRleCBlM2JlYTJiNzRjZTIuLjk5ZWQ0YjRkN2MzYyAx
MDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bv
d2VyLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bv
d2VyLmMKQEAgLTI0ODIsMTUgKzI0ODIsMTAgQEAgdm9pZCBpbnRlbF9kaXNwbGF5X3Bvd2VyX3B1
dChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCiAJQklUX1VMTChQT1dFUl9ET01B
SU5fVFJBTlNDT0RFUl9DKSB8CQlcCiAJQklUX1VMTChQT1dFUl9ET01BSU5fUElQRV9CX1BBTkVM
X0ZJVFRFUikgfAlcCiAJQklUX1VMTChQT1dFUl9ET01BSU5fUE9SVF9ERElfQl9MQU5FUykgfAlc
Ci0JQklUX1VMTChQT1dFUl9ET01BSU5fUE9SVF9ERElfQl9JTykgfAkJXAogCUJJVF9VTEwoUE9X
RVJfRE9NQUlOX1BPUlRfRERJX0NfTEFORVMpIHwJXAotCUJJVF9VTEwoUE9XRVJfRE9NQUlOX1BP
UlRfRERJX0NfSU8pIHwJCVwKIAlCSVRfVUxMKFBPV0VSX0RPTUFJTl9QT1JUX0RESV9EX0xBTkVT
KSB8CVwKLQlCSVRfVUxMKFBPV0VSX0RPTUFJTl9QT1JUX0RESV9EX0lPKSB8CQlcCiAJQklUX1VM
TChQT1dFUl9ET01BSU5fUE9SVF9ERElfRV9MQU5FUykgfAlcCi0JQklUX1VMTChQT1dFUl9ET01B
SU5fUE9SVF9ERElfRV9JTykgfAkJXAogCUJJVF9VTEwoUE9XRVJfRE9NQUlOX1BPUlRfRERJX0Zf
TEFORVMpIHwJXAotCUJJVF9VTEwoUE9XRVJfRE9NQUlOX1BPUlRfRERJX0ZfSU8pIHwJCVwKIAlC
SVRfVUxMKFBPV0VSX0RPTUFJTl9BVVhfQikgfAkJCVwKIAlCSVRfVUxMKFBPV0VSX0RPTUFJTl9B
VVhfQykgfAkJCVwKIAlCSVRfVUxMKFBPV0VSX0RPTUFJTl9BVVhfRCkgfAkJCVwKLS0gCjIuMjEu
MAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
