Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D6CF49AB2EE
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Oct 2024 17:58:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7332510E6B4;
	Tue, 22 Oct 2024 15:58:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ep94hYHm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6721D10E6B3;
 Tue, 22 Oct 2024 15:58:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729612700; x=1761148700;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=UhGhkCU18K1sRUA/4pe4Fg/qKLLvm3uYIsxMEF0DpP8=;
 b=Ep94hYHmNYS0JTRX1rlUWO2uoFb7xN1SaNETUP6JdhElvrQTwemjSWfS
 vrkNbJfyIdV/ul4c3zTgj4m/yFEhpg8qAefJ9vzpbLA+RHFaEYbAmIjfP
 ajAbokN29QAqPW0rmPPFi3+CTyhqjfw2nBaaxcFFD/dakMDuVOdhCf2Dy
 HEZpc55A2aV0UEXA24X+bkPeOplrR+Gcv/x9r00svdMLf/IQRZDPqu1Eb
 3gBuMrp4xoDAYCWq9AhWerO7P5HJvXs6QnSZ4sIhnjgpkNnrt3p4qvECV
 S3qRzfAAjDpCW62p2XSKh8ENuuKDFbSe1TCkqlO11GfbE2MdzEku5k8z9 g==;
X-CSE-ConnectionGUID: 9vbHZDh2SRK50NB423P2og==
X-CSE-MsgGUID: rZGc9wGYSauZxC+pNXpL/A==
X-IronPort-AV: E=McAfee;i="6700,10204,11233"; a="28612888"
X-IronPort-AV: E=Sophos;i="6.11,223,1725346800"; d="scan'208";a="28612888"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2024 08:58:20 -0700
X-CSE-ConnectionGUID: CFeC45I4So24gjwySfNcaA==
X-CSE-MsgGUID: Q2uqcnlDTcuzIPnGzHMgTQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,223,1725346800"; d="scan'208";a="83891884"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.58])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2024 08:58:18 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 09/11] drm/i915/ips: convert to struct intel_display
Date: Tue, 22 Oct 2024 18:57:26 +0300
Message-Id: <2733f533be0729b15720a432a4fdcd77b6cb9dc8.1729612605.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1729612605.git.jani.nikula@intel.com>
References: <cover.1729612605.git.jani.nikula@intel.com>
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

struct intel_display will replace struct drm_i915_private as the main
device pointer for display code. Switch HSW IPS code over to it.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/hsw_ips.c | 47 ++++++++++++++------------
 1 file changed, 26 insertions(+), 21 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/hsw_ips.c b/drivers/gpu/drm/i915/display/hsw_ips.c
index c571c6e76d4a..34c5d28fc866 100644
--- a/drivers/gpu/drm/i915/display/hsw_ips.c
+++ b/drivers/gpu/drm/i915/display/hsw_ips.c
@@ -15,6 +15,7 @@
 
 static void hsw_ips_enable(const struct intel_crtc_state *crtc_state)
 {
+	struct intel_display *display = to_intel_display(crtc_state);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 	u32 val;
@@ -27,16 +28,16 @@ static void hsw_ips_enable(const struct intel_crtc_state *crtc_state)
 	 * This function is called from post_plane_update, which is run after
 	 * a vblank wait.
 	 */
-	drm_WARN_ON(&i915->drm,
+	drm_WARN_ON(display->drm,
 		    !(crtc_state->active_planes & ~BIT(PLANE_CURSOR)));
 
 	val = IPS_ENABLE;
 
-	if (i915->display.ips.false_color)
+	if (display->ips.false_color)
 		val |= IPS_FALSE_COLOR;
 
 	if (IS_BROADWELL(i915)) {
-		drm_WARN_ON(&i915->drm,
+		drm_WARN_ON(display->drm,
 			    snb_pcode_write(&i915->uncore, DISPLAY_IPS_CONTROL,
 					    val | IPS_PCODE_CONTROL));
 		/*
@@ -46,7 +47,7 @@ static void hsw_ips_enable(const struct intel_crtc_state *crtc_state)
 		 * so we need to just enable it and continue on.
 		 */
 	} else {
-		intel_de_write(i915, IPS_CTL, val);
+		intel_de_write(display, IPS_CTL, val);
 		/*
 		 * The bit only becomes 1 in the next vblank, so this wait here
 		 * is essentially intel_wait_for_vblank. If we don't have this
@@ -54,14 +55,15 @@ static void hsw_ips_enable(const struct intel_crtc_state *crtc_state)
 		 * the HW state readout code will complain that the expected
 		 * IPS_CTL value is not the one we read.
 		 */
-		if (intel_de_wait_for_set(i915, IPS_CTL, IPS_ENABLE, 50))
-			drm_err(&i915->drm,
+		if (intel_de_wait_for_set(display, IPS_CTL, IPS_ENABLE, 50))
+			drm_err(display->drm,
 				"Timed out waiting for IPS enable\n");
 	}
 }
 
 bool hsw_ips_disable(const struct intel_crtc_state *crtc_state)
 {
+	struct intel_display *display = to_intel_display(crtc_state);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 	bool need_vblank_wait = false;
@@ -70,19 +72,19 @@ bool hsw_ips_disable(const struct intel_crtc_state *crtc_state)
 		return need_vblank_wait;
 
 	if (IS_BROADWELL(i915)) {
-		drm_WARN_ON(&i915->drm,
+		drm_WARN_ON(display->drm,
 			    snb_pcode_write(&i915->uncore, DISPLAY_IPS_CONTROL, 0));
 		/*
 		 * Wait for PCODE to finish disabling IPS. The BSpec specified
 		 * 42ms timeout value leads to occasional timeouts so use 100ms
 		 * instead.
 		 */
-		if (intel_de_wait_for_clear(i915, IPS_CTL, IPS_ENABLE, 100))
-			drm_err(&i915->drm,
+		if (intel_de_wait_for_clear(display, IPS_CTL, IPS_ENABLE, 100))
+			drm_err(display->drm,
 				"Timed out waiting for IPS disable\n");
 	} else {
-		intel_de_write(i915, IPS_CTL, 0);
-		intel_de_posting_read(i915, IPS_CTL);
+		intel_de_write(display, IPS_CTL, 0);
+		intel_de_posting_read(display, IPS_CTL);
 	}
 
 	/* We need to wait for a vblank before we can disable the plane. */
@@ -188,6 +190,7 @@ bool hsw_crtc_supports_ips(struct intel_crtc *crtc)
 
 bool hsw_crtc_state_ips_capable(const struct intel_crtc_state *crtc_state)
 {
+	struct intel_display *display = to_intel_display(crtc_state);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 
@@ -195,7 +198,7 @@ bool hsw_crtc_state_ips_capable(const struct intel_crtc_state *crtc_state)
 	if (!hsw_crtc_supports_ips(crtc))
 		return false;
 
-	if (!i915->display.params.enable_ips)
+	if (!display->params.enable_ips)
 		return false;
 
 	if (crtc_state->pipe_bpp > 24)
@@ -209,7 +212,7 @@ bool hsw_crtc_state_ips_capable(const struct intel_crtc_state *crtc_state)
 	 * Should measure whether using a lower cdclk w/o IPS
 	 */
 	if (IS_BROADWELL(i915) &&
-	    crtc_state->pixel_rate > i915->display.cdclk.max_cdclk_freq * 95 / 100)
+	    crtc_state->pixel_rate > display->cdclk.max_cdclk_freq * 95 / 100)
 		return false;
 
 	return true;
@@ -259,6 +262,7 @@ int hsw_ips_compute_config(struct intel_atomic_state *state,
 
 void hsw_ips_get_config(struct intel_crtc_state *crtc_state)
 {
+	struct intel_display *display = to_intel_display(crtc_state);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 
@@ -266,7 +270,7 @@ void hsw_ips_get_config(struct intel_crtc_state *crtc_state)
 		return;
 
 	if (IS_HASWELL(i915)) {
-		crtc_state->ips_enabled = intel_de_read(i915, IPS_CTL) & IPS_ENABLE;
+		crtc_state->ips_enabled = intel_de_read(display, IPS_CTL) & IPS_ENABLE;
 	} else {
 		/*
 		 * We cannot readout IPS state on broadwell, set to
@@ -280,9 +284,9 @@ void hsw_ips_get_config(struct intel_crtc_state *crtc_state)
 static int hsw_ips_debugfs_false_color_get(void *data, u64 *val)
 {
 	struct intel_crtc *crtc = data;
-	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
+	struct intel_display *display = to_intel_display(crtc);
 
-	*val = i915->display.ips.false_color;
+	*val = display->ips.false_color;
 
 	return 0;
 }
@@ -290,7 +294,7 @@ static int hsw_ips_debugfs_false_color_get(void *data, u64 *val)
 static int hsw_ips_debugfs_false_color_set(void *data, u64 val)
 {
 	struct intel_crtc *crtc = data;
-	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
+	struct intel_display *display = to_intel_display(crtc);
 	struct intel_crtc_state *crtc_state;
 	int ret;
 
@@ -298,7 +302,7 @@ static int hsw_ips_debugfs_false_color_set(void *data, u64 val)
 	if (ret)
 		return ret;
 
-	i915->display.ips.false_color = val;
+	display->ips.false_color = val;
 
 	crtc_state = to_intel_crtc_state(crtc->base.state);
 
@@ -325,18 +329,19 @@ DEFINE_DEBUGFS_ATTRIBUTE(hsw_ips_debugfs_false_color_fops,
 static int hsw_ips_debugfs_status_show(struct seq_file *m, void *unused)
 {
 	struct intel_crtc *crtc = m->private;
+	struct intel_display *display = to_intel_display(crtc);
 	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 	intel_wakeref_t wakeref;
 
 	wakeref = intel_runtime_pm_get(&i915->runtime_pm);
 
 	seq_printf(m, "Enabled by kernel parameter: %s\n",
-		   str_yes_no(i915->display.params.enable_ips));
+		   str_yes_no(display->params.enable_ips));
 
-	if (DISPLAY_VER(i915) >= 8) {
+	if (DISPLAY_VER(display) >= 8) {
 		seq_puts(m, "Currently: unknown\n");
 	} else {
-		if (intel_de_read(i915, IPS_CTL) & IPS_ENABLE)
+		if (intel_de_read(display, IPS_CTL) & IPS_ENABLE)
 			seq_puts(m, "Currently: enabled\n");
 		else
 			seq_puts(m, "Currently: disabled\n");
-- 
2.39.5

