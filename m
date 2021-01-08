Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DDEC62EF6BF
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Jan 2021 18:45:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 26B896E862;
	Fri,  8 Jan 2021 17:45:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 67FF26E862
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Jan 2021 17:45:55 +0000 (UTC)
IronPort-SDR: vreMiaqnApQOTcHMll1oszkj/pdG1sStotD1bcCiefq25zowPuIq1Df91/wiS9flogFKg/PxtB
 MsEgXZwVkbVQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9858"; a="156813671"
X-IronPort-AV: E=Sophos;i="5.79,332,1602572400"; d="scan'208";a="156813671"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2021 09:45:53 -0800
IronPort-SDR: eIvOALtoGOe+OV2bIKNwmRAxnsV2sv9C1TT2dHvSZQ79zF/Ha5lHeTTcPSIWyFaNHXPlSpRBzo
 UwDnAoNzf4gA==
X-IronPort-AV: E=Sophos;i="5.79,332,1602572400"; d="scan'208";a="350939275"
Received: from rgwhiteh-mobl.ger.corp.intel.com (HELO localhost)
 ([10.213.205.160])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2021 09:45:47 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  8 Jan 2021 19:44:22 +0200
Message-Id: <031b26bf4a680cf3a436d368108380064b8b541f.1610127741.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1610127741.git.jani.nikula@intel.com>
References: <cover.1610127741.git.jani.nikula@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 14/17] drm/i915/pps: refactor init
 abstractions
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Once you realize there is no need to hold the pps mutex when calling
pps_init_timestamps() in intel_pps_init(), we can reuse
intel_pps_encoder_reset() which has the same code.

Since intel_dp_pps_init() is only called from one place now, move it
inline to remove one "init" function altogether.

Finally, remove some initialization from
vlv_initial_power_sequencer_setup() and do it in the caller to highlight
the similarity, not the difference, in the platforms.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_pps.c | 33 +++++++-----------------
 1 file changed, 10 insertions(+), 23 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
index 58eff6289d12..b4d026ca3313 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.c
+++ b/drivers/gpu/drm/i915/display/intel_pps.c
@@ -305,9 +305,6 @@ vlv_initial_power_sequencer_setup(struct intel_dp *intel_dp)
 		    dig_port->base.base.base.id,
 		    dig_port->base.base.name,
 		    pipe_name(intel_dp->pps_pipe));
-
-	pps_init_delays(intel_dp);
-	pps_init_registers(intel_dp, false);
 }
 
 void intel_pps_reset_all(struct drm_i915_private *dev_priv)
@@ -1342,20 +1339,9 @@ static void pps_init_registers(struct intel_dp *intel_dp, bool force_disable_vdd
 		    (intel_de_read(dev_priv, regs.pp_ctrl) & BXT_POWER_CYCLE_DELAY_MASK));
 }
 
-static void intel_dp_pps_init(struct intel_dp *intel_dp)
-{
-	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
-
-	if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) {
-		vlv_initial_power_sequencer_setup(intel_dp);
-	} else {
-		pps_init_delays(intel_dp);
-		pps_init_registers(intel_dp, false);
-	}
-}
-
 void intel_pps_encoder_reset(struct intel_dp *intel_dp)
 {
+	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
 	intel_wakeref_t wakeref;
 
 	if (!intel_dp_is_edp(intel_dp))
@@ -1366,20 +1352,21 @@ void intel_pps_encoder_reset(struct intel_dp *intel_dp)
 		 * Reinit the power sequencer, in case BIOS did something nasty
 		 * with it.
 		 */
-		intel_dp_pps_init(intel_dp);
+		if (IS_VALLEYVIEW(i915) || IS_CHERRYVIEW(i915))
+			vlv_initial_power_sequencer_setup(intel_dp);
+
+		pps_init_delays(intel_dp);
+		pps_init_registers(intel_dp, false);
+
 		intel_pps_vdd_sanitize(intel_dp);
 	}
 }
 
 void intel_pps_init(struct intel_dp *intel_dp)
 {
-	intel_wakeref_t wakeref;
-
 	INIT_DELAYED_WORK(&intel_dp->panel_vdd_work, edp_panel_vdd_work);
 
-	with_intel_pps_lock(intel_dp, wakeref) {
-		pps_init_timestamps(intel_dp);
-		intel_dp_pps_init(intel_dp);
-		intel_pps_vdd_sanitize(intel_dp);
-	}
+	pps_init_timestamps(intel_dp);
+
+	intel_pps_encoder_reset(intel_dp);
 }
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
