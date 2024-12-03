Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 407CF9E1627
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Dec 2024 09:47:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B73C510E983;
	Tue,  3 Dec 2024 08:47:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WO3qjfGB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2D4F010E978;
 Tue,  3 Dec 2024 08:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733215653; x=1764751653;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=MI5A9ZlkLVg2OH2lIg0Q/cur+fU0iciokQ42kx++B14=;
 b=WO3qjfGB1eqSPl6IOSg67Qf1eNzzhqVcdhi3iswIWQoZY/817PcnTPak
 3Hmm/UUTAkweUC527hHHh9z5zv4JJ9BriMwQO3Qo1KWg0IW5HrWV76U8v
 B3PzRsJtTAf/9zg+P2spwbD6nqo/IOvNfyComAdRKT2yxa69MTbkGkIjc
 htTPxMP2nd6GQ/xlPbN5ZBd2JP49rGsjbFfbMUqEI5kSLDMhR4wnws27n
 nVz6BGCcaXsBgbsFnLOXxrVMis3Ip4D24nq3aeFZ2qd5GxrEXWz2yjOcg
 qpdhwqb+Qx7wBzhh5LJ9i0KJswsUi+zFymSWZUmZBw1uwoae0gZnEXNaQ w==;
X-CSE-ConnectionGUID: R74KRkWoSYi5iFtMV5sqdA==
X-CSE-MsgGUID: ICPtVHCCSU+tQ2+rVW9Kkg==
X-IronPort-AV: E=McAfee;i="6700,10204,11274"; a="44805461"
X-IronPort-AV: E=Sophos;i="6.12,204,1728975600"; d="scan'208";a="44805461"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2024 00:47:23 -0800
X-CSE-ConnectionGUID: 7XiX4+L6SLiWFhbF2ILPHQ==
X-CSE-MsgGUID: NvGCIKmcRMeX2wwtkLzlrA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,204,1728975600"; d="scan'208";a="94198913"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by orviesa008.jf.intel.com with ESMTP; 03 Dec 2024 00:47:22 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: mitulkumar.ajitkumar.golani@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 5/6] drm/i915/wm: Modify latency programmed into PKG_C_LATENCY
Date: Tue,  3 Dec 2024 14:17:05 +0530
Message-Id: <20241203084706.2126189-5-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241203084706.2126189-1-suraj.kandpal@intel.com>
References: <20241203084706.2126189-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
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

Increase the latency programmed into PKG_C_LATENCY latency to be
a multiple of line time which is written into WM_LINETIME.

--v2
-Fix commit subject line [Sai Teja]
-Use individual DISPLAY_VER checks instead of range [Sai Teja]
-Initialize max_linetime [Sai Teja]

--v3
-take into account the scenario when adjusted_latency is 0 [Vinod]

--v4
-rename adjusted_latency to latency [Mitul]
-fix the condition in which dpkgc is disabled [Vinod]

--v5
-Add check to see if max_linetime is 0 [Vinod]

--v6
-Avoid nested if statements [Mitul]

WA: 22020299601
Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark.c | 19 ++++++++++++++-----
 1 file changed, 14 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 95b306c22954..4c032b1758e7 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -2861,7 +2861,8 @@ intel_program_dpkgc_latency(struct intel_atomic_state *state)
 	struct drm_i915_private *i915 = to_i915(display->drm);
 	struct intel_crtc *crtc;
 	struct intel_crtc_state *new_crtc_state;
-	u32 max_latency = LNL_PKG_C_LATENCY_MASK;
+	u32 latency = LNL_PKG_C_LATENCY_MASK;
+	u32 max_linetime = 0;
 	u32 clear, val;
 	u32 added_wake_time = 0;
 	bool fixed_refresh_rate = false;
@@ -2875,18 +2876,26 @@ intel_program_dpkgc_latency(struct intel_atomic_state *state)
 		    (new_crtc_state->vrr.vmin == new_crtc_state->vrr.vmax &&
 		     new_crtc_state->vrr.vmin == new_crtc_state->vrr.flipline))
 			fixed_refresh_rate = true;
+
+		max_linetime = max(new_crtc_state->linetime, max_linetime);
 	}
 
 	if (fixed_refresh_rate) {
-		max_latency = skl_watermark_max_latency(i915, 1);
-		if (max_latency == 0)
-			max_latency = LNL_PKG_C_LATENCY_MASK;
+		latency = skl_watermark_max_latency(i915, 1);
+		/* Wa_22020299601 */
+		if ((latency && max_linetime) &&
+		    (DISPLAY_VER(display) == 20 || DISPLAY_VER(display) == 30)) {
+			latency = max_linetime * DIV_ROUND_UP(latency, max_linetime);
+		} else if (!latency) {
+			latency = LNL_PKG_C_LATENCY_MASK;
+		}
+
 		added_wake_time = DSB_EXE_TIME +
 			display->sagv.block_time_us;
 	}
 
 	clear = LNL_ADDED_WAKE_TIME_MASK | LNL_PKG_C_LATENCY_MASK;
-	val = REG_FIELD_PREP(LNL_PKG_C_LATENCY_MASK, max_latency) |
+	val = REG_FIELD_PREP(LNL_PKG_C_LATENCY_MASK, latency) |
 		REG_FIELD_PREP(LNL_ADDED_WAKE_TIME_MASK, added_wake_time);
 
 	intel_de_rmw(display, LNL_PKG_C_LATENCY, clear, val);
-- 
2.34.1

