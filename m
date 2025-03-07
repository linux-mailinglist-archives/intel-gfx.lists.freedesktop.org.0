Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 45516A56FE2
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Mar 2025 19:01:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9687210EC25;
	Fri,  7 Mar 2025 18:01:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YMCdrUzA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B38D210EC2B;
 Fri,  7 Mar 2025 18:01:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741370507; x=1772906507;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=4QA+2Vx4eBrteSeJoX/trfkjUK6bxi1Tg3aJPonx3XU=;
 b=YMCdrUzAejxdOcDeQcYuzrp95RDiX0jBlj3oMIj0XH0lkgtrtnXNCa6q
 KHHAdBd3k9viAumOCuDh9Oep0bPfyhTQu07p+PhMg57blrssrCDKP8px5
 SM1Bpu1rbojBxDjm4wNGgC2hqEhlUgPHbJU9YNXAW4twKxAsUEPBg6sSz
 f7/Ym3rp08Ze9sJlC+CdJV2i2lNFmTAIWLCNiB1/im9bsDtxDO0tI+M2O
 gCwc2XSXZRy7jtzdaDgjIT9CJLcfVXsQQXb4Ty4t+5G1GHwizSS0w6dnJ
 ysSZll3o+Ttu1uxQhI6HIHqa23+6GZuQv78ja2YrK86U/PaSIOYsSKgZp g==;
X-CSE-ConnectionGUID: QdrEsgFQSV2NmLvH7BDcZA==
X-CSE-MsgGUID: OEJ1b6BaTGGtikad2raeSw==
X-IronPort-AV: E=McAfee;i="6700,10204,11365"; a="52637113"
X-IronPort-AV: E=Sophos;i="6.14,229,1736841600"; d="scan'208";a="52637113"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2025 10:01:47 -0800
X-CSE-ConnectionGUID: lUFjfadXRE22oKXpowR7Jw==
X-CSE-MsgGUID: CDr7tsptRFi3+vCBrfFdRw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="124621065"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 07 Mar 2025 10:01:44 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 07 Mar 2025 20:01:42 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 01/14] drm/i915: Drop the cached per-pipe min_cdclk[] from bw
 state
Date: Fri,  7 Mar 2025 20:01:26 +0200
Message-ID: <20250307180139.15744-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.3
In-Reply-To: <20250307180139.15744-1-ville.syrjala@linux.intel.com>
References: <20250307180139.15744-1-ville.syrjala@linux.intel.com>
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

intel_bw_crtc_min_cdclk() only depends on the pipe data rate,
which we already have stashed in bw_state->data_rate[]. So
stashing the resulting min_cdclk[] as well is redundant. Get
rid of it.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_bw.c | 17 +++++++----------
 drivers/gpu/drm/i915/display/intel_bw.h |  1 -
 2 files changed, 7 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index 048be2872247..7b9ae926c5c4 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -795,15 +795,13 @@ static unsigned int intel_bw_crtc_data_rate(const struct intel_crtc_state *crtc_
 }
 
 /* "Maximum Pipe Read Bandwidth" */
-static int intel_bw_crtc_min_cdclk(const struct intel_crtc_state *crtc_state)
+static int intel_bw_crtc_min_cdclk(struct drm_i915_private *i915,
+				   unsigned int data_rate)
 {
-	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
-
 	if (DISPLAY_VER(i915) < 12)
 		return 0;
 
-	return DIV_ROUND_UP_ULL(mul_u32_u32(intel_bw_crtc_data_rate(crtc_state), 10), 512);
+	return DIV_ROUND_UP_ULL(mul_u32_u32(data_rate, 10), 512);
 }
 
 static unsigned int intel_bw_num_active_planes(struct drm_i915_private *dev_priv,
@@ -1138,7 +1136,8 @@ static bool intel_bw_state_changed(struct drm_i915_private *i915,
 				return true;
 		}
 
-		if (old_bw_state->min_cdclk[pipe] != new_bw_state->min_cdclk[pipe])
+		if (intel_bw_crtc_min_cdclk(i915, old_bw_state->data_rate[pipe]) !=
+		    intel_bw_crtc_min_cdclk(i915, new_bw_state->data_rate[pipe]))
 			return true;
 	}
 
@@ -1238,7 +1237,8 @@ int intel_bw_min_cdclk(struct drm_i915_private *i915,
 	min_cdclk = intel_bw_dbuf_min_cdclk(i915, bw_state);
 
 	for_each_pipe(i915, pipe)
-		min_cdclk = max(min_cdclk, bw_state->min_cdclk[pipe]);
+		min_cdclk = max(min_cdclk,
+				intel_bw_crtc_min_cdclk(i915, bw_state->data_rate[pipe]));
 
 	return min_cdclk;
 }
@@ -1266,9 +1266,6 @@ int intel_bw_calc_min_cdclk(struct intel_atomic_state *state,
 		old_bw_state = intel_atomic_get_old_bw_state(state);
 
 		skl_crtc_calc_dbuf_bw(new_bw_state, crtc_state);
-
-		new_bw_state->min_cdclk[crtc->pipe] =
-			intel_bw_crtc_min_cdclk(crtc_state);
 	}
 
 	if (!old_bw_state)
diff --git a/drivers/gpu/drm/i915/display/intel_bw.h b/drivers/gpu/drm/i915/display/intel_bw.h
index 3313e4eac4f0..e977c3586dc3 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.h
+++ b/drivers/gpu/drm/i915/display/intel_bw.h
@@ -55,7 +55,6 @@ struct intel_bw_state {
 	 */
 	bool force_check_qgv;
 
-	int min_cdclk[I915_MAX_PIPES];
 	unsigned int data_rate[I915_MAX_PIPES];
 	u8 num_active_planes[I915_MAX_PIPES];
 };
-- 
2.45.3

