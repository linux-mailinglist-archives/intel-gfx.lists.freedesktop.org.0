Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F36F8CAA31
	for <lists+intel-gfx@lfdr.de>; Tue, 21 May 2024 10:42:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE8DA10E320;
	Tue, 21 May 2024 08:42:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="m/6z2QdI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0147310E2A9
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 May 2024 08:41:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716280913; x=1747816913;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=PiWDE2GBEkNq5YgBTs/u+PIN2zspmb5DoHlDXZJeDCw=;
 b=m/6z2QdIEzn27ZJV8ztxFc3V8iI09DvHY4t9b5NCk57mcpNmQORsh/NE
 HY71Ry3DAMSH/F7VSeXQzu4jyuZgE0Gw1vr/96oad0nPeQmyyB/XFKJYB
 9hfU29vBfl+zvJLIgcQ30tY2JlyrN7xvUmnJhiDibce/XLs7tBTrqVVOQ
 ie54F5oyEapynedaYU44NWRtcDEiTrTvGttImgVM97dRayI1rR4xgwPzO
 rEl1XHjnNqwWustNErJJIU7AhChzO1u4U1G5IVNB23LVxJITNvIpq/Uf9
 41GNg+lfXYNuI4ulTiatyebp8yDWo+cid6GaxpoMeLEypOLW+H0KcxteT A==;
X-CSE-ConnectionGUID: ANumVlw3RQS0LpTGpYUCrw==
X-CSE-MsgGUID: 7LASI/jPTjWKKNsMYY8Ugw==
X-IronPort-AV: E=McAfee;i="6600,9927,11078"; a="23860360"
X-IronPort-AV: E=Sophos;i="6.08,177,1712646000"; d="scan'208";a="23860360"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2024 01:41:52 -0700
X-CSE-ConnectionGUID: liXYKV3iQ7CZ1h4ph1S43w==
X-CSE-MsgGUID: FxXnlYA5R1+tFR5RjCOylg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,177,1712646000"; d="scan'208";a="37426241"
Received: from mathiasj-mobl.amr.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.251.211.157])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2024 01:41:51 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com, mika.kahola@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v2 5/9] drm/i915/psr: Allow setting
 I915_PSR_DEBUG_SU_REGION_ET_DISABLE via debugfs
Date: Tue, 21 May 2024 11:41:19 +0300
Message-Id: <20240521084123.1984075-6-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240521084123.1984075-1-jouni.hogander@intel.com>
References: <20240521084123.1984075-1-jouni.hogander@intel.com>
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

Currently setting I915_PSR_DEBUG_SU_REGION_ET_DISABLE (0x20) via psr_debug
debugfs interface is not allowed. This patch allows it.

v2: ensure that fastset is performed when the bit changes

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 0e081ea21766..64c5d03aff03 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -3021,10 +3021,12 @@ int intel_psr_debug_set(struct intel_dp *intel_dp, u64 val)
 {
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
 	const u32 mode = val & I915_PSR_DEBUG_MODE_MASK;
-	u32 old_mode;
+	const u32 disable_bits = val & I915_PSR_DEBUG_SU_REGION_ET_DISABLE;
+	u32 old_mode, old_disable_bits;
 	int ret;
 
-	if (val & ~(I915_PSR_DEBUG_IRQ | I915_PSR_DEBUG_MODE_MASK) ||
+	if (val & ~(I915_PSR_DEBUG_IRQ | I915_PSR_DEBUG_SU_REGION_ET_DISABLE |
+		    I915_PSR_DEBUG_MODE_MASK) ||
 	    mode > I915_PSR_DEBUG_ENABLE_SEL_FETCH) {
 		drm_dbg_kms(&dev_priv->drm, "Invalid debug mask %llx\n", val);
 		return -EINVAL;
@@ -3034,7 +3036,9 @@ int intel_psr_debug_set(struct intel_dp *intel_dp, u64 val)
 	if (ret)
 		return ret;
 
-	old_mode = intel_dp->psr.debug & I915_PSR_DEBUG_MODE_MASK;
+	old_mode  = intel_dp->psr.debug & I915_PSR_DEBUG_MODE_MASK;
+	old_disable_bits = intel_dp->psr.debug &
+		I915_PSR_DEBUG_SU_REGION_ET_DISABLE;
 	intel_dp->psr.debug = val;
 
 	/*
@@ -3046,7 +3050,7 @@ int intel_psr_debug_set(struct intel_dp *intel_dp, u64 val)
 
 	mutex_unlock(&intel_dp->psr.lock);
 
-	if (old_mode != mode)
+	if (old_mode != mode || old_disable_bits != disable_bits)
 		ret = intel_psr_fastset_force(dev_priv);
 
 	return ret;
-- 
2.34.1

