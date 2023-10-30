Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A6D2E7DBD1C
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Oct 2023 16:58:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5587110E316;
	Mon, 30 Oct 2023 15:58:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5796E10E312
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Oct 2023 15:58:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698681513; x=1730217513;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=JXEi+AfhPWmlgAHGMxSb7z23VaPnEldk5k20pcptmDs=;
 b=JgMp994GSRjKa+gAZI8uyd38GjORDKWh+FkRi3RUR2c3pvKl+EqPr7so
 THwGBqfvkpQtJ+PepZiohlVX7arMawru9UTsLhaSZ516NcQP6iRjeKAjf
 eC8jNmRb3gYdtA7b5ULWml4kwA1fWouRzBHcTHymYynX0NGpPkR4cOCsb
 NmCzEKh+6K2QTW+7T6bwB+27GLXARTcoKg2IUKg/bEmG9W9W+d5M588fv
 MJXaY0fI3Ap3ZCgKn8eJvOwI9/xHafr3M/iNsYKhrt3RKfIGTJdr962m2
 tnAtcjqiPkzKIu3glrEFFExFlksko+SsYoqey1wfDAcaZRnmlRbHVexZo g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10879"; a="974444"
X-IronPort-AV: E=Sophos;i="6.03,263,1694761200"; 
   d="scan'208";a="974444"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2023 08:58:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10879"; a="789493975"
X-IronPort-AV: E=Sophos;i="6.03,263,1694761200"; d="scan'208";a="789493975"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2023 08:58:31 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 30 Oct 2023 17:58:23 +0200
Message-Id: <20231030155843.2251023-11-imre.deak@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231030155843.2251023-1-imre.deak@intel.com>
References: <20231030155843.2251023-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 10/30] drm/i915/dp_mst: Enable FEC early once
 it's known DSC is needed
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

Enable FEC in crtc_state, as soon as it's known it will be needed by
DSC. This fixes the calculation of BW allocation overhead, in case DSC
is enabled by falling back to it during the encoder compute config
phase (vs. enabling FEC due to DSC being enabled on other streams).

v2:
- Enable FEC only in intel_dp_mst_find_vcpi_slots_for_bpp(), since
  only by that will crtc_state->port_clock be set, which in turn is
  needed by intel_dp_is_uhbr().

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com> (v1)
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c     | 6 +++---
 drivers/gpu/drm/i915/display/intel_dp.h     | 5 +++++
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 7 +++++++
 3 files changed, 15 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index f43536d49c49d..b747fda960e49 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1369,9 +1369,9 @@ static bool intel_dp_source_supports_fec(struct intel_dp *intel_dp,
 	return false;
 }
 
-static bool intel_dp_supports_fec(struct intel_dp *intel_dp,
-				  const struct intel_connector *connector,
-				  const struct intel_crtc_state *pipe_config)
+bool intel_dp_supports_fec(struct intel_dp *intel_dp,
+			   const struct intel_connector *connector,
+			   const struct intel_crtc_state *pipe_config)
 {
 	return intel_dp_source_supports_fec(intel_dp, pipe_config) &&
 		drm_dp_sink_supports_fec(connector->dp.fec_capability);
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index 484aea215a251..0258580a6aadc 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -137,6 +137,11 @@ static inline unsigned int intel_dp_unused_lane_mask(int lane_count)
 }
 
 u32 intel_dp_mode_to_fec_clock(u32 mode_clock);
+
+bool intel_dp_supports_fec(struct intel_dp *intel_dp,
+			   const struct intel_connector *connector,
+			   const struct intel_crtc_state *pipe_config);
+
 u32 intel_dp_dsc_nearest_valid_bpp(struct drm_i915_private *i915, u32 bpp, u32 pipe_bpp);
 
 void intel_ddi_update_pipe(struct intel_atomic_state *state,
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 5bf45a2a85b0e..8177e19e53ac8 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -94,6 +94,13 @@ static int intel_dp_mst_find_vcpi_slots_for_bpp(struct intel_encoder *encoder,
 	crtc_state->lane_count = limits->max_lane_count;
 	crtc_state->port_clock = limits->max_rate;
 
+	if (dsc) {
+		if (!intel_dp_supports_fec(intel_dp, connector, crtc_state))
+			return -EINVAL;
+
+		crtc_state->fec_enable = !intel_dp_is_uhbr(crtc_state);
+	}
+
 	mst_state->pbn_div = drm_dp_get_vc_payload_bw(&intel_dp->mst_mgr,
 						      crtc_state->port_clock,
 						      crtc_state->lane_count);
-- 
2.39.2

