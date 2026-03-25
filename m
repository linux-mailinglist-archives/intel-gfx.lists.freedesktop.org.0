Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mNYUIk7Cw2kOuAQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2026 12:09:02 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 36DD532395E
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2026 12:09:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B7C9510E885;
	Wed, 25 Mar 2026 11:09:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="H6oju+ic";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0B3FD10E886;
 Wed, 25 Mar 2026 11:08:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774436936; x=1805972936;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=du4vfRPYajyusz0OMxkxrdppEI8yHmHWlbV8C4i9kVM=;
 b=H6oju+icL+jOcofbrrqXuzqVAy9Dtb9LdLww5RItCQfSaJ6op1YijtoU
 uryaNMHL0IP7DIEMDuvt8xcmAOpplApo6hQ33xOb9UOCyRDdKbXzz+93T
 SgnssFrAzhPXs3ceAcoYDciyWJvD9gN04ZTOuN5OKrYrEWcml5MwfHbuw
 JVo34KcEpfpJzIpBIruUIkz8sGAtTsnm7GKQk2n0GpoKFG7DO1Aq4yMzG
 Br1H36HmID6M0BbYflPEgBmiO+xx3J+OtxPF3V/sJQstIsyyNasnp5xUN
 QGsBpfx9+3WUoyGWvWa0mWdir3LCoWpeWKmeK2rYwghz8BqdcqiGwrDrf Q==;
X-CSE-ConnectionGUID: EbDJPuZwRNSUTtBHaqTLWQ==
X-CSE-MsgGUID: tdNJv8tRROeOyAML6KL8/A==
X-IronPort-AV: E=McAfee;i="6800,10657,11739"; a="93047548"
X-IronPort-AV: E=Sophos;i="6.23,140,1770624000"; d="scan'208";a="93047548"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2026 04:08:56 -0700
X-CSE-ConnectionGUID: 8CHkIiRmRzGqv5/decP4FA==
X-CSE-MsgGUID: s/ni84zYQ8CAAFQlkZQVUg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,140,1770624000"; d="scan'208";a="219798468"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by fmviesa006.fm.intel.com with ESMTP; 25 Mar 2026 04:08:54 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: sowmiya.s@intel.com, uma.shankar@intel.com, swati2.sharma@intel.com,
 chaitanya.kumar.borah@intel.com, arun.r.murthy@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH v3 26/26] drm/i915/writeback: Modify state verify function
Date: Wed, 25 Mar 2026 16:37:44 +0530
Message-Id: <20260325110744.1096786-27-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260325110744.1096786-1-suraj.kandpal@intel.com>
References: <20260325110744.1096786-1-suraj.kandpal@intel.com>
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
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[8];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,intel.com:mid]
X-Rspamd-Queue-Id: 36DD532395E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Modify the state verify functions to take into account the fact
that writeback does not need all the timings for it to be set.
Moreover there is no need for dpll state nor do we need to set
any sort of flags for it.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 57 ++++++++++++--------
 1 file changed, 35 insertions(+), 22 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index e47b4e667fec..59b6c61890bc 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -5140,6 +5140,8 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 	struct drm_printer p;
 	u32 exclude_infoframes = 0;
 	bool ret = true;
+	bool is_writeback =
+		intel_crtc_has_type(current_config, INTEL_OUTPUT_WRITEBACK);
 
 	if (fastset)
 		p = drm_dbg_printer(display->drm, DRM_UT_KMS, NULL);
@@ -5245,20 +5247,25 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 } while (0)
 
 #define PIPE_CONF_CHECK_TIMINGS(name) do {     \
-	PIPE_CONF_CHECK_I(name.crtc_hdisplay); \
-	PIPE_CONF_CHECK_I(name.crtc_htotal); \
-	PIPE_CONF_CHECK_I(name.crtc_hblank_start); \
-	PIPE_CONF_CHECK_I(name.crtc_hblank_end); \
-	PIPE_CONF_CHECK_I(name.crtc_hsync_start); \
-	PIPE_CONF_CHECK_I(name.crtc_hsync_end); \
-	PIPE_CONF_CHECK_I(name.crtc_vdisplay); \
-	if (!fastset || !allow_vblank_delay_fastset(current_config)) \
-		PIPE_CONF_CHECK_I(name.crtc_vblank_start); \
-	PIPE_CONF_CHECK_I(name.crtc_vsync_start); \
-	PIPE_CONF_CHECK_I(name.crtc_vsync_end); \
-	if (!fastset || !pipe_config->update_lrr) { \
-		PIPE_CONF_CHECK_I(name.crtc_vtotal); \
-		PIPE_CONF_CHECK_I(name.crtc_vblank_end); \
+	if (is_writeback) { \
+		PIPE_CONF_CHECK_I(name.crtc_hdisplay); \
+		PIPE_CONF_CHECK_I(name.crtc_vdisplay); \
+	} else { \
+		PIPE_CONF_CHECK_I(name.crtc_hdisplay); \
+		PIPE_CONF_CHECK_I(name.crtc_htotal); \
+		PIPE_CONF_CHECK_I(name.crtc_hblank_start); \
+		PIPE_CONF_CHECK_I(name.crtc_hblank_end); \
+		PIPE_CONF_CHECK_I(name.crtc_hsync_start); \
+		PIPE_CONF_CHECK_I(name.crtc_hsync_end); \
+		PIPE_CONF_CHECK_I(name.crtc_vdisplay); \
+		if (!fastset || !allow_vblank_delay_fastset(current_config)) \
+			PIPE_CONF_CHECK_I(name.crtc_vblank_start); \
+		PIPE_CONF_CHECK_I(name.crtc_vsync_start); \
+		PIPE_CONF_CHECK_I(name.crtc_vsync_end); \
+		if (!fastset || !pipe_config->update_lrr) { \
+			PIPE_CONF_CHECK_I(name.crtc_vtotal); \
+			PIPE_CONF_CHECK_I(name.crtc_vblank_end); \
+		} \
 	} \
 } while (0)
 
@@ -5387,10 +5394,11 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 
 	PIPE_CONF_CHECK_I(pixel_multiplier);
 
-	PIPE_CONF_CHECK_FLAGS(hw.adjusted_mode.flags,
-			      DRM_MODE_FLAG_INTERLACE);
+	if (!is_writeback)
+		PIPE_CONF_CHECK_FLAGS(hw.adjusted_mode.flags,
+				      DRM_MODE_FLAG_INTERLACE);
 
-	if (!PIPE_CONF_QUIRK(PIPE_CONFIG_QUIRK_MODE_SYNC_FLAGS)) {
+	if (!PIPE_CONF_QUIRK(PIPE_CONFIG_QUIRK_MODE_SYNC_FLAGS) && !is_writeback) {
 		PIPE_CONF_CHECK_FLAGS(hw.adjusted_mode.flags,
 				      DRM_MODE_FLAG_PHSYNC);
 		PIPE_CONF_CHECK_FLAGS(hw.adjusted_mode.flags,
@@ -5441,6 +5449,8 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 		PIPE_CONF_CHECK_BOOL(hw.casf_params.casf_enable);
 		PIPE_CONF_CHECK_I(hw.casf_params.win_size);
 		PIPE_CONF_CHECK_I(hw.casf_params.strength);
+		if (!is_writeback)
+			PIPE_CONF_CHECK_I(pixel_rate);
 
 		PIPE_CONF_CHECK_X(gamma_mode);
 		if (display->platform.cherryview)
@@ -5463,24 +5473,27 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 
 	PIPE_CONF_CHECK_BOOL(double_wide);
 
-	if (display->dpll.mgr)
+	if (display->dpll.mgr && !is_writeback)
 		PIPE_CONF_CHECK_P(intel_dpll);
 
 	/* FIXME convert everything over the dpll_mgr */
-	if (display->dpll.mgr || HAS_GMCH(display))
+	if ((display->dpll.mgr || HAS_GMCH(display)) && !is_writeback)
 		PIPE_CONF_CHECK_PLL(dpll_hw_state);
 
 	PIPE_CONF_CHECK_X(dsi_pll.ctrl);
 	PIPE_CONF_CHECK_X(dsi_pll.div);
 
-	if (display->platform.g4x || DISPLAY_VER(display) >= 5)
+	if ((display->platform.g4x || DISPLAY_VER(display) >= 5) &&
+	    !is_writeback)
 		PIPE_CONF_CHECK_I(pipe_bpp);
 
-	if (!fastset || !pipe_config->update_m_n) {
+	if ((!fastset || !pipe_config->update_m_n) && !is_writeback) {
 		PIPE_CONF_CHECK_I(hw.pipe_mode.crtc_clock);
 		PIPE_CONF_CHECK_I(hw.adjusted_mode.crtc_clock);
 	}
-	PIPE_CONF_CHECK_I(port_clock);
+
+	if (!is_writeback)
+		PIPE_CONF_CHECK_I(port_clock);
 
 	PIPE_CONF_CHECK_I(min_voltage_level);
 
-- 
2.34.1

