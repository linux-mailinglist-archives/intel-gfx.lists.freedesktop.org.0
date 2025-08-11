Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A6614B20EB8
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Aug 2025 17:26:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4341010E50E;
	Mon, 11 Aug 2025 15:26:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="j2pYnHHC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 01A8610E502;
 Mon, 11 Aug 2025 15:26:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754925976; x=1786461976;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=SfRi8gqS9l8ONLNB8C13yEnBg3fV5VQkBj99gfuTcbQ=;
 b=j2pYnHHCEXGEnx6+RJK1BJp8zs17Sgg7fw1naUCzNPtU7YzGeypWeVWT
 vD7so5881o/IJP0s4bHEDnipsHCQ+00Sf1B1eyEYJFLJw2vO00Jyth1WB
 KuPYPq3ekQQXxQctsDss8jVrJ94zllE2Y70Sm3tAlzTDaHnTaO4tvaBIf
 jiYFiXg8fb8rRioAJyuzbYfrmHAUfN1jLkMaicZaAuUcjDJB3JoFWkIe0
 mJb2FV4e+uXIQR1dqBInaFXkQ5X4hGHh9ucM4vyXDh+7pDAGfy2YwkfW4
 04ETGfdB4jG1eBpiljY6OWKdhIu6lkTjIkLrS7oq23MeHY5sDfon6+Cke A==;
X-CSE-ConnectionGUID: 3cS/AdLNQ56l4s8pHb2NHQ==
X-CSE-MsgGUID: YrjdU1OVQRWjtO4jt2G0DA==
X-IronPort-AV: E=McAfee;i="6800,10657,11518"; a="57086317"
X-IronPort-AV: E=Sophos;i="6.17,278,1747724400"; d="scan'208";a="57086317"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2025 08:26:16 -0700
X-CSE-ConnectionGUID: 5vs/x5cySXCnlq6MRXywxA==
X-CSE-MsgGUID: gI+OKCUITE+EWvuMDHNW3g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,278,1747724400"; d="scan'208";a="171294186"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.226])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2025 08:26:14 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 4/4] drm/i915/vbt: add missing DSI VBT defs
Date: Mon, 11 Aug 2025 18:25:50 +0300
Message-ID: <17e0f38391314aceff12619a04829c3e36fa26b7.1754925923.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <cover.1754925923.git.jani.nikula@intel.com>
References: <cover.1754925923.git.jani.nikula@intel.com>
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

Add some missing DSI VBT definitions.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dsi_vbt_defs.h | 13 ++++++++++---
 1 file changed, 10 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dsi_vbt_defs.h b/drivers/gpu/drm/i915/display/intel_dsi_vbt_defs.h
index 3f9b9ed6592c..edc7331dcca2 100644
--- a/drivers/gpu/drm/i915/display/intel_dsi_vbt_defs.h
+++ b/drivers/gpu/drm/i915/display/intel_dsi_vbt_defs.h
@@ -94,10 +94,15 @@ struct mipi_config {
 #define DL_DCS_PORT_A_AND_C		0x02
 		u16 dl_dcs_cabc_ports:2;
 		u16 dl_dcs_backlight_ports:2;
-		u16 rsvd3:4;
+		u16 port_sync:1;				/* 219-230 */
+		u16 rsvd3:3;
 	} __packed;
 
-	u16 rsvd4;
+	/* DSI Controller Parameters */
+	struct {
+		u16 dsi_usage:1;
+		u16 rsvd4:15;
+	} __packed;
 
 	u8 rsvd5;
 	u32 target_burst_mode_freq;
@@ -118,7 +123,9 @@ struct mipi_config {
 		u16 dphy_param_valid:1;
 		u16 eot_pkt_disabled:1;
 		u16 enable_clk_stop:1;
-		u16 rsvd7:13;
+		u16 blanking_packets_during_bllp:1;		/* 219+ */
+		u16 lp_clock_during_lpm:1;			/* 219+ */
+		u16 rsvd7:11;
 	} __packed;
 
 	u32 hs_tx_timeout;
-- 
2.47.2

