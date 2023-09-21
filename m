Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B52C7A9DED
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Sep 2023 21:51:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0076C10E607;
	Thu, 21 Sep 2023 19:51:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2341010E607
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Sep 2023 19:51:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695325903; x=1726861903;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=S3vrDNb1/4pzv6f8Mk3lrDP4bliqqUAnmTXccXoyDnw=;
 b=SRbi/s35bUobJjVyAgkifdGhQQEAdtp1UI4F7esane+19EkvvZCVDrX8
 VLNkk6dip267JWREjCasAneJzyyTifHMKXlmKm4MnpEdNbSC/GO8ffRIp
 5OKVjIMVgYa+I2qnLfoRLIgP68IKAH8nIj6TEGxU6tT/75WCmof8bJ0hZ
 +k3J35bM32ljR8Cx9FSrrxlzWQUlFVf3GRRckW7U5bTjAyoRD1kxW14Fz
 XOvwiHdpUWQs5hoyrOzh2Jk2+GVW12cCRN4wujpctgtQjIM9ufdu7cK/r
 gkCkpW3DQkSytQV/sWVOqPFa/Y5fS/GilGoAtTYplycbMK2iyhSTKwT4c g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10840"; a="379523068"
X-IronPort-AV: E=Sophos;i="6.03,166,1694761200"; d="scan'208";a="379523068"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2023 12:51:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10840"; a="817523710"
X-IronPort-AV: E=Sophos;i="6.03,166,1694761200"; d="scan'208";a="817523710"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2023 12:51:41 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 21 Sep 2023 22:51:51 +0300
Message-Id: <20230921195159.2646027-4-imre.deak@intel.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230921195159.2646027-1-imre.deak@intel.com>
References: <20230921195159.2646027-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 03/11] drm/i915/dp: Skip computing a non-DSC
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
index 9a38ea58b7876..8c6ff2fa63654 100644
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
index 69b1a13e45bf8..05a7bce7cb8e2 100644
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

