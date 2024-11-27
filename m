Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B4E59DA767
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Nov 2024 13:07:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 12CE410EAC4;
	Wed, 27 Nov 2024 12:07:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VMq0QSsk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8221110EAB9;
 Wed, 27 Nov 2024 12:07:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732709272; x=1764245272;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=sxC06TLUH15F2qy4Dp3+kPGmi5hB5xm0N3fA+SPQrVI=;
 b=VMq0QSskxPOvCUkNHXJ4DEDRvqQXF/22IdiGd0q4edWsz0n6XMq2ukho
 Lf+KWHqTTW9AXlBmrPOQ+Il9E9rfkjw4DDefvZdoM9VsK2kiVdSVne9lV
 1vOiQ0oD0I+U+QolNLlRtqzDk57DAXipdxfGiFKBqISoPnAgdD8YBq6E4
 V07d65wachy65B9Njlo2Dnb9wDJRHOPb0YGOG01LPIO/S9FJ4eD/uN4KL
 pGrz4Qg0CaeADnustSy/F4DJwxcuQCCnq3GVQF8Odc9wdx7K3dJ9JerjC
 2DQKKfW8EMKOGPzGu6MoW8R59jGEJLyBEQBBI8ExDzPlIQ1GdiSVnlwFR w==;
X-CSE-ConnectionGUID: DW6nXvknSKST+MEzGnBblg==
X-CSE-MsgGUID: SNE9C/ABRT2MNoCt8BsY/A==
X-IronPort-AV: E=McAfee;i="6700,10204,11268"; a="43972838"
X-IronPort-AV: E=Sophos;i="6.12,189,1728975600"; d="scan'208";a="43972838"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2024 04:07:52 -0800
X-CSE-ConnectionGUID: X+bCg0RXQ12XpHOBtBEcLg==
X-CSE-MsgGUID: zbB3oEnQRZaokYuv6Vs+Lg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,189,1728975600"; d="scan'208";a="92754991"
Received: from fpallare-mobl4.ger.corp.intel.com (HELO vgovind2-mobl3..)
 ([10.245.244.60])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2024 04:07:50 -0800
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com, kai.vehmanen@linux.intel.co,
 jani.saarinen@intel.com
Subject: [PATCH v2 6/6] drm/i915/display: update audio bw calculations for MTL
Date: Wed, 27 Nov 2024 14:07:15 +0200
Message-Id: <20241127120715.185348-7-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241127120715.185348-1-vinod.govindapillai@intel.com>
References: <20241127120715.185348-1-vinod.govindapillai@intel.com>
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

Update the reference overhead values for audio bw calculations
for MTL onwards

v2: fix the patch description (Kai)

Bspec: 67768
Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
Reviewed-by: Kai Vehmanen <kai.vehmanen@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index efcba6e5c452..25691f87f779 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -109,6 +109,8 @@
 /* DP Audio bw params calculations. Bspec: 67768 */
 #define DP_AUDIO_BW_HBLANK_OVERHEAD_AVAIL	64
 #define DP_AUDIO_BW_HBLANK_OVERHEAD_REQ		80
+#define MTL_DP_AUDIO_BW_HBLANK_OVERHEAD_REQ	0
+
 
 /* Constants for DP DSC configurations */
 static const u8 valid_dsc_bpp[] = {6, 8, 10, 12, 15};
@@ -3071,10 +3073,15 @@ intel_dp_audio_compute_bw_limits(struct intel_encoder *encoder,
 	struct intel_display *display = to_intel_display(encoder);
 	struct intel_connector *connector = to_intel_connector(conn_state->connector);
 	int hblank_bytes_avail_overhead = DP_AUDIO_BW_HBLANK_OVERHEAD_AVAIL;
-	int hblank_bytes_req_overhead = DP_AUDIO_BW_HBLANK_OVERHEAD_REQ;
+	int hblank_bytes_req_overhead;
 	int hblank_slots_lanes_bytes;
 	int line_freq_khz;
 
+	if (DISPLAY_VER(display) >= 14)
+		hblank_bytes_req_overhead = MTL_DP_AUDIO_BW_HBLANK_OVERHEAD_REQ;
+	else
+		hblank_bytes_req_overhead = DP_AUDIO_BW_HBLANK_OVERHEAD_REQ;
+
 	intel_dp_compute_audio_bwparams(crtc_state, &line_freq_khz,
 					&hblank_slots_lanes_bytes);
 	drm_dbg_kms(display->drm,
-- 
2.34.1

