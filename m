Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A83EC78BAC
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Nov 2025 12:17:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8AF1910E863;
	Fri, 21 Nov 2025 11:17:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="L+ZrVTVs";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 330E910E860;
 Fri, 21 Nov 2025 11:17:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763723844; x=1795259844;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=r5E5Ue4bupKhRN+VoZJzdSy9iOSqLhdBb73/eKFI/a4=;
 b=L+ZrVTVs2hM977sA7e3Ttr5Ez7Hg3vSVsIeyFK2T1JvQHeq60lWWKQ8z
 owBNGbGgWE1vq4DYY7tkWhDpXO4sVt8bXRz3oUPvZ6c9HVH0wiLugS2+7
 TzMFxgxt5TF8Zb7cMykyo6xYASgi4tEUJZZLROMwtbOYmbVBwKSBYYhad
 wSFJXdfqjxzcyB3uIVliB+hMjw7ytn4/cPuDzINDXE4ij/hSO8CjhB5K1
 B0WzXNKefPcTLHLbEyzT33kPoQkYFV2VkkbHEMVnx0GxwnUcqpwIz42e2
 0tcaV4fPzXgY50mQTmtDoV80QadxURnqrrgGBkI7CbJGloaEzaGIAw3Wb A==;
X-CSE-ConnectionGUID: WV0ojhz5Sjy4Nk9BtpTamQ==
X-CSE-MsgGUID: alyAr0sYQN+ZJAXx5ew+NA==
X-IronPort-AV: E=McAfee;i="6800,10657,11619"; a="65845534"
X-IronPort-AV: E=Sophos;i="6.20,215,1758610800"; d="scan'208";a="65845534"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2025 03:17:24 -0800
X-CSE-ConnectionGUID: 1UbQIWmiR9aMKx1LWwnmxg==
X-CSE-MsgGUID: iwK+AfENRv6Q+sw4ibUOWA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,215,1758610800"; d="scan'208";a="196802009"
Received: from krybak-mobl1.ger.corp.intel.com (HELO jhogande-mobl3.intel.com)
 ([10.245.246.72])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2025 03:17:22 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 8/8] drm/i915/psr: Move sink_sync_latency to intel_connector
Date: Fri, 21 Nov 2025 13:16:55 +0200
Message-ID: <20251121111655.164830-9-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251121111655.164830-1-jouni.hogander@intel.com>
References: <20251121111655.164830-1-jouni.hogander@intel.com>
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
---
 drivers/gpu/drm/i915/display/intel_display_types.h | 3 ++-
 drivers/gpu/drm/i915/display/intel_psr.c           | 8 ++++----
 2 files changed, 6 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 04d21333130f9..77e1948aef2ff 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -586,6 +586,8 @@ struct intel_connector {
 
 			u16 su_w_granularity;
 			u16 su_y_granularity;
+
+			u8 sync_latency;
 		} psr_caps;
 	} dp;
 
@@ -1740,7 +1742,6 @@ struct intel_psr {
 	bool psr2_sel_fetch_cff_enabled;
 	bool su_region_et_enabled;
 	bool req_psr2_sdp_prior_scanline;
-	u8 sink_sync_latency;
 	ktime_t last_entry_attempt;
 	ktime_t last_exit;
 	bool sink_not_reliable;
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index e6268d692f89d..bbd1b0e8beecb 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -685,8 +685,7 @@ static void _psr_init_dpcd(struct intel_dp *intel_dp, struct intel_connector *co
 	connector->dp.psr_caps.support = true;
 	intel_dp->psr.sink_support = true;
 
-	intel_dp->psr.sink_sync_latency =
-		intel_dp_get_sink_sync_latency(intel_dp);
+	connector->dp.psr_caps.sync_latency = intel_dp_get_sink_sync_latency(intel_dp);
 
 	if (DISPLAY_VER(display) >= 9 &&
 	    connector->dp.psr_dpcd[0] >= DP_PSR2_WITH_Y_COORD_IS_SUPPORTED) {
@@ -911,7 +910,7 @@ static u8 psr_compute_idle_frames(struct intel_dp *intel_dp)
 	 * off-by-one issue that HW has in some cases.
 	 */
 	idle_frames = max(6, connector->panel.vbt.psr.idle_frames);
-	idle_frames = max(idle_frames, intel_dp->psr.sink_sync_latency + 1);
+	idle_frames = max(idle_frames, connector->dp.psr_caps.sync_latency + 1);
 
 	if (drm_WARN_ON(display->drm, idle_frames > 0xf))
 		idle_frames = 0xf;
@@ -1006,10 +1005,11 @@ static int psr2_block_count(struct intel_dp *intel_dp)
 
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

