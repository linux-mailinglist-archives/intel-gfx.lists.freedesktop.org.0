Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CBA23695871
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Feb 2023 06:21:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2C61710E096;
	Tue, 14 Feb 2023 05:21:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5FAE610E096
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Feb 2023 05:21:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676352079; x=1707888079;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Sr+jRuRMzDnH/I72X/Lj/IB90D5i5QSImp88inoKEW0=;
 b=LcPYs5FZ1Acfy3JVwFrJNtx0GKn7MH+rG8Qw164JvLhOUm3NTbH4vOhW
 sm5jaa/N/aXtq9TQkH5Y4klRodYACuDVKzjtxOA2GEGl+mJb45zcSA8lI
 PzezXMxQBTfDmk+EwKOpiDbn+bYqWGYLiuFJsDTAn6teXPvJSw4FwV2P1
 DYL7/sj0hFc42Cs1pH3l8w60feWREaV6QD0Qm9XUNcgi4qsk8+DfsHYI9
 aSB0jQiBNGODGylRQvh0cOQrrG/FHjByGNxctn/IJ1rhNeIVGVUM2rZuW
 rRnTuZpIjtH0fF6IhqvxANFgyaNKeJAWE7QkymH+YJ0NzOmKg8Rox02Tl A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10620"; a="310712301"
X-IronPort-AV: E=Sophos;i="5.97,294,1669104000"; d="scan'208";a="310712301"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2023 21:21:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10620"; a="618911352"
X-IronPort-AV: E=Sophos;i="5.97,294,1669104000"; d="scan'208";a="618911352"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orsmga003.jf.intel.com with ESMTP; 13 Feb 2023 21:21:17 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 14 Feb 2023 10:50:17 +0530
Message-Id: <20230214052017.3312044-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230202182012.3197674-1-suraj.kandpal@intel.com>
References: <20230202182012.3197674-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3] drm/i915/dp: Increase slice_height for DP
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

According VDSC spec 1.2a Section 3.8 Options for Slice
implies that 108 lines is an optimal slice height, but any
size can be used as long as vertical active
integer multiple and maximum vertical slice count requirements are met.

Bspec: 49259

--v3
-remove previous fallback code and return slice_height as 2 [Jani]

Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: Swati Sharma <swati2.sharma@intel.com>
Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 62cbab7402e9..fe98c7dec193 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1415,6 +1415,27 @@ static int intel_dp_sink_dsc_version_minor(struct intel_dp *intel_dp)
 		DP_DSC_MINOR_SHIFT;
 }
 
+static int intel_dp_get_slice_height(int vactive)
+{
+	int slice_height;
+
+	/*
+	 * VDSC1.2a spec in Section 3.8 Options for Slices implies that
+	 * 108 lines is an optimal slice height,
+	 * but any size can be used as long as vertical active integer
+	 * multiple and maximum vertical slice count requirements are met.
+	 */
+	for (slice_height = 108; slice_height <= vactive; slice_height += 2)
+		if (vactive % slice_height == 0)
+			return slice_height;
+
+	/* Highly unlikely we reach here as most of the resloutions will end up
+	 * finding appropriate slice_height in above loop but returning slice_height as 2
+	 * here as it should work with all resolutions.
+	 */
+	return 2;
+}
+
 static int intel_dp_dsc_compute_params(struct intel_encoder *encoder,
 				       struct intel_crtc_state *crtc_state)
 {
@@ -1433,17 +1454,7 @@ static int intel_dp_dsc_compute_params(struct intel_encoder *encoder,
 	vdsc_cfg->rc_model_size = DSC_RC_MODEL_SIZE_CONST;
 	vdsc_cfg->pic_height = crtc_state->hw.adjusted_mode.crtc_vdisplay;
 
-	/*
-	 * Slice Height of 8 works for all currently available panels. So start
-	 * with that if pic_height is an integral multiple of 8. Eventually add
-	 * logic to try multiple slice heights.
-	 */
-	if (vdsc_cfg->pic_height % 8 == 0)
-		vdsc_cfg->slice_height = 8;
-	else if (vdsc_cfg->pic_height % 4 == 0)
-		vdsc_cfg->slice_height = 4;
-	else
-		vdsc_cfg->slice_height = 2;
+	vdsc_cfg->slice_height = intel_dp_get_slice_height(vdsc_cfg->pic_height);
 
 	ret = intel_dsc_compute_params(crtc_state);
 	if (ret)
-- 
2.25.1

