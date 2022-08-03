Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 964095886C4
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Aug 2022 07:33:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8DE6C10FD37;
	Wed,  3 Aug 2022 05:32:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 66CC7112158
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Aug 2022 05:32:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659504764; x=1691040764;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=CHyipdAhVSjd8GeAWsLzB+trXww9qOuujf6Qxq5GwQU=;
 b=lvpaaGyp+v8M8WdZR3MS5uDws0I2HvPDmSxjpSsZqtqSKGv1PFA8CZkA
 rflgH3lno5WKTkQlu6SoRYhD9sB0fZMMSysYXH8wkjZB8/aOF8PyjlMtW
 OHl+ZMxElukgemJpSe756D34QX3oUj8Ky3bFF4kgkAM5EXQJk4VcQbCq1
 jIPfJO+EANtAhwzpQMKmfcf5d9xxHADaBZlGq2vcM7eSiRvRWGLmWtU8f
 DuSwX3pd4Ya70RInfiOcqD9Mz8eITT9xbIXE6vwrg8hQ0tiTf4ZwL2g46
 l5foro8wcFMF8EvuXcvVYZO1C7L+faukFQJf+06M+Zs9yYptWMiwmwl4w A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10427"; a="351299727"
X-IronPort-AV: E=Sophos;i="5.93,213,1654585200"; d="scan'208";a="351299727"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Aug 2022 22:32:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,213,1654585200"; d="scan'208";a="670724414"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by fmsmga004.fm.intel.com with ESMTP; 02 Aug 2022 22:32:41 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  3 Aug 2022 10:59:44 +0530
Message-Id: <20220803052944.28069-1-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/pps: added get_pps_idx() hook as part
 of pps_get_register() cleanup
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

To support dual LFP two instances of pps added from display gen12 onwards.
Few older platform like VLV also has dual pps support but handling is
different. So added separate hook get_pps_idx() to formulate which pps
instance to used for a soecific LFP on a specific platform.

Simplified pps_get_register() which use get_pps_idx() hook to derive the
pps instance and get_pps_idx() will be initialized at pps_init().

Signed-off-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c     |  5 ++++
 drivers/gpu/drm/i915/display/intel_bios.h     |  1 +
 .../drm/i915/display/intel_display_types.h    |  2 ++
 drivers/gpu/drm/i915/display/intel_pps.c      | 25 ++++++++++++++-----
 4 files changed, 27 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 51dde5bfd956..42315615a728 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -611,6 +611,11 @@ static int opregion_get_panel_type(struct drm_i915_private *i915,
 	return intel_opregion_get_panel_type(i915);
 }
 
+bool intel_bios_is_lfp2(struct intel_encoder *encoder)
+{
+	return encoder->devdata && encoder->devdata->child.handle == DEVICE_HANDLE_LFP2;
+}
+
 static int vbt_get_panel_type(struct drm_i915_private *i915,
 			      const struct intel_bios_encoder_data *devdata,
 			      const struct edid *edid)
diff --git a/drivers/gpu/drm/i915/display/intel_bios.h b/drivers/gpu/drm/i915/display/intel_bios.h
index e47582b0de0a..aea72a87ea2c 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.h
+++ b/drivers/gpu/drm/i915/display/intel_bios.h
@@ -251,6 +251,7 @@ bool intel_bios_is_lspcon_present(const struct drm_i915_private *i915,
 				  enum port port);
 bool intel_bios_is_lane_reversal_needed(const struct drm_i915_private *i915,
 					enum port port);
+bool intel_bios_is_lfp2(struct intel_encoder *encoder);
 enum aux_ch intel_bios_port_aux_ch(struct drm_i915_private *dev_priv, enum port port);
 bool intel_bios_get_dsc_params(struct intel_encoder *encoder,
 			       struct intel_crtc_state *crtc_state,
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 0da9b208d56e..95f71a572b07 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1723,6 +1723,8 @@ struct intel_dp {
 
 	/* When we last wrote the OUI for eDP */
 	unsigned long last_oui_write;
+
+	int (*get_pps_idx)(struct intel_dp *intel_dp);
 };
 
 enum lspcon_vendor {
diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
index 1b21a341962f..c9cdb302d318 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.c
+++ b/drivers/gpu/drm/i915/display/intel_pps.c
@@ -231,6 +231,17 @@ bxt_power_sequencer_idx(struct intel_dp *intel_dp)
 	return backlight_controller;
 }
 
+static int
+gen12_power_sequencer_idx(struct intel_dp *intel_dp)
+{
+	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
+
+	if (intel_bios_is_lfp2(encoder))
+		return 1;
+
+	return 0;
+}
+
 typedef bool (*vlv_pipe_check)(struct drm_i915_private *dev_priv,
 			       enum pipe pipe);
 
@@ -361,15 +372,10 @@ static void intel_pps_get_registers(struct intel_dp *intel_dp,
 				    struct pps_registers *regs)
 {
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
-	int pps_idx = 0;
+	int pps_idx = intel_dp->get_pps_idx(intel_dp);
 
 	memset(regs, 0, sizeof(*regs));
 
-	if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))
-		pps_idx = bxt_power_sequencer_idx(intel_dp);
-	else if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
-		pps_idx = vlv_power_sequencer_pipe(intel_dp);
-
 	regs->pp_ctrl = PP_CONTROL(pps_idx);
 	regs->pp_stat = PP_STATUS(pps_idx);
 	regs->pp_on = PP_ON_DELAYS(pps_idx);
@@ -1431,6 +1437,13 @@ void intel_pps_init(struct intel_dp *intel_dp)
 	intel_dp->pps.initializing = true;
 	INIT_DELAYED_WORK(&intel_dp->pps.panel_vdd_work, edp_panel_vdd_work);
 
+	if (IS_GEMINILAKE(i915) || IS_BROXTON(i915))
+		intel_dp->get_pps_idx = bxt_power_sequencer_idx;
+	else if (IS_VALLEYVIEW(i915) || IS_CHERRYVIEW(i915))
+		intel_dp->get_pps_idx = vlv_power_sequencer_pipe;
+	else if (DISPLAY_VER(i915) >= 12)
+		intel_dp->get_pps_idx = gen12_power_sequencer_idx;
+
 	pps_init_timestamps(intel_dp);
 
 	with_intel_pps_lock(intel_dp, wakeref) {
-- 
2.29.0

