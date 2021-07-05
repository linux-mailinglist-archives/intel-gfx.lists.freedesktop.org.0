Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 24D923BBA8B
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Jul 2021 11:53:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D643E89BFF;
	Mon,  5 Jul 2021 09:53:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 835F589BFF
 for <intel-gfx@lists.freedesktop.org>; Mon,  5 Jul 2021 09:53:08 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10035"; a="189333119"
X-IronPort-AV: E=Sophos;i="5.83,325,1616482800"; d="scan'208";a="189333119"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jul 2021 02:53:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,325,1616482800"; d="scan'208";a="646637813"
Received: from kbommu-nuc8i7beh.iind.intel.com ([10.145.162.97])
 by fmsmga005.fm.intel.com with ESMTP; 05 Jul 2021 02:53:06 -0700
From: venkata.sai.patnana@intel.com
To: intel-gfx@lists.freedesktop.org
Date: Mon,  5 Jul 2021 15:12:01 +0530
Message-Id: <20210705094201.26018-3-venkata.sai.patnana@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210705094201.26018-1-venkata.sai.patnana@intel.com>
References: <20210705094201.26018-1-venkata.sai.patnana@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v6 2/2] drm/i915/display/dsc: Set BPP in the
 kernel
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Anusha Srivatsa <anusha.srivatsa@intel.com>

Set compress BPP in kernel while connector DP or eDP

Cc: Vandita Kulkarni <vandita.kulkarni@intel.com>
Cc: Navare Manasi D <manasi.d.navare@intel.com>
Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
Signed-off-by: Patnana Venkata Sai <venkata.sai.patnana@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 27 ++++++++++++++++++-------
 1 file changed, 20 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 5b52beaddada0..e756cc82a8d7d 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1241,9 +1241,15 @@ static int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 	pipe_config->lane_count = limits->max_lane_count;
 
 	if (intel_dp_is_edp(intel_dp)) {
-		pipe_config->dsc.compressed_bpp =
-			min_t(u16, drm_edp_dsc_sink_output_bpp(intel_dp->dsc_dpcd) >> 4,
-			      pipe_config->pipe_bpp);
+		if (intel_dp->force_dsc_bpp) {
+			drm_dbg_kms(&dev_priv->drm,
+				    "DSC BPP forced to %d", intel_dp->force_dsc_bpp);
+			pipe_config->dsc.compressed_bpp = intel_dp->force_dsc_bpp;
+		} else {
+			pipe_config->dsc.compressed_bpp =
+				min_t(u16, drm_edp_dsc_sink_output_bpp(intel_dp->dsc_dpcd) >> 4,
+				      pipe_config->pipe_bpp);
+		}
 		pipe_config->dsc.slice_count =
 			drm_dp_dsc_sink_max_slice_count(intel_dp->dsc_dpcd,
 							true);
@@ -1269,9 +1275,15 @@ static int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 				    "Compressed BPP/Slice Count not supported\n");
 			return -EINVAL;
 		}
-		pipe_config->dsc.compressed_bpp = min_t(u16,
-							       dsc_max_output_bpp >> 4,
-							       pipe_config->pipe_bpp);
+		if (intel_dp->force_dsc_bpp) {
+			drm_dbg_kms(&dev_priv->drm,
+				    "DSC BPP forced to %d\n", intel_dp->force_dsc_bpp);
+			pipe_config->dsc.compressed_bpp = intel_dp->force_dsc_bpp;
+		} else {
+			pipe_config->dsc.compressed_bpp = min_t(u16,
+								dsc_max_output_bpp >> 4,
+								pipe_config->pipe_bpp);
+		}
 		pipe_config->dsc.slice_count = dsc_dp_slice_count;
 	}
 	/*
@@ -1374,7 +1386,8 @@ intel_dp_compute_link_config(struct intel_encoder *encoder,
 	 * Pipe joiner needs compression upto display12 due to BW limitation. DG2
 	 * onwards pipe joiner can be enabled without compression.
 	 */
-	drm_dbg_kms(&i915->drm, "Force DSC en = %d\n", intel_dp->force_dsc_en);
+	drm_dbg_kms(&i915->drm, "Force DSC en = %d\n Force DSC BPP = %d\n",
+		    intel_dp->force_dsc_en, intel_dp->force_dsc_bpp);
 	if (ret || intel_dp->force_dsc_en || (DISPLAY_VER(i915) < 13 &&
 					      pipe_config->bigjoiner)) {
 		ret = intel_dp_dsc_compute_config(intel_dp, pipe_config,
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
