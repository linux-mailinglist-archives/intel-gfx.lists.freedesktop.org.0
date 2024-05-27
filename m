Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ECD398CF9F8
	for <lists+intel-gfx@lfdr.de>; Mon, 27 May 2024 09:23:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2782710F7F5;
	Mon, 27 May 2024 07:23:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KcB94fny";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9626810F914
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 May 2024 07:22:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716794560; x=1748330560;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=fP4NKzC2aG67DdePUMpLYHiqwHRI4vt+/BJotmd6ZwQ=;
 b=KcB94fnyOmxE6HEW6PzWnNtVLBnxn+qLOzlTtHwLXlow8Rz13UEr6kbY
 ypMuBuzLZW36Y8Qng0AOCIxv95oMDyA2jjEAGtGvFTAHasUpKfWQVORsf
 NYQHuVZoNLxsTdQnsRqaHPL5jfOO5UuIG/WPs2aQ5jR0uXFqRDu8w9U4W
 BNVKuUyf3mwzIQExFbwjCUYOt9o0sl0ulunY/yOcyZuOzBC/XVXGh2dgO
 OoQlBMnzJhW5vFHAcH4WkzGa+s62DP0SURCCGXxiegenUbjThvGQeBTmu
 8M+lrsPn8Rc+oLztGzcx8C26UJaJgc9iaZ8YEzVgfBLRnVG90f7mr9/7O g==;
X-CSE-ConnectionGUID: e6sTca2zQXSA/AnFWnu/VA==
X-CSE-MsgGUID: dF2oKICYRIqZvKLnKsurlA==
X-IronPort-AV: E=McAfee;i="6600,9927,11084"; a="16930419"
X-IronPort-AV: E=Sophos;i="6.08,192,1712646000"; d="scan'208";a="16930419"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2024 00:22:39 -0700
X-CSE-ConnectionGUID: hmaeiQ2NSXKG+pRcexqzdw==
X-CSE-MsgGUID: iQ6yWQ3ES6GoJsyTX6YRCQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,192,1712646000"; d="scan'208";a="34753383"
Received: from gcusmai-mobl.ger.corp.intel.com (HELO jhogande-mobl1.intel.com)
 ([10.249.36.101])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2024 00:22:38 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com, mika.kahola@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v3 02/20] drm/panel replay: Add edp1.5 Panel Replay bits and
 register
Date: Mon, 27 May 2024 10:22:02 +0300
Message-Id: <20240527072220.3294769-3-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240527072220.3294769-1-jouni.hogander@intel.com>
References: <20240527072220.3294769-1-jouni.hogander@intel.com>
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

