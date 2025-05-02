Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BE2D7AA6D31
	for <lists+intel-gfx@lfdr.de>; Fri,  2 May 2025 10:59:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 05FAE10E8C2;
	Fri,  2 May 2025 08:59:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kr0cewTf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6E84810E8C0;
 Fri,  2 May 2025 08:59:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746176364; x=1777712364;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=74jUS30QYIsYKfFUH4do1WuJcfXFRt9F0b8n56/JNxU=;
 b=kr0cewTfJHYLdvvs6B6AkRzM3gRCThoGsImwnwCOdFkvERwdNqPzpPOv
 BE3ChLb0x2DXopFeiCDJtrA20KFjmeUvGBRHF3MnFDTQ0kDV7+ammiwiV
 VlaM8lxI9N+KSII564t/RIBrPn/RT6u5GQ1vFbpElZcgoDx9cI9FeXTXR
 jSvujZD1APhdvCqsnVZv3CEUrS7Fgl2H9e/AbJmjglmAUHTW62NHRbYCe
 vnJLxj9SLnnNcU0bvm9qTmtQdxUt+5TAMgxQwUxhykO7J7o1q8Dyac2M/
 2H0gSmCY9Ov2SDTVm2UpwEpC1eZRDfsYA5AsQM2Gwd2L5teXYjh5BgTmd w==;
X-CSE-ConnectionGUID: s1emJ48aRJG5ehCLIgtdLg==
X-CSE-MsgGUID: pfZTEqxlSf2P+1H548uzsA==
X-IronPort-AV: E=McAfee;i="6700,10204,11420"; a="47943191"
X-IronPort-AV: E=Sophos;i="6.15,256,1739865600"; d="scan'208";a="47943191"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2025 01:59:24 -0700
X-CSE-ConnectionGUID: cp32gsk2SUq3jVquWcsCeQ==
X-CSE-MsgGUID: mCDoNvjBSlyZAqadg0ehYw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,256,1739865600"; d="scan'208";a="134346691"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.244.55])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2025 01:59:22 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 01/11] drm/dp: Add Panel Replay capability bits from DP2.1
 specification
Date: Fri,  2 May 2025 11:58:52 +0300
Message-ID: <20250502085902.154740-2-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250502085902.154740-1-jouni.hogander@intel.com>
References: <20250502085902.154740-1-jouni.hogander@intel.com>
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

Add PANEL REPLAY CAPABILITY register (0xb1) bits.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 include/drm/display/drm_dp.h | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/include/drm/display/drm_dp.h b/include/drm/display/drm_dp.h
index 3001c0b6e7bb3..47e7d55e2803f 100644
--- a/include/drm/display/drm_dp.h
+++ b/include/drm/display/drm_dp.h
@@ -552,8 +552,14 @@
 # define DP_PANEL_REPLAY_SU_SUPPORT			(1 << 1)
 # define DP_PANEL_REPLAY_EARLY_TRANSPORT_SUPPORT	(1 << 2) /* eDP 1.5 */
 
-#define DP_PANEL_PANEL_REPLAY_CAPABILITY		0xb1
-# define DP_PANEL_PANEL_REPLAY_SU_GRANULARITY_REQUIRED	(1 << 5)
+#define DP_PANEL_PANEL_REPLAY_CAPABILITY					0xb1
+# define DP_PANEL_REPLAY_DSC_DECODE_CAPABILITY_IN_PR_SHIFT			1 /* DP 2.1 */
+# define DP_PANEL_REPLAY_DSC_DECODE_CAPABILITY_IN_PR_MASK			(3 << 1)
+# define DP_PANEL_REPLAY_ASYNC_VIDEO_TIMING_NOT_SUPPORTED_IN_PR			(1 << 3)
+# define DP_PANEL_REPLAY_DSC_CRC_OF_MULTIPLE_SUS_SUPPORTED			(1 << 4)
+# define DP_PANEL_PANEL_REPLAY_SU_GRANULARITY_REQUIRED				(1 << 5)
+# define DP_PANEL_REPLAY_SU_Y_GRANULARITY_EXTENDED_CAPABILITY_SUPPORTED		(1 << 6)
+# define DP_PANEL_REPLAY_LINK_OFF_SUPPORTED_IN_PR_AFTER_ADAPTIVE_SYNC_SDP	(1 << 7)
 
 #define DP_PANEL_PANEL_REPLAY_X_GRANULARITY		0xb2
 #define DP_PANEL_PANEL_REPLAY_Y_GRANULARITY		0xb4
-- 
2.43.0

