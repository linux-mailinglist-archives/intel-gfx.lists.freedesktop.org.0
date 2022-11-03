Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AA6A0617682
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Nov 2022 07:01:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ABBC110E5A3;
	Thu,  3 Nov 2022 06:01:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 66BCF10E5A3
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Nov 2022 06:01:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667455260; x=1698991260;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=IHu0d026/gEUtmRqcufP7hMW56UavSRGXg8u9zuje9Q=;
 b=kDvtLlPCqLkdw5bL9V86pwpCpWTF1vkl2wFEDueYNTjOpDzNBvmpEjzH
 C1D0iq2T5NhtzS220vGoI6QDCHkKnfnLyWk8JbIDQEVMb3yzRwamjj+Y7
 10vustoWEL5LGG+iRpGXh7rU0AQtbCfqjcCB8s3kSdYc23X4EaE/erEqZ
 YC52TSUnvc/0KCm8e9Ow/goQ1UQYOCqnKpTJkEY+RsgKAMM4KxTN3R6ij
 CB+wKlzsPxr7tBUkDkCAg7dpkQFJWwFfCr3Om71Yuf3dWXgcmGdPtyo6a
 +RD7BrhXEUPLdzzgjB/4b8AWmNJ0NawTNgowD93BkwjJSYiPabBci5iNJ Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10519"; a="311322594"
X-IronPort-AV: E=Sophos;i="5.95,235,1661842800"; d="scan'208";a="311322594"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2022 23:00:45 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10519"; a="698090726"
X-IronPort-AV: E=Sophos;i="5.95,235,1661842800"; d="scan'208";a="698090726"
Received: from srr4-3-linux-118-swatish2.iind.intel.com ([10.223.34.130])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2022 23:00:44 -0700
From: Swati Sharma <swati2.sharma@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  3 Nov 2022 11:32:22 +0530
Message-Id: <20221103060222.23054-1-swati2.sharma@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/dsc: Add is_dsc_supported()
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Lets use RUNTIME_INFO->has_dsc since platforms supporting dsc has this
flag enabled.

This is done based on the review comments received on
https://patchwork.freedesktop.org/patch/509393/

Signed-off-by: Swati Sharma <swati2.sharma@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c   | 6 +++---
 drivers/gpu/drm/i915/display/intel_vdsc.c | 7 ++++++-
 drivers/gpu/drm/i915/display/intel_vdsc.h | 2 ++
 3 files changed, 11 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 7400d6b4c587..eb908da80f2b 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1012,7 +1012,7 @@ intel_dp_mode_valid(struct drm_connector *_connector,
 	 * Output bpp is stored in 6.4 format so right shift by 4 to get the
 	 * integer value since we support only integer values of bpp.
 	 */
-	if (DISPLAY_VER(dev_priv) >= 10 &&
+	if (is_dsc_supported(dev_priv) &&
 	    drm_dp_sink_supports_dsc(intel_dp->dsc_dpcd)) {
 		/*
 		 * TBD pass the connector BPC,
@@ -2906,7 +2906,7 @@ intel_edp_init_dpcd(struct intel_dp *intel_dp)
 	intel_dp_set_max_sink_lane_count(intel_dp);
 
 	/* Read the eDP DSC DPCD registers */
-	if (DISPLAY_VER(dev_priv) >= 10)
+	if (is_dsc_supported(dev_priv))
 		intel_dp_get_dsc_sink_cap(intel_dp);
 
 	/*
@@ -4691,7 +4691,7 @@ intel_dp_detect(struct drm_connector *connector,
 	}
 
 	/* Read DP Sink DSC Cap DPCD regs for DP v1.4 */
-	if (DISPLAY_VER(dev_priv) >= 11)
+	if (is_dsc_supported(dev_priv))
 		intel_dp_get_dsc_sink_cap(intel_dp);
 
 	intel_dp_configure_mst(intel_dp);
diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
index 269f9792390d..e7c1169538da 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc.c
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
@@ -338,13 +338,18 @@ static const struct rc_parameters *get_rc_params(u16 compressed_bpp,
 	return &rc_parameters[row_index][column_index];
 }
 
+bool is_dsc_supported(struct drm_i915_private *dev_priv)
+{
+	return RUNTIME_INFO(dev_priv)->has_dsc;
+}
+
 bool intel_dsc_source_support(const struct intel_crtc_state *crtc_state)
 {
 	const struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 
-	if (!RUNTIME_INFO(i915)->has_dsc)
+	if (!is_dsc_supported(i915))
 		return false;
 
 	if (DISPLAY_VER(i915) >= 12)
diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.h b/drivers/gpu/drm/i915/display/intel_vdsc.h
index 8763f00fa7e2..049e8b95fdde 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc.h
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.h
@@ -12,7 +12,9 @@ enum transcoder;
 struct intel_crtc;
 struct intel_crtc_state;
 struct intel_encoder;
+struct drm_i915_private;
 
+bool is_dsc_supported(struct drm_i915_private *dev_priv);
 bool intel_dsc_source_support(const struct intel_crtc_state *crtc_state);
 void intel_uncompressed_joiner_enable(const struct intel_crtc_state *crtc_state);
 void intel_dsc_enable(const struct intel_crtc_state *crtc_state);
-- 
2.25.1

