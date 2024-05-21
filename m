Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 22AB48CAA51
	for <lists+intel-gfx@lfdr.de>; Tue, 21 May 2024 10:47:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0306A10E77D;
	Tue, 21 May 2024 08:47:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Koo4jvRd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7C5D310E76E
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 May 2024 08:47:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716281258; x=1747817258;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=4PFJfzXMM5h+pjVd8tuCAtBHrleh/Qvq3b+NkuyPXSE=;
 b=Koo4jvRduAWq9sWKfcHAkVp3CvYMmAo8YgP309xLrsEWNGibRGAG6CVY
 /fJq0r1ck9Ll1fHMxjiP9U20T28XqAXb0a9/cEL9R1qTZ9sXbhMpTxKI2
 BrCDF3owm75JYvXwCHST9SeLQ8FiZqm+D57LPHCRPugnQtUY4mufz3jq5
 i69OK7mjSv7/Ic9a9NrbvRUZAk08Kqo3E8Wm4jx6n8MKV0pHuSlG4R700
 5jBV6GmZ3smatT5C+nOHSE5oJMr21xiH8ZmIMn+MeoaGbmqOJtUlNFJOV
 fjYWOnfkl15fFVmN9tUm5/I6Jy0/gLHNLXQIGz6daNs9DhZmhu49Yj3cY Q==;
X-CSE-ConnectionGUID: I/X1flXoRSW0rxrFWSxOxw==
X-CSE-MsgGUID: JBG3tf5oQfWYiTnvSQJ1SQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11078"; a="12297865"
X-IronPort-AV: E=Sophos;i="6.08,177,1712646000"; d="scan'208";a="12297865"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2024 01:47:37 -0700
X-CSE-ConnectionGUID: HP+jW3E8TlSr/fSUsbMoaQ==
X-CSE-MsgGUID: UpWAAbyvSTqKo2kPFlj5wg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,177,1712646000"; d="scan'208";a="33272570"
Received: from mathiasj-mobl.amr.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.251.211.157])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2024 01:47:36 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com, mika.kahola@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v2 16/17] drm/i915/psr: Add new debug bit to disable Panel
 Replay
Date: Tue, 21 May 2024 11:46:47 +0300
Message-Id: <20240521084648.1987837-17-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240521084648.1987837-1-jouni.hogander@intel.com>
References: <20240521084648.1987837-1-jouni.hogander@intel.com>
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
 drivers/gpu/drm/i915/display/intel_psr.c           | 13 +++++++++----
 2 files changed, 10 insertions(+), 4 deletions(-)

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
index bcd0f2c8cb5c..c9b1a5d367e2 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1756,7 +1756,8 @@ void intel_psr_compute_config(struct intel_dp *intel_dp,
 		return;
 	}
 
-	if (CAN_PANEL_REPLAY(intel_dp))
+	if (CAN_PANEL_REPLAY(intel_dp) &&
+	    !(intel_dp->psr.debug & I915_PSR_DEBUG_PANEL_REPLAY_DISABLE))
 		crtc_state->has_panel_replay = true;
 
 	crtc_state->has_psr = crtc_state->has_panel_replay ? true :
@@ -3064,10 +3065,12 @@ int intel_psr_debug_set(struct intel_dp *intel_dp, u64 val)
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
@@ -3078,6 +3081,8 @@ int intel_psr_debug_set(struct intel_dp *intel_dp, u64 val)
 		return ret;
 
 	old_mode = intel_dp->psr.debug & I915_PSR_DEBUG_MODE_MASK;
+	old_disable_bits = intel_dp->psr.debug &
+		I915_PSR_DEBUG_PANEL_REPLAY_DISABLE;
 	intel_dp->psr.debug = val;
 
 	/*
@@ -3089,7 +3094,7 @@ int intel_psr_debug_set(struct intel_dp *intel_dp, u64 val)
 
 	mutex_unlock(&intel_dp->psr.lock);
 
-	if (old_mode != mode)
+	if (old_mode != mode || old_disable_bits != disable_bits)
 		ret = intel_psr_fastset_force(dev_priv);
 
 	return ret;
-- 
2.34.1

