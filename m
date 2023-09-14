Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1ADA87A0E33
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Sep 2023 21:26:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9B3D710E583;
	Thu, 14 Sep 2023 19:26:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3250D10E2B3
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Sep 2023 19:26:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694719605; x=1726255605;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Ymxf2GPkfL3jd4ExB17hZkxPkDi4Qo4RP6b/YwKciS0=;
 b=AVcFMB+2JORyVT9pYOfP/EsIcgfsBS9GrBbedAZc07CmYta0VHPptLA5
 h6wwZoG91Dyn6VjFL/14S5l7MYnR7B8JDDOxNjBYm+5j//prDzY5+ER7o
 oJnfFJpff4Zfcgg6ubNfur3Vy04rdbc4LsdysZeD7s4c984L1FcnDlYbJ
 iR57Rk2SfE+nQR0mxSq6U9i1mHYfWqD6SCeBN1j9nrHdf99jEoMC5h6KD
 kNOoOir+wXpWbx5It4olVQaRSOBe7HlEyG+FwO/GohOqA9dg4leGe7jC5
 Wohet8hY/1axVUKfU+rVDpKxROPBK96BO23D/Z0GBK7N8nfnwA00rsfzV w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10833"; a="465421661"
X-IronPort-AV: E=Sophos;i="6.02,146,1688454000"; d="scan'208";a="465421661"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2023 12:26:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10833"; a="779790489"
X-IronPort-AV: E=Sophos;i="6.02,146,1688454000"; d="scan'208";a="779790489"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2023 12:26:43 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 14 Sep 2023 22:26:37 +0300
Message-Id: <20230914192659.757475-4-imre.deak@intel.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230914192659.757475-1-imre.deak@intel.com>
References: <20230914192659.757475-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 03/25] drm/i915/dp: Skip computing a non-DSC
 link config if DSC is needed
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

Computing the non-DSC mode link config is redundant once it's determined
that DSC will be needed, so skip computing it. In a follow-up patch this
simplifies setting the link limits which are dependent on the DSC vs.
non-DSC mode.

While at it sanitize the debug print about the MST DSC fallback path,
making it similar to the SST DSC one.

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c     | 22 ++++++++++++------
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 25 +++++++++++++++------
 2 files changed, 33 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 5fd32280eab2f..bdaaad34463fb 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2247,7 +2247,8 @@ intel_dp_compute_link_config(struct intel_encoder *encoder,
 	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
 	struct link_config_limits limits;
 	bool joiner_needs_dsc = false;
-	int ret;
+	bool dsc_needed;
+	int ret = 0;
 
 	intel_dp_compute_config_limits(intel_dp, pipe_config,
 				       respect_downstream_limits, &limits);
@@ -2263,13 +2264,20 @@ intel_dp_compute_link_config(struct intel_encoder *encoder,
 	 */
 	joiner_needs_dsc = DISPLAY_VER(i915) < 13 && pipe_config->bigjoiner_pipes;
 
-	/*
-	 * Optimize for slow and wide for everything, because there are some
-	 * eDP 1.3 and 1.4 panels don't work well with fast and narrow.
-	 */
-	ret = intel_dp_compute_link_config_wide(intel_dp, pipe_config, conn_state, &limits);
+	dsc_needed = joiner_needs_dsc || intel_dp->force_dsc_en;
 
-	if (ret || joiner_needs_dsc || intel_dp->force_dsc_en) {
+	if (!dsc_needed) {
+		/*
+		 * Optimize for slow and wide for everything, because there are some
+		 * eDP 1.3 and 1.4 panels don't work well with fast and narrow.
+		 */
+		ret = intel_dp_compute_link_config_wide(intel_dp, pipe_config,
+							conn_state, &limits);
+		if (ret)
+			dsc_needed = true;
+	}
+
+	if (dsc_needed) {
 		drm_dbg_kms(&i915->drm, "Try DSC (fallback=%s, joiner=%s, force=%s)\n",
 			    str_yes_no(ret), str_yes_no(joiner_needs_dsc),
 			    str_yes_no(intel_dp->force_dsc_en));
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 69342bce6953d..2a0f2caf5b8d7 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -337,7 +337,8 @@ static int intel_dp_mst_compute_config(struct intel_encoder *encoder,
 	const struct drm_display_mode *adjusted_mode =
 		&pipe_config->hw.adjusted_mode;
 	struct link_config_limits limits;
-	int ret;
+	bool dsc_needed;
+	int ret = 0;
 
 	if (adjusted_mode->flags & DRM_MODE_FLAG_DBLSCAN)
 		return -EINVAL;
@@ -348,15 +349,25 @@ static int intel_dp_mst_compute_config(struct intel_encoder *encoder,
 
 	intel_dp_mst_compute_config_limits(intel_dp, pipe_config, &limits);
 
-	ret = intel_dp_mst_compute_link_config(encoder, pipe_config,
-					       conn_state, &limits);
+	dsc_needed = intel_dp->force_dsc_en;
 
-	if (ret == -EDEADLK)
-		return ret;
+	if (!dsc_needed) {
+		ret = intel_dp_mst_compute_link_config(encoder, pipe_config,
+						       conn_state, &limits);
+
+		if (ret == -EDEADLK)
+			return ret;
+
+		if (ret)
+			dsc_needed = true;
+	}
 
 	/* enable compression if the mode doesn't fit available BW */
-	drm_dbg_kms(&dev_priv->drm, "Force DSC en = %d\n", intel_dp->force_dsc_en);
-	if (ret || intel_dp->force_dsc_en) {
+	if (dsc_needed) {
+		drm_dbg_kms(&dev_priv->drm, "Try DSC (fallback=%s, force=%s)\n",
+			    str_yes_no(ret),
+			    str_yes_no(intel_dp->force_dsc_en));
+
 		/*
 		 * FIXME: As bpc is hardcoded to 8, as mentioned above,
 		 * WARN and ignore the debug flag force_dsc_bpc for now.
-- 
2.37.2

