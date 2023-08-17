Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7657977FBC3
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Aug 2023 18:16:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7ABDC10E514;
	Thu, 17 Aug 2023 16:16:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9DFA910E4FE
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Aug 2023 16:16:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692288964; x=1723824964;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=H2U0TwcRL6k7iUmsKX4OVEfIy5m4RCs63MQV0tvWM7E=;
 b=hV26LFrtXEe7K27Fh+slYiPHZq/sG/yiIYTkZazZMtrxb+jTR0hD+V4R
 HiRI7Ao2+1cVPOSlrm8+cgm2bIu7HkI7EioEePAf0LpC0TTWhZqH6SXmR
 5JjFZKO42gGXEThHkFEg/0h45+xy1t5Ov7UajykjaTYA9LG8lgPG3QP6H
 IGyuf5fAllPeXrfNtKn3t4Pzmiti5DZYkXx1BC4Pcd11blfOaQCB2BCcD
 FVES2ZzJLViO0EQHMaKm1lWy98m2geuXB9fXXMEUoZJXax/4oQIKQkWoE
 NJDx/elq6jxlqVxexh27F+Ubd/u6XR0u2dT1eOxbKwdZ1GCOASM8cfchV w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10805"; a="357826580"
X-IronPort-AV: E=Sophos;i="6.01,180,1684825200"; d="scan'208";a="357826580"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2023 09:14:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10805"; a="711601349"
X-IronPort-AV: E=Sophos;i="6.01,180,1684825200"; d="scan'208";a="711601349"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2023 09:14:44 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 17 Aug 2023 19:14:42 +0300
Message-Id: <20230817161456.3857111-4-imre.deak@intel.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230817161456.3857111-1-imre.deak@intel.com>
References: <20230817161456.3857111-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 03/17] drm/i915/dp: Skip computing a non-DSC
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
index f4952fcfb16e9..62dc3716c3998 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1855,7 +1855,8 @@ intel_dp_compute_link_config(struct intel_encoder *encoder,
 	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
 	struct link_config_limits limits;
 	bool joiner_needs_dsc = false;
-	int ret;
+	bool dsc_needed;
+	int ret = 0;
 
 	intel_dp_compute_config_limits(intel_dp, pipe_config,
 				       respect_downstream_limits, &limits);
@@ -1871,13 +1872,20 @@ intel_dp_compute_link_config(struct intel_encoder *encoder,
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
index 1809643538d08..68739e46a9edb 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -347,7 +347,8 @@ static int intel_dp_mst_compute_config(struct intel_encoder *encoder,
 	const struct drm_display_mode *adjusted_mode =
 		&pipe_config->hw.adjusted_mode;
 	struct link_config_limits limits;
-	int ret;
+	bool dsc_needed;
+	int ret = 0;
 
 	if (adjusted_mode->flags & DRM_MODE_FLAG_DBLSCAN)
 		return -EINVAL;
@@ -362,15 +363,25 @@ static int intel_dp_mst_compute_config(struct intel_encoder *encoder,
 
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
 		 * Try to get at least some timeslots and then see, if
 		 * we can fit there with DSC.
-- 
2.37.2

