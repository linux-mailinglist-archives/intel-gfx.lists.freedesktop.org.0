Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 01C56A00A1D
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Jan 2025 14:54:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9C64810E8D2;
	Fri,  3 Jan 2025 13:54:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XnkBIDew";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4202110E8D0;
 Fri,  3 Jan 2025 13:54:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1735912445; x=1767448445;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=UC/cr101za09wIJ7qXLpfi9tk5PMADQj5cRgQDV4WIs=;
 b=XnkBIDewD08TeBSLwn01216f0A//esmCHQ/rNFEjdACDvwDIQtky+5Mh
 y5+Tn6wkYYqmnpzpqrcMVczHwbzKhuyWVgnzqipMjX3T93MBkUibixoE/
 grjm8Pd65K9cINN15h8fzwCTZyMseO9hTGOJUDayWbmswa5Ut+ZojBcqJ
 UsQDHhTWHL+0gKv8luPOeQ8tcBlHPqU4AgunfVhlxnV4AzLGf+eXhvEGv
 vsGmSGC1j0f5JE5QUEhw7R9NbVOfBBjOHUlP39SM8UGjXULtlnd0PaGGe
 3dEqBG+GXkdTHH3PXqkprBWW1Ukki5QhZV1VF4URfxv/DlBPcjxajW7pA Q==;
X-CSE-ConnectionGUID: 8xmYLuqZS8W+/Vj89trgiA==
X-CSE-MsgGUID: r9C9DjGZQ6a4b5sEHcFQAQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11304"; a="53704017"
X-IronPort-AV: E=Sophos;i="6.12,286,1728975600"; d="scan'208";a="53704017"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jan 2025 05:54:05 -0800
X-CSE-ConnectionGUID: ecemJQ7XQtyNTO56jb5Gtg==
X-CSE-MsgGUID: 7YfEZT+rQlmFZWSnm1T42g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,286,1728975600"; d="scan'208";a="132651929"
Received: from dprybysh-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.242])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jan 2025 05:54:03 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: imre.deak@intel.com,
	jani.nikula@intel.com
Subject: [PATCH v3 16/16] drm/i915/dp: compute config for 128b/132b SST w/o DSC
Date: Fri,  3 Jan 2025 15:52:39 +0200
Message-Id: <084e4e05bf25a5dd396dd391014943d42b11c88d.1735912293.git.jani.nikula@intel.com>
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

Enable basic 128b/132b SST functionality without compression. Reuse
intel_dp_mtp_tu_compute_config() to figure out the TU after we've
determined we need to use an UHBR rate.

It's slightly complicated as the M/N computation is done in different
places in MST and SST paths, so we need to avoid trashing the values
later for UHBR.

If uncompressed UHBR fails, we drop to compressed non-UHBR, which is
quite likely to fail as well. We still lack 128b/132b SST+DSC.

We need mst_master_transcoder also for 128b/132b SST. Use cpu_transcoder
directly. Enhanced framing is "don't care" for 128b/132b link.

v2: mst_master_transcoder, enhanced framing (Imre)

Reviewed-by: Imre Deak <imre.deak@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 34 +++++++++++++++++--------
 1 file changed, 24 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 0d74adae2ec9..3372beec69fd 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2519,8 +2519,8 @@ intel_dp_compute_config_limits(struct intel_dp *intel_dp,
 	limits->min_rate = intel_dp_min_link_rate(intel_dp);
 	limits->max_rate = intel_dp_max_link_rate(intel_dp);
 
-	/* FIXME 128b/132b SST support missing */
-	if (!is_mst)
+	/* FIXME 128b/132b SST+DSC support missing */
+	if (!is_mst && dsc)
 		limits->max_rate = min(limits->max_rate, 810000);
 	limits->min_rate = min(limits->min_rate, limits->max_rate);
 
@@ -2638,6 +2638,13 @@ intel_dp_compute_link_config(struct intel_encoder *encoder,
 		 */
 		ret = intel_dp_compute_link_config_wide(intel_dp, pipe_config,
 							conn_state, &limits);
+		if (!ret && intel_dp_is_uhbr(pipe_config))
+			ret = intel_dp_mtp_tu_compute_config(intel_dp,
+							     pipe_config,
+							     pipe_config->pipe_bpp,
+							     pipe_config->pipe_bpp,
+							     conn_state,
+							     0, false);
 		if (ret)
 			dsc_needed = true;
 	}
@@ -3149,8 +3156,13 @@ intel_dp_compute_config(struct intel_encoder *encoder,
 	pipe_config->limited_color_range =
 		intel_dp_limited_color_range(pipe_config, conn_state);
 
-	pipe_config->enhanced_framing =
-		drm_dp_enhanced_frame_cap(intel_dp->dpcd);
+	if (intel_dp_is_uhbr(pipe_config)) {
+		/* 128b/132b SST also needs this */
+		pipe_config->mst_master_transcoder = pipe_config->cpu_transcoder;
+	} else {
+		pipe_config->enhanced_framing =
+			drm_dp_enhanced_frame_cap(intel_dp->dpcd);
+	}
 
 	if (pipe_config->dsc.compression_enable)
 		link_bpp_x16 = pipe_config->dsc.compressed_bpp_x16;
@@ -3181,12 +3193,14 @@ intel_dp_compute_config(struct intel_encoder *encoder,
 
 	intel_dp_audio_compute_config(encoder, pipe_config, conn_state);
 
-	intel_link_compute_m_n(link_bpp_x16,
-			       pipe_config->lane_count,
-			       adjusted_mode->crtc_clock,
-			       pipe_config->port_clock,
-			       intel_dp_bw_fec_overhead(pipe_config->fec_enable),
-			       &pipe_config->dp_m_n);
+	if (!intel_dp_is_uhbr(pipe_config)) {
+		intel_link_compute_m_n(link_bpp_x16,
+				       pipe_config->lane_count,
+				       adjusted_mode->crtc_clock,
+				       pipe_config->port_clock,
+				       intel_dp_bw_fec_overhead(pipe_config->fec_enable),
+				       &pipe_config->dp_m_n);
+	}
 
 	/* FIXME: abstract this better */
 	if (pipe_config->splitter.enable)
-- 
2.39.5

