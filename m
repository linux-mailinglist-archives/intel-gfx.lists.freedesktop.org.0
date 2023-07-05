Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 09F2F747C4A
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Jul 2023 07:16:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE9F010E1BA;
	Wed,  5 Jul 2023 05:16:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 99D8410E1B9
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Jul 2023 05:16:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688534195; x=1720070195;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=V7AW1DZ4ZQ8fNcAeL8XqUvxEMLj/qICFzql+d6OP29c=;
 b=LWs3i5WwaQf4HcioHHGMpFrak2FW3gvEjVc6zEm/Mf/k37EOo2j0BPHG
 TNmZ1NoxKuQ26sYoCnNgvQM0TcjqA/GTN0PXTMO2OTN4unJ6jeo3BO2pj
 BTiTWMb0mFzNFJAoWGCKeACZzrEzkjsEzsuN8VT520kueCRx+cjU69BJL
 vpft+K3rLvIDZzNZ8vjTcmUDToOXf9DAVduSeVMTElna1eK63oBK6Hmip
 wSNZHeFCHWvJ6ldojacNiXqIbiyI+6vbsz0Q5U8SUwHRdYLpewxRB9rrk
 lfYN9c69jdrQYXsTevJG4WJ6qIGdlqqF8Ys4oOvGGU3JNXuVZt7A9ztR1 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10761"; a="365818003"
X-IronPort-AV: E=Sophos;i="6.01,182,1684825200"; d="scan'208";a="365818003"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jul 2023 22:16:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10761"; a="722257910"
X-IronPort-AV: E=Sophos;i="6.01,182,1684825200"; d="scan'208";a="722257910"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmsmga007.fm.intel.com with ESMTP; 04 Jul 2023 22:16:33 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  5 Jul 2023 10:45:00 +0530
Message-Id: <20230705051502.2568245-2-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230705051502.2568245-1-suraj.kandpal@intel.com>
References: <20230705051502.2568245-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 1/3] drm/i915/dsc: Move rc param calculation
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

--v4
-Fix comment alignment [Ankit]

Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vdsc.c | 46 ++++++++++++-----------
 1 file changed, 25 insertions(+), 21 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
index bd9116d2cd76..cfcd463f66bb 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc.c
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
@@ -78,6 +78,28 @@ calculate_rc_params(struct drm_dsc_config *vdsc_cfg)
 	else
 		vdsc_cfg->first_line_bpg_offset = 2 * (vdsc_cfg->slice_height - 1);
 
+	/*
+	 * According to DSC 1.2 spec in Section 4.1 if native_420 is set:
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
@@ -190,30 +212,12 @@ int intel_dsc_compute_params(struct intel_crtc_state *pipe_config)
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

