Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DF80A5FA17D
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Oct 2022 17:59:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BEC6010E274;
	Mon, 10 Oct 2022 15:59:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E18EC10E274
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Oct 2022 15:59:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665417541; x=1696953541;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=AgNU6NrezZhcVm1dmPfh3H8M9FzkQfx24Izt6EhF9Cs=;
 b=mnTyAKyDFduQZsMIvNV9+x1bAuUJAdUsPERsi8WgXAV+wKncPRgkM75C
 fZ/aorkS03zE/gjTQmkA/Jo1ybRxlW4bIO6Gh4paUJOJMXUGdo5nqLk9X
 7almC9q8LombEpnyzYaXB633spO5P30QwTQ2SrSPmh/Tx9grbcg0Ivemw
 0w86w8Vg//BGdgaT6EJkvkknSS4FwqSxatx9sb+OldN6xxbmRceIhQ2LT
 FKrM0munx3Fty22ouYT3kcC0nVlYCZ9/iaFcbs5AbfH0UiTY22y0TzPeW
 xzK8uLzhC3WWKwRiDisOG8lq5Y44+Zc+G9+y/30MxSgknIPAHL1FG5azR w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10496"; a="305860248"
X-IronPort-AV: E=Sophos;i="5.95,173,1661842800"; d="scan'208";a="305860248"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2022 08:58:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10496"; a="768433512"
X-IronPort-AV: E=Sophos;i="5.95,173,1661842800"; d="scan'208";a="768433512"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by fmsmga001.fm.intel.com with ESMTP; 10 Oct 2022 08:58:43 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 10 Oct 2022 21:24:26 +0530
Message-Id: <20221010155427.15735-1-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/pps: Add get_pps_idx() hook as
 part of pps_get_register() cleanup
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

Simplified pps_get_register() which use get_pps_idx() hook to derive the
pps instance and get_pps_idx() will be initialized at pps_init().

v1: Initial version. Got r-b from Jani.

Cc: Jani Nikula <jani.nikula@intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Cc: Uma Shankar <uma.shankar@intel.com>
Signed-off-by: Animesh Manna <animesh.manna@intel.com>
---
 .../gpu/drm/i915/display/intel_display_types.h    |  1 +
 drivers/gpu/drm/i915/display/intel_pps.c          | 15 ++++++++++-----
 2 files changed, 11 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index e2b853e9e51d..44ab296c1f04 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1694,6 +1694,7 @@ struct intel_dp {
 	u8 (*preemph_max)(struct intel_dp *intel_dp);
 	u8 (*voltage_max)(struct intel_dp *intel_dp,
 			  const struct intel_crtc_state *crtc_state);
+	int (*get_pps_idx)(struct intel_dp *intel_dp);
 
 	/* Displayport compliance testing */
 	struct intel_dp_compliance compliance;
diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
index 21944f5bf3a8..b972fa6ec00d 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.c
+++ b/drivers/gpu/drm/i915/display/intel_pps.c
@@ -364,12 +364,10 @@ static void intel_pps_get_registers(struct intel_dp *intel_dp,
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
 	int pps_idx = 0;
 
-	memset(regs, 0, sizeof(*regs));
+	if (intel_dp->get_pps_idx)
+		pps_idx = intel_dp->get_pps_idx(intel_dp);
 
-	if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))
-		pps_idx = bxt_power_sequencer_idx(intel_dp);
-	else if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
-		pps_idx = vlv_power_sequencer_pipe(intel_dp);
+	memset(regs, 0, sizeof(*regs));
 
 	regs->pp_ctrl = PP_CONTROL(pps_idx);
 	regs->pp_stat = PP_STATUS(pps_idx);
@@ -1432,6 +1430,13 @@ void intel_pps_init(struct intel_dp *intel_dp)
 	intel_dp->pps.initializing = true;
 	INIT_DELAYED_WORK(&intel_dp->pps.panel_vdd_work, edp_panel_vdd_work);
 
+	if (IS_GEMINILAKE(i915) || IS_BROXTON(i915))
+		intel_dp->get_pps_idx = bxt_power_sequencer_idx;
+	else if (IS_VALLEYVIEW(i915) || IS_CHERRYVIEW(i915))
+		intel_dp->get_pps_idx = vlv_power_sequencer_pipe;
+	else
+		intel_dp->get_pps_idx = NULL;
+
 	pps_init_timestamps(intel_dp);
 
 	with_intel_pps_lock(intel_dp, wakeref) {
-- 
2.29.0

