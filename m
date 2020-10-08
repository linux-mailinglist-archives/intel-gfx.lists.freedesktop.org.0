Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C0DE9287DB9
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Oct 2020 23:16:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E9B6E6EB16;
	Thu,  8 Oct 2020 21:16:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 296166EB20
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Oct 2020 21:16:27 +0000 (UTC)
IronPort-SDR: uGiend/nYJtYCwNW5H4nlBwDj10ghhqEUb5Ah9Nh2rSKftRzFLLugnMZPDUybFV0gFo4C1PJlo
 PHmk9CsWhBrA==
X-IronPort-AV: E=McAfee;i="6000,8403,9768"; a="152326168"
X-IronPort-AV: E=Sophos;i="5.77,352,1596524400"; d="scan'208";a="152326168"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2020 14:16:25 -0700
IronPort-SDR: +z70sgwXNhfGSkDgDhVY1dTzT2WW8TSJU23m5w3DSZ53fiMdDb9LAJD7Qy4/athSdGWkYgLKS2
 Rgy9/4l328oA==
X-IronPort-AV: E=Sophos;i="5.77,352,1596524400"; d="scan'208";a="355521397"
Received: from josouza-mobl2.jf.intel.com (HELO josouza-MOBL2.intel.com)
 ([10.24.14.55])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2020 14:16:25 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  8 Oct 2020 14:19:31 -0700
Message-Id: <20201008211932.24989-2-jose.souza@intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201008211932.24989-1-jose.souza@intel.com>
References: <20201008211932.24989-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 2/3] drm/i915/vbt: Update the version and
 expected size of BDB_GENERAL_DEFINITIONS map
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

VGhpcyB3aWxsIHJlbW92ZSB0aGUgIkV4cGVjdGVkIGNoaWxkIGRldmljZSBjb25maWcgc2l6ZSBm
b3IgVkJUCnZlcnNpb24gMjM1IG5vdCBrbm93biIgZGVidWcgbWVzc2FnZSBzZWVuIGluIFRHTCwg
YWx0aG91Z2ggdGhpcyBpcyBub3QKZml4aW5nIGFueXRoaW5nIGl0IGdvb2QgdG8ga2VlcCBvdXIg
VkJUIHBhcnNlciB1cGRhdGVkLgoKUmV2aWV3ZWQtYnk6IE1hdHQgUm9wZXIgPG1hdHRoZXcuZC5y
b3BlckBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpv
c2Uuc291emFAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfYmlvcy5jIHwgMiArLQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0
aW9uKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9i
aW9zLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuYwppbmRleCBi
NGQ5OWQwYmY2OTYuLjBhMzA5NjQ1ZmUwNiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9iaW9zLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9iaW9zLmMKQEAgLTE5MTcsNyArMTkxNyw3IEBAIHBhcnNlX2dlbmVyYWxfZGVmaW5p
dGlvbnMoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAogCQlleHBlY3RlZF9zaXpl
ID0gMzc7CiAJfSBlbHNlIGlmIChiZGItPnZlcnNpb24gPD0gMjE1KSB7CiAJCWV4cGVjdGVkX3Np
emUgPSAzODsKLQl9IGVsc2UgaWYgKGJkYi0+dmVyc2lvbiA8PSAyMjkpIHsKKwl9IGVsc2UgaWYg
KGJkYi0+dmVyc2lvbiA8PSAyMzcpIHsKIAkJZXhwZWN0ZWRfc2l6ZSA9IDM5OwogCX0gZWxzZSB7
CiAJCWV4cGVjdGVkX3NpemUgPSBzaXplb2YoKmNoaWxkKTsKLS0gCjIuMjguMAoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcg
bGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
