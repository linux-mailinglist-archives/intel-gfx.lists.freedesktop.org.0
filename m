Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7886A91515C
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Jun 2024 17:05:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B654310E480;
	Mon, 24 Jun 2024 15:05:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Rx7/kgnt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B9FDF10E486
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Jun 2024 15:05:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719241555; x=1750777555;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=UFw4rfUrg6FHQIdpmqmvSRZkDmzxdGaSz3v+noQlNFo=;
 b=Rx7/kgntu53Csd3BapPIcaaOxdwFND9C1aOz3HPiZi3VcTg2/hyejIKn
 ZrMeMS50G2fHyBQCjrreW6zIIBXmHaVl28uO0mJsSlz+NTfYL8QFhlG8x
 s9bULe5G8EHC3fz/xnOJsaQ1MWc9WtPGs8M9UYxULs223QRjjdbkypcoW
 05pWupIdHBqAKH3ObxIK9bxe57xR9lwDBUN4qhO0wPMi05Qm0H5zseX/B
 iUHnYf/08ow2ByK3gtJzyCkO+UtwOP20We940u6+eXljSFxS0AbNrzBW1
 9qOXWtuF/spa+cVyaKFznf/nwNdZlXwJvbJmHGAro5ZGjLktRirM+blxj g==;
X-CSE-ConnectionGUID: st4Lf9YOTMuUwMbXh00eig==
X-CSE-MsgGUID: VBEc2k9ZSV+GyjeeimFfCQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11113"; a="19117870"
X-IronPort-AV: E=Sophos;i="6.08,262,1712646000"; d="scan'208";a="19117870"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2024 08:05:55 -0700
X-CSE-ConnectionGUID: SVDAk9eLQhKr8qWELNvSfA==
X-CSE-MsgGUID: OFUe6U1fQs6Dcr3BnR4mQg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,262,1712646000"; d="scan'208";a="43298696"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 24 Jun 2024 08:05:54 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 24 Jun 2024 18:05:52 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 5/5] drm/i915: Allow async flips with CCS on ICL
Date: Mon, 24 Jun 2024 18:05:38 +0300
Message-ID: <20240624150538.24102-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20240624150538.24102-1-ville.syrjala@linux.intel.com>
References: <20240624150538.24102-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Apparently ICL can do async flips with CCS. In fact it already
seems to work on GLK, but apparently can lead to underruns there
so we'll only enable it for ICL.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 21 +++++++++++++++++++-
 1 file changed, 20 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 0b0c5ef1d48e..eeba224b9f25 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -6243,7 +6243,26 @@ static int intel_async_flip_check_hw(struct intel_atomic_state *state, struct in
 				return -EINVAL;
 			}
 			break;
-
+		case I915_FORMAT_MOD_Y_TILED_CCS:
+		case I915_FORMAT_MOD_Yf_TILED_CCS:
+			/*
+			 * Display WA #0731: skl
+			 * WaDisableRCWithAsyncFlip: skl
+			 * "When render decompression is enabled, hardware
+			 *  internally converts the Async flips to Sync flips."
+			 *
+			 * Display WA #1159: glk
+			 * "Async flip with render compression may result in
+			 *  intermittent underrun corruption."
+			 */
+			if (DISPLAY_VER(i915) < 11) {
+				drm_dbg_kms(&i915->drm,
+					    "[PLANE:%d:%s] Modifier 0x%llx does not support async flip on display ver %d\n",
+					    plane->base.base.id, plane->base.name,
+					    new_plane_state->hw.fb->modifier, DISPLAY_VER(i915));
+				return -EINVAL;
+			}
+			break;
 		case I915_FORMAT_MOD_X_TILED:
 		case I915_FORMAT_MOD_Y_TILED:
 		case I915_FORMAT_MOD_Yf_TILED:
-- 
2.44.2

