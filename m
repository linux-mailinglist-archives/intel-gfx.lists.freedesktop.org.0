Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F450687CA2
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Feb 2023 12:47:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 682CA10E1DA;
	Thu,  2 Feb 2023 11:47:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 81CBD10E17C
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Feb 2023 11:47:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675338437; x=1706874437;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=yCrJ6QOGw3Q2xKBkCzFoP7A2WQM8J5Ov8PoXsID5rrM=;
 b=Qy9KZVaYUh0POAUJsWwO0BzO0QkSFVOCsz0OdqokJ+X4xs1p227jlj3e
 UsP4YX32wDwvYxam8EqgPyJfjjVDLJGDr5QqScb3EuX1AV4DVGnYVZaaX
 ejqgB2BpeqTRso0ERfnDd48z8xVbhnA/iNcGplRDEQS7uuLc96Ztk42Ho
 kCm1f1MaHocJCIs/0Cy6BM9niaA9NuqgWEVrKVr4e5p3F8AnXBEFPNUhZ
 gK94PKe2STvDJRCkEgyTx9w2HP0dsoV2ipjnI7yLNs0J82r48T0csg201
 g3kPjZTsY9JI0+ytoT86JdgsySV0vI/hJEx1raL5JEt5IClYZf9pNINHf Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10608"; a="316423248"
X-IronPort-AV: E=Sophos;i="5.97,267,1669104000"; d="scan'208";a="316423248"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2023 03:47:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10608"; a="839160578"
X-IronPort-AV: E=Sophos;i="5.97,267,1669104000"; d="scan'208";a="839160578"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orsmga005.jf.intel.com with ESMTP; 02 Feb 2023 03:47:16 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  2 Feb 2023 17:16:13 +0530
Message-Id: <20230202114613.3177235-2-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230202114613.3177235-1-suraj.kandpal@intel.com>
References: <20230202114613.3177235-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/1] drm/i915/dp: Fix logic to fetch slice_height
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

According to Bpec: 49259 VDSC spec implies that 108 lines is an optimal
slice height, but any size can be used as long as vertical active
integer multiple and maximum vertical slice count requirements are met.

Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: Swati Sharma <swati2.sharma@intel.com>
Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 62cbab7402e9..7bd2e56ef0fa 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1415,6 +1415,22 @@ static int intel_dp_sink_dsc_version_minor(struct intel_dp *intel_dp)
 		DP_DSC_MINOR_SHIFT;
 }
 
+static int intel_dp_get_slice_height(int vactive)
+{
+	int slice_height;
+
+	/*
+	 * VDSC spec implies that 108 lines is an optimal slice height,
+	 * but any size can be used as long as vertical active integer
+	 * multiple and maximum vertical slice count requirements are met.
+	 */
+	for (slice_height = 108; slice_height <= vactive; slice_height += 2)
+		if (!(vactive % slice_height))
+			return slice_height;
+
+	return 0;
+}
+
 static int intel_dp_dsc_compute_params(struct intel_encoder *encoder,
 				       struct intel_crtc_state *crtc_state)
 {
@@ -1433,17 +1449,7 @@ static int intel_dp_dsc_compute_params(struct intel_encoder *encoder,
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

