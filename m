Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EF5D0947DB1
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Aug 2024 17:07:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8FD7410E22C;
	Mon,  5 Aug 2024 15:07:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="boC0Wno9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C48A010E22C
 for <intel-gfx@lists.freedesktop.org>; Mon,  5 Aug 2024 15:07:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722870473; x=1754406473;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=jeclmYsEvS6aW1MAU/Ognv7py6P7TF40XzxDDns7ogQ=;
 b=boC0Wno9q9mJIdKeToexOt0iGTpwq7LSQMfhRu1HyV95ZdrtKn+tO7H7
 RivuCvpcxP2iDa/31XYwf50sbLTqI4T9hKeEEbLm3XkhQs15LwMtM5lZc
 xlATbtk87LCC0FSVccwM9L4Y6FK7JQeeWXNwEWLt5X7nxCO54lEum67L5
 jGN4gXr8tBv9vI2CtduCSMSH4CxfMcfs3ZuZRzQq9+h2hOkzg2fgdTF0b
 07fFPa8FPTCS8dAFFjv9LF4AYi+SYHuTVNLR+0ikYJXkEw82BlbSKeAv5
 nWeO0yCoR4XzcrU47BCJ0O6yOznr/mIc78WyCQ/26sgnjRi2SZzg+0oMt Q==;
X-CSE-ConnectionGUID: TpcDPQw0RViAqdwJHlKWZg==
X-CSE-MsgGUID: ZTuUJ6tJRBSVTkqJcpp4Kw==
X-IronPort-AV: E=McAfee;i="6700,10204,11155"; a="20694447"
X-IronPort-AV: E=Sophos;i="6.09,264,1716274800"; d="scan'208";a="20694447"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2024 08:07:52 -0700
X-CSE-ConnectionGUID: O5ZFTb0aSDaHTxMmpwFzsQ==
X-CSE-MsgGUID: 2rlBUvTfT6mkOuHt0WjJrA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,264,1716274800"; d="scan'208";a="60558901"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2024 08:07:51 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@intel.com>
Subject: [CI 6/7] drm/i915: Dump DSC state to dmesg and
 debugfs/i915_display_info
Date: Mon,  5 Aug 2024 18:07:55 +0300
Message-ID: <20240805150802.3568970-7-imre.deak@intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20240805150802.3568970-1-imre.deak@intel.com>
References: <20240805150802.3568970-1-imre.deak@intel.com>
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

Dump the DSC state to dmesg during HW readout and state computation as
well as the i915_display_info debugfs entry.

v2: Rebase on the s/DRM_X16/FXP_Q4 change.

Acked-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../drm/i915/display/intel_crtc_state_dump.c  |  3 +++
 .../drm/i915/display/intel_display_debugfs.c  |  4 ++++
 drivers/gpu/drm/i915/display/intel_vdsc.c     | 20 +++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_vdsc.h     |  4 ++++
 4 files changed, 31 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
index 6df526e189b5b..705ec5ad385c8 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
@@ -10,6 +10,7 @@
 #include "intel_crtc_state_dump.h"
 #include "intel_display_types.h"
 #include "intel_hdmi.h"
+#include "intel_vdsc.h"
 #include "intel_vrr.h"
 
 static void intel_dump_crtc_timings(struct drm_printer *p,
@@ -369,6 +370,8 @@ void intel_crtc_state_dump(const struct intel_crtc_state *pipe_config,
 	else if (IS_VALLEYVIEW(i915))
 		vlv_dump_csc(&p, "wgc csc", &pipe_config->csc);
 
+	intel_vdsc_state_dump(&p, 0, pipe_config);
+
 dump_planes:
 	if (!state)
 		return;
diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index 5cf9b4af9adfb..9c5a3f5beda25 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -36,6 +36,7 @@
 #include "intel_pps.h"
 #include "intel_psr.h"
 #include "intel_psr_regs.h"
+#include "intel_vdsc.h"
 #include "intel_wm.h"
 
 static inline struct drm_i915_private *node_to_i915(struct drm_info_node *node)
@@ -551,6 +552,7 @@ static void crtc_updates_add(struct intel_crtc *crtc)
 static void intel_crtc_info(struct seq_file *m, struct intel_crtc *crtc)
 {
 	struct drm_i915_private *dev_priv = node_to_i915(m->private);
+	struct drm_printer p = drm_seq_file_printer(m);
 	const struct intel_crtc_state *crtc_state =
 		to_intel_crtc_state(crtc->base.state);
 	struct intel_encoder *encoder;
@@ -581,6 +583,8 @@ static void intel_crtc_info(struct seq_file *m, struct intel_crtc *crtc)
 			   crtc_state->joiner_pipes,
 			   intel_crtc_is_joiner_secondary(crtc_state) ? "slave" : "master");
 
+	intel_vdsc_state_dump(&p, 1, crtc_state);
+
 	for_each_intel_encoder_mask(&dev_priv->drm, encoder,
 				    crtc_state->uapi.encoder_mask)
 		intel_encoder_info(m, crtc, encoder);
diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
index ff717dc1a2ce5..404ed05371cb8 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc.c
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
@@ -990,3 +990,23 @@ void intel_dsc_get_config(struct intel_crtc_state *crtc_state)
 out:
 	intel_display_power_put(dev_priv, power_domain, wakeref);
 }
+
+static void intel_vdsc_dump_state(struct drm_printer *p, int indent,
+				  const struct intel_crtc_state *crtc_state)
+{
+	drm_printf_indent(p, indent,
+			  "dsc-dss: compressed-bpp:" FXP_Q4_FMT ", slice-count: %d, split: %s\n",
+			  FXP_Q4_ARGS(crtc_state->dsc.compressed_bpp_x16),
+			  crtc_state->dsc.slice_count,
+			  str_yes_no(crtc_state->dsc.dsc_split));
+}
+
+void intel_vdsc_state_dump(struct drm_printer *p, int indent,
+			   const struct intel_crtc_state *crtc_state)
+{
+	if (!crtc_state->dsc.compression_enable)
+		return;
+
+	intel_vdsc_dump_state(p, indent, crtc_state);
+	drm_dsc_dump_config(p, indent, &crtc_state->dsc.config);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.h b/drivers/gpu/drm/i915/display/intel_vdsc.h
index 2cc41ff089094..290b2e9b3482e 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc.h
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.h
@@ -8,6 +8,8 @@
 
 #include <linux/types.h>
 
+struct drm_printer;
+
 enum transcoder;
 struct intel_crtc;
 struct intel_crtc_state;
@@ -27,5 +29,7 @@ void intel_dsc_dsi_pps_write(struct intel_encoder *encoder,
 			     const struct intel_crtc_state *crtc_state);
 void intel_dsc_dp_pps_write(struct intel_encoder *encoder,
 			    const struct intel_crtc_state *crtc_state);
+void intel_vdsc_state_dump(struct drm_printer *p, int indent,
+			   const struct intel_crtc_state *crtc_state);
 
 #endif /* __INTEL_VDSC_H__ */
-- 
2.44.2

