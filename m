Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BFB24E2814
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Mar 2022 14:51:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC04A10E318;
	Mon, 21 Mar 2022 13:50:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 207A310E318
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Mar 2022 13:50:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647870658; x=1679406658;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=dIjL2nPuxFmEMA90Njfz88YfREtfiNxfhUXeB4bfNnU=;
 b=YF6JrTInKNkxc0fN/funfZRNQSrRWt9ZHx56DMIAUzyJRaigKmuXy7Kk
 JrRjgMa/E/nNN6htoGtOR43YHcWL+amBa4UHDKqL4UwiFVlYqU9t4O46c
 3cVe2tbEBNpmPawSMe8fNV2Z4YR8GHOzgQMgETtcBkPy3FtALkr7o4LEo
 NA9XaYi5NMnlTjZHLs6YGJ8pVJfMuRAU02822L65nf15neFEcQRWfOZWn
 8fRfY6ITQpMOpkiTN9xJtxAEhSEeHA398Rn2b5IRrOUYEYdU5uXBshn9d
 gr/dd0DeNcNojFUXE93Yp6MdugdCCubR1xZvnPsV+qiDikbvEFpqCYn8k A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10292"; a="238160146"
X-IronPort-AV: E=Sophos;i="5.90,198,1643702400"; d="scan'208";a="238160146"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2022 06:50:57 -0700
X-IronPort-AV: E=Sophos;i="5.90,198,1643702400"; d="scan'208";a="716503755"
Received: from abhijitc-mobl.gar.corp.intel.com (HELO localhost)
 ([10.252.34.12])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2022 06:50:56 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 21 Mar 2022 15:50:30 +0200
Message-Id: <4b96fe56c9c01bc671992dd6fe619638b157878f.1647870374.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1647870374.git.jani.nikula@intel.com>
References: <cover.1647870374.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 2/7] drm/i915/dmc: move assert_dmc_loaded()
 to intel_dmc.c
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
Cc: jani.nikula@intel.com, Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Start localizing DMC register and data access to intel_dmc.c.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>
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

