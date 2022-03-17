Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BA1D54DCDA7
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Mar 2022 19:36:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C1B1710E009;
	Thu, 17 Mar 2022 18:36:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A2FDC10E72A
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Mar 2022 18:36:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647542191; x=1679078191;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=jW6s9nkGL0fjpvkLrNK5syB9TnWsue/e45a61243kbw=;
 b=enp/iWzRn2G4CXW7hN5+321WxSbDUTQPzyfVp8x90fHq9KWVzq8ajQ//
 KNpkeGOG/nq5ZVMvQUXQUMpbk++ZySCA39dFhqTLoq9HkfdSL2B2JOEt/
 kUppuPA48VPfD2jOmEycPZ4Euw6XzNAMclvVWT6b1ZHdnKirA/zskq1r/
 4jQxUJij+mtB8fMyiZPmItkqFWL1mFp4dEFDAFsGiHLP64+lWFWHdZR/t
 STOI+8ZixEV/N9ubek4PFrO9Twg3OukFmnEPOq4axJ+TMKXqS312DLDS8
 MjdE5hNdXBYO5JZ4XKPLtxYw2V18UgNlpICzhik3KZ47n3Vv8UmQu8t+m Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10289"; a="343385869"
X-IronPort-AV: E=Sophos;i="5.90,188,1643702400"; d="scan'208";a="343385869"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2022 11:36:31 -0700
X-IronPort-AV: E=Sophos;i="5.90,188,1643702400"; d="scan'208";a="541489480"
Received: from unknown (HELO localhost) ([10.252.58.37])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2022 11:36:29 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 17 Mar 2022 20:36:13 +0200
Message-Id: <78278190db850fb83f594bc8635a3a7c082e2ce8.1647542120.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1647542120.git.jani.nikula@intel.com>
References: <cover.1647542120.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/8] drm/i915/dmc: simplify
 intel_dmc_load_program() conditions
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

intel_dmc_load_program() is only ever called when
intel_dmc_has_payload() is true. Move the condition within
intel_dmc_load_program() to let it be called directly.

Also note that intel_dmc_has_payload() will always return false when
HAS_DMC() is false. Remove the redundant check.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_power.c |  6 +++---
 drivers/gpu/drm/i915/display/intel_dmc.c           | 11 +----------
 2 files changed, 4 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 3dc859032bac..b3efe345567f 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -5387,7 +5387,7 @@ static void skl_display_core_init(struct drm_i915_private *dev_priv,
 
 	gen9_dbuf_enable(dev_priv);
 
-	if (resume && intel_dmc_has_payload(dev_priv))
+	if (resume)
 		intel_dmc_load_program(dev_priv);
 }
 
@@ -5454,7 +5454,7 @@ static void bxt_display_core_init(struct drm_i915_private *dev_priv, bool resume
 
 	gen9_dbuf_enable(dev_priv);
 
-	if (resume && intel_dmc_has_payload(dev_priv))
+	if (resume)
 		intel_dmc_load_program(dev_priv);
 }
 
@@ -5618,7 +5618,7 @@ static void icl_display_core_init(struct drm_i915_private *dev_priv,
 	if (IS_DG2(dev_priv))
 		intel_snps_phy_wait_for_calibration(dev_priv);
 
-	if (resume && intel_dmc_has_payload(dev_priv))
+	if (resume)
 		intel_dmc_load_program(dev_priv);
 
 	/* Wa_14011508470:tgl,dg1,rkl,adl-s,adl-p */
diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index a719c0f379ba..66fd69259e73 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -276,17 +276,8 @@ void intel_dmc_load_program(struct drm_i915_private *dev_priv)
 	struct intel_dmc *dmc = &dev_priv->dmc;
 	u32 id, i;
 
-	if (!HAS_DMC(dev_priv)) {
-		drm_err(&dev_priv->drm,
-			"No DMC support available for this platform\n");
-		return;
-	}
-
-	if (!dev_priv->dmc.dmc_info[DMC_FW_MAIN].payload) {
-		drm_err(&dev_priv->drm,
-			"Tried to program CSR with empty payload\n");
+	if (!intel_dmc_has_payload(dev_priv))
 		return;
-	}
 
 	assert_rpm_wakelock_held(&dev_priv->runtime_pm);
 
-- 
2.30.2

