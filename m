Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 04E658A83A4
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Apr 2024 15:03:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8AA051134C4;
	Wed, 17 Apr 2024 13:03:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="d12OBvZD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 306851134C4;
 Wed, 17 Apr 2024 13:03:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713359003; x=1744895003;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=79PYkdhUTSneHPo+3LOFcjYb4Gos3WMjhobqqcdP4Ik=;
 b=d12OBvZD2eCuUwMivMyAe36zfSRHYSe3k0UaIk+d/sfUaAU+Nv2D06ZY
 33OtTHMHXSHc7sBL9mMe75/Mb9ZTs6Te7C8WeUDVsa00oiHsWx4E++arJ
 9VhhRfUqy1h+88qh3TfLn5U9gTc9EyHssdMKHd/tH95BFXaGzLoDzfbw1
 4kNsyxk1cDCJi1FM286JXRtWGIpPE7+GC1vjuZS7i4RwQ1isXccyw/pfK
 1/j8zktzTGC14jy8jcrvTgZbzp+Ou4BeKC1GP1hRbGmfMhcIjTKJJyBM4
 3qhFoJvn6jiiUmF7kuDmlTnl4G6JGAwu0Z7yOPhvzarLvjJSNOKCw+VJs g==;
X-CSE-ConnectionGUID: jXwA9Y5KSn61JrBbPgBs8w==
X-CSE-MsgGUID: 9/uevZsaS9ykeTmsR9FBEA==
X-IronPort-AV: E=McAfee;i="6600,9927,11046"; a="8976869"
X-IronPort-AV: E=Sophos;i="6.07,209,1708416000"; 
   d="scan'208";a="8976869"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2024 06:03:23 -0700
X-CSE-ConnectionGUID: 8IR+POXVTvuUgvpX8+KaEQ==
X-CSE-MsgGUID: hXLPFzBBTlyYE2u7GRU6/A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,209,1708416000"; d="scan'208";a="27199495"
Received: from vpus-mobl1.ger.corp.intel.com (HELO localhost) ([10.252.45.164])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2024 06:03:21 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: rodrigo.vivi@intel.com, Luca Coelho <luciano.coelho@intel.com>,
 jani.nikula@intel.com
Subject: [PATCH v4 6/9] drm/i915/display: rename
 __intel_wait_for_register_nowl() to indicate intel_de_
Date: Wed, 17 Apr 2024 16:02:44 +0300
Message-Id: <967d3fc67a9053f7d5f9c03010fd5f94dc8d547d.1713358679.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1713358679.git.jani.nikula@intel.com>
References: <cover.1713358679.git.jani.nikula@intel.com>
MIME-Version: 1.0
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

Rename __intel_wait_for_register_nowl() to
__intel_de_wait_for_register_nowl() to be in line with the rest of
intel_de.h.

Cc: Luca Coelho <luciano.coelho@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_de.h     |  6 +++---
 drivers/gpu/drm/i915/display/intel_dmc_wl.c | 14 +++++++-------
 2 files changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_de.h b/drivers/gpu/drm/i915/display/intel_de.h
index 0a0fba81e7af..4b51388c6041 100644
--- a/drivers/gpu/drm/i915/display/intel_de.h
+++ b/drivers/gpu/drm/i915/display/intel_de.h
@@ -97,8 +97,8 @@ intel_de_rmw(struct drm_i915_private *i915, i915_reg_t reg, u32 clear, u32 set)
 }
 
 static inline int
-__intel_wait_for_register_nowl(struct drm_i915_private *i915, i915_reg_t reg,
-			       u32 mask, u32 value, unsigned int timeout)
+__intel_de_wait_for_register_nowl(struct drm_i915_private *i915, i915_reg_t reg,
+				  u32 mask, u32 value, unsigned int timeout)
 {
 	return intel_wait_for_register(&i915->uncore, reg, mask,
 				       value, timeout);
@@ -112,7 +112,7 @@ intel_de_wait(struct drm_i915_private *i915, i915_reg_t reg,
 
 	intel_dmc_wl_get(i915, reg);
 
-	ret = __intel_wait_for_register_nowl(i915, reg, mask, value, timeout);
+	ret = __intel_de_wait_for_register_nowl(i915, reg, mask, value, timeout);
 
 	intel_dmc_wl_put(i915, reg);
 
diff --git a/drivers/gpu/drm/i915/display/intel_dmc_wl.c b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
index 30f8905fae41..162de0d20554 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc_wl.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
@@ -77,9 +77,9 @@ static void intel_dmc_wl_work(struct work_struct *work)
 
 	__intel_de_rmw_nowl(i915, DMC_WAKELOCK1_CTL, DMC_WAKELOCK_CTL_REQ, 0);
 
-	if (__intel_wait_for_register_nowl(i915,  DMC_WAKELOCK1_CTL,
-					   DMC_WAKELOCK_CTL_ACK, 0,
-					   DMC_WAKELOCK_CTL_TIMEOUT)) {
+	if (__intel_de_wait_for_register_nowl(i915, DMC_WAKELOCK1_CTL,
+					      DMC_WAKELOCK_CTL_ACK, 0,
+					      DMC_WAKELOCK_CTL_TIMEOUT)) {
 		WARN_RATELIMIT(1, "DMC wakelock release timed out");
 		goto out_unlock;
 	}
@@ -216,10 +216,10 @@ void intel_dmc_wl_get(struct drm_i915_private *i915, i915_reg_t reg)
 		__intel_de_rmw_nowl(i915, DMC_WAKELOCK1_CTL, 0,
 				    DMC_WAKELOCK_CTL_REQ);
 
-		if (__intel_wait_for_register_nowl(i915,  DMC_WAKELOCK1_CTL,
-						   DMC_WAKELOCK_CTL_ACK,
-						   DMC_WAKELOCK_CTL_ACK,
-						   DMC_WAKELOCK_CTL_TIMEOUT)) {
+		if (__intel_de_wait_for_register_nowl(i915, DMC_WAKELOCK1_CTL,
+						      DMC_WAKELOCK_CTL_ACK,
+						      DMC_WAKELOCK_CTL_ACK,
+						      DMC_WAKELOCK_CTL_TIMEOUT)) {
 			WARN_RATELIMIT(1, "DMC wakelock ack timed out");
 			goto out_unlock;
 		}
-- 
2.39.2

