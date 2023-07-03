Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BE66C7459E4
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Jul 2023 12:14:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7C47D10E1FF;
	Mon,  3 Jul 2023 10:14:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4131F10E0DB
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Jul 2023 10:14:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688379260; x=1719915260;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Zhv4G74DaMRrMYpl2JbanoJ8eSXrTlPGq+EOBbZch14=;
 b=KtqdNvNRsSskfSZglzSX6btgcV8/kH6mGzOHitjzUpR5bXzC2jlZ5W8Z
 Q02kFxZ3vlfGJqJ6dgPX6qiLCxphcx74+vFCFDzECVkGI0cW9wGIqTtAv
 TbvteM9oUoRqHInI90hXs01GzXS1jXwv01GfaN2NFvHQ9GXZDGi+KvUxC
 H0DEcA/Aaeo8i5GR+iyEJJieviWzGYnQoyMzJKxL8vPYXOFYeYQuANjo6
 SP6vSWTB3tcbgg5Pay8F1168Aq+NkuPHNbWFrTTrIt1ElIgdPMft0UXdZ
 27mag0h2EYmvMzIAAsJ7HKkS2UP2DmWBumPGDX+YYGl1qBZUyQDyz699V g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10759"; a="393586708"
X-IronPort-AV: E=Sophos;i="6.01,177,1684825200"; d="scan'208";a="393586708"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jul 2023 03:14:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10759"; a="721716036"
X-IronPort-AV: E=Sophos;i="6.01,177,1684825200"; d="scan'208";a="721716036"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmsmga007.fm.intel.com with ESMTP; 03 Jul 2023 03:14:18 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  3 Jul 2023 15:42:42 +0530
Message-Id: <20230703101244.2489790-2-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230703101244.2489790-1-suraj.kandpal@intel.com>
References: <20230703101244.2489790-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 1/3] drm/i915/dsc: Move rc param calculation
 for native_420
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

Move rc_param calculation for native_420 into calculate_rc_parameter.
second_line_bpg_offset and second_line_offset_adj are both rc params
and it would be better to have these calculated where all the other
rc parameters are calculated.

--v2
-Add the reason for commit in commit message [Jani]

--v3
-Move nsl_second_line_bpg_offset with the other 420 calculation
in calculate_rc_param [Ankit]

Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vdsc.c | 45 ++++++++++++-----------
 1 file changed, 24 insertions(+), 21 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
index bd9116d2cd76..7d0edb440ca6 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc.c
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
@@ -78,6 +78,27 @@ calculate_rc_params(struct drm_dsc_config *vdsc_cfg)
 	else
 		vdsc_cfg->first_line_bpg_offset = 2 * (vdsc_cfg->slice_height - 1);
 
+	/* According to DSC 1.2 specs in Section 4.1 if native_420 is set:
+	 * -second_line_bpg_offset is 12 in general and equal to 2*(slice_height-1) if slice
+	 * height < 8.
+	 * -second_line_offset_adj is 512 as shown by emperical values to yield best chroma
+	 * preservation in second line.
+	 * -nsl_bpg_offset is calculated as second_line_offset/slice_height -1 then rounded
+	 * up to 16 fractional bits, we left shift second line offset by 11 to preserve 11
+	 * fractional bits.
+	 */
+	if (vdsc_cfg->native_420) {
+		if (vdsc_cfg->slice_height >= 8)
+			vdsc_cfg->second_line_bpg_offset = 12;
+		else
+			vdsc_cfg->second_line_bpg_offset =
+				2 * (vdsc_cfg->slice_height - 1);
+
+		vdsc_cfg->second_line_offset_adj = 512;
+		vdsc_cfg->nsl_bpg_offset = DIV_ROUND_UP(vdsc_cfg->second_line_bpg_offset << 11,
+							vdsc_cfg->slice_height - 1);
+	}
+
 	/* Our hw supports only 444 modes as of today */
 	if (bpp >= 12)
 		vdsc_cfg->initial_offset = 2048;
@@ -190,30 +211,12 @@ int intel_dsc_compute_params(struct intel_crtc_state *pipe_config)
 	vdsc_cfg->bits_per_pixel = compressed_bpp << 4;
 
 	/*
-	 * According to DSC 1.2 specs in Section 4.1 if native_420 is set:
-	 * -We need to double the current bpp.
-	 * -second_line_bpg_offset is 12 in general and equal to 2*(slice_height-1) if slice
-	 * height < 8.
-	 * -second_line_offset_adj is 512 as shown by emperical values to yeild best chroma
-	 * preservation in second line.
-	 * -nsl_bpg_offset is calculated as second_line_offset/slice_height -1 then rounded
-	 * up to 16 fractional bits, we left shift second line offset by 11 to preserve 11
-	 * fractional bits.
+	 * According to DSC 1.2 specs in Section 4.1 if native_420 is set
+	 * we need to double the current bpp.
 	 */
-	if (vdsc_cfg->native_420) {
+	if (vdsc_cfg->native_420)
 		vdsc_cfg->bits_per_pixel <<= 1;
 
-		if (vdsc_cfg->slice_height >= 8)
-			vdsc_cfg->second_line_bpg_offset = 12;
-		else
-			vdsc_cfg->second_line_bpg_offset =
-				2 * (vdsc_cfg->slice_height - 1);
-
-		vdsc_cfg->second_line_offset_adj = 512;
-		vdsc_cfg->nsl_bpg_offset = DIV_ROUND_UP(vdsc_cfg->second_line_bpg_offset << 11,
-							vdsc_cfg->slice_height - 1);
-	}
-
 	vdsc_cfg->bits_per_component = pipe_config->pipe_bpp / 3;
 
 	drm_dsc_set_rc_buf_thresh(vdsc_cfg);
-- 
2.25.1

