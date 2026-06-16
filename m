Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ruIHKXt4MWqzkAUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2026 18:23:23 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BCF2692044
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2026 18:23:23 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b="f8SwB/rP";
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D0C5310EC3F;
	Tue, 16 Jun 2026 16:23:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F1F2310E7C8;
 Tue, 16 Jun 2026 16:23:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781627001; x=1813163001;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=m5FIHR7WOmRTwjShEfVSedr7adfudnk7o5C1DU8+O30=;
 b=f8SwB/rPXUKjXgtIE5rBcEyZf7mN1g7N4snVonxfcI/cn4Cdqfr35Fqr
 HRvKaArgi2d8pirGFSB7bQs5u+7a3ZP5v8sF+DkWoXqMW++HXB8MLJE65
 gzJlaTMt7zRD17iWDi6AQ+V2AggoBMUNQ+Mfbk3SdUqHlnzJ/AD+L9O3i
 ov2J2mt7YTGsnryJbJF6sdYPfEX/ANbnJRJDuEJkxA6CGnM+lYZKD/7Mq
 IG0+l+ir8N/n2D7oV/k3nlZ6A6OI5D4KVSZvmuxxBIHzifNycpUW94r2/
 gVQCBGwGA2y4hlcRKLJIt+0eoZPtG+LRly3c6Ar0Sa1YUT+fJ6pOLfcG2 A==;
X-CSE-ConnectionGUID: xv+E2Lr+TnyELPqGObjK4w==
X-CSE-MsgGUID: 6YhO9M3mTbqvYa3+Dsl37Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11819"; a="93781316"
X-IronPort-AV: E=Sophos;i="6.24,208,1774335600"; d="scan'208";a="93781316"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2026 09:23:21 -0700
X-CSE-ConnectionGUID: C1T2BhoqT1GtFZHkJjC3nA==
X-CSE-MsgGUID: N71gckk/SaeqUMRAf6xkMA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,208,1774335600"; d="scan'208";a="247693520"
Received: from dibin-nuc7i7bnh.iind.intel.com ([10.190.239.19])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2026 09:23:19 -0700
From: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: uma.shankar@intel.com, animesh.manna@intel.com, jani.nikula@linux.intel.com
Subject: [PATCH v6 08/16] drm/i915/display: Add DC3CO compute and set target
 state in commit tail
Date: Tue, 16 Jun 2026 21:51:46 +0530
Message-ID: <20260616162154.2630995-9-dibin.moolakadan.subrahmanian@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260616162154.2630995-1-dibin.moolakadan.subrahmanian@intel.com>
References: <20260616162154.2630995-1-dibin.moolakadan.subrahmanian@intel.com>
MIME-Version: 1.0
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[dibin.moolakadan.subrahmanian@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp,intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4BCF2692044

Compute if dc3co is allowed in intel_atomic_commit_tail()
based on pipe/port constraints and runtime triggers and store
result in display->power.dc3co.

When DC3CO can be enabled, request DC_STATE_EN_UPTO_DC3CO and
reduce the DC entry delay. Otherwise, retain the existing
delay and set default DC_STATE_EN_UPTO_DC6.

Changes in v5:
- Move DC3CO compute logic from intel_atomic_check()
  to intel_atomic_commit_tail as it is not advisable to
  change persistent state in atomic check (Jani Nikula)
- Add psr2 deep sleep check in dc3co compute.
- Move allowed computation logic inside dc3co update (Jani Nikula).
- Add dc3co support check in dc3co allowed function (Jani Nikula)
- Move all dc3co functions to intel_display_power.c and
  rename functions accordingly  (Jani Nikula)
- Clean up dc3co/dc6 power async delay in
  intel_atomic_commit_tail() (Jani Nikula)

Changes in v6:
- Remove debug print from intel_display_power_dc3co_update()

BSpec: 75253
Signed-off-by: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
Reviewed-by: Uma Shankar <uma.shankar@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c  |  14 +-
 .../gpu/drm/i915/display/intel_display_core.h |   2 +
 .../drm/i915/display/intel_display_power.c    | 133 ++++++++++++++++++
 .../drm/i915/display/intel_display_power.h    |  37 +++++
 4 files changed, 181 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index e76aa6c8dab6..ddcf2d2054b7 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7465,6 +7465,7 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 	struct intel_crtc *crtc;
 	struct intel_power_domain_mask put_domains[I915_MAX_PIPES] = {};
 	struct ref_tracker *wakeref = NULL;
+	int power_async_delay;
 
 	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state)
 		intel_atomic_dsb_prepare(state, crtc);
@@ -7573,6 +7574,8 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 	/* Now enable the clocks, plane, pipe, and connectors that we set up. */
 	display->modeset.funcs->commit_modeset_enables(state);
 
+	intel_display_power_dc3co_compute(state);
+
 	/* FIXME probably need to sequence this properly */
 	intel_program_dpkgc_latency(state);
 
@@ -7674,11 +7677,12 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 		 */
 		intel_uncore_arm_unclaimed_mmio_detection(uncore);
 	}
-	/*
-	 * Delay re-enabling DC states by 17 ms to avoid the off->on->off
-	 * toggling overhead at and above 60 FPS.
-	 */
-	intel_display_power_put_async_delay(display, POWER_DOMAIN_DC_OFF, wakeref, 17);
+
+	power_async_delay = intel_display_power_select_target_dc_state(state);
+
+	intel_display_power_put_async_delay(display,
+					    POWER_DOMAIN_DC_OFF, wakeref, power_async_delay);
+
 	intel_display_rpm_put(display, state->wakeref);
 
 	/*
diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index 3c17cac1eb97..17f7d3abdb9c 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -538,6 +538,8 @@ struct intel_display {
 
 	struct {
 		struct i915_power_domains domains;
+		/* DC3CO state */
+		struct intel_dc3co_state dc3co;
 
 		/* Shadow for DISPLAY_PHY_CONTROL which can't be safely read */
 		u32 chv_phy_control;
diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 9e66f9a4fcdc..2ee38ba1fb2c 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -14,7 +14,9 @@
 #include "intel_cdclk.h"
 #include "intel_clock_gating.h"
 #include "intel_combo_phy.h"
+#include "intel_crtc.h"
 #include "intel_de.h"
+#include "intel_display.h"
 #include "intel_display_power.h"
 #include "intel_display_power_map.h"
 #include "intel_display_power_well.h"
@@ -30,6 +32,8 @@
 #include "intel_pch_refclk.h"
 #include "intel_pmdemand.h"
 #include "intel_pps_regs.h"
+#include "intel_psr.h"
+#include "intel_psr_regs.h"
 #include "intel_snps_phy.h"
 #include "skl_watermark.h"
 #include "skl_watermark_regs.h"
@@ -391,6 +395,134 @@ bool intel_display_power_dc3co_supported(struct intel_display *display)
 	return (power_domains->allowed_dc_mask & DC_STATE_EN_UPTO_DC3CO) == DC_STATE_EN_UPTO_DC3CO;
 }
 
+bool intel_display_power_dc3co_allowed(struct intel_display *display)
+{
+	struct intel_dc3co_state *dc3co = &display->power.dc3co;
+	bool allowed;
+
+	if (!intel_display_power_dc3co_supported(display))
+		return false;
+
+	mutex_lock(&dc3co->lock);
+	allowed = dc3co->allowed;
+	mutex_unlock(&dc3co->lock);
+
+	return allowed;
+}
+
+void intel_display_power_dc3co_update(struct intel_display *display, u32 trigger)
+{
+	struct intel_dc3co_state *dc3co = &display->power.dc3co;
+
+	if (!intel_display_power_dc3co_supported(display))
+		return;
+
+	mutex_lock(&dc3co->lock);
+	dc3co->trigger = trigger;
+	dc3co->allowed = !!trigger;
+	mutex_unlock(&dc3co->lock);
+}
+
+static bool intel_dc3co_port_pipe_compatible(struct intel_dp *intel_dp,
+					     const struct intel_crtc_state *crtc_state)
+{
+	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
+	enum pipe pipe = to_intel_crtc(crtc_state->uapi.crtc)->pipe;
+	enum port port = dig_port->base.port;
+	int num_pipes = intel_crtc_num_joined_pipes(crtc_state);
+
+	/* Need to follow 1:1 mapping because of CMTG restriction */
+	if (DISPLAY_VER(to_intel_display(crtc_state)) == 35)
+		return num_pipes == 1 &&
+		       ((pipe == PIPE_A && port == PORT_A) ||
+			(pipe == PIPE_B && port == PORT_B));
+	else
+		return num_pipes == 1 && pipe <= PIPE_B && port <= PORT_B;
+}
+
+void intel_display_power_dc3co_compute(struct intel_atomic_state *state)
+{
+	struct intel_display *display = to_intel_display(state);
+	struct intel_crtc *crtc;
+	struct intel_crtc_state *crtc_state;
+	struct intel_encoder *encoder;
+	struct intel_dp *intel_dp;
+	u8 active_pipes = 0;
+	enum pipe pipe;
+	u32 trigger = DC3CO_TRIGGER_NONE;
+
+	if (!intel_display_power_dc3co_supported(display))
+		return;
+
+	for_each_intel_crtc(display, crtc)
+		active_pipes |= crtc->active ? BIT(crtc->pipe) : 0;
+
+	active_pipes = intel_calc_active_pipes(state, active_pipes);
+
+	if (hweight8(active_pipes) != 1)
+		goto done;
+
+	pipe = ffs(active_pipes) - 1;
+	crtc = intel_crtc_for_pipe(display, pipe);
+
+	crtc_state = to_intel_crtc_state(crtc->base.state);
+
+	for_each_intel_encoder_mask(display->drm, encoder,
+				    crtc_state->uapi.encoder_mask) {
+		if (encoder->type != INTEL_OUTPUT_EDP)
+			goto done;
+
+		intel_dp = enc_to_intel_dp(encoder);
+
+		if (!intel_dc3co_port_pipe_compatible(intel_dp, crtc_state))
+			goto done;
+
+		if (intel_psr2_in_deep_sleep(intel_dp))
+			goto done;
+	}
+
+	if (crtc_state->has_lobf)
+		trigger |= DC3CO_TRIGGER_LOBF;
+	if (crtc_state->has_panel_replay && intel_dp->as_sdp_supported)
+		trigger |= DC3CO_TRIGGER_PANEL_REPLAY;
+	if (crtc_state->has_sel_update)
+		trigger |= DC3CO_TRIGGER_PSR2;
+
+done:
+	intel_display_power_dc3co_update(display, trigger);
+}
+
+/*
+ * Select the target DC state for this commit and return the async-put delay
+ * to use when releasing the DC_OFF reference.
+ *
+ * Picks DC_STATE_EN_UPTO_DC3CO when DC3CO can be enabled
+ * otherwise falls back to default DC state of DC_STATE_EN_UPTO_DC6.
+ * The chosen target is programmed via intel_display_power_set_target_dc_state().
+ *
+ * Returns the async-put delay (in ms) to use when releasing the DC_OFF
+ * reference: DC3CO_PUT_ASYNC_DELAY_MS when DC3CO was selected, otherwise
+ * DC6_PUT_ASYNC_DELAY_MS.
+ */
+int intel_display_power_select_target_dc_state(struct intel_atomic_state *state)
+{
+	struct intel_display *display = to_intel_display(state);
+	u32 target_dc_state;
+
+	if (!intel_display_power_dc3co_supported(display))
+		return DC6_PUT_ASYNC_DELAY_MS;
+
+	if (intel_display_power_dc3co_allowed(display))
+		target_dc_state = DC_STATE_EN_UPTO_DC3CO;
+	else
+		target_dc_state = DC_STATE_EN_UPTO_DC6;
+
+	intel_display_power_set_target_dc_state(display, target_dc_state);
+
+	return target_dc_state == DC_STATE_EN_UPTO_DC3CO ?
+		DC3CO_PUT_ASYNC_DELAY_MS : DC6_PUT_ASYNC_DELAY_MS;
+}
+
 static void __async_put_domains_mask(struct i915_power_domains *power_domains,
 				     struct intel_power_domain_mask *mask)
 {
@@ -1070,6 +1202,7 @@ int intel_display_power_init(struct intel_display *display)
 		sanitize_target_dc_state(display, DC_STATE_EN_UPTO_DC6);
 
 	mutex_init(&power_domains->lock);
+	mutex_init(&display->power.dc3co.lock);
 
 	INIT_DELAYED_WORK(&power_domains->async_put_work,
 			  intel_display_power_put_async_work);
diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h b/drivers/gpu/drm/i915/display/intel_display_power.h
index 41b4be9018b4..546af67b680b 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.h
+++ b/drivers/gpu/drm/i915/display/intel_display_power.h
@@ -9,9 +9,12 @@
 #include <linux/mutex.h>
 #include <linux/workqueue.h>
 
+#include "intel_display_limits.h"
+
 enum aux_ch;
 enum port;
 struct i915_power_well;
+struct intel_atomic_state;
 struct intel_display;
 struct intel_encoder;
 struct ref_tracker;
@@ -131,6 +134,36 @@ struct intel_power_domain_mask {
 	DECLARE_BITMAP(bits, POWER_DOMAIN_NUM);
 };
 
+/*
+ * DC3CO enabling triggers (bitmask).
+ * DC3CO may be enabled when at least one of these triggers is active.
+ * Additional constraints may still apply.
+ */
+#define DC3CO_TRIGGER_NONE		(0)
+#define DC3CO_TRIGGER_PSR2		BIT(0)
+#define DC3CO_TRIGGER_LOBF		BIT(1)
+#define DC3CO_TRIGGER_PANEL_REPLAY	BIT(2)
+#define DC3CO_TRIGGER_ALL		(DC3CO_TRIGGER_PSR2 | \
+					 DC3CO_TRIGGER_LOBF | \
+					 DC3CO_TRIGGER_PANEL_REPLAY)
+
+/*
+ * Delay to re-enable DC5/DC6 states by 17 ms to avoid the off->on->off
+ * toggling overhead at and above 60 FPS.
+ */
+#define DC6_PUT_ASYNC_DELAY_MS		17
+/*
+ * Use minimal re-enable delay to allow DC3CO entry on
+ * the next idle frame.
+ */
+#define DC3CO_PUT_ASYNC_DELAY_MS	1
+
+struct intel_dc3co_state {
+	struct mutex lock; /* protects allowed and trigger fields */
+	bool allowed; /* DC3CO compute result */
+	u32 trigger; /* Bitmask of active DC3CO triggers */
+};
+
 struct i915_power_domains {
 	/*
 	 * Power wells needed for initialization at driver init and suspend
@@ -185,6 +218,10 @@ void intel_display_power_set_target_dc_state(struct intel_display *display,
 					     u32 state);
 u32 intel_display_power_get_current_dc_state(struct intel_display *display);
 bool intel_display_power_dc3co_supported(struct intel_display *display);
+void intel_display_power_dc3co_update(struct intel_display *display, u32 trigger);
+bool intel_display_power_dc3co_allowed(struct intel_display *display);
+void intel_display_power_dc3co_compute(struct intel_atomic_state *state);
+int intel_display_power_select_target_dc_state(struct intel_atomic_state *state);
 
 void intel_display_power_runtime_suspend(struct intel_display *display);
 void intel_display_power_runtime_resume(struct intel_display *display);
-- 
2.43.0

