Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 66BF74C5239
	for <lists+intel-gfx@lfdr.de>; Sat, 26 Feb 2022 00:45:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6A15710E225;
	Fri, 25 Feb 2022 23:45:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 068EE10E21F;
 Fri, 25 Feb 2022 23:45:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645832733; x=1677368733;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=5HCALl4xxfeGpa01iQjgzCb4cHb8jLk1obK0q+6bqtY=;
 b=SFiQPmFxx0tuQ6wa0G0BSaOg7PBv84/zpjQIcjsg54XJqCk3vYKuEKZq
 aoDrU4EXFOGQN/NbtFRSsyzjjHQoJb677PzraeQJ7PH2BQQZNCkAdUAAc
 c4R+CJBrdw+7wLPcn/pvQUiQTufm35w4v5ba5sbfPeL51kGK8sidOCO3y
 mN/giNY1WScVcJqD066aBThMnVQWtXXjN+pK04A+gSCFHDMgjNWI5y5Dx
 8vSLW8rnlWapgR9xKifWFn0e7B/ut9vxrSJy9iJceNW5sAiL14vwcI2vs
 6cFs9cZVdVZVvCeHPEs+2450YGRjqh4FXcb7TPC66dORZsWi1nPylZ+Up Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10269"; a="313322599"
X-IronPort-AV: E=Sophos;i="5.90,137,1643702400"; d="scan'208";a="313322599"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2022 15:45:32 -0800
X-IronPort-AV: E=Sophos;i="5.90,137,1643702400"; d="scan'208";a="544202762"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.202])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2022 15:45:31 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Fri, 25 Feb 2022 15:46:28 -0800
Message-Id: <20220225234631.3725943-1-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI 1/4] drm/i915: Use str_yes_no()
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

Remove the local yesno() implementation and adopt the str_yes_no() from
linux/string_helpers.h.

Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
Acked-by: Daniel Vetter <daniel.vetter@ffwll.ch>
Acked-by: Jani Nikula <jani.nikula@intel.com>
Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c  | 23 +++----
 .../drm/i915/display/intel_display_debugfs.c  | 65 +++++++++++--------
 .../drm/i915/display/intel_display_trace.h    |  6 +-
 drivers/gpu/drm/i915/display/intel_dp.c       | 12 ++--
 drivers/gpu/drm/i915/display/intel_fbc.c      |  4 +-
 drivers/gpu/drm/i915/display/intel_hdmi.c     |  3 +-
 drivers/gpu/drm/i915/display/intel_sprite.c   |  6 +-
 .../gpu/drm/i915/gem/selftests/huge_pages.c   |  9 +--
 .../drm/i915/gem/selftests/i915_gem_context.c |  7 +-
 drivers/gpu/drm/i915/gt/intel_engine_cs.c     |  9 +--
 .../drm/i915/gt/intel_execlists_submission.c  |  7 +-
 drivers/gpu/drm/i915/gt/intel_gt_pm.c         |  3 +-
 drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c | 52 ++++++++-------
 drivers/gpu/drm/i915/gt/intel_reset.c         |  3 +-
 drivers/gpu/drm/i915/gt/intel_rps.c           | 13 ++--
 drivers/gpu/drm/i915/gt/intel_sseu.c          |  9 ++-
 drivers/gpu/drm/i915/gt/intel_sseu_debugfs.c  | 10 +--
 drivers/gpu/drm/i915/gt/selftest_timeline.c   |  3 +-
 drivers/gpu/drm/i915/gt/uc/intel_guc_log.c    |  3 +-
 drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c   |  3 +-
 drivers/gpu/drm/i915/gt/uc/intel_uc.c         | 10 +--
 drivers/gpu/drm/i915/gt/uc/intel_uc_debugfs.c | 20 +++---
 drivers/gpu/drm/i915/i915_debugfs.c           | 15 +++--
 drivers/gpu/drm/i915/i915_gpu_error.c         |  9 +--
 drivers/gpu/drm/i915/i915_params.c            |  5 +-
 drivers/gpu/drm/i915/i915_utils.h             |  5 --
 drivers/gpu/drm/i915/intel_device_info.c      |  8 ++-
 drivers/gpu/drm/i915/intel_dram.c             | 10 +--
 drivers/gpu/drm/i915/intel_pm.c               | 10 +--
 drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.c  |  4 +-
 drivers/gpu/drm/i915/selftests/i915_active.c  |  3 +-
 31 files changed, 201 insertions(+), 148 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index b8d511360f9f..938354dc6f16 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -32,6 +32,7 @@
 #include <linux/module.h>
 #include <linux/dma-resv.h>
 #include <linux/slab.h>
+#include <linux/string_helpers.h>
 #include <linux/vga_switcheroo.h>
 
 #include <drm/drm_atomic.h>
@@ -2884,7 +2885,7 @@ static int intel_crtc_compute_pipe_mode(struct intel_crtc_state *crtc_state)
 			    "[CRTC:%d:%s] requested pixel clock (%d kHz) too high (max: %d kHz, double wide: %s)\n",
 			    crtc->base.base.id, crtc->base.name,
 			    pipe_mode->crtc_clock, clock_limit,
-			    yesno(crtc_state->double_wide));
+			    str_yes_no(crtc_state->double_wide));
 		return -EINVAL;
 	}
 
@@ -5261,7 +5262,7 @@ static void intel_dump_plane_state(const struct intel_plane_state *plane_state)
 		drm_dbg_kms(&i915->drm,
 			    "[PLANE:%d:%s] fb: [NOFB], visible: %s\n",
 			    plane->base.base.id, plane->base.name,
-			    yesno(plane_state->uapi.visible));
+			    str_yes_no(plane_state->uapi.visible));
 		return;
 	}
 
@@ -5269,7 +5270,7 @@ static void intel_dump_plane_state(const struct intel_plane_state *plane_state)
 		    "[PLANE:%d:%s] fb: [FB:%d] %ux%u format = %p4cc modifier = 0x%llx, visible: %s\n",
 		    plane->base.base.id, plane->base.name,
 		    fb->base.id, fb->width, fb->height, &fb->format->format,
-		    fb->modifier, yesno(plane_state->uapi.visible));
+		    fb->modifier, str_yes_no(plane_state->uapi.visible));
 	drm_dbg_kms(&i915->drm, "\trotation: 0x%x, scaler: %d\n",
 		    plane_state->hw.rotation, plane_state->scaler_id);
 	if (plane_state->uapi.visible)
@@ -5292,7 +5293,7 @@ static void intel_dump_pipe_config(const struct intel_crtc_state *pipe_config,
 
 	drm_dbg_kms(&dev_priv->drm, "[CRTC:%d:%s] enable: %s %s\n",
 		    crtc->base.base.id, crtc->base.name,
-		    yesno(pipe_config->hw.enable), context);
+		    str_yes_no(pipe_config->hw.enable), context);
 
 	if (!pipe_config->hw.enable)
 		goto dump_planes;
@@ -5300,7 +5301,7 @@ static void intel_dump_pipe_config(const struct intel_crtc_state *pipe_config,
 	snprintf_output_types(buf, sizeof(buf), pipe_config->output_types);
 	drm_dbg_kms(&dev_priv->drm,
 		    "active: %s, output_types: %s (0x%x), output format: %s\n",
-		    yesno(pipe_config->hw.active),
+		    str_yes_no(pipe_config->hw.active),
 		    buf, pipe_config->output_types,
 		    output_formats(pipe_config->output_format));
 
@@ -5370,7 +5371,7 @@ static void intel_dump_pipe_config(const struct intel_crtc_state *pipe_config,
 		intel_dump_dp_vsc_sdp(dev_priv, &pipe_config->infoframes.vsc);
 
 	drm_dbg_kms(&dev_priv->drm, "vrr: %s, vmin: %d, vmax: %d, pipeline full: %d, guardband: %d flipline: %d, vmin vblank: %d, vmax vblank: %d\n",
-		    yesno(pipe_config->vrr.enable),
+		    str_yes_no(pipe_config->vrr.enable),
 		    pipe_config->vrr.vmin, pipe_config->vrr.vmax,
 		    pipe_config->vrr.pipeline_full, pipe_config->vrr.guardband,
 		    pipe_config->vrr.flipline,
@@ -5412,7 +5413,7 @@ static void intel_dump_pipe_config(const struct intel_crtc_state *pipe_config,
 			    "pch pfit: " DRM_RECT_FMT ", %s, force thru: %s\n",
 			    DRM_RECT_ARG(&pipe_config->pch_pfit.dst),
 			    enableddisabled(pipe_config->pch_pfit.enabled),
-			    yesno(pipe_config->pch_pfit.force_thru));
+			    str_yes_no(pipe_config->pch_pfit.force_thru));
 
 	drm_dbg_kms(&dev_priv->drm, "ips: %i, double wide: %i\n",
 		    pipe_config->ips_enabled, pipe_config->double_wide);
@@ -6058,8 +6059,8 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 	if (current_config->name != pipe_config->name) { \
 		pipe_config_mismatch(fastset, crtc,  __stringify(name), \
 				     "(expected %s, found %s)", \
-				     yesno(current_config->name), \
-				     yesno(pipe_config->name)); \
+				     str_yes_no(current_config->name), \
+				     str_yes_no(pipe_config->name)); \
 		ret = false; \
 	} \
 } while (0)
@@ -6075,8 +6076,8 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 	} else { \
 		pipe_config_mismatch(fastset, crtc, __stringify(name), \
 				     "unable to verify whether state matches exactly, forcing modeset (expected %s, found %s)", \
-				     yesno(current_config->name), \
-				     yesno(pipe_config->name)); \
+				     str_yes_no(current_config->name), \
+				     str_yes_no(pipe_config->name)); \
 		ret = false; \
 	} \
 } while (0)
diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index ffe6822d7414..c4dd39ff60bc 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -3,6 +3,8 @@
  * Copyright © 2020 Intel Corporation
  */
 
+#include <linux/string_helpers.h>
+
 #include <drm/drm_debugfs.h>
 #include <drm/drm_fourcc.h>
 
@@ -52,7 +54,7 @@ static int i915_ips_status(struct seq_file *m, void *unused)
 	wakeref = intel_runtime_pm_get(&dev_priv->runtime_pm);
 
 	seq_printf(m, "Enabled by kernel parameter: %s\n",
-		   yesno(dev_priv->params.enable_ips));
+		   str_yes_no(dev_priv->params.enable_ips));
 
 	if (DISPLAY_VER(dev_priv) >= 8) {
 		seq_puts(m, "Currently: unknown\n");
@@ -260,7 +262,7 @@ static int intel_psr_status(struct seq_file *m, struct intel_dp *intel_dp)
 	bool enabled;
 	u32 val;
 
-	seq_printf(m, "Sink support: %s", yesno(psr->sink_support));
+	seq_printf(m, "Sink support: %s", str_yes_no(psr->sink_support));
 	if (psr->sink_support)
 		seq_printf(m, " [0x%02x]", intel_dp->psr_dpcd[0]);
 	seq_puts(m, "\n");
@@ -279,7 +281,7 @@ static int intel_psr_status(struct seq_file *m, struct intel_dp *intel_dp)
 
 	if (!psr->enabled) {
 		seq_printf(m, "PSR sink not reliable: %s\n",
-			   yesno(psr->sink_not_reliable));
+			   str_yes_no(psr->sink_not_reliable));
 
 		goto unlock;
 	}
@@ -446,13 +448,17 @@ static int i915_dmc_info(struct seq_file *m, void *unused)
 
 	wakeref = intel_runtime_pm_get(&dev_priv->runtime_pm);
 
-	seq_printf(m, "fw loaded: %s\n", yesno(intel_dmc_has_payload(dev_priv)));
+	seq_printf(m, "fw loaded: %s\n",
+		   str_yes_no(intel_dmc_has_payload(dev_priv)));
 	seq_printf(m, "path: %s\n", dmc->fw_path);
 	seq_printf(m, "Pipe A fw support: %s\n",
-		   yesno(GRAPHICS_VER(dev_priv) >= 12));
-	seq_printf(m, "Pipe A fw loaded: %s\n", yesno(dmc->dmc_info[DMC_FW_PIPEA].payload));
-	seq_printf(m, "Pipe B fw support: %s\n", yesno(IS_ALDERLAKE_P(dev_priv)));
-	seq_printf(m, "Pipe B fw loaded: %s\n", yesno(dmc->dmc_info[DMC_FW_PIPEB].payload));
+		   str_yes_no(GRAPHICS_VER(dev_priv) >= 12));
+	seq_printf(m, "Pipe A fw loaded: %s\n",
+		   str_yes_no(dmc->dmc_info[DMC_FW_PIPEA].payload));
+	seq_printf(m, "Pipe B fw support: %s\n",
+		   str_yes_no(IS_ALDERLAKE_P(dev_priv)));
+	seq_printf(m, "Pipe B fw loaded: %s\n",
+		   str_yes_no(dmc->dmc_info[DMC_FW_PIPEB].payload));
 
 	if (!intel_dmc_has_payload(dev_priv))
 		goto out;
@@ -577,7 +583,8 @@ static void intel_dp_info(struct seq_file *m,
 	const struct drm_property_blob *edid = intel_connector->base.edid_blob_ptr;
 
 	seq_printf(m, "\tDPCD rev: %x\n", intel_dp->dpcd[DP_DPCD_REV]);
-	seq_printf(m, "\taudio support: %s\n", yesno(intel_dp->has_audio));
+	seq_printf(m, "\taudio support: %s\n",
+		   str_yes_no(intel_dp->has_audio));
 	if (intel_connector->base.connector_type == DRM_MODE_CONNECTOR_eDP)
 		intel_panel_info(m, &intel_connector->panel);
 
@@ -590,7 +597,7 @@ static void intel_dp_mst_info(struct seq_file *m,
 {
 	bool has_audio = intel_connector->port->has_audio;
 
-	seq_printf(m, "\taudio support: %s\n", yesno(has_audio));
+	seq_printf(m, "\taudio support: %s\n", str_yes_no(has_audio));
 }
 
 static void intel_hdmi_info(struct seq_file *m,
@@ -599,7 +606,8 @@ static void intel_hdmi_info(struct seq_file *m,
 	struct intel_encoder *intel_encoder = intel_attached_encoder(intel_connector);
 	struct intel_hdmi *intel_hdmi = enc_to_intel_hdmi(intel_encoder);
 
-	seq_printf(m, "\taudio support: %s\n", yesno(intel_hdmi->has_audio));
+	seq_printf(m, "\taudio support: %s\n",
+		   str_yes_no(intel_hdmi->has_audio));
 }
 
 static void intel_lvds_info(struct seq_file *m,
@@ -757,7 +765,7 @@ static void intel_plane_hw_info(struct seq_file *m, struct intel_plane *plane)
 		   DRM_RECT_FP_FMT ", dst=" DRM_RECT_FMT ", rotation=%s\n",
 		   fb->base.id, &fb->format->format,
 		   fb->modifier, fb->width, fb->height,
-		   yesno(plane_state->uapi.visible),
+		   str_yes_no(plane_state->uapi.visible),
 		   DRM_RECT_FP_ARG(&plane_state->uapi.src),
 		   DRM_RECT_ARG(&plane_state->uapi.dst),
 		   rot_str);
@@ -796,7 +804,7 @@ static void intel_scaler_info(struct seq_file *m, struct intel_crtc *crtc)
 				&crtc_state->scaler_state.scalers[i];
 
 			seq_printf(m, ", scalers[%d]: use=%s, mode=%x",
-				   i, yesno(sc->in_use), sc->mode);
+				   i, str_yes_no(sc->in_use), sc->mode);
 		}
 		seq_puts(m, "\n");
 	} else {
@@ -919,12 +927,12 @@ static void intel_crtc_info(struct seq_file *m, struct intel_crtc *crtc)
 		   crtc->base.base.id, crtc->base.name);
 
 	seq_printf(m, "\tuapi: enable=%s, active=%s, mode=" DRM_MODE_FMT "\n",
-		   yesno(crtc_state->uapi.enable),
-		   yesno(crtc_state->uapi.active),
+		   str_yes_no(crtc_state->uapi.enable),
+		   str_yes_no(crtc_state->uapi.active),
 		   DRM_MODE_ARG(&crtc_state->uapi.mode));
 
 	seq_printf(m, "\thw: enable=%s, active=%s\n",
-		   yesno(crtc_state->hw.enable), yesno(crtc_state->hw.active));
+		   str_yes_no(crtc_state->hw.enable), str_yes_no(crtc_state->hw.active));
 	seq_printf(m, "\tadjusted_mode=" DRM_MODE_FMT "\n",
 		   DRM_MODE_ARG(&crtc_state->hw.adjusted_mode));
 	seq_printf(m, "\tpipe__mode=" DRM_MODE_FMT "\n",
@@ -932,7 +940,7 @@ static void intel_crtc_info(struct seq_file *m, struct intel_crtc *crtc)
 
 	seq_printf(m, "\tpipe src size=%dx%d, dither=%s, bpp=%d\n",
 		   crtc_state->pipe_src_w, crtc_state->pipe_src_h,
-		   yesno(crtc_state->dither), crtc_state->pipe_bpp);
+		   str_yes_no(crtc_state->dither), crtc_state->pipe_bpp);
 
 	intel_scaler_info(m, crtc);
 
@@ -948,8 +956,8 @@ static void intel_crtc_info(struct seq_file *m, struct intel_crtc *crtc)
 	intel_plane_info(m, crtc);
 
 	seq_printf(m, "\tunderrun reporting: cpu=%s pch=%s\n",
-		   yesno(!crtc->cpu_fifo_underrun_disabled),
-		   yesno(!crtc->pch_fifo_underrun_disabled));
+		   str_yes_no(!crtc->cpu_fifo_underrun_disabled),
+		   str_yes_no(!crtc->pch_fifo_underrun_disabled));
 
 	crtc_updates_info(m, crtc, "\t");
 }
@@ -1005,7 +1013,8 @@ static int i915_shared_dplls_info(struct seq_file *m, void *unused)
 		seq_printf(m, "DPLL%i: %s, id: %i\n", i, pll->info->name,
 			   pll->info->id);
 		seq_printf(m, " pipe_mask: 0x%x, active: 0x%x, on: %s\n",
-			   pll->state.pipe_mask, pll->active_mask, yesno(pll->on));
+			   pll->state.pipe_mask, pll->active_mask,
+			   str_yes_no(pll->on));
 		seq_printf(m, " tracked hardware state:\n");
 		seq_printf(m, " dpll:    0x%08x\n", pll->state.hw_state.dpll);
 		seq_printf(m, " dpll_md: 0x%08x\n",
@@ -1047,7 +1056,7 @@ static int i915_ipc_status_show(struct seq_file *m, void *data)
 	struct drm_i915_private *dev_priv = m->private;
 
 	seq_printf(m, "Isochronous Priority Control: %s\n",
-			yesno(dev_priv->ipc_enabled));
+			str_yes_no(dev_priv->ipc_enabled));
 	return 0;
 }
 
@@ -1156,7 +1165,7 @@ static void drrs_status_per_crtc(struct seq_file *m,
 		    drrs->type == SEAMLESS_DRRS_SUPPORT)
 			supported = true;
 
-		seq_printf(m, "\tDRRS Supported: %s\n", yesno(supported));
+		seq_printf(m, "\tDRRS Supported: %s\n", str_yes_no(supported));
 	}
 	drm_connector_list_iter_end(&conn_iter);
 
@@ -1740,7 +1749,7 @@ static int i915_hpd_storm_ctl_show(struct seq_file *m, void *data)
 
 	seq_printf(m, "Threshold: %d\n", hotplug->hpd_storm_threshold);
 	seq_printf(m, "Detected: %s\n",
-		   yesno(delayed_work_pending(&hotplug->reenable_work)));
+		   str_yes_no(delayed_work_pending(&hotplug->reenable_work)));
 
 	return 0;
 }
@@ -1814,7 +1823,7 @@ static int i915_hpd_short_storm_ctl_show(struct seq_file *m, void *data)
 	struct drm_i915_private *dev_priv = m->private;
 
 	seq_printf(m, "Enabled: %s\n",
-		   yesno(dev_priv->hotplug.hpd_short_storm_enabled));
+		   str_yes_no(dev_priv->hotplug.hpd_short_storm_enabled));
 
 	return 0;
 }
@@ -2209,14 +2218,14 @@ static int i915_dsc_fec_support_show(struct seq_file *m, void *data)
 		intel_dp = intel_attached_dp(to_intel_connector(connector));
 		crtc_state = to_intel_crtc_state(crtc->state);
 		seq_printf(m, "DSC_Enabled: %s\n",
-			   yesno(crtc_state->dsc.compression_enable));
+			   str_yes_no(crtc_state->dsc.compression_enable));
 		seq_printf(m, "DSC_Sink_Support: %s\n",
-			   yesno(drm_dp_sink_supports_dsc(intel_dp->dsc_dpcd)));
+			   str_yes_no(drm_dp_sink_supports_dsc(intel_dp->dsc_dpcd)));
 		seq_printf(m, "Force_DSC_Enable: %s\n",
-			   yesno(intel_dp->force_dsc_en));
+			   str_yes_no(intel_dp->force_dsc_en));
 		if (!intel_dp_is_edp(intel_dp))
 			seq_printf(m, "FEC_Sink_Support: %s\n",
-				   yesno(drm_dp_sink_supports_fec(intel_dp->fec_capable)));
+				   str_yes_no(drm_dp_sink_supports_fec(intel_dp->fec_capable)));
 	} while (try_again);
 
 	drm_modeset_drop_locks(&ctx);
diff --git a/drivers/gpu/drm/i915/display/intel_display_trace.h b/drivers/gpu/drm/i915/display/intel_display_trace.h
index f05f0f9b5103..dcdd242fffd9 100644
--- a/drivers/gpu/drm/i915/display/intel_display_trace.h
+++ b/drivers/gpu/drm/i915/display/intel_display_trace.h
@@ -210,9 +210,9 @@ TRACE_EVENT(g4x_wm,
 	    TP_printk("pipe %c, frame=%u, scanline=%u, wm %d/%d/%d, sr %s/%d/%d/%d, hpll %s/%d/%d/%d, fbc %s",
 		      pipe_name(__entry->pipe), __entry->frame, __entry->scanline,
 		      __entry->primary, __entry->sprite, __entry->cursor,
-		      yesno(__entry->cxsr), __entry->sr_plane, __entry->sr_cursor, __entry->sr_fbc,
-		      yesno(__entry->hpll), __entry->hpll_plane, __entry->hpll_cursor, __entry->hpll_fbc,
-		      yesno(__entry->fbc))
+		      str_yes_no(__entry->cxsr), __entry->sr_plane, __entry->sr_cursor, __entry->sr_fbc,
+		      str_yes_no(__entry->hpll), __entry->hpll_plane, __entry->hpll_cursor, __entry->hpll_fbc,
+		      str_yes_no(__entry->fbc))
 );
 
 TRACE_EVENT(vlv_wm,
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 1046e7fe310a..6ffa5b28b976 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -29,6 +29,7 @@
 #include <linux/i2c.h>
 #include <linux/notifier.h>
 #include <linux/slab.h>
+#include <linux/string_helpers.h>
 #include <linux/timekeeping.h>
 #include <linux/types.h>
 
@@ -2787,8 +2788,9 @@ intel_dp_configure_mst(struct intel_dp *intel_dp)
 	drm_dbg_kms(&i915->drm,
 		    "[ENCODER:%d:%s] MST support: port: %s, sink: %s, modparam: %s\n",
 		    encoder->base.base.id, encoder->base.name,
-		    yesno(intel_dp_mst_source_support(intel_dp)), yesno(sink_can_mst),
-		    yesno(i915->params.enable_dp_mst));
+		    str_yes_no(intel_dp_mst_source_support(intel_dp)),
+		    str_yes_no(sink_can_mst),
+		    str_yes_no(i915->params.enable_dp_mst));
 
 	if (!intel_dp_mst_source_support(intel_dp))
 		return;
@@ -4375,9 +4377,9 @@ intel_dp_update_420(struct intel_dp *intel_dp)
 	drm_dbg_kms(&i915->drm,
 		    "[CONNECTOR:%d:%s] RGB->YcbCr conversion? %s, YCbCr 4:2:0 allowed? %s, YCbCr 4:4:4->4:2:0 conversion? %s\n",
 		    connector->base.base.id, connector->base.name,
-		    yesno(intel_dp->dfp.rgb_to_ycbcr),
-		    yesno(connector->base.ycbcr_420_allowed),
-		    yesno(intel_dp->dfp.ycbcr_444_to_420));
+		    str_yes_no(intel_dp->dfp.rgb_to_ycbcr),
+		    str_yes_no(connector->base.ycbcr_420_allowed),
+		    str_yes_no(intel_dp->dfp.ycbcr_444_to_420));
 }
 
 static void
diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index f7dca327c294..142280b6ce6d 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -38,6 +38,8 @@
  * forcibly disable it to allow proper screen updates.
  */
 
+#include <linux/string_helpers.h>
+
 #include <drm/drm_fourcc.h>
 
 #include "i915_drv.h"
@@ -1744,7 +1746,7 @@ static int intel_fbc_debugfs_status_show(struct seq_file *m, void *unused)
 	if (fbc->active) {
 		seq_puts(m, "FBC enabled\n");
 		seq_printf(m, "Compressing: %s\n",
-			   yesno(intel_fbc_is_compressing(fbc)));
+			   str_yes_no(intel_fbc_is_compressing(fbc)));
 	} else {
 		seq_printf(m, "FBC disabled: %s\n", fbc->no_fbc_reason);
 	}
diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index 1aa5bdc7b0dc..f3e688f739f3 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -30,6 +30,7 @@
 #include <linux/hdmi.h>
 #include <linux/i2c.h>
 #include <linux/slab.h>
+#include <linux/string_helpers.h>
 
 #include <drm/drm_atomic_helper.h>
 #include <drm/drm_crtc.h>
@@ -2628,7 +2629,7 @@ bool intel_hdmi_handle_sink_scrambling(struct intel_encoder *encoder,
 	drm_dbg_kms(&dev_priv->drm,
 		    "[CONNECTOR:%d:%s] scrambling=%s, TMDS bit clock ratio=1/%d\n",
 		    connector->base.id, connector->name,
-		    yesno(scrambling), high_tmds_clock_ratio ? 40 : 10);
+		    str_yes_no(scrambling), high_tmds_clock_ratio ? 40 : 10);
 
 	/* Set TMDS bit clock ratio to 1/40 or 1/10, and enable/disable scrambling */
 	return drm_scdc_set_high_tmds_clock_ratio(adapter,
diff --git a/drivers/gpu/drm/i915/display/intel_sprite.c b/drivers/gpu/drm/i915/display/intel_sprite.c
index f6875a49b8cb..7c0df80612d0 100644
--- a/drivers/gpu/drm/i915/display/intel_sprite.c
+++ b/drivers/gpu/drm/i915/display/intel_sprite.c
@@ -30,6 +30,8 @@
  * support.
  */
 
+#include <linux/string_helpers.h>
+
 #include <drm/drm_atomic.h>
 #include <drm/drm_atomic_helper.h>
 #include <drm/drm_color_mgmt.h>
@@ -96,13 +98,13 @@ int intel_plane_check_src_coordinates(struct intel_plane_state *plane_state)
 
 	if (src_x % hsub || src_w % hsub) {
 		drm_dbg_kms(&i915->drm, "src x/w (%u, %u) must be a multiple of %u (rotated: %s)\n",
-			    src_x, src_w, hsub, yesno(rotated));
+			    src_x, src_w, hsub, str_yes_no(rotated));
 		return -EINVAL;
 	}
 
 	if (src_y % vsub || src_h % vsub) {
 		drm_dbg_kms(&i915->drm, "src y/h (%u, %u) must be a multiple of %u (rotated: %s)\n",
-			    src_y, src_h, vsub, yesno(rotated));
+			    src_y, src_h, vsub, str_yes_no(rotated));
 		return -EINVAL;
 	}
 
diff --git a/drivers/gpu/drm/i915/gem/selftests/huge_pages.c b/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
index 0528fe1fc9b3..fdb9e61e3e73 100644
--- a/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
+++ b/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
@@ -5,6 +5,7 @@
  */
 
 #include <linux/prime_numbers.h>
+#include <linux/string_helpers.h>
 
 #include "i915_selftest.h"
 
@@ -804,7 +805,7 @@ static int igt_mock_ppgtt_huge_fill(void *arg)
 		if (vma->resource->page_sizes_gtt != expected_gtt) {
 			pr_err("gtt=%u, expected=%u, size=%zd, single=%s\n",
 			       vma->resource->page_sizes_gtt, expected_gtt,
-			       obj->base.size, yesno(!!single));
+			       obj->base.size, str_yes_no(!!single));
 			err = -EINVAL;
 			break;
 		}
@@ -960,7 +961,7 @@ static int igt_mock_ppgtt_64K(void *arg)
 			if (vma->resource->page_sizes_gtt != expected_gtt) {
 				pr_err("gtt=%u, expected=%u, i=%d, single=%s\n",
 				       vma->resource->page_sizes_gtt,
-				       expected_gtt, i, yesno(!!single));
+				       expected_gtt, i, str_yes_no(!!single));
 				err = -EINVAL;
 				goto out_vma_unpin;
 			}
@@ -1706,14 +1707,14 @@ static int igt_shrink_thp(void *arg)
 			I915_SHRINK_WRITEBACK);
 	if (should_swap == i915_gem_object_has_pages(obj)) {
 		pr_err("unexpected pages mismatch, should_swap=%s\n",
-		       yesno(should_swap));
+		       str_yes_no(should_swap));
 		err = -EINVAL;
 		goto out_put;
 	}
 
 	if (should_swap == (obj->mm.page_sizes.sg || obj->mm.page_sizes.phys)) {
 		pr_err("unexpected residual page-size bits, should_swap=%s\n",
-		       yesno(should_swap));
+		       str_yes_no(should_swap));
 		err = -EINVAL;
 		goto out_put;
 	}
diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
index bd60d42238fb..2cdd8f2c002f 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
@@ -5,6 +5,7 @@
  */
 
 #include <linux/prime_numbers.h>
+#include <linux/string_helpers.h>
 
 #include "gem/i915_gem_internal.h"
 #include "gem/i915_gem_pm.h"
@@ -700,7 +701,7 @@ static int igt_ctx_exec(void *arg)
 				pr_err("Failed to fill dword %lu [%lu/%lu] with gpu (%s) [full-ppgtt? %s], err=%d\n",
 				       ndwords, dw, max_dwords(obj),
 				       engine->name,
-				       yesno(i915_gem_context_has_full_ppgtt(ctx)),
+				       str_yes_no(i915_gem_context_has_full_ppgtt(ctx)),
 				       err);
 				intel_context_put(ce);
 				kernel_context_close(ctx);
@@ -834,7 +835,7 @@ static int igt_shared_ctx_exec(void *arg)
 				pr_err("Failed to fill dword %lu [%lu/%lu] with gpu (%s) [full-ppgtt? %s], err=%d\n",
 				       ndwords, dw, max_dwords(obj),
 				       engine->name,
-				       yesno(i915_gem_context_has_full_ppgtt(ctx)),
+				       str_yes_no(i915_gem_context_has_full_ppgtt(ctx)),
 				       err);
 				intel_context_put(ce);
 				kernel_context_close(ctx);
@@ -1413,7 +1414,7 @@ static int igt_ctx_readonly(void *arg)
 				pr_err("Failed to fill dword %lu [%lu/%lu] with gpu (%s) [full-ppgtt? %s], err=%d\n",
 				       ndwords, dw, max_dwords(obj),
 				       ce->engine->name,
-				       yesno(i915_gem_context_has_full_ppgtt(ctx)),
+				       str_yes_no(i915_gem_context_has_full_ppgtt(ctx)),
 				       err);
 				i915_gem_context_unlock_engines(ctx);
 				goto out_file;
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index e855c801ba28..13ff3a13d161 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -3,6 +3,8 @@
  * Copyright © 2016 Intel Corporation
  */
 
+#include <linux/string_helpers.h>
+
 #include <drm/drm_print.h>
 
 #include "gem/i915_gem_context.h"
@@ -1640,8 +1642,7 @@ static void intel_engine_print_registers(struct intel_engine_cs *engine,
 		u8 read, write;
 
 		drm_printf(m, "\tExeclist tasklet queued? %s (%s), preempt? %s, timeslice? %s\n",
-			   yesno(test_bit(TASKLET_STATE_SCHED,
-					  &engine->sched_engine->tasklet.state)),
+			   str_yes_no(test_bit(TASKLET_STATE_SCHED, &engine->sched_engine->tasklet.state)),
 			   enableddisabled(!atomic_read(&engine->sched_engine->tasklet.count)),
 			   repr_timer(&engine->execlists.preempt),
 			   repr_timer(&engine->execlists.timer));
@@ -1903,7 +1904,7 @@ void intel_engine_dump(struct intel_engine_cs *engine,
 
 	drm_printf(m, "\tAwake? %d\n", atomic_read(&engine->wakeref.count));
 	drm_printf(m, "\tBarriers?: %s\n",
-		   yesno(!llist_empty(&engine->barrier_tasks)));
+		   str_yes_no(!llist_empty(&engine->barrier_tasks)));
 	drm_printf(m, "\tLatency: %luus\n",
 		   ewma__engine_latency_read(&engine->latency));
 	if (intel_engine_supports_stats(engine))
@@ -1945,7 +1946,7 @@ void intel_engine_dump(struct intel_engine_cs *engine,
 	drm_printf(m, "HWSP:\n");
 	hexdump(m, engine->status_page.addr, PAGE_SIZE);
 
-	drm_printf(m, "Idle? %s\n", yesno(intel_engine_is_idle(engine)));
+	drm_printf(m, "Idle? %s\n", str_yes_no(intel_engine_is_idle(engine)));
 
 	intel_engine_print_breadcrumbs(engine, m);
 }
diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
index 961d795220a3..42bfbafad32a 100644
--- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
@@ -107,6 +107,7 @@
  *
  */
 #include <linux/interrupt.h>
+#include <linux/string_helpers.h>
 
 #include "i915_drv.h"
 #include "i915_trace.h"
@@ -1331,11 +1332,11 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
 		} else if (timeslice_expired(engine, last)) {
 			ENGINE_TRACE(engine,
 				     "expired:%s last=%llx:%lld, prio=%d, hint=%d, yield?=%s\n",
-				     yesno(timer_expired(&execlists->timer)),
+				     str_yes_no(timer_expired(&execlists->timer)),
 				     last->fence.context, last->fence.seqno,
 				     rq_prio(last),
 				     sched_engine->queue_priority_hint,
-				     yesno(timeslice_yield(execlists, last)));
+				     str_yes_no(timeslice_yield(execlists, last)));
 
 			/*
 			 * Consume this timeslice; ensure we start a new one.
@@ -1423,7 +1424,7 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
 			     __i915_request_is_complete(rq) ? "!" :
 			     __i915_request_has_started(rq) ? "*" :
 			     "",
-			     yesno(engine != ve->siblings[0]));
+			     str_yes_no(engine != ve->siblings[0]));
 
 		WRITE_ONCE(ve->request, NULL);
 		WRITE_ONCE(ve->base.sched_engine->queue_priority_hint, INT_MIN);
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_pm.c b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
index c0fa41e4c803..e4ecc17889d3 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_pm.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
@@ -3,6 +3,7 @@
  * Copyright © 2019 Intel Corporation
  */
 
+#include <linux/string_helpers.h>
 #include <linux/suspend.h>
 
 #include "i915_drv.h"
@@ -157,7 +158,7 @@ static void gt_sanitize(struct intel_gt *gt, bool force)
 	enum intel_engine_id id;
 	intel_wakeref_t wakeref;
 
-	GT_TRACE(gt, "force:%s", yesno(force));
+	GT_TRACE(gt, "force:%s", str_yes_no(force));
 
 	/* Use a raw wakeref to avoid calling intel_display_power_get early */
 	wakeref = intel_runtime_pm_get(gt->uncore->rpm);
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c b/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c
index 37765919fe32..4a1c74b8de05 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c
@@ -5,6 +5,7 @@
  */
 
 #include <linux/seq_file.h>
+#include <linux/string_helpers.h>
 
 #include "i915_drv.h"
 #include "i915_reg.h"
@@ -105,7 +106,7 @@ static int vlv_drpc(struct seq_file *m)
 	rcctl1 = intel_uncore_read(uncore, GEN6_RC_CONTROL);
 
 	seq_printf(m, "RC6 Enabled: %s\n",
-		   yesno(rcctl1 & (GEN7_RC_CTL_TO_MODE |
+		   str_yes_no(rcctl1 & (GEN7_RC_CTL_TO_MODE |
 					GEN6_RC_CTL_EI_MODE(1))));
 	seq_printf(m, "Render Power Well: %s\n",
 		   (pw_status & VLV_GTLC_PW_RENDER_STATUS_MASK) ? "Up" : "Down");
@@ -140,19 +141,19 @@ static int gen6_drpc(struct seq_file *m)
 		snb_pcode_read(i915, GEN6_PCODE_READ_RC6VIDS, &rc6vids, NULL);
 
 	seq_printf(m, "RC1e Enabled: %s\n",
-		   yesno(rcctl1 & GEN6_RC_CTL_RC1e_ENABLE));
+		   str_yes_no(rcctl1 & GEN6_RC_CTL_RC1e_ENABLE));
 	seq_printf(m, "RC6 Enabled: %s\n",
-		   yesno(rcctl1 & GEN6_RC_CTL_RC6_ENABLE));
+		   str_yes_no(rcctl1 & GEN6_RC_CTL_RC6_ENABLE));
 	if (GRAPHICS_VER(i915) >= 9) {
 		seq_printf(m, "Render Well Gating Enabled: %s\n",
-			   yesno(gen9_powergate_enable & GEN9_RENDER_PG_ENABLE));
+			   str_yes_no(gen9_powergate_enable & GEN9_RENDER_PG_ENABLE));
 		seq_printf(m, "Media Well Gating Enabled: %s\n",
-			   yesno(gen9_powergate_enable & GEN9_MEDIA_PG_ENABLE));
+			   str_yes_no(gen9_powergate_enable & GEN9_MEDIA_PG_ENABLE));
 	}
 	seq_printf(m, "Deep RC6 Enabled: %s\n",
-		   yesno(rcctl1 & GEN6_RC_CTL_RC6p_ENABLE));
+		   str_yes_no(rcctl1 & GEN6_RC_CTL_RC6p_ENABLE));
 	seq_printf(m, "Deepest RC6 Enabled: %s\n",
-		   yesno(rcctl1 & GEN6_RC_CTL_RC6pp_ENABLE));
+		   str_yes_no(rcctl1 & GEN6_RC_CTL_RC6pp_ENABLE));
 	seq_puts(m, "Current RC state: ");
 	switch (gt_core_status & GEN6_RCn_MASK) {
 	case GEN6_RC0:
@@ -176,7 +177,7 @@ static int gen6_drpc(struct seq_file *m)
 	}
 
 	seq_printf(m, "Core Power Down: %s\n",
-		   yesno(gt_core_status & GEN6_CORE_CPD_STATE_MASK));
+		   str_yes_no(gt_core_status & GEN6_CORE_CPD_STATE_MASK));
 	if (GRAPHICS_VER(i915) >= 9) {
 		seq_printf(m, "Render Power Well: %s\n",
 			   (gen9_powergate_status &
@@ -216,16 +217,17 @@ static int ilk_drpc(struct seq_file *m)
 	rstdbyctl = intel_uncore_read(uncore, RSTDBYCTL);
 	crstandvid = intel_uncore_read16(uncore, CRSTANDVID);
 
-	seq_printf(m, "HD boost: %s\n", yesno(rgvmodectl & MEMMODE_BOOST_EN));
+	seq_printf(m, "HD boost: %s\n",
+		   str_yes_no(rgvmodectl & MEMMODE_BOOST_EN));
 	seq_printf(m, "Boost freq: %d\n",
 		   (rgvmodectl & MEMMODE_BOOST_FREQ_MASK) >>
 		   MEMMODE_BOOST_FREQ_SHIFT);
 	seq_printf(m, "HW control enabled: %s\n",
-		   yesno(rgvmodectl & MEMMODE_HWIDLE_EN));
+		   str_yes_no(rgvmodectl & MEMMODE_HWIDLE_EN));
 	seq_printf(m, "SW control enabled: %s\n",
-		   yesno(rgvmodectl & MEMMODE_SWMODE_EN));
+		   str_yes_no(rgvmodectl & MEMMODE_SWMODE_EN));
 	seq_printf(m, "Gated voltage change: %s\n",
-		   yesno(rgvmodectl & MEMMODE_RCLK_GATE));
+		   str_yes_no(rgvmodectl & MEMMODE_RCLK_GATE));
 	seq_printf(m, "Starting frequency: P%d\n",
 		   (rgvmodectl & MEMMODE_FSTART_MASK) >> MEMMODE_FSTART_SHIFT);
 	seq_printf(m, "Max P-state: P%d\n",
@@ -234,7 +236,7 @@ static int ilk_drpc(struct seq_file *m)
 	seq_printf(m, "RS1 VID: %d\n", (crstandvid & 0x3f));
 	seq_printf(m, "RS2 VID: %d\n", ((crstandvid >> 8) & 0x3f));
 	seq_printf(m, "Render standby enabled: %s\n",
-		   yesno(!(rstdbyctl & RCX_SW_EXIT)));
+		   str_yes_no(!(rstdbyctl & RCX_SW_EXIT)));
 	seq_puts(m, "Current RS state: ");
 	switch (rstdbyctl & RSX_STATUS_MASK) {
 	case RSX_STATUS_ON:
@@ -307,12 +309,11 @@ void intel_gt_pm_frequency_dump(struct intel_gt *gt, struct drm_printer *p)
 
 		rpmodectl = intel_uncore_read(uncore, GEN6_RP_CONTROL);
 		drm_printf(p, "Video Turbo Mode: %s\n",
-			   yesno(rpmodectl & GEN6_RP_MEDIA_TURBO));
+			   str_yes_no(rpmodectl & GEN6_RP_MEDIA_TURBO));
 		drm_printf(p, "HW control enabled: %s\n",
-			   yesno(rpmodectl & GEN6_RP_ENABLE));
+			   str_yes_no(rpmodectl & GEN6_RP_ENABLE));
 		drm_printf(p, "SW control enabled: %s\n",
-			   yesno((rpmodectl & GEN6_RP_MEDIA_MODE_MASK) ==
-				 GEN6_RP_MEDIA_SW_MODE));
+			   str_yes_no((rpmodectl & GEN6_RP_MEDIA_MODE_MASK) == GEN6_RP_MEDIA_SW_MODE));
 
 		vlv_punit_get(i915);
 		freq_sts = vlv_punit_read(i915, PUNIT_REG_GPU_FREQ_STS);
@@ -417,12 +418,11 @@ void intel_gt_pm_frequency_dump(struct intel_gt *gt, struct drm_printer *p)
 		pm_mask = intel_uncore_read(uncore, GEN6_PMINTRMSK);
 
 		drm_printf(p, "Video Turbo Mode: %s\n",
-			   yesno(rpmodectl & GEN6_RP_MEDIA_TURBO));
+			   str_yes_no(rpmodectl & GEN6_RP_MEDIA_TURBO));
 		drm_printf(p, "HW control enabled: %s\n",
-			   yesno(rpmodectl & GEN6_RP_ENABLE));
+			   str_yes_no(rpmodectl & GEN6_RP_ENABLE));
 		drm_printf(p, "SW control enabled: %s\n",
-			   yesno((rpmodectl & GEN6_RP_MEDIA_MODE_MASK) ==
-				 GEN6_RP_MEDIA_SW_MODE));
+			   str_yes_no((rpmodectl & GEN6_RP_MEDIA_MODE_MASK) == GEN6_RP_MEDIA_SW_MODE));
 
 		drm_printf(p, "PM IER=0x%08x IMR=0x%08x, MASK=0x%08x\n",
 			   pm_ier, pm_imr, pm_mask);
@@ -542,7 +542,7 @@ static int llc_show(struct seq_file *m, void *data)
 	intel_wakeref_t wakeref;
 	int gpu_freq, ia_freq;
 
-	seq_printf(m, "LLC: %s\n", yesno(HAS_LLC(i915)));
+	seq_printf(m, "LLC: %s\n", str_yes_no(HAS_LLC(i915)));
 	seq_printf(m, "%s: %uMB\n", edram ? "eDRAM" : "eLLC",
 		   i915->edram_size_mb);
 
@@ -604,10 +604,12 @@ static int rps_boost_show(struct seq_file *m, void *data)
 	struct drm_i915_private *i915 = gt->i915;
 	struct intel_rps *rps = &gt->rps;
 
-	seq_printf(m, "RPS enabled? %s\n", yesno(intel_rps_is_enabled(rps)));
-	seq_printf(m, "RPS active? %s\n", yesno(intel_rps_is_active(rps)));
+	seq_printf(m, "RPS enabled? %s\n",
+		   str_yes_no(intel_rps_is_enabled(rps)));
+	seq_printf(m, "RPS active? %s\n",
+		   str_yes_no(intel_rps_is_active(rps)));
 	seq_printf(m, "GPU busy? %s, %llums\n",
-		   yesno(gt->awake),
+		   str_yes_no(gt->awake),
 		   ktime_to_ms(intel_gt_get_awake_time(gt)));
 	seq_printf(m, "Boosts outstanding? %d\n",
 		   atomic_read(&rps->num_waiters));
diff --git a/drivers/gpu/drm/i915/gt/intel_reset.c b/drivers/gpu/drm/i915/gt/intel_reset.c
index 82713264b96c..a6ae213c7d89 100644
--- a/drivers/gpu/drm/i915/gt/intel_reset.c
+++ b/drivers/gpu/drm/i915/gt/intel_reset.c
@@ -5,6 +5,7 @@
 
 #include <linux/sched/mm.h>
 #include <linux/stop_machine.h>
+#include <linux/string_helpers.h>
 
 #include "display/intel_display.h"
 #include "display/intel_overlay.h"
@@ -137,7 +138,7 @@ void __i915_request_reset(struct i915_request *rq, bool guilty)
 {
 	bool banned = false;
 
-	RQ_TRACE(rq, "guilty? %s\n", yesno(guilty));
+	RQ_TRACE(rq, "guilty? %s\n", str_yes_no(guilty));
 	GEM_BUG_ON(__i915_request_is_complete(rq));
 
 	rcu_read_lock(); /* protect the GEM context */
diff --git a/drivers/gpu/drm/i915/gt/intel_rps.c b/drivers/gpu/drm/i915/gt/intel_rps.c
index c8124101aada..a9c13b1a3018 100644
--- a/drivers/gpu/drm/i915/gt/intel_rps.c
+++ b/drivers/gpu/drm/i915/gt/intel_rps.c
@@ -3,6 +3,8 @@
  * Copyright © 2019 Intel Corporation
  */
 
+#include <linux/string_helpers.h>
+
 #include <drm/i915_drm.h>
 
 #include "i915_drv.h"
@@ -772,7 +774,8 @@ static void gen6_rps_set_thresholds(struct intel_rps *rps, u8 val)
 
 void intel_rps_mark_interactive(struct intel_rps *rps, bool interactive)
 {
-	GT_TRACE(rps_to_gt(rps), "mark interactive: %s\n", yesno(interactive));
+	GT_TRACE(rps_to_gt(rps), "mark interactive: %s\n",
+		 str_yes_no(interactive));
 
 	mutex_lock(&rps->power.mutex);
 	if (interactive) {
@@ -1279,7 +1282,8 @@ static bool chv_rps_enable(struct intel_rps *rps)
 	drm_WARN_ONCE(&i915->drm, (val & GPLLENABLE) == 0,
 		      "GPLL not enabled\n");
 
-	drm_dbg(&i915->drm, "GPLL enabled? %s\n", yesno(val & GPLLENABLE));
+	drm_dbg(&i915->drm, "GPLL enabled? %s\n",
+		str_yes_no(val & GPLLENABLE));
 	drm_dbg(&i915->drm, "GPU status: 0x%08x\n", val);
 
 	return rps_reset(rps);
@@ -1380,7 +1384,8 @@ static bool vlv_rps_enable(struct intel_rps *rps)
 	drm_WARN_ONCE(&i915->drm, (val & GPLLENABLE) == 0,
 		      "GPLL not enabled\n");
 
-	drm_dbg(&i915->drm, "GPLL enabled? %s\n", yesno(val & GPLLENABLE));
+	drm_dbg(&i915->drm, "GPLL enabled? %s\n",
+		str_yes_no(val & GPLLENABLE));
 	drm_dbg(&i915->drm, "GPU status: 0x%08x\n", val);
 
 	return rps_reset(rps);
@@ -1772,7 +1777,7 @@ static void rps_work(struct work_struct *work)
 
 	GT_TRACE(gt,
 		 "pm_iir:%x, client_boost:%s, last:%d, cur:%x, min:%x, max:%x\n",
-		 pm_iir, yesno(client_boost),
+		 pm_iir, str_yes_no(client_boost),
 		 adj, new_freq, min, max);
 
 	if (client_boost && new_freq < rps->boost_freq) {
diff --git a/drivers/gpu/drm/i915/gt/intel_sseu.c b/drivers/gpu/drm/i915/gt/intel_sseu.c
index 29118c652811..4ae8356dcc2a 100644
--- a/drivers/gpu/drm/i915/gt/intel_sseu.c
+++ b/drivers/gpu/drm/i915/gt/intel_sseu.c
@@ -3,6 +3,8 @@
  * Copyright © 2019 Intel Corporation
  */
 
+#include <linux/string_helpers.h>
+
 #include "i915_drv.h"
 #include "intel_engine_regs.h"
 #include "intel_gt_regs.h"
@@ -700,10 +702,11 @@ void intel_sseu_dump(const struct sseu_dev_info *sseu, struct drm_printer *p)
 	drm_printf(p, "EU total: %u\n", sseu->eu_total);
 	drm_printf(p, "EU per subslice: %u\n", sseu->eu_per_subslice);
 	drm_printf(p, "has slice power gating: %s\n",
-		   yesno(sseu->has_slice_pg));
+		   str_yes_no(sseu->has_slice_pg));
 	drm_printf(p, "has subslice power gating: %s\n",
-		   yesno(sseu->has_subslice_pg));
-	drm_printf(p, "has EU power gating: %s\n", yesno(sseu->has_eu_pg));
+		   str_yes_no(sseu->has_subslice_pg));
+	drm_printf(p, "has EU power gating: %s\n",
+		   str_yes_no(sseu->has_eu_pg));
 }
 
 void intel_sseu_print_topology(const struct sseu_dev_info *sseu,
diff --git a/drivers/gpu/drm/i915/gt/intel_sseu_debugfs.c b/drivers/gpu/drm/i915/gt/intel_sseu_debugfs.c
index 903626f106ea..a9d5bc49f361 100644
--- a/drivers/gpu/drm/i915/gt/intel_sseu_debugfs.c
+++ b/drivers/gpu/drm/i915/gt/intel_sseu_debugfs.c
@@ -4,6 +4,8 @@
  * Copyright © 2020 Intel Corporation
  */
 
+#include <linux/string_helpers.h>
+
 #include "i915_drv.h"
 #include "intel_gt_debugfs.h"
 #include "intel_gt_regs.h"
@@ -226,16 +228,16 @@ static void i915_print_sseu_info(struct seq_file *m,
 	if (!is_available_info)
 		return;
 
-	seq_printf(m, "  Has Pooled EU: %s\n", yesno(has_pooled_eu));
+	seq_printf(m, "  Has Pooled EU: %s\n", str_yes_no(has_pooled_eu));
 	if (has_pooled_eu)
 		seq_printf(m, "  Min EU in pool: %u\n", sseu->min_eu_in_pool);
 
 	seq_printf(m, "  Has Slice Power Gating: %s\n",
-		   yesno(sseu->has_slice_pg));
+		   str_yes_no(sseu->has_slice_pg));
 	seq_printf(m, "  Has Subslice Power Gating: %s\n",
-		   yesno(sseu->has_subslice_pg));
+		   str_yes_no(sseu->has_subslice_pg));
 	seq_printf(m, "  Has EU Power Gating: %s\n",
-		   yesno(sseu->has_eu_pg));
+		   str_yes_no(sseu->has_eu_pg));
 }
 
 /*
diff --git a/drivers/gpu/drm/i915/gt/selftest_timeline.c b/drivers/gpu/drm/i915/gt/selftest_timeline.c
index 0410c402f2a3..522d0190509c 100644
--- a/drivers/gpu/drm/i915/gt/selftest_timeline.c
+++ b/drivers/gpu/drm/i915/gt/selftest_timeline.c
@@ -4,6 +4,7 @@
  */
 
 #include <linux/prime_numbers.h>
+#include <linux/string_helpers.h>
 
 #include "intel_context.h"
 #include "intel_engine_heartbeat.h"
@@ -209,7 +210,7 @@ static int __igt_sync(struct intel_timeline *tl,
 
 	if (__intel_timeline_sync_is_later(tl, ctx, p->seqno) != p->expected) {
 		pr_err("%s: %s(ctx=%llu, seqno=%u) expected passed %s but failed\n",
-		       name, p->name, ctx, p->seqno, yesno(p->expected));
+		       name, p->name, ctx, p->seqno, str_yes_no(p->expected));
 		return -EINVAL;
 	}
 
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
index b53f61f3101f..8a99c2e624c2 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
@@ -4,6 +4,7 @@
  */
 
 #include <linux/debugfs.h>
+#include <linux/string_helpers.h>
 
 #include "gt/intel_gt.h"
 #include "i915_drv.h"
@@ -477,7 +478,7 @@ int intel_guc_log_create(struct intel_guc_log *log)
 	log->level = __get_default_log_level(log);
 	DRM_DEBUG_DRIVER("guc_log_level=%d (%s, verbose:%s, verbosity:%d)\n",
 			 log->level, enableddisabled(log->level),
-			 yesno(GUC_LOG_LEVEL_IS_VERBOSE(log->level)),
+			 str_yes_no(GUC_LOG_LEVEL_IS_VERBOSE(log->level)),
 			 GUC_LOG_LEVEL_TO_VERBOSITY(log->level));
 
 	return 0;
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
index ac749ab11035..9f032c65a488 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
@@ -4,6 +4,7 @@
  */
 
 #include <drm/drm_cache.h>
+#include <linux/string_helpers.h>
 
 #include "i915_drv.h"
 #include "i915_reg.h"
@@ -719,7 +720,7 @@ int intel_guc_slpc_print_info(struct intel_guc_slpc *slpc, struct drm_printer *p
 
 			drm_printf(p, "\tSLPC state: %s\n", slpc_get_state_string(slpc));
 			drm_printf(p, "\tGTPERF task active: %s\n",
-				   yesno(slpc_tasks->status & SLPC_GTPERF_TASK_ENABLED));
+				   str_yes_no(slpc_tasks->status & SLPC_GTPERF_TASK_ENABLED));
 			drm_printf(p, "\tMax freq: %u MHz\n",
 				   slpc_decode_max_freq(slpc));
 			drm_printf(p, "\tMin freq: %u MHz\n",
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc.c b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
index da199aa6989f..8e756d4c2c16 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_uc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
@@ -3,6 +3,8 @@
  * Copyright © 2016-2019 Intel Corporation
  */
 
+#include <linux/string_helpers.h>
+
 #include "gt/intel_gt.h"
 #include "gt/intel_reset.h"
 #include "intel_guc.h"
@@ -78,10 +80,10 @@ static void __confirm_options(struct intel_uc *uc)
 	drm_dbg(&i915->drm,
 		"enable_guc=%d (guc:%s submission:%s huc:%s slpc:%s)\n",
 		i915->params.enable_guc,
-		yesno(intel_uc_wants_guc(uc)),
-		yesno(intel_uc_wants_guc_submission(uc)),
-		yesno(intel_uc_wants_huc(uc)),
-		yesno(intel_uc_wants_guc_slpc(uc)));
+		str_yes_no(intel_uc_wants_guc(uc)),
+		str_yes_no(intel_uc_wants_guc_submission(uc)),
+		str_yes_no(intel_uc_wants_huc(uc)),
+		str_yes_no(intel_uc_wants_guc_slpc(uc)));
 
 	if (i915->params.enable_guc == 0) {
 		GEM_BUG_ON(intel_uc_wants_guc(uc));
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc_debugfs.c b/drivers/gpu/drm/i915/gt/uc/intel_uc_debugfs.c
index c2f7924295e7..284d6fbc2d08 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_uc_debugfs.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_uc_debugfs.c
@@ -4,6 +4,8 @@
  */
 
 #include <linux/debugfs.h>
+#include <linux/string_helpers.h>
+
 #include <drm/drm_print.h>
 
 #include "gt/intel_gt_debugfs.h"
@@ -18,17 +20,17 @@ static int uc_usage_show(struct seq_file *m, void *data)
 	struct drm_printer p = drm_seq_file_printer(m);
 
 	drm_printf(&p, "[guc] supported:%s wanted:%s used:%s\n",
-		   yesno(intel_uc_supports_guc(uc)),
-		   yesno(intel_uc_wants_guc(uc)),
-		   yesno(intel_uc_uses_guc(uc)));
+		   str_yes_no(intel_uc_supports_guc(uc)),
+		   str_yes_no(intel_uc_wants_guc(uc)),
+		   str_yes_no(intel_uc_uses_guc(uc)));
 	drm_printf(&p, "[huc] supported:%s wanted:%s used:%s\n",
-		   yesno(intel_uc_supports_huc(uc)),
-		   yesno(intel_uc_wants_huc(uc)),
-		   yesno(intel_uc_uses_huc(uc)));
+		   str_yes_no(intel_uc_supports_huc(uc)),
+		   str_yes_no(intel_uc_wants_huc(uc)),
+		   str_yes_no(intel_uc_uses_huc(uc)));
 	drm_printf(&p, "[submission] supported:%s wanted:%s used:%s\n",
-		   yesno(intel_uc_supports_guc_submission(uc)),
-		   yesno(intel_uc_wants_guc_submission(uc)),
-		   yesno(intel_uc_uses_guc_submission(uc)));
+		   str_yes_no(intel_uc_supports_guc_submission(uc)),
+		   str_yes_no(intel_uc_wants_guc_submission(uc)),
+		   str_yes_no(intel_uc_uses_guc_submission(uc)));
 
 	return 0;
 }
diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i915_debugfs.c
index 946bbe57bfe5..2323f489150f 100644
--- a/drivers/gpu/drm/i915/i915_debugfs.c
+++ b/drivers/gpu/drm/i915/i915_debugfs.c
@@ -28,6 +28,7 @@
 
 #include <linux/sched/mm.h>
 #include <linux/sort.h>
+#include <linux/string_helpers.h>
 
 #include <drm/drm_debugfs.h>
 
@@ -455,9 +456,11 @@ static int i915_rps_boost_info(struct seq_file *m, void *data)
 	struct drm_i915_private *dev_priv = node_to_i915(m->private);
 	struct intel_rps *rps = &to_gt(dev_priv)->rps;
 
-	seq_printf(m, "RPS enabled? %s\n", yesno(intel_rps_is_enabled(rps)));
-	seq_printf(m, "RPS active? %s\n", yesno(intel_rps_is_active(rps)));
-	seq_printf(m, "GPU busy? %s\n", yesno(to_gt(dev_priv)->awake));
+	seq_printf(m, "RPS enabled? %s\n",
+		   str_yes_no(intel_rps_is_enabled(rps)));
+	seq_printf(m, "RPS active? %s\n",
+		   str_yes_no(intel_rps_is_active(rps)));
+	seq_printf(m, "GPU busy? %s\n", str_yes_no(to_gt(dev_priv)->awake));
 	seq_printf(m, "Boosts outstanding? %d\n",
 		   atomic_read(&rps->num_waiters));
 	seq_printf(m, "Interactive? %d\n", READ_ONCE(rps->power.interactive));
@@ -490,9 +493,9 @@ static int i915_runtime_pm_status(struct seq_file *m, void *unused)
 	seq_printf(m, "Runtime power status: %s\n",
 		   enableddisabled(!dev_priv->power_domains.init_wakeref));
 
-	seq_printf(m, "GPU idle: %s\n", yesno(!to_gt(dev_priv)->awake));
+	seq_printf(m, "GPU idle: %s\n", str_yes_no(!to_gt(dev_priv)->awake));
 	seq_printf(m, "IRQs disabled: %s\n",
-		   yesno(!intel_irqs_enabled(dev_priv)));
+		   str_yes_no(!intel_irqs_enabled(dev_priv)));
 #ifdef CONFIG_PM
 	seq_printf(m, "Usage count: %d\n",
 		   atomic_read(&dev_priv->drm.dev->power.usage_count));
@@ -522,7 +525,7 @@ static int i915_engine_info(struct seq_file *m, void *unused)
 	wakeref = intel_runtime_pm_get(&i915->runtime_pm);
 
 	seq_printf(m, "GT awake? %s [%d], %llums\n",
-		   yesno(to_gt(i915)->awake),
+		   str_yes_no(to_gt(i915)->awake),
 		   atomic_read(&to_gt(i915)->wakeref.count),
 		   ktime_to_ms(intel_gt_get_awake_time(to_gt(i915))));
 	seq_printf(m, "CS timestamp frequency: %u Hz, %d ns\n",
diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
index 1d042551619e..4967e79806f8 100644
--- a/drivers/gpu/drm/i915/i915_gpu_error.c
+++ b/drivers/gpu/drm/i915/i915_gpu_error.c
@@ -31,6 +31,7 @@
 #include <linux/nmi.h>
 #include <linux/pagevec.h>
 #include <linux/scatterlist.h>
+#include <linux/string_helpers.h>
 #include <linux/utsname.h>
 #include <linux/zlib.h>
 
@@ -719,7 +720,7 @@ static void err_print_gt(struct drm_i915_error_state_buf *m,
 	const struct intel_engine_coredump *ee;
 	int i;
 
-	err_printf(m, "GT awake: %s\n", yesno(gt->awake));
+	err_printf(m, "GT awake: %s\n", str_yes_no(gt->awake));
 	err_printf(m, "EIR: 0x%08x\n", gt->eir);
 	err_printf(m, "IER: 0x%08x\n", gt->ier);
 	for (i = 0; i < gt->ngtier; i++)
@@ -827,14 +828,14 @@ static void __err_print_to_sgl(struct drm_i915_error_state_buf *m,
 		struct intel_dmc *dmc = &m->i915->dmc;
 
 		err_printf(m, "DMC loaded: %s\n",
-			   yesno(intel_dmc_has_payload(m->i915) != 0));
+			   str_yes_no(intel_dmc_has_payload(m->i915) != 0));
 		err_printf(m, "DMC fw version: %d.%d\n",
 			   DMC_VERSION_MAJOR(dmc->version),
 			   DMC_VERSION_MINOR(dmc->version));
 	}
 
-	err_printf(m, "RPM wakelock: %s\n", yesno(error->wakelock));
-	err_printf(m, "PM suspended: %s\n", yesno(error->suspended));
+	err_printf(m, "RPM wakelock: %s\n", str_yes_no(error->wakelock));
+	err_printf(m, "PM suspended: %s\n", str_yes_no(error->suspended));
 
 	if (error->gt)
 		err_print_gt(m, error->gt);
diff --git a/drivers/gpu/drm/i915/i915_params.c b/drivers/gpu/drm/i915/i915_params.c
index eea355c2fc28..7e8ebc42354c 100644
--- a/drivers/gpu/drm/i915/i915_params.c
+++ b/drivers/gpu/drm/i915/i915_params.c
@@ -22,6 +22,8 @@
  * IN THE SOFTWARE.
  */
 
+#include <linux/string_helpers.h>
+
 #include <drm/drm_print.h>
 
 #include "i915_params.h"
@@ -206,7 +208,8 @@ static __always_inline void _print_param(struct drm_printer *p,
 					 const void *x)
 {
 	if (!__builtin_strcmp(type, "bool"))
-		drm_printf(p, "i915.%s=%s\n", name, yesno(*(const bool *)x));
+		drm_printf(p, "i915.%s=%s\n", name,
+			   str_yes_no(*(const bool *)x));
 	else if (!__builtin_strcmp(type, "int"))
 		drm_printf(p, "i915.%s=%d\n", name, *(const int *)x);
 	else if (!__builtin_strcmp(type, "unsigned int"))
diff --git a/drivers/gpu/drm/i915/i915_utils.h b/drivers/gpu/drm/i915/i915_utils.h
index bfafd0afd117..c62b64012369 100644
--- a/drivers/gpu/drm/i915/i915_utils.h
+++ b/drivers/gpu/drm/i915/i915_utils.h
@@ -399,11 +399,6 @@ wait_remaining_ms_from_jiffies(unsigned long timestamp_jiffies, int to_wait_ms)
 #define MBps(x) KBps(1000 * (x))
 #define GBps(x) ((u64)1000 * MBps((x)))
 
-static inline const char *yesno(bool v)
-{
-	return v ? "yes" : "no";
-}
-
 static inline const char *onoff(bool v)
 {
 	return v ? "on" : "off";
diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
index 9d10f7b8ecba..8d458226f478 100644
--- a/drivers/gpu/drm/i915/intel_device_info.c
+++ b/drivers/gpu/drm/i915/intel_device_info.c
@@ -22,6 +22,8 @@
  *
  */
 
+#include <linux/string_helpers.h>
+
 #include <drm/drm_print.h>
 #include <drm/i915_pciids.h>
 
@@ -110,11 +112,11 @@ void intel_device_info_print_static(const struct intel_device_info *info,
 	drm_printf(p, "ppgtt-type: %d\n", info->ppgtt_type);
 	drm_printf(p, "dma_mask_size: %u\n", info->dma_mask_size);
 
-#define PRINT_FLAG(name) drm_printf(p, "%s: %s\n", #name, yesno(info->name))
+#define PRINT_FLAG(name) drm_printf(p, "%s: %s\n", #name, str_yes_no(info->name))
 	DEV_INFO_FOR_EACH_FLAG(PRINT_FLAG);
 #undef PRINT_FLAG
 
-#define PRINT_FLAG(name) drm_printf(p, "%s: %s\n", #name, yesno(info->display.name))
+#define PRINT_FLAG(name) drm_printf(p, "%s: %s\n", #name, str_yes_no(info->display.name))
 	DEV_INFO_DISPLAY_FOR_EACH_FLAG(PRINT_FLAG);
 #undef PRINT_FLAG
 }
@@ -409,6 +411,6 @@ void intel_driver_caps_print(const struct intel_driver_caps *caps,
 			     struct drm_printer *p)
 {
 	drm_printf(p, "Has logical contexts? %s\n",
-		   yesno(caps->has_logical_contexts));
+		   str_yes_no(caps->has_logical_contexts));
 	drm_printf(p, "scheduler: %x\n", caps->scheduler);
 }
diff --git a/drivers/gpu/drm/i915/intel_dram.c b/drivers/gpu/drm/i915/intel_dram.c
index 174c95c3e10f..2b9e7833da96 100644
--- a/drivers/gpu/drm/i915/intel_dram.c
+++ b/drivers/gpu/drm/i915/intel_dram.c
@@ -3,6 +3,8 @@
  * Copyright © 2020 Intel Corporation
  */
 
+#include <linux/string_helpers.h>
+
 #include "i915_drv.h"
 #include "i915_reg.h"
 #include "intel_dram.h"
@@ -136,7 +138,7 @@ skl_dram_get_dimm_info(struct drm_i915_private *i915,
 	drm_dbg_kms(&i915->drm,
 		    "CH%u DIMM %c size: %u Gb, width: X%u, ranks: %u, 16Gb DIMMs: %s\n",
 		    channel, dimm_name, dimm->size, dimm->width, dimm->ranks,
-		    yesno(skl_is_16gb_dimm(dimm)));
+		    str_yes_no(skl_is_16gb_dimm(dimm)));
 }
 
 static int
@@ -165,7 +167,7 @@ skl_dram_get_channel_info(struct drm_i915_private *i915,
 		skl_is_16gb_dimm(&ch->dimm_s);
 
 	drm_dbg_kms(&i915->drm, "CH%u ranks: %u, 16Gb DIMMs: %s\n",
-		    channel, ch->ranks, yesno(ch->is_16gb_dimm));
+		    channel, ch->ranks, str_yes_no(ch->is_16gb_dimm));
 
 	return 0;
 }
@@ -214,7 +216,7 @@ skl_dram_get_channels_info(struct drm_i915_private *i915)
 	dram_info->symmetric_memory = intel_is_dram_symmetric(&ch0, &ch1);
 
 	drm_dbg_kms(&i915->drm, "Memory configuration is symmetric? %s\n",
-		    yesno(dram_info->symmetric_memory));
+		    str_yes_no(dram_info->symmetric_memory));
 
 	return 0;
 }
@@ -492,7 +494,7 @@ void intel_dram_detect(struct drm_i915_private *i915)
 	drm_dbg_kms(&i915->drm, "DRAM channels: %u\n", dram_info->num_channels);
 
 	drm_dbg_kms(&i915->drm, "Watermark level 0 adjustment needed: %s\n",
-		    yesno(dram_info->wm_lv_0_adjust_needed));
+		    str_yes_no(dram_info->wm_lv_0_adjust_needed));
 }
 
 static u32 gen9_edram_size_mb(struct drm_i915_private *i915, u32 cap)
diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index 51308211618e..5299f8b6b986 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -26,6 +26,7 @@
  */
 
 #include <linux/module.h>
+#include <linux/string_helpers.h>
 #include <linux/pm_runtime.h>
 
 #include <drm/drm_atomic_helper.h>
@@ -6191,8 +6192,8 @@ skl_compute_ddb(struct intel_atomic_state *state)
 			    old_dbuf_state->enabled_slices,
 			    new_dbuf_state->enabled_slices,
 			    INTEL_INFO(dev_priv)->dbuf.slice_mask,
-			    yesno(old_dbuf_state->joined_mbus),
-			    yesno(new_dbuf_state->joined_mbus));
+			    str_yes_no(old_dbuf_state->joined_mbus),
+			    str_yes_no(new_dbuf_state->joined_mbus));
 	}
 
 	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
@@ -6694,7 +6695,7 @@ void skl_wm_get_hw_state(struct drm_i915_private *dev_priv)
 			    crtc->base.base.id, crtc->base.name,
 			    dbuf_state->slices[pipe], dbuf_state->ddb[pipe].start,
 			    dbuf_state->ddb[pipe].end, dbuf_state->active_pipes,
-			    yesno(dbuf_state->joined_mbus));
+			    str_yes_no(dbuf_state->joined_mbus));
 	}
 
 	dbuf_state->enabled_slices = dev_priv->dbuf.enabled_slices;
@@ -7005,7 +7006,8 @@ void g4x_wm_get_hw_state(struct drm_i915_private *dev_priv)
 		    "Initial HPLL watermarks: plane=%d, SR cursor=%d fbc=%d\n",
 		    wm->hpll.plane, wm->hpll.cursor, wm->hpll.fbc);
 	drm_dbg_kms(&dev_priv->drm, "Initial SR=%s HPLL=%s FBC=%s\n",
-		    yesno(wm->cxsr), yesno(wm->hpll_en), yesno(wm->fbc_en));
+		    str_yes_no(wm->cxsr), str_yes_no(wm->hpll_en),
+		    str_yes_no(wm->fbc_en));
 }
 
 void g4x_wm_sanitize(struct drm_i915_private *dev_priv)
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.c b/drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.c
index 10e1e45471f1..c9da1015eb42 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.c
@@ -4,6 +4,8 @@
  */
 
 #include <linux/debugfs.h>
+#include <linux/string_helpers.h>
+
 #include <drm/drm_print.h>
 
 #include "gt/intel_gt_debugfs.h"
@@ -22,7 +24,7 @@ static int pxp_info_show(struct seq_file *m, void *data)
 		return 0;
 	}
 
-	drm_printf(&p, "active: %s\n", yesno(intel_pxp_is_active(pxp)));
+	drm_printf(&p, "active: %s\n", str_yes_no(intel_pxp_is_active(pxp)));
 	drm_printf(&p, "instance counter: %u\n", pxp->key_instance);
 
 	return 0;
diff --git a/drivers/gpu/drm/i915/selftests/i915_active.c b/drivers/gpu/drm/i915/selftests/i915_active.c
index 2dac9be1de58..b61fe850e924 100644
--- a/drivers/gpu/drm/i915/selftests/i915_active.c
+++ b/drivers/gpu/drm/i915/selftests/i915_active.c
@@ -5,6 +5,7 @@
  */
 
 #include <linux/kref.h>
+#include <linux/string_helpers.h>
 
 #include "gem/i915_gem_pm.h"
 #include "gt/intel_gt.h"
@@ -280,7 +281,7 @@ void i915_active_print(struct i915_active *ref, struct drm_printer *m)
 	drm_printf(m, "active %ps:%ps\n", ref->active, ref->retire);
 	drm_printf(m, "\tcount: %d\n", atomic_read(&ref->count));
 	drm_printf(m, "\tpreallocated barriers? %s\n",
-		   yesno(!llist_empty(&ref->preallocated_barriers)));
+		   str_yes_no(!llist_empty(&ref->preallocated_barriers)));
 
 	if (i915_active_acquire_if_busy(ref)) {
 		struct active_node *it, *n;
-- 
2.35.1

