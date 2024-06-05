Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E07558FC913
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Jun 2024 12:27:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D06D10E74C;
	Wed,  5 Jun 2024 10:27:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UWNevm63";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A984E10E76D
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Jun 2024 10:27:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717583222; x=1749119222;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Lk4cvOzHDfvvdnCD26C3lRMjQmo1PUicvjmkb0UZOok=;
 b=UWNevm63ynZtlESIxQrhD670NpKDp6y/jPwBsumOa6Q1fBvVOo8EVIAd
 t1fLZiQSD2xO/C1kHTi5mpKsaYLtt2rFNE03ECXbzMVlM/QLjh9WT0N9D
 RcNv4yHuLRvHdJi2lQXC2dH7EESZiqOHfM/jP/gdhwRmiroAXPtiPu/mn
 zi+kXd/8WJPDJMEfEvvHLGVjyLq5wVETd38jdrkzT6hb9KYCmZx4agm/G
 BKMscol89YunVHJKn7nGxCheMDGBmXKUMrO1zhbz2OqsFI6gL1tgxLm3m
 QnRQAwOoUArZpdogrHca7nFYLqnoO45mq/AdCTT/jxaaB2/zJ+FuCaSWr w==;
X-CSE-ConnectionGUID: HA/wUhnWSN656jbnQF5kJg==
X-CSE-MsgGUID: 5Dl5c3ClQoyos2BRgVdNKg==
X-IronPort-AV: E=McAfee;i="6600,9927,11093"; a="14136169"
X-IronPort-AV: E=Sophos;i="6.08,216,1712646000"; d="scan'208";a="14136169"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2024 03:27:02 -0700
X-CSE-ConnectionGUID: HLjjjAm9RNGbw1P0lG8dUQ==
X-CSE-MsgGUID: ZE+O0uIiQD+s3DQ0KdnFYw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,216,1712646000"; d="scan'208";a="68686331"
Received: from amokrov-mobl1.ccr.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.249.37.49])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2024 03:27:01 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com, mika.kahola@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v6 25/26] drm/i915/psr: Add new debug bit to disable Panel
 Replay
Date: Wed,  5 Jun 2024 13:25:52 +0300
Message-Id: <20240605102553.187309-26-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240605102553.187309-1-jouni.hogander@intel.com>
References: <20240605102553.187309-1-jouni.hogander@intel.com>
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
index a10d9383cc87..b4cd7a8b17bc 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1520,6 +1520,9 @@ _panel_replay_compute_config(struct intel_dp *intel_dp,
 	if (!CAN_PANEL_REPLAY(intel_dp))
 		return false;
 
+	if (intel_dp->psr.debug & I915_PSR_DEBUG_PANEL_REPLAY_DISABLE)
+		return false;
+
 	if (!intel_dp_is_edp(intel_dp))
 		return true;
 
@@ -2845,11 +2848,13 @@ int intel_psr_debug_set(struct intel_dp *intel_dp, u64 val)
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
@@ -2862,7 +2867,9 @@ int intel_psr_debug_set(struct intel_dp *intel_dp, u64 val)
 
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

