Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 295358D5EDE
	for <lists+intel-gfx@lfdr.de>; Fri, 31 May 2024 11:51:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D06C10E5D8;
	Fri, 31 May 2024 09:51:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LHdCWrzh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E9D2B10E4E3
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 May 2024 09:50:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717149047; x=1748685047;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=PU//Djvcolg6a6pKeYw6mowqF8UaKk3KZSRWN3mCjso=;
 b=LHdCWrzh/5Pn1QSNHFbo/bdLmexQntpOdnIEjAK+sDEXjIjP58t+Mzmb
 a6uzUnUlgnGBkRB1Wn5FqLnn9lbYrYtSWzsl/pYSPGX7dUlWW3gSXTTFy
 uO/Ta2bhVR0Kpo+PZbO2CBz41WLaIozQcYxJNoqu2Z+rh4waTOWAyXhRv
 FZbMm50eLktqjNQ9OuBkOGBBmiaZtnHoTYFDYglkmb2zWfh8Aa+ertYxZ
 YR2oV1tBwm4lxu7A3MyREbhdaidTKsqT+JqsF8MySXmDCDTTJo9ekvtgd
 79Y1CPLPWCLiVBa1Qzz7DJfEFVbTQRiUBO/eaP03eUFsypAArNyKN61VR A==;
X-CSE-ConnectionGUID: B36QUOCxRLWPdTiKlAgvXQ==
X-CSE-MsgGUID: QrqYMJy5T6eX5dyzVVCmCw==
X-IronPort-AV: E=McAfee;i="6600,9927,11088"; a="13446590"
X-IronPort-AV: E=Sophos;i="6.08,203,1712646000"; d="scan'208";a="13446590"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2024 02:50:47 -0700
X-CSE-ConnectionGUID: dhkQ4oIlRy++G0X8U90qjA==
X-CSE-MsgGUID: aqy+1NrpR1aoX6C52QTfFA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,203,1712646000"; d="scan'208";a="41189309"
Received: from romanove-mobl.ger.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.249.36.204])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2024 02:50:45 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com, mika.kahola@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v4 18/19] drm/i915/psr: Add new debug bit to disable Panel
 Replay
Date: Fri, 31 May 2024 12:49:52 +0300
Message-Id: <20240531094953.1797508-19-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240531094953.1797508-1-jouni.hogander@intel.com>
References: <20240531094953.1797508-1-jouni.hogander@intel.com>
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
 drivers/gpu/drm/i915/display/intel_psr.c           | 14 +++++++++++---
 2 files changed, 12 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 42400e1e9875..030ef84f5dd4 100644
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
index 0a5f0481c6ad..885c75c55f9a 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1496,6 +1496,9 @@ _panel_replay_compute_config(struct intel_dp *intel_dp,
 	if (!CAN_PANEL_REPLAY(intel_dp))
 		return false;
 
+	if (intel_dp->psr.debug & I915_PSR_DEBUG_PANEL_REPLAY_DISABLE)
+		return false;
+
 	if (!intel_dp_is_edp(intel_dp))
 		return true;
 
@@ -2813,10 +2816,12 @@ int intel_psr_debug_set(struct intel_dp *intel_dp, u64 val)
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
@@ -2827,6 +2832,9 @@ int intel_psr_debug_set(struct intel_dp *intel_dp, u64 val)
 		return ret;
 
 	old_mode = intel_dp->psr.debug & I915_PSR_DEBUG_MODE_MASK;
+	old_disable_bits = intel_dp->psr.debug &
+		(I915_PSR_DEBUG_SU_REGION_ET_DISABLE |
+		 I915_PSR_DEBUG_PANEL_REPLAY_DISABLE);
 	intel_dp->psr.debug = val;
 
 	/*
@@ -2838,7 +2846,7 @@ int intel_psr_debug_set(struct intel_dp *intel_dp, u64 val)
 
 	mutex_unlock(&intel_dp->psr.lock);
 
-	if (old_mode != mode)
+	if (old_mode != mode || old_disable_bits != disable_bits)
 		ret = intel_psr_fastset_force(dev_priv);
 
 	return ret;
-- 
2.34.1

