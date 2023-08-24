Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DED70786953
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Aug 2023 10:05:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B9D3110E4B9;
	Thu, 24 Aug 2023 08:05:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CF90010E4B9
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Aug 2023 08:05:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692864305; x=1724400305;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=bU8Mv5xxUqscYWyI+N2cJspIv39q01yyjY71mEOIiLc=;
 b=RDfWb5J5zzTSjD8bctKJihWxP/Gk9g4Erqzqt/zKCPHf1je3VThq19tC
 kH3p4tyTx4/8R1DAY5VA8lnDfsnX2aCPAVlxzm/j3cMBAfFG3/2RO0gXr
 VltTUDqIWaSZn3VnJklFT6o7ejYltfG9kyE5+fe0aTEoN8jAwBmMvS0ao
 +Tm5TAd0Lf42AWwOzpf1sqwoEf6GFfGhnsHs++2EgpjyRm8368afzPWkf
 e9+dwCtDPIBvJd02d8cbIBdSx1BTJezpVvhNNSKrbiM0R1npsG29m4MtY
 hDQX1kypdwMcJZ79ov3DuxqRtXULUjtEMP7U6h06GdMrVYrcMskOScRRp Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="374345845"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="374345845"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2023 01:05:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.01,202,1684825200"; d="scan'208";a="880710282"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2023 01:05:09 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 24 Aug 2023 11:04:58 +0300
Message-Id: <20230824080517.693621-4-imre.deak@intel.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230824080517.693621-1-imre.deak@intel.com>
References: <20230824080517.693621-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 03/22] drm/i915/dp: Skip computing a non-DSC
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

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c     | 22 ++++++++++++------
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 25 +++++++++++++++------
 2 files changed, 33 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index cf29562795f75..c580472c06b85 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2246,7 +2246,8 @@ intel_dp_compute_link_config(struct intel_encoder *encoder,
 	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
 	struct link_config_limits limits;
 	bool joiner_needs_dsc = false;
-	int ret;
+	bool dsc_needed;
+	int ret = 0;
 
 	intel_dp_compute_config_limits(intel_dp, pipe_config,
 				       respect_downstream_limits, &limits);
@@ -2262,13 +2263,20 @@ intel_dp_compute_link_config(struct intel_encoder *encoder,
 	 */
 	joiner_needs_dsc = DISPLAY_VER(i915) < 13 && pipe_config->bigjoiner_pipes;
 
-	/*
-	 * Optimize for slow and wide for everything, because there are some
-	 * eDP 1.3 and 1.4 panels don't work well with fast and narrow.
-	 */
-	ret = intel_dp_compute_link_config_wide(intel_dp, pipe_config, conn_state, &limits);
+	dsc_needed = joiner_needs_dsc || intel_dp->force_dsc_en;
+
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
 
-	if (ret || joiner_needs_dsc || intel_dp->force_dsc_en) {
+	if (dsc_needed) {
 		drm_dbg_kms(&i915->drm, "Try DSC (fallback=%s, joiner=%s, force=%s)\n",
 			    str_yes_no(ret), str_yes_no(joiner_needs_dsc),
 			    str_yes_no(intel_dp->force_dsc_en));
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 6c1c996c74e62..c077b999ccb74 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -350,7 +350,8 @@ static int intel_dp_mst_compute_config(struct intel_encoder *encoder,
 	const struct drm_display_mode *adjusted_mode =
 		&pipe_config->hw.adjusted_mode;
 	struct link_config_limits limits;
-	int ret;
+	bool dsc_needed;
+	int ret = 0;
 
 	if (adjusted_mode->flags & DRM_MODE_FLAG_DBLSCAN)
 		return -EINVAL;
@@ -365,15 +366,25 @@ static int intel_dp_mst_compute_config(struct intel_encoder *encoder,
 
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

