Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 110168D833A
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Jun 2024 15:01:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AEFAA10E3B0;
	Mon,  3 Jun 2024 13:01:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="g0DFniXq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A3F3710E3A9
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Jun 2024 13:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717419688; x=1748955688;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=wyFcYrDObyLb1/CN+u5GgKHhoJAAgR9aW/iR52UxdVs=;
 b=g0DFniXqtWb+/N6BGpCZqbgLRcXg0wESCf7pRT5ESBv5uA8Crj9mTgji
 aeCyVsVzZKONoTEXbsWwbqfP5AX4xcRB2A3oZIEPAeIjsGUgDwlC+qjiP
 +Gb5cvSYwybQav/ntJxXv+wbogkKkd6DXJf78CLr3/J7KQUDaRxebYhK4
 Jas+CEe+E3I4JDeU0aSJNi6/J3cYUlCzoLkYzMFQ3rS3Ernn+fA0GE5t7
 w8WilYvz5SicrPrNtgbcECdgtvAdlDZJGvj1BgzsUxvvNG63Bg1e35r7S
 uKc+yKwLESIIPaV5OgCANJyBHSJdFYAPea19cJhMcox8D3uPDT7ZkUkHm w==;
X-CSE-ConnectionGUID: xUSmZkPPS+qd44y3E5Ra4A==
X-CSE-MsgGUID: wRRkvcDbRU+Ri0dyGDfkGg==
X-IronPort-AV: E=McAfee;i="6600,9927,11092"; a="13774510"
X-IronPort-AV: E=Sophos;i="6.08,211,1712646000"; d="scan'208";a="13774510"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2024 06:01:28 -0700
X-CSE-ConnectionGUID: c93+iMTyTjS6A3AlvUxSKA==
X-CSE-MsgGUID: vAmt9MhRTBWl1K0i7KbUnA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,211,1712646000"; d="scan'208";a="41291966"
Received: from jgulati-mobl.ger.corp.intel.com (HELO jhogande-mobl1.intel.com)
 ([10.251.212.183])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2024 06:01:26 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com, mika.kahola@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v5 18/19] drm/i915/psr: Add new debug bit to disable Panel
 Replay
Date: Mon,  3 Jun 2024 16:00:42 +0300
Message-Id: <20240603130043.2615716-19-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240603130043.2615716-1-jouni.hogander@intel.com>
References: <20240603130043.2615716-1-jouni.hogander@intel.com>
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

Currently there is no way to disable Panel Replay without disabling
PSR. Add new debug bit to be used with i915_edp_psr_debug debugfs
interface.

v2: ensure that fastset is performed when the bit changes

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_types.h |  1 +
 drivers/gpu/drm/i915/display/intel_psr.c           | 11 +++++++++--
 2 files changed, 10 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index df29ec37ef28..089c53d5f3c9 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1690,6 +1690,7 @@ struct intel_psr {
 #define I915_PSR_DEBUG_ENABLE_SEL_FETCH		0x4
 #define I915_PSR_DEBUG_IRQ			0x10
 #define I915_PSR_DEBUG_SU_REGION_ET_DISABLE	0x20
+#define I915_PSR_DEBUG_PANEL_REPLAY_DISABLE	0x40
 
 	u32 debug;
 	bool sink_support;
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index e696c760cedb..e1861ba8fc0c 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1501,6 +1501,9 @@ _panel_replay_compute_config(struct intel_dp *intel_dp,
 	if (!CAN_PANEL_REPLAY(intel_dp))
 		return false;
 
+	if (intel_dp->psr.debug & I915_PSR_DEBUG_PANEL_REPLAY_DISABLE)
+		return false;
+
 	if (!intel_dp_is_edp(intel_dp))
 		return true;
 
@@ -2825,11 +2828,13 @@ int intel_psr_debug_set(struct intel_dp *intel_dp, u64 val)
 {
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
 	const u32 mode = val & I915_PSR_DEBUG_MODE_MASK;
-	const u32 disable_bits = val & I915_PSR_DEBUG_SU_REGION_ET_DISABLE;
+	const u32 disable_bits = val & (I915_PSR_DEBUG_SU_REGION_ET_DISABLE |
+					I915_PSR_DEBUG_PANEL_REPLAY_DISABLE);
 	u32 old_mode, old_disable_bits;
 	int ret;
 
 	if (val & ~(I915_PSR_DEBUG_IRQ | I915_PSR_DEBUG_SU_REGION_ET_DISABLE |
+		    I915_PSR_DEBUG_PANEL_REPLAY_DISABLE |
 		    I915_PSR_DEBUG_MODE_MASK) ||
 	    mode > I915_PSR_DEBUG_ENABLE_SEL_FETCH) {
 		drm_dbg_kms(&dev_priv->drm, "Invalid debug mask %llx\n", val);
@@ -2842,7 +2847,9 @@ int intel_psr_debug_set(struct intel_dp *intel_dp, u64 val)
 
 	old_mode = intel_dp->psr.debug & I915_PSR_DEBUG_MODE_MASK;
 	old_disable_bits = intel_dp->psr.debug &
-		I915_PSR_DEBUG_SU_REGION_ET_DISABLE;
+		(I915_PSR_DEBUG_SU_REGION_ET_DISABLE |
+		 I915_PSR_DEBUG_PANEL_REPLAY_DISABLE);
+
 	intel_dp->psr.debug = val;
 
 	/*
-- 
2.34.1

