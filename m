Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D372C2F6C87
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Jan 2021 21:51:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3DC116E131;
	Thu, 14 Jan 2021 20:51:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C1AD86E131
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Jan 2021 20:50:59 +0000 (UTC)
IronPort-SDR: 2R4t83Cp95eUHjF8tjwQQuO0XwiACu+B6Zj5LNzJFDuuruaFLGbIvnqNSXj86MbvLipfpZpecP
 JIKsYnGhWGtw==
X-IronPort-AV: E=McAfee;i="6000,8403,9864"; a="178529800"
X-IronPort-AV: E=Sophos;i="5.79,347,1602572400"; d="scan'208";a="178529800"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jan 2021 12:50:58 -0800
IronPort-SDR: F6hL4OwBC2/Ev12HwS11ZAmVfWjeXlptZOgFFH/U9rjSviW+JIhjfJcCyDzIm85UMefe76uPYp
 H4ndCNxUR8jQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,347,1602572400"; d="scan'208";a="401049947"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga002.fm.intel.com with SMTP; 14 Jan 2021 12:50:56 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 14 Jan 2021 22:50:55 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 14 Jan 2021 22:50:42 +0200
Message-Id: <20210114205046.8247-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210114205046.8247-1-ville.syrjala@linux.intel.com>
References: <20210114205046.8247-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/7] drm/i915: Remove dead signal level debugs
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCklm
IHdlIGV2ZXIgZ2V0IGhlcmUgd2l0aCBib2d1cyBzaWduYWwgbGV2ZWxzIHdlJ3ZlIG1lc3NlZAp1
cCBzb21ld2hlcmUgZWFybGllci4gSnVzdCB1c2UgTUlTU0lOX0NBU0UoKS4KClNpZ25lZC1vZmYt
Ynk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Ci0tLQog
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jIHwgNiArKy0tLS0KIDEgZmls
ZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jCmluZGV4IDEwOTMwODg0Y2U0Mi4uMmIyNzY1NDljZWNk
IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMKKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jCkBAIC0zOTU1LDggKzM5
NTUsNyBAQCBzdGF0aWMgdTMyIHNuYl9jcHVfZWRwX3NpZ25hbF9sZXZlbHModTggdHJhaW5fc2V0
KQogCWNhc2UgRFBfVFJBSU5fVk9MVEFHRV9TV0lOR19MRVZFTF8zIHwgRFBfVFJBSU5fUFJFX0VN
UEhfTEVWRUxfMDoKIAkJcmV0dXJuIEVEUF9MSU5LX1RSQUlOXzgwMF8xMjAwTVZfMERCX1NOQl9C
OwogCWRlZmF1bHQ6Ci0JCURSTV9ERUJVR19LTVMoIlVuc3VwcG9ydGVkIHZvbHRhZ2Ugc3dpbmcv
cHJlLWVtcGhhc2lzIGxldmVsOiIKLQkJCSAgICAgICIweCV4XG4iLCBzaWduYWxfbGV2ZWxzKTsK
KwkJTUlTU0lOR19DQVNFKHNpZ25hbF9sZXZlbHMpOwogCQlyZXR1cm4gRURQX0xJTktfVFJBSU5f
NDAwXzYwME1WXzBEQl9TTkJfQjsKIAl9CiB9CkBAIC00MDA3LDggKzQwMDYsNyBAQCBzdGF0aWMg
dTMyIGl2Yl9jcHVfZWRwX3NpZ25hbF9sZXZlbHModTggdHJhaW5fc2V0KQogCQlyZXR1cm4gRURQ
X0xJTktfVFJBSU5fODAwTVZfM181REJfSVZCOwogCiAJZGVmYXVsdDoKLQkJRFJNX0RFQlVHX0tN
UygiVW5zdXBwb3J0ZWQgdm9sdGFnZSBzd2luZy9wcmUtZW1waGFzaXMgbGV2ZWw6IgotCQkJICAg
ICAgIjB4JXhcbiIsIHNpZ25hbF9sZXZlbHMpOworCQlNSVNTSU5HX0NBU0Uoc2lnbmFsX2xldmVs
cyk7CiAJCXJldHVybiBFRFBfTElOS19UUkFJTl81MDBNVl8wREJfSVZCOwogCX0KIH0KLS0gCjIu
MjYuMgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
