Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E7C4A30912
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Feb 2025 11:49:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B028410E659;
	Tue, 11 Feb 2025 10:49:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NaS/sEZy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A96B010E659;
 Tue, 11 Feb 2025 10:49:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739270954; x=1770806954;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=PyuZNF7oAMREEy+L3KGpBRrhrSBfPrPeHIr/0v4/hJQ=;
 b=NaS/sEZy+GewdQt68IhnNk864QoC4UXAShB/kNgONVPAPDBpIbGfC+tp
 BnxEdRxxZdEjo3Q7pHZKvK9jCc0IJokYxn8U1S0yi1+MdsoLnZwdwCnVs
 k3GaHpbtpvbvdSKs8qUNd72l0DHW6ddowiZq7xPSgkLjzg2ifSt71KD9j
 9obAYJKN+T3XwnGqcJCCJ/Y9+sQhNbtNLlM6VYt1v2E2JUdGboBSyPQw2
 uq85HrIjz36w/SH13Ry7lSLeDAXI3hzWBoWltEZe9PNEc30Jz8cEmhfw9
 5fzbK4TbQ9wSUZsMrzo+0FskCVu52wCic+LnEuRXlTmcvZDe+r+vp/zgN w==;
X-CSE-ConnectionGUID: zR7XjRv9Su2d1CabaC84LA==
X-CSE-MsgGUID: EUmSMiJvScSfB1gf9KLA0w==
X-IronPort-AV: E=McAfee;i="6700,10204,11341"; a="57293174"
X-IronPort-AV: E=Sophos;i="6.13,277,1732608000"; d="scan'208";a="57293174"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2025 02:49:14 -0800
X-CSE-ConnectionGUID: Tk8GixfyQYa/KWqEJxgeWw==
X-CSE-MsgGUID: NvC70woDRJGKuXjH+6Beew==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,277,1732608000"; d="scan'208";a="112991374"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by fmviesa010.fm.intel.com with ESMTP; 11 Feb 2025 02:49:12 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, jani.nikula@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 4/9] drm/i915/dpll: Use intel_display for dpll dump and
 compare hw state
Date: Tue, 11 Feb 2025 16:18:52 +0530
Message-Id: <20250211104857.3501566-5-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250211104857.3501566-1-suraj.kandpal@intel.com>
References: <20250211104857.3501566-1-suraj.kandpal@intel.com>
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

Lets use intel_display for dpll dump and compare hw state. This also
helps elimanate drm_i915_private dependency from i915_shared_dplls_info
in display_debug_fs.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 .../gpu/drm/i915/display/intel_crtc_state_dump.c |  3 ++-
 drivers/gpu/drm/i915/display/intel_display.c     |  8 ++++----
 .../gpu/drm/i915/display/intel_display_debugfs.c |  3 +--
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c    | 16 ++++++++--------
 drivers/gpu/drm/i915/display/intel_dpll_mgr.h    |  4 ++--
 5 files changed, 17 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
index ecd0d9853c60..599ddce96371 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
@@ -176,6 +176,7 @@ void intel_crtc_state_dump(const struct intel_crtc_state *pipe_config,
 			   struct intel_atomic_state *state,
 			   const char *context)
 {
+	struct intel_display *display = to_intel_display(pipe_config);
 	struct intel_crtc *crtc = to_intel_crtc(pipe_config->uapi.crtc);
 	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 	const struct intel_plane_state *plane_state;
@@ -340,7 +341,7 @@ void intel_crtc_state_dump(const struct intel_crtc_state *pipe_config,
 		   pipe_config->ips_enabled, pipe_config->double_wide,
 		   pipe_config->has_drrs);
 
-	intel_dpll_dump_hw_state(i915, &p, &pipe_config->dpll_hw_state);
+	intel_dpll_dump_hw_state(display, &p, &pipe_config->dpll_hw_state);
 
 	if (IS_CHERRYVIEW(i915))
 		drm_printf(&p, "cgm_mode: 0x%x gamma_mode: 0x%x gamma_enable: %d csc_enable: %d\n",
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 9f8a8c94cf4c..5f4b1d8eed3e 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -5348,14 +5348,14 @@ pipe_config_pll_mismatch(struct drm_printer *p, bool fastset,
 			 const struct intel_dpll_hw_state *a,
 			 const struct intel_dpll_hw_state *b)
 {
-	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
+	struct intel_display *display = to_intel_display(crtc);
 
 	pipe_config_mismatch(p, fastset, crtc, name, " "); /* stupid -Werror=format-zero-length */
 
 	drm_printf(p, "expected:\n");
-	intel_dpll_dump_hw_state(i915, p, a);
+	intel_dpll_dump_hw_state(display, p, a);
 	drm_printf(p, "found:\n");
-	intel_dpll_dump_hw_state(i915, p, b);
+	intel_dpll_dump_hw_state(display, p, b);
 }
 
 static void
@@ -5495,7 +5495,7 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 } while (0)
 
 #define PIPE_CONF_CHECK_PLL(name) do { \
-	if (!intel_dpll_compare_hw_state(dev_priv, &current_config->name, \
+	if (!intel_dpll_compare_hw_state(display, &current_config->name, \
 					 &pipe_config->name)) { \
 		pipe_config_pll_mismatch(&p, fastset, crtc, __stringify(name), \
 					 &current_config->name, \
diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index 87e6f4000101..970b8078db8b 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -630,7 +630,6 @@ static int i915_display_capabilities(struct seq_file *m, void *unused)
 
 static int i915_shared_dplls_info(struct seq_file *m, void *unused)
 {
-	struct drm_i915_private *dev_priv = node_to_i915(m->private);
 	struct intel_display *display = node_to_intel_display(m->private);
 	struct drm_printer p = drm_seq_file_printer(m);
 	struct intel_shared_dpll *pll;
@@ -649,7 +648,7 @@ static int i915_shared_dplls_info(struct seq_file *m, void *unused)
 			   pll->state.pipe_mask, pll->active_mask,
 			   str_yes_no(pll->on));
 		drm_printf(&p, " tracked hardware state:\n");
-		intel_dpll_dump_hw_state(dev_priv, &p, &pll->state.hw_state);
+		intel_dpll_dump_hw_state(display, &p, &pll->state.hw_state);
 	}
 	drm_modeset_unlock_all(display->drm);
 
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index 171d16e91c61..ee4e263ce999 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -4592,18 +4592,18 @@ void intel_dpll_sanitize_state(struct drm_i915_private *i915)
 
 /**
  * intel_dpll_dump_hw_state - dump hw_state
- * @i915: i915 drm device
+ * @display: intel_display structure
  * @p: where to print the state to
  * @dpll_hw_state: hw state to be dumped
  *
  * Dumo out the relevant values in @dpll_hw_state.
  */
-void intel_dpll_dump_hw_state(struct drm_i915_private *i915,
+void intel_dpll_dump_hw_state(struct intel_display *display,
 			      struct drm_printer *p,
 			      const struct intel_dpll_hw_state *dpll_hw_state)
 {
-	if (i915->display.dpll.mgr) {
-		i915->display.dpll.mgr->dump_hw_state(p, dpll_hw_state);
+	if (display->dpll.mgr) {
+		display->dpll.mgr->dump_hw_state(p, dpll_hw_state);
 	} else {
 		/* fallback for platforms that don't use the shared dpll
 		 * infrastructure
@@ -4614,7 +4614,7 @@ void intel_dpll_dump_hw_state(struct drm_i915_private *i915,
 
 /**
  * intel_dpll_compare_hw_state - compare the two states
- * @i915: i915 drm device
+ * @display: intel_display structure
  * @a: first DPLL hw state
  * @b: second DPLL hw state
  *
@@ -4622,12 +4622,12 @@ void intel_dpll_dump_hw_state(struct drm_i915_private *i915,
  *
  * Returns: true if the states are equal, false if the differ
  */
-bool intel_dpll_compare_hw_state(struct drm_i915_private *i915,
+bool intel_dpll_compare_hw_state(struct intel_display *display,
 				 const struct intel_dpll_hw_state *a,
 				 const struct intel_dpll_hw_state *b)
 {
-	if (i915->display.dpll.mgr) {
-		return i915->display.dpll.mgr->compare_hw_state(a, b);
+	if (display->dpll.mgr) {
+		return display->dpll.mgr->compare_hw_state(a, b);
 	} else {
 		/* fallback for platforms that don't use the shared dpll
 		 * infrastructure
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
index 382bdf8f0b65..42379494f347 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
@@ -427,10 +427,10 @@ void intel_dpll_update_ref_clks(struct drm_i915_private *i915);
 void intel_dpll_readout_hw_state(struct drm_i915_private *i915);
 void intel_dpll_sanitize_state(struct drm_i915_private *i915);
 
-void intel_dpll_dump_hw_state(struct drm_i915_private *i915,
+void intel_dpll_dump_hw_state(struct intel_display *display,
 			      struct drm_printer *p,
 			      const struct intel_dpll_hw_state *dpll_hw_state);
-bool intel_dpll_compare_hw_state(struct drm_i915_private *i915,
+bool intel_dpll_compare_hw_state(struct intel_display *display,
 				 const struct intel_dpll_hw_state *a,
 				 const struct intel_dpll_hw_state *b);
 enum intel_dpll_id icl_tc_port_to_pll_id(enum tc_port tc_port);
-- 
2.34.1

