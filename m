Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A12998CF9F9
	for <lists+intel-gfx@lfdr.de>; Mon, 27 May 2024 09:23:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BD0A510F918;
	Mon, 27 May 2024 07:23:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Wm5ANQmG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3799610EE5B
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 May 2024 07:23:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716794599; x=1748330599;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=AKTE/TGMJeSk4XMHEkOMClAhIjp6u/l1t1eUNvS3R3s=;
 b=Wm5ANQmGhQxRobTA/aEkJ5FFEsdRtGkEV0GF4kOp3Bh3ZPq4T0tVf1nK
 9bchByT/A8ke60vCShf+/M8bxRlkbXj+XsCzgdGaWnf6RaPQpdIddnKW/
 EspZVByNxQijObxfER25KaGOuuo0iAiT34Sz8XQw5Hmu5kPTmrkHHXidG
 3Idz75gJDYToH8beLvuGmaDqz55ZNnH1JlCJCxFp0gud4txS9juutXwTV
 sWwsi9UIpF5L6jo8r7g2x9jYZmCUIAmT/Oj9xWhkpYdSN/qHWC2rL5s/S
 MAyP6wJf8U/dRzZ586aufZyp1lpmEN5dab/g4F48nL1AZXJy2E3IkWzrG w==;
X-CSE-ConnectionGUID: mgI1IUBYR3m2rqdC8r1CGw==
X-CSE-MsgGUID: nUHelcNNSYm2mdMTQfRM/A==
X-IronPort-AV: E=McAfee;i="6600,9927,11084"; a="16930490"
X-IronPort-AV: E=Sophos;i="6.08,192,1712646000"; d="scan'208";a="16930490"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2024 00:23:09 -0700
X-CSE-ConnectionGUID: 0lC5/ctCQwixShF5DZuZjA==
X-CSE-MsgGUID: kMo7TTVIT8uHSOuWEZhopw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,192,1712646000"; d="scan'208";a="34753528"
Received: from gcusmai-mobl.ger.corp.intel.com (HELO jhogande-mobl1.intel.com)
 ([10.249.36.101])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2024 00:23:09 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com, mika.kahola@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v3 19/20] drm/i915/psr: Add new debug bit to disable Panel
 Replay
Date: Mon, 27 May 2024 10:22:19 +0300
Message-Id: <20240527072220.3294769-20-jouni.hogander@intel.com>
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

Currently there is no way to disable Panel Replay without disabling
PSR. Add new debug bit to be used with i915_edp_psr_debug debugfs
interface.

v2: ensure that fastset is performed when the bit changes

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_types.h |  1 +
 drivers/gpu/drm/i915/display/intel_psr.c           | 13 ++++++++++---
 2 files changed, 11 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 6fbfe8a18f45..f8863510e722 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1687,6 +1687,7 @@ struct intel_psr {
 #define I915_PSR_DEBUG_ENABLE_SEL_FETCH		0x4
 #define I915_PSR_DEBUG_IRQ			0x10
 #define I915_PSR_DEBUG_SU_REGION_ET_DISABLE	0x20
+#define I915_PSR_DEBUG_PANEL_REPLAY_DISABLE	0x40
 
 	u32 debug;
 	bool sink_support;
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 38874ca46c16..c7934cdfe418 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1733,6 +1733,9 @@ _panel_replay_compute_config(struct intel_dp *intel_dp,
 	if (!CAN_PANEL_REPLAY(intel_dp))
 		return false;
 
+	if (intel_dp->psr.debug & I915_PSR_DEBUG_PANEL_REPLAY_DISABLE)
+		return false;
+
 	if (!intel_dp_is_edp(intel_dp))
 		return true;
 
@@ -3097,10 +3100,12 @@ int intel_psr_debug_set(struct intel_dp *intel_dp, u64 val)
 {
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
 	const u32 mode = val & I915_PSR_DEBUG_MODE_MASK;
-	u32 old_mode;
+	const u32 disable_bits = val & I915_PSR_DEBUG_PANEL_REPLAY_DISABLE;
+	u32 old_mode, old_disable_bits;
 	int ret;
 
-	if (val & ~(I915_PSR_DEBUG_IRQ | I915_PSR_DEBUG_MODE_MASK) ||
+	if (val & ~(I915_PSR_DEBUG_IRQ | I915_PSR_DEBUG_PANEL_REPLAY_DISABLE |
+		    I915_PSR_DEBUG_MODE_MASK) ||
 	    mode > I915_PSR_DEBUG_ENABLE_SEL_FETCH) {
 		drm_dbg_kms(&dev_priv->drm, "Invalid debug mask %llx\n", val);
 		return -EINVAL;
@@ -3111,6 +3116,8 @@ int intel_psr_debug_set(struct intel_dp *intel_dp, u64 val)
 		return ret;
 
 	old_mode = intel_dp->psr.debug & I915_PSR_DEBUG_MODE_MASK;
+	old_disable_bits = intel_dp->psr.debug &
+		I915_PSR_DEBUG_PANEL_REPLAY_DISABLE;
 	intel_dp->psr.debug = val;
 
 	/*
@@ -3122,7 +3129,7 @@ int intel_psr_debug_set(struct intel_dp *intel_dp, u64 val)
 
 	mutex_unlock(&intel_dp->psr.lock);
 
-	if (old_mode != mode)
+	if (old_mode != mode || old_disable_bits != disable_bits)
 		ret = intel_psr_fastset_force(dev_priv);
 
 	return ret;
-- 
2.34.1

