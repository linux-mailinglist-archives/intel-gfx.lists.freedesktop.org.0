Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0980F638F22
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Nov 2022 18:32:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4983910E780;
	Fri, 25 Nov 2022 17:32:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5948F10E776
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Nov 2022 17:32:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669397538; x=1700933538;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=VF5ITER6zv320K6MP1xIXoZxqdAwaNDPdWn78BuzbrU=;
 b=GkJ7FJdjE7GrcoZbGuzjMCSGyemzLQN5vwoCJtdQ9af/Dowdo6lcew+D
 aXCZl6g6KuzCAGb9XJT+3mn2LO/1+VTYRfgjsNN/ry/c80iI/diiwOugw
 U7VzRuMAljiGPtIrwQfsBfSH3raQ7pF3VrAFwUeRKImdDIZvwOgLnV/Xe
 iPz7089KIFpBHANShbxwTkcJmEpSk4h9R9dg6LnO9KqEvUf99DNHjXgKQ
 EyYkg0tQE4WWxVGbJ6lmAxYNjpH4JL6m7mUJJhJ3Lg+yncRGMsLzzDuLz
 /P9h5ofCYymfyTZ4lfCAPUiSP3RosAa0rlQsuUU9hhWCrzNh00JMHekvM w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10542"; a="315674651"
X-IronPort-AV: E=Sophos;i="5.96,194,1665471600"; d="scan'208";a="315674651"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2022 09:32:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10542"; a="706124341"
X-IronPort-AV: E=Sophos;i="5.96,194,1665471600"; d="scan'208";a="706124341"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga008.fm.intel.com with SMTP; 25 Nov 2022 09:32:15 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 25 Nov 2022 19:32:15 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 25 Nov 2022 19:31:53 +0200
Message-Id: <20221125173156.31689-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221125173156.31689-1-ville.syrjala@linux.intel.com>
References: <20221125173156.31689-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 6/9] drm/i915: Reject unusablee power
 sequencers
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

On ICP-ADP the pins used by the second PPS can be alternatively
muxed to some other function. In that case the second power
sequencer is unusable.

Unfortunately (on my ADL Thinkpad T14 gen3 at least) the
BIOS still likes to enable the VDD on the second PPS (due
to the VBT declaring the second bogus eDP panel) even when
not correctly muxed, so we need to deal with it somehow.
For now let's just initialize the PPS as normal, and then
use the normal eDP probe failure VDD off path to turn it off
(and release the wakeref the PPS init grabbed). The
alternative of just declaring that the platform has a single
PPS doesn't really work since it would cause the second eDP
probe to also try to use the first PPS and thus clobber the
state for the first (real) eDP panel.

Cc: Animesh Manna <animesh.manna@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c  | 12 ++++++++-
 drivers/gpu/drm/i915/display/intel_pps.c | 34 +++++++++++++++++-------
 drivers/gpu/drm/i915/display/intel_pps.h |  2 +-
 drivers/gpu/drm/i915/i915_reg.h          |  1 +
 4 files changed, 38 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index c1bebe77ed8e..9deaa5e3632a 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5283,7 +5283,17 @@ static bool intel_edp_init_connector(struct intel_dp *intel_dp,
 	intel_bios_init_panel_early(dev_priv, &intel_connector->panel,
 				    encoder->devdata);
 
-	intel_pps_init(intel_dp);
+	if (!intel_pps_init(intel_dp)) {
+		drm_info(&dev_priv->drm,
+			 "[ENCODER:%d:%s] unusable PPS, disabling eDP\n",
+			 encoder->base.base.id, encoder->base.name);
+		/*
+		 * The BIOS may have still enabled VDD on the PPS even
+		 * though it's unusable. Make sure we turn it back off
+		 * and to release the power domain references/etc.
+		 */
+		goto out_vdd_off;
+	}
 
 	/* Cache DPCD and EDID for edp. */
 	has_dpcd = intel_edp_init_dpcd(intel_dp);
diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
index 77b0a4f27abc..d18c1c58dfcf 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.c
+++ b/drivers/gpu/drm/i915/display/intel_pps.c
@@ -327,6 +327,18 @@ static int intel_num_pps(struct drm_i915_private *i915)
 	return 1;
 }
 
+static bool intel_pps_is_valid(struct intel_dp *intel_dp)
+{
+	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+
+	if (intel_dp->pps.pps_idx == 1 &&
+	    INTEL_PCH_TYPE(i915) >= PCH_ICP &&
+	    INTEL_PCH_TYPE(i915) < PCH_MTP)
+		return intel_de_read(i915, SOUTH_CHICKEN1) & ICP_SECOND_PPS_IO_SELECT;
+
+	return true;
+}
+
 static int
 bxt_initial_pps_idx(struct drm_i915_private *i915, pps_check check)
 {
@@ -340,7 +352,7 @@ bxt_initial_pps_idx(struct drm_i915_private *i915, pps_check check)
 	return -1;
 }
 
-static void
+static bool
 pps_initial_setup(struct intel_dp *intel_dp)
 {
 	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
@@ -351,7 +363,7 @@ pps_initial_setup(struct intel_dp *intel_dp)
 
 	if (IS_VALLEYVIEW(i915) || IS_CHERRYVIEW(i915)) {
 		vlv_initial_power_sequencer_setup(intel_dp);
-		return;
+		return true;
 	}
 
 	/* first ask the VBT */
@@ -377,13 +389,14 @@ pps_initial_setup(struct intel_dp *intel_dp)
 			    "[ENCODER:%d:%s] no initial power sequencer, assuming %d\n",
 			    encoder->base.base.id, encoder->base.name,
 			    intel_dp->pps.pps_idx);
-		return;
+	} else {
+		drm_dbg_kms(&i915->drm,
+			    "[ENCODER:%d:%s] initial power sequencer: %d\n",
+			    encoder->base.base.id, encoder->base.name,
+			    intel_dp->pps.pps_idx);
 	}
 
-	drm_dbg_kms(&i915->drm,
-		    "[ENCODER:%d:%s] initial power sequencer: %d\n",
-		    encoder->base.base.id, encoder->base.name,
-		    intel_dp->pps.pps_idx);
+	return intel_pps_is_valid(intel_dp);
 }
 
 void intel_pps_reset_all(struct drm_i915_private *dev_priv)
@@ -1504,9 +1517,10 @@ void intel_pps_encoder_reset(struct intel_dp *intel_dp)
 	}
 }
 
-void intel_pps_init(struct intel_dp *intel_dp)
+bool intel_pps_init(struct intel_dp *intel_dp)
 {
 	intel_wakeref_t wakeref;
+	bool ret;
 
 	intel_dp->pps.initializing = true;
 	INIT_DELAYED_WORK(&intel_dp->pps.panel_vdd_work, edp_panel_vdd_work);
@@ -1514,12 +1528,14 @@ void intel_pps_init(struct intel_dp *intel_dp)
 	pps_init_timestamps(intel_dp);
 
 	with_intel_pps_lock(intel_dp, wakeref) {
-		pps_initial_setup(intel_dp);
+		ret = pps_initial_setup(intel_dp);
 
 		pps_init_delays(intel_dp);
 		pps_init_registers(intel_dp, false);
 		pps_vdd_init(intel_dp);
 	}
+
+	return ret;
 }
 
 static void pps_init_late(struct intel_dp *intel_dp)
diff --git a/drivers/gpu/drm/i915/display/intel_pps.h b/drivers/gpu/drm/i915/display/intel_pps.h
index a3a56f903f26..a2c2467e3c22 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.h
+++ b/drivers/gpu/drm/i915/display/intel_pps.h
@@ -40,7 +40,7 @@ void intel_pps_vdd_off_sync(struct intel_dp *intel_dp);
 bool intel_pps_have_panel_power_or_vdd(struct intel_dp *intel_dp);
 void intel_pps_wait_power_cycle(struct intel_dp *intel_dp);
 
-void intel_pps_init(struct intel_dp *intel_dp);
+bool intel_pps_init(struct intel_dp *intel_dp);
 void intel_pps_init_late(struct intel_dp *intel_dp);
 void intel_pps_encoder_reset(struct intel_dp *intel_dp);
 void intel_pps_reset_all(struct drm_i915_private *i915);
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 0b90fe6a28f7..ebb45935750c 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -6242,6 +6242,7 @@
 #define  CHASSIS_CLK_REQ_DURATION_MASK	(0xf << 8)
 #define  CHASSIS_CLK_REQ_DURATION(x)	((x) << 8)
 #define  SBCLK_RUN_REFCLK_DIS		(1 << 7)
+#define  ICP_SECOND_PPS_IO_SELECT	REG_BIT(2)
 #define  SPT_PWM_GRANULARITY		(1 << 0)
 #define SOUTH_CHICKEN2		_MMIO(0xc2004)
 #define  FDI_MPHY_IOSFSB_RESET_STATUS	(1 << 13)
-- 
2.37.4

