Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AE13B8D1A16
	for <lists+intel-gfx@lfdr.de>; Tue, 28 May 2024 13:47:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B5087112175;
	Tue, 28 May 2024 11:47:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OxwnAwvp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 558FC10E289
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 May 2024 11:47:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716896824; x=1748432824;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=fKHwXA777uTy9I7tMBcQgH+hLetqIh0+xG1cufS9NfE=;
 b=OxwnAwvpgk8hpvkY/hOBN+HgNVah8lOXYmEbZsRePnwdlLG8nJ1Lxx4c
 Uw9eFToIN5XlfOlK1syxCYQnttdu+SL65qvxbgWsTMOAsGb5lBKkr0q33
 3UcE/32QsdmUfKwSS3J4TdiPATaIhGxHx7ItaLjTXZcA7ctVz4VH9ciFB
 XUmKPCvpUrL9e+aQpIcYROw2yxnuPa6KQ4g4QsXXNTlMMPI3XtmeQ0Sk9
 c4C2hyNWaYLGsUBV620CtFAn/gjcvGK1DRkfvHJUK9O7UkYZ0LyJQbCpi
 otCTi11Moea6T9kr/MjONKOT9wqBT4Wg1UQ1pBf7iZqPDEMjRT4mPRYjp w==;
X-CSE-ConnectionGUID: 2l0mH+yYTpmP2rvEImWZSg==
X-CSE-MsgGUID: /MadscQ+RsGbM+fDPwA+zA==
X-IronPort-AV: E=McAfee;i="6600,9927,11085"; a="30759836"
X-IronPort-AV: E=Sophos;i="6.08,195,1712646000"; d="scan'208";a="30759836"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2024 04:47:04 -0700
X-CSE-ConnectionGUID: cGZRpFEsSJuySCmhYP/eSg==
X-CSE-MsgGUID: 3xUchvi4Q5SF2XB/yZpe0w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,195,1712646000"; d="scan'208";a="65879225"
Received: from vmanek-mobl1.amr.corp.intel.com (HELO jhogande-mobl1.intel.com)
 ([10.251.212.75])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2024 04:47:03 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>,
 Animesh Manna <animesh.manna@intel.com>, Maxime Ripard <mripard@kernel.org>
Subject: [PATCH 2/5] drm/panel replay: Add edp1.5 Panel Replay bits and
 register
Date: Tue, 28 May 2024 14:44:52 +0300
Message-Id: <20240528114455.175961-3-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240528114455.175961-1-jouni.hogander@intel.com>
References: <20240528114455.175961-1-jouni.hogander@intel.com>
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
Reviewed-by: Animesh Manna <animesh.manna@intel.com>
Acked-by: Maxime Ripard <mripard@kernel.org>
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

