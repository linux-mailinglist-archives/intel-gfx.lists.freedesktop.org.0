Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 08F2F623EA5
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Nov 2022 10:31:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2467410E6AA;
	Thu, 10 Nov 2022 09:31:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0EB3110E6AA
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Nov 2022 09:31:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668072705; x=1699608705;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=BqOVQipP8kf2oGFFIgXzgsNRNBPppjq50MCYR8CrtFI=;
 b=X3guBnR6MnMbkqT2PkYeyvJzxNPKnevstz1wVohYP745Ul85t4vtaS3g
 khrZqj2PAuHNQuJLZD7VYLPgs+RZHTC+hMyrqgwRVtO3YfOAVCnFA75fS
 it5W50pz+tNoSwy9ftjJPYKPdQ+rRifOesYFuXty8xUs7KeONyJHHeAPg
 7wsumhDOXMJFfqqanSNdvfZlHFxC5fHUjnzq37TbExVZ7r7celUvWUOcI
 cggSSgBaHNdAmUXMh4XcOdvjXBYfROzn8hwkBbEQhw8TRD1KHdJUIBDT1
 rOtdMGGUcsrY/cRWhuHaKBjnOrjoXw7nSu9QB+eeJOq+9Ik0vUGO9ThYf A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10526"; a="294612833"
X-IronPort-AV: E=Sophos;i="5.96,153,1665471600"; d="scan'208";a="294612833"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2022 01:31:28 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10526"; a="882296206"
X-IronPort-AV: E=Sophos;i="5.96,153,1665471600"; d="scan'208";a="882296206"
Received: from srr4-3-linux-118-swatish2.iind.intel.com ([10.223.34.130])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2022 01:31:26 -0800
From: Swati Sharma <swati2.sharma@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 10 Nov 2022 15:03:12 +0530
Message-Id: <20221110093312.13932-1-swati2.sharma@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/dsc: Refactor dsc gen checks
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Use HAS_DSC(__i915) wrapper containing runtime info of has_dsc
member. Platforms supporting dsc has this flag enabled; no need of
DISPLAY_VER() check.

Also, simplified intel_dsc_source_support() based on above changes.

Suggested-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Swati Sharma <swati2.sharma@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c   |  6 +++---
 drivers/gpu/drm/i915/display/intel_vdsc.c | 11 ++++-------
 drivers/gpu/drm/i915/i915_drv.h           |  1 +
 3 files changed, 8 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 7400d6b4c587..f6f9257bd202 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1012,7 +1012,7 @@ intel_dp_mode_valid(struct drm_connector *_connector,
 	 * Output bpp is stored in 6.4 format so right shift by 4 to get the
 	 * integer value since we support only integer values of bpp.
 	 */
-	if (DISPLAY_VER(dev_priv) >= 10 &&
+	if (HAS_DSC(dev_priv) &&
 	    drm_dp_sink_supports_dsc(intel_dp->dsc_dpcd)) {
 		/*
 		 * TBD pass the connector BPC,
@@ -2906,7 +2906,7 @@ intel_edp_init_dpcd(struct intel_dp *intel_dp)
 	intel_dp_set_max_sink_lane_count(intel_dp);
 
 	/* Read the eDP DSC DPCD registers */
-	if (DISPLAY_VER(dev_priv) >= 10)
+	if (HAS_DSC(dev_priv))
 		intel_dp_get_dsc_sink_cap(intel_dp);
 
 	/*
@@ -4691,7 +4691,7 @@ intel_dp_detect(struct drm_connector *connector,
 	}
 
 	/* Read DP Sink DSC Cap DPCD regs for DP v1.4 */
-	if (DISPLAY_VER(dev_priv) >= 11)
+	if (HAS_DSC(dev_priv))
 		intel_dp_get_dsc_sink_cap(intel_dp);
 
 	intel_dp_configure_mst(intel_dp);
diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
index 269f9792390d..7b4d300a4dd8 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc.c
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
@@ -344,16 +344,13 @@ bool intel_dsc_source_support(const struct intel_crtc_state *crtc_state)
 	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 
-	if (!RUNTIME_INFO(i915)->has_dsc)
+	if (!HAS_DSC(i915))
 		return false;
 
-	if (DISPLAY_VER(i915) >= 12)
-		return true;
-
-	if (DISPLAY_VER(i915) >= 11 && cpu_transcoder != TRANSCODER_A)
-		return true;
+	if (DISPLAY_VER(i915) == 11 && cpu_transcoder == TRANSCODER_A)
+		return false;
 
-	return false;
+	return true;
 }
 
 static bool is_pipe_dsc(struct intel_crtc *crtc, enum transcoder cpu_transcoder)
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 05b3300cc4ed..9d1fe5d6a104 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -484,6 +484,7 @@ static inline struct intel_gt *to_gt(struct drm_i915_private *i915)
 #define INTEL_REVID(dev_priv)	(to_pci_dev((dev_priv)->drm.dev)->revision)
 
 #define HAS_DSB(dev_priv)	(INTEL_INFO(dev_priv)->display.has_dsb)
+#define HAS_DSC(__i915)		(RUNTIME_INFO(__i915)->has_dsc)
 
 #define INTEL_DISPLAY_STEP(__i915) (RUNTIME_INFO(__i915)->step.display_step)
 #define INTEL_GRAPHICS_STEP(__i915) (RUNTIME_INFO(__i915)->step.graphics_step)
-- 
2.25.1

