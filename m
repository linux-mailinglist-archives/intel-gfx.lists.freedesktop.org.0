Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AA7494DCDA8
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Mar 2022 19:36:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E883C10E72A;
	Thu, 17 Mar 2022 18:36:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0C44A10E72A
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Mar 2022 18:36:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647542195; x=1679078195;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Nqo526Uilyc6ZZMXub7tedWH/XKMGwJYh5yRPinU1KA=;
 b=oJ1xc4hnff3P8l1WLKvHPbtrNcJ1BP9AT1sQ0Uw4o1c0qt9zlslYWFQ0
 nieLZZodZuqBz7Gg2kGiBgBqLRTYkkG87tWRfoEBHyfoSf6CZfbZUjVbZ
 esmQe1OfRixFBpl+EiHkdcL0TrvfTcD6qQdgnXOvlVBJ0Ub9x1OpEslK4
 pgDxdrZbpaK8CjEnKMV7GFINrOv/NJv+N2yYAulXuse75czgNg7LIsfAB
 rOpK83fqobfRwcyXjAlyvJttIYowFP2FFRvNRB9hhv9umbE5A79EiHpra
 fKccrGHV5nA9xZdIP9/DXxy4oe04yzvVnHtFgoOvs4f1NEJEWNBYs5J2v w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10289"; a="343385880"
X-IronPort-AV: E=Sophos;i="5.90,188,1643702400"; d="scan'208";a="343385880"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2022 11:36:34 -0700
X-IronPort-AV: E=Sophos;i="5.90,188,1643702400"; d="scan'208";a="541489494"
Received: from unknown (HELO localhost) ([10.252.58.37])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2022 11:36:33 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 17 Mar 2022 20:36:14 +0200
Message-Id: <6142e2f8e495bfb9373ee908af16352f5c9e9464.1647542120.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1647542120.git.jani.nikula@intel.com>
References: <cover.1647542120.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/8] drm/i915/dmc: move assert_dmc_loaded() to
 intel_dmc.c
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Start localizing DMC register and data access to intel_dmc.c.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_power.c | 12 ------------
 drivers/gpu/drm/i915/display/intel_dmc.c           | 11 +++++++++++
 drivers/gpu/drm/i915/display/intel_dmc.h           |  2 ++
 3 files changed, 13 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index b3efe345567f..6a5695008f7c 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -905,18 +905,6 @@ static void bxt_disable_dc9(struct drm_i915_private *dev_priv)
 	intel_pps_unlock_regs_wa(dev_priv);
 }
 
-static void assert_dmc_loaded(struct drm_i915_private *dev_priv)
-{
-	drm_WARN_ONCE(&dev_priv->drm,
-		      !intel_de_read(dev_priv,
-				     DMC_PROGRAM(dev_priv->dmc.dmc_info[DMC_FW_MAIN].start_mmioaddr, 0)),
-				     "DMC program storage start is NULL\n");
-	drm_WARN_ONCE(&dev_priv->drm, !intel_de_read(dev_priv, DMC_SSP_BASE),
-		      "DMC SSP Base Not fine\n");
-	drm_WARN_ONCE(&dev_priv->drm, !intel_de_read(dev_priv, DMC_HTP_SKL),
-		      "DMC HTP Not fine\n");
-}
-
 /**
  * intel_display_power_set_target_dc_state - Set target dc state.
  * @dev_priv: i915 device
diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index 66fd69259e73..63ae16622c3e 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -305,6 +305,17 @@ void intel_dmc_load_program(struct drm_i915_private *dev_priv)
 	gen9_set_dc_state_debugmask(dev_priv);
 }
 
+void assert_dmc_loaded(struct drm_i915_private *i915)
+{
+	drm_WARN_ONCE(&i915->drm,
+		      !intel_de_read(i915, DMC_PROGRAM(i915->dmc.dmc_info[DMC_FW_MAIN].start_mmioaddr, 0)),
+		      "DMC program storage start is NULL\n");
+	drm_WARN_ONCE(&i915->drm, !intel_de_read(i915, DMC_SSP_BASE),
+		      "DMC SSP Base Not fine\n");
+	drm_WARN_ONCE(&i915->drm, !intel_de_read(i915, DMC_HTP_SKL),
+		      "DMC HTP Not fine\n");
+}
+
 static bool fw_info_matches_stepping(const struct intel_fw_info *fw_info,
 				     const struct stepping_info *si)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_dmc.h b/drivers/gpu/drm/i915/display/intel_dmc.h
index 7c590309a3a9..326f80ad0f31 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.h
+++ b/drivers/gpu/drm/i915/display/intel_dmc.h
@@ -55,4 +55,6 @@ void intel_dmc_ucode_suspend(struct drm_i915_private *i915);
 void intel_dmc_ucode_resume(struct drm_i915_private *i915);
 bool intel_dmc_has_payload(struct drm_i915_private *i915);
 
+void assert_dmc_loaded(struct drm_i915_private *i915);
+
 #endif /* __INTEL_DMC_H__ */
-- 
2.30.2

