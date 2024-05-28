Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A1398D1EB3
	for <lists+intel-gfx@lfdr.de>; Tue, 28 May 2024 16:26:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E8949112268;
	Tue, 28 May 2024 14:26:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bwVvTyRs";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 20EE710E7D0;
 Tue, 28 May 2024 14:25:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716906360; x=1748442360;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=B+bfYKgW+jY0n18PnE1cyl6MYORAdC630Q2B44d5xWY=;
 b=bwVvTyRsCemNi1wqm99KOAhW7/+7I0HIHBn0HQHZjb7r2T5RmtStlrr0
 Q6/ZcdlQZCnv0ddFNovEEOLSE2PTF/4OoizXvk3vWsryAsg52rUvnVm3q
 Uizyqkm8wGiy7ttjj0XBauYKCohdeGAVSp3sRkZKXKYMFGyTrQ7B2oVE9
 0bxpYhXaHBWy7IXGP7OcbpMDZDVCMk4d/W+891OHjQ2LStjd50B4288+s
 t+aO1dq+dYyODLowUYCuQPTRyw0JC1Uauxc5KIa3c0qhLp14DXAufMzYo
 sXG3Ch2Ofw0XwTTTM6cdItTR+ptG8/D6uQfjgMR/stxq28N1LEa15L8ul w==;
X-CSE-ConnectionGUID: Wo9f6HHFRC+zADz7u1iZjQ==
X-CSE-MsgGUID: ymOGgcTzRvGiKzPI8GuIkg==
X-IronPort-AV: E=McAfee;i="6600,9927,11085"; a="35769130"
X-IronPort-AV: E=Sophos;i="6.08,195,1712646000"; d="scan'208";a="35769130"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2024 07:25:59 -0700
X-CSE-ConnectionGUID: ju2VyFSoTAiE5KmPfZgwwg==
X-CSE-MsgGUID: xs+EHH7mTxiaGwLa6vR/2A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,195,1712646000"; d="scan'208";a="39615111"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.13])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2024 07:25:57 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH 10/12] drm/i915: move rawclk init to intel_cdclk_init()
Date: Tue, 28 May 2024 17:24:59 +0300
Message-Id: <cd2264d9608fca5dd98af54e1ee3519b6e7c3283.1716906179.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1716906179.git.jani.nikula@intel.com>
References: <cover.1716906179.git.jani.nikula@intel.com>
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

The rawclk initialization is a bit out of place in
intel_device_info_runtime_init(). Move it to intel_cdclk_init(), with a
bit of refactoring on intel_read_rawclk().

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 23 +++++++++++-----------
 drivers/gpu/drm/i915/display/intel_cdclk.h |  1 -
 drivers/gpu/drm/i915/intel_device_info.c   |  4 ----
 3 files changed, 11 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index c731c489c925..55c2dfe5422f 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -3218,6 +3218,8 @@ int intel_cdclk_state_set_joined_mbus(struct intel_atomic_state *state, bool joi
 	return intel_atomic_lock_global_state(&cdclk_state->base);
 }
 
+static void intel_rawclk_init(struct drm_i915_private *dev_priv);
+
 int intel_cdclk_init(struct drm_i915_private *dev_priv)
 {
 	struct intel_cdclk_state *cdclk_state;
@@ -3229,6 +3231,8 @@ int intel_cdclk_init(struct drm_i915_private *dev_priv)
 	intel_atomic_global_obj_init(dev_priv, &dev_priv->display.cdclk.obj,
 				     &cdclk_state->base, &intel_cdclk_funcs);
 
+	intel_rawclk_init(dev_priv);
+
 	return 0;
 }
 
@@ -3545,16 +3549,13 @@ static int i9xx_hrawclk(struct drm_i915_private *i915)
 	return DIV_ROUND_CLOSEST(i9xx_fsb_freq(i915), 4);
 }
 
-/**
- * intel_read_rawclk - Determine the current RAWCLK frequency
- * @dev_priv: i915 device
- *
- * Determine the current RAWCLK frequency. RAWCLK is a fixed
- * frequency clock so this needs to done only once.
+/*
+ * Initialize the current RAWCLK frequency. RAWCLK is a fixed frequency clock so
+ * this needs to done only once.
  */
-u32 intel_read_rawclk(struct drm_i915_private *dev_priv)
+static void intel_rawclk_init(struct drm_i915_private *dev_priv)
 {
-	u32 freq;
+	u32 freq = 0;
 
 	if (INTEL_PCH_TYPE(dev_priv) >= PCH_MTL)
 		/*
@@ -3573,11 +3574,9 @@ u32 intel_read_rawclk(struct drm_i915_private *dev_priv)
 		freq = vlv_hrawclk(dev_priv);
 	else if (DISPLAY_VER(dev_priv) >= 3)
 		freq = i9xx_hrawclk(dev_priv);
-	else
-		/* no rawclk on other platforms, or no need to know it */
-		return 0;
 
-	return freq;
+	RUNTIME_INFO(dev_priv)->rawclk_freq = freq;
+	drm_dbg_kms(&dev_priv->drm, "rawclk rate: %d kHz\n", freq);
 }
 
 static int i915_cdclk_info_show(struct seq_file *m, void *unused)
diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.h b/drivers/gpu/drm/i915/display/intel_cdclk.h
index cfdcdec07a4d..a3f950d5a366 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.h
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.h
@@ -64,7 +64,6 @@ void intel_cdclk_uninit_hw(struct drm_i915_private *i915);
 void intel_init_cdclk_hooks(struct drm_i915_private *dev_priv);
 void intel_update_max_cdclk(struct drm_i915_private *dev_priv);
 void intel_update_cdclk(struct drm_i915_private *dev_priv);
-u32 intel_read_rawclk(struct drm_i915_private *dev_priv);
 bool intel_cdclk_clock_changed(const struct intel_cdclk_config *a,
 			       const struct intel_cdclk_config *b);
 int intel_mdclk_cdclk_ratio(struct drm_i915_private *i915,
diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
index 862f4b705227..cc7a8fb0a87d 100644
--- a/drivers/gpu/drm/i915/intel_device_info.c
+++ b/drivers/gpu/drm/i915/intel_device_info.c
@@ -370,10 +370,6 @@ void intel_device_info_runtime_init(struct drm_i915_private *dev_priv)
 			 "Disabling ppGTT for VT-d support\n");
 		runtime->ppgtt_type = INTEL_PPGTT_NONE;
 	}
-
-	runtime->rawclk_freq = intel_read_rawclk(dev_priv);
-	drm_dbg(&dev_priv->drm, "rawclk rate: %d kHz\n", runtime->rawclk_freq);
-
 }
 
 /*
-- 
2.39.2

