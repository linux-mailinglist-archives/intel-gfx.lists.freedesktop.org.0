Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E39DF89907C
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Apr 2024 23:35:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A03A113575;
	Thu,  4 Apr 2024 21:35:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="i9wody2c";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 14345113584
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Apr 2024 21:35:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712266519; x=1743802519;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=XDOTDS4YtK8djN5fTaTLZVAVjU6fHHaLiF0BHWg+lJU=;
 b=i9wody2cQ326+9mI1S09RGN/5EBGfLQX4dRLvvZs87lBexwvljFfUBm6
 Ps98IizjV4dSxinZqcQO6ZPw3iC5lJlOrhFbmABbfKVcI21SFIxg0oA6F
 mFQnWnoZSsJp6wWMhDD3vdOWc01/ugWlKgFaqV9hUK3dUM0ncGGXR2VOR
 eMy9PL58PaV28XiSSTCI6p4MzhDbsQUrseSMhz4OO7l4ssIdgeEWG+9q3
 vmeKCHuCp/zBXhQICcc2SgQIcDsMgcVPdVKSHcCh6r7JxVCQzoyJO4fbT
 3b/RgsJYDIHfx0PCn5zh4YyRKwqOOOyvKholFWSWfRI1fCRGf3SiQVZdK Q==;
X-CSE-ConnectionGUID: w8/MyKcXTJOohYbnadmgyw==
X-CSE-MsgGUID: EOs22i8ETJOVBas2skhANg==
X-IronPort-AV: E=McAfee;i="6600,9927,11034"; a="7710830"
X-IronPort-AV: E=Sophos;i="6.07,180,1708416000"; 
   d="scan'208";a="7710830"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2024 14:35:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,11034"; a="827790627"
X-IronPort-AV: E=Sophos;i="6.07,180,1708416000"; d="scan'208";a="827790627"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 04 Apr 2024 14:35:16 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 05 Apr 2024 00:35:15 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Vidya Srinivas <vidya.srinivas@intel.com>,
 Uma Shankar <uma.shankar@intel.com>
Subject: [PATCH v2 10/17] drm/i915: Pass connector to intel_dp_need_bigjoiner()
Date: Fri,  5 Apr 2024 00:34:34 +0300
Message-ID: <20240404213441.17637-11-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240404213441.17637-1-ville.syrjala@linux.intel.com>
References: <20240404213441.17637-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Pass the connector explicitly to intel_dp_need_bigjoiner()
so that it'll actually check the correct place for the
bigjoiner force flag.

Tested-by: Vidya Srinivas <vidya.srinivas@intel.com>
Reviewed-by: Uma Shankar <uma.shankar@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c     | 10 ++++++----
 drivers/gpu/drm/i915/display/intel_dp.h     |  1 +
 drivers/gpu/drm/i915/display/intel_dp_mst.c |  5 +++--
 3 files changed, 10 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 4f15529212a1..66568bb1a0b0 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1202,10 +1202,10 @@ intel_dp_mode_valid_downstream(struct intel_connector *connector,
 }
 
 bool intel_dp_need_bigjoiner(struct intel_dp *intel_dp,
+			     struct intel_connector *connector,
 			     int hdisplay, int clock)
 {
 	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
-	struct intel_connector *connector = intel_dp->attached_connector;
 
 	if (!intel_dp_has_bigjoiner(intel_dp))
 		return false;
@@ -1249,7 +1249,8 @@ intel_dp_mode_valid(struct drm_connector *_connector,
 		target_clock = fixed_mode->clock;
 	}
 
-	if (intel_dp_need_bigjoiner(intel_dp, mode->hdisplay, target_clock)) {
+	if (intel_dp_need_bigjoiner(intel_dp, connector,
+				    mode->hdisplay, target_clock)) {
 		bigjoiner = true;
 		max_dotclk *= 2;
 	}
@@ -2419,7 +2420,7 @@ intel_dp_compute_link_config(struct intel_encoder *encoder,
 {
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	struct intel_crtc *crtc = to_intel_crtc(pipe_config->uapi.crtc);
-	const struct intel_connector *connector =
+	struct intel_connector *connector =
 		to_intel_connector(conn_state->connector);
 	const struct drm_display_mode *adjusted_mode =
 		&pipe_config->hw.adjusted_mode;
@@ -2432,7 +2433,8 @@ intel_dp_compute_link_config(struct intel_encoder *encoder,
 	    !intel_dp_supports_fec(intel_dp, connector, pipe_config))
 		return -EINVAL;
 
-	if (intel_dp_need_bigjoiner(intel_dp, adjusted_mode->crtc_hdisplay,
+	if (intel_dp_need_bigjoiner(intel_dp, connector,
+				    adjusted_mode->crtc_hdisplay,
 				    adjusted_mode->crtc_clock))
 		pipe_config->bigjoiner_pipes = GENMASK(crtc->pipe + 1, crtc->pipe);
 
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index 9f6be562fa08..106ecfde36d9 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -151,6 +151,7 @@ u8 intel_dp_dsc_get_slice_count(const struct intel_connector *connector,
 				int mode_clock, int mode_hdisplay,
 				bool bigjoiner);
 bool intel_dp_need_bigjoiner(struct intel_dp *intel_dp,
+			     struct intel_connector *connector,
 			     int hdisplay, int clock);
 
 static inline unsigned int intel_dp_unused_lane_mask(int lane_count)
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index aac66c2f65a1..de364ed77c08 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -527,7 +527,7 @@ static int intel_dp_mst_compute_config(struct intel_encoder *encoder,
 	struct intel_atomic_state *state = to_intel_atomic_state(conn_state->state);
 	struct intel_dp_mst_encoder *intel_mst = enc_to_mst(encoder);
 	struct intel_dp *intel_dp = &intel_mst->primary->dp;
-	const struct intel_connector *connector =
+	struct intel_connector *connector =
 		to_intel_connector(conn_state->connector);
 	const struct drm_display_mode *adjusted_mode =
 		&pipe_config->hw.adjusted_mode;
@@ -1342,7 +1342,8 @@ intel_dp_mst_mode_valid_ctx(struct drm_connector *connector,
 		*status = MODE_CLOCK_HIGH;
 		return 0;
 	}
-	if (intel_dp_need_bigjoiner(intel_dp, mode->hdisplay, target_clock)) {
+	if (intel_dp_need_bigjoiner(intel_dp, intel_connector,
+				    mode->hdisplay, target_clock)) {
 		bigjoiner = true;
 		max_dotclk *= 2;
 
-- 
2.43.2

