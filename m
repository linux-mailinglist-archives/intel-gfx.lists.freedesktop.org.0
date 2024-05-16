Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0554B8C7324
	for <lists+intel-gfx@lfdr.de>; Thu, 16 May 2024 10:50:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9B8FC10E528;
	Thu, 16 May 2024 08:50:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KU2vCJcE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 68E2B10E156
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 May 2024 08:50:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715849414; x=1747385414;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=fP4NKzC2aG67DdePUMpLYHiqwHRI4vt+/BJotmd6ZwQ=;
 b=KU2vCJcEFYK3024ZdnsZyMaVuazkINuRfxkP9ig76prbjihsARDIOLQ+
 ZQmV+KR66bqVLAYvb3oiL872UDrQMoJ7NTEWWug7AYEZ9Vlurf+VkEZsh
 drMONCAln8hTZEAjzchNpJvfdL/wWnWOYv42Jk+2UAqVphtatQOkOOJFT
 0WrQg/GkxKLtWBcGKMaQWSbh+oZicF8WgQOv1ND3YNPvuuCZMcKO7ZEwu
 0jNoxNNd26yuAICkENZFTuukC+uBXrHg7yC7eF5ldJdFDewU5a3IskcO9
 mKRcJzVdiNitx6/qE7RpFYPbjcjj2oEs1fpp/KPDtLHzMnTyhtTjDb38b A==;
X-CSE-ConnectionGUID: EWFbC65oQBKs6BqZUKCrvw==
X-CSE-MsgGUID: O3DLkqi7T7yknkfb2A77hw==
X-IronPort-AV: E=McAfee;i="6600,9927,11074"; a="11756030"
X-IronPort-AV: E=Sophos;i="6.08,164,1712646000"; d="scan'208";a="11756030"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2024 01:50:14 -0700
X-CSE-ConnectionGUID: ZcyaG0FNS1qcMwkgI2kxFw==
X-CSE-MsgGUID: 7AJAgp0oRZmqGSdgM04H3A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,164,1712646000"; d="scan'208";a="31398077"
Received: from tlonnber-mobl3.ger.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.251.211.12])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2024 01:50:13 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 02/17] drm/panel replay: Add edp1.5 Panel Replay bits and
 register
Date: Thu, 16 May 2024 11:49:42 +0300
Message-Id: <20240516084957.1557028-3-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240516084957.1557028-1-jouni.hogander@intel.com>
References: <20240516084957.1557028-1-jouni.hogander@intel.com>
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

Add PANEL_REPLAY_CONFIGURATION_2 register and some missing Panel Replay
bits.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 include/drm/display/drm_dp.h | 16 +++++++++++++---
 1 file changed, 13 insertions(+), 3 deletions(-)

diff --git a/include/drm/display/drm_dp.h b/include/drm/display/drm_dp.h
index 906949ca3cee..79bde372b152 100644
--- a/include/drm/display/drm_dp.h
+++ b/include/drm/display/drm_dp.h
@@ -544,9 +544,10 @@
 /* DFP Capability Extension */
 #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT	0x0a3	/* 2.0 */
 
-#define DP_PANEL_REPLAY_CAP                 0x0b0  /* DP 2.0 */
-# define DP_PANEL_REPLAY_SUPPORT            (1 << 0)
-# define DP_PANEL_REPLAY_SU_SUPPORT         (1 << 1)
+#define DP_PANEL_REPLAY_CAP				0x0b0  /* DP 2.0 */
+# define DP_PANEL_REPLAY_SUPPORT			(1 << 0)
+# define DP_PANEL_REPLAY_SU_SUPPORT			(1 << 1)
+# define DP_PANEL_REPLAY_EARLY_TRANSPORT_SUPPORT	(1 << 2) /* eDP 1.5 */
 
 #define DP_PANEL_PANEL_REPLAY_CAPABILITY		0xb1
 # define DP_PANEL_PANEL_REPLAY_SU_GRANULARITY_REQUIRED	(1 << 5)
@@ -734,11 +735,20 @@
 
 #define PANEL_REPLAY_CONFIG                             0x1b0  /* DP 2.0 */
 # define DP_PANEL_REPLAY_ENABLE                         (1 << 0)
+# define DP_PANEL_REPLAY_VSC_SDP_CRC_EN                 (1 << 1) /* eDP 1.5 */
 # define DP_PANEL_REPLAY_UNRECOVERABLE_ERROR_EN         (1 << 3)
 # define DP_PANEL_REPLAY_RFB_STORAGE_ERROR_EN           (1 << 4)
 # define DP_PANEL_REPLAY_ACTIVE_FRAME_CRC_ERROR_EN      (1 << 5)
 # define DP_PANEL_REPLAY_SU_ENABLE                      (1 << 6)
 
+#define PANEL_REPLAY_CONFIG2                                     0x1b1 /* eDP 1.5 */
+# define DP_PANEL_REPLAY_SINK_REFRESH_RATE_UNLOCK_GRANTED	 (1 << 0)
+# define DP_PANEL_REPLAY_CRC_VERIFICATION			 (1 << 1)
+# define DP_PANEL_REPLAY_SU_Y_GRANULARITY_EXTENDED_EN		 (1 << 2)
+# define DP_PANEL_REPLAY_SU_Y_GRANULARITY_EXTENDED_VAL_SEL_SHIFT 3
+# define DP_PANEL_REPLAY_SU_Y_GRANULARITY_EXTENDED_VAL_SEL_MASK  (0xf << 3)
+# define DP_PANEL_REPLAY_SU_REGION_SCANLINE_CAPTURE		 (1 << 7)
+
 #define DP_PAYLOAD_ALLOCATE_SET		    0x1c0
 #define DP_PAYLOAD_ALLOCATE_START_TIME_SLOT 0x1c1
 #define DP_PAYLOAD_ALLOCATE_TIME_SLOT_COUNT 0x1c2
-- 
2.34.1

