Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C50669541D
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Feb 2023 23:53:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3815110E753;
	Mon, 13 Feb 2023 22:53:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E191D10E753
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Feb 2023 22:53:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676328783; x=1707864783;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=hBiEkf5p3I1vttkt09j9qRkmCVvLjOW1K/qPvoGQQbM=;
 b=LktCsKGK9hPMbqOYuUa7+v+CJTVQstqo0eMavR82hdf4sxTGiONd4KHz
 TMi8hN0DssXGX8oEBmXDXcfPfSgYi4nxWzSrH5N8rNk6YZLyLFl/zLrUF
 GQHK8+Y6nmudtmuI9NaTOi3aqC6rbB7SC+CCwVGTSqXhKFkb/c/DI28MU
 Lkw83NoOfTLi+LiDJep35qBI17D1ivP2tbDPjYcxzOVFSEs+kUrlKyTN7
 iCRq5hZRsJ5gds/SUVAlfiJRpkK6VVZzoopdfKtBW1wMHc2fdlA4Ycspi
 jbHhnajZTJqWwgPzBTXv870K/VrWI9FUwovCegt7yTVENykPaExE7TR6m w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10620"; a="417237366"
X-IronPort-AV: E=Sophos;i="5.97,294,1669104000"; d="scan'208";a="417237366"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2023 14:53:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10620"; a="757766411"
X-IronPort-AV: E=Sophos;i="5.97,294,1669104000"; d="scan'208";a="757766411"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.55])
 by FMSMGA003.fm.intel.com with SMTP; 13 Feb 2023 14:53:01 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 14 Feb 2023 00:53:01 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 14 Feb 2023 00:52:47 +0200
Message-Id: <20230213225258.2127-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230213225258.2127-1-ville.syrjala@linux.intel.com>
References: <20230213225258.2127-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 01/12] drm/i915: Rename intel_ddi_{enable,
 disable}_pipe_clock()
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

What intel_ddi_{enable,disable}_pipe_clock() actually do is
enable the clock to the transcoder, not the pipe. Rename
accordingly.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_crt.c    |  4 ++--
 drivers/gpu/drm/i915/display/intel_ddi.c    | 20 ++++++++++----------
 drivers/gpu/drm/i915/display/intel_ddi.h    |  6 +++---
 drivers/gpu/drm/i915/display/intel_dp_mst.c |  4 ++--
 4 files changed, 17 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_crt.c b/drivers/gpu/drm/i915/display/intel_crt.c
index 7267ffc7f539..d5bb02f0868d 100644
--- a/drivers/gpu/drm/i915/display/intel_crt.c
+++ b/drivers/gpu/drm/i915/display/intel_crt.c
@@ -260,7 +260,7 @@ static void hsw_post_disable_crt(struct intel_atomic_state *state,
 
 	ilk_pfit_disable(old_crtc_state);
 
-	intel_ddi_disable_pipe_clock(old_crtc_state);
+	intel_ddi_disable_transcoder_clock(old_crtc_state);
 
 	pch_post_disable_crt(state, encoder, old_crtc_state, old_conn_state);
 
@@ -300,7 +300,7 @@ static void hsw_pre_enable_crt(struct intel_atomic_state *state,
 
 	hsw_fdi_link_train(encoder, crtc_state);
 
-	intel_ddi_enable_pipe_clock(encoder, crtc_state);
+	intel_ddi_enable_transcoder_clock(encoder, crtc_state);
 }
 
 static void hsw_enable_crt(struct intel_atomic_state *state,
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 254559abedfb..7f34c2b30073 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -948,8 +948,8 @@ static void intel_ddi_get_power_domains(struct intel_encoder *encoder,
 	main_link_aux_power_domain_get(dig_port, crtc_state);
 }
 
-void intel_ddi_enable_pipe_clock(struct intel_encoder *encoder,
-				 const struct intel_crtc_state *crtc_state)
+void intel_ddi_enable_transcoder_clock(struct intel_encoder *encoder,
+				       const struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
@@ -969,7 +969,7 @@ void intel_ddi_enable_pipe_clock(struct intel_encoder *encoder,
 	}
 }
 
-void intel_ddi_disable_pipe_clock(const struct intel_crtc_state *crtc_state)
+void intel_ddi_disable_transcoder_clock(const struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
@@ -2387,7 +2387,7 @@ static void tgl_ddi_pre_enable_dp(struct intel_atomic_state *state,
 	 * 7.a Configure Transcoder Clock Select to direct the Port clock to the
 	 * Transcoder.
 	 */
-	intel_ddi_enable_pipe_clock(encoder, crtc_state);
+	intel_ddi_enable_transcoder_clock(encoder, crtc_state);
 
 	if (HAS_DP20(dev_priv))
 		intel_ddi_config_transcoder_dp2(encoder, crtc_state);
@@ -2514,7 +2514,7 @@ static void hsw_ddi_pre_enable_dp(struct intel_atomic_state *state,
 	intel_ddi_enable_fec(encoder, crtc_state);
 
 	if (!is_mst)
-		intel_ddi_enable_pipe_clock(encoder, crtc_state);
+		intel_ddi_enable_transcoder_clock(encoder, crtc_state);
 
 	intel_dsc_dp_pps_write(encoder, crtc_state);
 }
@@ -2556,7 +2556,7 @@ static void intel_ddi_pre_enable_hdmi(struct intel_atomic_state *state,
 
 	icl_program_mg_dp_mode(dig_port, crtc_state);
 
-	intel_ddi_enable_pipe_clock(encoder, crtc_state);
+	intel_ddi_enable_transcoder_clock(encoder, crtc_state);
 
 	dig_port->set_infoframes(encoder,
 				 crtc_state->has_infoframe,
@@ -2672,7 +2672,7 @@ static void intel_ddi_post_disable_dp(struct intel_atomic_state *state,
 		}
 	} else {
 		if (!is_mst)
-			intel_ddi_disable_pipe_clock(old_crtc_state);
+			intel_ddi_disable_transcoder_clock(old_crtc_state);
 	}
 
 	intel_disable_ddi_buf(encoder, old_crtc_state);
@@ -2683,7 +2683,7 @@ static void intel_ddi_post_disable_dp(struct intel_atomic_state *state,
 	 * transcoder"
 	 */
 	if (DISPLAY_VER(dev_priv) >= 12)
-		intel_ddi_disable_pipe_clock(old_crtc_state);
+		intel_ddi_disable_transcoder_clock(old_crtc_state);
 
 	intel_pps_vdd_on(intel_dp);
 	intel_pps_off(intel_dp);
@@ -2709,12 +2709,12 @@ static void intel_ddi_post_disable_hdmi(struct intel_atomic_state *state,
 				 old_crtc_state, old_conn_state);
 
 	if (DISPLAY_VER(dev_priv) < 12)
-		intel_ddi_disable_pipe_clock(old_crtc_state);
+		intel_ddi_disable_transcoder_clock(old_crtc_state);
 
 	intel_disable_ddi_buf(encoder, old_crtc_state);
 
 	if (DISPLAY_VER(dev_priv) >= 12)
-		intel_ddi_disable_pipe_clock(old_crtc_state);
+		intel_ddi_disable_transcoder_clock(old_crtc_state);
 
 	intel_display_power_put(dev_priv,
 				dig_port->ddi_io_power_domain,
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.h b/drivers/gpu/drm/i915/display/intel_ddi.h
index d39076facdce..361f6874dde5 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.h
+++ b/drivers/gpu/drm/i915/display/intel_ddi.h
@@ -52,9 +52,9 @@ bool intel_ddi_get_hw_state(struct intel_encoder *encoder, enum pipe *pipe);
 void intel_ddi_enable_transcoder_func(struct intel_encoder *encoder,
 				      const struct intel_crtc_state *crtc_state);
 void intel_ddi_disable_transcoder_func(const struct intel_crtc_state *crtc_state);
-void intel_ddi_enable_pipe_clock(struct intel_encoder *encoder,
-				 const struct intel_crtc_state *crtc_state);
-void intel_ddi_disable_pipe_clock(const  struct intel_crtc_state *crtc_state);
+void intel_ddi_enable_transcoder_clock(struct intel_encoder *encoder,
+				       const struct intel_crtc_state *crtc_state);
+void intel_ddi_disable_transcoder_clock(const  struct intel_crtc_state *crtc_state);
 void intel_ddi_set_dp_msa(const struct intel_crtc_state *crtc_state,
 			  const struct drm_connector_state *conn_state);
 bool intel_ddi_connector_get_hw_state(struct intel_connector *intel_connector);
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 8b0e4defa3f1..5555f27993b2 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -598,7 +598,7 @@ static void intel_mst_post_disable_dp(struct intel_atomic_state *state,
 	 * no clock to the transcoder"
 	 */
 	if (DISPLAY_VER(dev_priv) < 12 || !last_mst_stream)
-		intel_ddi_disable_pipe_clock(old_crtc_state);
+		intel_ddi_disable_transcoder_clock(old_crtc_state);
 
 
 	intel_mst->connector = NULL;
@@ -678,7 +678,7 @@ static void intel_mst_pre_enable_dp(struct intel_atomic_state *state,
 	 * here for the following ones.
 	 */
 	if (DISPLAY_VER(dev_priv) < 12 || !first_mst_stream)
-		intel_ddi_enable_pipe_clock(encoder, pipe_config);
+		intel_ddi_enable_transcoder_clock(encoder, pipe_config);
 
 	intel_ddi_set_dp_msa(pipe_config, conn_state);
 }
-- 
2.39.1

