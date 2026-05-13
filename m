Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WCGNEpywBGriNAIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 13 May 2026 19:10:52 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AABC2537C46
	for <lists+intel-gfx@lfdr.de>; Wed, 13 May 2026 19:10:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1CA8610EFC8;
	Wed, 13 May 2026 17:10:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WjwXROUQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1A74110EFB8;
 Wed, 13 May 2026 17:10:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778692249; x=1810228249;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=FAL+yO/RhKSmt8UvKj7ytDnJvT3G1pYLdBx2OmI2WeA=;
 b=WjwXROUQchLXDNGycV/jk7SEHKSwCPqjz4sgCSzomegFYDsNcY0oHecF
 5066ur4e5SaUjhaHhcuFIzJE/p9tMeOEZBUtQF1M43uqXiR1QC0WoHa5U
 GJFxbDhJ5lsi+gVhT5h/zSTavZP7XJSpOegVLFVTclgAln4+X0OBHn8wI
 xphRNjFvoxE/RkbsSMKcBkijloWIjTLn87uaiVe5PY2VRcZhOzt4AeMIP
 TOLxcsH0MQdHc8qu2DcIFct/IxKoWfoOFMYQTf1ohc1hjL5rgERNOZBO2
 DPU0vhddCO+wWWftRQwA8DUf6p6O5wzyl1N8RCi1ElX3tyDZUqm0jtipY g==;
X-CSE-ConnectionGUID: XDBs5RG9QwK54ImBnDAKkA==
X-CSE-MsgGUID: iDU4in4sRNug3HJQxeP2mw==
X-IronPort-AV: E=McAfee;i="6800,10657,11785"; a="102295344"
X-IronPort-AV: E=Sophos;i="6.23,233,1770624000"; d="scan'208";a="102295344"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2026 10:10:48 -0700
X-CSE-ConnectionGUID: b9qyHKi/QdyxxnAlsv6f2g==
X-CSE-MsgGUID: IMFbmsRhR+6PkSp5dPgTpA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,233,1770624000"; d="scan'208";a="238030316"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by orviesa008.jf.intel.com with ESMTP; 13 May 2026 10:10:47 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: uma.shankar@intel.com, dibin.moolakadan.subrahmanian@intel.com,
 ville.syrjala@linux.intel.com, jani.nikula@intel.com,
 Animesh Manna <animesh.manna@intel.com>
Subject: [PATCH v6 15/16] drm/i915/cmtg: Restore CMTG after DC6 entry
Date: Wed, 13 May 2026 22:08:56 +0530
Message-Id: <20260513163857.1541888-16-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20260513163857.1541888-1-animesh.manna@intel.com>
References: <20260513163857.1541888-1-animesh.manna@intel.com>
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
X-Rspamd-Queue-Id: AABC2537C46
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[animesh.manna@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[7];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,intel.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Action: no action

Restore CMTG registers after DC6 exit, as they lose their values
in the low-power state.

Signed-off-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c  | 12 ++++++++-
 .../drm/i915/display/intel_display_power.c    | 25 +++++++++++++++++++
 .../drm/i915/display/intel_display_power.h    |  3 +++
 3 files changed, 39 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 6dc561713c35..324a2c722422 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7544,9 +7544,19 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 
 	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
 		bool modeset = intel_crtc_needs_modeset(new_crtc_state);
+		bool dc3co_to_dc6 = intel_display_power_get_dc3co_to_dc6(display);
 
 		/* CMTG needs to be restored on DC6 exit and on modset*/
-		if (modeset && new_crtc_state->hw.active && !crtc->cmtg.enabled) {
+		if ((modeset || dc3co_to_dc6) && new_crtc_state->hw.active && !crtc->cmtg.enabled) {
+			if (dc3co_to_dc6) {
+				intel_cmtg_set_clk_select(new_crtc_state);
+				intel_cmtg_set_timings(new_crtc_state, false);
+				intel_cmtg_set_vrr_timings(new_crtc_state);
+				intel_cmtg_set_vrr_ctl(new_crtc_state);
+				intel_cmtg_set_m_n(new_crtc_state);
+				intel_display_power_reset_dc3co_to_dc6(display);
+			}
+
 			intel_cmtg_enable_sync(new_crtc_state);
 			intel_cmtg_set_hwgb(new_crtc_state);
 			intel_cmtg_enable_ddi(new_crtc_state);
diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 80ecf373fb19..a0ea46895e2e 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -285,6 +285,27 @@ sanitize_target_dc_state(struct intel_display *display,
 	return target_dc_state;
 }
 
+bool intel_display_power_get_dc3co_to_dc6(struct intel_display *display)
+{
+	struct i915_power_domains *power_domains = &display->power.domains;
+	bool ret;
+
+	mutex_lock(&power_domains->lock);
+	ret = power_domains->dc3co_to_dc6;
+	mutex_unlock(&power_domains->lock);
+
+	return ret;
+}
+
+void intel_display_power_reset_dc3co_to_dc6(struct intel_display *display)
+{
+	struct i915_power_domains *power_domains = &display->power.domains;
+
+	mutex_lock(&power_domains->lock);
+	power_domains->dc3co_to_dc6 = false;
+	mutex_unlock(&power_domains->lock);
+}
+
 /**
  * intel_display_power_set_target_dc_state - Set target dc state.
  * @display: display device
@@ -320,6 +341,10 @@ void intel_display_power_set_target_dc_state(struct intel_display *display,
 	if (!dc_off_enabled)
 		intel_power_well_enable(display, power_well);
 
+	if (power_domains->target_dc_state == DC_STATE_EN_DC3CO &&
+	    state == DC_STATE_EN_UPTO_DC6)
+		power_domains->dc3co_to_dc6 = true;
+
 	power_domains->target_dc_state = state;
 
 	if (!dc_off_enabled)
diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h b/drivers/gpu/drm/i915/display/intel_display_power.h
index d616d5d09cbe..ce1225bbc789 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.h
+++ b/drivers/gpu/drm/i915/display/intel_display_power.h
@@ -138,6 +138,7 @@ struct i915_power_domains {
 	 */
 	bool initializing;
 	bool display_core_suspended;
+	bool dc3co_to_dc6;
 	int power_well_count;
 
 	u32 dc_state;
@@ -183,6 +184,8 @@ void intel_display_power_suspend_late(struct intel_display *display, bool s2idle
 void intel_display_power_resume_early(struct intel_display *display);
 void intel_display_power_suspend(struct intel_display *display);
 void intel_display_power_resume(struct intel_display *display);
+bool intel_display_power_get_dc3co_to_dc6(struct intel_display *display);
+void intel_display_power_reset_dc3co_to_dc6(struct intel_display *display);
 void intel_display_power_set_target_dc_state(struct intel_display *display,
 					     u32 state);
 u32 intel_display_power_get_current_dc_state(struct intel_display *display);
-- 
2.29.0

