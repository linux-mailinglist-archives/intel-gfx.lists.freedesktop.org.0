Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DBF4249DE19
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Jan 2022 10:33:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC42910EFCE;
	Thu, 27 Jan 2022 09:33:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3756910EFCE
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Jan 2022 09:33:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643276024; x=1674812024;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=2oEr+/I8NbANS3MmmsqDAzf+8NTvhtro2RDNWGLJ4CU=;
 b=MfdLkLhxFT3+8lo9raO5O+KV64lCl7yGZgxL+3r/KuKFXqGyJjEnDJuY
 33F0KCuLopscoaPIXKUD2EyH0/KioBOTyg/3CwD/kLYhJgzqqqa4wozlo
 83NXldXftCnoiB3W/WF38pCUXGsJljruLTXjGzTg/9stI0pPFFBUR+rWK
 4j83QnwLCDlLNs1JUO9kqfj184f0wGWcswpjunDpwrBl6DW9AREH8Wlve
 ahKO13keZUDxaJmySXTTJkkhjV7BqIh9OOlUuHbgv3nhkxL9ko8kRHClJ
 0kqCpZbmm0R8ThtbuIPsltJTNL7n9TxYeU/VDmeMftvZQn7ZsnnoF5Lmo g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10239"; a="245639567"
X-IronPort-AV: E=Sophos;i="5.88,320,1635231600"; d="scan'208";a="245639567"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2022 01:33:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,320,1635231600"; d="scan'208";a="674657272"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.147])
 by fmsmga001.fm.intel.com with SMTP; 27 Jan 2022 01:33:34 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 27 Jan 2022 11:33:32 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 27 Jan 2022 11:32:58 +0200
Message-Id: <20220127093303.17309-10-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220127093303.17309-1-ville.syrjala@linux.intel.com>
References: <20220127093303.17309-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 09/14] drm/i915: Add fdi_m2_n2
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

We're going to need M2/N2 for FDI when doing refresh rate switching
with PCH ports. We'll start by setting to match the FDI M1/N1.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c  | 19 +++++++++++++------
 drivers/gpu/drm/i915/display/intel_display.h  |  2 ++
 .../drm/i915/display/intel_display_types.h    |  2 +-
 drivers/gpu/drm/i915/display/intel_fdi.c      |  3 +++
 .../gpu/drm/i915/display/intel_pch_display.c  |  2 ++
 5 files changed, 21 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 0a58ecf21b70..8b4d842e2ee0 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -1815,6 +1815,7 @@ static void ilk_configure_cpu_transcoder(const struct intel_crtc_state *crtc_sta
 
 	if (crtc_state->has_pch_encoder) {
 		intel_cpu_transcoder_set_m1_n1(crtc, cpu_transcoder, &crtc_state->fdi_m_n);
+		intel_cpu_transcoder_set_m2_n2(crtc, cpu_transcoder, &crtc_state->fdi_m2_n2);
 	} else if (intel_crtc_has_dp_encoder(crtc_state)) {
 		intel_cpu_transcoder_set_m1_n1(crtc, cpu_transcoder, &crtc_state->dp_m_n);
 		intel_cpu_transcoder_set_m2_n2(crtc, cpu_transcoder, &crtc_state->dp_m2_n2);
@@ -3143,8 +3144,8 @@ void intel_set_m_n(struct drm_i915_private *i915,
 	intel_de_write(i915, link_n_reg, m_n->link_n);
 }
 
-static bool transcoder_has_m2_n2(struct drm_i915_private *dev_priv,
-				 enum transcoder cpu_transcoder)
+bool intel_cpu_transcoder_has_m2_n2(struct drm_i915_private *dev_priv,
+				    enum transcoder cpu_transcoder)
 {
 	if (IS_HASWELL(dev_priv))
 		return cpu_transcoder == TRANSCODER_EDP;
@@ -3175,7 +3176,7 @@ void intel_cpu_transcoder_set_m2_n2(struct intel_crtc *crtc,
 {
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 
-	if (!transcoder_has_m2_n2(dev_priv, cpu_transcoder))
+	if (!intel_cpu_transcoder_has_m2_n2(dev_priv, cpu_transcoder))
 		return;
 
 	intel_set_m_n(dev_priv, m_n,
@@ -3873,7 +3874,7 @@ void intel_cpu_transcoder_get_m2_n2(struct intel_crtc *crtc,
 {
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 
-	if (!transcoder_has_m2_n2(dev_priv, cpu_transcoder))
+	if (!intel_cpu_transcoder_has_m2_n2(dev_priv, cpu_transcoder))
 		return;
 
 	intel_get_m_n(dev_priv, m_n,
@@ -5612,10 +5613,14 @@ static void intel_dump_pipe_config(const struct intel_crtc_state *pipe_config,
 		    pipe_config->splitter.link_count,
 		    pipe_config->splitter.pixel_overlap);
 
-	if (pipe_config->has_pch_encoder)
-		intel_dump_m_n_config(pipe_config, "fdi",
+	if (pipe_config->has_pch_encoder) {
+		intel_dump_m_n_config(pipe_config, "fdi m_n",
 				      pipe_config->fdi_lanes,
 				      &pipe_config->fdi_m_n);
+		intel_dump_m_n_config(pipe_config, "fdi m2_n2",
+				      pipe_config->fdi_lanes,
+				      &pipe_config->fdi_m2_n2);
+	}
 
 	if (intel_crtc_has_dp_encoder(pipe_config)) {
 		intel_dump_m_n_config(pipe_config, "dp m_n",
@@ -6467,6 +6472,7 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 	PIPE_CONF_CHECK_BOOL(has_pch_encoder);
 	PIPE_CONF_CHECK_I(fdi_lanes);
 	PIPE_CONF_CHECK_M_N(fdi_m_n);
+	PIPE_CONF_CHECK_M_N(fdi_m2_n2);
 
 	PIPE_CONF_CHECK_I(lane_count);
 	PIPE_CONF_CHECK_X(lane_lat_optim_mask);
@@ -7375,6 +7381,7 @@ static void intel_crtc_copy_fastset(const struct intel_crtc_state *old_crtc_stat
 	 * FIXME: should really copy more fuzzy state here
 	 */
 	new_crtc_state->fdi_m_n = old_crtc_state->fdi_m_n;
+	new_crtc_state->fdi_m2_n2 = old_crtc_state->fdi_m2_n2;
 	new_crtc_state->dp_m_n = old_crtc_state->dp_m_n;
 	new_crtc_state->dp_m2_n2 = old_crtc_state->dp_m2_n2;
 	new_crtc_state->has_drrs = old_crtc_state->has_drrs;
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index afa312e11624..71a27285cf99 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -575,6 +575,8 @@ void intel_cpu_transcoder_get_m1_n1(struct intel_crtc *crtc,
 void intel_cpu_transcoder_get_m2_n2(struct intel_crtc *crtc,
 				    enum transcoder cpu_transcoder,
 				    struct intel_link_m_n *m_n);
+bool intel_cpu_transcoder_has_m2_n2(struct drm_i915_private *dev_priv,
+				    enum transcoder cpu_transcoder);
 
 void intel_plane_destroy(struct drm_plane *plane);
 void intel_enable_transcoder(const struct intel_crtc_state *new_crtc_state);
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 60e15226a8cb..4f29146b916e 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1124,7 +1124,7 @@ struct intel_crtc_state {
 
 	/* FDI configuration, only valid if has_pch_encoder is set. */
 	int fdi_lanes;
-	struct intel_link_m_n fdi_m_n;
+	struct intel_link_m_n fdi_m_n, fdi_m2_n2;
 
 	bool ips_enabled;
 
diff --git a/drivers/gpu/drm/i915/display/intel_fdi.c b/drivers/gpu/drm/i915/display/intel_fdi.c
index 3d6e22923601..fdbeaf6f38f4 100644
--- a/drivers/gpu/drm/i915/display/intel_fdi.c
+++ b/drivers/gpu/drm/i915/display/intel_fdi.c
@@ -251,6 +251,9 @@ int ilk_fdi_compute_config(struct intel_crtc *crtc,
 	intel_link_compute_m_n(pipe_config->pipe_bpp, lane, fdi_dotclock,
 			       link_bw, &pipe_config->fdi_m_n, false, false);
 
+	if (intel_cpu_transcoder_has_m2_n2(i915, pipe_config->cpu_transcoder))
+		pipe_config->fdi_m2_n2 = pipe_config->fdi_m_n;
+
 	ret = ilk_check_fdi_lanes(dev, crtc->pipe, pipe_config);
 	if (ret == -EDEADLK)
 		return ret;
diff --git a/drivers/gpu/drm/i915/display/intel_pch_display.c b/drivers/gpu/drm/i915/display/intel_pch_display.c
index 9192769e3337..69b8a4e77c71 100644
--- a/drivers/gpu/drm/i915/display/intel_pch_display.c
+++ b/drivers/gpu/drm/i915/display/intel_pch_display.c
@@ -436,6 +436,8 @@ void ilk_pch_get_config(struct intel_crtc_state *crtc_state)
 
 	intel_cpu_transcoder_get_m1_n1(crtc, crtc_state->cpu_transcoder,
 				       &crtc_state->fdi_m_n);
+	intel_cpu_transcoder_get_m2_n2(crtc, crtc_state->cpu_transcoder,
+				       &crtc_state->fdi_m2_n2);
 
 	if (HAS_PCH_IBX(dev_priv)) {
 		/*
-- 
2.34.1

