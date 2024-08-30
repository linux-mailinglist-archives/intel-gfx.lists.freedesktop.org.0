Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DFC9965E66
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Aug 2024 12:16:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EFC7410EA4D;
	Fri, 30 Aug 2024 10:16:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ecHwK5Ur";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C780810EA4C;
 Fri, 30 Aug 2024 10:16:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725012992; x=1756548992;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=r1o39MS0+KFgjbqPYF3sbaP5UnapmzxIDKjHTG92chE=;
 b=ecHwK5UrxFxJfZeoKnBHeg/1uKdx8K21Hjzwzdmtp0JJcrG+dzfTKOrG
 bWZVZ/80UPRWvlqB3pjoROiXSLmo5N1c0OAPR9HvqBDExt8Tetp34Nexl
 bpmS9i9jk18t3bSy8IQ246P2yEoUtKf42s74dS7QRW69imkSmk4VLjag8
 /nuL6hNjEtiOEWDfWNsurvBttMFmXI3d1ABZDHRONjSMeoxQR3+J3pAxb
 iPiakZB3ijlijEj94ecTDf8Wy4OrBhSf092/spqcwhrjFaOSA3R5bjQJp
 sKn+q2fDGS8VoCGSZKAI/PkJCeqoUm6YF8dvnHInv5f+XnHRT+UfulKrJ w==;
X-CSE-ConnectionGUID: aNI/410aQACB/2H7J/ANMA==
X-CSE-MsgGUID: 3DWtxqL9RtiHprb0S6+YLA==
X-IronPort-AV: E=McAfee;i="6700,10204,11179"; a="13295705"
X-IronPort-AV: E=Sophos;i="6.10,188,1719903600"; d="scan'208";a="13295705"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Aug 2024 03:16:32 -0700
X-CSE-ConnectionGUID: sgBZBh5PTuOWLRmyu/OALw==
X-CSE-MsgGUID: RZR/YeOHTZeBQhl3efZ9iA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,188,1719903600"; d="scan'208";a="68516185"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.88])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Aug 2024 03:16:31 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 07/11] drm/i915/pps: pass intel_dp to pps_name()
Date: Fri, 30 Aug 2024 13:15:44 +0300
Message-Id: <f2a7fec4a2ff1f09cb73e6734604fae99ab6b11a.1725012870.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1725012870.git.jani.nikula@intel.com>
References: <cover.1725012870.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

Currently all of intel_pps.c passes struct intel_dp around. Do the same
with pps_name() instead of passing both struct drm_i915_private and
struct intel_pps.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_pps.c | 61 +++++++++++++-----------
 1 file changed, 32 insertions(+), 29 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
index 68141af4da54..1e87ce95c85d 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.c
+++ b/drivers/gpu/drm/i915/display/intel_pps.c
@@ -24,9 +24,12 @@ static void vlv_steal_power_sequencer(struct drm_i915_private *dev_priv,
 static void pps_init_delays(struct intel_dp *intel_dp);
 static void pps_init_registers(struct intel_dp *intel_dp, bool force_disable_vdd);
 
-static const char *pps_name(struct drm_i915_private *i915,
-			    struct intel_pps *pps)
+static const char *pps_name(struct intel_dp *intel_dp)
 {
+	struct intel_display *display = to_intel_display(intel_dp);
+	struct drm_i915_private *i915 = to_i915(display->drm);
+	struct intel_pps *pps = &intel_dp->pps;
+
 	if (IS_VALLEYVIEW(i915) || IS_CHERRYVIEW(i915)) {
 		switch (pps->pps_pipe) {
 		case INVALID_PIPE:
@@ -97,13 +100,13 @@ vlv_power_sequencer_kick(struct intel_dp *intel_dp)
 	if (drm_WARN(&dev_priv->drm,
 		     intel_de_read(dev_priv, intel_dp->output_reg) & DP_PORT_EN,
 		     "skipping %s kick due to [ENCODER:%d:%s] being active\n",
-		     pps_name(dev_priv, &intel_dp->pps),
+		     pps_name(intel_dp),
 		     dig_port->base.base.base.id, dig_port->base.base.name))
 		return;
 
 	drm_dbg_kms(&dev_priv->drm,
 		    "kicking %s for [ENCODER:%d:%s]\n",
-		    pps_name(dev_priv, &intel_dp->pps),
+		    pps_name(intel_dp),
 		    dig_port->base.base.base.id, dig_port->base.base.name);
 
 	/* Preserve the BIOS-computed detected bit. This is
@@ -227,7 +230,7 @@ vlv_power_sequencer_pipe(struct intel_dp *intel_dp)
 
 	drm_dbg_kms(&dev_priv->drm,
 		    "picked %s for [ENCODER:%d:%s]\n",
-		    pps_name(dev_priv, &intel_dp->pps),
+		    pps_name(intel_dp),
 		    dig_port->base.base.base.id, dig_port->base.base.name);
 
 	/* init power sequencer on this pipe and port */
@@ -340,7 +343,7 @@ vlv_initial_power_sequencer_setup(struct intel_dp *intel_dp)
 	drm_dbg_kms(&dev_priv->drm,
 		    "[ENCODER:%d:%s] initial power sequencer: %s\n",
 		    dig_port->base.base.base.id, dig_port->base.base.name,
-		    pps_name(dev_priv, &intel_dp->pps));
+		    pps_name(intel_dp));
 }
 
 static int intel_num_pps(struct drm_i915_private *i915)
@@ -424,12 +427,12 @@ pps_initial_setup(struct intel_dp *intel_dp)
 		drm_dbg_kms(&i915->drm,
 			    "[ENCODER:%d:%s] no initial power sequencer, assuming %s\n",
 			    encoder->base.base.id, encoder->base.name,
-			    pps_name(i915, &intel_dp->pps));
+			    pps_name(intel_dp));
 	} else {
 		drm_dbg_kms(&i915->drm,
 			    "[ENCODER:%d:%s] initial power sequencer: %s\n",
 			    encoder->base.base.id, encoder->base.name,
-			    pps_name(i915, &intel_dp->pps));
+			    pps_name(intel_dp));
 	}
 
 	return intel_pps_is_valid(intel_dp);
@@ -565,11 +568,11 @@ void intel_pps_check_power_unlocked(struct intel_dp *intel_dp)
 		drm_WARN(&dev_priv->drm, 1,
 			 "[ENCODER:%d:%s] %s powered off while attempting AUX CH communication.\n",
 			 dig_port->base.base.base.id, dig_port->base.base.name,
-			 pps_name(dev_priv, &intel_dp->pps));
+			 pps_name(intel_dp));
 		drm_dbg_kms(&dev_priv->drm,
 			    "[ENCODER:%d:%s] %s PP_STATUS: 0x%08x PP_CONTROL: 0x%08x\n",
 			    dig_port->base.base.base.id, dig_port->base.base.name,
-			    pps_name(dev_priv, &intel_dp->pps),
+			    pps_name(intel_dp),
 			    intel_de_read(dev_priv, _pp_stat_reg(intel_dp)),
 			    intel_de_read(dev_priv, _pp_ctrl_reg(intel_dp)));
 	}
@@ -603,7 +606,7 @@ static void wait_panel_status(struct intel_dp *intel_dp,
 	drm_dbg_kms(&dev_priv->drm,
 		    "[ENCODER:%d:%s] %s mask: 0x%08x value: 0x%08x PP_STATUS: 0x%08x PP_CONTROL: 0x%08x\n",
 		    dig_port->base.base.base.id, dig_port->base.base.name,
-		    pps_name(dev_priv, &intel_dp->pps),
+		    pps_name(intel_dp),
 		    mask, value,
 		    intel_de_read(dev_priv, pp_stat_reg),
 		    intel_de_read(dev_priv, pp_ctrl_reg));
@@ -612,7 +615,7 @@ static void wait_panel_status(struct intel_dp *intel_dp,
 		drm_err(&dev_priv->drm,
 			"[ENCODER:%d:%s] %s panel status timeout: PP_STATUS: 0x%08x PP_CONTROL: 0x%08x\n",
 			dig_port->base.base.base.id, dig_port->base.base.name,
-			pps_name(dev_priv, &intel_dp->pps),
+			pps_name(intel_dp),
 			intel_de_read(dev_priv, pp_stat_reg),
 			intel_de_read(dev_priv, pp_ctrl_reg));
 
@@ -626,7 +629,7 @@ static void wait_panel_on(struct intel_dp *intel_dp)
 
 	drm_dbg_kms(&i915->drm, "[ENCODER:%d:%s] %s wait for panel power on\n",
 		    dig_port->base.base.base.id, dig_port->base.base.name,
-		    pps_name(i915, &intel_dp->pps));
+		    pps_name(intel_dp));
 	wait_panel_status(intel_dp, IDLE_ON_MASK, IDLE_ON_VALUE);
 }
 
@@ -637,7 +640,7 @@ static void wait_panel_off(struct intel_dp *intel_dp)
 
 	drm_dbg_kms(&i915->drm, "[ENCODER:%d:%s] %s wait for panel power off time\n",
 		    dig_port->base.base.base.id, dig_port->base.base.name,
-		    pps_name(i915, &intel_dp->pps));
+		    pps_name(intel_dp));
 	wait_panel_status(intel_dp, IDLE_OFF_MASK, IDLE_OFF_VALUE);
 }
 
@@ -650,7 +653,7 @@ static void wait_panel_power_cycle(struct intel_dp *intel_dp)
 
 	drm_dbg_kms(&i915->drm, "[ENCODER:%d:%s] %s wait for panel power cycle\n",
 		    dig_port->base.base.base.id, dig_port->base.base.name,
-		    pps_name(i915, &intel_dp->pps));
+		    pps_name(intel_dp));
 
 	/* take the difference of current time and panel power off time
 	 * and then make panel wait for t11_t12 if needed. */
@@ -742,7 +745,7 @@ bool intel_pps_vdd_on_unlocked(struct intel_dp *intel_dp)
 
 	drm_dbg_kms(&dev_priv->drm, "[ENCODER:%d:%s] %s turning VDD on\n",
 		    dig_port->base.base.base.id, dig_port->base.base.name,
-		    pps_name(dev_priv, &intel_dp->pps));
+		    pps_name(intel_dp));
 
 	if (!edp_have_panel_power(intel_dp))
 		wait_panel_power_cycle(intel_dp);
@@ -754,7 +757,7 @@ bool intel_pps_vdd_on_unlocked(struct intel_dp *intel_dp)
 	intel_de_posting_read(dev_priv, pp_ctrl_reg);
 	drm_dbg_kms(&dev_priv->drm, "[ENCODER:%d:%s] %s PP_STATUS: 0x%08x PP_CONTROL: 0x%08x\n",
 		    dig_port->base.base.base.id, dig_port->base.base.name,
-		    pps_name(dev_priv, &intel_dp->pps),
+		    pps_name(intel_dp),
 		    intel_de_read(dev_priv, pp_stat_reg),
 		    intel_de_read(dev_priv, pp_ctrl_reg));
 	/*
@@ -764,7 +767,7 @@ bool intel_pps_vdd_on_unlocked(struct intel_dp *intel_dp)
 		drm_dbg_kms(&dev_priv->drm,
 			    "[ENCODER:%d:%s] %s panel power wasn't enabled\n",
 			    dig_port->base.base.base.id, dig_port->base.base.name,
-			    pps_name(dev_priv, &intel_dp->pps));
+			    pps_name(intel_dp));
 		msleep(intel_dp->pps.panel_power_up_delay);
 	}
 
@@ -792,7 +795,7 @@ void intel_pps_vdd_on(struct intel_dp *intel_dp)
 	I915_STATE_WARN(i915, !vdd, "[ENCODER:%d:%s] %s VDD already requested on\n",
 			dp_to_dig_port(intel_dp)->base.base.base.id,
 			dp_to_dig_port(intel_dp)->base.base.name,
-			pps_name(i915, &intel_dp->pps));
+			pps_name(intel_dp));
 }
 
 static void intel_pps_vdd_off_sync_unlocked(struct intel_dp *intel_dp)
@@ -812,7 +815,7 @@ static void intel_pps_vdd_off_sync_unlocked(struct intel_dp *intel_dp)
 
 	drm_dbg_kms(&dev_priv->drm, "[ENCODER:%d:%s] %s turning VDD off\n",
 		    dig_port->base.base.base.id, dig_port->base.base.name,
-		    pps_name(dev_priv, &intel_dp->pps));
+		    pps_name(intel_dp));
 
 	pp = ilk_get_pp_control(intel_dp);
 	pp &= ~EDP_FORCE_VDD;
@@ -826,7 +829,7 @@ static void intel_pps_vdd_off_sync_unlocked(struct intel_dp *intel_dp)
 	/* Make sure sequencer is idle before allowing subsequent activity */
 	drm_dbg_kms(&dev_priv->drm, "[ENCODER:%d:%s] %s PP_STATUS: 0x%08x PP_CONTROL: 0x%08x\n",
 		    dig_port->base.base.base.id, dig_port->base.base.name,
-		    pps_name(dev_priv, &intel_dp->pps),
+		    pps_name(intel_dp),
 		    intel_de_read(dev_priv, pp_stat_reg),
 		    intel_de_read(dev_priv, pp_ctrl_reg));
 
@@ -907,7 +910,7 @@ void intel_pps_vdd_off_unlocked(struct intel_dp *intel_dp, bool sync)
 			"[ENCODER:%d:%s] %s VDD not forced on",
 			dp_to_dig_port(intel_dp)->base.base.base.id,
 			dp_to_dig_port(intel_dp)->base.base.name,
-			pps_name(dev_priv, &intel_dp->pps));
+			pps_name(intel_dp));
 
 	intel_dp->pps.want_panel_vdd = false;
 
@@ -931,13 +934,13 @@ void intel_pps_on_unlocked(struct intel_dp *intel_dp)
 	drm_dbg_kms(&dev_priv->drm, "[ENCODER:%d:%s] %s turn panel power on\n",
 		    dp_to_dig_port(intel_dp)->base.base.base.id,
 		    dp_to_dig_port(intel_dp)->base.base.name,
-		    pps_name(dev_priv, &intel_dp->pps));
+		    pps_name(intel_dp));
 
 	if (drm_WARN(&dev_priv->drm, edp_have_panel_power(intel_dp),
 		     "[ENCODER:%d:%s] %s panel power already on\n",
 		     dp_to_dig_port(intel_dp)->base.base.base.id,
 		     dp_to_dig_port(intel_dp)->base.base.name,
-		     pps_name(dev_priv, &intel_dp->pps)))
+		     pps_name(intel_dp)))
 		return;
 
 	wait_panel_power_cycle(intel_dp);
@@ -1005,12 +1008,12 @@ void intel_pps_off_unlocked(struct intel_dp *intel_dp)
 
 	drm_dbg_kms(&dev_priv->drm, "[ENCODER:%d:%s] %s turn panel power off\n",
 		    dig_port->base.base.base.id, dig_port->base.base.name,
-		    pps_name(dev_priv, &intel_dp->pps));
+		    pps_name(intel_dp));
 
 	drm_WARN(&dev_priv->drm, !intel_dp->pps.want_panel_vdd,
 		 "[ENCODER:%d:%s] %s need VDD to turn off panel\n",
 		 dig_port->base.base.base.id, dig_port->base.base.name,
-		 pps_name(dev_priv, &intel_dp->pps));
+		 pps_name(intel_dp));
 
 	pp = ilk_get_pp_control(intel_dp);
 	/* We need to switch off panel power _and_ force vdd, for otherwise some
@@ -1146,7 +1149,7 @@ static void vlv_detach_power_sequencer(struct intel_dp *intel_dp)
 	 */
 	drm_dbg_kms(&dev_priv->drm,
 		    "detaching %s from [ENCODER:%d:%s]\n",
-		    pps_name(dev_priv, &intel_dp->pps),
+		    pps_name(intel_dp),
 		    dig_port->base.base.base.id, dig_port->base.base.name);
 	intel_de_write(dev_priv, pp_on_reg, 0);
 	intel_de_posting_read(dev_priv, pp_on_reg);
@@ -1219,7 +1222,7 @@ void vlv_pps_init(struct intel_encoder *encoder,
 
 	drm_dbg_kms(&dev_priv->drm,
 		    "initializing %s for [ENCODER:%d:%s]\n",
-		    pps_name(dev_priv, &intel_dp->pps),
+		    pps_name(intel_dp),
 		    encoder->base.base.id, encoder->base.name);
 
 	/* init power sequencer on this pipe and port */
@@ -1246,7 +1249,7 @@ static void pps_vdd_init(struct intel_dp *intel_dp)
 	drm_dbg_kms(&dev_priv->drm,
 		    "[ENCODER:%d:%s] %s VDD left on by BIOS, adjusting state tracking\n",
 		    dig_port->base.base.base.id, dig_port->base.base.name,
-		    pps_name(dev_priv, &intel_dp->pps));
+		    pps_name(intel_dp));
 	drm_WARN_ON(&dev_priv->drm, intel_dp->pps.vdd_wakeref);
 	intel_dp->pps.vdd_wakeref = intel_display_power_get(dev_priv,
 							    intel_aux_power_domain(dig_port));
-- 
2.39.2

