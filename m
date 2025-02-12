Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 83B67A32036
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Feb 2025 08:46:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F3B4910E7D8;
	Wed, 12 Feb 2025 07:45:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="B4cposjP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D97F710E7D8;
 Wed, 12 Feb 2025 07:45:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739346359; x=1770882359;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=SDIQ9sv62lBIFT2CSD8zrEEGHo2ARDQtwyUbn84e+co=;
 b=B4cposjP3/kH9qwu3kRFaxR/rgbM6aUzMlFkF1VPJWR/qDJ5YXCa1KHM
 AIAMm3hkmcfi0FaoE9scMzrhLkpf5OsDSugNTPv5kW7tFLFOEi9OCB+24
 MmrdpN06593p4P4m1+erEM4FgcHTY/EjhxFmL1v7qQSAAyDh9o3YLRqJ4
 NHq7IwM65QxfFZ6t4GQdW4A+FMehcFhclMCv21e0DLOC/UCQpEzzpn8af
 Ty41HCPK0gI/5IbVBc4oXARr5EtG8VFfcn00Igk3Ym4C2+c9JwQiLX3nk
 KKURhDYT6l3etdwxMHPIc0X4rUXQIQrufXnA6Mo0JFDsPvCXTWyj0wi9I w==;
X-CSE-ConnectionGUID: PgF3tnFpQS+kDQbhGcEc+w==
X-CSE-MsgGUID: PnXKA6rFQxCA5ATpjHMuJQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11342"; a="39906734"
X-IronPort-AV: E=Sophos;i="6.13,279,1732608000"; d="scan'208";a="39906734"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2025 23:45:59 -0800
X-CSE-ConnectionGUID: en+4nWoqTt+NYY8YrY57bg==
X-CSE-MsgGUID: Xg9BcFqwTZ+IjzrQOFVc6w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="112601094"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by orviesa010.jf.intel.com with ESMTP; 11 Feb 2025 23:45:57 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: Suraj Kandpal <suraj.kandpal@intel.com>,
 Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH 3/8] drm/i915/dpll: Use intel_display for dpll dump and
 compare hw state
Date: Wed, 12 Feb 2025 13:15:37 +0530
Message-Id: <20250212074542.3569452-4-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250212074542.3569452-1-suraj.kandpal@intel.com>
References: <20250212074542.3569452-1-suraj.kandpal@intel.com>
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

Let's use intel_display for dpll dump and compare hw state. This also
helps elimanate drm_i915_private dependency from i915_shared_dplls_info
in intel_display_debugfs.c

--v2
-Fix commit message [Jani]

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
Reviewed-by: Jani Nikula <jani.nikula@intel.com>
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
index 2d7ac53bb924..571a61b770b1 100644
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
index a250d4b4d11f..a646560f4f5b 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -631,7 +631,6 @@ static int i915_display_capabilities(struct seq_file *m, void *unused)
 
 static int i915_shared_dplls_info(struct seq_file *m, void *unused)
 {
-	struct drm_i915_private *dev_priv = node_to_i915(m->private);
 	struct intel_display *display = node_to_intel_display(m->private);
 	struct drm_printer p = drm_seq_file_printer(m);
 	struct intel_shared_dpll *pll;
@@ -650,7 +649,7 @@ static int i915_shared_dplls_info(struct seq_file *m, void *unused)
 			   pll->state.pipe_mask, pll->active_mask,
 			   str_yes_no(pll->on));
 		drm_printf(&p, " tracked hardware state:\n");
-		intel_dpll_dump_hw_state(dev_priv, &p, &pll->state.hw_state);
+		intel_dpll_dump_hw_state(display, &p, &pll->state.hw_state);
 	}
 	drm_modeset_unlock_all(display->drm);
 
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index f79c16e6493c..f295d86070e9 100644
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

