Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D49A9903BAB
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Jun 2024 14:13:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3162810E618;
	Tue, 11 Jun 2024 12:13:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LSC4mcE7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 905F310E617
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Jun 2024 12:13:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718108012; x=1749644012;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=4C8HKqCqvfV2O20299OPCkkJ/PT030QxtctIZs/eHfg=;
 b=LSC4mcE7ml6d/8AU0SRISLZZYn96LKO47y3NcpmJzLIq+zVig85b8FUi
 aNgOwsnjY0CvpGNqcRqmA+/UcNqRm00LM9rWYN2S8UbYNixxm1DAIeKqo
 MWZTEVM2XDXgSfLzRoewGeFmaratKkWdWImJSBdd8tdNa1yDishqR1pb4
 Nqu3NUnD6YzZenWTyvhzMIXozhV6WkOqquLs7SaKWa0HdB9GQi8Gh1pND
 AHmlFB0v7SLc5k0vyRcnIoDeCqcmLe2Efo2gfGF2T4zn72otD2fck5QZK
 XoBuUfUkAclrqO9fHus/i66GzzUmVAaw9sTF5nxCC6+Y+K7k56K5X0oUG w==;
X-CSE-ConnectionGUID: ariRum+NTo6haJPejNSiFA==
X-CSE-MsgGUID: qb6F9t+wQ6KCDV0OJaVQbA==
X-IronPort-AV: E=McAfee;i="6600,9927,11099"; a="32296872"
X-IronPort-AV: E=Sophos;i="6.08,230,1712646000"; d="scan'208";a="32296872"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2024 05:13:32 -0700
X-CSE-ConnectionGUID: 3YM2BwTyQ++p6FTVcE2eOg==
X-CSE-MsgGUID: kUSPAPkQQXyX8Gi/wL+mQg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,230,1712646000"; d="scan'208";a="40118808"
Received: from dalessan-mobl3.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.245.164])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2024 05:13:29 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com, mika.kahola@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v7 17/18] drm/i915/psr: Add new debug bit to disable Panel
 Replay
Date: Tue, 11 Jun 2024 15:12:42 +0300
Message-Id: <20240611121243.3366990-18-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240611121243.3366990-1-jouni.hogander@intel.com>
References: <20240611121243.3366990-1-jouni.hogander@intel.com>
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

Add new debug bit to be used with i915_edp_psr_debug debugfs
interface. This can be used to disable Panel Replay.

v2: ensure that fastset is performed when the bit changes

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_types.h |  1 +
 drivers/gpu/drm/i915/display/intel_psr.c           | 11 ++++++++---
 2 files changed, 9 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 4ee760bd26f7..b8980e8b4c36 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1697,6 +1697,7 @@ struct intel_psr {
 #define I915_PSR_DEBUG_ENABLE_SEL_FETCH		0x4
 #define I915_PSR_DEBUG_IRQ			0x10
 #define I915_PSR_DEBUG_SU_REGION_ET_DISABLE	0x20
+#define I915_PSR_DEBUG_PANEL_REPLAY_DISABLE	0x40
 
 	u32 debug;
 	bool sink_support;
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 50f838f6aa8a..ac37b2084390 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -249,7 +249,8 @@ static bool panel_replay_global_enabled(struct intel_dp *intel_dp)
 {
 	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
 
-	if (i915->display.params.enable_psr != -1)
+	if ((i915->display.params.enable_psr != -1) ||
+	    (intel_dp->psr.debug & I915_PSR_DEBUG_PANEL_REPLAY_DISABLE))
 		return false;
 	return true;
 }
@@ -2889,11 +2890,13 @@ int intel_psr_debug_set(struct intel_dp *intel_dp, u64 val)
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
@@ -2906,7 +2909,9 @@ int intel_psr_debug_set(struct intel_dp *intel_dp, u64 val)
 
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

