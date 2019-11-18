Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FA9B10095C
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Nov 2019 17:41:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 569076E0DF;
	Mon, 18 Nov 2019 16:41:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DE9EA6E0DF
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Nov 2019 16:41:41 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Nov 2019 08:41:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,320,1569308400"; d="scan'208";a="236986492"
Received: from genxfsim-desktop.iind.intel.com ([10.223.74.120])
 by fmsmga002.fm.intel.com with ESMTP; 18 Nov 2019 08:41:39 -0800
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 18 Nov 2019 22:03:39 +0530
Message-Id: <20191118163339.16825-1-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] i915: Expose panel power cycle delay to
 i915_panel_timings
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

UHV0dGluZyBkb3duIHRoZSBBVVggcG93ZXIgZG9tYWluIHJlZmVyZW5jZSBjb3VudCBpbgplZHAg
dmRkIG9mZiBhc3luYyBzZXF1ZW5jZSB0YWtlcyB0b28gbXVjaCBvZiB0aW1lCihyZWxhdGl2ZSB0
byBwYW5lbCBwb3dlciBjeWNsZSBkZWxheSkgdGhlcmVmb3JlIGl0IG1ha2Ugc2Vuc2UKdG8gZXhw
b3NlIHRoZSBwYW5lbCBwb3dlciBjeWNsZSBkZWxheSB0byBpOTE1X3BhbmVsX3RpbWluZ3MKYWxv
bmcgd2l0aCBvdGhlciBkZWxheXMuCkl0IGNhbiBiZSB1c2UgYnkgREMgc3RhdGUgSUdUIHRvIHdh
aXQgZm9yIHN0cmljdCBwb3dlciBjeWNsZSBkZWxheQppbiBvcmRlciB0byBjaGVjayBmb3IgdmFy
aW91cyBEQyBzdGF0ZSBjb3VudGVycy4KCkNjOiBJbXJlIERlYWsgPGltcmUuZGVha0BpbnRlbC5j
b20+ClNpZ25lZC1vZmYtYnk6IEFuc2h1bWFuIEd1cHRhIDxhbnNodW1hbi5ndXB0YUBpbnRlbC5j
b20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kZWJ1Z2ZzLmMgfCAyICsrCiAxIGZp
bGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9kZWJ1Z2ZzLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RlYnVnZnMu
YwppbmRleCBjYWI2MzI3OTFmNzMuLmMwNzVjYzJiN2JiNSAxMDA2NDQKLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9kZWJ1Z2ZzLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9kZWJ1Z2ZzLmMKQEAgLTQ0MzYsNiArNDQzNiw4IEBAIHN0YXRpYyBpbnQgaTkxNV9wYW5lbF9z
aG93KHN0cnVjdCBzZXFfZmlsZSAqbSwgdm9pZCAqZGF0YSkKIAkJICAgaW50ZWxfZHAtPnBhbmVs
X3Bvd2VyX3VwX2RlbGF5KTsKIAlzZXFfcHJpbnRmKG0sICJQYW5lbCBwb3dlciBkb3duIGRlbGF5
OiAlZFxuIiwKIAkJICAgaW50ZWxfZHAtPnBhbmVsX3Bvd2VyX2Rvd25fZGVsYXkpOworCXNlcV9w
cmludGYobSwgIlBhbmVsIHBvd2VyIGN5Y2xlIGRlbGF5OiAlZFxuIiwKKwkJICAgaW50ZWxfZHAt
PnBhbmVsX3Bvd2VyX2N5Y2xlX2RlbGF5KTsKIAlzZXFfcHJpbnRmKG0sICJCYWNrbGlnaHQgb24g
ZGVsYXk6ICVkXG4iLAogCQkgICBpbnRlbF9kcC0+YmFja2xpZ2h0X29uX2RlbGF5KTsKIAlzZXFf
cHJpbnRmKG0sICJCYWNrbGlnaHQgb2ZmIGRlbGF5OiAlZFxuIiwKLS0gCjIuMjQuMAoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
