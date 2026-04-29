Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2NyRO+bO8WlrkgEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Apr 2026 11:27:03 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A98E491DDC
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Apr 2026 11:27:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A79C10EF00;
	Wed, 29 Apr 2026 09:27:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="oG36CTT9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 92E6F10E3D5;
 Wed, 29 Apr 2026 09:26:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777454820; x=1808990820;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=5Cenm8VGnOtT7TeeW6+K7Mv1l5ujPd5MYJ6iHG4k/fY=;
 b=oG36CTT92EZHCC766IDP8YHQGd+HFeLOe2Eg8CXMU0s7bVLENa1GHDg7
 clpyoTaculgdMegzkZOCtvGy43wOSHDtbSt2akLY8rFzxrLzlNCFPbjRg
 2hcsnhMOMrvO3xHB+n12trTeslaGByIt3h9tMOWusZ+R8gtM3QFTGGFEt
 WrAXJJTdduM4BeYmVyhbF1+28h1uH5+UVFQB0l4sy9tNfWSB2esRbIjch
 sVvaXi3S6T4hNVV7IkIBAGbfQ+vc3Ek7jfzmM80plDij9crz9YGfrGGTb
 mAYAWcg963QEAQfjtk5oXoGtxdpB0pT3uxMhV0n+EUs/kb+t3yUQoyveg g==;
X-CSE-ConnectionGUID: Os3HEerdQBqhCAd2HwEzqg==
X-CSE-MsgGUID: 8fs6wVmhSxGfoDWQzASewA==
X-IronPort-AV: E=McAfee;i="6800,10657,11770"; a="95946306"
X-IronPort-AV: E=Sophos;i="6.23,205,1770624000"; d="scan'208";a="95946306"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2026 02:26:59 -0700
X-CSE-ConnectionGUID: m+BJ4GteTAqVlfI3HNNL2g==
X-CSE-MsgGUID: o3X/vKa2TnKOQNJ9Rumd4w==
X-ExtLoop1: 1
Received: from dibin-nuc7i7bnh.iind.intel.com ([10.190.239.19])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2026 02:26:58 -0700
From: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: animesh.manna@intel.com, uma.shankar@intel.com,
 suresh.kumar.kurmi@intel.com
Subject: [PATCH v3 07/13] drm/i915/display: Add DC3CO eligibility computation
Date: Wed, 29 Apr 2026 14:57:01 +0530
Message-ID: <20260429092707.485696-8-dibin.moolakadan.subrahmanian@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260429092707.485696-1-dibin.moolakadan.subrahmanian@intel.com>
References: <20260429092707.485696-1-dibin.moolakadan.subrahmanian@intel.com>
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
X-Rspamd-Queue-Id: 8A98E491DDC
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[dibin.moolakadan.subrahmanian@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim,intel.com:mid]

Compute DC3CO eligibility during atomic_check based on
pipe/port constraints and runtime triggers and store
result in display->power.dc3co.

When DC3CO is allowed, request DC_STATE_EN_UPTO_DC3CO and
reduce the DC entry delay. Otherwise, retain the existing
delay and set default DC_STATE_EN_UPTO_DC6 .

Changes in v2:
- Move dc3co state from intel_atomic_state to display->power (Uma Shankar)
- Use #define bitmasks instead of enum for DC3CO triggers (Jani Nikula)

Changes in v3:
- Fix trigger always returning zero in intel_dc3co_compute_state().

BSpec: 75253
Signed-off-by: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
Reviewed-by: Uma Shankar <uma.shankar@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c  | 92 ++++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_display.h  |  1 -
 .../gpu/drm/i915/display/intel_display_core.h |  3 +-
 .../drm/i915/display/intel_display_power.c    | 30 ++++++
 .../drm/i915/display/intel_display_power.h    | 22 +++++
 5 files changed, 141 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 674a4ece6d0f..3b3b2fd5d3d5 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -5870,6 +5870,69 @@ static bool intel_pipes_need_modeset(struct intel_atomic_state *state,
 	return false;
 }
 
+static bool intel_dc3co_port_pipe_compatible(struct intel_dp *intel_dp,
+					     const struct intel_crtc_state *crtc_state)
+{
+	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
+	enum pipe pipe = to_intel_crtc(crtc_state->uapi.crtc)->pipe;
+	enum port port = dig_port->base.port;
+	int num_pipes = intel_crtc_num_joined_pipes(crtc_state);
+
+	return num_pipes == 1 && pipe <= PIPE_B && port <= PORT_B;
+}
+
+static void intel_dc3co_compute_state(struct intel_atomic_state *state)
+{
+	struct intel_display *display = to_intel_display(state);
+	struct intel_crtc *crtc;
+	struct intel_crtc_state *crtc_state;
+	struct intel_encoder *encoder;
+	struct intel_dp *intel_dp;
+	int active_pipes = 0;
+	u32 trigger = DC3CO_TRIGGER_NONE;
+
+	if (!HAS_DC3CO(display))
+		return;
+
+	for_each_intel_crtc(display->drm, crtc) {
+		crtc_state = intel_atomic_get_new_crtc_state(state, crtc);
+		if (!crtc_state)
+			crtc_state = intel_atomic_get_old_crtc_state(state, crtc);
+
+		if (!crtc_state || !crtc_state->hw.active)
+			continue;
+
+		trigger = DC3CO_TRIGGER_NONE;
+		active_pipes++;
+
+		if (active_pipes > 1)
+			goto done;
+
+		for_each_intel_encoder_mask(display->drm, encoder,
+					    crtc_state->uapi.encoder_mask) {
+			if (encoder->type != INTEL_OUTPUT_EDP)
+				goto done;
+
+			intel_dp = enc_to_intel_dp(encoder);
+
+			if (!intel_dc3co_port_pipe_compatible(intel_dp, crtc_state))
+				goto done;
+		}
+
+		if (crtc_state->has_lobf)
+			trigger |= DC3CO_TRIGGER_LOBF;
+		if (crtc_state->has_panel_replay)
+			trigger |= DC3CO_TRIGGER_PANEL_REPLAY;
+		if (crtc_state->has_sel_update)
+			trigger |= DC3CO_TRIGGER_PSR2;
+	}
+
+done:
+	intel_display_power_dc3co_update(display, !!trigger, trigger);
+	drm_dbg_kms(display->drm, "DC3CO allowed=%d trigger=0x%x\n",
+		    !!trigger, trigger);
+}
+
 static int intel_atomic_check_joiner(struct intel_atomic_state *state,
 				     struct intel_crtc *primary_crtc)
 {
@@ -6544,6 +6607,7 @@ int intel_atomic_check(struct drm_device *dev,
 	if (ret)
 		goto fail;
 
+	intel_dc3co_compute_state(state);
 	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
 					    new_crtc_state, i) {
 		intel_color_assert_luts(new_crtc_state);
@@ -7415,6 +7479,7 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 	struct intel_power_domain_mask put_domains[I915_MAX_PIPES] = {};
 	struct ref_tracker *wakeref = NULL;
 	int i;
+	int power_async_delay;
 
 	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i)
 		intel_atomic_dsb_prepare(state, crtc);
@@ -7621,11 +7686,28 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 		 */
 		intel_uncore_arm_unclaimed_mmio_detection(uncore);
 	}
-	/*
-	 * Delay re-enabling DC states by 17 ms to avoid the off->on->off
-	 * toggling overhead at and above 60 FPS.
-	 */
-	intel_display_power_put_async_delay(display, POWER_DOMAIN_DC_OFF, wakeref, 17);
+
+	if (intel_display_power_dc3co_allowed(display) &&
+	    intel_display_power_dc3co_supported(display)) {
+		intel_display_power_set_target_dc_state(display, DC_STATE_EN_UPTO_DC3CO);
+		/*
+		 * Use minimal re-enable delay to allow DC3CO entry on
+		 * the next idle frame, unlike the 17ms guard needed to
+		 * prevent DC5/DC6 toggling overhead at 60+ FPS.
+		 */
+		power_async_delay = 1;
+	} else {
+		/*
+		 * Delay re-enabling DC states by 17 ms to avoid the off->on->off
+		 * toggling overhead at and above 60 FPS.
+		 */
+		intel_display_power_set_target_dc_state(display, DC_STATE_EN_UPTO_DC6);
+		power_async_delay = 17;
+	}
+
+	intel_display_power_put_async_delay(display,
+					    POWER_DOMAIN_DC_OFF, wakeref, power_async_delay);
+
 	intel_display_rpm_put(display, state->wakeref);
 
 	/*
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index 1e76a455d7c4..2795e4b9e799 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -521,5 +521,4 @@ bool assert_port_valid(struct intel_display *display, enum port port);
 
 bool intel_scanout_needs_vtd_wa(struct intel_display *display);
 int intel_crtc_num_joined_pipes(const struct intel_crtc_state *crtc_state);
-
 #endif
diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index c5a07090cba6..13e9b986b6fc 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -535,7 +535,8 @@ struct intel_display {
 
 	struct {
 		struct i915_power_domains domains;
-
+		/* DC3CO eligibility state */
+		struct intel_dc3co_state dc3co;
 		/* Shadow for DISPLAY_PHY_CONTROL which can't be safely read */
 		u32 chv_phy_control;
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index f626803bbd88..ff1915be59c9 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -372,6 +372,35 @@ bool intel_display_power_dc3co_supported(struct intel_display *display)
 	return (power_domains->allowed_dc_mask & DC_STATE_EN_UPTO_DC3CO) == DC_STATE_EN_UPTO_DC3CO;
 }
 
+void intel_display_power_dc3co_update(struct intel_display *display,
+				      bool allowed, u32 trigger)
+{
+	struct intel_dc3co_state *dc3co = &display->power.dc3co;
+
+	if (!HAS_DC3CO(display))
+		return;
+
+	mutex_lock(&dc3co->lock);
+	dc3co->allowed = allowed;
+	dc3co->trigger = trigger;
+	mutex_unlock(&dc3co->lock);
+}
+
+bool intel_display_power_dc3co_allowed(struct intel_display *display)
+{
+	struct intel_dc3co_state *dc3co = &display->power.dc3co;
+	bool allowed;
+
+	if (!HAS_DC3CO(display))
+		return false;
+
+	mutex_lock(&dc3co->lock);
+	allowed = dc3co->allowed;
+	mutex_unlock(&dc3co->lock);
+
+	return allowed;
+}
+
 static void __async_put_domains_mask(struct i915_power_domains *power_domains,
 				     struct intel_power_domain_mask *mask)
 {
@@ -1051,6 +1080,7 @@ int intel_power_domains_init(struct intel_display *display)
 		sanitize_target_dc_state(display, DC_STATE_EN_UPTO_DC6);
 
 	mutex_init(&power_domains->lock);
+	mutex_init(&display->power.dc3co.lock);
 
 	INIT_DELAYED_WORK(&power_domains->async_put_work,
 			  intel_display_power_put_async_work);
diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h b/drivers/gpu/drm/i915/display/intel_display_power.h
index 05880e9da89f..0b1a06f88ae5 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.h
+++ b/drivers/gpu/drm/i915/display/intel_display_power.h
@@ -131,6 +131,25 @@ struct intel_power_domain_mask {
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
+struct intel_dc3co_state {
+	struct mutex lock; /* Protects allowed and trigger fields */
+	bool allowed; /* DC3CO eligibility result */
+	u32 trigger; /* Bitmask of active DC3CO triggers */
+};
+
 struct i915_power_domains {
 	/*
 	 * Power wells needed for initialization at driver init and suspend
@@ -187,6 +206,9 @@ void intel_display_power_set_target_dc_state(struct intel_display *display,
 					     u32 state);
 u32 intel_display_power_get_current_dc_state(struct intel_display *display);
 bool intel_display_power_dc3co_supported(struct intel_display *display);
+void intel_display_power_dc3co_update(struct intel_display *display,
+				      bool allowed, u32 trigger);
+bool intel_display_power_dc3co_allowed(struct intel_display *display);
 
 bool intel_display_power_is_enabled(struct intel_display *display,
 				    enum intel_display_power_domain domain);
-- 
2.43.0

