Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 030BD688644
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Feb 2023 19:21:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 665FA10E198;
	Thu,  2 Feb 2023 18:21:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3BE3F10E198
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Feb 2023 18:21:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675362076; x=1706898076;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=H0pr9N9T7s8s0wyvPAwp6MxcHkijednt5Wob3b0sATw=;
 b=jID+vmcApaHyLKMDnFBzNmdtKnuAtjKWa0QfFd0OzkDGpnTCeyh4rMdj
 MfEmn0lNpAG11+tf+ufpfxveUYJAeffhER1faz7C+XoRoKXP2ZK4JIUdr
 0GBYvpXQQYnLs5fLwt+JTNUxNZ1C55ynn3yDuSDbqjiFOmThI49PikXse
 110RSmGfqX2egOFW4KQpI4zKNxZ6kxQfrVDMy1M1D2LN/VBQjS6aZE2UU
 Hl1gWPBXoHHHDXCiK8+2n65OdBqvE/cCs+YYJah3cSPaFXufdqlMM1LX/
 /T13Tb0DUPkNg4dZ/9ue1t/sVN9ldRP8uxS5sFtH2ngclPiOUp+6Tq5lj A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10609"; a="393116050"
X-IronPort-AV: E=Sophos;i="5.97,268,1669104000"; d="scan'208";a="393116050"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2023 10:21:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10609"; a="665402340"
X-IronPort-AV: E=Sophos;i="5.97,268,1669104000"; d="scan'208";a="665402340"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orsmga002.jf.intel.com with ESMTP; 02 Feb 2023 10:21:14 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  2 Feb 2023 23:50:12 +0530
Message-Id: <20230202182012.3197674-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230202114613.3177235-2-suraj.kandpal@intel.com>
References: <20230202114613.3177235-2-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2] drm/i915/dp: Increase slice_height for DP
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

Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: Swati Sharma <swati2.sharma@intel.com>
Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 62cbab7402e9..cb4fbcd935db 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1415,6 +1415,30 @@ static int intel_dp_sink_dsc_version_minor(struct intel_dp *intel_dp)
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
+	if (vactive % 8 == 0)
+		slice_height = 8;
+	else if (vactive % 4 == 0)
+		slice_height = 4;
+	else
+		slice_height = 2;
+
+	return slice_height;
+}
+
 static int intel_dp_dsc_compute_params(struct intel_encoder *encoder,
 				       struct intel_crtc_state *crtc_state)
 {
@@ -1433,17 +1457,7 @@ static int intel_dp_dsc_compute_params(struct intel_encoder *encoder,
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

