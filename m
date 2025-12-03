Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 638E7C9EB6C
	for <lists+intel-gfx@lfdr.de>; Wed, 03 Dec 2025 11:32:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E564D10E777;
	Wed,  3 Dec 2025 10:32:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="liKkjlsY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B861110E777;
 Wed,  3 Dec 2025 10:32:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764757924; x=1796293924;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ZEx6rRZ17i1hGzGqBBZbSkXCRtKhaxEW4EmpRcREkn4=;
 b=liKkjlsYOpx4q2qxY4Ay7gaZTSSFSamyYkXI007wcP/MUrp6lzK4M6Ps
 vFCjkpKhQZrjNaiyG0wOzZwy64lKFkxgwXbj7QJ++A99x69tneTBPQA7z
 j1Ipzj/uaxXriZ7CduylaRPJoRbTYXOzVz3NeHE2v4bQ51CxA9HagNd/i
 DOx8SoiNCUDttJpXQ1rGQtsjFzOcn8Ydmeon1BLvYMeaHADm15NEuPfQ4
 FW5BrVEhsLtMuQPU8bibs2UEXus1VKXca9YmE3e5qtzBAOnjzw5Xshj/a
 mVrQDAuxTj9q/XnllJKDE2zduUJm5qt07Ri5duPCu4S8c0k1Ah3EaRVur w==;
X-CSE-ConnectionGUID: 1CWeYuoOQjmSbN2GwBqJBg==
X-CSE-MsgGUID: DpX90uO1Qtaj5PdawZN7Nw==
X-IronPort-AV: E=McAfee;i="6800,10657,11631"; a="66912129"
X-IronPort-AV: E=Sophos;i="6.20,245,1758610800"; d="scan'208";a="66912129"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2025 02:32:04 -0800
X-CSE-ConnectionGUID: pgrij4W2SaSlwR/Ff267kA==
X-CSE-MsgGUID: IpuUMXHqQD2B9Vq4jcc2lA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,245,1758610800"; d="scan'208";a="194657457"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO
 jhogande-mobl3.intel.com) ([10.245.246.208])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2025 02:32:02 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: imre.deak@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v2 8/8] drm/i915/psr: Move sink_sync_latency to intel_connector
Date: Wed,  3 Dec 2025 12:31:34 +0200
Message-ID: <20251203103134.1054430-9-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251203103134.1054430-1-jouni.hogander@intel.com>
References: <20251203103134.1054430-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

As everything else related to PSR and Panel Replay capabilities are moved
into intel_connector move sink_sync_latency as well.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
Reviewed-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_types.h | 3 ++-
 drivers/gpu/drm/i915/display/intel_psr.c           | 8 ++++----
 2 files changed, 6 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index fb1c8b2d3979f..90821019eaa13 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -588,6 +588,8 @@ struct intel_connector {
 
 			u16 su_w_granularity;
 			u16 su_y_granularity;
+
+			u8 sync_latency;
 		} psr_caps;
 	} dp;
 
@@ -1742,7 +1744,6 @@ struct intel_psr {
 	bool psr2_sel_fetch_cff_enabled;
 	bool su_region_et_enabled;
 	bool req_psr2_sdp_prior_scanline;
-	u8 sink_sync_latency;
 	ktime_t last_entry_attempt;
 	ktime_t last_exit;
 	bool sink_not_reliable;
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index c01e06f9cf643..b2dd4317c675f 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -684,8 +684,7 @@ static void _psr_init_dpcd(struct intel_dp *intel_dp, struct intel_connector *co
 	connector->dp.psr_caps.support = true;
 	intel_dp->psr.sink_support = true;
 
-	intel_dp->psr.sink_sync_latency =
-		intel_dp_get_sink_sync_latency(intel_dp);
+	connector->dp.psr_caps.sync_latency = intel_dp_get_sink_sync_latency(intel_dp);
 
 	if (DISPLAY_VER(display) >= 9 &&
 	    connector->dp.psr_caps.dpcd[0] >= DP_PSR2_WITH_Y_COORD_IS_SUPPORTED) {
@@ -910,7 +909,7 @@ static u8 psr_compute_idle_frames(struct intel_dp *intel_dp)
 	 * off-by-one issue that HW has in some cases.
 	 */
 	idle_frames = max(6, connector->panel.vbt.psr.idle_frames);
-	idle_frames = max(idle_frames, intel_dp->psr.sink_sync_latency + 1);
+	idle_frames = max(idle_frames, connector->dp.psr_caps.sync_latency + 1);
 
 	if (drm_WARN_ON(display->drm, idle_frames > 0xf))
 		idle_frames = 0xf;
@@ -1005,10 +1004,11 @@ static int psr2_block_count(struct intel_dp *intel_dp)
 
 static u8 frames_before_su_entry(struct intel_dp *intel_dp)
 {
+	struct intel_connector *connector = intel_dp->attached_connector;
 	u8 frames_before_su_entry;
 
 	frames_before_su_entry = max_t(u8,
-				       intel_dp->psr.sink_sync_latency + 1,
+				       connector->dp.psr_caps.sync_latency + 1,
 				       2);
 
 	/* Entry setup frames must be at least 1 less than frames before SU entry */
-- 
2.43.0

