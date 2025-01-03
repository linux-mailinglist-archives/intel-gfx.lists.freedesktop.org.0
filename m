Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BEF4CA00A13
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Jan 2025 14:53:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5F44C10E8CC;
	Fri,  3 Jan 2025 13:53:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZgBhOOI8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1024A10E8BF;
 Fri,  3 Jan 2025 13:53:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1735912400; x=1767448400;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=G0nNiS1kJUNLQ1CNQiUfrGLeAIPnoKm3bj4DD19xDVA=;
 b=ZgBhOOI8hHHW8ovwbZ6nnG+DR5vmtKw1ZI8eUV3rvcJVHH0H4I1M6++X
 Pl+WAl9HTRPYasbcSdSieUCNLfmGqK+orWQxkcILY1ISDsEnuIv1ri4cB
 WkkG5p5e8PpRhSYOHKyRvR+bcd32QTber6kki5MsvuKvzzlI5b6KWpAdS
 atzi5CvWzGXJOwdax5WehV5riwsnUeu1ER/gzrjpLKFFe+94imlQSwjJF
 UNQ3gTSc/Jsu7q62gVLIm+vIg3hNZ+I0MaZPSUQD7e57F4m9LMZ/uMLxi
 h8Ms4CtCRRm/KIQoOJXZhKGW20sH+4OFtGw1sPsfERBGz+3R2BqXUBTLf A==;
X-CSE-ConnectionGUID: xNPHUXdOS6OCFxwr3DQ9Kw==
X-CSE-MsgGUID: Q5RmCtiSTMiE0ggmBfS8LA==
X-IronPort-AV: E=McAfee;i="6700,10204,11304"; a="36040277"
X-IronPort-AV: E=Sophos;i="6.12,286,1728975600"; d="scan'208";a="36040277"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jan 2025 05:53:20 -0800
X-CSE-ConnectionGUID: /cjB4cxMQgGdAvjMEK5b2A==
X-CSE-MsgGUID: L+jIpqAgTfGxatXvh/azBQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="105851958"
Received: from dprybysh-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.242])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jan 2025 05:53:18 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: imre.deak@intel.com,
	jani.nikula@intel.com
Subject: [PATCH v3 07/16] drm/i915/mst: adapt intel_dp_mtp_tu_compute_config()
 for 128b/132b SST
Date: Fri,  3 Jan 2025 15:52:30 +0200
Message-Id: <b59c94b0aac2c073b0306c0a0040b26330f94260.1735912293.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1735912293.git.jani.nikula@intel.com>
References: <cover.1735912293.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

Handle 128b/132b SST in intel_dp_mtp_tu_compute_config(). The remote
bandwidth overhead and time slot allocation are only relevant for MST;
SST only needs the local bandwidth and a check that 64 slots isn't
exceeded.

Reviewed-by: Imre Deak <imre.deak@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 109 +++++++++++---------
 1 file changed, 61 insertions(+), 48 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index e1d56a689962..b24cbae4959b 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -257,10 +257,7 @@ int intel_dp_mtp_tu_compute_config(struct intel_dp *intel_dp,
 
 	for (bpp = max_bpp; bpp >= min_bpp; bpp -= step) {
 		int local_bw_overhead;
-		int remote_bw_overhead;
 		int link_bpp_x16;
-		int remote_tu;
-		fixed20_12 pbn;
 
 		drm_dbg_kms(display->drm, "Trying bpp %d\n", bpp);
 
@@ -269,57 +266,73 @@ int intel_dp_mtp_tu_compute_config(struct intel_dp *intel_dp,
 
 		local_bw_overhead = intel_dp_mst_bw_overhead(crtc_state,
 							     false, dsc_slice_count, link_bpp_x16);
-		remote_bw_overhead = intel_dp_mst_bw_overhead(crtc_state,
-							      true, dsc_slice_count, link_bpp_x16);
-
 		intel_dp_mst_compute_m_n(crtc_state,
 					 local_bw_overhead,
 					 link_bpp_x16,
 					 &crtc_state->dp_m_n);
 
-		/*
-		 * The TU size programmed to the HW determines which slots in
-		 * an MTP frame are used for this stream, which needs to match
-		 * the payload size programmed to the first downstream branch
-		 * device's payload table.
-		 *
-		 * Note that atm the payload's PBN value DRM core sends via
-		 * the ALLOCATE_PAYLOAD side-band message matches the payload
-		 * size (which it calculates from the PBN value) it programs
-		 * to the first branch device's payload table. The allocation
-		 * in the payload table could be reduced though (to
-		 * crtc_state->dp_m_n.tu), provided that the driver doesn't
-		 * enable SSC on the corresponding link.
-		 */
-		pbn.full = dfixed_const(intel_dp_mst_calc_pbn(adjusted_mode->crtc_clock,
-							      link_bpp_x16,
-							      remote_bw_overhead));
-		remote_tu = DIV_ROUND_UP(pbn.full, pbn_div.full);
-
-		/*
-		 * Aligning the TUs ensures that symbols consisting of multiple
-		 * (4) symbol cycles don't get split between two consecutive
-		 * MTPs, as required by Bspec.
-		 * TODO: remove the alignment restriction for 128b/132b links
-		 * on some platforms, where Bspec allows this.
-		 */
-		remote_tu = ALIGN(remote_tu, 4 / crtc_state->lane_count);
-
-		/*
-		 * Also align PBNs accordingly, since MST core will derive its
-		 * own copy of TU from the PBN in drm_dp_atomic_find_time_slots().
-		 * The above comment about the difference between the PBN
-		 * allocated for the whole path and the TUs allocated for the
-		 * first branch device's link also applies here.
-		 */
-		pbn.full = remote_tu * pbn_div.full;
-
-		drm_WARN_ON(display->drm, remote_tu < crtc_state->dp_m_n.tu);
-		crtc_state->dp_m_n.tu = remote_tu;
+		if (intel_dp->is_mst) {
+			int remote_bw_overhead;
+			int remote_tu;
+			fixed20_12 pbn;
+
+			remote_bw_overhead = intel_dp_mst_bw_overhead(crtc_state,
+								      true, dsc_slice_count, link_bpp_x16);
+
+			/*
+			 * The TU size programmed to the HW determines which slots in
+			 * an MTP frame are used for this stream, which needs to match
+			 * the payload size programmed to the first downstream branch
+			 * device's payload table.
+			 *
+			 * Note that atm the payload's PBN value DRM core sends via
+			 * the ALLOCATE_PAYLOAD side-band message matches the payload
+			 * size (which it calculates from the PBN value) it programs
+			 * to the first branch device's payload table. The allocation
+			 * in the payload table could be reduced though (to
+			 * crtc_state->dp_m_n.tu), provided that the driver doesn't
+			 * enable SSC on the corresponding link.
+			 */
+			pbn.full = dfixed_const(intel_dp_mst_calc_pbn(adjusted_mode->crtc_clock,
+								      link_bpp_x16,
+								      remote_bw_overhead));
+			remote_tu = DIV_ROUND_UP(pbn.full, pbn_div.full);
+
+			/*
+			 * Aligning the TUs ensures that symbols consisting of multiple
+			 * (4) symbol cycles don't get split between two consecutive
+			 * MTPs, as required by Bspec.
+			 * TODO: remove the alignment restriction for 128b/132b links
+			 * on some platforms, where Bspec allows this.
+			 */
+			remote_tu = ALIGN(remote_tu, 4 / crtc_state->lane_count);
+
+			/*
+			 * Also align PBNs accordingly, since MST core will derive its
+			 * own copy of TU from the PBN in drm_dp_atomic_find_time_slots().
+			 * The above comment about the difference between the PBN
+			 * allocated for the whole path and the TUs allocated for the
+			 * first branch device's link also applies here.
+			 */
+			pbn.full = remote_tu * pbn_div.full;
+
+			drm_WARN_ON(display->drm, remote_tu < crtc_state->dp_m_n.tu);
+			crtc_state->dp_m_n.tu = remote_tu;
+
+			slots = drm_dp_atomic_find_time_slots(state, &intel_dp->mst_mgr,
+							      connector->port,
+							      dfixed_trunc(pbn));
+		} else {
+			/* Same as above for remote_tu */
+			crtc_state->dp_m_n.tu = ALIGN(crtc_state->dp_m_n.tu,
+						      4 / crtc_state->lane_count);
+
+			if (crtc_state->dp_m_n.tu <= 64)
+				slots = crtc_state->dp_m_n.tu;
+			else
+				slots = -EINVAL;
+		}
 
-		slots = drm_dp_atomic_find_time_slots(state, &intel_dp->mst_mgr,
-						      connector->port,
-						      dfixed_trunc(pbn));
 		if (slots == -EDEADLK)
 			return slots;
 
-- 
2.39.5

