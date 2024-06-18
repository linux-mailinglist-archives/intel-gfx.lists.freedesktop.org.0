Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F3CAA90C315
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jun 2024 07:31:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5EB5410E1B9;
	Tue, 18 Jun 2024 05:31:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="F8uxxqgS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C96DB10E1B9
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Jun 2024 05:30:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718688656; x=1750224656;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=mQrO82iDtaVTy9eQ8K9amjC0P2Dk/EDvlA8wm+52XDw=;
 b=F8uxxqgSy4R9TE8ipfjHcuw//J+UXYVLbjdwj6IJ46YIqNMcSQEWlXBb
 OY4av7IvV8P50k2K1347qNsT6/GujR/so/dJ9dw0FaECpyYifteYaduqa
 pFflnLdOF4n0g/offNDRiopqlUa5+7XLv85qZ9nCkS8iAapdy7A0MlEN7
 YGRbKCL/GmsHC9dX2BzQx4NQ6T8SAvImbRcKCn6R4dnjljsn7i3FTxpV9
 5SyWoUh6qj+GrMLR2Ufz6eAQtzfE0am4TGW9l249dDXXMNtOOo7yH1NMc
 mfyYkYapGLcTuSctfEG95QqJPbxMxD1DiRK3Gr7/d9ntwL4vw5/d2vxA/ A==;
X-CSE-ConnectionGUID: nlPWDfIYTAyH1MwRGnRWHA==
X-CSE-MsgGUID: TjbUvy2jQj6K2Xla5QQmZg==
X-IronPort-AV: E=McAfee;i="6700,10204,11106"; a="33077718"
X-IronPort-AV: E=Sophos;i="6.08,246,1712646000"; d="scan'208";a="33077718"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2024 22:30:56 -0700
X-CSE-ConnectionGUID: YzWhg2uaSFyFffEbB7DikA==
X-CSE-MsgGUID: pzL6rAnMTxGJsRcoy22Cvg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,246,1712646000"; d="scan'208";a="41365153"
Received: from opintica-mobl1 (HELO jhogande-mobl1..) ([10.245.245.27])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2024 22:30:49 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com, mika.kahola@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 7/9] drm/i915/psr: Add new debug bit to disable Panel Replay
Date: Tue, 18 Jun 2024 08:30:24 +0300
Message-Id: <20240618053026.3268759-8-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240618053026.3268759-1-jouni.hogander@intel.com>
References: <20240618053026.3268759-1-jouni.hogander@intel.com>
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
Reviewed-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_types.h |  1 +
 drivers/gpu/drm/i915/display/intel_psr.c           | 11 ++++++++---
 2 files changed, 9 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 46b3cbeb4a82..8fe7942511f8 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1703,6 +1703,7 @@ struct intel_psr {
 #define I915_PSR_DEBUG_ENABLE_SEL_FETCH		0x4
 #define I915_PSR_DEBUG_IRQ			0x10
 #define I915_PSR_DEBUG_SU_REGION_ET_DISABLE	0x20
+#define I915_PSR_DEBUG_PANEL_REPLAY_DISABLE	0x40
 
 	u32 debug;
 	bool sink_support;
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 595097353ceb..cd76109e928a 100644
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
@@ -2788,11 +2789,13 @@ int intel_psr_debug_set(struct intel_dp *intel_dp, u64 val)
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
@@ -2805,7 +2808,9 @@ int intel_psr_debug_set(struct intel_dp *intel_dp, u64 val)
 
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

