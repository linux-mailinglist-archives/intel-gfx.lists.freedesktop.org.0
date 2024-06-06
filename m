Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E2F008FE50E
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jun 2024 13:16:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 42E8E10E8F8;
	Thu,  6 Jun 2024 11:16:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GeCpPVOV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B29F010E8F8
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Jun 2024 11:16:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717672609; x=1749208609;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=YMKUufCMbLazXrghgwvNa0mnMZFNnm6yTWphataPkzw=;
 b=GeCpPVOV+s0KrCLZvsVZC7FcJXc4WIoGn6pdeQhtZUqD7yTlwqLA6cVB
 tA/j4yHyCTlABsnW+23lQfv974cD0F2lQ8hGtWpjERacX8ehAcC3erAGW
 EDoDz26haqCTn8mnDMYN8B92Cx5ZwAuKvamtsPh8TusRRC3VJ/M9Ezxuc
 +xlVs1Ci9s5b7oaYnn4ighzDb7K8bmYgJXEHuHq0efauLcxTiz9ZKPaHZ
 h/4025GJat5U3iTl3gR0rZZkkAm8aFaK3FfU2smJxmxfCAySjy9t+36ba
 ZndC8HUKhe/+ig52aUbbmzHJdELzI6alEuH1g4YaXpMeAPHsiSFMcU2Pr g==;
X-CSE-ConnectionGUID: 3pBCCWM5Rvux4PqayNxlZQ==
X-CSE-MsgGUID: 6wBBvTwMShKhiH6n5J6FVA==
X-IronPort-AV: E=McAfee;i="6600,9927,11094"; a="14556694"
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="14556694"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2024 04:16:48 -0700
X-CSE-ConnectionGUID: D0e8OfbLSZWZAx8Pam36UQ==
X-CSE-MsgGUID: n04sj7qgTCCa0efnYc2TIA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="38494564"
Received: from unknown (HELO localhost) ([10.237.66.160])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2024 04:16:47 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH v2 11/14] drm/i915: move rawclk init to intel_cdclk_init()
Date: Thu,  6 Jun 2024 14:16:03 +0300
Message-Id: <d9347beff3e1150e1c3722bba1ffa47bc7e9194b.1717672515.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1717672515.git.jani.nikula@intel.com>
References: <cover.1717672515.git.jani.nikula@intel.com>
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
index 7e93984eba11..cfb7d4e2f05e 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -3228,6 +3228,8 @@ int intel_cdclk_state_set_joined_mbus(struct intel_atomic_state *state, bool joi
 	return intel_atomic_lock_global_state(&cdclk_state->base);
 }
 
+static void intel_rawclk_init(struct drm_i915_private *dev_priv);
+
 int intel_cdclk_init(struct drm_i915_private *dev_priv)
 {
 	struct intel_cdclk_state *cdclk_state;
@@ -3239,6 +3241,8 @@ int intel_cdclk_init(struct drm_i915_private *dev_priv)
 	intel_atomic_global_obj_init(dev_priv, &dev_priv->display.cdclk.obj,
 				     &cdclk_state->base, &intel_cdclk_funcs);
 
+	intel_rawclk_init(dev_priv);
+
 	return 0;
 }
 
@@ -3555,16 +3559,13 @@ static int i9xx_hrawclk(struct drm_i915_private *i915)
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
@@ -3583,11 +3584,9 @@ u32 intel_read_rawclk(struct drm_i915_private *dev_priv)
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
index d26de37719a7..365bb7a10030 100644
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

