Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A8AC59FB22
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Aug 2022 15:19:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF49FB52B8;
	Wed, 24 Aug 2022 13:18:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A36D0B51D2
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Aug 2022 13:18:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661347094; x=1692883094;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=y145bHJe8gO36Hjt0N+pjbRP01REp8qjs4K2JHpr2wU=;
 b=f6TssZGl+nDKwf9F2mnT+F5ofoRnFJNMHtmuzwB1vmR9dbWbSSw6EtT7
 jgWCLWnBBZaz/uI+1/vaEpRXDJp07XAYF12iNy0hdOafO1BnMx7SJr9B/
 6tdPRho+cIa/c0wfP1YK9h4KdwdlEOoY6KA6hnwsT3IfKjLPy4GV9hpF2
 6wB2PKUEd695nRnAgXWS7cg28tmD4qtqG6ZU2ZpyVhngXYQbIb37bhIAb
 aO7gnuquf52Tb9vlSbkb2R0T3HzqsfsoZLjc8AoIyYCE7xcsi7SdudPmN
 /mVjR2vV14M8nQxI6OiCbGpMza0z1YbdWu36xWzl0EyO1vBPEEUh6n8DP g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10448"; a="357936180"
X-IronPort-AV: E=Sophos;i="5.93,260,1654585200"; d="scan'208";a="357936180"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2022 06:18:04 -0700
X-IronPort-AV: E=Sophos;i="5.93,260,1654585200"; d="scan'208";a="642854115"
Received: from zlim2-mobl.gar.corp.intel.com (HELO localhost) ([10.252.52.23])
 by orsmga001-auth.jf.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 24 Aug 2022 06:18:03 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 24 Aug 2022 16:15:52 +0300
Message-Id: <036955dc2c4c2d2b2d89555e473d91ce1be10395.1661346845.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1661346845.git.jani.nikula@intel.com>
References: <cover.1661346845.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 26/38] drm/i915/vrr: drop window2_delay
 member from i915
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
Cc: jani.nikula@intel.com, Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The window2_delay member has been functionally unused (always set to 0)
since it was added in commit bb265dbdf38d ("drm/i915/xelpd: Add VRR
guardband for VRR CTL"). Replace it with a FIXME comment.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c |  2 --
 drivers/gpu/drm/i915/display/intel_vrr.c     | 14 ++++++++++----
 drivers/gpu/drm/i915/i915_drv.h              |  3 ---
 3 files changed, 10 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 89b411662822..b347165ac2cf 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -8690,8 +8690,6 @@ int intel_modeset_init_noirq(struct drm_i915_private *i915)
 	i915->flip_wq = alloc_workqueue("i915_flip", WQ_HIGHPRI |
 					WQ_UNBOUND, WQ_UNBOUND_MAX_ACTIVE);
 
-	i915->window2_delay = 0; /* No DSB so no window2 delay */
-
 	intel_mode_config_init(i915);
 
 	ret = intel_cdclk_init(i915);
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 04250a0fec3c..5eac99021875 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -142,11 +142,16 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
 	 * For XE_LPD+, we use guardband and pipeline override
 	 * is deprecated.
 	 */
-	if (DISPLAY_VER(i915) >= 13)
+	if (DISPLAY_VER(i915) >= 13) {
+		/*
+		 * FIXME: Subtract Window2 delay from below value.
+		 *
+		 * Window2 specifies time required to program DSB (Window2) in
+		 * number of scan lines. Assuming 0 for no DSB.
+		 */
 		crtc_state->vrr.guardband =
-			crtc_state->vrr.vmin - adjusted_mode->crtc_vdisplay -
-			i915->window2_delay;
-	else
+			crtc_state->vrr.vmin - adjusted_mode->crtc_vdisplay;
+	} else {
 		/*
 		 * FIXME: s/4/framestart_delay/ to get consistent
 		 * earliest/latest points for register latching regardless
@@ -159,6 +164,7 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
 		 */
 		crtc_state->vrr.pipeline_full =
 			min(255, crtc_state->vrr.vmin - adjusted_mode->crtc_vdisplay - 4 - 1);
+	}
 
 	crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
 }
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 9e7379fb3e40..e418e4775da4 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -430,9 +430,6 @@ struct drm_i915_private {
 		struct file *mmap_singleton;
 	} gem;
 
-	/* Window2 specifies time required to program DSB (Window2) in number of scan lines */
-	u8 window2_delay;
-
 	u8 pch_ssc_use;
 
 	/* For i915gm/i945gm vblank irq workaround */
-- 
2.34.1

