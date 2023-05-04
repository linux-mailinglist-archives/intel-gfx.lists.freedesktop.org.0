Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 14D456F6878
	for <lists+intel-gfx@lfdr.de>; Thu,  4 May 2023 11:40:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3666910E411;
	Thu,  4 May 2023 09:40:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8113C10E411
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 May 2023 09:40:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683193216; x=1714729216;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=lleGUfpHFb+cs1lWcBU7gw1HaPbCREIZTp7bPtOlD7U=;
 b=AYOaq/pG84f5E1gRGG+5jVvJGtSawJa5u/EfeHtSgvkLP1vlzUFXbs5x
 jMOcF8IwWrtt1pPjZBKI2UnBfBh9x0GhnG/yF9uhyhrJAjGfQ9IPFx4Fb
 aQWZIWgH04CujQJbMYalkdwU1BjS8lu6WdyRXpiwcxIWWAcfLRcxVl3Eq
 epdxQdFeySvzDfLM7VPYgR5KWmmrHN37BIlZKMuRNed8Jjy9WXuKbH1vL
 YdWdUAljC8gvKiX2g6RwRitEAVkCtHCxuQSqxJH1Ex0isquXQIaF+i3MS
 OQ8adqQ+AvwV2FmK5YF5n5GBSMmHcg3x4ZwMydlNjNk5P57Ju5SIeRa3Y Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10699"; a="329242535"
X-IronPort-AV: E=Sophos;i="5.99,249,1677571200"; d="scan'208";a="329242535"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2023 02:40:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10699"; a="786459362"
X-IronPort-AV: E=Sophos;i="5.99,249,1677571200"; d="scan'208";a="786459362"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.65])
 by FMSMGA003.fm.intel.com with ESMTP; 04 May 2023 02:40:00 -0700
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  4 May 2023 12:39:59 +0300
Message-Id: <20230504093959.12085-1-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/display: Communicate display power
 demands to pcode
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

Display to communicate display pipe count/CDCLK/voltage configuration
to Pcode for more accurate power accounting for DG2.
Existing sequence is only sending the voltage value to the Pcode.
Adding new sequence with current cdclk associate with voltage value masking.
Adding pcode request when any pipe power well will disable or enable.

v2: - Make intel_cdclk_need_serialize static to make CI compiler happy.
v3: - Removed redundant return(Jani Nikula)
    - Changed intel_cdclk_power_usage_to_pcode_(pre|post)_notification to be
      static and also naming to intel_cdclk_pcode_(pre|post)_notify(Jani Nikula)
    - Changed u8 to be u16 for cdclk parameter in intel_pcode_notify function,
      as according to BSpec it requires 10 bits(Jani Nikula)
    - Replaced dev_priv's with i915's(Jani Nikula)
    - Simplified expression in intel_cdclk_need_serialize(Jani Nikula)
    - Removed redundant kernel-doc and indentation(Jani Nikula)
v4: - Fixed some checkpatch warnings
v5: - According to HW team comments that change should affect only DG2,
      fix correspodent platform check to account this.
v6: - Added one more missing IS_DG2 check(Vinod Govindapillai)

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Reviewed-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 158 +++++++++++++++++++--
 drivers/gpu/drm/i915/i915_reg.h            |  14 ++
 2 files changed, 160 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index f6223d8f13b8..a11092deaba6 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -1898,7 +1898,7 @@ static void bxt_set_cdclk(struct drm_i915_private *dev_priv,
 	 */
 	if (DISPLAY_VER(dev_priv) >= 14)
 		/* NOOP */;
-	else if (DISPLAY_VER(dev_priv) >= 11)
+	else if (DISPLAY_VER(dev_priv) >= 11 && !IS_DG2(dev_priv))
 		ret = skl_pcode_request(&dev_priv->uncore, SKL_PCODE_CDCLK_CONTROL,
 					SKL_CDCLK_PREPARE_FOR_CHANGE,
 					SKL_CDCLK_READY_FOR_CHANGE,
@@ -1932,10 +1932,10 @@ static void bxt_set_cdclk(struct drm_i915_private *dev_priv,
 		 * NOOP - No Pcode communication needed for
 		 * Display versions 14 and beyond
 		 */;
-	else if (DISPLAY_VER(dev_priv) >= 11)
+	else if (DISPLAY_VER(dev_priv) >= 11 && !IS_DG2(dev_priv))
 		ret = snb_pcode_write(&dev_priv->uncore, SKL_PCODE_CDCLK_CONTROL,
 				      cdclk_config->voltage_level);
-	else
+	if (DISPLAY_VER(dev_priv) < 11) {
 		/*
 		 * The timeout isn't specified, the 2ms used here is based on
 		 * experiment.
@@ -1946,7 +1946,7 @@ static void bxt_set_cdclk(struct drm_i915_private *dev_priv,
 					      HSW_PCODE_DE_WRITE_FREQ_REQ,
 					      cdclk_config->voltage_level,
 					      150, 2);
-
+	}
 	if (ret) {
 		drm_err(&dev_priv->drm,
 			"PCode CDCLK freq set failed, (err %d, freq %d)\n",
@@ -2242,6 +2242,38 @@ void intel_cdclk_dump_config(struct drm_i915_private *i915,
 		    cdclk_config->voltage_level);
 }
 
+static void intel_pcode_notify(struct drm_i915_private *i915,
+			       u8 voltage_level,
+			       u8 active_pipe_count,
+			       u16 cdclk,
+			       bool cdclk_update_valid,
+			       bool pipe_count_update_valid)
+{
+	int ret;
+	u32 update_mask = 0;
+
+	if (!IS_DG2(i915))
+		return;
+
+	update_mask = DISPLAY_TO_PCODE_UPDATE_MASK(cdclk, active_pipe_count, voltage_level);
+
+	if (cdclk_update_valid)
+		update_mask |= DISPLAY_TO_PCODE_CDCLK_VALID;
+
+	if (pipe_count_update_valid)
+		update_mask |= DISPLAY_TO_PCODE_PIPE_COUNT_VALID;
+
+	ret = skl_pcode_request(&i915->uncore, SKL_PCODE_CDCLK_CONTROL,
+				SKL_CDCLK_PREPARE_FOR_CHANGE |
+				update_mask,
+				SKL_CDCLK_READY_FOR_CHANGE,
+				SKL_CDCLK_READY_FOR_CHANGE, 3);
+	if (ret)
+		drm_err(&i915->drm,
+			"Failed to inform PCU about display config (err %d)\n",
+			ret);
+}
+
 /**
  * intel_set_cdclk - Push the CDCLK configuration to the hardware
  * @dev_priv: i915 device
@@ -2311,6 +2343,88 @@ static void intel_set_cdclk(struct drm_i915_private *dev_priv,
 	}
 }
 
+static void intel_cdclk_pcode_pre_notify(struct intel_atomic_state *state)
+{
+	struct drm_i915_private *i915 = to_i915(state->base.dev);
+	const struct intel_cdclk_state *old_cdclk_state =
+		intel_atomic_get_old_cdclk_state(state);
+	const struct intel_cdclk_state *new_cdclk_state =
+		intel_atomic_get_new_cdclk_state(state);
+	unsigned int cdclk = 0; u8 voltage_level, num_active_pipes = 0;
+	bool change_cdclk, update_pipe_count;
+
+	if (!intel_cdclk_changed(&old_cdclk_state->actual,
+				 &new_cdclk_state->actual) &&
+				 new_cdclk_state->active_pipes ==
+				 old_cdclk_state->active_pipes)
+		return;
+
+	/* According to "Sequence Before Frequency Change", voltage level set to 0x3 */
+	voltage_level = DISPLAY_TO_PCODE_VOLTAGE_MAX;
+
+	change_cdclk = new_cdclk_state->actual.cdclk != old_cdclk_state->actual.cdclk;
+	update_pipe_count = hweight8(new_cdclk_state->active_pipes) >
+			    hweight8(old_cdclk_state->active_pipes);
+
+	/*
+	 * According to "Sequence Before Frequency Change",
+	 * if CDCLK is increasing, set bits 25:16 to upcoming CDCLK,
+	 * if CDCLK is decreasing or not changing, set bits 25:16 to current CDCLK,
+	 * which basically means we choose the maximum of old and new CDCLK, if we know both
+	 */
+	if (change_cdclk)
+		cdclk = max(new_cdclk_state->actual.cdclk, old_cdclk_state->actual.cdclk);
+
+	/*
+	 * According to "Sequence For Pipe Count Change",
+	 * if pipe count is increasing, set bits 25:16 to upcoming pipe count
+	 * (power well is enabled)
+	 * no action if it is decreasing, before the change
+	 */
+	if (update_pipe_count)
+		num_active_pipes = hweight8(new_cdclk_state->active_pipes);
+
+	intel_pcode_notify(i915, voltage_level, num_active_pipes, cdclk,
+			   change_cdclk, update_pipe_count);
+}
+
+static void intel_cdclk_pcode_post_notify(struct intel_atomic_state *state)
+{
+	struct drm_i915_private *i915 = to_i915(state->base.dev);
+	const struct intel_cdclk_state *new_cdclk_state =
+		intel_atomic_get_new_cdclk_state(state);
+	const struct intel_cdclk_state *old_cdclk_state =
+		intel_atomic_get_old_cdclk_state(state);
+	unsigned int cdclk = 0; u8 voltage_level, num_active_pipes = 0;
+	bool update_cdclk, update_pipe_count;
+
+	/* According to "Sequence After Frequency Change", set voltage to used level */
+	voltage_level = new_cdclk_state->actual.voltage_level;
+
+	update_cdclk = new_cdclk_state->actual.cdclk != old_cdclk_state->actual.cdclk;
+	update_pipe_count = hweight8(new_cdclk_state->active_pipes) <
+			    hweight8(old_cdclk_state->active_pipes);
+
+	/*
+	 * According to "Sequence After Frequency Change",
+	 * set bits 25:16 to current CDCLK
+	 */
+	if (update_cdclk)
+		cdclk = new_cdclk_state->actual.cdclk;
+
+	/*
+	 * According to "Sequence For Pipe Count Change",
+	 * if pipe count is decreasing, set bits 25:16 to current pipe count,
+	 * after the change(power well is disabled)
+	 * no action if it is increasing, after the change
+	 */
+	if (update_pipe_count)
+		num_active_pipes = hweight8(new_cdclk_state->active_pipes);
+
+	intel_pcode_notify(i915, voltage_level, num_active_pipes, cdclk,
+			   update_cdclk, update_pipe_count);
+}
+
 /**
  * intel_set_cdclk_pre_plane_update - Push the CDCLK state to the hardware
  * @state: intel atomic state
@@ -2321,7 +2435,7 @@ static void intel_set_cdclk(struct drm_i915_private *dev_priv,
 void
 intel_set_cdclk_pre_plane_update(struct intel_atomic_state *state)
 {
-	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
+	struct drm_i915_private *i915 = to_i915(state->base.dev);
 	const struct intel_cdclk_state *old_cdclk_state =
 		intel_atomic_get_old_cdclk_state(state);
 	const struct intel_cdclk_state *new_cdclk_state =
@@ -2332,11 +2446,14 @@ intel_set_cdclk_pre_plane_update(struct intel_atomic_state *state)
 				 &new_cdclk_state->actual))
 		return;
 
+	if (IS_DG2(i915))
+		intel_cdclk_pcode_pre_notify(state);
+
 	if (pipe == INVALID_PIPE ||
 	    old_cdclk_state->actual.cdclk <= new_cdclk_state->actual.cdclk) {
-		drm_WARN_ON(&dev_priv->drm, !new_cdclk_state->base.changed);
+		drm_WARN_ON(&i915->drm, !new_cdclk_state->base.changed);
 
-		intel_set_cdclk(dev_priv, &new_cdclk_state->actual, pipe);
+		intel_set_cdclk(i915, &new_cdclk_state->actual, pipe);
 	}
 }
 
@@ -2350,7 +2467,7 @@ intel_set_cdclk_pre_plane_update(struct intel_atomic_state *state)
 void
 intel_set_cdclk_post_plane_update(struct intel_atomic_state *state)
 {
-	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
+	struct drm_i915_private *i915 = to_i915(state->base.dev);
 	const struct intel_cdclk_state *old_cdclk_state =
 		intel_atomic_get_old_cdclk_state(state);
 	const struct intel_cdclk_state *new_cdclk_state =
@@ -2361,11 +2478,14 @@ intel_set_cdclk_post_plane_update(struct intel_atomic_state *state)
 				 &new_cdclk_state->actual))
 		return;
 
+	if (IS_DG2(i915))
+		intel_cdclk_pcode_post_notify(state);
+
 	if (pipe != INVALID_PIPE &&
 	    old_cdclk_state->actual.cdclk > new_cdclk_state->actual.cdclk) {
-		drm_WARN_ON(&dev_priv->drm, !new_cdclk_state->base.changed);
+		drm_WARN_ON(&i915->drm, !new_cdclk_state->base.changed);
 
-		intel_set_cdclk(dev_priv, &new_cdclk_state->actual, pipe);
+		intel_set_cdclk(i915, &new_cdclk_state->actual, pipe);
 	}
 }
 
@@ -2871,6 +2991,21 @@ int intel_cdclk_init(struct drm_i915_private *dev_priv)
 	return 0;
 }
 
+static bool intel_cdclk_need_serialize(struct drm_i915_private *i915,
+				       const struct intel_cdclk_state *old_cdclk_state,
+				       const struct intel_cdclk_state *new_cdclk_state)
+{
+	bool power_well_cnt_changed = hweight8(old_cdclk_state->active_pipes) !=
+				      hweight8(new_cdclk_state->active_pipes);
+	bool cdclk_changed = intel_cdclk_changed(&old_cdclk_state->actual,
+						 &new_cdclk_state->actual);
+	/*
+	 * We need to poke hw for gen >= 12, because we notify PCode if
+	 * pipe power well count changes.
+	 */
+	return cdclk_changed || (IS_DG2(i915) && power_well_cnt_changed);
+}
+
 int intel_modeset_calc_cdclk(struct intel_atomic_state *state)
 {
 	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
@@ -2892,8 +3027,7 @@ int intel_modeset_calc_cdclk(struct intel_atomic_state *state)
 	if (ret)
 		return ret;
 
-	if (intel_cdclk_changed(&old_cdclk_state->actual,
-				&new_cdclk_state->actual)) {
+	if (intel_cdclk_need_serialize(dev_priv, old_cdclk_state, new_cdclk_state)) {
 		/*
 		 * Also serialize commits across all crtcs
 		 * if the actual hw needs to be poked.
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index dde6e91055bd..5eb83f81225a 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -5346,6 +5346,20 @@
 #define     ICL_PCODE_MEM_SS_READ_GLOBAL_INFO	(0x0 << 8)
 #define     ICL_PCODE_MEM_SS_READ_QGV_POINT_INFO(point)	(((point) << 16) | (0x1 << 8))
 #define     ADL_PCODE_MEM_SS_READ_PSF_GV_INFO	((0) | (0x2 << 8))
+#define   DISPLAY_TO_PCODE_CDCLK_MAX		0x28D
+#define   DISPLAY_TO_PCODE_VOLTAGE_MASK		REG_GENMASK(1, 0)
+#define	  DISPLAY_TO_PCODE_VOLTAGE_MAX		DISPLAY_TO_PCODE_VOLTAGE_MASK
+#define   DISPLAY_TO_PCODE_CDCLK_VALID		REG_BIT(27)
+#define   DISPLAY_TO_PCODE_PIPE_COUNT_VALID	REG_BIT(31)
+#define   DISPLAY_TO_PCODE_CDCLK_MASK		REG_GENMASK(25, 16)
+#define   DISPLAY_TO_PCODE_PIPE_COUNT_MASK	REG_GENMASK(30, 28)
+#define   DISPLAY_TO_PCODE_CDCLK(x)		REG_FIELD_PREP(DISPLAY_TO_PCODE_CDCLK_MASK, (x))
+#define   DISPLAY_TO_PCODE_PIPE_COUNT(x)	REG_FIELD_PREP(DISPLAY_TO_PCODE_PIPE_COUNT_MASK, (x))
+#define   DISPLAY_TO_PCODE_VOLTAGE(x)		REG_FIELD_PREP(DISPLAY_TO_PCODE_VOLTAGE_MASK, (x))
+#define   DISPLAY_TO_PCODE_UPDATE_MASK(cdclk, num_pipes, voltage_level) \
+		((DISPLAY_TO_PCODE_CDCLK(cdclk)) | \
+		(DISPLAY_TO_PCODE_PIPE_COUNT(num_pipes)) | \
+		(DISPLAY_TO_PCODE_VOLTAGE(voltage_level)))
 #define   ICL_PCODE_SAGV_DE_MEM_SS_CONFIG	0xe
 #define     ICL_PCODE_REP_QGV_MASK		REG_GENMASK(1, 0)
 #define     ICL_PCODE_REP_QGV_SAFE		REG_FIELD_PREP(ICL_PCODE_REP_QGV_MASK, 0)
-- 
2.37.3

