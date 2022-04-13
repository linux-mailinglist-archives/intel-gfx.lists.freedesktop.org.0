Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 653994FFF25
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Apr 2022 21:26:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AFABD10E415;
	Wed, 13 Apr 2022 19:26:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B9E710E415
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Apr 2022 19:26:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649877970; x=1681413970;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=1reCdbckK6wbBd/0EpLUfFh7j+JOn+kRYTlnENfO9Vg=;
 b=h5L4kVfVKf20tdkNWB9PSkWKyyiKWAjgU1XNyqsarJVSIi50CYZeh7kj
 mhHYQQTeAxZjd3jUafPdz1LMyMAhphoZncI6phQXutJ310NgiNoNrQ7q+
 LqBw3xIQlYaJ6U7sdSdO6u0Xs9avEl++hoOmzy99UKL3KkVudHDSsaut8
 a1epHf8VR2F1T7MaVrBCl55L4fYuOO0WsifHi7+5niuoUe6/Tvvt2nDMJ
 DU/C3EJ54fkioA5c0/FVgHDyZDczqvdDfbRwn0DNefIRKGrM9VjZOklTP
 V8GlO4c3aS2s0RZW+nOxzze1pd829Dr8DSVud9nu99gyiY2g67b+hvjUq w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10316"; a="261600713"
X-IronPort-AV: E=Sophos;i="5.90,257,1643702400"; d="scan'208";a="261600713"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2022 12:26:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,257,1643702400"; d="scan'208";a="700369993"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.51])
 by fmsmga001.fm.intel.com with SMTP; 13 Apr 2022 12:26:07 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 13 Apr 2022 22:26:07 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 13 Apr 2022 22:26:07 +0300
Message-Id: <20220413192607.27533-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: Eliminate PIPECONF RMWs from
 .color_commit()
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

Eliminate the PIPECONF RMWs from .comit_commit() so
that we can finally declare the whole vblank evade part
(and the noarm() part) of the pipe commit free of register
reads. Or at least I hope that's the last read...

Only the i9xx/ilk codepaths need this for now, but let's
add the same thing for hsw+ just in case we want to start
calling that during fastsets at some point (eg. to change
dithering settings/etc.).

Should open up the way to start experimenting with
different DSB usage approaches for pipe commits.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_color.c   | 21 ++++----------
 drivers/gpu/drm/i915/display/intel_display.c | 30 ++++++++++++++------
 drivers/gpu/drm/i915/display/intel_display.h |  2 ++
 3 files changed, 29 insertions(+), 24 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index 34128c9c635c..60532dd0f9f6 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -505,30 +505,19 @@ static void ilk_color_commit_noarm(const struct intel_crtc_state *crtc_state)
 
 static void i9xx_color_commit_arm(const struct intel_crtc_state *crtc_state)
 {
-	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
-	enum pipe pipe = crtc->pipe;
-	u32 val;
-
-	val = intel_de_read(dev_priv, PIPECONF(pipe));
-	val &= ~PIPECONF_GAMMA_MODE_MASK_I9XX;
-	val |= PIPECONF_GAMMA_MODE(crtc_state->gamma_mode);
-	intel_de_write(dev_priv, PIPECONF(pipe), val);
+	/* update PIPECONF GAMMA_MODE */
+	i9xx_set_pipeconf(crtc_state);
 }
 
 static void ilk_color_commit_arm(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
-	enum pipe pipe = crtc->pipe;
-	u32 val;
 
-	val = intel_de_read(dev_priv, PIPECONF(pipe));
-	val &= ~PIPECONF_GAMMA_MODE_MASK_ILK;
-	val |= PIPECONF_GAMMA_MODE(crtc_state->gamma_mode);
-	intel_de_write(dev_priv, PIPECONF(pipe), val);
+	/* update PIPECONF GAMMA_MODE */
+	ilk_set_pipeconf(crtc_state);
 
-	intel_de_write_fw(dev_priv, PIPE_CSC_MODE(pipe),
+	intel_de_write_fw(dev_priv, PIPE_CSC_MODE(crtc->pipe),
 			  crtc_state->csc_mode);
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 29044cf58b87..aa2814332ad9 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -122,8 +122,6 @@
 
 static void intel_set_transcoder_timings(const struct intel_crtc_state *crtc_state);
 static void intel_set_pipe_src_size(const struct intel_crtc_state *crtc_state);
-static void i9xx_set_pipeconf(const struct intel_crtc_state *crtc_state);
-static void ilk_set_pipeconf(const struct intel_crtc_state *crtc_state);
 static void hsw_set_transconf(const struct intel_crtc_state *crtc_state);
 static void bdw_set_pipemisc(const struct intel_crtc_state *crtc_state);
 static void ilk_pfit_enable(const struct intel_crtc_state *crtc_state);
@@ -3205,14 +3203,18 @@ static void intel_get_pipe_src_size(struct intel_crtc *crtc,
 	intel_bigjoiner_adjust_pipe_src(pipe_config);
 }
 
-static void i9xx_set_pipeconf(const struct intel_crtc_state *crtc_state)
+void i9xx_set_pipeconf(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	u32 pipeconf = 0;
 
-	/* we keep both pipes enabled on 830 */
-	if (IS_I830(dev_priv))
+	/*
+	 * - We keep both pipes enabled on 830
+	 * - During modeset the pipe is still disabled and must remain so
+	 * - During fastset the pipe is already enabled and must remain so
+	 */
+	if (IS_I830(dev_priv) || !intel_crtc_needs_modeset(crtc_state))
 		pipeconf |= PIPECONF_ENABLE;
 
 	if (crtc_state->double_wide)
@@ -3524,14 +3526,19 @@ static bool i9xx_get_pipe_config(struct intel_crtc *crtc,
 	return ret;
 }
 
-static void ilk_set_pipeconf(const struct intel_crtc_state *crtc_state)
+void ilk_set_pipeconf(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	enum pipe pipe = crtc->pipe;
-	u32 val;
+	u32 val = 0;
 
-	val = 0;
+	/*
+	 * - During modeset the pipe is still disabled and must remain so
+	 * - During fastset the pipe is already enabled and must remain so
+	 */
+	if (!intel_crtc_needs_modeset(crtc_state))
+		val |= PIPECONF_ENABLE;
 
 	switch (crtc_state->pipe_bpp) {
 	case 18:
@@ -3589,6 +3596,13 @@ static void hsw_set_transconf(const struct intel_crtc_state *crtc_state)
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 	u32 val = 0;
 
+	/*
+	 * - During modeset the pipe is still disabled and must remain so
+	 * - During fastset the pipe is already enabled and must remain so
+	 */
+	if (!intel_crtc_needs_modeset(crtc_state))
+		val |= PIPECONF_ENABLE;
+
 	if (IS_HASWELL(dev_priv) && crtc_state->dither)
 		val |= PIPECONF_DITHER_EN | PIPECONF_DITHER_TYPE_SP;
 
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index 867fa248f042..ee488205c5fe 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -561,6 +561,8 @@ u8 intel_crtc_bigjoiner_slave_pipes(const struct intel_crtc_state *crtc_state);
 struct intel_crtc *intel_master_crtc(const struct intel_crtc_state *crtc_state);
 
 void intel_plane_destroy(struct drm_plane *plane);
+void i9xx_set_pipeconf(const struct intel_crtc_state *crtc_state);
+void ilk_set_pipeconf(const struct intel_crtc_state *crtc_state);
 void intel_enable_transcoder(const struct intel_crtc_state *new_crtc_state);
 void intel_disable_transcoder(const struct intel_crtc_state *old_crtc_state);
 void i830_enable_pipe(struct drm_i915_private *dev_priv, enum pipe pipe);
-- 
2.35.1

