Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AF0A58FEFC
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Aug 2022 17:14:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 56AD3B3DDB;
	Thu, 11 Aug 2022 15:14:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 914B0B3D68
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Aug 2022 15:14:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660230880; x=1691766880;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=EHBLobqgzEMDT9zoFGxHiNgW8WAVR4G7dWtVf+2E/n8=;
 b=XQi8Xfp1ThVGA9wym06EFg7Uhb0+T0rHxzalus8YTaChbzKP8jeWnHd1
 VkgTQnp6nwbIvBF5thfnitAqUdA/F8Gaqs76620KJyKAU04nisVFV7j08
 gszk+C9Fk3c/B0wGRV9OPyb+fxw/jmVGArKRfa384FaMDIJvbquYSaqDc
 VBFPZbs5g2Q0EPYkJEmzqGii9TH0tXvL/S/sR6MIcmwqEF5796Y0y8qLI
 Zu3Evl2/uHAzKzN9pYpR+KXxXpPHvWia+/3UP9wRwm1bdJeVSBHu4ouV7
 ZAd0YSp2q6OdAQcHUcjlZTi4GtcbF/MpwQKvOnd1lJyA7d34xQeTIem3m A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10436"; a="377663673"
X-IronPort-AV: E=Sophos;i="5.93,230,1654585200"; d="scan'208";a="377663673"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2022 08:10:03 -0700
X-IronPort-AV: E=Sophos;i="5.93,230,1654585200"; d="scan'208";a="602197535"
Received: from gdogaru-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.48.102])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2022 08:10:01 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 11 Aug 2022 18:07:38 +0300
Message-Id: <4d3c448de1017ef6ebbba63569726a6b7a963d13.1660230121.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1660230121.git.jani.nikula@intel.com>
References: <cover.1660230121.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 27/39] drm/i915/vrr: drop window2_delay member
 from i915
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
Cc: jani.nikula@intel.com, lucas.demarchi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The window2_delay member has been functionally unused (always set to 0)
since it was added in commit bb265dbdf38d ("drm/i915/xelpd: Add VRR
guardband for VRR CTL"). Replace it with a FIXME comment.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c |  2 --
 drivers/gpu/drm/i915/display/intel_vrr.c     | 14 ++++++++++----
 drivers/gpu/drm/i915/i915_drv.h              |  3 ---
 3 files changed, 10 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index f98ca4debcbe..5bf062adf9ab 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -8685,8 +8685,6 @@ int intel_modeset_init_noirq(struct drm_i915_private *i915)
 	i915->flip_wq = alloc_workqueue("i915_flip", WQ_HIGHPRI |
 					WQ_UNBOUND, WQ_UNBOUND_MAX_ACTIVE);
 
-	i915->window2_delay = 0; /* No DSB so no window2 delay */
-
 	intel_mode_config_init(i915);
 
 	ret = intel_cdclk_init(i915);
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 04250a0fec3c..291374689ee7 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -142,11 +142,16 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
 	 * For XE_LPD+, we use guardband and pipeline override
 	 * is deprecated.
 	 */
-	if (DISPLAY_VER(i915) >= 13)
+	if (DISPLAY_VER(i915) >= 13) {
+		/*
+		 * FIXME: Substract Window2 delay from below value.
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
index 752eeccb94eb..6fa5ab1f173f 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -426,9 +426,6 @@ struct drm_i915_private {
 		struct file *mmap_singleton;
 	} gem;
 
-	/* Window2 specifies time required to program DSB (Window2) in number of scan lines */
-	u8 window2_delay;
-
 	u8 pch_ssc_use;
 
 	/* For i915gm/i945gm vblank irq workaround */
-- 
2.34.1

